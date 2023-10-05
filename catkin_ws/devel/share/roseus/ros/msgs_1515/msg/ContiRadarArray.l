;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::ContiRadarArray)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'ContiRadarArray (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::CONTIRADARARRAY")
  (make-package "MSGS_1515::CONTIRADARARRAY"))

(in-package "ROS")
;;//! \htmlinclude ContiRadarArray.msg.html


(defclass msgs_1515::ContiRadarArray
  :super ros::object
  :slots (_radarTime _radarArray ))

(defmethod msgs_1515::ContiRadarArray
  (:init
   (&key
    ((:radarTime __radarTime) (instance ros::time :init))
    ((:radarArray __radarArray) (let (r) (dotimes (i 0) (push (instance msgs_1515::ContiRadar :init) r)) r))
    )
   (send-super :init)
   (setq _radarTime __radarTime)
   (setq _radarArray __radarArray)
   self)
  (:radarTime
   (&optional __radarTime)
   (if __radarTime (setq _radarTime __radarTime)) _radarTime)
  (:radarArray
   (&rest __radarArray)
   (if (keywordp (car __radarArray))
       (send* _radarArray __radarArray)
     (progn
       (if __radarArray (setq _radarArray (car __radarArray)))
       _radarArray)))
  (:serialization-length
   ()
   (+
    ;; time _radarTime
    8
    ;; msgs_1515/ContiRadar[] _radarArray
    (apply #'+ (send-all _radarArray :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _radarTime
       (write-long (send _radarTime :sec) s) (write-long (send _radarTime :nsec) s)
     ;; msgs_1515/ContiRadar[] _radarArray
     (write-long (length _radarArray) s)
     (dolist (elem _radarArray)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _radarTime
     (send _radarTime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _radarTime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; msgs_1515/ContiRadar[] _radarArray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _radarArray (let (r) (dotimes (i n) (push (instance msgs_1515::ContiRadar :init) r)) r))
     (dolist (elem- _radarArray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get msgs_1515::ContiRadarArray :md5sum-) "0ca4826b66e9da546402554f6773f48d")
(setf (get msgs_1515::ContiRadarArray :datatype-) "msgs_1515/ContiRadarArray")
(setf (get msgs_1515::ContiRadarArray :definition-)
      "time radarTime
ContiRadar[] radarArray

================================================================================
MSG: msgs_1515/ContiRadar
Header header
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



(provide :msgs_1515/ContiRadarArray "0ca4826b66e9da546402554f6773f48d")


