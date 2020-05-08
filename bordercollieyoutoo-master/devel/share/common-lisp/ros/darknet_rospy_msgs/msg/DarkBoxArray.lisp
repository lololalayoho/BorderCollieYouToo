; Auto-generated. Do not edit!


(cl:in-package darknet_rospy_msgs-msg)


;//! \htmlinclude DarkBoxArray.msg.html

(cl:defclass <DarkBoxArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dark_array
    :reader dark_array
    :initarg :dark_array
    :type (cl:vector darknet_rospy_msgs-msg:DarkBox)
   :initform (cl:make-array 0 :element-type 'darknet_rospy_msgs-msg:DarkBox :initial-element (cl:make-instance 'darknet_rospy_msgs-msg:DarkBox))))
)

(cl:defclass DarkBoxArray (<DarkBoxArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DarkBoxArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DarkBoxArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name darknet_rospy_msgs-msg:<DarkBoxArray> is deprecated: use darknet_rospy_msgs-msg:DarkBoxArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DarkBoxArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_rospy_msgs-msg:header-val is deprecated.  Use darknet_rospy_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dark_array-val :lambda-list '(m))
(cl:defmethod dark_array-val ((m <DarkBoxArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_rospy_msgs-msg:dark_array-val is deprecated.  Use darknet_rospy_msgs-msg:dark_array instead.")
  (dark_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DarkBoxArray>) ostream)
  "Serializes a message object of type '<DarkBoxArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dark_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dark_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DarkBoxArray>) istream)
  "Deserializes a message object of type '<DarkBoxArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dark_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dark_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'darknet_rospy_msgs-msg:DarkBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DarkBoxArray>)))
  "Returns string type for a message object of type '<DarkBoxArray>"
  "darknet_rospy_msgs/DarkBoxArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DarkBoxArray)))
  "Returns string type for a message object of type 'DarkBoxArray"
  "darknet_rospy_msgs/DarkBoxArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DarkBoxArray>)))
  "Returns md5sum for a message object of type '<DarkBoxArray>"
  "822841aecb4bb6b72d78b4ce5a699e44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DarkBoxArray)))
  "Returns md5sum for a message object of type 'DarkBoxArray"
  "822841aecb4bb6b72d78b4ce5a699e44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DarkBoxArray>)))
  "Returns full string definition for message of type '<DarkBoxArray>"
  (cl:format cl:nil "Header header~%DarkBox[] dark_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: darknet_rospy_msgs/DarkBox~%string label~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DarkBoxArray)))
  "Returns full string definition for message of type 'DarkBoxArray"
  (cl:format cl:nil "Header header~%DarkBox[] dark_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: darknet_rospy_msgs/DarkBox~%string label~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DarkBoxArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dark_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DarkBoxArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DarkBoxArray
    (cl:cons ':header (header msg))
    (cl:cons ':dark_array (dark_array msg))
))
