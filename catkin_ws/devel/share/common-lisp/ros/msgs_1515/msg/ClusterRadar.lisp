; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude ClusterRadar.msg.html

(cl:defclass <ClusterRadar> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (target_id
    :reader target_id
    :initarg :target_id
    :type cl:fixnum
    :initform 0)
   (longitude_dist
    :reader longitude_dist
    :initarg :longitude_dist
    :type cl:float
    :initform 0.0)
   (lateral_dist
    :reader lateral_dist
    :initarg :lateral_dist
    :type cl:float
    :initform 0.0)
   (longitude_vel
    :reader longitude_vel
    :initarg :longitude_vel
    :type cl:float
    :initform 0.0)
   (lateral_vel
    :reader lateral_vel
    :initarg :lateral_vel
    :type cl:float
    :initform 0.0)
   (rcs
    :reader rcs
    :initarg :rcs
    :type cl:float
    :initform 0.0)
   (DynProp
    :reader DynProp
    :initarg :DynProp
    :type cl:float
    :initform 0.0)
   (std_dev_long_dist
    :reader std_dev_long_dist
    :initarg :std_dev_long_dist
    :type cl:float
    :initform 0.0)
   (std_dev_lat_dist
    :reader std_dev_lat_dist
    :initarg :std_dev_lat_dist
    :type cl:float
    :initform 0.0)
   (std_dev_long_vel
    :reader std_dev_long_vel
    :initarg :std_dev_long_vel
    :type cl:float
    :initform 0.0)
   (std_dev_lat_vel
    :reader std_dev_lat_vel
    :initarg :std_dev_lat_vel
    :type cl:float
    :initform 0.0)
   (false_alarm_prob
    :reader false_alarm_prob
    :initarg :false_alarm_prob
    :type cl:float
    :initform 0.0)
   (validty_state
    :reader validty_state
    :initarg :validty_state
    :type cl:float
    :initform 0.0)
   (doppler_state
    :reader doppler_state
    :initarg :doppler_state
    :type cl:float
    :initform 0.0)
   (static_check
    :reader static_check
    :initarg :static_check
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClusterRadar (<ClusterRadar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterRadar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterRadar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<ClusterRadar> is deprecated: use msgs_1515-msg:ClusterRadar instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'target_id-val :lambda-list '(m))
(cl:defmethod target_id-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:target_id-val is deprecated.  Use msgs_1515-msg:target_id instead.")
  (target_id m))

(cl:ensure-generic-function 'longitude_dist-val :lambda-list '(m))
(cl:defmethod longitude_dist-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:longitude_dist-val is deprecated.  Use msgs_1515-msg:longitude_dist instead.")
  (longitude_dist m))

(cl:ensure-generic-function 'lateral_dist-val :lambda-list '(m))
(cl:defmethod lateral_dist-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:lateral_dist-val is deprecated.  Use msgs_1515-msg:lateral_dist instead.")
  (lateral_dist m))

(cl:ensure-generic-function 'longitude_vel-val :lambda-list '(m))
(cl:defmethod longitude_vel-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:longitude_vel-val is deprecated.  Use msgs_1515-msg:longitude_vel instead.")
  (longitude_vel m))

(cl:ensure-generic-function 'lateral_vel-val :lambda-list '(m))
(cl:defmethod lateral_vel-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:lateral_vel-val is deprecated.  Use msgs_1515-msg:lateral_vel instead.")
  (lateral_vel m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:rcs-val is deprecated.  Use msgs_1515-msg:rcs instead.")
  (rcs m))

(cl:ensure-generic-function 'DynProp-val :lambda-list '(m))
(cl:defmethod DynProp-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:DynProp-val is deprecated.  Use msgs_1515-msg:DynProp instead.")
  (DynProp m))

(cl:ensure-generic-function 'std_dev_long_dist-val :lambda-list '(m))
(cl:defmethod std_dev_long_dist-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:std_dev_long_dist-val is deprecated.  Use msgs_1515-msg:std_dev_long_dist instead.")
  (std_dev_long_dist m))

(cl:ensure-generic-function 'std_dev_lat_dist-val :lambda-list '(m))
(cl:defmethod std_dev_lat_dist-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:std_dev_lat_dist-val is deprecated.  Use msgs_1515-msg:std_dev_lat_dist instead.")
  (std_dev_lat_dist m))

(cl:ensure-generic-function 'std_dev_long_vel-val :lambda-list '(m))
(cl:defmethod std_dev_long_vel-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:std_dev_long_vel-val is deprecated.  Use msgs_1515-msg:std_dev_long_vel instead.")
  (std_dev_long_vel m))

(cl:ensure-generic-function 'std_dev_lat_vel-val :lambda-list '(m))
(cl:defmethod std_dev_lat_vel-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:std_dev_lat_vel-val is deprecated.  Use msgs_1515-msg:std_dev_lat_vel instead.")
  (std_dev_lat_vel m))

(cl:ensure-generic-function 'false_alarm_prob-val :lambda-list '(m))
(cl:defmethod false_alarm_prob-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:false_alarm_prob-val is deprecated.  Use msgs_1515-msg:false_alarm_prob instead.")
  (false_alarm_prob m))

(cl:ensure-generic-function 'validty_state-val :lambda-list '(m))
(cl:defmethod validty_state-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:validty_state-val is deprecated.  Use msgs_1515-msg:validty_state instead.")
  (validty_state m))

(cl:ensure-generic-function 'doppler_state-val :lambda-list '(m))
(cl:defmethod doppler_state-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:doppler_state-val is deprecated.  Use msgs_1515-msg:doppler_state instead.")
  (doppler_state m))

(cl:ensure-generic-function 'static_check-val :lambda-list '(m))
(cl:defmethod static_check-val ((m <ClusterRadar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:static_check-val is deprecated.  Use msgs_1515-msg:static_check instead.")
  (static_check m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterRadar>) ostream)
  "Serializes a message object of type '<ClusterRadar>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateral_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateral_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DynProp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev_long_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev_lat_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev_long_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev_lat_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'false_alarm_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'validty_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doppler_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'static_check) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterRadar>) istream)
  "Deserializes a message object of type '<ClusterRadar>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DynProp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev_long_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev_lat_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev_long_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev_lat_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'false_alarm_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'validty_state) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doppler_state) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'static_check) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterRadar>)))
  "Returns string type for a message object of type '<ClusterRadar>"
  "msgs_1515/ClusterRadar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterRadar)))
  "Returns string type for a message object of type 'ClusterRadar"
  "msgs_1515/ClusterRadar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterRadar>)))
  "Returns md5sum for a message object of type '<ClusterRadar>"
  "cb3e5405dc7c6503c3a17cff308b05b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterRadar)))
  "Returns md5sum for a message object of type 'ClusterRadar"
  "cb3e5405dc7c6503c3a17cff308b05b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterRadar>)))
  "Returns full string definition for message of type '<ClusterRadar>"
  (cl:format cl:nil "Header header~%uint8 target_id~%float32 longitude_dist~%float32 lateral_dist~%float32 longitude_vel~%float32 lateral_vel~%float32 rcs~%float32 DynProp~%float32 std_dev_long_dist~%float32 std_dev_lat_dist~%float32 std_dev_long_vel~%float32 std_dev_lat_vel~%float32 false_alarm_prob~%float32 validty_state~%float32 doppler_state~%bool static_check~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterRadar)))
  "Returns full string definition for message of type 'ClusterRadar"
  (cl:format cl:nil "Header header~%uint8 target_id~%float32 longitude_dist~%float32 lateral_dist~%float32 longitude_vel~%float32 lateral_vel~%float32 rcs~%float32 DynProp~%float32 std_dev_long_dist~%float32 std_dev_lat_dist~%float32 std_dev_long_vel~%float32 std_dev_lat_vel~%float32 false_alarm_prob~%float32 validty_state~%float32 doppler_state~%bool static_check~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterRadar>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterRadar>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterRadar
    (cl:cons ':header (header msg))
    (cl:cons ':target_id (target_id msg))
    (cl:cons ':longitude_dist (longitude_dist msg))
    (cl:cons ':lateral_dist (lateral_dist msg))
    (cl:cons ':longitude_vel (longitude_vel msg))
    (cl:cons ':lateral_vel (lateral_vel msg))
    (cl:cons ':rcs (rcs msg))
    (cl:cons ':DynProp (DynProp msg))
    (cl:cons ':std_dev_long_dist (std_dev_long_dist msg))
    (cl:cons ':std_dev_lat_dist (std_dev_lat_dist msg))
    (cl:cons ':std_dev_long_vel (std_dev_long_vel msg))
    (cl:cons ':std_dev_lat_vel (std_dev_lat_vel msg))
    (cl:cons ':false_alarm_prob (false_alarm_prob msg))
    (cl:cons ':validty_state (validty_state msg))
    (cl:cons ':doppler_state (doppler_state msg))
    (cl:cons ':static_check (static_check msg))
))
