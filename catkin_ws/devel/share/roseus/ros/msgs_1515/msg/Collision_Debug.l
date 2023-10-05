;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::Collision_Debug)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'Collision_Debug (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::COLLISION_DEBUG")
  (make-package "MSGS_1515::COLLISION_DEBUG"))

(in-package "ROS")
;;//! \htmlinclude Collision_Debug.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::Collision_Debug
  :super ros::object
  :slots (_header _seq _stamp _frame_id _LaggingObj _LeadingObj _LowerLimit _UpperLimit ))

(defmethod msgs_1515::Collision_Debug
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:LaggingObj __LaggingObj) (instance msgs_1515::Collision_Object :init))
    ((:LeadingObj __LeadingObj) (instance msgs_1515::Collision_Object :init))
    ((:LowerLimit __LowerLimit) 0.0)
    ((:UpperLimit __UpperLimit) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _LaggingObj __LaggingObj)
   (setq _LeadingObj __LeadingObj)
   (setq _LowerLimit (float __LowerLimit))
   (setq _UpperLimit (float __UpperLimit))
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
  (:LaggingObj
   (&rest __LaggingObj)
   (if (keywordp (car __LaggingObj))
       (send* _LaggingObj __LaggingObj)
     (progn
       (if __LaggingObj (setq _LaggingObj (car __LaggingObj)))
       _LaggingObj)))
  (:LeadingObj
   (&rest __LeadingObj)
   (if (keywordp (car __LeadingObj))
       (send* _LeadingObj __LeadingObj)
     (progn
       (if __LeadingObj (setq _LeadingObj (car __LeadingObj)))
       _LeadingObj)))
  (:LowerLimit
   (&optional __LowerLimit)
   (if __LowerLimit (setq _LowerLimit __LowerLimit)) _LowerLimit)
  (:UpperLimit
   (&optional __UpperLimit)
   (if __UpperLimit (setq _UpperLimit __UpperLimit)) _UpperLimit)
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
    ;; msgs_1515/Collision_Object _LaggingObj
    (send _LaggingObj :serialization-length)
    ;; msgs_1515/Collision_Object _LeadingObj
    (send _LeadingObj :serialization-length)
    ;; float32 _LowerLimit
    4
    ;; float32 _UpperLimit
    4
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
     ;; msgs_1515/Collision_Object _LaggingObj
       (send _LaggingObj :serialize s)
     ;; msgs_1515/Collision_Object _LeadingObj
       (send _LeadingObj :serialize s)
     ;; float32 _LowerLimit
       (sys::poke _LowerLimit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _UpperLimit
       (sys::poke _UpperLimit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; msgs_1515/Collision_Object _LaggingObj
     (send _LaggingObj :deserialize buf ptr-) (incf ptr- (send _LaggingObj :serialization-length))
   ;; msgs_1515/Collision_Object _LeadingObj
     (send _LeadingObj :deserialize buf ptr-) (incf ptr- (send _LeadingObj :serialization-length))
   ;; float32 _LowerLimit
     (setq _LowerLimit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _UpperLimit
     (setq _UpperLimit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgs_1515::Collision_Debug :md5sum-) "03f9ad5ff762f269d1f7b61bc1ae9977")
(setf (get msgs_1515::Collision_Debug :datatype-) "msgs_1515/Collision_Debug")
(setf (get msgs_1515::Collision_Debug :definition-)
      "std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
Collision_Object LaggingObj
Collision_Object LeadingObj
float32 LowerLimit
float32 UpperLimit


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
MSG: msgs_1515/Collision_Object
float32 xPos
float32 yPos
float32 speed
")



(provide :msgs_1515/Collision_Debug "03f9ad5ff762f269d1f7b61bc1ae9977")


