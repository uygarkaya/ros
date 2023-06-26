// Auto-generated. Do not edit!

// (in-package custom_massage.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.massage = null;
      this.x_position = null;
      this.y_position = null;
    }
    else {
      if (initObj.hasOwnProperty('massage')) {
        this.massage = initObj.massage
      }
      else {
        this.massage = '';
      }
      if (initObj.hasOwnProperty('x_position')) {
        this.x_position = initObj.x_position
      }
      else {
        this.x_position = 0.0;
      }
      if (initObj.hasOwnProperty('y_position')) {
        this.y_position = initObj.y_position
      }
      else {
        this.y_position = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type position
    // Serialize message field [massage]
    bufferOffset = _serializer.string(obj.massage, buffer, bufferOffset);
    // Serialize message field [x_position]
    bufferOffset = _serializer.float32(obj.x_position, buffer, bufferOffset);
    // Serialize message field [y_position]
    bufferOffset = _serializer.float32(obj.y_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type position
    let len;
    let data = new position(null);
    // Deserialize message field [massage]
    data.massage = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x_position]
    data.x_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_position]
    data.y_position = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.massage.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_massage/position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea82cc84d3bb467dc1820a0e9bfb75b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string massage
    float32 x_position
    float32 y_position
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new position(null);
    if (msg.massage !== undefined) {
      resolved.massage = msg.massage;
    }
    else {
      resolved.massage = ''
    }

    if (msg.x_position !== undefined) {
      resolved.x_position = msg.x_position;
    }
    else {
      resolved.x_position = 0.0
    }

    if (msg.y_position !== undefined) {
      resolved.y_position = msg.y_position;
    }
    else {
      resolved.y_position = 0.0
    }

    return resolved;
    }
};

module.exports = position;
