; Auto-generated. Do not edit!


(cl:in-package arbotix_msgs-srv)


;//! \htmlinclude SetSpeed-request.msg.html

(cl:defclass <SetSpeed-request> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetSpeed-request (<SetSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbotix_msgs-srv:<SetSpeed-request> is deprecated: use arbotix_msgs-srv:SetSpeed-request instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SetSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbotix_msgs-srv:speed-val is deprecated.  Use arbotix_msgs-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSpeed-request>) ostream)
  "Serializes a message object of type '<SetSpeed-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSpeed-request>) istream)
  "Deserializes a message object of type '<SetSpeed-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSpeed-request>)))
  "Returns string type for a service object of type '<SetSpeed-request>"
  "arbotix_msgs/SetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSpeed-request)))
  "Returns string type for a service object of type 'SetSpeed-request"
  "arbotix_msgs/SetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSpeed-request>)))
  "Returns md5sum for a message object of type '<SetSpeed-request>"
  "4641bb0523a3557209606d9bd91ce33a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSpeed-request)))
  "Returns md5sum for a message object of type 'SetSpeed-request"
  "4641bb0523a3557209606d9bd91ce33a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSpeed-request>)))
  "Returns full string definition for message of type '<SetSpeed-request>"
  (cl:format cl:nil "float64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSpeed-request)))
  "Returns full string definition for message of type 'SetSpeed-request"
  (cl:format cl:nil "float64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSpeed-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSpeed-request
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude SetSpeed-response.msg.html

(cl:defclass <SetSpeed-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetSpeed-response (<SetSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbotix_msgs-srv:<SetSpeed-response> is deprecated: use arbotix_msgs-srv:SetSpeed-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSpeed-response>) ostream)
  "Serializes a message object of type '<SetSpeed-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSpeed-response>) istream)
  "Deserializes a message object of type '<SetSpeed-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSpeed-response>)))
  "Returns string type for a service object of type '<SetSpeed-response>"
  "arbotix_msgs/SetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSpeed-response)))
  "Returns string type for a service object of type 'SetSpeed-response"
  "arbotix_msgs/SetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSpeed-response>)))
  "Returns md5sum for a message object of type '<SetSpeed-response>"
  "4641bb0523a3557209606d9bd91ce33a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSpeed-response)))
  "Returns md5sum for a message object of type 'SetSpeed-response"
  "4641bb0523a3557209606d9bd91ce33a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSpeed-response>)))
  "Returns full string definition for message of type '<SetSpeed-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSpeed-response)))
  "Returns full string definition for message of type 'SetSpeed-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSpeed-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSpeed-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSpeed)))
  'SetSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSpeed)))
  'SetSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSpeed)))
  "Returns string type for a service object of type '<SetSpeed>"
  "arbotix_msgs/SetSpeed")