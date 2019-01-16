  

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
在两帧视觉帧之间，往往有很多IMU的采集数据，其中计算速度积分的时候需要相机当前位姿，将当前位置引入到世界坐标系$C_Ws$，从p时刻数字积分一次得到p+1时刻，然后根据公式乘以p时刻相机位姿得到世界坐标系，最终导致要对k时刻开始的每一个时刻的相机pose求导，计算代价很大，由于状态变了，积分的值也会跟着变，每优化一次就要重新算一次积分。
<div align="center">![Screenshot from 2018-04-12 10:51:38.png](https://github.com/MRwangmaomao/VSLAM/blob/master/VINS/VINS-Mono-code-annotation-master/vins_estimator/src/factor/IMU_and_Camera_relationship.jpg)   
条件随机场模型示意图 </div> 
----
https://github.com/MRwangmaomao/VSLAM/blob/master/VINS/VINS-Mono-code-annotation-master/vins_estimator/src/factor/OKVIS%E9%A2%84%E7%A7%AF%E5%88%86.png
## 滑动窗口的维护

----
## 视觉重投影误差的构造

----
## loop-closure的检测

----

## 系统初始化  
用SFM求解滑动窗口中所有帧的位姿和所有路标点的3D位置。**将SFM的结果与IMU预积分的值进行对齐**，实现对陀螺仪偏置的矫正。  
求解每一帧对应的速度，求解重力向量方向，恢复单目相机的尺度因子。在初始化过程中，**没有对加速度计的偏置进行较正**，因为重力是初始化过程中待求的量，而加速度计偏置与重力耦合，而且系统的加速度相对于重力加速度很小，所以加速度计偏置在初始化过程中很难观测，因此不考虑加速度计偏置的矫正。










 

#### rviz可视化


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