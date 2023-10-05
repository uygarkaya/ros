;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::ObstacleList)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'ObstacleList (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::OBSTACLELIST")
  (make-package "MSGS_1515::OBSTACLELIST"))

(in-package "ROS")
;;//! \htmlinclude ObstacleList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::ObstacleList
  :super ros::object
  :slots (_header _seq _stamp _frame_id _measurement_time _number_of_obstacles _obstacles ))

(defmethod msgs_1515::ObstacleList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:measurement_time __measurement_time) 0.0)
    ((:number_of_obstacles __number_of_obstacles) 0)
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance msgs_1515::Obstacle :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _measurement_time (float __measurement_time))
   (setq _number_of_obstacles (round __number_of_obstacles))
   (setq _obstacles __obstacles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:measurement_time
   (&optional __measurement_time)
   (if __measurement_time (setq _measurement_time __measurement_time)) _measurement_time)
  (:number_of_obstacles
   (&optional __number_of_obstacles)
   (if __number_of_obstacles (setq _number_of_obstacles __number_of_obstacles)) _number_of_obstacles)
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; string _frame_id
    4 (length _frame_id)
    ;; float64 _measurement_time
    8
    ;; uint32 _number_of_obstacles
    4
    ;; msgs_1515/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _seq
       (write-long _seq s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; float64 _measurement_time
       (sys::poke _measurement_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _number_of_obstacles
       (write-long _number_of_obstacles s)
     ;; msgs_1515/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _measurement_time
     (setq _measurement_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _number_of_obstacles
     (setq _number_of_obstacles (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; msgs_1515/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance msgs_1515::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get msgs_1515::ObstacleList :md5sum-) "d166be37a54d9b661f457c17d42d190a")
(setf (get msgs_1515::ObstacleList :datatype-) "msgs_1515/ObstacleList")
(setf (get msgs_1515::ObstacleList :definition-)
      "std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
float64 measurement_time
uint32 number_of_obstacles
msgs_1515/Obstacle[] obstacles



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
MSG: msgs_1515/Obstacle
msgs_1515/ObstacleKinematics obstacle_kinematics
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



(provide :msgs_1515/ObstacleList "d166be37a54d9b661f457c17d42d190a")


