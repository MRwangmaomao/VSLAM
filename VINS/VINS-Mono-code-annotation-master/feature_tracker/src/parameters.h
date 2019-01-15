#pragma once
#include <ros/ros.h>
#include <opencv2/highgui/highgui.hpp>

extern int ROW;
extern int COL;
/**
 * @brief 焦距460
 * 
 */
extern int FOCAL_LENGTH;
/**
 * @brief 相机镜头数，这里采用的是单目
 * 
 */
const int NUM_OF_CAM = 1;

/**
 * @brief 图像话题
 * 
 */
extern std::string IMAGE_TOPIC;
extern std::string IMU_TOPIC;
extern std::string FISHEYE_MASK;
extern std::vector<std::string> CAM_NAMES;
extern int MAX_CNT;
extern int MIN_DIST;
extern int WINDOW_SIZE;
/**
 * @brief 接收图像的最低频率
 * 
 */
extern int FREQ;
/**
 * @brief 
 * 
 */
extern double F_THRESHOLD;
extern int SHOW_TRACK;
extern int STEREO_TRACK;
extern int EQUALIZE;
extern int FISHEYE;
extern bool PUB_THIS_FRAME;

void readParameters(ros::NodeHandle &n);
