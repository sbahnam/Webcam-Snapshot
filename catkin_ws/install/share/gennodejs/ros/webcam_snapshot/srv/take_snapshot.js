// Auto-generated. Do not edit!

// (in-package webcam_snapshot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class take_snapshotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type take_snapshotRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type take_snapshotRequest
    let len;
    let data = new take_snapshotRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webcam_snapshot/take_snapshotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new take_snapshotRequest(null);
    return resolved;
    }
};

class take_snapshotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.confirmation = null;
    }
    else {
      if (initObj.hasOwnProperty('confirmation')) {
        this.confirmation = initObj.confirmation
      }
      else {
        this.confirmation = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type take_snapshotResponse
    // Serialize message field [confirmation]
    bufferOffset = _serializer.string(obj.confirmation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type take_snapshotResponse
    let len;
    let data = new take_snapshotResponse(null);
    // Deserialize message field [confirmation]
    data.confirmation = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.confirmation.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webcam_snapshot/take_snapshotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fdcda0f95399f6b72fea1643acc7e4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string confirmation
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new take_snapshotResponse(null);
    if (msg.confirmation !== undefined) {
      resolved.confirmation = msg.confirmation;
    }
    else {
      resolved.confirmation = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: take_snapshotRequest,
  Response: take_snapshotResponse,
  md5sum() { return '5fdcda0f95399f6b72fea1643acc7e4b'; },
  datatype() { return 'webcam_snapshot/take_snapshot'; }
};
