;; Auto-generated. Do not edit!


(when (boundp 'ros_service::service)
  (if (not (find-package "ROS_SERVICE"))
    (make-package "ROS_SERVICE"))
  (shadow 'service (find-package "ROS_SERVICE")))
(unless (find-package "ROS_SERVICE::SERVICE")
  (make-package "ROS_SERVICE::SERVICE"))
(unless (find-package "ROS_SERVICE::SERVICEREQUEST")
  (make-package "ROS_SERVICE::SERVICEREQUEST"))
(unless (find-package "ROS_SERVICE::SERVICERESPONSE")
  (make-package "ROS_SERVICE::SERVICERESPONSE"))

(in-package "ROS")





(defclass ros_service::serviceRequest
  :super ros::object
  :slots (_input1 _input2 ))

(defmethod ros_service::serviceRequest
  (:init
   (&key
    ((:input1 __input1) 0.0)
    ((:input2 __input2) 0.0)
    )
   (send-super :init)
   (setq _input1 (float __input1))
   (setq _input2 (float __input2))
   self)
  (:input1
   (&optional __input1)
   (if __input1 (setq _input1 __input1)) _input1)
  (:input2
   (&optional __input2)
   (if __input2 (setq _input2 __input2)) _input2)
  (:serialization-length
   ()
   (+
    ;; float32 _input1
    4
    ;; float32 _input2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _input1
       (sys::poke _input1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _input2
       (sys::poke _input2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _input1
     (setq _input1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _input2
     (setq _input2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_service::serviceResponse
  :super ros::object
  :slots (_result ))

(defmethod ros_service::serviceResponse
  (:init
   (&key
    ((:result __result) 0.0)
    )
   (send-super :init)
   (setq _result (float __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _result
       (sys::poke _result (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _result
     (setq _result (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_service::service
  :super ros::object
  :slots ())

(setf (get ros_service::service :md5sum-) "94f5ca12044db57606226623620720c4")
(setf (get ros_service::service :datatype-) "ros_service/service")
(setf (get ros_service::service :request) ros_service::serviceRequest)
(setf (get ros_service::service :response) ros_service::serviceResponse)

(defmethod ros_service::serviceRequest
  (:response () (instance ros_service::serviceResponse :init)))

(setf (get ros_service::serviceRequest :md5sum-) "94f5ca12044db57606226623620720c4")
(setf (get ros_service::serviceRequest :datatype-) "ros_service/serviceRequest")
(setf (get ros_service::serviceRequest :definition-)
      "float32 input1
float32 input2
---
float32 result
")

(setf (get ros_service::serviceResponse :md5sum-) "94f5ca12044db57606226623620720c4")
(setf (get ros_service::serviceResponse :datatype-) "ros_service/serviceResponse")
(setf (get ros_service::serviceResponse :definition-)
      "float32 input1
float32 input2
---
float32 result
")



(provide :ros_service/service "94f5ca12044db57606226623620720c4")


