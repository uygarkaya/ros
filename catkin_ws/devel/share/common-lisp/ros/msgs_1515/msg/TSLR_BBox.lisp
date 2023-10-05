; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude TSLR_BBox.msg.html

(cl:defclass <TSLR_BBox> (roslisp-msg-protocol:ros-message)
  ((Class
    :reader Class
    :initarg :Class
    :type cl:integer
    :initform 0)
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0)
   (SpeedSignValue
    :reader SpeedSignValue
    :initarg :SpeedSignValue
    :type cl:integer
    :initform 0)
   (ETA
    :reader ETA
    :initarg :ETA
    :type cl:float
    :initform 0.0))
)

(cl:defclass TSLR_BBox (<TSLR_BBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TSLR_BBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TSLR_BBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<TSLR_BBox> is deprecated: use msgs_1515-msg:TSLR_BBox instead.")))

(cl:ensure-generic-function 'Class-val :lambda-list '(m))
(cl:defmethod Class-val ((m <TSLR_BBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Class-val is deprecated.  Use msgs_1515-msg:Class instead.")
  (Class m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <TSLR_BBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:probability-val is deprecated.  Use msgs_1515-msg:probability instead.")
  (probability m))

(cl:ensure-generic-function 'SpeedSignValue-val :lambda-list '(m))
(cl:defmethod SpeedSignValue-val ((m <TSLR_BBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:SpeedSignValue-val is deprecated.  Use msgs_1515-msg:SpeedSignValue instead.")
  (SpeedSignValue m))

(cl:ensure-generic-function 'ETA-val :lambda-list '(m))
(cl:defmethod ETA-val ((m <TSLR_BBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:ETA-val is deprecated.  Use msgs_1515-msg:ETA instead.")
  (ETA m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TSLR_BBox>) ostream)
  "Serializes a message object of type '<TSLR_BBox>"
  (cl:let* ((signed (cl:slot-value msg 'Class)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'SpeedSignValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ETA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TSLR_BBox>) istream)
  "Deserializes a message object of type '<TSLR_BBox>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Class) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SpeedSignValue) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ETA) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TSLR_BBox>)))
  "Returns string type for a message object of type '<TSLR_BBox>"
  "msgs_1515/TSLR_BBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TSLR_BBox)))
  "Returns string type for a message object of type 'TSLR_BBox"
  "msgs_1515/TSLR_BBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TSLR_BBox>)))
  "Returns md5sum for a message object of type '<TSLR_BBox>"
  "ad6be840399777361d3c87413b09edbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TSLR_BBox)))
  "Returns md5sum for a message object of type 'TSLR_BBox"
  "ad6be840399777361d3c87413b09edbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TSLR_BBox>)))
  "Returns full string definition for message of type '<TSLR_BBox>"
  (cl:format cl:nil "# TSLR Bouinding Boxes~%int64 Class~%float64 probability # between 0 and 1~%# int64 xmin~%# int64 ymin~%# int64 xmax~%# int64 ymax~%# bool IsSpeedSign~%int64 SpeedSignValue~%float64 ETA # second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TSLR_BBox)))
  "Returns full string definition for message of type 'TSLR_BBox"
  (cl:format cl:nil "# TSLR Bouinding Boxes~%int64 Class~%float64 probability # between 0 and 1~%# int64 xmin~%# int64 ymin~%# int64 xmax~%# int64 ymax~%# bool IsSpeedSign~%int64 SpeedSignValue~%float64 ETA # second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TSLR_BBox>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TSLR_BBox>))
  "Converts a ROS message object to a list"
  (cl:list 'TSLR_BBox
    (cl:cons ':Class (Class msg))
    (cl:cons ':probability (probability msg))
    (cl:cons ':SpeedSignValue (SpeedSignValue msg))
    (cl:cons ':ETA (ETA msg))
))
