# 参考资料   
[泡泡机器人原创专栏-DSO系列 DSO论文速递（一) ](https://mp.weixin.qq.com/s/av-3NNcSs6OLNpmcE6p0qw)

[泡泡机器人原创专栏-DSO系列 DSO论文速递（二）](https://mp.weixin.qq.com/s/-d58ozWU_3q_kE77VgO3DQ)   

[泡泡机器人原创专栏-DSO系列 DSO论文速递（三）](https://mp.weixin.qq.com/s/niFiPzdw86JG_G2_RHxnzQ)   

[泡泡机器人原创专栏-DSO系列 DSO论文速递（四）](https://mp.weixin.qq.com/s/r7CrduO3TB4mhwVFro5Tcw)   

[高翔博士带你学DSO（深入剖析DSO的数学原理及实现）](https://mp.weixin.qq.com/s/fZE5PZixsFNW1F5igP7hww)

[DSO之光度标定](http://www.cnblogs.com/luyb/p/6077478.html)

[SLAM中的marginalization 和 Schur complement](https://blog.csdn.net/heyijia0327/article/details/52822104)

[【泡泡机器人公开课】第五十七课：DSO初探 by 杨楠](https://mp.weixin.qq.com/s/2IRUUSQ_efKgifzTIl9f-w)


[【泡泡机器人公开课】第六十四课：DSO原理详解 by 刘海伟](https://mp.weixin.qq.com/s/xjDJ5QSjkuqLNTY0GEyP2Q)

-----
# DSO 代码详解

## 前端跟踪

### 1.代码逻辑结构
![代码整体架构](https://github.com/MRwangmaomao/VSLAM/blob/master/DSO/pic/code_structure.png)

### 2.数据结构

### 3.数据维护

##### 数据生成  
PointHessian:构造时INACTIVE;从ImaturePoint成功转化过来，则变更为ACTIVE。
### 4.基本误差方差回顾

### 5.参数化  
对于单个留数，其参数为$\xi_i$,$\xi_j$,$d_i$,

### 6.线性化  
##### 残差表达式  
 残差公式$r^k$是Host帧$i$到Target帧$j$
