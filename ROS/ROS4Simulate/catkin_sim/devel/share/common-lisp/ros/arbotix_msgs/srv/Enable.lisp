; Auto-generated. Do not edit!


(cl:in-package arbotix_msgs-srv)


;//! \htmlinclude Enable-request.msg.html

(cl:defclass <Enable-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Enable-request (<Enable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Enable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Enable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbotix_msgs-srv:<Enable-request> is deprecated: use arbotix_msgs-srv:Enable-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <Enable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbotix_msgs-srv:enable-val is deprecated.  Use arbotix_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Enable-request>) ostream)
  "Serializes a message object of type '<Enable-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Enable-request>) istream)
  "Deserializes a message object of type '<Enable-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Enable-request>)))
  "Returns string type for a service object of type '<Enable-request>"
  "arbotix_msgs/EnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Enable-request)))
  "Returns string type for a service object of type 'Enable-request"
  "arbotix_msgs/EnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Enable-request>)))
  "Returns md5sum for a message object of type '<Enable-request>"
  "3ea372bdd9923da8a6c7ae2db934a6cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Enable-request)))
  "Returns md5sum for a message object of type 'Enable-request"
  "3ea372bdd9923da8a6c7ae2db934a6cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Enable-request>)))
  "Returns full string definition for message of type '<Enable-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Enable-request)))
  "Returns full string definition for message of type 'Enable-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Enable-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Enable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Enable-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude Enable-response.msg.html

(cl:defclass <Enable-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Enable-response (<Enable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Enable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Enable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbotix_msgs-srv:<Enable-response> is deprecated: use arbotix_msgs-srv:Enable-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Enable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arbotix_msgs-srv:state-val is deprecated.  Use arbotix_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Enable-response>) ostream)
  "Serializes a message object of type '<Enable-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Enable-response>) istream)
  "Deserializes a message object of type '<Enable-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Enable-response>)))
  "Returns string type for a service object of type '<Enable-response>"
  "arbotix_msgs/EnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Enable-response)))
  "Returns string type for a service object of type 'Enable-response"
  "arbotix_msgs/EnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Enable-response>)))
  "Returns md5sum for a message object of type '<Enable-response>"
  "3ea372bdd9923da8a6c7ae2db934a6cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Enable-response)))
  "Returns md5sum for a message object of type 'Enable-response"
  "3ea372bdd9923da8a6c7ae2db934a6cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Enable-response>)))
  "Returns full string definition for message of type '<Enable-response>"
  (cl:format cl:nil "bool state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Enable-response)))
  "Returns full string definition for message of type 'Enable-response"
  (cl:format cl:nil "bool state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Enable-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Enable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Enable-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Enable)))
  'Enable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Enable)))
  'Enable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Enable)))
  "Returns string type for a service object of type '<Enable>"
  "arbotix_msgs/Enable")