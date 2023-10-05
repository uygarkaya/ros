; Auto-generated. Do not edit!


(cl:in-package msgs_1515-msg)


;//! \htmlinclude ObstacleProperties.msg.html

(cl:defclass <ObstacleProperties> (roslisp-msg-protocol:ros-message)
  ((blinker_info
    :reader blinker_info
    :initarg :blinker_info
    :type cl:fixnum
    :initform 0)
   (cut_in_and_out
    :reader cut_in_and_out
    :initarg :cut_in_and_out
    :type cl:fixnum
    :initform 0)
   (obstacle_type
    :reader obstacle_type
    :initarg :obstacle_type
    :type cl:fixnum
    :initform 0)
   (obstacle_status
    :reader obstacle_status
    :initarg :obstacle_status
    :type cl:fixnum
    :initform 0)
   (obstacle_brake_lights
    :reader obstacle_brake_lights
    :initarg :obstacle_brake_lights
    :type cl:boolean
    :initform cl:nil)
   (obstacle_valid
    :reader obstacle_valid
    :initarg :obstacle_valid
    :type cl:fixnum
    :initform 0)
   (obstacle_age
    :reader obstacle_age
    :initarg :obstacle_age
    :type cl:fixnum
    :initform 0)
   (obstacle_lane
    :reader obstacle_lane
    :initarg :obstacle_lane
    :type cl:fixnum
    :initform 0)
   (cipv_flag
    :reader cipv_flag
    :initarg :cipv_flag
    :type cl:boolean
    :initform cl:nil)
   (radar_pos_x
    :reader radar_pos_x
    :initarg :radar_pos_x
    :type cl:float
    :initform 0.0)
   (radar_vel_x
    :reader radar_vel_x
    :initarg :radar_vel_x
    :type cl:float
    :initform 0.0)
   (radar_match_confidence
    :reader radar_match_confidence
    :initarg :radar_match_confidence
    :type cl:fixnum
    :initform 0)
   (matched_radar_id
    :reader matched_radar_id
    :initarg :matched_radar_id
    :type cl:fixnum
    :initform 0)
   (obstacle_scale_change
    :reader obstacle_scale_change
    :initarg :obstacle_scale_change
    :type cl:float
    :initform 0.0)
   (obstacle_replaced
    :reader obstacle_replaced
    :initarg :obstacle_replaced
    :type cl:boolean
    :initform cl:nil)
   (radar_obstacle_id
    :reader radar_obstacle_id
    :initarg :radar_obstacle_id
    :type cl:fixnum
    :initform 0)
   (me_obstacle_id
    :reader me_obstacle_id
    :initarg :me_obstacle_id
    :type cl:fixnum
    :initform 0)
   (rcs
    :reader rcs
    :initarg :rcs
    :type cl:float
    :initform 0.0)
   (prob_exist
    :reader prob_exist
    :initarg :prob_exist
    :type cl:float
    :initform 0.0)
   (obstacle_class
    :reader obstacle_class
    :initarg :obstacle_class
    :type cl:string
    :initform "")
   (dyn_property
    :reader dyn_property
    :initarg :dyn_property
    :type cl:string
    :initform "")
   (meas_state
    :reader meas_state
    :initarg :meas_state
    :type cl:fixnum
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:fixnum
    :initform 0)
   (track_status
    :reader track_status
    :initarg :track_status
    :type cl:fixnum
    :initform 0)
   (prbty_exstn
    :reader prbty_exstn
    :initarg :prbty_exstn
    :type cl:float
    :initform 0.0)
   (prbty_prsntn
    :reader prbty_prsntn
    :initarg :prbty_prsntn
    :type cl:float
    :initform 0.0)
   (prbty_detn
    :reader prbty_detn
    :initarg :prbty_detn
    :type cl:float
    :initform 0.0)
   (prbty_clutr
    :reader prbty_clutr
    :initarg :prbty_clutr
    :type cl:float
    :initform 0.0)
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (R
    :reader R
    :initarg :R
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ObstacleProperties (<ObstacleProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_1515-msg:<ObstacleProperties> is deprecated: use msgs_1515-msg:ObstacleProperties instead.")))

(cl:ensure-generic-function 'blinker_info-val :lambda-list '(m))
(cl:defmethod blinker_info-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:blinker_info-val is deprecated.  Use msgs_1515-msg:blinker_info instead.")
  (blinker_info m))

(cl:ensure-generic-function 'cut_in_and_out-val :lambda-list '(m))
(cl:defmethod cut_in_and_out-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:cut_in_and_out-val is deprecated.  Use msgs_1515-msg:cut_in_and_out instead.")
  (cut_in_and_out m))

(cl:ensure-generic-function 'obstacle_type-val :lambda-list '(m))
(cl:defmethod obstacle_type-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_type-val is deprecated.  Use msgs_1515-msg:obstacle_type instead.")
  (obstacle_type m))

(cl:ensure-generic-function 'obstacle_status-val :lambda-list '(m))
(cl:defmethod obstacle_status-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_status-val is deprecated.  Use msgs_1515-msg:obstacle_status instead.")
  (obstacle_status m))

(cl:ensure-generic-function 'obstacle_brake_lights-val :lambda-list '(m))
(cl:defmethod obstacle_brake_lights-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_brake_lights-val is deprecated.  Use msgs_1515-msg:obstacle_brake_lights instead.")
  (obstacle_brake_lights m))

(cl:ensure-generic-function 'obstacle_valid-val :lambda-list '(m))
(cl:defmethod obstacle_valid-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_valid-val is deprecated.  Use msgs_1515-msg:obstacle_valid instead.")
  (obstacle_valid m))

(cl:ensure-generic-function 'obstacle_age-val :lambda-list '(m))
(cl:defmethod obstacle_age-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_age-val is deprecated.  Use msgs_1515-msg:obstacle_age instead.")
  (obstacle_age m))

(cl:ensure-generic-function 'obstacle_lane-val :lambda-list '(m))
(cl:defmethod obstacle_lane-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_lane-val is deprecated.  Use msgs_1515-msg:obstacle_lane instead.")
  (obstacle_lane m))

(cl:ensure-generic-function 'cipv_flag-val :lambda-list '(m))
(cl:defmethod cipv_flag-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:cipv_flag-val is deprecated.  Use msgs_1515-msg:cipv_flag instead.")
  (cipv_flag m))

(cl:ensure-generic-function 'radar_pos_x-val :lambda-list '(m))
(cl:defmethod radar_pos_x-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:radar_pos_x-val is deprecated.  Use msgs_1515-msg:radar_pos_x instead.")
  (radar_pos_x m))

(cl:ensure-generic-function 'radar_vel_x-val :lambda-list '(m))
(cl:defmethod radar_vel_x-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:radar_vel_x-val is deprecated.  Use msgs_1515-msg:radar_vel_x instead.")
  (radar_vel_x m))

(cl:ensure-generic-function 'radar_match_confidence-val :lambda-list '(m))
(cl:defmethod radar_match_confidence-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:radar_match_confidence-val is deprecated.  Use msgs_1515-msg:radar_match_confidence instead.")
  (radar_match_confidence m))

(cl:ensure-generic-function 'matched_radar_id-val :lambda-list '(m))
(cl:defmethod matched_radar_id-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:matched_radar_id-val is deprecated.  Use msgs_1515-msg:matched_radar_id instead.")
  (matched_radar_id m))

(cl:ensure-generic-function 'obstacle_scale_change-val :lambda-list '(m))
(cl:defmethod obstacle_scale_change-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_scale_change-val is deprecated.  Use msgs_1515-msg:obstacle_scale_change instead.")
  (obstacle_scale_change m))

(cl:ensure-generic-function 'obstacle_replaced-val :lambda-list '(m))
(cl:defmethod obstacle_replaced-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_replaced-val is deprecated.  Use msgs_1515-msg:obstacle_replaced instead.")
  (obstacle_replaced m))

(cl:ensure-generic-function 'radar_obstacle_id-val :lambda-list '(m))
(cl:defmethod radar_obstacle_id-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:radar_obstacle_id-val is deprecated.  Use msgs_1515-msg:radar_obstacle_id instead.")
  (radar_obstacle_id m))

(cl:ensure-generic-function 'me_obstacle_id-val :lambda-list '(m))
(cl:defmethod me_obstacle_id-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:me_obstacle_id-val is deprecated.  Use msgs_1515-msg:me_obstacle_id instead.")
  (me_obstacle_id m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:rcs-val is deprecated.  Use msgs_1515-msg:rcs instead.")
  (rcs m))

(cl:ensure-generic-function 'prob_exist-val :lambda-list '(m))
(cl:defmethod prob_exist-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:prob_exist-val is deprecated.  Use msgs_1515-msg:prob_exist instead.")
  (prob_exist m))

(cl:ensure-generic-function 'obstacle_class-val :lambda-list '(m))
(cl:defmethod obstacle_class-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:obstacle_class-val is deprecated.  Use msgs_1515-msg:obstacle_class instead.")
  (obstacle_class m))

(cl:ensure-generic-function 'dyn_property-val :lambda-list '(m))
(cl:defmethod dyn_property-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:dyn_property-val is deprecated.  Use msgs_1515-msg:dyn_property instead.")
  (dyn_property m))

(cl:ensure-generic-function 'meas_state-val :lambda-list '(m))
(cl:defmethod meas_state-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:meas_state-val is deprecated.  Use msgs_1515-msg:meas_state instead.")
  (meas_state m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:track_id-val is deprecated.  Use msgs_1515-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'track_status-val :lambda-list '(m))
(cl:defmethod track_status-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:track_status-val is deprecated.  Use msgs_1515-msg:track_status instead.")
  (track_status m))

(cl:ensure-generic-function 'prbty_exstn-val :lambda-list '(m))
(cl:defmethod prbty_exstn-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:prbty_exstn-val is deprecated.  Use msgs_1515-msg:prbty_exstn instead.")
  (prbty_exstn m))

(cl:ensure-generic-function 'prbty_prsntn-val :lambda-list '(m))
(cl:defmethod prbty_prsntn-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:prbty_prsntn-val is deprecated.  Use msgs_1515-msg:prbty_prsntn instead.")
  (prbty_prsntn m))

(cl:ensure-generic-function 'prbty_detn-val :lambda-list '(m))
(cl:defmethod prbty_detn-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:prbty_detn-val is deprecated.  Use msgs_1515-msg:prbty_detn instead.")
  (prbty_detn m))

(cl:ensure-generic-function 'prbty_clutr-val :lambda-list '(m))
(cl:defmethod prbty_clutr-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:prbty_clutr-val is deprecated.  Use msgs_1515-msg:prbty_clutr instead.")
  (prbty_clutr m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:covariance-val is deprecated.  Use msgs_1515-msg:covariance instead.")
  (covariance m))

(cl:ensure-generic-function 'R-val :lambda-list '(m))
(cl:defmethod R-val ((m <ObstacleProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_1515-msg:R-val is deprecated.  Use msgs_1515-msg:R instead.")
  (R m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleProperties>) ostream)
  "Serializes a message object of type '<ObstacleProperties>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blinker_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cut_in_and_out)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle_brake_lights) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obstacle_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cipv_flag) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radar_pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radar_vel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_match_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'matched_radar_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'matched_radar_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'obstacle_scale_change))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle_replaced) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_obstacle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'me_obstacle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'me_obstacle_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prob_exist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obstacle_class))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obstacle_class))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dyn_property))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dyn_property))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'meas_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prbty_exstn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prbty_prsntn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prbty_detn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prbty_clutr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'R))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleProperties>) istream)
  "Deserializes a message object of type '<ObstacleProperties>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blinker_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cut_in_and_out)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_status)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obstacle_brake_lights) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obstacle_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_lane)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cipv_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radar_pos_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radar_vel_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_match_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'matched_radar_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'matched_radar_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obstacle_scale_change) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'obstacle_replaced) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_obstacle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'me_obstacle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'me_obstacle_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prob_exist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obstacle_class) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obstacle_class) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dyn_property) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dyn_property) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'meas_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prbty_exstn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prbty_prsntn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prbty_detn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prbty_clutr) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'R) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'R)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleProperties>)))
  "Returns string type for a message object of type '<ObstacleProperties>"
  "msgs_1515/ObstacleProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleProperties)))
  "Returns string type for a message object of type 'ObstacleProperties"
  "msgs_1515/ObstacleProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleProperties>)))
  "Returns md5sum for a message object of type '<ObstacleProperties>"
  "f6834dd076a8cd9f04bc04f672112493")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleProperties)))
  "Returns md5sum for a message object of type 'ObstacleProperties"
  "f6834dd076a8cd9f04bc04f672112493")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleProperties>)))
  "Returns full string definition for message of type '<ObstacleProperties>"
  (cl:format cl:nil "uint8 blinker_info~%uint8 cut_in_and_out~%uint8 obstacle_type~%uint8 obstacle_status~%bool obstacle_brake_lights~%uint8 obstacle_valid~%uint16 obstacle_age~%uint8 obstacle_lane~%bool cipv_flag~%float32 radar_pos_x~%float32 radar_vel_x~%uint8 radar_match_confidence~%uint16 matched_radar_id~%float64 obstacle_scale_change~%bool obstacle_replaced~%uint8 radar_obstacle_id~%uint16 me_obstacle_id~%float32 rcs~%float32 prob_exist~%string obstacle_class~%string dyn_property~%uint8 meas_state~%uint16 track_id~%uint8 track_status~%float64 prbty_exstn~%float64 prbty_prsntn~%float64 prbty_detn~%float64 prbty_clutr~%float64[] covariance~%float64[] R~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleProperties)))
  "Returns full string definition for message of type 'ObstacleProperties"
  (cl:format cl:nil "uint8 blinker_info~%uint8 cut_in_and_out~%uint8 obstacle_type~%uint8 obstacle_status~%bool obstacle_brake_lights~%uint8 obstacle_valid~%uint16 obstacle_age~%uint8 obstacle_lane~%bool cipv_flag~%float32 radar_pos_x~%float32 radar_vel_x~%uint8 radar_match_confidence~%uint16 matched_radar_id~%float64 obstacle_scale_change~%bool obstacle_replaced~%uint8 radar_obstacle_id~%uint16 me_obstacle_id~%float32 rcs~%float32 prob_exist~%string obstacle_class~%string dyn_property~%uint8 meas_state~%uint16 track_id~%uint8 track_status~%float64 prbty_exstn~%float64 prbty_prsntn~%float64 prbty_detn~%float64 prbty_clutr~%float64[] covariance~%float64[] R~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleProperties>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     2
     1
     1
     4
     4
     1
     2
     8
     1
     1
     2
     4
     4
     4 (cl:length (cl:slot-value msg 'obstacle_class))
     4 (cl:length (cl:slot-value msg 'dyn_property))
     1
     2
     1
     8
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'R) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleProperties
    (cl:cons ':blinker_info (blinker_info msg))
    (cl:cons ':cut_in_and_out (cut_in_and_out msg))
    (cl:cons ':obstacle_type (obstacle_type msg))
    (cl:cons ':obstacle_status (obstacle_status msg))
    (cl:cons ':obstacle_brake_lights (obstacle_brake_lights msg))
    (cl:cons ':obstacle_valid (obstacle_valid msg))
    (cl:cons ':obstacle_age (obstacle_age msg))
    (cl:cons ':obstacle_lane (obstacle_lane msg))
    (cl:cons ':cipv_flag (cipv_flag msg))
    (cl:cons ':radar_pos_x (radar_pos_x msg))
    (cl:cons ':radar_vel_x (radar_vel_x msg))
    (cl:cons ':radar_match_confidence (radar_match_confidence msg))
    (cl:cons ':matched_radar_id (matched_radar_id msg))
    (cl:cons ':obstacle_scale_change (obstacle_scale_change msg))
    (cl:cons ':obstacle_replaced (obstacle_replaced msg))
    (cl:cons ':radar_obstacle_id (radar_obstacle_id msg))
    (cl:cons ':me_obstacle_id (me_obstacle_id msg))
    (cl:cons ':rcs (rcs msg))
    (cl:cons ':prob_exist (prob_exist msg))
    (cl:cons ':obstacle_class (obstacle_class msg))
    (cl:cons ':dyn_property (dyn_property msg))
    (cl:cons ':meas_state (meas_state msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':track_status (track_status msg))
    (cl:cons ':prbty_exstn (prbty_exstn msg))
    (cl:cons ':prbty_prsntn (prbty_prsntn msg))
    (cl:cons ':prbty_detn (prbty_detn msg))
    (cl:cons ':prbty_clutr (prbty_clutr msg))
    (cl:cons ':covariance (covariance msg))
    (cl:cons ':R (R msg))
))
