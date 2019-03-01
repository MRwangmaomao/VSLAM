;; Auto-generated. Do not edit!


(when (boundp 'arbotix_msgs::SetSpeed)
  (if (not (find-package "ARBOTIX_MSGS"))
    (make-package "ARBOTIX_MSGS"))
  (shadow 'SetSpeed (find-package "ARBOTIX_MSGS")))
(unless (find-package "ARBOTIX_MSGS::SETSPEED")
  (make-package "ARBOTIX_MSGS::SETSPEED"))
(unless (find-package "ARBOTIX_MSGS::SETSPEEDREQUEST")
  (make-package "ARBOTIX_MSGS::SETSPEEDREQUEST"))
(unless (find-package "ARBOTIX_MSGS::SETSPEEDRESPONSE")
  (make-package "ARBOTIX_MSGS::SETSPEEDRESPONSE"))

(in-package "ROS")





(defclass arbotix_msgs::SetSpeedRequest
  :super ros::object
  :slots (_speed ))

(defmethod arbotix_msgs::SetSpeedRequest
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass arbotix_msgs::SetSpeedResponse
  :super ros::object
  :slots ())

(defmethod arbotix_msgs::SetSpeedResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass arbotix_msgs::SetSpeed
  :super ros::object
  :slots ())

(setf (get arbotix_msgs::SetSpeed :md5sum-) "4641bb0523a3557209606d9bd91ce33a")
(setf (get arbotix_msgs::SetSpeed :datatype-) "arbotix_msgs/SetSpeed")
(setf (get arbotix_msgs::SetSpeed :request) arbotix_msgs::SetSpeedRequest)
(setf (get arbotix_msgs::SetSpeed :response) arbotix_msgs::SetSpeedResponse)

(defmethod arbotix_msgs::SetSpeedRequest
  (:response () (instance arbotix_msgs::SetSpeedResponse :init)))

(setf (get arbotix_msgs::SetSpeedRequest :md5sum-) "4641bb0523a3557209606d9bd91ce33a")
(setf (get arbotix_msgs::SetSpeedRequest :datatype-) "arbotix_msgs/SetSpeedRequest")
(setf (get arbotix_msgs::SetSpeedRequest :definition-)
      "float64 speed
---

")

(setf (get arbotix_msgs::SetSpeedResponse :md5sum-) "4641bb0523a3557209606d9bd91ce33a")
(setf (get arbotix_msgs::SetSpeedResponse :datatype-) "arbotix_msgs/SetSpeedResponse")
(setf (get arbotix_msgs::SetSpeedResponse :definition-)
      "float64 speed
---

")



(provide :arbotix_msgs/SetSpeed "4641bb0523a3557209606d9bd91ce33a")


