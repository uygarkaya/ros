;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::kia_vehicle_states)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'kia_vehicle_states (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::KIA_VEHICLE_STATES")
  (make-package "MSGS_1515::KIA_VEHICLE_STATES"))

(in-package "ROS")
;;//! \htmlinclude kia_vehicle_states.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::kia_vehicle_states
  :super ros::object
  :slots (_header _brakePressure _steeringAngle _wheelSpeed ))

(defmethod msgs_1515::kia_vehicle_states
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:brakePressure __brakePressure) (instance std_msgs::Float64 :init))
    ((:steeringAngle __steeringAngle) (instance std_msgs::Float64 :init))
    ((:wheelSpeed __wheelSpeed) (let (r) (dotimes (i 4) (push (instance std_msgs::Float64 :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _brakePressure __brakePressure)
   (setq _steeringAngle __steeringAngle)
   (setq _wheelSpeed __wheelSpeed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:brakePressure
   (&rest __brakePressure)
   (if (keywordp (car __brakePressure))
       (send* _brakePressure __brakePressure)
     (progn
       (if __brakePressure (setq _brakePressure (car __brakePressure)))
       _brakePressure)))
  (:steeringAngle
   (&rest __steeringAngle)
   (if (keywordp (car __steeringAngle))
       (send* _steeringAngle __steeringAngle)
     (progn
       (if __steeringAngle (setq _steeringAngle (car __steeringAngle)))
       _steeringAngle)))
  (:wheelSpeed
   (&rest __wheelSpeed)
   (if (keywordp (car __wheelSpeed))
       (send* _wheelSpeed __wheelSpeed)
     (progn
       (if __wheelSpeed (setq _wheelSpeed (car __wheelSpeed)))
       _wheelSpeed)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64 _brakePressure
    (send _brakePressure :serialization-length)
    ;; std_msgs/Float64 _steeringAngle
    (send _steeringAngle :serialization-length)
    ;; std_msgs/Float64[4] _wheelSpeed
    (apply #'+ (send-all _wheelSpeed :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64 _brakePressure
       (send _brakePressure :serialize s)
     ;; std_msgs/Float64 _steeringAngle
       (send _steeringAngle :serialize s)
     ;; std_msgs/Float64[4] _wheelSpeed
     (dolist (elem _wheelSpeed)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64 _brakePressure
     (send _brakePressure :deserialize buf ptr-) (incf ptr- (send _brakePressure :serialization-length))
   ;; std_msgs/Float64 _steeringAngle
     (send _steeringAngle :deserialize buf ptr-) (incf ptr- (send _steeringAngle :serialization-length))
   ;; std_msgs/Float64[4] _wheelSpeed
   (dotimes (i 4)
     (send (elt _wheelSpeed i) :deserialize buf ptr-) (incf ptr- (send (elt _wheelSpeed i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get msgs_1515::kia_vehicle_states :md5sum-) "46eaabf74bdd814e01cd08effd3efb51")
(setf (get msgs_1515::kia_vehicle_states :datatype-) "msgs_1515/kia_vehicle_states")
(setf (get msgs_1515::kia_vehicle_states :definition-)
      "std_msgs/Header header
std_msgs/Float64 brakePressure
std_msgs/Float64 steeringAngle
std_msgs/Float64[4] wheelSpeed

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
MSG: std_msgs/Float64
float64 data
")



(provide :msgs_1515/kia_vehicle_states "46eaabf74bdd814e01cd08effd3efb51")


