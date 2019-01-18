# 初始化
----

## SFM

### SFM 函数construct()
程序入口   

    bool GlobalSFM::construct(int frame_num, Quaterniond* q, Vector3d* T, int l,
                const Matrix3d relative_R, const Vector3d relative_T,
                vector<SFMFeature> &sfm_f, map<int, Vector3d> &sfm_tracked_points)

参数:  

    int frame_num： 滑动窗口中图像帧的数量，实际上就是WINDOW_SIZE + 1
    Quaterniond* q： 一个数组指针，数组中需要存储滑动窗口中所有帧的姿态
    Vector3d* T： 一个数组指针，数组中需要存储滑动窗口中所有帧的位置
    int l： 在滑动窗口中找到的与最新帧做5点法的帧的帧号
    const Matrix3d relative_R： 从最新帧到第l帧的旋转（个人推断）
    const Vector3d relative_T： 从最新帧到第l帧的位移（个人推断）
    vector<SFMFeature> &sfm_f： 用于视觉初始化的特征点数据
    map<int, Vector3d> &sfm_tracked_points：跟踪的特征点数
##### 把relativePose找到的第l帧作为初始位置
l帧的位姿初始化为0
求滑动窗口中最新帧的位姿

##### pnp 并 三角化点
求sfm中所有的帧的位姿，首先初始化位姿与l帧的相同，然后通过solveFrameByPnP()求得该帧位姿。根据triangulateTwoFrames()三角化l帧与每一帧的特征点，然后每一帧再与最新帧三角化得到更多三维点。
##### 对于sfm_f中没有被三角化的点，进行三角化

##### 对滑动窗口中的所有帧的位姿和3D特征点进行BA优化
将l帧位姿和最新帧位置固定，对其他位姿和地图点进行优化。ceres::Solve(options, &problem, &summary);

### 求解pnp

### 三角化特征点

### 三角化两帧