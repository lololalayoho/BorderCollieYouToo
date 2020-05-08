;; Auto-generated. Do not edit!


(when (boundp 'darknet_rospy_msgs::DarkBoxArray)
  (if (not (find-package "DARKNET_ROSPY_MSGS"))
    (make-package "DARKNET_ROSPY_MSGS"))
  (shadow 'DarkBoxArray (find-package "DARKNET_ROSPY_MSGS")))
(unless (find-package "DARKNET_ROSPY_MSGS::DARKBOXARRAY")
  (make-package "DARKNET_ROSPY_MSGS::DARKBOXARRAY"))

(in-package "ROS")
;;//! \htmlinclude DarkBoxArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass darknet_rospy_msgs::DarkBoxArray
  :super ros::object
  :slots (_header _dark_array ))

(defmethod darknet_rospy_msgs::DarkBoxArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:dark_array __dark_array) (let (r) (dotimes (i 0) (push (instance darknet_rospy_msgs::DarkBox :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _dark_array __dark_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:dark_array
   (&rest __dark_array)
   (if (keywordp (car __dark_array))
       (send* _dark_array __dark_array)
     (progn
       (if __dark_array (setq _dark_array (car __dark_array)))
       _dark_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; darknet_rospy_msgs/DarkBox[] _dark_array
    (apply #'+ (send-all _dark_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; darknet_rospy_msgs/DarkBox[] _dark_array
     (write-long (length _dark_array) s)
     (dolist (elem _dark_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; darknet_rospy_msgs/DarkBox[] _dark_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dark_array (let (r) (dotimes (i n) (push (instance darknet_rospy_msgs::DarkBox :init) r)) r))
     (dolist (elem- _dark_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get darknet_rospy_msgs::DarkBoxArray :md5sum-) "822841aecb4bb6b72d78b4ce5a699e44")
(setf (get darknet_rospy_msgs::DarkBoxArray :datatype-) "darknet_rospy_msgs/DarkBoxArray")
(setf (get darknet_rospy_msgs::DarkBoxArray :definition-)
      "Header header
DarkBox[] dark_array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: darknet_rospy_msgs/DarkBox
string label
float64 probability
int64 xmin
int64 ymin
int64 xmax
int64 ymax

")



(provide :darknet_rospy_msgs/DarkBoxArray "822841aecb4bb6b72d78b4ce5a699e44")


