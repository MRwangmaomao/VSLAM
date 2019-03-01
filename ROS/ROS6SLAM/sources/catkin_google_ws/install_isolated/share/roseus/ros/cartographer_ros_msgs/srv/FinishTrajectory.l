;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::FinishTrajectory)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'FinishTrajectory (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORY")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORY"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYREQUEST")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYREQUEST"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYRESPONSE")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass cartographer_ros_msgs::FinishTrajectoryRequest
  :super ros::object
  :slots (_trajectory_id ))

(defmethod cartographer_ros_msgs::FinishTrajectoryRequest
  (:init
   (&key
    ((:trajectory_id __trajectory_id) 0)
    )
   (send-super :init)
   (setq _trajectory_id (round __trajectory_id))
   self)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:serialization-length
   ()
   (+
    ;; int32 _trajectory_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cartographer_ros_msgs::FinishTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod cartographer_ros_msgs::FinishTrajectoryResponse
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

(defclass cartographer_ros_msgs::FinishTrajectory
  :super ros::object
  :slots ())

(setf (get cartographer_ros_msgs::FinishTrajectory :md5sum-) "6e190c4be941828bcd09ea05053f4bb5")
(setf (get cartographer_ros_msgs::FinishTrajectory :datatype-) "cartographer_ros_msgs/FinishTrajectory")
(setf (get cartographer_ros_msgs::FinishTrajectory :request) cartographer_ros_msgs::FinishTrajectoryRequest)
(setf (get cartographer_ros_msgs::FinishTrajectory :response) cartographer_ros_msgs::FinishTrajectoryResponse)

(defmethod cartographer_ros_msgs::FinishTrajectoryRequest
  (:response () (instance cartographer_ros_msgs::FinishTrajectoryResponse :init)))

(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :md5sum-) "6e190c4be941828bcd09ea05053f4bb5")
(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :datatype-) "cartographer_ros_msgs/FinishTrajectoryRequest")
(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :definition-)
      "













int32 trajectory_id
---

")

(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :md5sum-) "6e190c4be941828bcd09ea05053f4bb5")
(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :datatype-) "cartographer_ros_msgs/FinishTrajectoryResponse")
(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :definition-)
      "













int32 trajectory_id
---

")



(provide :cartographer_ros_msgs/FinishTrajectory "6e190c4be941828bcd09ea05053f4bb5")


