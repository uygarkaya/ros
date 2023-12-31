;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::Trajectory)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'Trajectory (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::TRAJECTORY")
  (make-package "MSGS_1515::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass msgs_1515::Trajectory
  :super ros::object
  :slots (_c0 _c1 _c2 _c3 _speed _xfinal ))

(defmethod msgs_1515::Trajectory
  (:init
   (&key
    ((:c0 __c0) 0.0)
    ((:c1 __c1) 0.0)
    ((:c2 __c2) 0.0)
    ((:c3 __c3) 0.0)
    ((:speed __speed) 0.0)
    ((:xfinal __xfinal) 0.0)
    )
   (send-super :init)
   (setq _c0 (float __c0))
   (setq _c1 (float __c1))
   (setq _c2 (float __c2))
   (setq _c3 (float __c3))
   (setq _speed (float __speed))
   (setq _xfinal (float __xfinal))
   self)
  (:c0
   (&optional __c0)
   (if __c0 (setq _c0 __c0)) _c0)
  (:c1
   (&optional __c1)
   (if __c1 (setq _c1 __c1)) _c1)
  (:c2
   (&optional __c2)
   (if __c2 (setq _c2 __c2)) _c2)
  (:c3
   (&optional __c3)
   (if __c3 (setq _c3 __c3)) _c3)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:xfinal
   (&optional __xfinal)
   (if __xfinal (setq _xfinal __xfinal)) _xfinal)
  (:serialization-length
   ()
   (+
    ;; float32 _c0
    4
    ;; float32 _c1
    4
    ;; float32 _c2
    4
    ;; float32 _c3
    4
    ;; float32 _speed
    4
    ;; float32 _xfinal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _c0
       (sys::poke _c0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c1
       (sys::poke _c1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c2
       (sys::poke _c2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c3
       (sys::poke _c3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xfinal
       (sys::poke _xfinal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _c0
     (setq _c0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c1
     (setq _c1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c2
     (setq _c2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c3
     (setq _c3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xfinal
     (setq _xfinal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgs_1515::Trajectory :md5sum-) "63195b550d635a9901faeb6cd8af9747")
(setf (get msgs_1515::Trajectory :datatype-) "msgs_1515/Trajectory")
(setf (get msgs_1515::Trajectory :definition-)
      "float32 c0
float32 c1
float32 c2
float32 c3
float32 speed
float32 xfinal
")



(provide :msgs_1515/Trajectory "63195b550d635a9901faeb6cd8af9747")


