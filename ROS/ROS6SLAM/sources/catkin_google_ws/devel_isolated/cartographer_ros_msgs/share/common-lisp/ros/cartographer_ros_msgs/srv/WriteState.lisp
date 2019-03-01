; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-srv)


;//! \htmlinclude WriteState-request.msg.html

(cl:defclass <WriteState-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass WriteState-request (<WriteState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<WriteState-request> is deprecated: use cartographer_ros_msgs-srv:WriteState-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <WriteState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:filename-val is deprecated.  Use cartographer_ros_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteState-request>) ostream)
  "Serializes a message object of type '<WriteState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteState-request>) istream)
  "Deserializes a message object of type '<WriteState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteState-request>)))
  "Returns string type for a service object of type '<WriteState-request>"
  "cartographer_ros_msgs/WriteStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteState-request)))
  "Returns string type for a service object of type 'WriteState-request"
  "cartographer_ros_msgs/WriteStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteState-request>)))
  "Returns md5sum for a message object of type '<WriteState-request>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteState-request)))
  "Returns md5sum for a message object of type 'WriteState-request"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteState-request>)))
  "Returns full string definition for message of type '<WriteState-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteState-request)))
  "Returns full string definition for message of type 'WriteState-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteState-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude WriteState-response.msg.html

(cl:defclass <WriteState-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WriteState-response (<WriteState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<WriteState-response> is deprecated: use cartographer_ros_msgs-srv:WriteState-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteState-response>) ostream)
  "Serializes a message object of type '<WriteState-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteState-response>) istream)
  "Deserializes a message object of type '<WriteState-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteState-response>)))
  "Returns string type for a service object of type '<WriteState-response>"
  "cartographer_ros_msgs/WriteStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteState-response)))
  "Returns string type for a service object of type 'WriteState-response"
  "cartographer_ros_msgs/WriteStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteState-response>)))
  "Returns md5sum for a message object of type '<WriteState-response>"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteState-response)))
  "Returns md5sum for a message object of type 'WriteState-response"
  "030824f52a0628ead956fb9d67e66ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteState-response>)))
  "Returns full string definition for message of type '<WriteState-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteState-response)))
  "Returns full string definition for message of type 'WriteState-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteState-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteState-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteState)))
  'WriteState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteState)))
  'WriteState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteState)))
  "Returns string type for a service object of type '<WriteState>"
  "cartographer_ros_msgs/WriteState")