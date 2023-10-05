; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude ClusterRadarArray.msg.html

(cl:defclass <ClusterRadarArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (clusterRadarArray
    :reader clusterRadarArray
    :initarg :clusterRadarArray
    :type (cl:vector msgs_1515-msg:ClusterRadar)
   :initform (cl:make-array 0 :element-type 'msgs_1515-msg:ClusterRadar :initial-element (cl:make-instance 'msgs_1515-msg:ClusterRadar)))
   (nof_targetsnear
    :reader nof_targetsnear
    :initarg :nof_targetsnear
    :type cl:float
    :initform 0.0)
   (nof_targetsfar
    :reader nof_targetsfar
    :initarg :nof_targetsfar
    :type cl:float
    :initform 0.0)
   (meas_counter
    :reader meas_counter
    :initarg :meas_counter
    :type cl:float
    :initform 0.0)
   (interface_version
    :reader interface_version
    :initarg :interface_version
    :type cl:float
    :initform 0.0))
)

(cl:defclass ClusterRadarArray (<ClusterRadarArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterRadarArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterRadarArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<ClusterRadarArray> is deprecated: use msgs_1515-msg:ClusterRadarArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ClusterRadarArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'clusterRadarArray-val :lambda-list '(m))
(cl:defmethod clusterRadarArray-val ((m <ClusterRadarArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:clusterRadarArray-val is deprecated.  Use msgs_1515-msg:clusterRadarArray instead.")
  (clusterRadarArray m))

(cl:ensure-generic-function 'nof_targetsnear-val :lambda-list '(m))
(cl:defmethod nof_targetsnear-val ((m <ClusterRadarArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:nof_targetsnear-val is deprecated.  Use msgs_1515-msg:nof_targetsnear instead.")
  (nof_targetsnear m))

(cl:ensure-generic-function 'nof_targetsfar-val :lambda-list '(m))
(cl:defmethod nof_targetsfar-val ((m <ClusterRadarArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:nof_targetsfar-val is deprecated.  Use msgs_1515-msg:nof_targetsfar instead.")
  (nof_targetsfar m))

(cl:ensure-generic-function 'meas_counter-val :lambda-list '(m))
(cl:defmethod meas_counter-val ((m <ClusterRadarArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:meas_counter-val is deprecated.  Use msgs_1515-msg:meas_counter instead.")
  (meas_counter m))

(cl:ensure-generic-function 'interface_version-val :lambda-list '(m))
(cl:defmethod interface_version-val ((m <ClusterRadarArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:interface_version-val is deprecated.  Use msgs_1515-msg:interface_version instead.")
  (interface_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterRadarArray>) ostream)
  "Serializes a message object of type '<ClusterRadarArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clusterRadarArray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clusterRadarArray))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nof_targetsnear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nof_targetsfar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'meas_counter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'interface_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterRadarArray>) istream)
  "Deserializes a message object of type '<ClusterRadarArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clusterRadarArray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clusterRadarArray)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'msgs_1515-msg:ClusterRadar))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nof_targetsnear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nof_targetsfar) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'meas_counter) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'interface_version) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterRadarArray>)))
  "Returns string type for a message object of type '<ClusterRadarArray>"
  "msgs_1515/ClusterRadarArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterRadarArray)))
  "Returns string type for a message object of type 'ClusterRadarArray"
  "msgs_1515/ClusterRadarArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterRadarArray>)))
  "Returns md5sum for a message object of type '<ClusterRadarArray>"
  "3788d9ac9895b49d2a932679c4bf0315")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterRadarArray)))
  "Returns md5sum for a message object of type 'ClusterRadarArray"
  "3788d9ac9895b49d2a932679c4bf0315")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterRadarArray>)))
  "Returns full string definition for message of type '<ClusterRadarArray>"
  (cl:format cl:nil "Header header~%ClusterRadar[] clusterRadarArray~%float32 nof_targetsnear~%float32 nof_targetsfar~%float32 meas_counter~%float32 interface_version~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: msgs_1515/ClusterRadar~%Header header~%uint8 target_id~%float32 longitude_dist~%float32 lateral_dist~%float32 longitude_vel~%float32 lateral_vel~%float32 rcs~%float32 DynProp~%float32 std_dev_long_dist~%float32 std_dev_lat_dist~%float32 std_dev_long_vel~%float32 std_dev_lat_vel~%float32 false_alarm_prob~%float32 validty_state~%float32 doppler_state~%bool static_check~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterRadarArray)))
  "Returns full string definition for message of type 'ClusterRadarArray"
  (cl:format cl:nil "Header header~%ClusterRadar[] clusterRadarArray~%float32 nof_targetsnear~%float32 nof_targetsfar~%float32 meas_counter~%float32 interface_version~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: msgs_1515/ClusterRadar~%Header header~%uint8 target_id~%float32 longitude_dist~%float32 lateral_dist~%float32 longitude_vel~%float32 lateral_vel~%float32 rcs~%float32 DynProp~%float32 std_dev_long_dist~%float32 std_dev_lat_dist~%float32 std_dev_long_vel~%float32 std_dev_lat_vel~%float32 false_alarm_prob~%float32 validty_state~%float32 doppler_state~%bool static_check~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterRadarArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clusterRadarArray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterRadarArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterRadarArray
    (cl:cons ':header (header msg))
    (cl:cons ':clusterRadarArray (clusterRadarArray msg))
    (cl:cons ':nof_targetsnear (nof_targetsnear msg))
    (cl:cons ':nof_targetsfar (nof_targetsfar msg))
    (cl:cons ':meas_counter (meas_counter msg))
    (cl:cons ':interface_version (interface_version msg))
))
