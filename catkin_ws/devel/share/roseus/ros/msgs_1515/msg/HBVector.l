;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::HBVector)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'HBVector (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::HBVECTOR")
  (make-package "MSGS_1515::HBVECTOR"))

(in-package "ROS")
;;//! \htmlinclude HBVector.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::HBVector
  :super ros::object
  :slots (_header _HBVectorSubscribedTopicNames _HBVectorSubscribedTopicFrequencyCheck _HBVectorPublishedTopicNames _HBVectorPublishedTopicOutputBoundaryCheck ))

(defmethod msgs_1515::HBVector
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:HBVectorSubscribedTopicNames __HBVectorSubscribedTopicNames) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:HBVectorSubscribedTopicFrequencyCheck __HBVectorSubscribedTopicFrequencyCheck) (let (r) (dotimes (i 0) (push (instance std_msgs::Bool :init) r)) r))
    ((:HBVectorPublishedTopicNames __HBVectorPublishedTopicNames) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:HBVectorPublishedTopicOutputBoundaryCheck __HBVectorPublishedTopicOutputBoundaryCheck) (let (r) (dotimes (i 0) (push (instance std_msgs::Bool :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _HBVectorSubscribedTopicNames __HBVectorSubscribedTopicNames)
   (setq _HBVectorSubscribedTopicFrequencyCheck __HBVectorSubscribedTopicFrequencyCheck)
   (setq _HBVectorPublishedTopicNames __HBVectorPublishedTopicNames)
   (setq _HBVectorPublishedTopicOutputBoundaryCheck __HBVectorPublishedTopicOutputBoundaryCheck)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:HBVectorSubscribedTopicNames
   (&rest __HBVectorSubscribedTopicNames)
   (if (keywordp (car __HBVectorSubscribedTopicNames))
       (send* _HBVectorSubscribedTopicNames __HBVectorSubscribedTopicNames)
     (progn
       (if __HBVectorSubscribedTopicNames (setq _HBVectorSubscribedTopicNames (car __HBVectorSubscribedTopicNames)))
       _HBVectorSubscribedTopicNames)))
  (:HBVectorSubscribedTopicFrequencyCheck
   (&rest __HBVectorSubscribedTopicFrequencyCheck)
   (if (keywordp (car __HBVectorSubscribedTopicFrequencyCheck))
       (send* _HBVectorSubscribedTopicFrequencyCheck __HBVectorSubscribedTopicFrequencyCheck)
     (progn
       (if __HBVectorSubscribedTopicFrequencyCheck (setq _HBVectorSubscribedTopicFrequencyCheck (car __HBVectorSubscribedTopicFrequencyCheck)))
       _HBVectorSubscribedTopicFrequencyCheck)))
  (:HBVectorPublishedTopicNames
   (&rest __HBVectorPublishedTopicNames)
   (if (keywordp (car __HBVectorPublishedTopicNames))
       (send* _HBVectorPublishedTopicNames __HBVectorPublishedTopicNames)
     (progn
       (if __HBVectorPublishedTopicNames (setq _HBVectorPublishedTopicNames (car __HBVectorPublishedTopicNames)))
       _HBVectorPublishedTopicNames)))
  (:HBVectorPublishedTopicOutputBoundaryCheck
   (&rest __HBVectorPublishedTopicOutputBoundaryCheck)
   (if (keywordp (car __HBVectorPublishedTopicOutputBoundaryCheck))
       (send* _HBVectorPublishedTopicOutputBoundaryCheck __HBVectorPublishedTopicOutputBoundaryCheck)
     (progn
       (if __HBVectorPublishedTopicOutputBoundaryCheck (setq _HBVectorPublishedTopicOutputBoundaryCheck (car __HBVectorPublishedTopicOutputBoundaryCheck)))
       _HBVectorPublishedTopicOutputBoundaryCheck)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String[] _HBVectorSubscribedTopicNames
    (apply #'+ (send-all _HBVectorSubscribedTopicNames :serialization-length)) 4
    ;; std_msgs/Bool[] _HBVectorSubscribedTopicFrequencyCheck
    (apply #'+ (send-all _HBVectorSubscribedTopicFrequencyCheck :serialization-length)) 4
    ;; std_msgs/String[] _HBVectorPublishedTopicNames
    (apply #'+ (send-all _HBVectorPublishedTopicNames :serialization-length)) 4
    ;; std_msgs/Bool[] _HBVectorPublishedTopicOutputBoundaryCheck
    (apply #'+ (send-all _HBVectorPublishedTopicOutputBoundaryCheck :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String[] _HBVectorSubscribedTopicNames
     (write-long (length _HBVectorSubscribedTopicNames) s)
     (dolist (elem _HBVectorSubscribedTopicNames)
       (send elem :serialize s)
       )
     ;; std_msgs/Bool[] _HBVectorSubscribedTopicFrequencyCheck
     (write-long (length _HBVectorSubscribedTopicFrequencyCheck) s)
     (dolist (elem _HBVectorSubscribedTopicFrequencyCheck)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _HBVectorPublishedTopicNames
     (write-long (length _HBVectorPublishedTopicNames) s)
     (dolist (elem _HBVectorPublishedTopicNames)
       (send elem :serialize s)
       )
     ;; std_msgs/Bool[] _HBVectorPublishedTopicOutputBoundaryCheck
     (write-long (length _HBVectorPublishedTopicOutputBoundaryCheck) s)
     (dolist (elem _HBVectorPublishedTopicOutputBoundaryCheck)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String[] _HBVectorSubscribedTopicNames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HBVectorSubscribedTopicNames (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _HBVectorSubscribedTopicNames)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Bool[] _HBVectorSubscribedTopicFrequencyCheck
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HBVectorSubscribedTopicFrequencyCheck (let (r) (dotimes (i n) (push (instance std_msgs::Bool :init) r)) r))
     (dolist (elem- _HBVectorSubscribedTopicFrequencyCheck)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String[] _HBVectorPublishedTopicNames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HBVectorPublishedTopicNames (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _HBVectorPublishedTopicNames)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Bool[] _HBVectorPublishedTopicOutputBoundaryCheck
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HBVectorPublishedTopicOutputBoundaryCheck (let (r) (dotimes (i n) (push (instance std_msgs::Bool :init) r)) r))
     (dolist (elem- _HBVectorPublishedTopicOutputBoundaryCheck)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get msgs_1515::HBVector :md5sum-) "090614f5d21826ff335eda6bf5c4b40f")
(setf (get msgs_1515::HBVector :datatype-) "msgs_1515/HBVector")
(setf (get msgs_1515::HBVector :definition-)
      "std_msgs/Header header
std_msgs/String[] HBVectorSubscribedTopicNames
std_msgs/Bool[] HBVectorSubscribedTopicFrequencyCheck
std_msgs/String[] HBVectorPublishedTopicNames
std_msgs/Bool[] HBVectorPublishedTopicOutputBoundaryCheck

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
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :msgs_1515/HBVector "090614f5d21826ff335eda6bf5c4b40f")


