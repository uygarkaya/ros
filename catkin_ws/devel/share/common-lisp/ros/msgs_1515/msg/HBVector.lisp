; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude HBVector.msg.html

(cl:defclass <HBVector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (HBVectorSubscribedTopicNames
    :reader HBVectorSubscribedTopicNames
    :initarg :HBVectorSubscribedTopicNames
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (HBVectorSubscribedTopicFrequencyCheck
    :reader HBVectorSubscribedTopicFrequencyCheck
    :initarg :HBVectorSubscribedTopicFrequencyCheck
    :type (cl:vector std_msgs-msg:Bool)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Bool :initial-element (cl:make-instance 'std_msgs-msg:Bool)))
   (HBVectorPublishedTopicNames
    :reader HBVectorPublishedTopicNames
    :initarg :HBVectorPublishedTopicNames
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (HBVectorPublishedTopicOutputBoundaryCheck
    :reader HBVectorPublishedTopicOutputBoundaryCheck
    :initarg :HBVectorPublishedTopicOutputBoundaryCheck
    :type (cl:vector std_msgs-msg:Bool)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Bool :initial-element (cl:make-instance 'std_msgs-msg:Bool))))
)

(cl:defclass HBVector (<HBVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HBVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HBVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<HBVector> is deprecated: use msgs_1515-msg:HBVector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HBVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'HBVectorSubscribedTopicNames-val :lambda-list '(m))
(cl:defmethod HBVectorSubscribedTopicNames-val ((m <HBVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:HBVectorSubscribedTopicNames-val is deprecated.  Use msgs_1515-msg:HBVectorSubscribedTopicNames instead.")
  (HBVectorSubscribedTopicNames m))

(cl:ensure-generic-function 'HBVectorSubscribedTopicFrequencyCheck-val :lambda-list '(m))
(cl:defmethod HBVectorSubscribedTopicFrequencyCheck-val ((m <HBVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:HBVectorSubscribedTopicFrequencyCheck-val is deprecated.  Use msgs_1515-msg:HBVectorSubscribedTopicFrequencyCheck instead.")
  (HBVectorSubscribedTopicFrequencyCheck m))

(cl:ensure-generic-function 'HBVectorPublishedTopicNames-val :lambda-list '(m))
(cl:defmethod HBVectorPublishedTopicNames-val ((m <HBVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:HBVectorPublishedTopicNames-val is deprecated.  Use msgs_1515-msg:HBVectorPublishedTopicNames instead.")
  (HBVectorPublishedTopicNames m))

(cl:ensure-generic-function 'HBVectorPublishedTopicOutputBoundaryCheck-val :lambda-list '(m))
(cl:defmethod HBVectorPublishedTopicOutputBoundaryCheck-val ((m <HBVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:HBVectorPublishedTopicOutputBoundaryCheck-val is deprecated.  Use msgs_1515-msg:HBVectorPublishedTopicOutputBoundaryCheck instead.")
  (HBVectorPublishedTopicOutputBoundaryCheck m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HBVector>) ostream)
  "Serializes a message object of type '<HBVector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'HBVectorSubscribedTopicNames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'HBVectorSubscribedTopicNames))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'HBVectorSubscribedTopicFrequencyCheck))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'HBVectorSubscribedTopicFrequencyCheck))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'HBVectorPublishedTopicNames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'HBVectorPublishedTopicNames))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'HBVectorPublishedTopicOutputBoundaryCheck))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'HBVectorPublishedTopicOutputBoundaryCheck))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HBVector>) istream)
  "Deserializes a message object of type '<HBVector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'HBVectorSubscribedTopicNames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'HBVectorSubscribedTopicNames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'HBVectorSubscribedTopicFrequencyCheck) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'HBVectorSubscribedTopicFrequencyCheck)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Bool))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'HBVectorPublishedTopicNames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'HBVectorPublishedTopicNames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'HBVectorPublishedTopicOutputBoundaryCheck) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'HBVectorPublishedTopicOutputBoundaryCheck)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Bool))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HBVector>)))
  "Returns string type for a message object of type '<HBVector>"
  "msgs_1515/HBVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HBVector)))
  "Returns string type for a message object of type 'HBVector"
  "msgs_1515/HBVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HBVector>)))
  "Returns md5sum for a message object of type '<HBVector>"
  "090614f5d21826ff335eda6bf5c4b40f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HBVector)))
  "Returns md5sum for a message object of type 'HBVector"
  "090614f5d21826ff335eda6bf5c4b40f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HBVector>)))
  "Returns full string definition for message of type '<HBVector>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/String[] HBVectorSubscribedTopicNames~%std_msgs/Bool[] HBVectorSubscribedTopicFrequencyCheck~%std_msgs/String[] HBVectorPublishedTopicNames~%std_msgs/Bool[] HBVectorPublishedTopicOutputBoundaryCheck~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HBVector)))
  "Returns full string definition for message of type 'HBVector"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/String[] HBVectorSubscribedTopicNames~%std_msgs/Bool[] HBVectorSubscribedTopicFrequencyCheck~%std_msgs/String[] HBVectorPublishedTopicNames~%std_msgs/Bool[] HBVectorPublishedTopicOutputBoundaryCheck~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HBVector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'HBVectorSubscribedTopicNames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'HBVectorSubscribedTopicFrequencyCheck) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'HBVectorPublishedTopicNames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'HBVectorPublishedTopicOutputBoundaryCheck) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HBVector>))
  "Converts a ROS message object to a list"
  (cl:list 'HBVector
    (cl:cons ':header (header msg))
    (cl:cons ':HBVectorSubscribedTopicNames (HBVectorSubscribedTopicNames msg))
    (cl:cons ':HBVectorSubscribedTopicFrequencyCheck (HBVectorSubscribedTopicFrequencyCheck msg))
    (cl:cons ':HBVectorPublishedTopicNames (HBVectorPublishedTopicNames msg))
    (cl:cons ':HBVectorPublishedTopicOutputBoundaryCheck (HBVectorPublishedTopicOutputBoundaryCheck msg))
))
