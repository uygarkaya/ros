; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude AutonomousStates.msg.html

(cl:defclass <AutonomousStates> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (lka_status
    :reader lka_status
    :initarg :lka_status
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (acc_status
    :reader acc_status
    :initarg :acc_status
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8))
   (acc_mode
    :reader acc_mode
    :initarg :acc_mode
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8))
   (set_speed
    :reader set_speed
    :initarg :set_speed
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8))
   (dm_mode
    :reader dm_mode
    :initarg :dm_mode
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8)))
)

(cl:defclass AutonomousStates (<AutonomousStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutonomousStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutonomousStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<AutonomousStates> is deprecated: use msgs_1515-msg:AutonomousStates instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:seq-val is deprecated.  Use msgs_1515-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:stamp-val is deprecated.  Use msgs_1515-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:frame_id-val is deprecated.  Use msgs_1515-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'lka_status-val :lambda-list '(m))
(cl:defmethod lka_status-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:lka_status-val is deprecated.  Use msgs_1515-msg:lka_status instead.")
  (lka_status m))

(cl:ensure-generic-function 'acc_status-val :lambda-list '(m))
(cl:defmethod acc_status-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:acc_status-val is deprecated.  Use msgs_1515-msg:acc_status instead.")
  (acc_status m))

(cl:ensure-generic-function 'acc_mode-val :lambda-list '(m))
(cl:defmethod acc_mode-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:acc_mode-val is deprecated.  Use msgs_1515-msg:acc_mode instead.")
  (acc_mode m))

(cl:ensure-generic-function 'set_speed-val :lambda-list '(m))
(cl:defmethod set_speed-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:set_speed-val is deprecated.  Use msgs_1515-msg:set_speed instead.")
  (set_speed m))

(cl:ensure-generic-function 'dm_mode-val :lambda-list '(m))
(cl:defmethod dm_mode-val ((m <AutonomousStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:dm_mode-val is deprecated.  Use msgs_1515-msg:dm_mode instead.")
  (dm_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutonomousStates>) ostream)
  "Serializes a message object of type '<AutonomousStates>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lka_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'set_speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dm_mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutonomousStates>) istream)
  "Deserializes a message object of type '<AutonomousStates>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lka_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'set_speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dm_mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutonomousStates>)))
  "Returns string type for a message object of type '<AutonomousStates>"
  "msgs_1515/AutonomousStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutonomousStates)))
  "Returns string type for a message object of type 'AutonomousStates"
  "msgs_1515/AutonomousStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutonomousStates>)))
  "Returns md5sum for a message object of type '<AutonomousStates>"
  "c16518f721ec6e01d4ec26824c39854c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutonomousStates)))
  "Returns md5sum for a message object of type 'AutonomousStates"
  "c16518f721ec6e01d4ec26824c39854c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutonomousStates>)))
  "Returns full string definition for message of type '<AutonomousStates>"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%std_msgs/Bool lka_status~%std_msgs/Int8 acc_status~%std_msgs/Int8 acc_mode~%std_msgs/Int8 set_speed~%std_msgs/Int8 dm_mode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutonomousStates)))
  "Returns full string definition for message of type 'AutonomousStates"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%std_msgs/Bool lka_status~%std_msgs/Int8 acc_status~%std_msgs/Int8 acc_mode~%std_msgs/Int8 set_speed~%std_msgs/Int8 dm_mode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutonomousStates>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lka_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'set_speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dm_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutonomousStates>))
  "Converts a ROS message object to a list"
  (cl:list 'AutonomousStates
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':lka_status (lka_status msg))
    (cl:cons ':acc_status (acc_status msg))
    (cl:cons ':acc_mode (acc_mode msg))
    (cl:cons ':set_speed (set_speed msg))
    (cl:cons ':dm_mode (dm_mode msg))
))
