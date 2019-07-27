
(cl:in-package :asdf)

(defsystem "webcam_snapshot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "take_snapshot" :depends-on ("_package_take_snapshot"))
    (:file "_package_take_snapshot" :depends-on ("_package"))
  ))