execute_process(COMMAND "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_python/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_python/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
