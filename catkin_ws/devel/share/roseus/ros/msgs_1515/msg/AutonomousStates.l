;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::AutonomousStates)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'AutonomousStates (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::AUTONOMOUSSTATES")
  (make-package "MSGS_1515::AUTONOMOUSSTATES"))

(in-package "ROS")
;;//! \htmlinclude AutonomousStates.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::AutonomousStates
  :super ros::object
  :slots (_header _seq _stamp _frame_id _lka_status _acc_status _acc_mode _set_speed _dm_mode ))

(defmethod msgs_1515::AutonomousStates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:lka_status __lka_status) (instance std_msgs::Bool :init))
    ((:acc_status __acc_status) (instance std_msgs::Int8 :init))
    ((:acc_mode __acc_mode) (instance std_msgs::Int8 :init))
    ((:set_speed __set_speed) (instance std_msgs::Int8 :init))
    ((:dm_mode __dm_mode) (instance std_msgs::Int8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _lka_status __lka_status)
   (setq _acc_status __acc_status)
   (setq _acc_mode __acc_mode)
   (setq _set_speed __set_speed)
   (setq _dm_mode __dm_mode)
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
  (:lka_status
   (&rest __lka_status)
   (if (keywordp (car __lka_status))
       (send* _lka_status __lka_status)
     (progn
       (if __lka_status (setq _lka_status (car __lka_status)))
       _lka_status)))
  (:acc_status
   (&rest __acc_status)
   (if (keywordp (car __acc_status))
       (send* _acc_status __acc_status)
     (progn
       (if __acc_status (setq _acc_status (car __acc_status)))
       _acc_status)))
  (:acc_mode
   (&rest __acc_mode)
   (if (keywordp (car __acc_mode))
       (send* _acc_mode __acc_mode)
     (progn
       (if __acc_mode (setq _acc_mode (car __acc_mode)))
       _acc_mode)))
  (:set_speed
   (&rest __set_speed)
   (if (keywordp (car __set_speed))
       (send* _set_speed __set_speed)
     (progn
       (if __set_speed (setq _set_speed (car __set_speed)))
       _set_speed)))
  (:dm_mode
   (&rest __dm_mode)
   (if (keywordp (car __dm_mode))
       (send* _dm_mode __dm_mode)
     (progn
       (if __dm_mode (setq _dm_mode (car __dm_mode)))
       _dm_mode)))
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
    ;; std_msgs/Bool _lka_status
    (send _lka_status :serialization-length)
    ;; std_msgs/Int8 _acc_status
    (send _acc_status :serialization-length)
    ;; std_msgs/Int8 _acc_mode
    (send _acc_mode :serialization-length)
    ;; std_msgs/Int8 _set_speed
    (send _set_speed :serialization-length)
    ;; std_msgs/Int8 _dm_mode
    (send _dm_mode :serialization-length)
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
     ;; std_msgs/Bool _lka_status
       (send _lka_status :serialize s)
     ;; std_msgs/Int8 _acc_status
       (send _acc_status :serialize s)
     ;; std_msgs/Int8 _acc_mode
       (send _acc_mode :serialize s)
     ;; std_msgs/Int8 _set_speed
       (send _set_speed :serialize s)
     ;; std_msgs/Int8 _dm_mode
       (send _dm_mode :serialize s)
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
   ;; std_msgs/Bool _lka_status
     (send _lka_status :deserialize buf ptr-) (incf ptr- (send _lka_status :serialization-length))
   ;; std_msgs/Int8 _acc_status
     (send _acc_status :deserialize buf ptr-) (incf ptr- (send _acc_status :serialization-length))
   ;; std_msgs/Int8 _acc_mode
     (send _acc_mode :deserialize buf ptr-) (incf ptr- (send _acc_mode :serialization-length))
   ;; std_msgs/Int8 _set_speed
     (send _set_speed :deserialize buf ptr-) (incf ptr- (send _set_speed :serialization-length))
   ;; std_msgs/Int8 _dm_mode
     (send _dm_mode :deserialize buf ptr-) (incf ptr- (send _dm_mode :serialization-length))
   ;;
   self)
  )

(setf (get msgs_1515::AutonomousStates :md5sum-) "c16518f721ec6e01d4ec26824c39854c")
(setf (get msgs_1515::AutonomousStates :datatype-) "msgs_1515/AutonomousStates")
(setf (get msgs_1515::AutonomousStates :definition-)
      "std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
std_msgs/Bool lka_status
std_msgs/Int8 acc_status
std_msgs/Int8 acc_mode
std_msgs/Int8 set_speed
std_msgs/Int8 dm_mode
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
MSG: std_msgs/Bool
bool data
================================================================================
MSG: std_msgs/Int8
int8 data

")



(provide :msgs_1515/AutonomousStates "c16518f721ec6e01d4ec26824c39854c")


