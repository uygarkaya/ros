;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::ClusterRadarArray)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'ClusterRadarArray (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::CLUSTERRADARARRAY")
  (make-package "MSGS_1515::CLUSTERRADARARRAY"))

(in-package "ROS")
;;//! \htmlinclude ClusterRadarArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::ClusterRadarArray
  :super ros::object
  :slots (_header _clusterRadarArray _nof_targetsnear _nof_targetsfar _meas_counter _interface_version ))

(defmethod msgs_1515::ClusterRadarArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:clusterRadarArray __clusterRadarArray) (let (r) (dotimes (i 0) (push (instance msgs_1515::ClusterRadar :init) r)) r))
    ((:nof_targetsnear __nof_targetsnear) 0.0)
    ((:nof_targetsfar __nof_targetsfar) 0.0)
    ((:meas_counter __meas_counter) 0.0)
    ((:interface_version __interface_version) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _clusterRadarArray __clusterRadarArray)
   (setq _nof_targetsnear (float __nof_targetsnear))
   (setq _nof_targetsfar (float __nof_targetsfar))
   (setq _meas_counter (float __meas_counter))
   (setq _interface_version (float __interface_version))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:clusterRadarArray
   (&rest __clusterRadarArray)
   (if (keywordp (car __clusterRadarArray))
       (send* _clusterRadarArray __clusterRadarArray)
     (progn
       (if __clusterRadarArray (setq _clusterRadarArray (car __clusterRadarArray)))
       _clusterRadarArray)))
  (:nof_targetsnear
   (&optional __nof_targetsnear)
   (if __nof_targetsnear (setq _nof_targetsnear __nof_targetsnear)) _nof_targetsnear)
  (:nof_targetsfar
   (&optional __nof_targetsfar)
   (if __nof_targetsfar (setq _nof_targetsfar __nof_targetsfar)) _nof_targetsfar)
  (:meas_counter
   (&optional __meas_counter)
   (if __meas_counter (setq _meas_counter __meas_counter)) _meas_counter)
  (:interface_version
   (&optional __interface_version)
   (if __interface_version (setq _interface_version __interface_version)) _interface_version)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; msgs_1515/ClusterRadar[] _clusterRadarArray
    (apply #'+ (send-all _clusterRadarArray :serialization-length)) 4
    ;; float32 _nof_targetsnear
    4
    ;; float32 _nof_targetsfar
    4
    ;; float32 _meas_counter
    4
    ;; float32 _interface_version
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; msgs_1515/ClusterRadar[] _clusterRadarArray
     (write-long (length _clusterRadarArray) s)
     (dolist (elem _clusterRadarArray)
       (send elem :serialize s)
       )
     ;; float32 _nof_targetsnear
       (sys::poke _nof_targetsnear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _nof_targetsfar
       (sys::poke _nof_targetsfar (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _meas_counter
       (sys::poke _meas_counter (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _interface_version
       (sys::poke _interface_version (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; msgs_1515/ClusterRadar[] _clusterRadarArray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clusterRadarArray (let (r) (dotimes (i n) (push (instance msgs_1515::ClusterRadar :init) r)) r))
     (dolist (elem- _clusterRadarArray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _nof_targetsnear
     (setq _nof_targetsnear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _nof_targetsfar
     (setq _nof_targetsfar (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _meas_counter
     (setq _meas_counter (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _interface_version
     (setq _interface_version (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgs_1515::ClusterRadarArray :md5sum-) "3788d9ac9895b49d2a932679c4bf0315")
(setf (get msgs_1515::ClusterRadarArray :datatype-) "msgs_1515/ClusterRadarArray")
(setf (get msgs_1515::ClusterRadarArray :definition-)
      "Header header
ClusterRadar[] clusterRadarArray
float32 nof_targetsnear
float32 nof_targetsfar
float32 meas_counter
float32 interface_version
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
MSG: msgs_1515/ClusterRadar
Header header
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
")



(provide :msgs_1515/ClusterRadarArray "3788d9ac9895b49d2a932679c4bf0315")


