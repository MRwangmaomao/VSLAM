# 视觉处理前端
----
话题订阅和发布的信息如下：
||topic|type|note|
|-|-|-|-|
|subscribe|image|sensor_msgs::ImageConstPtr|相机原始图|
|Publish|feature|sensor_msgs::PointCloud|跟踪的特征点，给后端优化使用|
|Publish|feature_img|sensor_msgs::Image|跟踪特征点图片，输出给RVIZ|

----
feature_tracker_node接收图像，然后进入回调函数，对图像进行前端处理，提取特征点并发布。

----
feature_Tracker.cpp为FeatureTracker类的实现。  
|prev_img|cur_img|forw_img|
|-|-|-|
|当前帧|上一帧|上一次发布的帧|
prev_img的用处是光流跟踪后用prev_img和frow_img根据Fundamental Matrix做RANSAC剔除outlier（rejectWithF函数实现该功能)

----
## 前端的具体操作：
 
#### step1
开启"feature_tracker" ros节点，获取前端的配置参数readParameters()以及镜头参数。执行读取图像回调函数img_callback()，读取图像，检测图像接收频率，频率稳定时可以发送当前图像，否则复位pub_count。
#### step2:自适应直方图均衡
cv::creatCLAHE()对输入图像做自适应直方图均衡。
#### step3:光流跟踪
调用cv::calcOpticalFlowPyrLK()进行光流跟踪，跟踪前一帧的特征点cur_pts得到forw_pts，根据status把跟踪失败的点剔除掉（prev,cur,forw,ids,track_cnt都要剔除）,将跟踪到图像边界外的点剔除。
#### step4:更新cur
如果不需要发布当前帧，直接把当前帧frow的数据赋给上一帧cur，跳到step8执行。
#### step5：剔除外点
如果需要发布当前帧数据，先调用rejectWithF()对prev_pts和frow_pts做RANSAC剔除outlier(cv::findFundamentalMat()函数)。然后所有剩下的特征点的track_cnt加1。数值代表被追中的次数，数值越大，说明被追踪的就越久。
#### step6:设置mask,使跟踪点均匀分布
为了保持跟踪到的特征点在当前帧图像中均匀分布，会调用FeatureTracker类中的FeatureTracker::setMasK()函数，先对跟踪到的特征点frow_pts按照跟踪次数降序排列(认为特征点被跟踪到的次数越多越好)，然后遍历降序排列，对每个特征点在mask中将该点周围半径为MIN_DIST的区域设置为0，在后续遍历过程中，不再选择该区域内的点。   
#### step7:goodFeaturesToTrack保证相邻的特征点之间要相隔30个像素。
由于在跟踪过程中，上一帧特征点由于各种原因无法被跟踪，而且为了保证特征点均匀分布而剔除了一些特征点，如果不补充新的特征点，那么每一帧中特征点的数量会越来越少。所以当前除了跟踪当前一帧中的特征点，还会调用cv::goodFeaturesToTrack()在mask中不为0的区域提取新的特征点。新提取的特征点通过addPoints()函数push到forw_pts中，id初始化为-1，track_cnt初始化为1。
#### step8:
更新全局ID  updateID()函数
#### step9:
发布当前帧，包括ID和undistrored后的点