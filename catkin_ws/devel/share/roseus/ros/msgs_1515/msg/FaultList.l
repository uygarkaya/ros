;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::FaultList)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'FaultList (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::FAULTLIST")
  (make-package "MSGS_1515::FAULTLIST"))

(in-package "ROS")
;;//! \htmlinclude FaultList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::FaultList
  :super ros::object
  :slots (_header _bayesian_output ))

(defmethod msgs_1515::FaultList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bayesian_output __bayesian_output) (instance msgs_1515::BayesianList :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _bayesian_output __bayesian_output)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bayesian_output
   (&rest __bayesian_output)
   (if (keywordp (car __bayesian_output))
       (send* _bayesian_output __bayesian_output)
     (progn
       (if __bayesian_output (setq _bayesian_output (car __bayesian_output)))
       _bayesian_output)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; msgs_1515/BayesianList _bayesian_output
    (send _bayesian_output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; msgs_1515/BayesianList _bayesian_output
       (send _bayesian_output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; msgs_1515/BayesianList _bayesian_output
     (send _bayesian_output :deserialize buf ptr-) (incf ptr- (send _bayesian_output :serialization-length))
   ;;
   self)
  )

(setf (get msgs_1515::FaultList :md5sum-) "59bf514a4899a92e7dbc72149c0662a2")
(setf (get msgs_1515::FaultList :datatype-) "msgs_1515/FaultList")
(setf (get msgs_1515::FaultList :definition-)
      "std_msgs/Header header
msgs_1515/BayesianList bayesian_output

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
MSG: msgs_1515/BayesianList
uint8 Q1
uint8 Q2
uint8 Q3
uint8 Q4
uint8 Q5
uint8 Q6
uint8 Q7
uint8 Q8
uint8 Q9
uint8 Q10
")



(provide :msgs_1515/FaultList "59bf514a4899a92e7dbc72149c0662a2")


