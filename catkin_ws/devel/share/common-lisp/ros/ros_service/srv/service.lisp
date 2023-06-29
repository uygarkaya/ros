; Auto-generated. Do not edit!


(cl:in-package ros_service-srv)


;//! \htmlinclude service-request.msg.html

(cl:defclass <service-request> (roslisp-msg-protocol:ros-message)
  ((input1
    :reader input1
    :initarg :input1
    :type cl:float
    :initform 0.0)
   (input2
    :reader input2
    :initarg :input2
    :type cl:float
    :initform 0.0))
)

(cl:defclass service-request (<service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_service-srv:<service-request> is deprecated: use ros_service-srv:service-request instead.")))

(cl:ensure-generic-function 'input1-val :lambda-list '(m))
(cl:defmethod input1-val ((m <service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service-srv:input1-val is deprecated.  Use ros_service-srv:input1 instead.")
  (input1 m))

(cl:ensure-generic-function 'input2-val :lambda-list '(m))
(cl:defmethod input2-val ((m <service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service-srv:input2-val is deprecated.  Use ros_service-srv:input2 instead.")
  (input2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service-request>) ostream)
  "Serializes a message object of type '<service-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service-request>) istream)
  "Deserializes a message object of type '<service-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service-request>)))
  "Returns string type for a service object of type '<service-request>"
  "ros_service/serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service-request)))
  "Returns string type for a service object of type 'service-request"
  "ros_service/serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service-request>)))
  "Returns md5sum for a message object of type '<service-request>"
  "94f5ca12044db57606226623620720c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service-request)))
  "Returns md5sum for a message object of type 'service-request"
  "94f5ca12044db57606226623620720c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service-request>)))
  "Returns full string definition for message of type '<service-request>"
  (cl:format cl:nil "float32 input1~%float32 input2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service-request)))
  "Returns full string definition for message of type 'service-request"
  (cl:format cl:nil "float32 input1~%float32 input2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'service-request
    (cl:cons ':input1 (input1 msg))
    (cl:cons ':input2 (input2 msg))
))
;//! \htmlinclude service-response.msg.html

(cl:defclass <service-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass service-response (<service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_service-srv:<service-response> is deprecated: use ros_service-srv:service-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_service-srv:result-val is deprecated.  Use ros_service-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service-response>) ostream)
  "Serializes a message object of type '<service-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service-response>) istream)
  "Deserializes a message object of type '<service-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service-response>)))
  "Returns string type for a service object of type '<service-response>"
  "ros_service/serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service-response)))
  "Returns string type for a service object of type 'service-response"
  "ros_service/serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service-response>)))
  "Returns md5sum for a message object of type '<service-response>"
  "94f5ca12044db57606226623620720c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service-response)))
  "Returns md5sum for a message object of type 'service-response"
  "94f5ca12044db57606226623620720c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service-response>)))
  "Returns full string definition for message of type '<service-response>"
  (cl:format cl:nil "float32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service-response)))
  "Returns full string definition for message of type 'service-response"
  (cl:format cl:nil "float32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'service-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'service)))
  'service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'service)))
  'service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service)))
  "Returns string type for a service object of type '<service>"
  "ros_service/service")