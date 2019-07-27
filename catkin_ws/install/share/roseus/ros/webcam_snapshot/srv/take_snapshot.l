;; Auto-generated. Do not edit!


(when (boundp 'webcam_snapshot::take_snapshot)
  (if (not (find-package "WEBCAM_SNAPSHOT"))
    (make-package "WEBCAM_SNAPSHOT"))
  (shadow 'take_snapshot (find-package "WEBCAM_SNAPSHOT")))
(unless (find-package "WEBCAM_SNAPSHOT::TAKE_SNAPSHOT")
  (make-package "WEBCAM_SNAPSHOT::TAKE_SNAPSHOT"))
(unless (find-package "WEBCAM_SNAPSHOT::TAKE_SNAPSHOTREQUEST")
  (make-package "WEBCAM_SNAPSHOT::TAKE_SNAPSHOTREQUEST"))
(unless (find-package "WEBCAM_SNAPSHOT::TAKE_SNAPSHOTRESPONSE")
  (make-package "WEBCAM_SNAPSHOT::TAKE_SNAPSHOTRESPONSE"))

(in-package "ROS")





(defclass webcam_snapshot::take_snapshotRequest
  :super ros::object
  :slots ())

(defmethod webcam_snapshot::take_snapshotRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass webcam_snapshot::take_snapshotResponse
  :super ros::object
  :slots (_confirmation ))

(defmethod webcam_snapshot::take_snapshotResponse
  (:init
   (&key
    ((:confirmation __confirmation) "")
    )
   (send-super :init)
   (setq _confirmation (string __confirmation))
   self)
  (:confirmation
   (&optional __confirmation)
   (if __confirmation (setq _confirmation __confirmation)) _confirmation)
  (:serialization-length
   ()
   (+
    ;; string _confirmation
    4 (length _confirmation)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _confirmation
       (write-long (length _confirmation) s) (princ _confirmation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _confirmation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _confirmation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webcam_snapshot::take_snapshot
  :super ros::object
  :slots ())

(setf (get webcam_snapshot::take_snapshot :md5sum-) "5fdcda0f95399f6b72fea1643acc7e4b")
(setf (get webcam_snapshot::take_snapshot :datatype-) "webcam_snapshot/take_snapshot")
(setf (get webcam_snapshot::take_snapshot :request) webcam_snapshot::take_snapshotRequest)
(setf (get webcam_snapshot::take_snapshot :response) webcam_snapshot::take_snapshotResponse)

(defmethod webcam_snapshot::take_snapshotRequest
  (:response () (instance webcam_snapshot::take_snapshotResponse :init)))

(setf (get webcam_snapshot::take_snapshotRequest :md5sum-) "5fdcda0f95399f6b72fea1643acc7e4b")
(setf (get webcam_snapshot::take_snapshotRequest :datatype-) "webcam_snapshot/take_snapshotRequest")
(setf (get webcam_snapshot::take_snapshotRequest :definition-)
      "---
string confirmation

")

(setf (get webcam_snapshot::take_snapshotResponse :md5sum-) "5fdcda0f95399f6b72fea1643acc7e4b")
(setf (get webcam_snapshot::take_snapshotResponse :datatype-) "webcam_snapshot/take_snapshotResponse")
(setf (get webcam_snapshot::take_snapshotResponse :definition-)
      "---
string confirmation

")



(provide :webcam_snapshot/take_snapshot "5fdcda0f95399f6b72fea1643acc7e4b")


