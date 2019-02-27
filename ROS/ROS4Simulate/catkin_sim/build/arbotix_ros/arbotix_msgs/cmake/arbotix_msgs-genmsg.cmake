# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "arbotix_msgs: 2 messages, 4 services")

set(MSG_I_FLAGS "-Iarbotix_msgs:/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(arbotix_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg" NAME_WE)
add_custom_target(_arbotix_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arbotix_msgs" "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv" NAME_WE)
add_custom_target(_arbotix_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arbotix_msgs" "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv" NAME_WE)
add_custom_target(_arbotix_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arbotix_msgs" "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg" NAME_WE)
add_custom_target(_arbotix_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arbotix_msgs" "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv" NAME_WE)
add_custom_target(_arbotix_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arbotix_msgs" "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv" ""
)

get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv" NAME_WE)
add_custom_target(_arbotix_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arbotix_msgs" "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs
)
_generate_msg_cpp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs
)

### Generating Services
_generate_srv_cpp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_cpp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_cpp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_cpp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs
)

### Generating Module File
_generate_module_cpp(arbotix_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(arbotix_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(arbotix_msgs_generate_messages arbotix_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_cpp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_cpp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_cpp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_cpp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_cpp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_cpp _arbotix_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arbotix_msgs_gencpp)
add_dependencies(arbotix_msgs_gencpp arbotix_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arbotix_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs
)
_generate_msg_eus(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs
)

### Generating Services
_generate_srv_eus(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_eus(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_eus(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_eus(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs
)

### Generating Module File
_generate_module_eus(arbotix_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(arbotix_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(arbotix_msgs_generate_messages arbotix_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_eus _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_eus _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_eus _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_eus _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_eus _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_eus _arbotix_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arbotix_msgs_geneus)
add_dependencies(arbotix_msgs_geneus arbotix_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arbotix_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs
)
_generate_msg_lisp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs
)

### Generating Services
_generate_srv_lisp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_lisp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_lisp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_lisp(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs
)

### Generating Module File
_generate_module_lisp(arbotix_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(arbotix_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(arbotix_msgs_generate_messages arbotix_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_lisp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_lisp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_lisp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_lisp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_lisp _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_lisp _arbotix_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arbotix_msgs_genlisp)
add_dependencies(arbotix_msgs_genlisp arbotix_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arbotix_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs
)
_generate_msg_nodejs(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs
)

### Generating Services
_generate_srv_nodejs(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_nodejs(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_nodejs(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_nodejs(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs
)

### Generating Module File
_generate_module_nodejs(arbotix_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(arbotix_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(arbotix_msgs_generate_messages arbotix_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_nodejs _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_nodejs _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_nodejs _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_nodejs _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_nodejs _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_nodejs _arbotix_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arbotix_msgs_gennodejs)
add_dependencies(arbotix_msgs_gennodejs arbotix_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arbotix_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs
)
_generate_msg_py(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs
)

### Generating Services
_generate_srv_py(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_py(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_py(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs
)
_generate_srv_py(arbotix_msgs
  "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs
)

### Generating Module File
_generate_module_py(arbotix_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(arbotix_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(arbotix_msgs_generate_messages arbotix_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Analog.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_py _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Relax.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_py _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/Enable.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_py _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/msg/Digital.msg" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_py _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetSpeed.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_py _arbotix_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/arbotix_ros/arbotix_msgs/srv/SetupChannel.srv" NAME_WE)
add_dependencies(arbotix_msgs_generate_messages_py _arbotix_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arbotix_msgs_genpy)
add_dependencies(arbotix_msgs_genpy arbotix_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arbotix_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arbotix_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(arbotix_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arbotix_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(arbotix_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arbotix_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(arbotix_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arbotix_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(arbotix_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arbotix_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(arbotix_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
