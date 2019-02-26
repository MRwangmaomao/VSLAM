; Auto-generated. Do not edit!


(cl:in-package communicate-msg)


;//! \htmlinclude Person.msg.html

(cl:defclass <Person> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (sex
    :reader sex
    :initarg :sex
    :type cl:fixnum
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Person (<Person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name communicate-msg:<Person> is deprecated: use communicate-msg:Person instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader communicate-msg:name-val is deprecated.  Use communicate-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'sex-val :lambda-list '(m))
(cl:defmethod sex-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader communicate-msg:sex-val is deprecated.  Use communicate-msg:sex instead.")
  (sex m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader communicate-msg:age-val is deprecated.  Use communicate-msg:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Person>)))
    "Constants for message type '<Person>"
  '((:UNKONWN . 0)
    (:MALE . 1)
    (:FEMALE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Person)))
    "Constants for message type 'Person"
  '((:UNKONWN . 0)
    (:MALE . 1)
    (:FEMALE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person>) ostream)
  "Serializes a message object of type '<Person>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person>) istream)
  "Deserializes a message object of type '<Person>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person>)))
  "Returns string type for a message object of type '<Person>"
  "communicate/Person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person)))
  "Returns string type for a message object of type 'Person"
  "communicate/Person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person>)))
  "Returns md5sum for a message object of type '<Person>"
  "e6c586fe5db3b6c5bf0caaabb580d8d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person)))
  "Returns md5sum for a message object of type 'Person"
  "e6c586fe5db3b6c5bf0caaabb580d8d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person>)))
  "Returns full string definition for message of type '<Person>"
  (cl:format cl:nil "string name~%uint8 sex~%uint8 age~%~%uint8 unkonwn = 0~%uint8 male = 1~%uint8 female = 2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person)))
  "Returns full string definition for message of type 'Person"
  (cl:format cl:nil "string name~%uint8 sex~%uint8 age~%~%uint8 unkonwn = 0~%uint8 male = 1~%uint8 female = 2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person>))
  "Converts a ROS message object to a list"
  (cl:list 'Person
    (cl:cons ':name (name msg))
    (cl:cons ':sex (sex msg))
    (cl:cons ':age (age msg))
))
