  

# 视觉惯组系统




-----
## 各文件作用

* **factor** 实现IMU、camera等残差模型，涉及了ceres优化库  
* **initial** 系统初始化，外参标定，SFM  
* **loop_closure** 闭环检测，这里主要利用DBOW2作者的一个demo程序  
* **utility** 相机显示，四元数转换，系统rviz可视化  
* **estimator_node** (main()函数) 执行多线程measurement_process、loop_detection、pose_graph  
* **feature_manager.cpp**特征点管理，三角化，关键帧操作  
* **parameters.cpp**外部系统设置参数输入  

----

## estimator_node文件
### main函数
##### step1
初始化"vins_estimator"节点，读取配置文件参数。
##### step2
发布Rviz相关话题
订阅 "图像特征点数据" "复位estimator" "根据回环检测信息进行重定位"三个话题
##### step3
执行process()线程函数。主要处理VIO后端，包括IMU预积分、松耦合初始化和局部BA
* 调用匿名函数，从缓存队列中读取IMU数据和图像特征点数据，如果measurements为空，则匿名函数返回false，调用wait(lock),释放m_buf（为了使图像和IMU回调函数可以访问缓存队列），阻塞当前线程，等待被con.notify_one()唤醒直到measurements不为空时（成功从缓存队列获取数据），匿名函数返回true，则可以退出while循环。
* 遍历数组中各帧的IMU数据，进行预积分。如果第一帧IMU数据的时间戳晚于图像特征点的时间戳，需要对IMU数据进行插值得到图像帧时间戳对应的IMU数据，然后进行预积分estimator.processIMU(dt_1, Vector3d(dx, dy, dz), Vector3d(rx, ry, rz));
* 检测是否有回环 重定位，如果有重定位，需要estimator.setReloFrame(frame_stamp, frame_index, match_points, relo_t, relo_r);
* 将图像特征点数据存到一个map容器中，键是特征点id，键值是特征点。执行处理图像程序estimator.processImage(image, img_msg->header);
* 每处理完一帧图像特征点数据，发布话题
* 检测是否需要优化，VINS系统完成滑动窗口优化后，用优化后的结果，更新里程计数据update();

### 线程锁的使用
|线程锁|作用|
|-|-|
|m_buf|处理多个线程使用imu_buf和feature_buf的冲突|
|m_state|处理多个线程使用当前里程计信息（即tmp_P、tmp_Q、tmp_V）的冲突|
|m_estimator|处理多个线程使用VINS系统对象（即Estimator类的实例estimator）的冲突|


## 预积分 factor/integration_base.h 
参考:  
https://blog.csdn.net/LilyNothing/article/details/79113841  

https://blog.csdn.net/lancelot_vim/article/details/77888788

##### 为什么需要预积分  
![1](https://github.com/MRwangmaomao/VSLAM/blob/master/VINS/VINS-Mono-code-annotation-master/vins_estimator/src/factor/OKVIS_pre_integration.png)
  
  
在两帧视觉帧之间，往往有很多IMU的采集数据，其中计算速度积分的时候需要相机当前位姿，将当前位置引入到世界坐标系$C_Ws$，从p时刻数字积分一次得到p+1时刻，然后根据公式乘以p时刻相机位姿得到世界坐标系，最终导致要对k时刻开始的每一个时刻的相机pose求导，计算代价很大，由于状态变了，积分的值也会跟着变，每优化一次就要重新算一次积分。 

![yujifen](https://github.com/MRwangmaomao/VSLAM/blob/master/VINS/VINS-Mono-code-annotation-master/vins_estimator/src/factor/IMU_and_Camera_relationship.jpg)   


    Vector3d un_acc_0 = Rs[j] * (acc_0 - Bas[j]) - g;
    Vector3d un_gyr = 0.5 * (gyr_0 + angular_velocity) - Bgs[j];
    Rs[j] *= Utility::deltaQ(un_gyr * dt).toRotationMatrix();         // 滑动窗口中各帧在世界坐标系下的旋转    
    Vector3d un_acc_1 = Rs[j] * (linear_acceleration - Bas[j]) - g;
    Vector3d un_acc = 0.5 * (un_acc_0 + un_acc_1);
    Ps[j] += dt * Vs[j] + 0.5 * dt * dt * un_acc;                     // 滑动窗口中各帧在世界坐标系下的位置
    Vs[j] += dt * un_acc;                                             // 滑动窗口中各帧在世界坐标系下的速度
----

## 滑动窗口的维护 Estimator::slideWindow()
窗口的大小默认是10。

每当进来一个新的图像帧的时候，首先判断它与窗口里面存储的之前的那一帧的的相对位移，就是与第10帧的特征点的相对位置，用特征点的相对位移来表示。

如果特征点的平均相对位移大于某一个阈值，就认为是一个新的关键帧。就把这个新的关键帧压入到窗口里面，就是压入到第10个位置，然后其它的关键帧都往前移动。第一个位置的关键帧被移出去，边缘化。   
如果不是新的关键帧，就把之前的第10帧边缘化掉，这个新的一帧替换成为第10帧。  

总之，无论是哪种情况，这个新的一帧肯定都会成为窗口里面的第10帧。  

边缘化，是在优化之后才进行的，而且最新的这帧上面观察到的新的特征点并不参与优化。所以，优化的时候，是包括最新的这一帧的11帧的姿态，以及前10帧的特征点在每一帧的投影，包括它们在最新这帧的投影点。所以para_Pose之类的待优化变量的数组长度是11。

----
## 处理接收的图像帧数据 Estimator::processImage()

##### step1 计算平均视差 FeatureManager::addFeatureCheckParallax()  
把当前帧图像（frame_count）的特征点添加到feature容器中,计算第2最新帧与第3最新帧之间的平均视差（当前帧是第1最新帧）,然后判断是否把第2最新帧添加为关键帧。当前帧图像特征点存入feature中后，并不会立即判断是否将当前帧添加为新的关键帧，而是去判断当前帧的前一帧（第2最新帧）。当前帧图像要在下一次接收到图像时进行判断（那个时候，当前帧已经变成了第2最新帧）。在未完成初始化时，如果窗口没有塞满，那么是否添加关键帧的判定结果不起作用，滑动窗口要塞满.  
只有在滑动拆个纽扣塞满后，或者初始化完成之后，才需要滑动窗口，此时才需要做关键帧判别，根据第2最新关键帧是否未关键帧选择相应的边缘化策略。


##### step2 更新 all_image_frame

##### step3 相机与IMU外参的在线标定

##### step4 IMU与相机的初始化     
只有滑动窗口塞满才进行初始化
执行result = initialStructure();进行初始化  
如果初始化成功则进行紧耦合优化，对窗口进行滑动，去除滑出了滑动窗口的特征点  
如果初始化失败则只进行窗口滑动。
##### step5 已经成功初始化，进行正常的VIO紧耦合优化
紧耦合优化  
失效检测，如果失效则重启VINS系统  
对窗口进行滑动  



----
## 视觉重投影误差的构造



----
## loop-closure的检测

----

## 系统初始化  
用SFM求解滑动窗口中所有帧的位姿和所有路标点的3D位置。**将SFM的结果与IMU预积分的值进行对齐**，实现对陀螺仪偏置的矫正。  
求解每一帧对应的速度，求解重力向量方向，恢复单目相机的尺度因子。在初始化过程中，**没有对加速度计的偏置进行较正**，因为重力是初始化过程中待求的量，而加速度计偏置与重力耦合，而且系统的加速度相对于重力加速度很小，所以加速度计偏置在初始化过程中很难观测，因此不考虑加速度计偏置的矫正。










 

## rviz可视化


注册发布话题，主要用于可视化

|话题|名称|
|-|-|
|pub_latest_odometry|imu_propagate|
|pub_path|path|
|relocalization_path|relocalization_path|
|pub_odometry|odometry|
|pub_point_cloud|point_cloud|
|pub_margin_cloud|point_cloud|
|pub_key_poses|key_poses|
|pub_camera_pose|camera_pose|
|pub_camera_pose_visual|camera_pose_visual|
|pub_keyframe_pose|keyframe_pose|
|pub_keyframe_point|keyframe_point|
|pub_extrinsic|extrinsic|
|pub_relo_relative_pose|relo_relative_pose|