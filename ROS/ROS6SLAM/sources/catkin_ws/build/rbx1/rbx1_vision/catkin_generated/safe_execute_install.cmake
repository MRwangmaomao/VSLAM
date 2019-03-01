execute_process(COMMAND "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/rbx1/rbx1_vision/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/rbx1/rbx1_vision/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
