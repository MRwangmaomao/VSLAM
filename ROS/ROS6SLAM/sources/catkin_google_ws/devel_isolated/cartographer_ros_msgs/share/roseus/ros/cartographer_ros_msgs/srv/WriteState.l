;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::WriteState)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'WriteState (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::WRITESTATE")
  (make-package "CARTOGRAPHER_ROS_MSGS::WRITESTATE"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::WRITESTATEREQUEST")
  (make-package "CARTOGRAPHER_ROS_MSGS::WRITESTATEREQUEST"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::WRITESTATERESPONSE")
  (make-package "CARTOGRAPHER_ROS_MSGS::WRITESTATERESPONSE"))

(in-package "ROS")





(defclass cartographer_ros_msgs::WriteStateRequest
  :super ros::object
  :slots (_filename ))

(defmethod cartographer_ros_msgs::WriteStateRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cartographer_ros_msgs::WriteStateResponse
  :super ros::object
  :slots ())

(defmethod cartographer_ros_msgs::WriteStateResponse
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

(defclass cartographer_ros_msgs::WriteState
  :super ros::object
  :slots ())

(setf (get cartographer_ros_msgs::WriteState :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get cartographer_ros_msgs::WriteState :datatype-) "cartographer_ros_msgs/WriteState")
(setf (get cartographer_ros_msgs::WriteState :request) cartographer_ros_msgs::WriteStateRequest)
(setf (get cartographer_ros_msgs::WriteState :response) cartographer_ros_msgs::WriteStateResponse)

(defmethod cartographer_ros_msgs::WriteStateRequest
  (:response () (instance cartographer_ros_msgs::WriteStateResponse :init)))

(setf (get cartographer_ros_msgs::WriteStateRequest :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get cartographer_ros_msgs::WriteStateRequest :datatype-) "cartographer_ros_msgs/WriteStateRequest")
(setf (get cartographer_ros_msgs::WriteStateRequest :definition-)
      "













string filename
---

")

(setf (get cartographer_ros_msgs::WriteStateResponse :md5sum-) "030824f52a0628ead956fb9d67e66ae9")
(setf (get cartographer_ros_msgs::WriteStateResponse :datatype-) "cartographer_ros_msgs/WriteStateResponse")
(setf (get cartographer_ros_msgs::WriteStateResponse :definition-)
      "













string filename
---

")



(provide :cartographer_ros_msgs/WriteState "030824f52a0628ead956fb9d67e66ae9")


