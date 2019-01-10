# Doxygen 代码说明
位于ORB-SLAM2-master/doc文件夹下

# ORBSLAM 代码笔记
----
## A. ORB特征提取
### 1. 计算orb描述子  
计算描述子方向 函数为 IC_Angle
### 2. fast角点提取
在8层图像金字塔上提取FSAT角点，金字塔图像尺度因子为1.0。
