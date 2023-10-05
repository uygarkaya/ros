;; Auto-generated. Do not edit!


(when (boundp 'msgs_1515::Collision_Object)
  (if (not (find-package "MSGS_1515"))
    (make-package "MSGS_1515"))
  (shadow 'Collision_Object (find-package "MSGS_1515")))
(unless (find-package "MSGS_1515::COLLISION_OBJECT")
  (make-package "MSGS_1515::COLLISION_OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Collision_Object.msg.html


(defclass msgs_1515::Collision_Object
  :super ros::object
  :slots (_xPos _yPos _speed ))

(defmethod msgs_1515::Collision_Object
  (:init
   (&key
    ((:xPos __xPos) 0.0)
    ((:yPos __yPos) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _xPos (float __xPos))
   (setq _yPos (float __yPos))
   (setq _speed (float __speed))
   self)
  (:xPos
   (&optional __xPos)
   (if __xPos (setq _xPos __xPos)) _xPos)
  (:yPos
   (&optional __yPos)
   (if __yPos (setq _yPos __yPos)) _yPos)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _xPos
    4
    ;; float32 _yPos
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _xPos
       (sys::poke _xPos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yPos
       (sys::poke _yPos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _xPos
     (setq _xPos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yPos
     (setq _yPos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgs_1515::Collision_Object :md5sum-) "44b91f6215415f03230f74399b59c2e5")
(setf (get msgs_1515::Collision_Object :datatype-) "msgs_1515/Collision_Object")
(setf (get msgs_1515::Collision_Object :definition-)
      "float32 xPos
float32 yPos
float32 speed
")



(provide :msgs_1515/Collision_Object "44b91f6215415f03230f74399b59c2e5")


