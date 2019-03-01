# Install script for directory: /home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/rbx1/rbx1_apps

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/rbx1/rbx1_apps/catkin_generated/installspace/rbx1_apps.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rbx1_apps/cmake" TYPE FILE FILES
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/rbx1/rbx1_apps/catkin_generated/installspace/rbx1_appsConfig.cmake"
    "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/build/rbx1/rbx1_apps/catkin_generated/installspace/rbx1_appsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rbx1_apps" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS6SLAM/sources/catkin_ws/src/rbx1/rbx1_apps/package.xml")
endif()

