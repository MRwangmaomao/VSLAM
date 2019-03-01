;; Auto-generated. Do not edit!


(when (boundp 'arbotix_msgs::Relax)
  (if (not (find-package "ARBOTIX_MSGS"))
    (make-package "ARBOTIX_MSGS"))
  (shadow 'Relax (find-package "ARBOTIX_MSGS")))
(unless (find-package "ARBOTIX_MSGS::RELAX")
  (make-package "ARBOTIX_MSGS::RELAX"))
(unless (find-package "ARBOTIX_MSGS::RELAXREQUEST")
  (make-package "ARBOTIX_MSGS::RELAXREQUEST"))
(unless (find-package "ARBOTIX_MSGS::RELAXRESPONSE")
  (make-package "ARBOTIX_MSGS::RELAXRESPONSE"))

(in-package "ROS")





(defclass arbotix_msgs::RelaxRequest
  :super ros::object
  :slots ())

(defmethod arbotix_msgs::RelaxRequest
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

(defclass arbotix_msgs::RelaxResponse
  :super ros::object
  :slots ())

(defmethod arbotix_msgs::RelaxResponse
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

(defclass arbotix_msgs::Relax
  :super ros::object
  :slots ())

(setf (get arbotix_msgs::Relax :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arbotix_msgs::Relax :datatype-) "arbotix_msgs/Relax")
(setf (get arbotix_msgs::Relax :request) arbotix_msgs::RelaxRequest)
(setf (get arbotix_msgs::Relax :response) arbotix_msgs::RelaxResponse)

(defmethod arbotix_msgs::RelaxRequest
  (:response () (instance arbotix_msgs::RelaxResponse :init)))

(setf (get arbotix_msgs::RelaxRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arbotix_msgs::RelaxRequest :datatype-) "arbotix_msgs/RelaxRequest")
(setf (get arbotix_msgs::RelaxRequest :definition-)
      "
---


")

(setf (get arbotix_msgs::RelaxResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arbotix_msgs::RelaxResponse :datatype-) "arbotix_msgs/RelaxResponse")
(setf (get arbotix_msgs::RelaxResponse :definition-)
      "
---


")



(provide :arbotix_msgs/Relax "d41d8cd98f00b204e9800998ecf8427e")


