# Install script for directory: /home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/communicate/msg" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/communicate/srv" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/communicate/action" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/action/DoDishes.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/communicate/msg" TYPE FILE FILES
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg"
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg"
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg"
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg"
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg"
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/communicate/cmake" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/build/communicate/catkin_generated/installspace/communicate-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/include/communicate")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/roseus/ros/communicate")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/common-lisp/ros/communicate")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/gennodejs/ros/communicate")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/lib/python2.7/dist-packages/communicate")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/lib/python2.7/dist-packages/communicate")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/build/communicate/catkin_generated/installspace/communicate.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/communicate/cmake" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/build/communicate/catkin_generated/installspace/communicate-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/communicate/cmake" TYPE FILE FILES
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/build/communicate/catkin_generated/installspace/communicateConfig.cmake"
    "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/build/communicate/catkin_generated/installspace/communicateConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/communicate" TYPE FILE FILES "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/package.xml")
endif()

