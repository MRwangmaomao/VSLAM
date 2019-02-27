# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "communicate: 8 messages, 1 services")

set(MSG_I_FLAGS "-Icommunicate:/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg;-Icommunicate:/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(communicate_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg" "communicate/DoDishesFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg" "actionlib_msgs/GoalStatus:communicate/DoDishesGoal:communicate/DoDishesFeedback:communicate/DoDishesActionGoal:communicate/DoDishesResult:std_msgs/Header:actionlib_msgs/GoalID:communicate/DoDishesActionFeedback:communicate/DoDishesActionResult"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg" "communicate/DoDishesResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg" "communicate/DoDishesGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg" NAME_WE)
add_custom_target(_communicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "communicate" "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)
_generate_msg_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)
_generate_msg_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)
_generate_msg_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)
_generate_msg_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)
_generate_msg_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)
_generate_msg_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)
_generate_msg_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)

### Generating Services
_generate_srv_cpp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
)

### Generating Module File
_generate_module_cpp(communicate
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(communicate_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(communicate_generate_messages communicate_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg" NAME_WE)
add_dependencies(communicate_generate_messages_cpp _communicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(communicate_gencpp)
add_dependencies(communicate_gencpp communicate_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS communicate_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)
_generate_msg_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)
_generate_msg_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)
_generate_msg_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)
_generate_msg_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)
_generate_msg_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)
_generate_msg_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)
_generate_msg_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)

### Generating Services
_generate_srv_eus(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
)

### Generating Module File
_generate_module_eus(communicate
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(communicate_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(communicate_generate_messages communicate_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg" NAME_WE)
add_dependencies(communicate_generate_messages_eus _communicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(communicate_geneus)
add_dependencies(communicate_geneus communicate_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS communicate_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)
_generate_msg_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)
_generate_msg_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)
_generate_msg_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)
_generate_msg_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)
_generate_msg_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)
_generate_msg_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)
_generate_msg_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)

### Generating Services
_generate_srv_lisp(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
)

### Generating Module File
_generate_module_lisp(communicate
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(communicate_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(communicate_generate_messages communicate_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg" NAME_WE)
add_dependencies(communicate_generate_messages_lisp _communicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(communicate_genlisp)
add_dependencies(communicate_genlisp communicate_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS communicate_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)
_generate_msg_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)
_generate_msg_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)
_generate_msg_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)
_generate_msg_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)
_generate_msg_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)
_generate_msg_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)
_generate_msg_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)

### Generating Services
_generate_srv_nodejs(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
)

### Generating Module File
_generate_module_nodejs(communicate
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(communicate_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(communicate_generate_messages communicate_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg" NAME_WE)
add_dependencies(communicate_generate_messages_nodejs _communicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(communicate_gennodejs)
add_dependencies(communicate_gennodejs communicate_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS communicate_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)
_generate_msg_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)
_generate_msg_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)
_generate_msg_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)
_generate_msg_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)
_generate_msg_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)
_generate_msg_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)
_generate_msg_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)

### Generating Services
_generate_srv_py(communicate
  "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
)

### Generating Module File
_generate_module_py(communicate
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(communicate_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(communicate_generate_messages communicate_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/devel/share/communicate/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS2basic/catkincommunicate/src/communicate/msg/Person.msg" NAME_WE)
add_dependencies(communicate_generate_messages_py _communicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(communicate_genpy)
add_dependencies(communicate_genpy communicate_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS communicate_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/communicate
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(communicate_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(communicate_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/communicate
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(communicate_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(communicate_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/communicate
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(communicate_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(communicate_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/communicate
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(communicate_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(communicate_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/communicate
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(communicate_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(communicate_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
