;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::TSLR_BBox)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'TSLR_BBox (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::TSLR_BBOX")
  (make-package "MSGS_1515::TSLR_BBOX"))

(in-package "ROS")
;;//! \htmlinclude TSLR_BBox.msg.html


(defclass msgs_1515::TSLR_BBox
  :super ros::object
  :slots (_Class _probability _SpeedSignValue _ETA ))

(defmethod msgs_1515::TSLR_BBox
  (:init
   (&key
    ((:Class __Class) 0)
    ((:probability __probability) 0.0)
    ((:SpeedSignValue __SpeedSignValue) 0)
    ((:ETA __ETA) 0.0)
    )
   (send-super :init)
   (setq _Class (round __Class))
   (setq _probability (float __probability))
   (setq _SpeedSignValue (round __SpeedSignValue))
   (setq _ETA (float __ETA))
   self)
  (:Class
   (&optional __Class)
   (if __Class (setq _Class __Class)) _Class)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:SpeedSignValue
   (&optional __SpeedSignValue)
   (if __SpeedSignValue (setq _SpeedSignValue __SpeedSignValue)) _SpeedSignValue)
  (:ETA
   (&optional __ETA)
   (if __ETA (setq _ETA __ETA)) _ETA)
  (:serialization-length
   ()
   (+
    ;; int64 _Class
    8
    ;; float64 _probability
    8
    ;; int64 _SpeedSignValue
    8
    ;; float64 _ETA
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _Class
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Class (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Class) (= (length (_Class . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Class . bv) 0) 0) s)
              (write-long (ash (elt (_Class . bv) 1) -1) s))
             ((and (class _Class) (= (length (_Class . bv)) 1)) ;; big1
              (write-long (elt (_Class . bv) 0) s)
              (write-long (if (>= _Class 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Class s)(write-long (if (>= _Class 0) 0 #xffffffff) s)))
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _SpeedSignValue
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _SpeedSignValue (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _SpeedSignValue) (= (length (_SpeedSignValue . bv)) 2)) ;; bignum
              (write-long (ash (elt (_SpeedSignValue . bv) 0) 0) s)
              (write-long (ash (elt (_SpeedSignValue . bv) 1) -1) s))
             ((and (class _SpeedSignValue) (= (length (_SpeedSignValue . bv)) 1)) ;; big1
              (write-long (elt (_SpeedSignValue . bv) 0) s)
              (write-long (if (>= _SpeedSignValue 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _SpeedSignValue s)(write-long (if (>= _SpeedSignValue 0) 0 #xffffffff) s)))
     ;; float64 _ETA
       (sys::poke _ETA (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _Class
#+(or :alpha :irix6 :x86_64)
      (setf _Class (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Class (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _SpeedSignValue
#+(or :alpha :irix6 :x86_64)
      (setf _SpeedSignValue (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _SpeedSignValue (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _ETA
     (setq _ETA (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get msgs_1515::TSLR_BBox :md5sum-) "ad6be840399777361d3c87413b09edbd")
(setf (get msgs_1515::TSLR_BBox :datatype-) "msgs_1515/TSLR_BBox")
(setf (get msgs_1515::TSLR_BBox :definition-)
      "# TSLR Bouinding Boxes
int64 Class
float64 probability # between 0 and 1
# int64 xmin
# int64 ymin
# int64 xmax
# int64 ymax
# bool IsSpeedSign
int64 SpeedSignValue
float64 ETA # second

")



(provide :msgs_1515/TSLR_BBox "ad6be840399777361d3c87413b09edbd")


