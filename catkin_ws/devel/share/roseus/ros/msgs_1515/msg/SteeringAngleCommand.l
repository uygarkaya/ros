;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::SteeringAngleCommand)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'SteeringAngleCommand (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::STEERINGANGLECOMMAND")
  (make-package "MSGS_1515::STEERINGANGLECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SteeringAngleCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::SteeringAngleCommand
  :super ros::object
  :slots (_header _flag _steering_angle _max_velocity ))

(defmethod msgs_1515::SteeringAngleCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:flag __flag) 0)
    ((:steering_angle __steering_angle) 0)
    ((:max_velocity __max_velocity) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _flag (round __flag))
   (setq _steering_angle (round __steering_angle))
   (setq _max_velocity (round __max_velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:max_velocity
   (&optional __max_velocity)
   (if __max_velocity (setq _max_velocity __max_velocity)) _max_velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _flag
    1
    ;; int16 _steering_angle
    2
    ;; int16 _max_velocity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _flag
       (write-byte _flag s)
     ;; int16 _steering_angle
       (write-word _steering_angle s)
     ;; int16 _max_velocity
       (write-word _max_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _max_velocity
     (setq _max_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get msgs_1515::SteeringAngleCommand :md5sum-) "61975182c288d6efa2e8fdf65060714d")
(setf (get msgs_1515::SteeringAngleCommand :datatype-) "msgs_1515/SteeringAngleCommand")
(setf (get msgs_1515::SteeringAngleCommand :definition-)
      "Header header
uint8 flag
int16 steering_angle
int16 max_velocity

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

")



(provide :msgs_1515/SteeringAngleCommand "61975182c288d6efa2e8fdf65060714d")


