; Auto-generated. Do not edit!


(cl:in-package arbotix_msgs-srv)


;//! \htmlinclude Relax-request.msg.html

(cl:defclass <Relax-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Relax-request (<Relax-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Relax-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Relax-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbotix_msgs-srv:<Relax-request> is deprecated: use arbotix_msgs-srv:Relax-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Relax-request>) ostream)
  "Serializes a message object of type '<Relax-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Relax-request>) istream)
  "Deserializes a message object of type '<Relax-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Relax-request>)))
  "Returns string type for a service object of type '<Relax-request>"
  "arbotix_msgs/RelaxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relax-request)))
  "Returns string type for a service object of type 'Relax-request"
  "arbotix_msgs/RelaxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Relax-request>)))
  "Returns md5sum for a message object of type '<Relax-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Relax-request)))
  "Returns md5sum for a message object of type 'Relax-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Relax-request>)))
  "Returns full string definition for message of type '<Relax-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Relax-request)))
  "Returns full string definition for message of type 'Relax-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Relax-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Relax-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Relax-request
))
;//! \htmlinclude Relax-response.msg.html

(cl:defclass <Relax-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Relax-response (<Relax-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Relax-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Relax-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arbotix_msgs-srv:<Relax-response> is deprecated: use arbotix_msgs-srv:Relax-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Relax-response>) ostream)
  "Serializes a message object of type '<Relax-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Relax-response>) istream)
  "Deserializes a message object of type '<Relax-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Relax-response>)))
  "Returns string type for a service object of type '<Relax-response>"
  "arbotix_msgs/RelaxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relax-response)))
  "Returns string type for a service object of type 'Relax-response"
  "arbotix_msgs/RelaxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Relax-response>)))
  "Returns md5sum for a message object of type '<Relax-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Relax-response)))
  "Returns md5sum for a message object of type 'Relax-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Relax-response>)))
  "Returns full string definition for message of type '<Relax-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Relax-response)))
  "Returns full string definition for message of type 'Relax-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Relax-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Relax-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Relax-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Relax)))
  'Relax-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Relax)))
  'Relax-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Relax)))
  "Returns string type for a service object of type '<Relax>"
  "arbotix_msgs/Relax")