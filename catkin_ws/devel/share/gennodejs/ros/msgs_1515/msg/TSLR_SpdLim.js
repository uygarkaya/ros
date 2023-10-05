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

class TSLR_SpdLim {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TSLR_SpdLim
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.int64(obj.speed_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TSLR_SpdLim
    let len;
    let data = new TSLR_SpdLim(null);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/TSLR_SpdLim';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e29ee14bdb0dbf17f518e9f21a5a195c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # TSLR Speed limit information. This will be used by ACC in order to limit ego vehicle's speed.
    int64 speed_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TSLR_SpdLim(null);
    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0
    }

    return resolved;
    }
};

module.exports = TSLR_SpdLim;
