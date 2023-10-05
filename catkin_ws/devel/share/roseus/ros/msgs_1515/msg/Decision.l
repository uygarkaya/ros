;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::Decision)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'Decision (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::DECISION")
  (make-package "MSGS_1515::DECISION"))

(in-package "ROS")
;;//! \htmlinclude Decision.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ACTION_LEFT_LANE_CHANGE*" (find-package "MSGS_1515::DECISION"))
(shadow '*ACTION_LEFT_LANE_CHANGE* (find-package "MSGS_1515::DECISION"))
(defconstant msgs_1515::Decision::*ACTION_LEFT_LANE_CHANGE* 0)
(intern "*ACTION_LANE_KEEP*" (find-package "MSGS_1515::DECISION"))
(shadow '*ACTION_LANE_KEEP* (find-package "MSGS_1515::DECISION"))
(defconstant msgs_1515::Decision::*ACTION_LANE_KEEP* 1)
(intern "*ACTION_RIGHT_LANE_CHANGE*" (find-package "MSGS_1515::DECISION"))
(shadow '*ACTION_RIGHT_LANE_CHANGE* (find-package "MSGS_1515::DECISION"))
(defconstant msgs_1515::Decision::*ACTION_RIGHT_LANE_CHANGE* 2)
(defclass msgs_1515::Decision
  :super ros::object
  :slots (_header _seq _stamp _frame_id _action _lane_values ))

(defmethod msgs_1515::Decision
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:action __action) 0)
    ((:lane_values __lane_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _action (round __action))
   (setq _lane_values __lane_values)
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
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:lane_values
   (&optional __lane_values)
   (if __lane_values (setq _lane_values __lane_values)) _lane_values)
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
    ;; uint8 _action
    1
    ;; float32[] _lane_values
    (* 4    (length _lane_values)) 4
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
     ;; uint8 _action
       (write-byte _action s)
     ;; float32[] _lane_values
     (write-long (length _lane_values) s)
     (dotimes (i (length _lane_values))
       (sys::poke (elt _lane_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _lane_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lane_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get msgs_1515::Decision :md5sum-) "769e9c4a24bdd40723b6cd29194c3ea5")
(setf (get msgs_1515::Decision :datatype-) "msgs_1515/Decision")
(setf (get msgs_1515::Decision :definition-)
      "std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
uint8 action
uint8 ACTION_LEFT_LANE_CHANGE=0
uint8 ACTION_LANE_KEEP=1
uint8 ACTION_RIGHT_LANE_CHANGE=2
float32[] lane_values

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



(provide :msgs_1515/Decision "769e9c4a24bdd40723b6cd29194c3ea5")


