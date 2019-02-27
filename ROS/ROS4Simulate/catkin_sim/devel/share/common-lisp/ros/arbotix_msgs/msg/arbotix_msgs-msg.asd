
(cl:in-package :asdf)

(defsystem "arbotix_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Analog" :depends-on ("_package_Analog"))
    (:file "_package_Analog" :depends-on ("_package"))
    (:file "Digital" :depends-on ("_package_Digital"))
    (:file "_package_Digital" :depends-on ("_package"))
  ))