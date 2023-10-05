; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude Obstacle.msg.html

(cl:defclass <Obstacle> (roslisp-msg-protocol:ros-message)
  ((obstacle_kinematics
    :reader obstacle_kinematics
    :initarg :obstacle_kinematics
    :type msgs_1515-msg:ObstacleKinematics
    :initform (cl:make-instance 'msgs_1515-msg:ObstacleKinematics))
   (obstacle_properties
    :reader obstacle_properties
    :initarg :obstacle_properties
    :type msgs_1515-msg:ObstacleProperties
    :initform (cl:make-instance 'msgs_1515-msg:ObstacleProperties)))
)

(cl:defclass Obstacle (<Obstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Obstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Obstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<Obstacle> is deprecated: use msgs_1515-msg:Obstacle instead.")))

(cl:ensure-generic-function 'obstacle_kinematics-val :lambda-list '(m))
(cl:defmethod obstacle_kinematics-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_kinematics-val is deprecated.  Use msgs_1515-msg:obstacle_kinematics instead.")
  (obstacle_kinematics m))

(cl:ensure-generic-function 'obstacle_properties-val :lambda-list '(m))
(cl:defmethod obstacle_properties-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_properties-val is deprecated.  Use msgs_1515-msg:obstacle_properties instead.")
  (obstacle_properties m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Obstacle>) ostream)
  "Serializes a message object of type '<Obstacle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_kinematics) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_properties) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Obstacle>) istream)
  "Deserializes a message object of type '<Obstacle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_kinematics) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_properties) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Obstacle>)))
  "Returns string type for a message object of type '<Obstacle>"
  "msgs_1515/Obstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Obstacle)))
  "Returns string type for a message object of type 'Obstacle"
  "msgs_1515/Obstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Obstacle>)))
  "Returns md5sum for a message object of type '<Obstacle>"
  "3dc5d4ef897e9d201b15e7e0c351f4a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Obstacle)))
  "Returns md5sum for a message object of type 'Obstacle"
  "3dc5d4ef897e9d201b15e7e0c351f4a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Obstacle>)))
  "Returns full string definition for message of type '<Obstacle>"
  (cl:format cl:nil "msgs_1515/ObstacleKinematics obstacle_kinematics~%msgs_1515/ObstacleProperties obstacle_properties~%================================================================================~%MSG: msgs_1515/ObstacleKinematics~%std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Accel accel~%geometry_msgs/Vector3 dimensions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: msgs_1515/ObstacleProperties~%uint8 blinker_info~%uint8 cut_in_and_out~%uint8 obstacle_type~%uint8 obstacle_status~%bool obstacle_brake_lights~%uint8 obstacle_valid~%uint16 obstacle_age~%uint8 obstacle_lane~%bool cipv_flag~%float32 radar_pos_x~%float32 radar_vel_x~%uint8 radar_match_confidence~%uint16 matched_radar_id~%float64 obstacle_scale_change~%bool obstacle_replaced~%uint8 radar_obstacle_id~%uint16 me_obstacle_id~%float32 rcs~%float32 prob_exist~%string obstacle_class~%string dyn_property~%uint8 meas_state~%uint16 track_id~%uint8 track_status~%float64 prbty_exstn~%float64 prbty_prsntn~%float64 prbty_detn~%float64 prbty_clutr~%float64[] covariance~%float64[] R~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Obstacle)))
  "Returns full string definition for message of type 'Obstacle"
  (cl:format cl:nil "msgs_1515/ObstacleKinematics obstacle_kinematics~%msgs_1515/ObstacleProperties obstacle_properties~%================================================================================~%MSG: msgs_1515/ObstacleKinematics~%std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Accel accel~%geometry_msgs/Vector3 dimensions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: msgs_1515/ObstacleProperties~%uint8 blinker_info~%uint8 cut_in_and_out~%uint8 obstacle_type~%uint8 obstacle_status~%bool obstacle_brake_lights~%uint8 obstacle_valid~%uint16 obstacle_age~%uint8 obstacle_lane~%bool cipv_flag~%float32 radar_pos_x~%float32 radar_vel_x~%uint8 radar_match_confidence~%uint16 matched_radar_id~%float64 obstacle_scale_change~%bool obstacle_replaced~%uint8 radar_obstacle_id~%uint16 me_obstacle_id~%float32 rcs~%float32 prob_exist~%string obstacle_class~%string dyn_property~%uint8 meas_state~%uint16 track_id~%uint8 track_status~%float64 prbty_exstn~%float64 prbty_prsntn~%float64 prbty_detn~%float64 prbty_clutr~%float64[] covariance~%float64[] R~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Obstacle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_kinematics))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_properties))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Obstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'Obstacle
    (cl:cons ':obstacle_kinematics (obstacle_kinematics msg))
    (cl:cons ':obstacle_properties (obstacle_properties msg))
))
