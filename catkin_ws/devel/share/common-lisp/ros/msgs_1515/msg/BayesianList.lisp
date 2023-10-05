; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude BayesianList.msg.html

(cl:defclass <BayesianList> (roslisp-msg-protocol:ros-message)
  ((Q1
    :reader Q1
    :initarg :Q1
    :type cl:fixnum
    :initform 0)
   (Q2
    :reader Q2
    :initarg :Q2
    :type cl:fixnum
    :initform 0)
   (Q3
    :reader Q3
    :initarg :Q3
    :type cl:fixnum
    :initform 0)
   (Q4
    :reader Q4
    :initarg :Q4
    :type cl:fixnum
    :initform 0)
   (Q5
    :reader Q5
    :initarg :Q5
    :type cl:fixnum
    :initform 0)
   (Q6
    :reader Q6
    :initarg :Q6
    :type cl:fixnum
    :initform 0)
   (Q7
    :reader Q7
    :initarg :Q7
    :type cl:fixnum
    :initform 0)
   (Q8
    :reader Q8
    :initarg :Q8
    :type cl:fixnum
    :initform 0)
   (Q9
    :reader Q9
    :initarg :Q9
    :type cl:fixnum
    :initform 0)
   (Q10
    :reader Q10
    :initarg :Q10
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BayesianList (<BayesianList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BayesianList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BayesianList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<BayesianList> is deprecated: use msgs_1515-msg:BayesianList instead.")))

(cl:ensure-generic-function 'Q1-val :lambda-list '(m))
(cl:defmethod Q1-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q1-val is deprecated.  Use msgs_1515-msg:Q1 instead.")
  (Q1 m))

(cl:ensure-generic-function 'Q2-val :lambda-list '(m))
(cl:defmethod Q2-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q2-val is deprecated.  Use msgs_1515-msg:Q2 instead.")
  (Q2 m))

(cl:ensure-generic-function 'Q3-val :lambda-list '(m))
(cl:defmethod Q3-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q3-val is deprecated.  Use msgs_1515-msg:Q3 instead.")
  (Q3 m))

(cl:ensure-generic-function 'Q4-val :lambda-list '(m))
(cl:defmethod Q4-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q4-val is deprecated.  Use msgs_1515-msg:Q4 instead.")
  (Q4 m))

(cl:ensure-generic-function 'Q5-val :lambda-list '(m))
(cl:defmethod Q5-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q5-val is deprecated.  Use msgs_1515-msg:Q5 instead.")
  (Q5 m))

(cl:ensure-generic-function 'Q6-val :lambda-list '(m))
(cl:defmethod Q6-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q6-val is deprecated.  Use msgs_1515-msg:Q6 instead.")
  (Q6 m))

(cl:ensure-generic-function 'Q7-val :lambda-list '(m))
(cl:defmethod Q7-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q7-val is deprecated.  Use msgs_1515-msg:Q7 instead.")
  (Q7 m))

(cl:ensure-generic-function 'Q8-val :lambda-list '(m))
(cl:defmethod Q8-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q8-val is deprecated.  Use msgs_1515-msg:Q8 instead.")
  (Q8 m))

(cl:ensure-generic-function 'Q9-val :lambda-list '(m))
(cl:defmethod Q9-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q9-val is deprecated.  Use msgs_1515-msg:Q9 instead.")
  (Q9 m))

(cl:ensure-generic-function 'Q10-val :lambda-list '(m))
(cl:defmethod Q10-val ((m <BayesianList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:Q10-val is deprecated.  Use msgs_1515-msg:Q10 instead.")
  (Q10 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BayesianList>) ostream)
  "Serializes a message object of type '<BayesianList>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q10)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BayesianList>) istream)
  "Deserializes a message object of type '<BayesianList>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Q10)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BayesianList>)))
  "Returns string type for a message object of type '<BayesianList>"
  "msgs_1515/BayesianList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BayesianList)))
  "Returns string type for a message object of type 'BayesianList"
  "msgs_1515/BayesianList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BayesianList>)))
  "Returns md5sum for a message object of type '<BayesianList>"
  "27e0bc7354fd5b6934bfa9c612e9bff1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BayesianList)))
  "Returns md5sum for a message object of type 'BayesianList"
  "27e0bc7354fd5b6934bfa9c612e9bff1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BayesianList>)))
  "Returns full string definition for message of type '<BayesianList>"
  (cl:format cl:nil "uint8 Q1~%uint8 Q2~%uint8 Q3~%uint8 Q4~%uint8 Q5~%uint8 Q6~%uint8 Q7~%uint8 Q8~%uint8 Q9~%uint8 Q10~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BayesianList)))
  "Returns full string definition for message of type 'BayesianList"
  (cl:format cl:nil "uint8 Q1~%uint8 Q2~%uint8 Q3~%uint8 Q4~%uint8 Q5~%uint8 Q6~%uint8 Q7~%uint8 Q8~%uint8 Q9~%uint8 Q10~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BayesianList>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BayesianList>))
  "Converts a ROS message object to a list"
  (cl:list 'BayesianList
    (cl:cons ':Q1 (Q1 msg))
    (cl:cons ':Q2 (Q2 msg))
    (cl:cons ':Q3 (Q3 msg))
    (cl:cons ':Q4 (Q4 msg))
    (cl:cons ':Q5 (Q5 msg))
    (cl:cons ':Q6 (Q6 msg))
    (cl:cons ':Q7 (Q7 msg))
    (cl:cons ':Q8 (Q8 msg))
    (cl:cons ':Q9 (Q9 msg))
    (cl:cons ':Q10 (Q10 msg))
))
