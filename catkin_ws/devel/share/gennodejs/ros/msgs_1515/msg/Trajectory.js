// Auto-generated. Do not edit!

// (in-package msgs_1515.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.c0 = null;
      this.c1 = null;
      this.c2 = null;
      this.c3 = null;
      this.speed = null;
      this.xfinal = null;
    }
    else {
      if (initObj.hasOwnProperty('c0')) {
        this.c0 = initObj.c0
      }
      else {
        this.c0 = 0.0;
      }
      if (initObj.hasOwnProperty('c1')) {
        this.c1 = initObj.c1
      }
      else {
        this.c1 = 0.0;
      }
      if (initObj.hasOwnProperty('c2')) {
        this.c2 = initObj.c2
      }
      else {
        this.c2 = 0.0;
      }
      if (initObj.hasOwnProperty('c3')) {
        this.c3 = initObj.c3
      }
      else {
        this.c3 = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('xfinal')) {
        this.xfinal = initObj.xfinal
      }
      else {
        this.xfinal = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [c0]
    bufferOffset = _serializer.float32(obj.c0, buffer, bufferOffset);
    // Serialize message field [c1]
    bufferOffset = _serializer.float32(obj.c1, buffer, bufferOffset);
    // Serialize message field [c2]
    bufferOffset = _serializer.float32(obj.c2, buffer, bufferOffset);
    // Serialize message field [c3]
    bufferOffset = _serializer.float32(obj.c3, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [xfinal]
    bufferOffset = _serializer.float32(obj.xfinal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [c0]
    data.c0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c1]
    data.c1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c2]
    data.c2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c3]
    data.c3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xfinal]
    data.xfinal = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63195b550d635a9901faeb6cd8af9747';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 c0
    float32 c1
    float32 c2
    float32 c3
    float32 speed
    float32 xfinal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory(null);
    if (msg.c0 !== undefined) {
      resolved.c0 = msg.c0;
    }
    else {
      resolved.c0 = 0.0
    }

    if (msg.c1 !== undefined) {
      resolved.c1 = msg.c1;
    }
    else {
      resolved.c1 = 0.0
    }

    if (msg.c2 !== undefined) {
      resolved.c2 = msg.c2;
    }
    else {
      resolved.c2 = 0.0
    }

    if (msg.c3 !== undefined) {
      resolved.c3 = msg.c3;
    }
    else {
      resolved.c3 = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.xfinal !== undefined) {
      resolved.xfinal = msg.xfinal;
    }
    else {
      resolved.xfinal = 0.0
    }

    return resolved;
    }
};

module.exports = Trajectory;
