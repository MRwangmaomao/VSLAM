# Doxygen 代码说明
位于 ORB-SLAM2-master/doc 文件夹下

# 参考资料

[【泡泡机器人翻译专栏】ORB-SLAM：精确多功能单目SLAM系统(一)](https://mp.weixin.qq.com/s/fHOtW_Y9zlqML4wm6ywifg)

[【泡泡机器人翻译专栏】ORB-SLAM：精确多功能单目SLAM系统(二)](https://mp.weixin.qq.com/s/IRdwYRUISgJwEn1hmY8MPA)

[【泡泡机器人翻译专栏】ORB-SLAM2:一种开源的VSLAM方案](https://mp.weixin.qq.com/s/yDO3Hbc9vUQxcX0o0cjqvw)

# ORBSLAM 代码笔记
----
## A. ORB特征提取
### 1. 灰度质心法计算图像旋转 
计算描述子方向 函数为 IC_Angle
### 2. fast角点提取
在8层图像金字塔上提取FSAT角点，金字塔图像尺度因子为1.0。
