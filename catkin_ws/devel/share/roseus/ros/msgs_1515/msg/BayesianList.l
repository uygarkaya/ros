;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::BayesianList)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'BayesianList (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::BAYESIANLIST")
  (make-package "MSGS_1515::BAYESIANLIST"))

(in-package "ROS")
;;//! \htmlinclude BayesianList.msg.html


(defclass msgs_1515::BayesianList
  :super ros::object
  :slots (_Q1 _Q2 _Q3 _Q4 _Q5 _Q6 _Q7 _Q8 _Q9 _Q10 ))

(defmethod msgs_1515::BayesianList
  (:init
   (&key
    ((:Q1 __Q1) 0)
    ((:Q2 __Q2) 0)
    ((:Q3 __Q3) 0)
    ((:Q4 __Q4) 0)
    ((:Q5 __Q5) 0)
    ((:Q6 __Q6) 0)
    ((:Q7 __Q7) 0)
    ((:Q8 __Q8) 0)
    ((:Q9 __Q9) 0)
    ((:Q10 __Q10) 0)
    )
   (send-super :init)
   (setq _Q1 (round __Q1))
   (setq _Q2 (round __Q2))
   (setq _Q3 (round __Q3))
   (setq _Q4 (round __Q4))
   (setq _Q5 (round __Q5))
   (setq _Q6 (round __Q6))
   (setq _Q7 (round __Q7))
   (setq _Q8 (round __Q8))
   (setq _Q9 (round __Q9))
   (setq _Q10 (round __Q10))
   self)
  (:Q1
   (&optional __Q1)
   (if __Q1 (setq _Q1 __Q1)) _Q1)
  (:Q2
   (&optional __Q2)
   (if __Q2 (setq _Q2 __Q2)) _Q2)
  (:Q3
   (&optional __Q3)
   (if __Q3 (setq _Q3 __Q3)) _Q3)
  (:Q4
   (&optional __Q4)
   (if __Q4 (setq _Q4 __Q4)) _Q4)
  (:Q5
   (&optional __Q5)
   (if __Q5 (setq _Q5 __Q5)) _Q5)
  (:Q6
   (&optional __Q6)
   (if __Q6 (setq _Q6 __Q6)) _Q6)
  (:Q7
   (&optional __Q7)
   (if __Q7 (setq _Q7 __Q7)) _Q7)
  (:Q8
   (&optional __Q8)
   (if __Q8 (setq _Q8 __Q8)) _Q8)
  (:Q9
   (&optional __Q9)
   (if __Q9 (setq _Q9 __Q9)) _Q9)
  (:Q10
   (&optional __Q10)
   (if __Q10 (setq _Q10 __Q10)) _Q10)
  (:serialization-length
   ()
   (+
    ;; uint8 _Q1
    1
    ;; uint8 _Q2
    1
    ;; uint8 _Q3
    1
    ;; uint8 _Q4
    1
    ;; uint8 _Q5
    1
    ;; uint8 _Q6
    1
    ;; uint8 _Q7
    1
    ;; uint8 _Q8
    1
    ;; uint8 _Q9
    1
    ;; uint8 _Q10
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _Q1
       (write-byte _Q1 s)
     ;; uint8 _Q2
       (write-byte _Q2 s)
     ;; uint8 _Q3
       (write-byte _Q3 s)
     ;; uint8 _Q4
       (write-byte _Q4 s)
     ;; uint8 _Q5
       (write-byte _Q5 s)
     ;; uint8 _Q6
       (write-byte _Q6 s)
     ;; uint8 _Q7
       (write-byte _Q7 s)
     ;; uint8 _Q8
       (write-byte _Q8 s)
     ;; uint8 _Q9
       (write-byte _Q9 s)
     ;; uint8 _Q10
       (write-byte _Q10 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _Q1
     (setq _Q1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q2
     (setq _Q2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q3
     (setq _Q3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q4
     (setq _Q4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q5
     (setq _Q5 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q6
     (setq _Q6 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q7
     (setq _Q7 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q8
     (setq _Q8 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q9
     (setq _Q9 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Q10
     (setq _Q10 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msgs_1515::BayesianList :md5sum-) "27e0bc7354fd5b6934bfa9c612e9bff1")
(setf (get msgs_1515::BayesianList :datatype-) "msgs_1515/BayesianList")
(setf (get msgs_1515::BayesianList :definition-)
      "uint8 Q1
uint8 Q2
uint8 Q3
uint8 Q4
uint8 Q5
uint8 Q6
uint8 Q7
uint8 Q8
uint8 Q9
uint8 Q10
")



(provide :msgs_1515/BayesianList "27e0bc7354fd5b6934bfa9c612e9bff1")


