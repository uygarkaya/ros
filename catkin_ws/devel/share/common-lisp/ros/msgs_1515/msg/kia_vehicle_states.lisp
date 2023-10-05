; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude kia_vehicle_states.msg.html

(cl:defclass <kia_vehicle_states> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brakePressure
    :reader brakePressure
    :initarg :brakePressure
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (steeringAngle
    :reader steeringAngle
    :initarg :steeringAngle
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (wheelSpeed
    :reader wheelSpeed
    :initarg :wheelSpeed
    :type (cl:vector std_msgs-msg:Float64)
   :initform (cl:make-array 4 :element-type 'std_msgs-msg:Float64 :initial-element (cl:make-instance 'std_msgs-msg:Float64))))
)

(cl:defclass kia_vehicle_states (<kia_vehicle_states>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kia_vehicle_states>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kia_vehicle_states)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<kia_vehicle_states> is deprecated: use msgs_1515-msg:kia_vehicle_states instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <kia_vehicle_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:header-val is deprecated.  Use msgs_1515-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brakePressure-val :lambda-list '(m))
(cl:defmethod brakePressure-val ((m <kia_vehicle_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:brakePressure-val is deprecated.  Use msgs_1515-msg:brakePressure instead.")
  (brakePressure m))

(cl:ensure-generic-function 'steeringAngle-val :lambda-list '(m))
(cl:defmethod steeringAngle-val ((m <kia_vehicle_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:steeringAngle-val is deprecated.  Use msgs_1515-msg:steeringAngle instead.")
  (steeringAngle m))

(cl:ensure-generic-function 'wheelSpeed-val :lambda-list '(m))
(cl:defmethod wheelSpeed-val ((m <kia_vehicle_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:wheelSpeed-val is deprecated.  Use msgs_1515-msg:wheelSpeed instead.")
  (wheelSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kia_vehicle_states>) ostream)
  "Serializes a message object of type '<kia_vehicle_states>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brakePressure) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steeringAngle) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wheelSpeed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kia_vehicle_states>) istream)
  "Deserializes a message object of type '<kia_vehicle_states>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brakePressure) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steeringAngle) istream)
  (cl:setf (cl:slot-value msg 'wheelSpeed) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'wheelSpeed)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kia_vehicle_states>)))
  "Returns string type for a message object of type '<kia_vehicle_states>"
  "msgs_1515/kia_vehicle_states")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kia_vehicle_states)))
  "Returns string type for a message object of type 'kia_vehicle_states"
  "msgs_1515/kia_vehicle_states")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kia_vehicle_states>)))
  "Returns md5sum for a message object of type '<kia_vehicle_states>"
  "46eaabf74bdd814e01cd08effd3efb51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kia_vehicle_states)))
  "Returns md5sum for a message object of type 'kia_vehicle_states"
  "46eaabf74bdd814e01cd08effd3efb51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kia_vehicle_states>)))
  "Returns full string definition for message of type '<kia_vehicle_states>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64 brakePressure~%std_msgs/Float64 steeringAngle~%std_msgs/Float64[4] wheelSpeed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kia_vehicle_states)))
  "Returns full string definition for message of type 'kia_vehicle_states"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64 brakePressure~%std_msgs/Float64 steeringAngle~%std_msgs/Float64[4] wheelSpeed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kia_vehicle_states>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brakePressure))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steeringAngle))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wheelSpeed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kia_vehicle_states>))
  "Converts a ROS message object to a list"
  (cl:list 'kia_vehicle_states
    (cl:cons ':header (header msg))
    (cl:cons ':brakePressure (brakePressure msg))
    (cl:cons ':steeringAngle (steeringAngle msg))
    (cl:cons ':wheelSpeed (wheelSpeed msg))
))
