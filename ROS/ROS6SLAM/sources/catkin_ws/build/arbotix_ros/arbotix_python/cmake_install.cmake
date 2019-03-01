# Install script for directory: /home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_python

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_python/catkin_generated/installspace/arbotix_python.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arbotix_python/cmake" TYPE FILE FILES
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_python/catkin_generated/installspace/arbotix_pythonConfig.cmake"
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_python/catkin_generated/installspace/arbotix_pythonConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arbotix_python" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_python/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/arbotix_ros/arbotix_python/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arbotix_python" TYPE DIRECTORY FILES "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_python/demos")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/arbotix_python" TYPE PROGRAM FILES "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/arbotix_ros/arbotix_python/bin/arbotix_driver")
endif()

