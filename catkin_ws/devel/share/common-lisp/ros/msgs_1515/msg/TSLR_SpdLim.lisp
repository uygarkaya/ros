; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude TSLR_SpdLim.msg.html

(cl:defclass <TSLR_SpdLim> (roslisp-msg-protocol:ros-message)
  ((speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:integer
    :initform 0))
)

(cl:defclass TSLR_SpdLim (<TSLR_SpdLim>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TSLR_SpdLim>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TSLR_SpdLim)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<TSLR_SpdLim> is deprecated: use msgs_1515-msg:TSLR_SpdLim instead.")))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <TSLR_SpdLim>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:speed_limit-val is deprecated.  Use msgs_1515-msg:speed_limit instead.")
  (speed_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TSLR_SpdLim>) ostream)
  "Serializes a message object of type '<TSLR_SpdLim>"
  (cl:let* ((signed (cl:slot-value msg 'speed_limit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TSLR_SpdLim>) istream)
  "Deserializes a message object of type '<TSLR_SpdLim>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_limit) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TSLR_SpdLim>)))
  "Returns string type for a message object of type '<TSLR_SpdLim>"
  "msgs_1515/TSLR_SpdLim")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TSLR_SpdLim)))
  "Returns string type for a message object of type 'TSLR_SpdLim"
  "msgs_1515/TSLR_SpdLim")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TSLR_SpdLim>)))
  "Returns md5sum for a message object of type '<TSLR_SpdLim>"
  "e29ee14bdb0dbf17f518e9f21a5a195c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TSLR_SpdLim)))
  "Returns md5sum for a message object of type 'TSLR_SpdLim"
  "e29ee14bdb0dbf17f518e9f21a5a195c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TSLR_SpdLim>)))
  "Returns full string definition for message of type '<TSLR_SpdLim>"
  (cl:format cl:nil "# TSLR Speed limit information. This will be used by ACC in order to limit ego vehicle's speed.~%int64 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TSLR_SpdLim)))
  "Returns full string definition for message of type 'TSLR_SpdLim"
  (cl:format cl:nil "# TSLR Speed limit information. This will be used by ACC in order to limit ego vehicle's speed.~%int64 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TSLR_SpdLim>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TSLR_SpdLim>))
  "Converts a ROS message object to a list"
  (cl:list 'TSLR_SpdLim
    (cl:cons ':speed_limit (speed_limit msg))
))
