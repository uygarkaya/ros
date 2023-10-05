; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude Decision.msg.html

(cl:defclass <Decision> (roslisp-msg-protocol:ros-message)
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
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (lane_values
    :reader lane_values
    :initarg :lane_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Decision (<Decision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Decision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Decision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<Decision> is deprecated: use msgs_1515-msg:Decision instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:seq-val is deprecated.  Use msgs_1515-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:stamp-val is deprecated.  Use msgs_1515-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:frame_id-val is deprecated.  Use msgs_1515-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:action-val is deprecated.  Use msgs_1515-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'lane_values-val :lambda-list '(m))
(cl:defmethod lane_values-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:lane_values-val is deprecated.  Use msgs_1515-msg:lane_values instead.")
  (lane_values m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Decision>)))
    "Constants for message type '<Decision>"
  '((:ACTION_LEFT_LANE_CHANGE . 0)
    (:ACTION_LANE_KEEP . 1)
    (:ACTION_RIGHT_LANE_CHANGE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Decision)))
    "Constants for message type 'Decision"
  '((:ACTION_LEFT_LANE_CHANGE . 0)
    (:ACTION_LANE_KEEP . 1)
    (:ACTION_RIGHT_LANE_CHANGE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Decision>) ostream)
  "Serializes a message object of type '<Decision>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'lane_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Decision>) istream)
  "Deserializes a message object of type '<Decision>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Decision>)))
  "Returns string type for a message object of type '<Decision>"
  "msgs_1515/Decision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Decision)))
  "Returns string type for a message object of type 'Decision"
  "msgs_1515/Decision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Decision>)))
  "Returns md5sum for a message object of type '<Decision>"
  "769e9c4a24bdd40723b6cd29194c3ea5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Decision)))
  "Returns md5sum for a message object of type 'Decision"
  "769e9c4a24bdd40723b6cd29194c3ea5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Decision>)))
  "Returns full string definition for message of type '<Decision>"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%uint8 action~%uint8 ACTION_LEFT_LANE_CHANGE=0~%uint8 ACTION_LANE_KEEP=1~%uint8 ACTION_RIGHT_LANE_CHANGE=2~%float32[] lane_values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Decision)))
  "Returns full string definition for message of type 'Decision"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%uint8 action~%uint8 ACTION_LEFT_LANE_CHANGE=0~%uint8 ACTION_LANE_KEEP=1~%uint8 ACTION_RIGHT_LANE_CHANGE=2~%float32[] lane_values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Decision>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Decision>))
  "Converts a ROS message object to a list"
  (cl:list 'Decision
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':action (action msg))
    (cl:cons ':lane_values (lane_values msg))
))
