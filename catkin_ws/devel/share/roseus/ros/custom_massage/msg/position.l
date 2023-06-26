;; Auto-generated. Do not edit!


(when (boundp 'custom_massage::position)
  (if (not (find-package "CUSTOM_MASSAGE"))
    (make-package "CUSTOM_MASSAGE"))
  (shadow 'position (find-package "CUSTOM_MASSAGE")))
(unless (find-package "CUSTOM_MASSAGE::POSITION")
  (make-package "CUSTOM_MASSAGE::POSITION"))

(in-package "ROS")
;;//! \htmlinclude position.msg.html


(defclass custom_massage::position
  :super ros::object
  :slots (_massage _x_position _y_position ))

(defmethod custom_massage::position
  (:init
   (&key
    ((:massage __massage) "")
    ((:x_position __x_position) 0.0)
    ((:y_position __y_position) 0.0)
    )
   (send-super :init)
   (setq _massage (string __massage))
   (setq _x_position (float __x_position))
   (setq _y_position (float __y_position))
   self)
  (:massage
   (&optional __massage)
   (if __massage (setq _massage __massage)) _massage)
  (:x_position
   (&optional __x_position)
   (if __x_position (setq _x_position __x_position)) _x_position)
  (:y_position
   (&optional __y_position)
   (if __y_position (setq _y_position __y_position)) _y_position)
  (:serialization-length
   ()
   (+
    ;; string _massage
    4 (length _massage)
    ;; float32 _x_position
    4
    ;; float32 _y_position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _massage
       (write-long (length _massage) s) (princ _massage s)
     ;; float32 _x_position
       (sys::poke _x_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_position
       (sys::poke _y_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _massage
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _massage (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x_position
     (setq _x_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_position
     (setq _y_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_massage::position :md5sum-) "ea82cc84d3bb467dc1820a0e9bfb75b6")
(setf (get custom_massage::position :datatype-) "custom_massage/position")
(setf (get custom_massage::position :definition-)
      "string massage
float32 x_position
float32 y_position
")



(provide :custom_massage/position "ea82cc84d3bb467dc1820a0e9bfb75b6")


