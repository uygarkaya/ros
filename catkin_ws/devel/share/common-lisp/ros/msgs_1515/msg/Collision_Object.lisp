; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude Collision_Object.msg.html

(cl:defclass <Collision_Object> (roslisp-msg-protocol:ros-message)
  ((xPos
    :reader xPos
    :initarg :xPos
    :type cl:float
    :initform 0.0)
   (yPos
    :reader yPos
    :initarg :yPos
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Collision_Object (<Collision_Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Collision_Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Collision_Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<Collision_Object> is deprecated: use msgs_1515-msg:Collision_Object instead.")))

(cl:ensure-generic-function 'xPos-val :lambda-list '(m))
(cl:defmethod xPos-val ((m <Collision_Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:xPos-val is deprecated.  Use msgs_1515-msg:xPos instead.")
  (xPos m))

(cl:ensure-generic-function 'yPos-val :lambda-list '(m))
(cl:defmethod yPos-val ((m <Collision_Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:yPos-val is deprecated.  Use msgs_1515-msg:yPos instead.")
  (yPos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Collision_Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:speed-val is deprecated.  Use msgs_1515-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Collision_Object>) ostream)
  "Serializes a message object of type '<Collision_Object>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Collision_Object>) istream)
  "Deserializes a message object of type '<Collision_Object>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xPos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yPos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Collision_Object>)))
  "Returns string type for a message object of type '<Collision_Object>"
  "msgs_1515/Collision_Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Collision_Object)))
  "Returns string type for a message object of type 'Collision_Object"
  "msgs_1515/Collision_Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Collision_Object>)))
  "Returns md5sum for a message object of type '<Collision_Object>"
  "44b91f6215415f03230f74399b59c2e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Collision_Object)))
  "Returns md5sum for a message object of type 'Collision_Object"
  "44b91f6215415f03230f74399b59c2e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Collision_Object>)))
  "Returns full string definition for message of type '<Collision_Object>"
  (cl:format cl:nil "float32 xPos~%float32 yPos~%float32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Collision_Object)))
  "Returns full string definition for message of type 'Collision_Object"
  (cl:format cl:nil "float32 xPos~%float32 yPos~%float32 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Collision_Object>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Collision_Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Collision_Object
    (cl:cons ':xPos (xPos msg))
    (cl:cons ':yPos (yPos msg))
    (cl:cons ':speed (speed msg))
))
