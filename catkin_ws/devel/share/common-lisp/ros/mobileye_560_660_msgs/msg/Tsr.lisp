; Auto-generated. Do not edit!


(cl:in-package mobileye_560_660_msgs-msg)


;//! \htmlinclude Tsr.msg.html

(cl:defclass <Tsr> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vision_only_sign_type
    :reader vision_only_sign_type
    :initarg :vision_only_sign_type
    :type cl:fixnum
    :initform 0)
   (vision_only_supplementary_sign_type
    :reader vision_only_supplementary_sign_type
    :initarg :vision_only_supplementary_sign_type
    :type cl:fixnum
    :initform 0)
   (sign_position_x
    :reader sign_position_x
    :initarg :sign_position_x
    :type cl:float
    :initform 0.0)
   (sign_position_y
    :reader sign_position_y
    :initarg :sign_position_y
    :type cl:float
    :initform 0.0)
   (sign_position_z
    :reader sign_position_z
    :initarg :sign_position_z
    :type cl:float
    :initform 0.0)
   (filter_type
    :reader filter_type
    :initarg :filter_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Tsr (<Tsr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tsr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tsr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobileye_560_660_msgs-msg:<Tsr> is deprecated: use mobileye_560_660_msgs-msg:Tsr instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Tsr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobileye_560_660_msgs-msg:header-val is deprecated.  Use mobileye_560_660_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vision_only_sign_type-val :lambda-list '(m))
(cl:defmethod vision_only_sign_type-val ((m <Tsr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobileye_560_660_msgs-msg:vision_only_sign_type-val is deprecated.  Use mobileye_560_660_msgs-msg:vision_only_sign_type instead.")
  (vision_only_sign_type m))

(cl:ensure-generic-function 'vision_only_supplementary_sign_type-val :lambda-list '(m))
(cl:defmethod vision_only_supplementary_sign_type-val ((m <Tsr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobileye_560_660_msgs-msg:vision_only_supplementary_sign_type-val is deprecated.  Use mobileye_560_660_msgs-msg:vision_only_supplementary_sign_type instead.")
  (vision_only_supplementary_sign_type m))

(cl:ensure-generic-function 'sign_position_x-val :lambda-list '(m))
(cl:defmethod sign_position_x-val ((m <Tsr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobileye_560_660_msgs-msg:sign_position_x-val is deprecated.  Use mobileye_560_660_msgs-msg:sign_position_x instead.")
  (sign_position_x m))

(cl:ensure-generic-function 'sign_position_y-val :lambda-list '(m))
(cl:defmethod sign_position_y-val ((m <Tsr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobileye_560_660_msgs-msg:sign_position_y-val is deprecated.  Use mobileye_560_660_msgs-msg:sign_position_y instead.")
  (sign_position_y m))

(cl:ensure-generic-function 'sign_position_z-val :lambda-list '(m))
(cl:defmethod sign_position_z-val ((m <Tsr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobileye_560_660_msgs-msg:sign_position_z-val is deprecated.  Use mobileye_560_660_msgs-msg:sign_position_z instead.")
  (sign_position_z m))

(cl:ensure-generic-function 'filter_type-val :lambda-list '(m))
(cl:defmethod filter_type-val ((m <Tsr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobileye_560_660_msgs-msg:filter_type-val is deprecated.  Use mobileye_560_660_msgs-msg:filter_type instead.")
  (filter_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Tsr>)))
    "Constants for message type '<Tsr>"
  '((:SIGN_TYPE_REGULAR_10 . 0)
    (:SIGN_TYPE_REGULAR_20 . 1)
    (:SIGN_TYPE_REGULAR_30 . 2)
    (:SIGN_TYPE_REGULAR_40 . 3)
    (:SIGN_TYPE_REGULAR_50 . 4)
    (:SIGN_TYPE_REGULAR_60 . 5)
    (:SIGN_TYPE_REGULAR_70 . 6)
    (:SIGN_TYPE_REGULAR_80 . 7)
    (:SIGN_TYPE_REGULAR_90 . 8)
    (:SIGN_TYPE_REGULAR_100 . 9)
    (:SIGN_TYPE_REGULAR_110 . 10)
    (:SIGN_TYPE_REGULAR_120 . 11)
    (:SIGN_TYPE_REGULAR_130 . 12)
    (:SIGN_TYPE_REGULAR_140 . 13)
    (:SIGN_TYPE_REGULAR_END_RESTRICTION_OF_NUMBER . 20)
    (:SIGN_TYPE_ELECTRONIC_10 . 28)
    (:SIGN_TYPE_ELECTRONIC_20 . 29)
    (:SIGN_TYPE_ELECTRONIC_30 . 30)
    (:SIGN_TYPE_ELECTRONIC_40 . 31)
    (:SIGN_TYPE_ELECTRONIC_50 . 32)
    (:SIGN_TYPE_ELECTRONIC_60 . 33)
    (:SIGN_TYPE_ELECTRONIC_70 . 34)
    (:SIGN_TYPE_ELECTRONIC_80 . 35)
    (:SIGN_TYPE_ELECTRONIC_90 . 36)
    (:SIGN_TYPE_ELECTRONIC_100 . 37)
    (:SIGN_TYPE_ELECTRONIC_110 . 38)
    (:SIGN_TYPE_ELECTRONIC_120 . 39)
    (:SIGN_TYPE_ELECTRONIC_130 . 40)
    (:SIGN_TYPE_ELECTRONIC_140 . 41)
    (:SIGN_TYPE_ELECTRONIC_END_RESTRICTION_OF_NUMBER . 50)
    (:SIGN_TYPE_REGULAR_GENERAL_END_ALL_RESTRICTION . 64)
    (:SIGN_TYPE_ELECTRONIC_GENERAL_END_ALL_RESTRICTION . 65)
    (:SIGN_TYPE_REGULAR_5 . 100)
    (:SIGN_TYPE_REGULAR_15 . 101)
    (:SIGN_TYPE_REGULAR_25 . 102)
    (:SIGN_TYPE_REGULAR_35 . 103)
    (:SIGN_TYPE_REGULAR_45 . 104)
    (:SIGN_TYPE_REGULAR_55 . 105)
    (:SIGN_TYPE_REGULAR_65 . 106)
    (:SIGN_TYPE_REGULAR_75 . 107)
    (:SIGN_TYPE_REGULAR_85 . 108)
    (:SIGN_TYPE_REGULAR_95 . 109)
    (:SIGN_TYPE_REGULAR_105 . 110)
    (:SIGN_TYPE_REGULAR_115 . 111)
    (:SIGN_TYPE_REGULAR_125 . 112)
    (:SIGN_TYPE_REGULAR_135 . 113)
    (:SIGN_TYPE_REGULAR_145 . 114)
    (:SIGN_TYPE_ELECTRONIC_5 . 115)
    (:SIGN_TYPE_ELECTRONIC_15 . 116)
    (:SIGN_TYPE_ELECTRONIC_25 . 117)
    (:SIGN_TYPE_ELECTRONIC_35 . 118)
    (:SIGN_TYPE_ELECTRONIC_45 . 119)
    (:SIGN_TYPE_ELECTRONIC_55 . 120)
    (:SIGN_TYPE_ELECTRONIC_65 . 121)
    (:SIGN_TYPE_ELECTRONIC_75 . 122)
    (:SIGN_TYPE_ELECTRONIC_85 . 123)
    (:SIGN_TYPE_ELECTRONIC_95 . 124)
    (:SIGN_TYPE_ELECTRONIC_105 . 125)
    (:SIGN_TYPE_ELECTRONIC_115 . 126)
    (:SIGN_TYPE_ELECTRONIC_125 . 127)
    (:SIGN_TYPE_ELECTRONIC_135 . 128)
    (:SIGN_TYPE_ELECTRONIC_145 . 129)
    (:SIGN_TYPE_REGULAR_MOTORWAY_BEGIN . 171)
    (:SIGN_TYPE_REGULAR_END_OF_MOTORWAY . 172)
    (:SIGN_TYPE_REGULAR_EXPRESSWAY_BEGIN . 173)
    (:SIGN_TYPE_REGULAR_END_OF_EXPRESSWAY . 174)
    (:SIGN_TYPE_REGULAR_PLAYGROUND_AREA_BEGIN . 175)
    (:SIGN_TYPE_REGULAR_END_OF_PLAYGROUND_AREA . 176)
    (:SIGN_TYPE_REGULAR_NO_PASSING_START . 200)
    (:SIGN_TYPE_REGULAR_END_OF_NO_PASSING . 201)
    (:SIGN_TYPE_ELECTRONIC_NO_PASSING_START . 220)
    (:SIGN_TYPE_ELECTRONIC_END_OF_NO_PASSING . 221)
    (:SIGN_TYPE_NONE_DETECTED . 254)
    (:SIGN_TYPE_INVALID . 255)
    (:SUPP_SIGN_TYPE_NONE . 0)
    (:SUPP_SIGN_TYPE_RAIN . 1)
    (:SUPP_SIGN_TYPE_SNOW . 2)
    (:SUPP_SIGN_TYPE_TRAILER . 3)
    (:SUPP_SIGN_TYPE_TIME . 4)
    (:SUPP_SIGN_TYPE_ARROW_LEFT . 5)
    (:SUPP_SIGN_TYPE_ARROW_RIGHT . 6)
    (:SUPP_SIGN_TYPE_BEND_ARROW_LEFT . 7)
    (:SUPP_SIGN_TYPE_BEND_ARROW_RIGHT . 8)
    (:SUPP_SIGN_TYPE_TRUCK . 9)
    (:SUPP_SIGN_TYPE_DISTANCE_ARROW . 10)
    (:SUPP_SIGN_TYPE_WEIGHT . 11)
    (:SUPP_SIGN_TYPE_DISTANCE_IN . 12)
    (:SUPP_SIGN_TYPE_TRACTOR . 13)
    (:SUPP_SIGN_TYPE_SNOW_RAIN . 14)
    (:SUPP_SIGN_TYPE_SCHOOL . 15)
    (:SUPP_SIGN_TYPE_RAIN_CLOUD . 16)
    (:SUPP_SIGN_TYPE_FOG . 17)
    (:SUPP_SIGN_TYPE_HAZARDOUS_MATERIALS . 18)
    (:SUPP_SIGN_TYPE_NIGHT . 19)
    (:SUPP_SIGN_TYPE_GENERIC . 20)
    (:SUPP_SIGN_TYPE_RAPPEL . 21)
    (:SUPP_SIGN_TYPE_ZONE . 22)
    (:SUPP_SIGN_TYPE_INVALID . 255)
    (:FILTER_TYPE_NOT_FILTERED . 0)
    (:FILTER_TYPE_IRRELEVANT_TO_DRIVER . 1)
    (:FILTER_TYPE_ON_VEHICLE . 2)
    (:FILTER_TYPE_EMBEDDED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Tsr)))
    "Constants for message type 'Tsr"
  '((:SIGN_TYPE_REGULAR_10 . 0)
    (:SIGN_TYPE_REGULAR_20 . 1)
    (:SIGN_TYPE_REGULAR_30 . 2)
    (:SIGN_TYPE_REGULAR_40 . 3)
    (:SIGN_TYPE_REGULAR_50 . 4)
    (:SIGN_TYPE_REGULAR_60 . 5)
    (:SIGN_TYPE_REGULAR_70 . 6)
    (:SIGN_TYPE_REGULAR_80 . 7)
    (:SIGN_TYPE_REGULAR_90 . 8)
    (:SIGN_TYPE_REGULAR_100 . 9)
    (:SIGN_TYPE_REGULAR_110 . 10)
    (:SIGN_TYPE_REGULAR_120 . 11)
    (:SIGN_TYPE_REGULAR_130 . 12)
    (:SIGN_TYPE_REGULAR_140 . 13)
    (:SIGN_TYPE_REGULAR_END_RESTRICTION_OF_NUMBER . 20)
    (:SIGN_TYPE_ELECTRONIC_10 . 28)
    (:SIGN_TYPE_ELECTRONIC_20 . 29)
    (:SIGN_TYPE_ELECTRONIC_30 . 30)
    (:SIGN_TYPE_ELECTRONIC_40 . 31)
    (:SIGN_TYPE_ELECTRONIC_50 . 32)
    (:SIGN_TYPE_ELECTRONIC_60 . 33)
    (:SIGN_TYPE_ELECTRONIC_70 . 34)
    (:SIGN_TYPE_ELECTRONIC_80 . 35)
    (:SIGN_TYPE_ELECTRONIC_90 . 36)
    (:SIGN_TYPE_ELECTRONIC_100 . 37)
    (:SIGN_TYPE_ELECTRONIC_110 . 38)
    (:SIGN_TYPE_ELECTRONIC_120 . 39)
    (:SIGN_TYPE_ELECTRONIC_130 . 40)
    (:SIGN_TYPE_ELECTRONIC_140 . 41)
    (:SIGN_TYPE_ELECTRONIC_END_RESTRICTION_OF_NUMBER . 50)
    (:SIGN_TYPE_REGULAR_GENERAL_END_ALL_RESTRICTION . 64)
    (:SIGN_TYPE_ELECTRONIC_GENERAL_END_ALL_RESTRICTION . 65)
    (:SIGN_TYPE_REGULAR_5 . 100)
    (:SIGN_TYPE_REGULAR_15 . 101)
    (:SIGN_TYPE_REGULAR_25 . 102)
    (:SIGN_TYPE_REGULAR_35 . 103)
    (:SIGN_TYPE_REGULAR_45 . 104)
    (:SIGN_TYPE_REGULAR_55 . 105)
    (:SIGN_TYPE_REGULAR_65 . 106)
    (:SIGN_TYPE_REGULAR_75 . 107)
    (:SIGN_TYPE_REGULAR_85 . 108)
    (:SIGN_TYPE_REGULAR_95 . 109)
    (:SIGN_TYPE_REGULAR_105 . 110)
    (:SIGN_TYPE_REGULAR_115 . 111)
    (:SIGN_TYPE_REGULAR_125 . 112)
    (:SIGN_TYPE_REGULAR_135 . 113)
    (:SIGN_TYPE_REGULAR_145 . 114)
    (:SIGN_TYPE_ELECTRONIC_5 . 115)
    (:SIGN_TYPE_ELECTRONIC_15 . 116)
    (:SIGN_TYPE_ELECTRONIC_25 . 117)
    (:SIGN_TYPE_ELECTRONIC_35 . 118)
    (:SIGN_TYPE_ELECTRONIC_45 . 119)
    (:SIGN_TYPE_ELECTRONIC_55 . 120)
    (:SIGN_TYPE_ELECTRONIC_65 . 121)
    (:SIGN_TYPE_ELECTRONIC_75 . 122)
    (:SIGN_TYPE_ELECTRONIC_85 . 123)
    (:SIGN_TYPE_ELECTRONIC_95 . 124)
    (:SIGN_TYPE_ELECTRONIC_105 . 125)
    (:SIGN_TYPE_ELECTRONIC_115 . 126)
    (:SIGN_TYPE_ELECTRONIC_125 . 127)
    (:SIGN_TYPE_ELECTRONIC_135 . 128)
    (:SIGN_TYPE_ELECTRONIC_145 . 129)
    (:SIGN_TYPE_REGULAR_MOTORWAY_BEGIN . 171)
    (:SIGN_TYPE_REGULAR_END_OF_MOTORWAY . 172)
    (:SIGN_TYPE_REGULAR_EXPRESSWAY_BEGIN . 173)
    (:SIGN_TYPE_REGULAR_END_OF_EXPRESSWAY . 174)
    (:SIGN_TYPE_REGULAR_PLAYGROUND_AREA_BEGIN . 175)
    (:SIGN_TYPE_REGULAR_END_OF_PLAYGROUND_AREA . 176)
    (:SIGN_TYPE_REGULAR_NO_PASSING_START . 200)
    (:SIGN_TYPE_REGULAR_END_OF_NO_PASSING . 201)
    (:SIGN_TYPE_ELECTRONIC_NO_PASSING_START . 220)
    (:SIGN_TYPE_ELECTRONIC_END_OF_NO_PASSING . 221)
    (:SIGN_TYPE_NONE_DETECTED . 254)
    (:SIGN_TYPE_INVALID . 255)
    (:SUPP_SIGN_TYPE_NONE . 0)
    (:SUPP_SIGN_TYPE_RAIN . 1)
    (:SUPP_SIGN_TYPE_SNOW . 2)
    (:SUPP_SIGN_TYPE_TRAILER . 3)
    (:SUPP_SIGN_TYPE_TIME . 4)
    (:SUPP_SIGN_TYPE_ARROW_LEFT . 5)
    (:SUPP_SIGN_TYPE_ARROW_RIGHT . 6)
    (:SUPP_SIGN_TYPE_BEND_ARROW_LEFT . 7)
    (:SUPP_SIGN_TYPE_BEND_ARROW_RIGHT . 8)
    (:SUPP_SIGN_TYPE_TRUCK . 9)
    (:SUPP_SIGN_TYPE_DISTANCE_ARROW . 10)
    (:SUPP_SIGN_TYPE_WEIGHT . 11)
    (:SUPP_SIGN_TYPE_DISTANCE_IN . 12)
    (:SUPP_SIGN_TYPE_TRACTOR . 13)
    (:SUPP_SIGN_TYPE_SNOW_RAIN . 14)
    (:SUPP_SIGN_TYPE_SCHOOL . 15)
    (:SUPP_SIGN_TYPE_RAIN_CLOUD . 16)
    (:SUPP_SIGN_TYPE_FOG . 17)
    (:SUPP_SIGN_TYPE_HAZARDOUS_MATERIALS . 18)
    (:SUPP_SIGN_TYPE_NIGHT . 19)
    (:SUPP_SIGN_TYPE_GENERIC . 20)
    (:SUPP_SIGN_TYPE_RAPPEL . 21)
    (:SUPP_SIGN_TYPE_ZONE . 22)
    (:SUPP_SIGN_TYPE_INVALID . 255)
    (:FILTER_TYPE_NOT_FILTERED . 0)
    (:FILTER_TYPE_IRRELEVANT_TO_DRIVER . 1)
    (:FILTER_TYPE_ON_VEHICLE . 2)
    (:FILTER_TYPE_EMBEDDED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tsr>) ostream)
  "Serializes a message object of type '<Tsr>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vision_only_sign_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vision_only_supplementary_sign_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sign_position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sign_position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sign_position_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tsr>) istream)
  "Deserializes a message object of type '<Tsr>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vision_only_sign_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vision_only_supplementary_sign_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sign_position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sign_position_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sign_position_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filter_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tsr>)))
  "Returns string type for a message object of type '<Tsr>"
  "mobileye_560_660_msgs/Tsr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tsr)))
  "Returns string type for a message object of type 'Tsr"
  "mobileye_560_660_msgs/Tsr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tsr>)))
  "Returns md5sum for a message object of type '<Tsr>"
  "6181cda0894c479426a7c686589123b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tsr)))
  "Returns md5sum for a message object of type 'Tsr"
  "6181cda0894c479426a7c686589123b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tsr>)))
  "Returns full string definition for message of type '<Tsr>"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 SIGN_TYPE_REGULAR_10 = 0~%uint8 SIGN_TYPE_REGULAR_20 = 1~%uint8 SIGN_TYPE_REGULAR_30 = 2~%uint8 SIGN_TYPE_REGULAR_40 = 3~%uint8 SIGN_TYPE_REGULAR_50 = 4~%uint8 SIGN_TYPE_REGULAR_60 = 5~%uint8 SIGN_TYPE_REGULAR_70 = 6~%uint8 SIGN_TYPE_REGULAR_80 = 7~%uint8 SIGN_TYPE_REGULAR_90 = 8~%uint8 SIGN_TYPE_REGULAR_100 = 9~%uint8 SIGN_TYPE_REGULAR_110 = 10~%uint8 SIGN_TYPE_REGULAR_120 = 11~%uint8 SIGN_TYPE_REGULAR_130 = 12~%uint8 SIGN_TYPE_REGULAR_140 = 13~%uint8 SIGN_TYPE_REGULAR_END_RESTRICTION_OF_NUMBER = 20~%uint8 SIGN_TYPE_ELECTRONIC_10 = 28~%uint8 SIGN_TYPE_ELECTRONIC_20 = 29~%uint8 SIGN_TYPE_ELECTRONIC_30 = 30~%uint8 SIGN_TYPE_ELECTRONIC_40 = 31~%uint8 SIGN_TYPE_ELECTRONIC_50 = 32~%uint8 SIGN_TYPE_ELECTRONIC_60 = 33~%uint8 SIGN_TYPE_ELECTRONIC_70 = 34~%uint8 SIGN_TYPE_ELECTRONIC_80 = 35~%uint8 SIGN_TYPE_ELECTRONIC_90 = 36~%uint8 SIGN_TYPE_ELECTRONIC_100 = 37~%uint8 SIGN_TYPE_ELECTRONIC_110 = 38~%uint8 SIGN_TYPE_ELECTRONIC_120 = 39~%uint8 SIGN_TYPE_ELECTRONIC_130 = 40~%uint8 SIGN_TYPE_ELECTRONIC_140 = 41~%uint8 SIGN_TYPE_ELECTRONIC_END_RESTRICTION_OF_NUMBER = 50~%uint8 SIGN_TYPE_REGULAR_GENERAL_END_ALL_RESTRICTION = 64~%uint8 SIGN_TYPE_ELECTRONIC_GENERAL_END_ALL_RESTRICTION = 65~%uint8 SIGN_TYPE_REGULAR_5 = 100~%uint8 SIGN_TYPE_REGULAR_15 = 101~%uint8 SIGN_TYPE_REGULAR_25 = 102~%uint8 SIGN_TYPE_REGULAR_35 = 103~%uint8 SIGN_TYPE_REGULAR_45 = 104~%uint8 SIGN_TYPE_REGULAR_55 = 105~%uint8 SIGN_TYPE_REGULAR_65 = 106~%uint8 SIGN_TYPE_REGULAR_75 = 107~%uint8 SIGN_TYPE_REGULAR_85 = 108~%uint8 SIGN_TYPE_REGULAR_95 = 109~%uint8 SIGN_TYPE_REGULAR_105 = 110~%uint8 SIGN_TYPE_REGULAR_115 = 111~%uint8 SIGN_TYPE_REGULAR_125 = 112~%uint8 SIGN_TYPE_REGULAR_135 = 113~%uint8 SIGN_TYPE_REGULAR_145 = 114~%uint8 SIGN_TYPE_ELECTRONIC_5 = 115~%uint8 SIGN_TYPE_ELECTRONIC_15 = 116~%uint8 SIGN_TYPE_ELECTRONIC_25 = 117~%uint8 SIGN_TYPE_ELECTRONIC_35 = 118~%uint8 SIGN_TYPE_ELECTRONIC_45 = 119~%uint8 SIGN_TYPE_ELECTRONIC_55 = 120~%uint8 SIGN_TYPE_ELECTRONIC_65 = 121~%uint8 SIGN_TYPE_ELECTRONIC_75 = 122~%uint8 SIGN_TYPE_ELECTRONIC_85 = 123~%uint8 SIGN_TYPE_ELECTRONIC_95 = 124~%uint8 SIGN_TYPE_ELECTRONIC_105 = 125~%uint8 SIGN_TYPE_ELECTRONIC_115 = 126~%uint8 SIGN_TYPE_ELECTRONIC_125 = 127~%uint8 SIGN_TYPE_ELECTRONIC_135 = 128~%uint8 SIGN_TYPE_ELECTRONIC_145 = 129~%uint8 SIGN_TYPE_REGULAR_MOTORWAY_BEGIN = 171~%uint8 SIGN_TYPE_REGULAR_END_OF_MOTORWAY = 172~%uint8 SIGN_TYPE_REGULAR_EXPRESSWAY_BEGIN = 173~%uint8 SIGN_TYPE_REGULAR_END_OF_EXPRESSWAY = 174~%uint8 SIGN_TYPE_REGULAR_PLAYGROUND_AREA_BEGIN = 175~%uint8 SIGN_TYPE_REGULAR_END_OF_PLAYGROUND_AREA = 176~%uint8 SIGN_TYPE_REGULAR_NO_PASSING_START = 200~%uint8 SIGN_TYPE_REGULAR_END_OF_NO_PASSING = 201~%uint8 SIGN_TYPE_ELECTRONIC_NO_PASSING_START = 220~%uint8 SIGN_TYPE_ELECTRONIC_END_OF_NO_PASSING = 221~%uint8 SIGN_TYPE_NONE_DETECTED = 254~%uint8 SIGN_TYPE_INVALID = 255~%uint8 vision_only_sign_type~%~%uint8 SUPP_SIGN_TYPE_NONE = 0~%uint8 SUPP_SIGN_TYPE_RAIN = 1~%uint8 SUPP_SIGN_TYPE_SNOW = 2~%uint8 SUPP_SIGN_TYPE_TRAILER = 3~%uint8 SUPP_SIGN_TYPE_TIME = 4~%uint8 SUPP_SIGN_TYPE_ARROW_LEFT = 5~%uint8 SUPP_SIGN_TYPE_ARROW_RIGHT = 6~%uint8 SUPP_SIGN_TYPE_BEND_ARROW_LEFT = 7~%uint8 SUPP_SIGN_TYPE_BEND_ARROW_RIGHT = 8~%uint8 SUPP_SIGN_TYPE_TRUCK = 9~%uint8 SUPP_SIGN_TYPE_DISTANCE_ARROW = 10~%uint8 SUPP_SIGN_TYPE_WEIGHT = 11~%uint8 SUPP_SIGN_TYPE_DISTANCE_IN = 12~%uint8 SUPP_SIGN_TYPE_TRACTOR = 13~%uint8 SUPP_SIGN_TYPE_SNOW_RAIN = 14~%uint8 SUPP_SIGN_TYPE_SCHOOL = 15~%uint8 SUPP_SIGN_TYPE_RAIN_CLOUD = 16~%uint8 SUPP_SIGN_TYPE_FOG = 17~%uint8 SUPP_SIGN_TYPE_HAZARDOUS_MATERIALS = 18~%uint8 SUPP_SIGN_TYPE_NIGHT = 19~%uint8 SUPP_SIGN_TYPE_GENERIC = 20~%uint8 SUPP_SIGN_TYPE_RAPPEL = 21~%uint8 SUPP_SIGN_TYPE_ZONE = 22~%uint8 SUPP_SIGN_TYPE_INVALID = 255~%uint8 vision_only_supplementary_sign_type~%~%float32 sign_position_x~%float32 sign_position_y~%float32 sign_position_z~%~%uint8 FILTER_TYPE_NOT_FILTERED = 0~%uint8 FILTER_TYPE_IRRELEVANT_TO_DRIVER = 1~%uint8 FILTER_TYPE_ON_VEHICLE = 2~%uint8 FILTER_TYPE_EMBEDDED = 3~%uint8 filter_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tsr)))
  "Returns full string definition for message of type 'Tsr"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 SIGN_TYPE_REGULAR_10 = 0~%uint8 SIGN_TYPE_REGULAR_20 = 1~%uint8 SIGN_TYPE_REGULAR_30 = 2~%uint8 SIGN_TYPE_REGULAR_40 = 3~%uint8 SIGN_TYPE_REGULAR_50 = 4~%uint8 SIGN_TYPE_REGULAR_60 = 5~%uint8 SIGN_TYPE_REGULAR_70 = 6~%uint8 SIGN_TYPE_REGULAR_80 = 7~%uint8 SIGN_TYPE_REGULAR_90 = 8~%uint8 SIGN_TYPE_REGULAR_100 = 9~%uint8 SIGN_TYPE_REGULAR_110 = 10~%uint8 SIGN_TYPE_REGULAR_120 = 11~%uint8 SIGN_TYPE_REGULAR_130 = 12~%uint8 SIGN_TYPE_REGULAR_140 = 13~%uint8 SIGN_TYPE_REGULAR_END_RESTRICTION_OF_NUMBER = 20~%uint8 SIGN_TYPE_ELECTRONIC_10 = 28~%uint8 SIGN_TYPE_ELECTRONIC_20 = 29~%uint8 SIGN_TYPE_ELECTRONIC_30 = 30~%uint8 SIGN_TYPE_ELECTRONIC_40 = 31~%uint8 SIGN_TYPE_ELECTRONIC_50 = 32~%uint8 SIGN_TYPE_ELECTRONIC_60 = 33~%uint8 SIGN_TYPE_ELECTRONIC_70 = 34~%uint8 SIGN_TYPE_ELECTRONIC_80 = 35~%uint8 SIGN_TYPE_ELECTRONIC_90 = 36~%uint8 SIGN_TYPE_ELECTRONIC_100 = 37~%uint8 SIGN_TYPE_ELECTRONIC_110 = 38~%uint8 SIGN_TYPE_ELECTRONIC_120 = 39~%uint8 SIGN_TYPE_ELECTRONIC_130 = 40~%uint8 SIGN_TYPE_ELECTRONIC_140 = 41~%uint8 SIGN_TYPE_ELECTRONIC_END_RESTRICTION_OF_NUMBER = 50~%uint8 SIGN_TYPE_REGULAR_GENERAL_END_ALL_RESTRICTION = 64~%uint8 SIGN_TYPE_ELECTRONIC_GENERAL_END_ALL_RESTRICTION = 65~%uint8 SIGN_TYPE_REGULAR_5 = 100~%uint8 SIGN_TYPE_REGULAR_15 = 101~%uint8 SIGN_TYPE_REGULAR_25 = 102~%uint8 SIGN_TYPE_REGULAR_35 = 103~%uint8 SIGN_TYPE_REGULAR_45 = 104~%uint8 SIGN_TYPE_REGULAR_55 = 105~%uint8 SIGN_TYPE_REGULAR_65 = 106~%uint8 SIGN_TYPE_REGULAR_75 = 107~%uint8 SIGN_TYPE_REGULAR_85 = 108~%uint8 SIGN_TYPE_REGULAR_95 = 109~%uint8 SIGN_TYPE_REGULAR_105 = 110~%uint8 SIGN_TYPE_REGULAR_115 = 111~%uint8 SIGN_TYPE_REGULAR_125 = 112~%uint8 SIGN_TYPE_REGULAR_135 = 113~%uint8 SIGN_TYPE_REGULAR_145 = 114~%uint8 SIGN_TYPE_ELECTRONIC_5 = 115~%uint8 SIGN_TYPE_ELECTRONIC_15 = 116~%uint8 SIGN_TYPE_ELECTRONIC_25 = 117~%uint8 SIGN_TYPE_ELECTRONIC_35 = 118~%uint8 SIGN_TYPE_ELECTRONIC_45 = 119~%uint8 SIGN_TYPE_ELECTRONIC_55 = 120~%uint8 SIGN_TYPE_ELECTRONIC_65 = 121~%uint8 SIGN_TYPE_ELECTRONIC_75 = 122~%uint8 SIGN_TYPE_ELECTRONIC_85 = 123~%uint8 SIGN_TYPE_ELECTRONIC_95 = 124~%uint8 SIGN_TYPE_ELECTRONIC_105 = 125~%uint8 SIGN_TYPE_ELECTRONIC_115 = 126~%uint8 SIGN_TYPE_ELECTRONIC_125 = 127~%uint8 SIGN_TYPE_ELECTRONIC_135 = 128~%uint8 SIGN_TYPE_ELECTRONIC_145 = 129~%uint8 SIGN_TYPE_REGULAR_MOTORWAY_BEGIN = 171~%uint8 SIGN_TYPE_REGULAR_END_OF_MOTORWAY = 172~%uint8 SIGN_TYPE_REGULAR_EXPRESSWAY_BEGIN = 173~%uint8 SIGN_TYPE_REGULAR_END_OF_EXPRESSWAY = 174~%uint8 SIGN_TYPE_REGULAR_PLAYGROUND_AREA_BEGIN = 175~%uint8 SIGN_TYPE_REGULAR_END_OF_PLAYGROUND_AREA = 176~%uint8 SIGN_TYPE_REGULAR_NO_PASSING_START = 200~%uint8 SIGN_TYPE_REGULAR_END_OF_NO_PASSING = 201~%uint8 SIGN_TYPE_ELECTRONIC_NO_PASSING_START = 220~%uint8 SIGN_TYPE_ELECTRONIC_END_OF_NO_PASSING = 221~%uint8 SIGN_TYPE_NONE_DETECTED = 254~%uint8 SIGN_TYPE_INVALID = 255~%uint8 vision_only_sign_type~%~%uint8 SUPP_SIGN_TYPE_NONE = 0~%uint8 SUPP_SIGN_TYPE_RAIN = 1~%uint8 SUPP_SIGN_TYPE_SNOW = 2~%uint8 SUPP_SIGN_TYPE_TRAILER = 3~%uint8 SUPP_SIGN_TYPE_TIME = 4~%uint8 SUPP_SIGN_TYPE_ARROW_LEFT = 5~%uint8 SUPP_SIGN_TYPE_ARROW_RIGHT = 6~%uint8 SUPP_SIGN_TYPE_BEND_ARROW_LEFT = 7~%uint8 SUPP_SIGN_TYPE_BEND_ARROW_RIGHT = 8~%uint8 SUPP_SIGN_TYPE_TRUCK = 9~%uint8 SUPP_SIGN_TYPE_DISTANCE_ARROW = 10~%uint8 SUPP_SIGN_TYPE_WEIGHT = 11~%uint8 SUPP_SIGN_TYPE_DISTANCE_IN = 12~%uint8 SUPP_SIGN_TYPE_TRACTOR = 13~%uint8 SUPP_SIGN_TYPE_SNOW_RAIN = 14~%uint8 SUPP_SIGN_TYPE_SCHOOL = 15~%uint8 SUPP_SIGN_TYPE_RAIN_CLOUD = 16~%uint8 SUPP_SIGN_TYPE_FOG = 17~%uint8 SUPP_SIGN_TYPE_HAZARDOUS_MATERIALS = 18~%uint8 SUPP_SIGN_TYPE_NIGHT = 19~%uint8 SUPP_SIGN_TYPE_GENERIC = 20~%uint8 SUPP_SIGN_TYPE_RAPPEL = 21~%uint8 SUPP_SIGN_TYPE_ZONE = 22~%uint8 SUPP_SIGN_TYPE_INVALID = 255~%uint8 vision_only_supplementary_sign_type~%~%float32 sign_position_x~%float32 sign_position_y~%float32 sign_position_z~%~%uint8 FILTER_TYPE_NOT_FILTERED = 0~%uint8 FILTER_TYPE_IRRELEVANT_TO_DRIVER = 1~%uint8 FILTER_TYPE_ON_VEHICLE = 2~%uint8 FILTER_TYPE_EMBEDDED = 3~%uint8 filter_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tsr>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tsr>))
  "Converts a ROS message object to a list"
  (cl:list 'Tsr
    (cl:cons ':header (header msg))
    (cl:cons ':vision_only_sign_type (vision_only_sign_type msg))
    (cl:cons ':vision_only_supplementary_sign_type (vision_only_supplementary_sign_type msg))
    (cl:cons ':sign_position_x (sign_position_x msg))
    (cl:cons ':sign_position_y (sign_position_y msg))
    (cl:cons ':sign_position_z (sign_position_z msg))
    (cl:cons ':filter_type (filter_type msg))
))
