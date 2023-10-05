;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::ClusterList)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'ClusterList (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::CLUSTERLIST")
  (make-package "MSGS_1515::CLUSTERLIST"))

(in-package "ROS")
;;//! \htmlinclude ClusterList.msg.html


(defclass msgs_1515::ClusterList
  :super ros::object
  :slots (_nof_targetsnear _nof_targetsfar _meas_counter _interface_version ))

(defmethod msgs_1515::ClusterList
  (:init
   (&key
    ((:nof_targetsnear __nof_targetsnear) 0)
    ((:nof_targetsfar __nof_targetsfar) 0)
    ((:meas_counter __meas_counter) 0)
    ((:interface_version __interface_version) 0)
    )
   (send-super :init)
   (setq _nof_targetsnear (round __nof_targetsnear))
   (setq _nof_targetsfar (round __nof_targetsfar))
   (setq _meas_counter (round __meas_counter))
   (setq _interface_version (round __interface_version))
   self)
  (:nof_targetsnear
   (&optional __nof_targetsnear)
   (if __nof_targetsnear (setq _nof_targetsnear __nof_targetsnear)) _nof_targetsnear)
  (:nof_targetsfar
   (&optional __nof_targetsfar)
   (if __nof_targetsfar (setq _nof_targetsfar __nof_targetsfar)) _nof_targetsfar)
  (:meas_counter
   (&optional __meas_counter)
   (if __meas_counter (setq _meas_counter __meas_counter)) _meas_counter)
  (:interface_version
   (&optional __interface_version)
   (if __interface_version (setq _interface_version __interface_version)) _interface_version)
  (:serialization-length
   ()
   (+
    ;; uint8 _nof_targetsnear
    1
    ;; uint8 _nof_targetsfar
    1
    ;; uint32 _meas_counter
    4
    ;; uint8 _interface_version
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _nof_targetsnear
       (write-byte _nof_targetsnear s)
     ;; uint8 _nof_targetsfar
       (write-byte _nof_targetsfar s)
     ;; uint32 _meas_counter
       (write-long _meas_counter s)
     ;; uint8 _interface_version
       (write-byte _interface_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _nof_targetsnear
     (setq _nof_targetsnear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nof_targetsfar
     (setq _nof_targetsfar (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _meas_counter
     (setq _meas_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _interface_version
     (setq _interface_version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msgs_1515::ClusterList :md5sum-) "95a654931a9c98d760080cd397e1011c")
(setf (get msgs_1515::ClusterList :datatype-) "msgs_1515/ClusterList")
(setf (get msgs_1515::ClusterList :definition-)
      "uint8 nof_targetsnear
uint8 nof_targetsfar
uint32 meas_counter
uint8 interface_version
")



(provide :msgs_1515/ClusterList "95a654931a9c98d760080cd397e1011c")


