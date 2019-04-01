# 自动驾驶和移动机器人相关工作面试

## 1. 深度学习相关
    机器学习和深度学习的区别，各自适用于什么问题
    CNN基本原理，CNN的那些部分是神经元
    CNN去掉激活函数会怎么样
    介绍YOLO/SSD/RCNN/Faster-RCNN/Mask-RCNN算法
    YOLO v1/v2/v3 区别细节，SSD如何改进有思考过嘛，知道DSSD和FSSD嘛
    是否了解RPN，RoI pooling,和RoIAlign
    YOLO/SSD里面有全连接层嘛
    YOLO/SSD算法思想如何用到三维点云目标检测
    目标检测算法one-stage和two-stage区别点在哪里
    two-stage算法相比于one-stage有何优势
    单张图片物体越多越密集，YOLO/SSD/Faster-RCNN中计算量是否也随着增加
    CVPR/ECCV 2018 最新目标检测算法有了解过嘛
    如何理解上采样，和下采样的区别是什么
    上采样(UNSampling)与上池化(UnPooling)区别
    全连接层理论上可以替代卷积层嘛
    神经网络里面可以用什么方法替换掉pooling
    神经网络提取特征的方式有哪些
    介绍下你了解的轻量级CNN模型
    网络模型压缩方面的剪枝，量化和二值化编码
    基于视频的C3D三维网络模型有听说过嘛
    2.5D卷积呢
    什么是空洞卷积，什么是反卷积，作用是什么
    如何一张RGB图片生成三维模型
    PNG/JPG存储图像的原理
    global average pooling 和average pooling区别
    FPN的原理，为什么不同尺度feature map融合会有效果提升
    无监督/半监督深度学习有了解过嘛
    GAN的原理
    基于RGB图的深度信息估计有了解过嘛
    MobileNet V1/V2区别
    ShuffleNet和SqueezeNet
    模型量化方法有哪些
    双线性插值，量化对齐
    Relu为什么比sigmod好
    目标识别算法常用评测方式
    IOU和mAP，AUC和ROC分别是什么
    介绍下常见损失函数，softmax一般和哪个激活函数使用
    介绍下PointNet/PointNet++/VoxelNet以及他们的优缺点
    PointCNN介绍一下
    旋转矩阵是什么，有什么性质，PointNet中T-Net旋转矩阵的损失函数如何设计
    如何计算旋转矩阵
    介绍下机器学习和深度学习中常见的参数类算法和非参数类算法
    随机梯度下降
    神经网络训练如何解决过拟合和欠拟合
    L1正则化和L2正则化区别，具体有何用途
    L1正则化相比于 L2正则化为何具有稀疏解
    
##  2. C++开发相关
    c++常见容器，vector容器capacity和size区别，如何动态增长
    vector遍历有哪几种方式（尽可能多）
    cv:Mat 有几种访问方式
    map容器增删改查，和unorder_map区别，map底层如何实现
    c++智能指针
    c++14/17新特性
    c++和c语言区别
    c++如何实现多态，有几种方式，动态多态和静态多态区别
    模板了解嘛
    c++继承多态
    c++深拷贝与浅拷贝
    拷贝构造函数和委托构造函数
    c++面向对象
    右值引用，move语义，完美转发
    emplace_back和push_back区别
    Eigen库了解嘛
    如何实现一个c++的单例模式
    内联函数和宏的区别
    如何实现一个只在堆或者栈上初始化的类
    如何查找容器内所有符合条件的元素
    
## ## 3. Python开发相关
    list tuple区别
    生成器和迭代器
    Python类的定义和实例化方法
    
## 4. 数据结构相关
    红黑树结构，查找时间复杂度
    堆排序的时间复杂度
    Top K排序
    如何用O(1)复杂度查找到stack里面的最小值
    八皇后
    C++自己实现一个队列
    数组和链表的区别
    什么是kd-tree，如何实现
    青蛙跳台阶的递归和非递归实现
    
## 5. 操作系统相关
    如何调试栈溢出
    计算机内存堆和栈的区别
    线程同步的方式，互斥锁和信号量的对比
    进程和线程的区别
    图片存储原理介绍一下
    
## 6. 深度学习框架相关
    Tensorflow结构框架，如何用Tensorflow实现一个反向求梯度
    Tensorflow如何合并两个Tensor
    caffe和Pytorch了解嘛
    caffe和Tensorflow区别在什么地方
    Tensorflow serving和TensorRT有了解过嘛
    caffe结构框架
    
## 7. 视觉SLAM相关
    SLAM主要分为哪几个模块
    ORB-SLAM2的优缺点分析，如何改进
    ORB和FAST对比
    BA和卡尔曼滤波
    ORB-SLAM2的三个线程是什么
    ORB-SLAM2的定位如何实现
    如何理解ORB-SLAM2的图优化
    结构光、TOF、双目视觉原理
    直接法、半直接法、特征点法区别与联系
    Apollo的感知模块原理
    Apollo的2D和3D跟踪
    如何求解旋转矩阵
    如果只有32线雷达，个数不限，能实现360度视角覆盖吗，如何实现，64线呢？