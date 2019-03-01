; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude TrajectoryOptions.msg.html

(cl:defclass <TrajectoryOptions> (roslisp-msg-protocol:ros-message)
  ((tracking_frame
    :reader tracking_frame
    :initarg :tracking_frame
    :type cl:string
    :initform "")
   (published_frame
    :reader published_frame
    :initarg :published_frame
    :type cl:string
    :initform "")
   (odom_frame
    :reader odom_frame
    :initarg :odom_frame
    :type cl:string
    :initform "")
   (provide_odom_frame
    :reader provide_odom_frame
    :initarg :provide_odom_frame
    :type cl:boolean
    :initform cl:nil)
   (use_odometry
    :reader use_odometry
    :initarg :use_odometry
    :type cl:boolean
    :initform cl:nil)
   (num_laser_scans
    :reader num_laser_scans
    :initarg :num_laser_scans
    :type cl:integer
    :initform 0)
   (num_multi_echo_laser_scans
    :reader num_multi_echo_laser_scans
    :initarg :num_multi_echo_laser_scans
    :type cl:integer
    :initform 0)
   (num_subdivisions_per_laser_scan
    :reader num_subdivisions_per_laser_scan
    :initarg :num_subdivisions_per_laser_scan
    :type cl:integer
    :initform 0)
   (num_point_clouds
    :reader num_point_clouds
    :initarg :num_point_clouds
    :type cl:integer
    :initform 0)
   (trajectory_builder_options_proto
    :reader trajectory_builder_options_proto
    :initarg :trajectory_builder_options_proto
    :type cl:string
    :initform ""))
)

(cl:defclass TrajectoryOptions (<TrajectoryOptions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryOptions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryOptions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<TrajectoryOptions> is deprecated: use cartographer_ros_msgs-msg:TrajectoryOptions instead.")))

(cl:ensure-generic-function 'tracking_frame-val :lambda-list '(m))
(cl:defmethod tracking_frame-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:tracking_frame-val is deprecated.  Use cartographer_ros_msgs-msg:tracking_frame instead.")
  (tracking_frame m))

(cl:ensure-generic-function 'published_frame-val :lambda-list '(m))
(cl:defmethod published_frame-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:published_frame-val is deprecated.  Use cartographer_ros_msgs-msg:published_frame instead.")
  (published_frame m))

(cl:ensure-generic-function 'odom_frame-val :lambda-list '(m))
(cl:defmethod odom_frame-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:odom_frame-val is deprecated.  Use cartographer_ros_msgs-msg:odom_frame instead.")
  (odom_frame m))

(cl:ensure-generic-function 'provide_odom_frame-val :lambda-list '(m))
(cl:defmethod provide_odom_frame-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:provide_odom_frame-val is deprecated.  Use cartographer_ros_msgs-msg:provide_odom_frame instead.")
  (provide_odom_frame m))

(cl:ensure-generic-function 'use_odometry-val :lambda-list '(m))
(cl:defmethod use_odometry-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:use_odometry-val is deprecated.  Use cartographer_ros_msgs-msg:use_odometry instead.")
  (use_odometry m))

(cl:ensure-generic-function 'num_laser_scans-val :lambda-list '(m))
(cl:defmethod num_laser_scans-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:num_laser_scans-val is deprecated.  Use cartographer_ros_msgs-msg:num_laser_scans instead.")
  (num_laser_scans m))

(cl:ensure-generic-function 'num_multi_echo_laser_scans-val :lambda-list '(m))
(cl:defmethod num_multi_echo_laser_scans-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:num_multi_echo_laser_scans-val is deprecated.  Use cartographer_ros_msgs-msg:num_multi_echo_laser_scans instead.")
  (num_multi_echo_laser_scans m))

(cl:ensure-generic-function 'num_subdivisions_per_laser_scan-val :lambda-list '(m))
(cl:defmethod num_subdivisions_per_laser_scan-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:num_subdivisions_per_laser_scan-val is deprecated.  Use cartographer_ros_msgs-msg:num_subdivisions_per_laser_scan instead.")
  (num_subdivisions_per_laser_scan m))

(cl:ensure-generic-function 'num_point_clouds-val :lambda-list '(m))
(cl:defmethod num_point_clouds-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:num_point_clouds-val is deprecated.  Use cartographer_ros_msgs-msg:num_point_clouds instead.")
  (num_point_clouds m))

(cl:ensure-generic-function 'trajectory_builder_options_proto-val :lambda-list '(m))
(cl:defmethod trajectory_builder_options_proto-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:trajectory_builder_options_proto-val is deprecated.  Use cartographer_ros_msgs-msg:trajectory_builder_options_proto instead.")
  (trajectory_builder_options_proto m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryOptions>) ostream)
  "Serializes a message object of type '<TrajectoryOptions>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tracking_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tracking_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'published_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'published_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'odom_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'odom_frame))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'provide_odom_frame) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_odometry) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_laser_scans)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_multi_echo_laser_scans)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_subdivisions_per_laser_scan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_point_clouds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trajectory_builder_options_proto))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trajectory_builder_options_proto))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryOptions>) istream)
  "Deserializes a message object of type '<TrajectoryOptions>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracking_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tracking_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'published_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'published_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odom_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'odom_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'provide_odom_frame) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_odometry) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_laser_scans) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_multi_echo_laser_scans) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_subdivisions_per_laser_scan) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_point_clouds) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_builder_options_proto) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'trajectory_builder_options_proto) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryOptions>)))
  "Returns string type for a message object of type '<TrajectoryOptions>"
  "cartographer_ros_msgs/TrajectoryOptions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryOptions)))
  "Returns string type for a message object of type 'TrajectoryOptions"
  "cartographer_ros_msgs/TrajectoryOptions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryOptions>)))
  "Returns md5sum for a message object of type '<TrajectoryOptions>"
  "ac72a891c02f6ddc3c0e1d956ee63a88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryOptions)))
  "Returns md5sum for a message object of type 'TrajectoryOptions"
  "ac72a891c02f6ddc3c0e1d956ee63a88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryOptions>)))
  "Returns full string definition for message of type '<TrajectoryOptions>"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string tracking_frame~%string published_frame~%string odom_frame~%bool provide_odom_frame~%bool use_odometry~%int32 num_laser_scans~%int32 num_multi_echo_laser_scans~%int32 num_subdivisions_per_laser_scan~%int32 num_point_clouds~%~%# This is a binary-encoded~%# 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.~%string trajectory_builder_options_proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryOptions)))
  "Returns full string definition for message of type 'TrajectoryOptions"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string tracking_frame~%string published_frame~%string odom_frame~%bool provide_odom_frame~%bool use_odometry~%int32 num_laser_scans~%int32 num_multi_echo_laser_scans~%int32 num_subdivisions_per_laser_scan~%int32 num_point_clouds~%~%# This is a binary-encoded~%# 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.~%string trajectory_builder_options_proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryOptions>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tracking_frame))
     4 (cl:length (cl:slot-value msg 'published_frame))
     4 (cl:length (cl:slot-value msg 'odom_frame))
     1
     1
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'trajectory_builder_options_proto))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryOptions>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryOptions
    (cl:cons ':tracking_frame (tracking_frame msg))
    (cl:cons ':published_frame (published_frame msg))
    (cl:cons ':odom_frame (odom_frame msg))
    (cl:cons ':provide_odom_frame (provide_odom_frame msg))
    (cl:cons ':use_odometry (use_odometry msg))
    (cl:cons ':num_laser_scans (num_laser_scans msg))
    (cl:cons ':num_multi_echo_laser_scans (num_multi_echo_laser_scans msg))
    (cl:cons ':num_subdivisions_per_laser_scan (num_subdivisions_per_laser_scan msg))
    (cl:cons ':num_point_clouds (num_point_clouds msg))
    (cl:cons ':trajectory_builder_options_proto (trajectory_builder_options_proto msg))
))
