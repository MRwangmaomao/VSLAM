# Install script for directory: /home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_controllers

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_controllers/catkin_generated/installspace/arbotix_controllers.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arbotix_controllers/cmake" TYPE FILE FILES
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_controllers/catkin_generated/installspace/arbotix_controllersConfig.cmake"
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_controllers/catkin_generated/installspace/arbotix_controllersConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arbotix_controllers" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_controllers/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/arbotix_controllers" TYPE PROGRAM FILES
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_controllers/bin/gripper_controller"
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_controllers/bin/one_side_gripper_controller.py"
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_controllers/bin/parallel_gripper_controller.py"
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_controllers/bin/parallel_single_servo_controller.py"
    )
endif()

