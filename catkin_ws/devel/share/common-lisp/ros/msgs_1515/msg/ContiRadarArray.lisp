; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude ContiRadarArray.msg.html

(cl:defclass <ContiRadarArray> (roslisp-msg-protocol:ros-message)
  ((radarTime
    :reader radarTime
    :initarg :radarTime
    :type cl:real
    :initform 0)
   (radarArray
    :reader radarArray
    :initarg :radarArray
    :type (cl:vector msgs_1515-msg:ContiRadar)
   :initform (cl:make-array 0 :element-type 'msgs_1515-msg:ContiRadar :initial-element (cl:make-instance 'msgs_1515-msg:ContiRadar))))
)

(cl:defclass ContiRadarArray (<ContiRadarArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContiRadarArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContiRadarArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<ContiRadarArray> is deprecated: use msgs_1515-msg:ContiRadarArray instead.")))

(cl:ensure-generic-function 'radarTime-val :lambda-list '(m))
(cl:defmethod radarTime-val ((m <ContiRadarArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:radarTime-val is deprecated.  Use msgs_1515-msg:radarTime instead.")
  (radarTime m))

(cl:ensure-generic-function 'radarArray-val :lambda-list '(m))
(cl:defmethod radarArray-val ((m <ContiRadarArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:radarArray-val is deprecated.  Use msgs_1515-msg:radarArray instead.")
  (radarArray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContiRadarArray>) ostream)
  "Serializes a message object of type '<ContiRadarArray>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'radarTime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'radarTime) (cl:floor (cl:slot-value msg 'radarTime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'radarArray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'radarArray))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContiRadarArray>) istream)
  "Deserializes a message object of type '<ContiRadarArray>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radarTime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'radarArray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'radarArray)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'msgs_1515-msg:ContiRadar))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContiRadarArray>)))
  "Returns string type for a message object of type '<ContiRadarArray>"
  "msgs_1515/ContiRadarArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContiRadarArray)))
  "Returns string type for a message object of type 'ContiRadarArray"
  "msgs_1515/ContiRadarArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContiRadarArray>)))
  "Returns md5sum for a message object of type '<ContiRadarArray>"
  "0ca4826b66e9da546402554f6773f48d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContiRadarArray)))
  "Returns md5sum for a message object of type 'ContiRadarArray"
  "0ca4826b66e9da546402554f6773f48d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContiRadarArray>)))
  "Returns full string definition for message of type '<ContiRadarArray>"
  (cl:format cl:nil "time radarTime~%ContiRadar[] radarArray~%~%================================================================================~%MSG: msgs_1515/ContiRadar~%Header header~%uint8 obstacle_id~%float32 longitude_dist~%float32 lateral_dist~%float32 longitude_vel~%float32 lateral_vel~%float32 rcs~%float32 orientation_angle~%float32 length~%float32 width~%float32 prob_exist~%string obstacle_class~%string dyn_property~%uint8 meas_state~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContiRadarArray)))
  "Returns full string definition for message of type 'ContiRadarArray"
  (cl:format cl:nil "time radarTime~%ContiRadar[] radarArray~%~%================================================================================~%MSG: msgs_1515/ContiRadar~%Header header~%uint8 obstacle_id~%float32 longitude_dist~%float32 lateral_dist~%float32 longitude_vel~%float32 lateral_vel~%float32 rcs~%float32 orientation_angle~%float32 length~%float32 width~%float32 prob_exist~%string obstacle_class~%string dyn_property~%uint8 meas_state~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContiRadarArray>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'radarArray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContiRadarArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ContiRadarArray
    (cl:cons ':radarTime (radarTime msg))
    (cl:cons ':radarArray (radarArray msg))
))
