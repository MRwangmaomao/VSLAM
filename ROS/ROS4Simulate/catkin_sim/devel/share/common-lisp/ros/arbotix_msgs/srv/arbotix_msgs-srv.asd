
(cl:in-package :asdf)

(defsystem "arbotix_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Enable" :depends-on ("_package_Enable"))
    (:file "_package_Enable" :depends-on ("_package"))
    (:file "Relax" :depends-on ("_package_Relax"))
    (:file "_package_Relax" :depends-on ("_package"))
    (:file "SetSpeed" :depends-on ("_package_SetSpeed"))
    (:file "_package_SetSpeed" :depends-on ("_package"))
    (:file "SetupChannel" :depends-on ("_package_SetupChannel"))
    (:file "_package_SetupChannel" :depends-on ("_package"))
  ))