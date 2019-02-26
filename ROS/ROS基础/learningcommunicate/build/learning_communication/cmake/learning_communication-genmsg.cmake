# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "learning_communication: 8 messages, 1 services")

set(MSG_I_FLAGS "-Ilearning_communication:/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg;-Ilearning_communication:/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(learning_communication_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg" "learning_communication/DoDishesFeedback:actionlib_msgs/GoalStatus:learning_communication/DoDishesGoal:learning_communication/DoDishesActionFeedback:learning_communication/DoDishesResult:learning_communication/DoDishesActionResult:actionlib_msgs/GoalID:learning_communication/DoDishesActionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg" "learning_communication/DoDishesFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg" "learning_communication/DoDishesResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg" "learning_communication/DoDishesGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg" NAME_WE)
add_custom_target(_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "learning_communication" "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)
_generate_msg_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)
_generate_msg_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)
_generate_msg_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)
_generate_msg_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)
_generate_msg_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)
_generate_msg_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)
_generate_msg_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)

### Generating Services
_generate_srv_cpp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
)

### Generating Module File
_generate_module_cpp(learning_communication
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(learning_communication_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(learning_communication_generate_messages learning_communication_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_cpp _learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learning_communication_gencpp)
add_dependencies(learning_communication_gencpp learning_communication_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learning_communication_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)
_generate_msg_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)
_generate_msg_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)
_generate_msg_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)
_generate_msg_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)
_generate_msg_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)
_generate_msg_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)
_generate_msg_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)

### Generating Services
_generate_srv_eus(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
)

### Generating Module File
_generate_module_eus(learning_communication
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(learning_communication_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(learning_communication_generate_messages learning_communication_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_eus _learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learning_communication_geneus)
add_dependencies(learning_communication_geneus learning_communication_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learning_communication_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)
_generate_msg_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)
_generate_msg_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)
_generate_msg_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)
_generate_msg_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)
_generate_msg_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)
_generate_msg_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)
_generate_msg_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)

### Generating Services
_generate_srv_lisp(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
)

### Generating Module File
_generate_module_lisp(learning_communication
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(learning_communication_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(learning_communication_generate_messages learning_communication_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_lisp _learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learning_communication_genlisp)
add_dependencies(learning_communication_genlisp learning_communication_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learning_communication_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)
_generate_msg_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)
_generate_msg_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)
_generate_msg_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)
_generate_msg_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)
_generate_msg_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)
_generate_msg_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)
_generate_msg_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)

### Generating Services
_generate_srv_nodejs(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
)

### Generating Module File
_generate_module_nodejs(learning_communication
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(learning_communication_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(learning_communication_generate_messages learning_communication_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_nodejs _learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learning_communication_gennodejs)
add_dependencies(learning_communication_gennodejs learning_communication_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learning_communication_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)
_generate_msg_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)
_generate_msg_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)
_generate_msg_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)
_generate_msg_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)
_generate_msg_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)
_generate_msg_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)
_generate_msg_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)

### Generating Services
_generate_srv_py(learning_communication
  "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
)

### Generating Module File
_generate_module_py(learning_communication
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(learning_communication_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(learning_communication_generate_messages learning_communication_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/devel/share/learning_communication/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS基础/learningcommunicate/src/learning_communication/msg/Person.msg" NAME_WE)
add_dependencies(learning_communication_generate_messages_py _learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(learning_communication_genpy)
add_dependencies(learning_communication_genpy learning_communication_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS learning_communication_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/learning_communication
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(learning_communication_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(learning_communication_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/learning_communication
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(learning_communication_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(learning_communication_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/learning_communication
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(learning_communication_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(learning_communication_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/learning_communication
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(learning_communication_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(learning_communication_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/learning_communication
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(learning_communication_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(learning_communication_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
