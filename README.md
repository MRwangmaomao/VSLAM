# VSLAM
----
## Vision SLAM study and research

|适用类型|方案|代码注释|  
|--|--|--|
| 单目 | [DSO](https://github.com/MRwangmaomao/VSLAM/tree/master/DSO) || 
| 单目、双目、RGBD | [ORB-SLAM2](https://github.com/MRwangmaomao/VSLAM/tree/master/ORBSLAM2) | 注释链接(file:///D:/github/VSLAM/ORBSLAM2/ORB-SLAM2-master/doc/html/index.html)|
| 单目+IMU | [VINS](https://github.com/MRwangmaomao/VSLAM/tree/master/VINS) | |
| 单目，双目+IMU | [VINS-Fusion](https://github.com/MRwangmaomao/VSLAM/tree/master/VINS-Fusion) | |
----

## SLAM Overview
[波士顿等移动机器人的视觉算法解析](https://www.roboticschina.com/news/2346.html)
----
## SLAM-Book 14 lesson

----
## 提问
#### 1.为什么要使用sliding window  
在基于graph based slam中，无论是pose graph还是bundle adjustment都是通过最小化损失来达到优化位姿和地图的目的。然而当待优化的位姿或者特征点坐标增多时，优化过程中的计算量也随着增大，因此不能无限的添加优化变量，使用滑动窗口技术来限制计算量在一定范围。
使用滑动窗口时还会涉及到“First Estimate Jacobians”，“Marginalization”，“Schur complement”等技术。

#### 2. marginalization技术

#### 3. ORBSLAM中的局部地图优化与DSO、OKVIS中的滑动窗口方法优化的区别  
ORB-SLAM中的Local Mapping环节在做BA的时候刻意选择那些具有共同观测的帧作为关键帧，在这种情况下Schur消元后后得到的S矩阵(舒尔补消元后的矩阵)是稠密矩阵，由于局部地图优化不是实时的，所以这种做法可以接受。  
DSO中采用了滑动窗口方法对每一帧要求做一次BA来防止累计误差，因此采取了一些技巧来保持S矩阵的稀疏性。