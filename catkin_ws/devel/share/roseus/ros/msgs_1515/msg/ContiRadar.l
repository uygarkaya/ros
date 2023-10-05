;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::ContiRadar)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'ContiRadar (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::CONTIRADAR")
  (make-package "MSGS_1515::CONTIRADAR"))

(in-package "ROS")
;;//! \htmlinclude ContiRadar.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::ContiRadar
  :super ros::object
  :slots (_header _obstacle_id _longitude_dist _lateral_dist _longitude_vel _lateral_vel _rcs _orientation_angle _length _width _prob_exist _obstacle_class _dyn_property _meas_state ))

(defmethod msgs_1515::ContiRadar
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacle_id __obstacle_id) 0)
    ((:longitude_dist __longitude_dist) 0.0)
    ((:lateral_dist __lateral_dist) 0.0)
    ((:longitude_vel __longitude_vel) 0.0)
    ((:lateral_vel __lateral_vel) 0.0)
    ((:rcs __rcs) 0.0)
    ((:orientation_angle __orientation_angle) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:prob_exist __prob_exist) 0.0)
    ((:obstacle_class __obstacle_class) "")
    ((:dyn_property __dyn_property) "")
    ((:meas_state __meas_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacle_id (round __obstacle_id))
   (setq _longitude_dist (float __longitude_dist))
   (setq _lateral_dist (float __lateral_dist))
   (setq _longitude_vel (float __longitude_vel))
   (setq _lateral_vel (float __lateral_vel))
   (setq _rcs (float __rcs))
   (setq _orientation_angle (float __orientation_angle))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _prob_exist (float __prob_exist))
   (setq _obstacle_class (string __obstacle_class))
   (setq _dyn_property (string __dyn_property))
   (setq _meas_state (round __meas_state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacle_id
   (&optional __obstacle_id)
   (if __obstacle_id (setq _obstacle_id __obstacle_id)) _obstacle_id)
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
  (:orientation_angle
   (&optional __orientation_angle)
   (if __orientation_angle (setq _orientation_angle __orientation_angle)) _orientation_angle)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:prob_exist
   (&optional __prob_exist)
   (if __prob_exist (setq _prob_exist __prob_exist)) _prob_exist)
  (:obstacle_class
   (&optional __obstacle_class)
   (if __obstacle_class (setq _obstacle_class __obstacle_class)) _obstacle_class)
  (:dyn_property
   (&optional __dyn_property)
   (if __dyn_property (setq _dyn_property __dyn_property)) _dyn_property)
  (:meas_state
   (&optional __meas_state)
   (if __meas_state (setq _meas_state __meas_state)) _meas_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _obstacle_id
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
    ;; float32 _orientation_angle
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _prob_exist
    4
    ;; string _obstacle_class
    4 (length _obstacle_class)
    ;; string _dyn_property
    4 (length _dyn_property)
    ;; uint8 _meas_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _obstacle_id
       (write-byte _obstacle_id s)
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
     ;; float32 _orientation_angle
       (sys::poke _orientation_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prob_exist
       (sys::poke _prob_exist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _obstacle_class
       (write-long (length _obstacle_class) s) (princ _obstacle_class s)
     ;; string _dyn_property
       (write-long (length _dyn_property) s) (princ _dyn_property s)
     ;; uint8 _meas_state
       (write-byte _meas_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _obstacle_id
     (setq _obstacle_id (sys::peek buf ptr- :char)) (incf ptr- 1)
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
   ;; float32 _orientation_angle
     (setq _orientation_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prob_exist
     (setq _prob_exist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _obstacle_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obstacle_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dyn_property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dyn_property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _meas_state
     (setq _meas_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msgs_1515::ContiRadar :md5sum-) "54fd2f5dc0ec9b28d9901950018b93fb")
(setf (get msgs_1515::ContiRadar :datatype-) "msgs_1515/ContiRadar")
(setf (get msgs_1515::ContiRadar :definition-)
      "Header header
uint8 obstacle_id
float32 longitude_dist
float32 lateral_dist
float32 longitude_vel
float32 lateral_vel
float32 rcs
float32 orientation_angle
float32 length
float32 width
float32 prob_exist
string obstacle_class
string dyn_property
uint8 meas_state


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



(provide :msgs_1515/ContiRadar "54fd2f5dc0ec9b28d9901950018b93fb")


