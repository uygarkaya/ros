; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude SteeringAngleCommand.msg.html

(cl:defclass <SteeringAngleCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:fixnum
    :initform 0)
   (max_velocity
    :reader max_velocity
    :initarg :max_velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SteeringAngleCommand (<SteeringAngleCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringAngleCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringAngleCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<SteeringAngleCommand> is deprecated: use msgs_1515-msg:SteeringAngleCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteeringAngleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <SteeringAngleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:flag-val is deprecated.  Use msgs_1515-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <SteeringAngleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:steering_angle-val is deprecated.  Use msgs_1515-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'max_velocity-val :lambda-list '(m))
(cl:defmethod max_velocity-val ((m <SteeringAngleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:max_velocity-val is deprecated.  Use msgs_1515-msg:max_velocity instead.")
  (max_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringAngleCommand>) ostream)
  "Serializes a message object of type '<SteeringAngleCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'steering_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringAngleCommand>) istream)
  "Deserializes a message object of type '<SteeringAngleCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_angle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringAngleCommand>)))
  "Returns string type for a message object of type '<SteeringAngleCommand>"
  "msgs_1515/SteeringAngleCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringAngleCommand)))
  "Returns string type for a message object of type 'SteeringAngleCommand"
  "msgs_1515/SteeringAngleCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringAngleCommand>)))
  "Returns md5sum for a message object of type '<SteeringAngleCommand>"
  "61975182c288d6efa2e8fdf65060714d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringAngleCommand)))
  "Returns md5sum for a message object of type 'SteeringAngleCommand"
  "61975182c288d6efa2e8fdf65060714d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringAngleCommand>)))
  "Returns full string definition for message of type '<SteeringAngleCommand>"
  (cl:format cl:nil "Header header~%uint8 flag~%int16 steering_angle~%int16 max_velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringAngleCommand)))
  "Returns full string definition for message of type 'SteeringAngleCommand"
  (cl:format cl:nil "Header header~%uint8 flag~%int16 steering_angle~%int16 max_velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringAngleCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringAngleCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringAngleCommand
    (cl:cons ':header (header msg))
    (cl:cons ':flag (flag msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':max_velocity (max_velocity msg))
))
