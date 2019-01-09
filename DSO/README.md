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
