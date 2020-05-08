
(cl:in-package :asdf)

(defsystem "darknet_rospy_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DarkBox" :depends-on ("_package_DarkBox"))
    (:file "_package_DarkBox" :depends-on ("_package"))
    (:file "DarkBoxArray" :depends-on ("_package_DarkBoxArray"))
    (:file "_package_DarkBoxArray" :depends-on ("_package"))
  ))