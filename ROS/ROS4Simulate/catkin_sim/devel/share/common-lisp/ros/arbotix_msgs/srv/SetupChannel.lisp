; Auto-generated. Do not edit!


(cl:in-package arbotix_msgs-srv)


;//! \htmlinclude SetupChannel-request.msg.html

(cl:defclass <SetupChannel-request> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetupChannel-request (<SetupChannel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetupChannel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetupChannel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbotix_msgs-srv:<SetupChannel-request> is deprecated: use arbotix_msgs-srv:SetupChannel-request instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <SetupChannel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbotix_msgs-srv:topic_name-val is deprecated.  Use arbotix_msgs-srv:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetupChannel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbotix_msgs-srv:pin-val is deprecated.  Use arbotix_msgs-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetupChannel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbotix_msgs-srv:value-val is deprecated.  Use arbotix_msgs-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <SetupChannel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbotix_msgs-srv:rate-val is deprecated.  Use arbotix_msgs-srv:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetupChannel-request>) ostream)
  "Serializes a message object of type '<SetupChannel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetupChannel-request>) istream)
  "Deserializes a message object of type '<SetupChannel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rate)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetupChannel-request>)))
  "Returns string type for a service object of type '<SetupChannel-request>"
  "arbotix_msgs/SetupChannelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupChannel-request)))
  "Returns string type for a service object of type 'SetupChannel-request"
  "arbotix_msgs/SetupChannelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetupChannel-request>)))
  "Returns md5sum for a message object of type '<SetupChannel-request>"
  "c65e58d8b3b4d406126f6dc829a6011f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetupChannel-request)))
  "Returns md5sum for a message object of type 'SetupChannel-request"
  "c65e58d8b3b4d406126f6dc829a6011f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetupChannel-request>)))
  "Returns full string definition for message of type '<SetupChannel-request>"
  (cl:format cl:nil "~%string topic_name~%uint8 pin~%uint8 value~%uint8 rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetupChannel-request)))
  "Returns full string definition for message of type 'SetupChannel-request"
  (cl:format cl:nil "~%string topic_name~%uint8 pin~%uint8 value~%uint8 rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetupChannel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetupChannel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetupChannel-request
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
    (cl:cons ':rate (rate msg))
))
;//! \htmlinclude SetupChannel-response.msg.html

(cl:defclass <SetupChannel-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetupChannel-response (<SetupChannel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetupChannel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetupChannel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbotix_msgs-srv:<SetupChannel-response> is deprecated: use arbotix_msgs-srv:SetupChannel-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetupChannel-response>) ostream)
  "Serializes a message object of type '<SetupChannel-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetupChannel-response>) istream)
  "Deserializes a message object of type '<SetupChannel-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetupChannel-response>)))
  "Returns string type for a service object of type '<SetupChannel-response>"
  "arbotix_msgs/SetupChannelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupChannel-response)))
  "Returns string type for a service object of type 'SetupChannel-response"
  "arbotix_msgs/SetupChannelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetupChannel-response>)))
  "Returns md5sum for a message object of type '<SetupChannel-response>"
  "c65e58d8b3b4d406126f6dc829a6011f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetupChannel-response)))
  "Returns md5sum for a message object of type 'SetupChannel-response"
  "c65e58d8b3b4d406126f6dc829a6011f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetupChannel-response>)))
  "Returns full string definition for message of type '<SetupChannel-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetupChannel-response)))
  "Returns full string definition for message of type 'SetupChannel-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetupChannel-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetupChannel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetupChannel-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetupChannel)))
  'SetupChannel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetupChannel)))
  'SetupChannel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupChannel)))
  "Returns string type for a service object of type '<SetupChannel>"
  "arbotix_msgs/SetupChannel")