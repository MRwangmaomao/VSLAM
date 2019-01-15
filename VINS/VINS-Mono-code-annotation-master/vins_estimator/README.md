# 视觉惯组系统
-----
## 各文件作用

* **factor** 实现IMU、camera等残差模型，涉及了ceres优化库  
* **initial** 系统初始化，外参标定，SFM  
* **loop_closure** 闭环检测，这里主要利用DBOW2作者的一个demo程序  
* **utility** 相机显示，四元数转换  
* **estimator_node** (main()函数) 执行多线程measurement_process、loop_detection、pose_graph  
* **feature_manager.cpp**特征点管理，三角化，关键帧操作  
* **parameters.cpp**外部系统设置参数输入  

----

## estimator_node  

初始化"vins_estimator"节点，读取配置文件参数。