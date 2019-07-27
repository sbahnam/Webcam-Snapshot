; Auto-generated. Do not edit!


(cl:in-package webcam_snapshot-srv)


;//! \htmlinclude take_snapshot-request.msg.html

(cl:defclass <take_snapshot-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass take_snapshot-request (<take_snapshot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <take_snapshot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'take_snapshot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webcam_snapshot-srv:<take_snapshot-request> is deprecated: use webcam_snapshot-srv:take_snapshot-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <take_snapshot-request>) ostream)
  "Serializes a message object of type '<take_snapshot-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <take_snapshot-request>) istream)
  "Deserializes a message object of type '<take_snapshot-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<take_snapshot-request>)))
  "Returns string type for a service object of type '<take_snapshot-request>"
  "webcam_snapshot/take_snapshotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'take_snapshot-request)))
  "Returns string type for a service object of type 'take_snapshot-request"
  "webcam_snapshot/take_snapshotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<take_snapshot-request>)))
  "Returns md5sum for a message object of type '<take_snapshot-request>"
  "5fdcda0f95399f6b72fea1643acc7e4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'take_snapshot-request)))
  "Returns md5sum for a message object of type 'take_snapshot-request"
  "5fdcda0f95399f6b72fea1643acc7e4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<take_snapshot-request>)))
  "Returns full string definition for message of type '<take_snapshot-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'take_snapshot-request)))
  "Returns full string definition for message of type 'take_snapshot-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <take_snapshot-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <take_snapshot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'take_snapshot-request
))
;//! \htmlinclude take_snapshot-response.msg.html

(cl:defclass <take_snapshot-response> (roslisp-msg-protocol:ros-message)
  ((confirmation
    :reader confirmation
    :initarg :confirmation
    :type cl:string
    :initform ""))
)

(cl:defclass take_snapshot-response (<take_snapshot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <take_snapshot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'take_snapshot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webcam_snapshot-srv:<take_snapshot-response> is deprecated: use webcam_snapshot-srv:take_snapshot-response instead.")))

(cl:ensure-generic-function 'confirmation-val :lambda-list '(m))
(cl:defmethod confirmation-val ((m <take_snapshot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webcam_snapshot-srv:confirmation-val is deprecated.  Use webcam_snapshot-srv:confirmation instead.")
  (confirmation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <take_snapshot-response>) ostream)
  "Serializes a message object of type '<take_snapshot-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'confirmation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'confirmation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <take_snapshot-response>) istream)
  "Deserializes a message object of type '<take_snapshot-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'confirmation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'confirmation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<take_snapshot-response>)))
  "Returns string type for a service object of type '<take_snapshot-response>"
  "webcam_snapshot/take_snapshotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'take_snapshot-response)))
  "Returns string type for a service object of type 'take_snapshot-response"
  "webcam_snapshot/take_snapshotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<take_snapshot-response>)))
  "Returns md5sum for a message object of type '<take_snapshot-response>"
  "5fdcda0f95399f6b72fea1643acc7e4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'take_snapshot-response)))
  "Returns md5sum for a message object of type 'take_snapshot-response"
  "5fdcda0f95399f6b72fea1643acc7e4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<take_snapshot-response>)))
  "Returns full string definition for message of type '<take_snapshot-response>"
  (cl:format cl:nil "string confirmation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'take_snapshot-response)))
  "Returns full string definition for message of type 'take_snapshot-response"
  (cl:format cl:nil "string confirmation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <take_snapshot-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'confirmation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <take_snapshot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'take_snapshot-response
    (cl:cons ':confirmation (confirmation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'take_snapshot)))
  'take_snapshot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'take_snapshot)))
  'take_snapshot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'take_snapshot)))
  "Returns string type for a service object of type '<take_snapshot>"
  "webcam_snapshot/take_snapshot")