;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::ClusterRadar)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'ClusterRadar (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::CLUSTERRADAR")
  (make-package "MSGS_1515::CLUSTERRADAR"))

(in-package "ROS")
;;//! \htmlinclude ClusterRadar.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::ClusterRadar
  :super ros::object
  :slots (_header _target_id _longitude_dist _lateral_dist _longitude_vel _lateral_vel _rcs _DynProp _std_dev_long_dist _std_dev_lat_dist _std_dev_long_vel _std_dev_lat_vel _false_alarm_prob _validty_state _doppler_state _static_check ))

(defmethod msgs_1515::ClusterRadar
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:target_id __target_id) 0)
    ((:longitude_dist __longitude_dist) 0.0)
    ((:lateral_dist __lateral_dist) 0.0)
    ((:longitude_vel __longitude_vel) 0.0)
    ((:lateral_vel __lateral_vel) 0.0)
    ((:rcs __rcs) 0.0)
    ((:DynProp __DynProp) 0.0)
    ((:std_dev_long_dist __std_dev_long_dist) 0.0)
    ((:std_dev_lat_dist __std_dev_lat_dist) 0.0)
    ((:std_dev_long_vel __std_dev_long_vel) 0.0)
    ((:std_dev_lat_vel __std_dev_lat_vel) 0.0)
    ((:false_alarm_prob __false_alarm_prob) 0.0)
    ((:validty_state __validty_state) 0.0)
    ((:doppler_state __doppler_state) 0.0)
    ((:static_check __static_check) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _target_id (round __target_id))
   (setq _longitude_dist (float __longitude_dist))
   (setq _lateral_dist (float __lateral_dist))
   (setq _longitude_vel (float __longitude_vel))
   (setq _lateral_vel (float __lateral_vel))
   (setq _rcs (float __rcs))
   (setq _DynProp (float __DynProp))
   (setq _std_dev_long_dist (float __std_dev_long_dist))
   (setq _std_dev_lat_dist (float __std_dev_lat_dist))
   (setq _std_dev_long_vel (float __std_dev_long_vel))
   (setq _std_dev_lat_vel (float __std_dev_lat_vel))
   (setq _false_alarm_prob (float __false_alarm_prob))
   (setq _validty_state (float __validty_state))
   (setq _doppler_state (float __doppler_state))
   (setq _static_check __static_check)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:target_id
   (&optional __target_id)
   (if __target_id (setq _target_id __target_id)) _target_id)
  (:longitude_dist
   (&optional __longitude_dist)
   (if __longitude_dist (setq _longitude_dist __longitude_dist)) _longitude_dist)
  (:lateral_dist
   (&optional __lateral_dist)
   (if __lateral_dist (setq _lateral_dist __lateral_dist)) _lateral_dist)
  (:longitude_vel
   (&optional __longitude_vel)
   (if __longitude_vel (setq _longitude_vel __longitude_vel)) _longitude_vel)
  (:lateral_vel
   (&optional __lateral_vel)
   (if __lateral_vel (setq _lateral_vel __lateral_vel)) _lateral_vel)
  (:rcs
   (&optional __rcs)
   (if __rcs (setq _rcs __rcs)) _rcs)
  (:DynProp
   (&optional __DynProp)
   (if __DynProp (setq _DynProp __DynProp)) _DynProp)
  (:std_dev_long_dist
   (&optional __std_dev_long_dist)
   (if __std_dev_long_dist (setq _std_dev_long_dist __std_dev_long_dist)) _std_dev_long_dist)
  (:std_dev_lat_dist
   (&optional __std_dev_lat_dist)
   (if __std_dev_lat_dist (setq _std_dev_lat_dist __std_dev_lat_dist)) _std_dev_lat_dist)
  (:std_dev_long_vel
   (&optional __std_dev_long_vel)
   (if __std_dev_long_vel (setq _std_dev_long_vel __std_dev_long_vel)) _std_dev_long_vel)
  (:std_dev_lat_vel
   (&optional __std_dev_lat_vel)
   (if __std_dev_lat_vel (setq _std_dev_lat_vel __std_dev_lat_vel)) _std_dev_lat_vel)
  (:false_alarm_prob
   (&optional __false_alarm_prob)
   (if __false_alarm_prob (setq _false_alarm_prob __false_alarm_prob)) _false_alarm_prob)
  (:validty_state
   (&optional __validty_state)
   (if __validty_state (setq _validty_state __validty_state)) _validty_state)
  (:doppler_state
   (&optional __doppler_state)
   (if __doppler_state (setq _doppler_state __doppler_state)) _doppler_state)
  (:static_check
   (&optional __static_check)
   (if __static_check (setq _static_check __static_check)) _static_check)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _target_id
    1
    ;; float32 _longitude_dist
    4
    ;; float32 _lateral_dist
    4
    ;; float32 _longitude_vel
    4
    ;; float32 _lateral_vel
    4
    ;; float32 _rcs
    4
    ;; float32 _DynProp
    4
    ;; float32 _std_dev_long_dist
    4
    ;; float32 _std_dev_lat_dist
    4
    ;; float32 _std_dev_long_vel
    4
    ;; float32 _std_dev_lat_vel
    4
    ;; float32 _false_alarm_prob
    4
    ;; float32 _validty_state
    4
    ;; float32 _doppler_state
    4
    ;; bool _static_check
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _target_id
       (write-byte _target_id s)
     ;; float32 _longitude_dist
       (sys::poke _longitude_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_dist
       (sys::poke _lateral_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude_vel
       (sys::poke _longitude_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_vel
       (sys::poke _lateral_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rcs
       (sys::poke _rcs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DynProp
       (sys::poke _DynProp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev_long_dist
       (sys::poke _std_dev_long_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev_lat_dist
       (sys::poke _std_dev_lat_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev_long_vel
       (sys::poke _std_dev_long_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev_lat_vel
       (sys::poke _std_dev_lat_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _false_alarm_prob
       (sys::poke _false_alarm_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _validty_state
       (sys::poke _validty_state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _doppler_state
       (sys::poke _doppler_state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _static_check
       (if _static_check (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _target_id
     (setq _target_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _longitude_dist
     (setq _longitude_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_dist
     (setq _lateral_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude_vel
     (setq _longitude_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_vel
     (setq _lateral_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rcs
     (setq _rcs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DynProp
     (setq _DynProp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev_long_dist
     (setq _std_dev_long_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev_lat_dist
     (setq _std_dev_lat_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev_long_vel
     (setq _std_dev_long_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev_lat_vel
     (setq _std_dev_lat_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _false_alarm_prob
     (setq _false_alarm_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _validty_state
     (setq _validty_state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _doppler_state
     (setq _doppler_state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _static_check
     (setq _static_check (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msgs_1515::ClusterRadar :md5sum-) "cb3e5405dc7c6503c3a17cff308b05b9")
(setf (get msgs_1515::ClusterRadar :datatype-) "msgs_1515/ClusterRadar")
(setf (get msgs_1515::ClusterRadar :definition-)
      "Header header
uint8 target_id
float32 longitude_dist
float32 lateral_dist
float32 longitude_vel
float32 lateral_vel
float32 rcs
float32 DynProp
float32 std_dev_long_dist
float32 std_dev_lat_dist
float32 std_dev_long_vel
float32 std_dev_lat_vel
float32 false_alarm_prob
float32 validty_state
float32 doppler_state
bool static_check
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



(provide :msgs_1515/ClusterRadar "cb3e5405dc7c6503c3a17cff308b05b9")


