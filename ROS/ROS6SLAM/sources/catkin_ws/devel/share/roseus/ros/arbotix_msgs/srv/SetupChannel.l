;; Auto-generated. Do not edit!


(when (boundp 'arbotix_msgs::SetupChannel)
  (if (not (find-package "ARBOTIX_MSGS"))
    (make-package "ARBOTIX_MSGS"))
  (shadow 'SetupChannel (find-package "ARBOTIX_MSGS")))
(unless (find-package "ARBOTIX_MSGS::SETUPCHANNEL")
  (make-package "ARBOTIX_MSGS::SETUPCHANNEL"))
(unless (find-package "ARBOTIX_MSGS::SETUPCHANNELREQUEST")
  (make-package "ARBOTIX_MSGS::SETUPCHANNELREQUEST"))
(unless (find-package "ARBOTIX_MSGS::SETUPCHANNELRESPONSE")
  (make-package "ARBOTIX_MSGS::SETUPCHANNELRESPONSE"))

(in-package "ROS")





(defclass arbotix_msgs::SetupChannelRequest
  :super ros::object
  :slots (_topic_name _pin _value _rate ))

(defmethod arbotix_msgs::SetupChannelRequest
  (:init
   (&key
    ((:topic_name __topic_name) "")
    ((:pin __pin) 0)
    ((:value __value) 0)
    ((:rate __rate) 0)
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   (setq _pin (round __pin))
   (setq _value (round __value))
   (setq _rate (round __rate))
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ;; uint8 _pin
    1
    ;; uint8 _value
    1
    ;; uint8 _rate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; uint8 _pin
       (write-byte _pin s)
     ;; uint8 _value
       (write-byte _value s)
     ;; uint8 _rate
       (write-byte _rate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rate
     (setq _rate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass arbotix_msgs::SetupChannelResponse
  :super ros::object
  :slots ())

(defmethod arbotix_msgs::SetupChannelResponse
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

(defclass arbotix_msgs::SetupChannel
  :super ros::object
  :slots ())

(setf (get arbotix_msgs::SetupChannel :md5sum-) "c65e58d8b3b4d406126f6dc829a6011f")
(setf (get arbotix_msgs::SetupChannel :datatype-) "arbotix_msgs/SetupChannel")
(setf (get arbotix_msgs::SetupChannel :request) arbotix_msgs::SetupChannelRequest)
(setf (get arbotix_msgs::SetupChannel :response) arbotix_msgs::SetupChannelResponse)

(defmethod arbotix_msgs::SetupChannelRequest
  (:response () (instance arbotix_msgs::SetupChannelResponse :init)))

(setf (get arbotix_msgs::SetupChannelRequest :md5sum-) "c65e58d8b3b4d406126f6dc829a6011f")
(setf (get arbotix_msgs::SetupChannelRequest :datatype-) "arbotix_msgs/SetupChannelRequest")
(setf (get arbotix_msgs::SetupChannelRequest :definition-)
      "
string topic_name
uint8 pin
uint8 value
uint8 rate
---


")

(setf (get arbotix_msgs::SetupChannelResponse :md5sum-) "c65e58d8b3b4d406126f6dc829a6011f")
(setf (get arbotix_msgs::SetupChannelResponse :datatype-) "arbotix_msgs/SetupChannelResponse")
(setf (get arbotix_msgs::SetupChannelResponse :definition-)
      "
string topic_name
uint8 pin
uint8 value
uint8 rate
---


")



(provide :arbotix_msgs/SetupChannel "c65e58d8b3b4d406126f6dc829a6011f")


