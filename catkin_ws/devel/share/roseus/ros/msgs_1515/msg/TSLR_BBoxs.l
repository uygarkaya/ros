;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::TSLR_BBoxs)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'TSLR_BBoxs (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::TSLR_BBOXS")
  (make-package "MSGS_1515::TSLR_BBOXS"))

(in-package "ROS")
;;//! \htmlinclude TSLR_BBoxs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_1515::TSLR_BBoxs
  :super ros::object
  :slots (_header _image_header _bounding_boxes _SpdLim ))

(defmethod msgs_1515::TSLR_BBoxs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_header __image_header) (instance std_msgs::Header :init))
    ((:bounding_boxes __bounding_boxes) (let (r) (dotimes (i 0) (push (instance msgs_1515::TSLR_BBox :init) r)) r))
    ((:SpdLim __SpdLim) (instance msgs_1515::TSLR_SpdLim :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_header __image_header)
   (setq _bounding_boxes __bounding_boxes)
   (setq _SpdLim __SpdLim)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_header
   (&rest __image_header)
   (if (keywordp (car __image_header))
       (send* _image_header __image_header)
     (progn
       (if __image_header (setq _image_header (car __image_header)))
       _image_header)))
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:SpdLim
   (&rest __SpdLim)
   (if (keywordp (car __SpdLim))
       (send* _SpdLim __SpdLim)
     (progn
       (if __SpdLim (setq _SpdLim (car __SpdLim)))
       _SpdLim)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Header _image_header
    (send _image_header :serialization-length)
    ;; msgs_1515/TSLR_BBox[] _bounding_boxes
    (apply #'+ (send-all _bounding_boxes :serialization-length)) 4
    ;; msgs_1515/TSLR_SpdLim _SpdLim
    (send _SpdLim :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Header _image_header
       (send _image_header :serialize s)
     ;; msgs_1515/TSLR_BBox[] _bounding_boxes
     (write-long (length _bounding_boxes) s)
     (dolist (elem _bounding_boxes)
       (send elem :serialize s)
       )
     ;; msgs_1515/TSLR_SpdLim _SpdLim
       (send _SpdLim :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Header _image_header
     (send _image_header :deserialize buf ptr-) (incf ptr- (send _image_header :serialization-length))
   ;; msgs_1515/TSLR_BBox[] _bounding_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_boxes (let (r) (dotimes (i n) (push (instance msgs_1515::TSLR_BBox :init) r)) r))
     (dolist (elem- _bounding_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; msgs_1515/TSLR_SpdLim _SpdLim
     (send _SpdLim :deserialize buf ptr-) (incf ptr- (send _SpdLim :serialization-length))
   ;;
   self)
  )

(setf (get msgs_1515::TSLR_BBoxs :md5sum-) "0dc90c36e2ae03bcd05954534edf078f")
(setf (get msgs_1515::TSLR_BBoxs :datatype-) "msgs_1515/TSLR_BBoxs")
(setf (get msgs_1515::TSLR_BBoxs :definition-)
      "# TSLR Bouinding Boxes
Header header
Header image_header
TSLR_BBox[] bounding_boxes
TSLR_SpdLim SpdLim

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
MSG: msgs_1515/TSLR_BBox
# TSLR Bouinding Boxes
int64 Class
float64 probability # between 0 and 1
# int64 xmin
# int64 ymin
# int64 xmax
# int64 ymax
# bool IsSpeedSign
int64 SpeedSignValue
float64 ETA # second

================================================================================
MSG: msgs_1515/TSLR_SpdLim
# TSLR Speed limit information. This will be used by ACC in order to limit ego vehicle's speed.
int64 speed_limit

")



(provide :msgs_1515/TSLR_BBoxs "0dc90c36e2ae03bcd05954534edf078f")


