;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::TSLR_SpdLim)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'TSLR_SpdLim (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::TSLR_SPDLIM")
  (make-package "MSGS_1515::TSLR_SPDLIM"))

(in-package "ROS")
;;//! \htmlinclude TSLR_SpdLim.msg.html


(defclass msgs_1515::TSLR_SpdLim
  :super ros::object
  :slots (_speed_limit ))

(defmethod msgs_1515::TSLR_SpdLim
  (:init
   (&key
    ((:speed_limit __speed_limit) 0)
    )
   (send-super :init)
   (setq _speed_limit (round __speed_limit))
   self)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:serialization-length
   ()
   (+
    ;; int64 _speed_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _speed_limit
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _speed_limit (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _speed_limit) (= (length (_speed_limit . bv)) 2)) ;; bignum
              (write-long (ash (elt (_speed_limit . bv) 0) 0) s)
              (write-long (ash (elt (_speed_limit . bv) 1) -1) s))
             ((and (class _speed_limit) (= (length (_speed_limit . bv)) 1)) ;; big1
              (write-long (elt (_speed_limit . bv) 0) s)
              (write-long (if (>= _speed_limit 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _speed_limit s)(write-long (if (>= _speed_limit 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _speed_limit
#+(or :alpha :irix6 :x86_64)
      (setf _speed_limit (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _speed_limit (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get msgs_1515::TSLR_SpdLim :md5sum-) "e29ee14bdb0dbf17f518e9f21a5a195c")
(setf (get msgs_1515::TSLR_SpdLim :datatype-) "msgs_1515/TSLR_SpdLim")
(setf (get msgs_1515::TSLR_SpdLim :definition-)
      "# TSLR Speed limit information. This will be used by ACC in order to limit ego vehicle's speed.
int64 speed_limit

")



(provide :msgs_1515/TSLR_SpdLim "e29ee14bdb0dbf17f518e9f21a5a195c")


