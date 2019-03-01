# Install script for directory: /home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/rbx1/rbx1_nav

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/install")
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
  include("/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/build/rbx1/rbx1_nav/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rbx1_nav" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/devel/include/rbx1_nav/CalibrateAngularConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rbx1_nav" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/devel/include/rbx1_nav/CalibrateLinearConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/devel/lib/python2.7/dist-packages/rbx1_nav/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/rbx1_nav" TYPE DIRECTORY FILES "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/devel/lib/python2.7/dist-packages/rbx1_nav/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/build/rbx1/rbx1_nav/catkin_generated/installspace/rbx1_nav.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rbx1_nav/cmake" TYPE FILE FILES
    "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/build/rbx1/rbx1_nav/catkin_generated/installspace/rbx1_navConfig.cmake"
    "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/build/rbx1/rbx1_nav/catkin_generated/installspace/rbx1_navConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rbx1_nav" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/rbx1/rbx1_nav/package.xml")
endif()

