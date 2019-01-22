  

# 视觉惯组系统




-----
## 1 各文件作用

* **factor** 实现IMU、camera等残差模型，涉及了ceres优化库  
* **initial** 系统初始化，外参标定，SFM  
* **loop_closure** 闭环检测，这里主要利用DBOW2作者的一个demo程序  
* **utility** 相机显示，四元数转换，系统rviz可视化  
* **estimator_node** (main()函数) 执行多线程measurement_process、loop_detection、pose_graph  
* **feature_manager.cpp**特征点管理，三角化，关键帧操作  
* **parameters.cpp**外部系统设置参数输入  

----

## 2 estimator_node文件
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


## 3 预积分 factor/integration_base.h 
参考:  
https://blog.csdn.net/LilyNothing/article/details/79113841  

https://blog.csdn.net/lancelot_vim/article/details/77888788

##### 为什么需要预积分  
![1](https://github.com/MRwangmaomao/VSLAM/blob/master/VINS/VINS-Mono-code-annotation-master/vins_estimator/src/factor/OKVIS_pre_integration.png)
  
  
在两帧视觉帧之间，往往有很多IMU的采集数据，其中计算速度积分的时候需要相机当前位姿，将当前位置引入到世界坐标系$C_Ws$，从p时刻数字积分一次得到p+1时刻，然后根据公式乘以p时刻相机位姿得到世界坐标系，最终导致要对k时刻开始的每一个时刻的相机pose求导，计算代价很大，由于状态变了，积分的值也会跟着变，每优化一次就要重新算一次积分。 

##### 中点积分  
$$w=(w_0+w_1)/2+bg -->更新角速率$$ 
$$R=R_0 \times \frac{w}{2} -->更新旋转$$ 
$$a_0=R_0(a_0^{'}-ba) -->上一次载体的加速度$$ 
$$a_1=R_0(a_1^{'}-ba) -->当前载体的加速度$$ 
$$a=(a_0+a_1)/2 -->更新加速度$$ 
$$\Delta P=\Delta P^{'}+\Delta V^{'}\times dt + \frac{1}{2}a\Delta t^2 -->更新位移$$
$$\Delta V=\Delta V^{'} + a\Delta t -->更新速度$$  
对应代码(factor/interation_base.h midPointIntegration()函数)  
      
    Vector3d un_acc_0 = delta_q * (_acc_0 - linearized_ba);
    Vector3d un_gyr = 0.5 * (_gyr_0 + _gyr_1) - linearized_bg;
    result_delta_q = delta_q * Quaterniond(1, un_gyr(0) * _dt / 2, un_gyr(1) * _dt / 2, un_gyr(2) * _dt / 2);
    Vector3d un_acc_1 = result_delta_q * (_acc_1 - linearized_ba);
    Vector3d un_acc = 0.5 * (un_acc_0 + un_acc_1);
    result_delta_p = delta_p + delta_v * _dt + 0.5 * un_acc * _dt * _dt;
    result_delta_v = delta_v + un_acc * _dt;
    result_linearized_ba = linearized_ba;
    result_linearized_bg = linearized_bg;    


![yujifen](https://github.com/MRwangmaomao/VSLAM/blob/master/VINS/VINS-Mono-code-annotation-master/vins_estimator/src/factor/IMU_and_Camera_relationship.jpg)   
 

##### 误差状态方程
公式的推导详细看[VINS-Mono详解](https://github.com/MRwangmaomao/VSLAM/blob/master/VINS/VINS-Mono-code-annotation-master/paper/VINS-Mono%E8%AF%A6%E8%A7%A3.pdf)
中的2.2和2.3部分。
雅克比矩阵初始为单位矩阵，协方差矩阵初始为0矩阵。  

当加速度计和陀螺仪的偏置发生微小改变时，就可以根据雅克比矩阵对预计积分项进行修正，避免重复积分。

设置F和V矩阵 

    MatrixXd F = MatrixXd::Zero(15, 15);
    F.block<3, 3>(0, 0) = Matrix3d::Identity();
    F.block<3, 3>(0, 3) = -0.25 * delta_q.toRotationMatrix() * R_a_0_x * _dt * _dt + 
                            -0.25 * result_delta_q.toRotationMatrix() * R_a_1_x * (Matrix3d::Identity() - R_w_x * _dt) * _dt * _dt;
    F.block<3, 3>(0, 6) = MatrixXd::Identity(3,3) * _dt;
    F.block<3, 3>(0, 9) = -0.25 * (delta_q.toRotationMatrix() + result_delta_q.toRotationMatrix()) * _dt * _dt;
    F.block<3, 3>(0, 12) = -0.25 * result_delta_q.toRotationMatrix() * R_a_1_x * _dt * _dt * -_dt;
    F.block<3, 3>(3, 3) = Matrix3d::Identity() - R_w_x * _dt;
    F.block<3, 3>(3, 12) = -1.0 * MatrixXd::Identity(3,3) * _dt;
    F.block<3, 3>(6, 3) = -0.5 * delta_q.toRotationMatrix() * R_a_0_x * _dt + 
                            -0.5 * result_delta_q.toRotationMatrix() * R_a_1_x * (Matrix3d::Identity() - R_w_x * _dt) * _dt;
    F.block<3, 3>(6, 6) = Matrix3d::Identity();
    F.block<3, 3>(6, 9) = -0.5 * (delta_q.toRotationMatrix() + result_delta_q.toRotationMatrix()) * _dt;
    F.block<3, 3>(6, 12) = -0.5 * result_delta_q.toRotationMatrix() * R_a_1_x * _dt * -_dt;
    F.block<3, 3>(9, 9) = Matrix3d::Identity();
    F.block<3, 3>(12, 12) = Matrix3d::Identity();
    //cout<<"A"<<endl<<A<<endl;

    MatrixXd V = MatrixXd::Zero(15,18);
    V.block<3, 3>(0, 0) =  0.25 * delta_q.toRotationMatrix() * _dt * _dt;
    V.block<3, 3>(0, 3) =  0.25 * -result_delta_q.toRotationMatrix() * R_a_1_x  * _dt * _dt * 0.5 * _dt;
    V.block<3, 3>(0, 6) =  0.25 * result_delta_q.toRotationMatrix() * _dt * _dt;
    V.block<3, 3>(0, 9) =  V.block<3, 3>(0, 3);
    V.block<3, 3>(3, 3) =  0.5 * MatrixXd::Identity(3,3) * _dt;
    V.block<3, 3>(3, 9) =  0.5 * MatrixXd::Identity(3,3) * _dt;
    V.block<3, 3>(6, 0) =  0.5 * delta_q.toRotationMatrix() * _dt;
    V.block<3, 3>(6, 3) =  0.5 * -result_delta_q.toRotationMatrix() * R_a_1_x  * _dt * 0.5 * _dt;
    V.block<3, 3>(6, 6) =  0.5 * result_delta_q.toRotationMatrix() * _dt;
    V.block<3, 3>(6, 9) =  V.block<3, 3>(6, 3);
    V.block<3, 3>(9, 12) = MatrixXd::Identity(3,3) * _dt;
    V.block<3, 3>(12, 15) = MatrixXd::Identity(3,3) * _dt;



更新雅克比矩阵和协方差矩阵   

    jacobian = F * jacobian; //更新雅可比矩阵
    covariance = F * covariance * F.transpose() + V * noise * V.transpose(); //更新协方差矩阵

计算残差
    
    Eigen::Vector3d dba = Bai - linearized_ba;
    Eigen::Vector3d dbg = Bgi - linearized_bg;

    Eigen::Quaterniond corrected_delta_q = delta_q * Utility::deltaQ(dq_dbg * dbg);//对旋转进行校正
    Eigen::Vector3d corrected_delta_v = delta_v + dv_dba * dba + dv_dbg * dbg;//对速度进行校正
    Eigen::Vector3d corrected_delta_p = delta_p + dp_dba * dba + dp_dbg * dbg;//对位移进行校正

    //计算残差
    residuals.block<3, 1>(O_P, 0) = Qi.inverse() * (0.5 * G * sum_dt * sum_dt + Pj - Pi - Vi * sum_dt) - corrected_delta_p;
    residuals.block<3, 1>(O_R, 0) = 2 * (corrected_delta_q.inverse() * (Qi.inverse() * Qj)).vec();
    residuals.block<3, 1>(O_V, 0) = Qi.inverse() * (G * sum_dt + Vj - Vi) - corrected_delta_v;
    residuals.block<3, 1>(O_BA, 0) = Baj - Bai;
    residuals.block<3, 1>(O_BG, 0) = Bgj - Bgi;


----

## 4 滑动窗口的维护 Estimator::slideWindow()
窗口的大小默认是10。

每当进来一个新的图像帧的时候，首先判断它与窗口里面存储的之前的那一帧的的相对位移，就是与第10帧的特征点的相对位置，用特征点的相对位移来表示。

如果特征点的平均相对位移大于某一个阈值，就认为是一个新的关键帧。就把这个新的关键帧压入到窗口里面，就是压入到第10个位置，然后其它的关键帧都往前移动。第一个位置的关键帧被移出去，边缘化。   
如果不是新的关键帧，就把之前的第10帧边缘化掉，这个新的一帧替换成为第10帧。  

总之，无论是哪种情况，这个新的一帧肯定都会成为窗口里面的第10帧。  

边缘化，是在优化之后才进行的，而且最新的这帧上面观察到的新的特征点并不参与优化。所以，优化的时候，是包括最新的这一帧的11帧的姿态，以及前10帧的特征点在每一帧的投影，包括它们在最新这帧的投影点。所以para_Pose之类的待优化变量的数组长度是11。

----
## 5 处理接收的图像帧数据 Estimator::processImage()

##### step1 计算平均视差 FeatureManager::addFeatureCheckParallax()  
当前帧图像特征点存入feature中后，并不会立即判断是否将当前帧添加为新的关键帧，而是去判断当前帧的前一帧（第2最新帧）。当前帧图像要在下一次接收到图像时进行判断（那个时候，当前帧已经变成了第2最新帧）。

计算第2最新帧与第3最新帧之间的平均视差（当前帧是第1最新帧）,然后判断是否把第2最新帧添加为关键帧。f_manager.addFeatureCheckParallax(frame_count, image, td)

相机与IMU外参的在线标定。

在未完成初始化时，如果窗口没有塞满，不进行初始化，直到窗口塞满时进行初始化initialStructure()。如果初始化不成功，则滑动窗口。如果初始化成功，进行紧耦合优化 solveOdometry()，对窗口进行滑动，去除滑出了滑动窗口的特征点。

在完成初始化时，进行紧耦合优化 solveOdometry()，对窗口进行滑动，去除滑出了滑动窗口的特征点。同时判断系统是否失效。
  
  
## 6 系统初始化  
用SFM求解滑动窗口中所有帧的位姿和所有路标点的3D位置。**将SFM的结果与IMU预积分的值进行对齐**，实现对陀螺仪偏置的矫正。  
求解每一帧对应的速度，求解重力向量方向，恢复单目相机的尺度因子。在初始化过程中，**没有对加速度计的偏置进行较正**，因为重力是初始化过程中待求的量，而加速度计偏置与重力耦合，而且系统的加速度相对于重力加速度很小，所以加速度计偏置在初始化过程中很难观测，因此不考虑加速度计偏置的矫正。

### 6.1 通过重力variance确保IMU有足够的excitation

### 6.2 选定帧在滑动窗口中的帧号

### 6.3 SFM
先在关键帧窗口里面找到第1帧，第1帧与最后一帧有足够的像素位移，并且能用8点法计算出旋转和位移。  
以1帧的姿态为世界坐标系。先从1帧开始与最后一帧进行三角定位。  
再用pnp估计出下一帧的位姿，下一帧与最后一帧三角定位出更多的三维点。  
重复上一步骤到倒数第二帧。  
从2帧开始往第一帧，逐帧pnp，再与第1帧进行三角定位得到更多三维点。  
每帧pnp的位姿初值都用上一个关键帧的位姿，剩下的那些还没有被三角定位的特征点，通过它被观察到的第一帧和最后一帧进行三角定位。  
固定住第一帧的位置和姿态，固定住最后一帧的位置，这时候图像的位姿和点的位置都不太难，所以用ceres统一一起优化图像位姿和三维点位置，优化重投影误差。优化的测量值是特征点在每帧中被观察到的位置，可以转成重投影误差约束。有关的自变量是每帧图像的位姿，特征点的三维坐标。   
优化完成之后，即用ceres优化出这些关键帧的位姿和地图点后，再用pnp算出在这段时间区域内的所有图像的位姿。每个图像的计算都用下一个关键帧的位姿来当pnp的初值。  
 
### 6.4 通过PnP求解所有帧

### 6.5 视觉SFM的结果与IMU预积分结果对齐visualInitialAlign()（这部分内容详细看论文）
视觉SFM的结果与IMU预积分结果对齐 initial/initial_aligment.cpp
根据视觉SFM的结果来校正陀螺仪的Bias，注意得到了新的Bias后对应的预积分需要repropagate,对应代码中的solveGyroscopeBias()函数

初始化速度、重力向量和尺度因子，这一部分对应代码initial_aligment.cpp中的LinearAlignment()


重力细化 



## 7 相机和IMU外参的旋转  
用机器人手眼标定的方法计算出外参中的旋转。  
其中$q_{b_{k+1}^{b_k}}$是陀螺仪预积分得到的，$q_{C_{k+1}^{C_k}}$是用8点法对前后帧对应的特征点进行计算得到的，

## 8 VIO紧耦合优化 

VINS-Mono优化的状态向量包括滑动窗口内的n+1个关键帧时刻IMU坐标系的位置、姿态、旋转、加速度计偏置和陀螺仪偏置，Camera到IMU的外参，m+1个3D路标点的逆深度。

### 8.1 滑动窗口紧耦合优化 


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