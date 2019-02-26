
(cl:in-package :asdf)

(defsystem "communicate-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DoDishesAction" :depends-on ("_package_DoDishesAction"))
    (:file "_package_DoDishesAction" :depends-on ("_package"))
    (:file "DoDishesActionFeedback" :depends-on ("_package_DoDishesActionFeedback"))
    (:file "_package_DoDishesActionFeedback" :depends-on ("_package"))
    (:file "DoDishesActionGoal" :depends-on ("_package_DoDishesActionGoal"))
    (:file "_package_DoDishesActionGoal" :depends-on ("_package"))
    (:file "DoDishesActionResult" :depends-on ("_package_DoDishesActionResult"))
    (:file "_package_DoDishesActionResult" :depends-on ("_package"))
    (:file "DoDishesFeedback" :depends-on ("_package_DoDishesFeedback"))
    (:file "_package_DoDishesFeedback" :depends-on ("_package"))
    (:file "DoDishesGoal" :depends-on ("_package_DoDishesGoal"))
    (:file "_package_DoDishesGoal" :depends-on ("_package"))
    (:file "DoDishesResult" :depends-on ("_package_DoDishesResult"))
    (:file "_package_DoDishesResult" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
  ))