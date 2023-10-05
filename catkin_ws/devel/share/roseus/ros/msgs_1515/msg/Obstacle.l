;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::Obstacle)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'Obstacle (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::OBSTACLE")
  (make-package "MSGS_1515::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html


(defclass msgs_1515::Obstacle
  :super ros::object
  :slots (_obstacle_kinematics _obstacle_properties ))

(defmethod msgs_1515::Obstacle
  (:init
   (&key
    ((:obstacle_kinematics __obstacle_kinematics) (instance msgs_1515::ObstacleKinematics :init))
    ((:obstacle_properties __obstacle_properties) (instance msgs_1515::ObstacleProperties :init))
    )
   (send-super :init)
   (setq _obstacle_kinematics __obstacle_kinematics)
   (setq _obstacle_properties __obstacle_properties)
   self)
  (:obstacle_kinematics
   (&rest __obstacle_kinematics)
   (if (keywordp (car __obstacle_kinematics))
       (send* _obstacle_kinematics __obstacle_kinematics)
     (progn
       (if __obstacle_kinematics (setq _obstacle_kinematics (car __obstacle_kinematics)))
       _obstacle_kinematics)))
  (:obstacle_properties
   (&rest __obstacle_properties)
   (if (keywordp (car __obstacle_properties))
       (send* _obstacle_properties __obstacle_properties)
     (progn
       (if __obstacle_properties (setq _obstacle_properties (car __obstacle_properties)))
       _obstacle_properties)))
  (:serialization-length
   ()
   (+
    ;; msgs_1515/ObstacleKinematics _obstacle_kinematics
    (send _obstacle_kinematics :serialization-length)
    ;; msgs_1515/ObstacleProperties _obstacle_properties
    (send _obstacle_properties :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; msgs_1515/ObstacleKinematics _obstacle_kinematics
       (send _obstacle_kinematics :serialize s)
     ;; msgs_1515/ObstacleProperties _obstacle_properties
       (send _obstacle_properties :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; msgs_1515/ObstacleKinematics _obstacle_kinematics
     (send _obstacle_kinematics :deserialize buf ptr-) (incf ptr- (send _obstacle_kinematics :serialization-length))
   ;; msgs_1515/ObstacleProperties _obstacle_properties
     (send _obstacle_properties :deserialize buf ptr-) (incf ptr- (send _obstacle_properties :serialization-length))
   ;;
   self)
  )

(setf (get msgs_1515::Obstacle :md5sum-) "3dc5d4ef897e9d201b15e7e0c351f4a7")
(setf (get msgs_1515::Obstacle :datatype-) "msgs_1515/Obstacle")
(setf (get msgs_1515::Obstacle :definition-)
      "msgs_1515/ObstacleKinematics obstacle_kinematics
msgs_1515/ObstacleProperties obstacle_properties
================================================================================
MSG: msgs_1515/ObstacleKinematics
std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
geometry_msgs/Pose pose
geometry_msgs/Twist twist
geometry_msgs/Accel accel
geometry_msgs/Vector3 dimensions

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
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: msgs_1515/ObstacleProperties
uint8 blinker_info
uint8 cut_in_and_out
uint8 obstacle_type
uint8 obstacle_status
bool obstacle_brake_lights
uint8 obstacle_valid
uint16 obstacle_age
uint8 obstacle_lane
bool cipv_flag
float32 radar_pos_x
float32 radar_vel_x
uint8 radar_match_confidence
uint16 matched_radar_id
float64 obstacle_scale_change
bool obstacle_replaced
uint8 radar_obstacle_id
uint16 me_obstacle_id
float32 rcs
float32 prob_exist
string obstacle_class
string dyn_property
uint8 meas_state
uint16 track_id
uint8 track_status
float64 prbty_exstn
float64 prbty_prsntn
float64 prbty_detn
float64 prbty_clutr
float64[] covariance
float64[] R
")



(provide :msgs_1515/Obstacle "3dc5d4ef897e9d201b15e7e0c351f4a7")


