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

class TSLR_BBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Class = null;
      this.probability = null;
      this.SpeedSignValue = null;
      this.ETA = null;
    }
    else {
      if (initObj.hasOwnProperty('Class')) {
        this.Class = initObj.Class
      }
      else {
        this.Class = 0;
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('SpeedSignValue')) {
        this.SpeedSignValue = initObj.SpeedSignValue
      }
      else {
        this.SpeedSignValue = 0;
      }
      if (initObj.hasOwnProperty('ETA')) {
        this.ETA = initObj.ETA
      }
      else {
        this.ETA = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TSLR_BBox
    // Serialize message field [Class]
    bufferOffset = _serializer.int64(obj.Class, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float64(obj.probability, buffer, bufferOffset);
    // Serialize message field [SpeedSignValue]
    bufferOffset = _serializer.int64(obj.SpeedSignValue, buffer, bufferOffset);
    // Serialize message field [ETA]
    bufferOffset = _serializer.float64(obj.ETA, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TSLR_BBox
    let len;
    let data = new TSLR_BBox(null);
    // Deserialize message field [Class]
    data.Class = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SpeedSignValue]
    data.SpeedSignValue = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ETA]
    data.ETA = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/TSLR_BBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad6be840399777361d3c87413b09edbd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # TSLR Bouinding Boxes
    int64 Class
    float64 probability # between 0 and 1
    # int64 xmin
    # int64 ymin
    # int64 xmax
    # int64 ymax
    # bool IsSpeedSign
    int64 SpeedSignValue
    float64 ETA # second
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TSLR_BBox(null);
    if (msg.Class !== undefined) {
      resolved.Class = msg.Class;
    }
    else {
      resolved.Class = 0
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.SpeedSignValue !== undefined) {
      resolved.SpeedSignValue = msg.SpeedSignValue;
    }
    else {
      resolved.SpeedSignValue = 0
    }

    if (msg.ETA !== undefined) {
      resolved.ETA = msg.ETA;
    }
    else {
      resolved.ETA = 0.0
    }

    return resolved;
    }
};

module.exports = TSLR_BBox;
