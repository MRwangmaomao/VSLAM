# VSLAM
----
## 综述
[关于slam](https://blog.csdn.net/yimingsilence/article/details/51701944)

[SLAM简介](https://zhuanlan.zhihu.com/p/21381490)

[SLAM的前世今生 终于有人说清楚了](https://www.leiphone.com/news/201605/5etiwlnkWnx7x0zb.html)

[SLAM第一篇：基础知识](https://www.leiphone.com/news/201609/iAe3f8qmRHXavgSl.html?viewType=weixin)

[移动机器人视觉里程计综述](http://html.rhhz.net/ZDHXBZWB/html/2018-3-385.htm#outline_anchor_20)



## 基础知识
### 数学基础

半闲居士系列：

* [视觉SLAM中的数学基础 第一篇](http://www.cnblogs.com/gaoxiang12/p/5113334.html)--3D空间的位置表示
* [视觉SLAM中的数学基础 第二篇](http://www.cnblogs.com/gaoxiang12/p/5120175.html)--四元数
* [视觉SLAM中的数学基础 第三篇](http://www.cnblogs.com/gaoxiang12/p/5137454.html)--李群与李代数

PCL点云:
* [如何查找和利用PCL库学习资源的一些心得](https://blog.csdn.net/shine_cherise/article/details/79285162)
* [具体案例源码参考](https://github.com/Ewenwan/MVision/tree/master/PCL_APP/Basic)
* 

图优化：
* [graph slam tutorial : 从推导到应用1](https://blog.csdn.net/heyijia0327/article/details/47686523)
* [graph slam tutorial ：从推导到应用２](https://blog.csdn.net/heyijia0327/article/details/47731631)
* 
## 提升

## 优秀文章

## 大牛实验室和组织的网站

## VSLAM方案


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