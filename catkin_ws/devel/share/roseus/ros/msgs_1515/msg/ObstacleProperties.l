;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::ObstacleProperties)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'ObstacleProperties (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::OBSTACLEPROPERTIES")
  (make-package "MSGS_1515::OBSTACLEPROPERTIES"))

(in-package "ROS")
;;//! \htmlinclude ObstacleProperties.msg.html


(defclass msgs_1515::ObstacleProperties
  :super ros::object
  :slots (_blinker_info _cut_in_and_out _obstacle_type _obstacle_status _obstacle_brake_lights _obstacle_valid _obstacle_age _obstacle_lane _cipv_flag _radar_pos_x _radar_vel_x _radar_match_confidence _matched_radar_id _obstacle_scale_change _obstacle_replaced _radar_obstacle_id _me_obstacle_id _rcs _prob_exist _obstacle_class _dyn_property _meas_state _track_id _track_status _prbty_exstn _prbty_prsntn _prbty_detn _prbty_clutr _covariance _R ))

(defmethod msgs_1515::ObstacleProperties
  (:init
   (&key
    ((:blinker_info __blinker_info) 0)
    ((:cut_in_and_out __cut_in_and_out) 0)
    ((:obstacle_type __obstacle_type) 0)
    ((:obstacle_status __obstacle_status) 0)
    ((:obstacle_brake_lights __obstacle_brake_lights) nil)
    ((:obstacle_valid __obstacle_valid) 0)
    ((:obstacle_age __obstacle_age) 0)
    ((:obstacle_lane __obstacle_lane) 0)
    ((:cipv_flag __cipv_flag) nil)
    ((:radar_pos_x __radar_pos_x) 0.0)
    ((:radar_vel_x __radar_vel_x) 0.0)
    ((:radar_match_confidence __radar_match_confidence) 0)
    ((:matched_radar_id __matched_radar_id) 0)
    ((:obstacle_scale_change __obstacle_scale_change) 0.0)
    ((:obstacle_replaced __obstacle_replaced) nil)
    ((:radar_obstacle_id __radar_obstacle_id) 0)
    ((:me_obstacle_id __me_obstacle_id) 0)
    ((:rcs __rcs) 0.0)
    ((:prob_exist __prob_exist) 0.0)
    ((:obstacle_class __obstacle_class) "")
    ((:dyn_property __dyn_property) "")
    ((:meas_state __meas_state) 0)
    ((:track_id __track_id) 0)
    ((:track_status __track_status) 0)
    ((:prbty_exstn __prbty_exstn) 0.0)
    ((:prbty_prsntn __prbty_prsntn) 0.0)
    ((:prbty_detn __prbty_detn) 0.0)
    ((:prbty_clutr __prbty_clutr) 0.0)
    ((:covariance __covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:R __R) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _blinker_info (round __blinker_info))
   (setq _cut_in_and_out (round __cut_in_and_out))
   (setq _obstacle_type (round __obstacle_type))
   (setq _obstacle_status (round __obstacle_status))
   (setq _obstacle_brake_lights __obstacle_brake_lights)
   (setq _obstacle_valid (round __obstacle_valid))
   (setq _obstacle_age (round __obstacle_age))
   (setq _obstacle_lane (round __obstacle_lane))
   (setq _cipv_flag __cipv_flag)
   (setq _radar_pos_x (float __radar_pos_x))
   (setq _radar_vel_x (float __radar_vel_x))
   (setq _radar_match_confidence (round __radar_match_confidence))
   (setq _matched_radar_id (round __matched_radar_id))
   (setq _obstacle_scale_change (float __obstacle_scale_change))
   (setq _obstacle_replaced __obstacle_replaced)
   (setq _radar_obstacle_id (round __radar_obstacle_id))
   (setq _me_obstacle_id (round __me_obstacle_id))
   (setq _rcs (float __rcs))
   (setq _prob_exist (float __prob_exist))
   (setq _obstacle_class (string __obstacle_class))
   (setq _dyn_property (string __dyn_property))
   (setq _meas_state (round __meas_state))
   (setq _track_id (round __track_id))
   (setq _track_status (round __track_status))
   (setq _prbty_exstn (float __prbty_exstn))
   (setq _prbty_prsntn (float __prbty_prsntn))
   (setq _prbty_detn (float __prbty_detn))
   (setq _prbty_clutr (float __prbty_clutr))
   (setq _covariance __covariance)
   (setq _R __R)
   self)
  (:blinker_info
   (&optional __blinker_info)
   (if __blinker_info (setq _blinker_info __blinker_info)) _blinker_info)
  (:cut_in_and_out
   (&optional __cut_in_and_out)
   (if __cut_in_and_out (setq _cut_in_and_out __cut_in_and_out)) _cut_in_and_out)
  (:obstacle_type
   (&optional __obstacle_type)
   (if __obstacle_type (setq _obstacle_type __obstacle_type)) _obstacle_type)
  (:obstacle_status
   (&optional __obstacle_status)
   (if __obstacle_status (setq _obstacle_status __obstacle_status)) _obstacle_status)
  (:obstacle_brake_lights
   (&optional __obstacle_brake_lights)
   (if __obstacle_brake_lights (setq _obstacle_brake_lights __obstacle_brake_lights)) _obstacle_brake_lights)
  (:obstacle_valid
   (&optional __obstacle_valid)
   (if __obstacle_valid (setq _obstacle_valid __obstacle_valid)) _obstacle_valid)
  (:obstacle_age
   (&optional __obstacle_age)
   (if __obstacle_age (setq _obstacle_age __obstacle_age)) _obstacle_age)
  (:obstacle_lane
   (&optional __obstacle_lane)
   (if __obstacle_lane (setq _obstacle_lane __obstacle_lane)) _obstacle_lane)
  (:cipv_flag
   (&optional __cipv_flag)
   (if __cipv_flag (setq _cipv_flag __cipv_flag)) _cipv_flag)
  (:radar_pos_x
   (&optional __radar_pos_x)
   (if __radar_pos_x (setq _radar_pos_x __radar_pos_x)) _radar_pos_x)
  (:radar_vel_x
   (&optional __radar_vel_x)
   (if __radar_vel_x (setq _radar_vel_x __radar_vel_x)) _radar_vel_x)
  (:radar_match_confidence
   (&optional __radar_match_confidence)
   (if __radar_match_confidence (setq _radar_match_confidence __radar_match_confidence)) _radar_match_confidence)
  (:matched_radar_id
   (&optional __matched_radar_id)
   (if __matched_radar_id (setq _matched_radar_id __matched_radar_id)) _matched_radar_id)
  (:obstacle_scale_change
   (&optional __obstacle_scale_change)
   (if __obstacle_scale_change (setq _obstacle_scale_change __obstacle_scale_change)) _obstacle_scale_change)
  (:obstacle_replaced
   (&optional __obstacle_replaced)
   (if __obstacle_replaced (setq _obstacle_replaced __obstacle_replaced)) _obstacle_replaced)
  (:radar_obstacle_id
   (&optional __radar_obstacle_id)
   (if __radar_obstacle_id (setq _radar_obstacle_id __radar_obstacle_id)) _radar_obstacle_id)
  (:me_obstacle_id
   (&optional __me_obstacle_id)
   (if __me_obstacle_id (setq _me_obstacle_id __me_obstacle_id)) _me_obstacle_id)
  (:rcs
   (&optional __rcs)
   (if __rcs (setq _rcs __rcs)) _rcs)
  (:prob_exist
   (&optional __prob_exist)
   (if __prob_exist (setq _prob_exist __prob_exist)) _prob_exist)
  (:obstacle_class
   (&optional __obstacle_class)
   (if __obstacle_class (setq _obstacle_class __obstacle_class)) _obstacle_class)
  (:dyn_property
   (&optional __dyn_property)
   (if __dyn_property (setq _dyn_property __dyn_property)) _dyn_property)
  (:meas_state
   (&optional __meas_state)
   (if __meas_state (setq _meas_state __meas_state)) _meas_state)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:track_status
   (&optional __track_status)
   (if __track_status (setq _track_status __track_status)) _track_status)
  (:prbty_exstn
   (&optional __prbty_exstn)
   (if __prbty_exstn (setq _prbty_exstn __prbty_exstn)) _prbty_exstn)
  (:prbty_prsntn
   (&optional __prbty_prsntn)
   (if __prbty_prsntn (setq _prbty_prsntn __prbty_prsntn)) _prbty_prsntn)
  (:prbty_detn
   (&optional __prbty_detn)
   (if __prbty_detn (setq _prbty_detn __prbty_detn)) _prbty_detn)
  (:prbty_clutr
   (&optional __prbty_clutr)
   (if __prbty_clutr (setq _prbty_clutr __prbty_clutr)) _prbty_clutr)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:serialization-length
   ()
   (+
    ;; uint8 _blinker_info
    1
    ;; uint8 _cut_in_and_out
    1
    ;; uint8 _obstacle_type
    1
    ;; uint8 _obstacle_status
    1
    ;; bool _obstacle_brake_lights
    1
    ;; uint8 _obstacle_valid
    1
    ;; uint16 _obstacle_age
    2
    ;; uint8 _obstacle_lane
    1
    ;; bool _cipv_flag
    1
    ;; float32 _radar_pos_x
    4
    ;; float32 _radar_vel_x
    4
    ;; uint8 _radar_match_confidence
    1
    ;; uint16 _matched_radar_id
    2
    ;; float64 _obstacle_scale_change
    8
    ;; bool _obstacle_replaced
    1
    ;; uint8 _radar_obstacle_id
    1
    ;; uint16 _me_obstacle_id
    2
    ;; float32 _rcs
    4
    ;; float32 _prob_exist
    4
    ;; string _obstacle_class
    4 (length _obstacle_class)
    ;; string _dyn_property
    4 (length _dyn_property)
    ;; uint8 _meas_state
    1
    ;; uint16 _track_id
    2
    ;; uint8 _track_status
    1
    ;; float64 _prbty_exstn
    8
    ;; float64 _prbty_prsntn
    8
    ;; float64 _prbty_detn
    8
    ;; float64 _prbty_clutr
    8
    ;; float64[] _covariance
    (* 8    (length _covariance)) 4
    ;; float64[] _R
    (* 8    (length _R)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _blinker_info
       (write-byte _blinker_info s)
     ;; uint8 _cut_in_and_out
       (write-byte _cut_in_and_out s)
     ;; uint8 _obstacle_type
       (write-byte _obstacle_type s)
     ;; uint8 _obstacle_status
       (write-byte _obstacle_status s)
     ;; bool _obstacle_brake_lights
       (if _obstacle_brake_lights (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _obstacle_valid
       (write-byte _obstacle_valid s)
     ;; uint16 _obstacle_age
       (write-word _obstacle_age s)
     ;; uint8 _obstacle_lane
       (write-byte _obstacle_lane s)
     ;; bool _cipv_flag
       (if _cipv_flag (write-byte -1 s) (write-byte 0 s))
     ;; float32 _radar_pos_x
       (sys::poke _radar_pos_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radar_vel_x
       (sys::poke _radar_vel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _radar_match_confidence
       (write-byte _radar_match_confidence s)
     ;; uint16 _matched_radar_id
       (write-word _matched_radar_id s)
     ;; float64 _obstacle_scale_change
       (sys::poke _obstacle_scale_change (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _obstacle_replaced
       (if _obstacle_replaced (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _radar_obstacle_id
       (write-byte _radar_obstacle_id s)
     ;; uint16 _me_obstacle_id
       (write-word _me_obstacle_id s)
     ;; float32 _rcs
       (sys::poke _rcs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prob_exist
       (sys::poke _prob_exist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _obstacle_class
       (write-long (length _obstacle_class) s) (princ _obstacle_class s)
     ;; string _dyn_property
       (write-long (length _dyn_property) s) (princ _dyn_property s)
     ;; uint8 _meas_state
       (write-byte _meas_state s)
     ;; uint16 _track_id
       (write-word _track_id s)
     ;; uint8 _track_status
       (write-byte _track_status s)
     ;; float64 _prbty_exstn
       (sys::poke _prbty_exstn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prbty_prsntn
       (sys::poke _prbty_prsntn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prbty_detn
       (sys::poke _prbty_detn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prbty_clutr
       (sys::poke _prbty_clutr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _covariance
     (write-long (length _covariance) s)
     (dotimes (i (length _covariance))
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _R
     (write-long (length _R) s)
     (dotimes (i (length _R))
       (sys::poke (elt _R i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _blinker_info
     (setq _blinker_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cut_in_and_out
     (setq _cut_in_and_out (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _obstacle_type
     (setq _obstacle_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _obstacle_status
     (setq _obstacle_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _obstacle_brake_lights
     (setq _obstacle_brake_lights (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _obstacle_valid
     (setq _obstacle_valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _obstacle_age
     (setq _obstacle_age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _obstacle_lane
     (setq _obstacle_lane (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _cipv_flag
     (setq _cipv_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _radar_pos_x
     (setq _radar_pos_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radar_vel_x
     (setq _radar_vel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _radar_match_confidence
     (setq _radar_match_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _matched_radar_id
     (setq _matched_radar_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _obstacle_scale_change
     (setq _obstacle_scale_change (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _obstacle_replaced
     (setq _obstacle_replaced (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _radar_obstacle_id
     (setq _radar_obstacle_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _me_obstacle_id
     (setq _me_obstacle_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _rcs
     (setq _rcs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prob_exist
     (setq _prob_exist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _obstacle_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obstacle_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dyn_property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dyn_property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _meas_state
     (setq _meas_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _track_id
     (setq _track_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _track_status
     (setq _track_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _prbty_exstn
     (setq _prbty_exstn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prbty_prsntn
     (setq _prbty_prsntn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prbty_detn
     (setq _prbty_detn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prbty_clutr
     (setq _prbty_clutr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _R
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _R (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _R i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get msgs_1515::ObstacleProperties :md5sum-) "f6834dd076a8cd9f04bc04f672112493")
(setf (get msgs_1515::ObstacleProperties :datatype-) "msgs_1515/ObstacleProperties")
(setf (get msgs_1515::ObstacleProperties :definition-)
      "uint8 blinker_info
uint8 cut_in_and_out
uint8 obstacle_type
uint8 obstacle_status
bool obstacle_brake_lights
uint8 obstacle_valid
uint16 obstacle_age
uint8 obstacle_lane
bool cipv_flag
float32 radar_pos_x
float32 radar_vel_x
uint8 radar_match_confidence
uint16 matched_radar_id
float64 obstacle_scale_change
bool obstacle_replaced
uint8 radar_obstacle_id
uint16 me_obstacle_id
float32 rcs
float32 prob_exist
string obstacle_class
string dyn_property
uint8 meas_state
uint16 track_id
uint8 track_status
float64 prbty_exstn
float64 prbty_prsntn
float64 prbty_detn
float64 prbty_clutr
float64[] covariance
float64[] R
")



(provide :msgs_1515/ObstacleProperties "f6834dd076a8cd9f04bc04f672112493")


