;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::ContiList)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'ContiList (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::CONTILIST")
  (make-package "MSGS_1515::CONTILIST"))

(in-package "ROS")
;;//! \htmlinclude ContiList.msg.html


(defclass msgs_1515::ContiList
  :super ros::object
  :slots (_nof_objects _meas_counter _interface_version ))

(defmethod msgs_1515::ContiList
  (:init
   (&key
    ((:nof_objects __nof_objects) 0)
    ((:meas_counter __meas_counter) 0)
    ((:interface_version __interface_version) 0)
    )
   (send-super :init)
   (setq _nof_objects (round __nof_objects))
   (setq _meas_counter (round __meas_counter))
   (setq _interface_version (round __interface_version))
   self)
  (:nof_objects
   (&optional __nof_objects)
   (if __nof_objects (setq _nof_objects __nof_objects)) _nof_objects)
  (:meas_counter
   (&optional __meas_counter)
   (if __meas_counter (setq _meas_counter __meas_counter)) _meas_counter)
  (:interface_version
   (&optional __interface_version)
   (if __interface_version (setq _interface_version __interface_version)) _interface_version)
  (:serialization-length
   ()
   (+
    ;; uint8 _nof_objects
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
     ;; uint8 _nof_objects
       (write-byte _nof_objects s)
     ;; uint32 _meas_counter
       (write-long _meas_counter s)
     ;; uint8 _interface_version
       (write-byte _interface_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _nof_objects
     (setq _nof_objects (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _meas_counter
     (setq _meas_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _interface_version
     (setq _interface_version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msgs_1515::ContiList :md5sum-) "2a28291b0d17e16489f6a48ab5e30241")
(setf (get msgs_1515::ContiList :datatype-) "msgs_1515/ContiList")
(setf (get msgs_1515::ContiList :definition-)
      "uint8 nof_objects
uint32 meas_counter
uint8 interface_version
")



(provide :msgs_1515/ContiList "2a28291b0d17e16489f6a48ab5e30241")


