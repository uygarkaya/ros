; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude FaultList.msg.html

(cl:defclass <FaultList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bayesian_output
    :reader bayesian_output
    :initarg :bayesian_output
    :type msgs_1515-msg:BayesianList
    :initform (cl:make-instance 'msgs_1515-msg:BayesianList)))
)

(cl:defclass FaultList (<FaultList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<FaultList> is deprecated: use msgs_1515-msg:FaultList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FaultList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bayesian_output-val :lambda-list '(m))
(cl:defmethod bayesian_output-val ((m <FaultList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:bayesian_output-val is deprecated.  Use msgs_1515-msg:bayesian_output instead.")
  (bayesian_output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultList>) ostream)
  "Serializes a message object of type '<FaultList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bayesian_output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultList>) istream)
  "Deserializes a message object of type '<FaultList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bayesian_output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultList>)))
  "Returns string type for a message object of type '<FaultList>"
  "msgs_1515/FaultList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultList)))
  "Returns string type for a message object of type 'FaultList"
  "msgs_1515/FaultList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultList>)))
  "Returns md5sum for a message object of type '<FaultList>"
  "59bf514a4899a92e7dbc72149c0662a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultList)))
  "Returns md5sum for a message object of type 'FaultList"
  "59bf514a4899a92e7dbc72149c0662a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultList>)))
  "Returns full string definition for message of type '<FaultList>"
  (cl:format cl:nil "std_msgs/Header header~%msgs_1515/BayesianList bayesian_output~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: msgs_1515/BayesianList~%uint8 Q1~%uint8 Q2~%uint8 Q3~%uint8 Q4~%uint8 Q5~%uint8 Q6~%uint8 Q7~%uint8 Q8~%uint8 Q9~%uint8 Q10~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultList)))
  "Returns full string definition for message of type 'FaultList"
  (cl:format cl:nil "std_msgs/Header header~%msgs_1515/BayesianList bayesian_output~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: msgs_1515/BayesianList~%uint8 Q1~%uint8 Q2~%uint8 Q3~%uint8 Q4~%uint8 Q5~%uint8 Q6~%uint8 Q7~%uint8 Q8~%uint8 Q9~%uint8 Q10~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bayesian_output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultList>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultList
    (cl:cons ':header (header msg))
    (cl:cons ':bayesian_output (bayesian_output msg))
))
