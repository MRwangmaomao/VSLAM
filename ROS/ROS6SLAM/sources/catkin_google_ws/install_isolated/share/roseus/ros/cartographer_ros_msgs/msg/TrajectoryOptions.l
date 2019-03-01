;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::TrajectoryOptions)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'TrajectoryOptions (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::TRAJECTORYOPTIONS")
  (make-package "CARTOGRAPHER_ROS_MSGS::TRAJECTORYOPTIONS"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryOptions.msg.html


(defclass cartographer_ros_msgs::TrajectoryOptions
  :super ros::object
  :slots (_tracking_frame _published_frame _odom_frame _provide_odom_frame _use_odometry _num_laser_scans _num_multi_echo_laser_scans _num_subdivisions_per_laser_scan _num_point_clouds _trajectory_builder_options_proto ))

(defmethod cartographer_ros_msgs::TrajectoryOptions
  (:init
   (&key
    ((:tracking_frame __tracking_frame) "")
    ((:published_frame __published_frame) "")
    ((:odom_frame __odom_frame) "")
    ((:provide_odom_frame __provide_odom_frame) nil)
    ((:use_odometry __use_odometry) nil)
    ((:num_laser_scans __num_laser_scans) 0)
    ((:num_multi_echo_laser_scans __num_multi_echo_laser_scans) 0)
    ((:num_subdivisions_per_laser_scan __num_subdivisions_per_laser_scan) 0)
    ((:num_point_clouds __num_point_clouds) 0)
    ((:trajectory_builder_options_proto __trajectory_builder_options_proto) "")
    )
   (send-super :init)
   (setq _tracking_frame (string __tracking_frame))
   (setq _published_frame (string __published_frame))
   (setq _odom_frame (string __odom_frame))
   (setq _provide_odom_frame __provide_odom_frame)
   (setq _use_odometry __use_odometry)
   (setq _num_laser_scans (round __num_laser_scans))
   (setq _num_multi_echo_laser_scans (round __num_multi_echo_laser_scans))
   (setq _num_subdivisions_per_laser_scan (round __num_subdivisions_per_laser_scan))
   (setq _num_point_clouds (round __num_point_clouds))
   (setq _trajectory_builder_options_proto (string __trajectory_builder_options_proto))
   self)
  (:tracking_frame
   (&optional __tracking_frame)
   (if __tracking_frame (setq _tracking_frame __tracking_frame)) _tracking_frame)
  (:published_frame
   (&optional __published_frame)
   (if __published_frame (setq _published_frame __published_frame)) _published_frame)
  (:odom_frame
   (&optional __odom_frame)
   (if __odom_frame (setq _odom_frame __odom_frame)) _odom_frame)
  (:provide_odom_frame
   (&optional __provide_odom_frame)
   (if __provide_odom_frame (setq _provide_odom_frame __provide_odom_frame)) _provide_odom_frame)
  (:use_odometry
   (&optional __use_odometry)
   (if __use_odometry (setq _use_odometry __use_odometry)) _use_odometry)
  (:num_laser_scans
   (&optional __num_laser_scans)
   (if __num_laser_scans (setq _num_laser_scans __num_laser_scans)) _num_laser_scans)
  (:num_multi_echo_laser_scans
   (&optional __num_multi_echo_laser_scans)
   (if __num_multi_echo_laser_scans (setq _num_multi_echo_laser_scans __num_multi_echo_laser_scans)) _num_multi_echo_laser_scans)
  (:num_subdivisions_per_laser_scan
   (&optional __num_subdivisions_per_laser_scan)
   (if __num_subdivisions_per_laser_scan (setq _num_subdivisions_per_laser_scan __num_subdivisions_per_laser_scan)) _num_subdivisions_per_laser_scan)
  (:num_point_clouds
   (&optional __num_point_clouds)
   (if __num_point_clouds (setq _num_point_clouds __num_point_clouds)) _num_point_clouds)
  (:trajectory_builder_options_proto
   (&optional __trajectory_builder_options_proto)
   (if __trajectory_builder_options_proto (setq _trajectory_builder_options_proto __trajectory_builder_options_proto)) _trajectory_builder_options_proto)
  (:serialization-length
   ()
   (+
    ;; string _tracking_frame
    4 (length _tracking_frame)
    ;; string _published_frame
    4 (length _published_frame)
    ;; string _odom_frame
    4 (length _odom_frame)
    ;; bool _provide_odom_frame
    1
    ;; bool _use_odometry
    1
    ;; int32 _num_laser_scans
    4
    ;; int32 _num_multi_echo_laser_scans
    4
    ;; int32 _num_subdivisions_per_laser_scan
    4
    ;; int32 _num_point_clouds
    4
    ;; string _trajectory_builder_options_proto
    4 (length _trajectory_builder_options_proto)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tracking_frame
       (write-long (length _tracking_frame) s) (princ _tracking_frame s)
     ;; string _published_frame
       (write-long (length _published_frame) s) (princ _published_frame s)
     ;; string _odom_frame
       (write-long (length _odom_frame) s) (princ _odom_frame s)
     ;; bool _provide_odom_frame
       (if _provide_odom_frame (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_odometry
       (if _use_odometry (write-byte -1 s) (write-byte 0 s))
     ;; int32 _num_laser_scans
       (write-long _num_laser_scans s)
     ;; int32 _num_multi_echo_laser_scans
       (write-long _num_multi_echo_laser_scans s)
     ;; int32 _num_subdivisions_per_laser_scan
       (write-long _num_subdivisions_per_laser_scan s)
     ;; int32 _num_point_clouds
       (write-long _num_point_clouds s)
     ;; string _trajectory_builder_options_proto
       (write-long (length _trajectory_builder_options_proto) s) (princ _trajectory_builder_options_proto s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tracking_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tracking_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _published_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _published_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _odom_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _odom_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _provide_odom_frame
     (setq _provide_odom_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_odometry
     (setq _use_odometry (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _num_laser_scans
     (setq _num_laser_scans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_multi_echo_laser_scans
     (setq _num_multi_echo_laser_scans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_subdivisions_per_laser_scan
     (setq _num_subdivisions_per_laser_scan (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_point_clouds
     (setq _num_point_clouds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _trajectory_builder_options_proto
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trajectory_builder_options_proto (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::TrajectoryOptions :md5sum-) "ac72a891c02f6ddc3c0e1d956ee63a88")
(setf (get cartographer_ros_msgs::TrajectoryOptions :datatype-) "cartographer_ros_msgs/TrajectoryOptions")
(setf (get cartographer_ros_msgs::TrajectoryOptions :definition-)
      "# Copyright 2016 The Cartographer Authors
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

string tracking_frame
string published_frame
string odom_frame
bool provide_odom_frame
bool use_odometry
int32 num_laser_scans
int32 num_multi_echo_laser_scans
int32 num_subdivisions_per_laser_scan
int32 num_point_clouds

# This is a binary-encoded
# 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.
string trajectory_builder_options_proto

")



(provide :cartographer_ros_msgs/TrajectoryOptions "ac72a891c02f6ddc3c0e1d956ee63a88")


