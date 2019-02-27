;; Auto-generated. Do not edit!


(when (boundp 'arbotix_msgs::Enable)
  (if (not (find-package "ARBOTIX_MSGS"))
    (make-package "ARBOTIX_MSGS"))
  (shadow 'Enable (find-package "ARBOTIX_MSGS")))
(unless (find-package "ARBOTIX_MSGS::ENABLE")
  (make-package "ARBOTIX_MSGS::ENABLE"))
(unless (find-package "ARBOTIX_MSGS::ENABLEREQUEST")
  (make-package "ARBOTIX_MSGS::ENABLEREQUEST"))
(unless (find-package "ARBOTIX_MSGS::ENABLERESPONSE")
  (make-package "ARBOTIX_MSGS::ENABLERESPONSE"))

(in-package "ROS")





(defclass arbotix_msgs::EnableRequest
  :super ros::object
  :slots (_enable ))

(defmethod arbotix_msgs::EnableRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arbotix_msgs::EnableResponse
  :super ros::object
  :slots (_state ))

(defmethod arbotix_msgs::EnableResponse
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arbotix_msgs::Enable
  :super ros::object
  :slots ())

(setf (get arbotix_msgs::Enable :md5sum-) "3ea372bdd9923da8a6c7ae2db934a6cb")
(setf (get arbotix_msgs::Enable :datatype-) "arbotix_msgs/Enable")
(setf (get arbotix_msgs::Enable :request) arbotix_msgs::EnableRequest)
(setf (get arbotix_msgs::Enable :response) arbotix_msgs::EnableResponse)

(defmethod arbotix_msgs::EnableRequest
  (:response () (instance arbotix_msgs::EnableResponse :init)))

(setf (get arbotix_msgs::EnableRequest :md5sum-) "3ea372bdd9923da8a6c7ae2db934a6cb")
(setf (get arbotix_msgs::EnableRequest :datatype-) "arbotix_msgs/EnableRequest")
(setf (get arbotix_msgs::EnableRequest :definition-)
      "bool enable
---
bool state

")

(setf (get arbotix_msgs::EnableResponse :md5sum-) "3ea372bdd9923da8a6c7ae2db934a6cb")
(setf (get arbotix_msgs::EnableResponse :datatype-) "arbotix_msgs/EnableResponse")
(setf (get arbotix_msgs::EnableResponse :definition-)
      "bool enable
---
bool state

")



(provide :arbotix_msgs/Enable "3ea372bdd9923da8a6c7ae2db934a6cb")


