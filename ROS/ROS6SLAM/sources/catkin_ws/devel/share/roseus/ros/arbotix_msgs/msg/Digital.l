;; Auto-generated. Do not edit!


(when (boundp 'arbotix_msgs::Digital)
  (if (not (find-package "ARBOTIX_MSGS"))
    (make-package "ARBOTIX_MSGS"))
  (shadow 'Digital (find-package "ARBOTIX_MSGS")))
(unless (find-package "ARBOTIX_MSGS::DIGITAL")
  (make-package "ARBOTIX_MSGS::DIGITAL"))

(in-package "ROS")
;;//! \htmlinclude Digital.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LOW*" (find-package "ARBOTIX_MSGS::DIGITAL"))
(shadow '*LOW* (find-package "ARBOTIX_MSGS::DIGITAL"))
(defconstant arbotix_msgs::Digital::*LOW* 0)
(intern "*HIGH*" (find-package "ARBOTIX_MSGS::DIGITAL"))
(shadow '*HIGH* (find-package "ARBOTIX_MSGS::DIGITAL"))
(defconstant arbotix_msgs::Digital::*HIGH* 255)
(intern "*INPUT*" (find-package "ARBOTIX_MSGS::DIGITAL"))
(shadow '*INPUT* (find-package "ARBOTIX_MSGS::DIGITAL"))
(defconstant arbotix_msgs::Digital::*INPUT* 0)
(intern "*OUTPUT*" (find-package "ARBOTIX_MSGS::DIGITAL"))
(shadow '*OUTPUT* (find-package "ARBOTIX_MSGS::DIGITAL"))
(defconstant arbotix_msgs::Digital::*OUTPUT* 255)
(defclass arbotix_msgs::Digital
  :super ros::object
  :slots (_header _value _direction ))

(defmethod arbotix_msgs::Digital
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:value __value) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _value (round __value))
   (setq _direction (round __direction))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _value
    1
    ;; uint8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _value
       (write-byte _value s)
     ;; uint8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get arbotix_msgs::Digital :md5sum-) "84d79480c76268c7cdf109dc588e00c4")
(setf (get arbotix_msgs::Digital :datatype-) "arbotix_msgs/Digital")
(setf (get arbotix_msgs::Digital :definition-)
      "# Reading or command to a single digital IO pin.
Header header

# value of pin
uint8 LOW=0
uint8 HIGH=255

uint8 value

# direction of pin
uint8 INPUT=0
uint8 OUTPUT=255

uint8 direction

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :arbotix_msgs/Digital "84d79480c76268c7cdf109dc588e00c4")


