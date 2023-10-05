; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude TSLR_BBoxs.msg.html

(cl:defclass <TSLR_BBoxs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_header
    :reader image_header
    :initarg :image_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bounding_boxes
    :reader bounding_boxes
    :initarg :bounding_boxes
    :type (cl:vector msgs_1515-msg:TSLR_BBox)
   :initform (cl:make-array 0 :element-type 'msgs_1515-msg:TSLR_BBox :initial-element (cl:make-instance 'msgs_1515-msg:TSLR_BBox)))
   (SpdLim
    :reader SpdLim
    :initarg :SpdLim
    :type msgs_1515-msg:TSLR_SpdLim
    :initform (cl:make-instance 'msgs_1515-msg:TSLR_SpdLim)))
)

(cl:defclass TSLR_BBoxs (<TSLR_BBoxs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TSLR_BBoxs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TSLR_BBoxs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<TSLR_BBoxs> is deprecated: use msgs_1515-msg:TSLR_BBoxs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TSLR_BBoxs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_header-val :lambda-list '(m))
(cl:defmethod image_header-val ((m <TSLR_BBoxs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:image_header-val is deprecated.  Use msgs_1515-msg:image_header instead.")
  (image_header m))

(cl:ensure-generic-function 'bounding_boxes-val :lambda-list '(m))
(cl:defmethod bounding_boxes-val ((m <TSLR_BBoxs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:bounding_boxes-val is deprecated.  Use msgs_1515-msg:bounding_boxes instead.")
  (bounding_boxes m))

(cl:ensure-generic-function 'SpdLim-val :lambda-list '(m))
(cl:defmethod SpdLim-val ((m <TSLR_BBoxs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:SpdLim-val is deprecated.  Use msgs_1515-msg:SpdLim instead.")
  (SpdLim m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TSLR_BBoxs>) ostream)
  "Serializes a message object of type '<TSLR_BBoxs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bounding_boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bounding_boxes))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'SpdLim) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TSLR_BBoxs>) istream)
  "Deserializes a message object of type '<TSLR_BBoxs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bounding_boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bounding_boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'msgs_1515-msg:TSLR_BBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'SpdLim) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TSLR_BBoxs>)))
  "Returns string type for a message object of type '<TSLR_BBoxs>"
  "msgs_1515/TSLR_BBoxs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TSLR_BBoxs)))
  "Returns string type for a message object of type 'TSLR_BBoxs"
  "msgs_1515/TSLR_BBoxs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TSLR_BBoxs>)))
  "Returns md5sum for a message object of type '<TSLR_BBoxs>"
  "0dc90c36e2ae03bcd05954534edf078f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TSLR_BBoxs)))
  "Returns md5sum for a message object of type 'TSLR_BBoxs"
  "0dc90c36e2ae03bcd05954534edf078f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TSLR_BBoxs>)))
  "Returns full string definition for message of type '<TSLR_BBoxs>"
  (cl:format cl:nil "# TSLR Bouinding Boxes~%Header header~%Header image_header~%TSLR_BBox[] bounding_boxes~%TSLR_SpdLim SpdLim~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: msgs_1515/TSLR_BBox~%# TSLR Bouinding Boxes~%int64 Class~%float64 probability # between 0 and 1~%# int64 xmin~%# int64 ymin~%# int64 xmax~%# int64 ymax~%# bool IsSpeedSign~%int64 SpeedSignValue~%float64 ETA # second~%~%================================================================================~%MSG: msgs_1515/TSLR_SpdLim~%# TSLR Speed limit information. This will be used by ACC in order to limit ego vehicle's speed.~%int64 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TSLR_BBoxs)))
  "Returns full string definition for message of type 'TSLR_BBoxs"
  (cl:format cl:nil "# TSLR Bouinding Boxes~%Header header~%Header image_header~%TSLR_BBox[] bounding_boxes~%TSLR_SpdLim SpdLim~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: msgs_1515/TSLR_BBox~%# TSLR Bouinding Boxes~%int64 Class~%float64 probability # between 0 and 1~%# int64 xmin~%# int64 ymin~%# int64 xmax~%# int64 ymax~%# bool IsSpeedSign~%int64 SpeedSignValue~%float64 ETA # second~%~%================================================================================~%MSG: msgs_1515/TSLR_SpdLim~%# TSLR Speed limit information. This will be used by ACC in order to limit ego vehicle's speed.~%int64 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TSLR_BBoxs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bounding_boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'SpdLim))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TSLR_BBoxs>))
  "Converts a ROS message object to a list"
  (cl:list 'TSLR_BBoxs
    (cl:cons ':header (header msg))
    (cl:cons ':image_header (image_header msg))
    (cl:cons ':bounding_boxes (bounding_boxes msg))
    (cl:cons ':SpdLim (SpdLim msg))
))
