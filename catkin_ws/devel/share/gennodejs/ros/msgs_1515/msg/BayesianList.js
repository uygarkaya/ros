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

class BayesianList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Q1 = null;
      this.Q2 = null;
      this.Q3 = null;
      this.Q4 = null;
      this.Q5 = null;
      this.Q6 = null;
      this.Q7 = null;
      this.Q8 = null;
      this.Q9 = null;
      this.Q10 = null;
    }
    else {
      if (initObj.hasOwnProperty('Q1')) {
        this.Q1 = initObj.Q1
      }
      else {
        this.Q1 = 0;
      }
      if (initObj.hasOwnProperty('Q2')) {
        this.Q2 = initObj.Q2
      }
      else {
        this.Q2 = 0;
      }
      if (initObj.hasOwnProperty('Q3')) {
        this.Q3 = initObj.Q3
      }
      else {
        this.Q3 = 0;
      }
      if (initObj.hasOwnProperty('Q4')) {
        this.Q4 = initObj.Q4
      }
      else {
        this.Q4 = 0;
      }
      if (initObj.hasOwnProperty('Q5')) {
        this.Q5 = initObj.Q5
      }
      else {
        this.Q5 = 0;
      }
      if (initObj.hasOwnProperty('Q6')) {
        this.Q6 = initObj.Q6
      }
      else {
        this.Q6 = 0;
      }
      if (initObj.hasOwnProperty('Q7')) {
        this.Q7 = initObj.Q7
      }
      else {
        this.Q7 = 0;
      }
      if (initObj.hasOwnProperty('Q8')) {
        this.Q8 = initObj.Q8
      }
      else {
        this.Q8 = 0;
      }
      if (initObj.hasOwnProperty('Q9')) {
        this.Q9 = initObj.Q9
      }
      else {
        this.Q9 = 0;
      }
      if (initObj.hasOwnProperty('Q10')) {
        this.Q10 = initObj.Q10
      }
      else {
        this.Q10 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BayesianList
    // Serialize message field [Q1]
    bufferOffset = _serializer.uint8(obj.Q1, buffer, bufferOffset);
    // Serialize message field [Q2]
    bufferOffset = _serializer.uint8(obj.Q2, buffer, bufferOffset);
    // Serialize message field [Q3]
    bufferOffset = _serializer.uint8(obj.Q3, buffer, bufferOffset);
    // Serialize message field [Q4]
    bufferOffset = _serializer.uint8(obj.Q4, buffer, bufferOffset);
    // Serialize message field [Q5]
    bufferOffset = _serializer.uint8(obj.Q5, buffer, bufferOffset);
    // Serialize message field [Q6]
    bufferOffset = _serializer.uint8(obj.Q6, buffer, bufferOffset);
    // Serialize message field [Q7]
    bufferOffset = _serializer.uint8(obj.Q7, buffer, bufferOffset);
    // Serialize message field [Q8]
    bufferOffset = _serializer.uint8(obj.Q8, buffer, bufferOffset);
    // Serialize message field [Q9]
    bufferOffset = _serializer.uint8(obj.Q9, buffer, bufferOffset);
    // Serialize message field [Q10]
    bufferOffset = _serializer.uint8(obj.Q10, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BayesianList
    let len;
    let data = new BayesianList(null);
    // Deserialize message field [Q1]
    data.Q1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q2]
    data.Q2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q3]
    data.Q3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q4]
    data.Q4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q5]
    data.Q5 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q6]
    data.Q6 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q7]
    data.Q7 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q8]
    data.Q8 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q9]
    data.Q9 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Q10]
    data.Q10 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/BayesianList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27e0bc7354fd5b6934bfa9c612e9bff1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 Q1
    uint8 Q2
    uint8 Q3
    uint8 Q4
    uint8 Q5
    uint8 Q6
    uint8 Q7
    uint8 Q8
    uint8 Q9
    uint8 Q10
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BayesianList(null);
    if (msg.Q1 !== undefined) {
      resolved.Q1 = msg.Q1;
    }
    else {
      resolved.Q1 = 0
    }

    if (msg.Q2 !== undefined) {
      resolved.Q2 = msg.Q2;
    }
    else {
      resolved.Q2 = 0
    }

    if (msg.Q3 !== undefined) {
      resolved.Q3 = msg.Q3;
    }
    else {
      resolved.Q3 = 0
    }

    if (msg.Q4 !== undefined) {
      resolved.Q4 = msg.Q4;
    }
    else {
      resolved.Q4 = 0
    }

    if (msg.Q5 !== undefined) {
      resolved.Q5 = msg.Q5;
    }
    else {
      resolved.Q5 = 0
    }

    if (msg.Q6 !== undefined) {
      resolved.Q6 = msg.Q6;
    }
    else {
      resolved.Q6 = 0
    }

    if (msg.Q7 !== undefined) {
      resolved.Q7 = msg.Q7;
    }
    else {
      resolved.Q7 = 0
    }

    if (msg.Q8 !== undefined) {
      resolved.Q8 = msg.Q8;
    }
    else {
      resolved.Q8 = 0
    }

    if (msg.Q9 !== undefined) {
      resolved.Q9 = msg.Q9;
    }
    else {
      resolved.Q9 = 0
    }

    if (msg.Q10 !== undefined) {
      resolved.Q10 = msg.Q10;
    }
    else {
      resolved.Q10 = 0
    }

    return resolved;
    }
};

module.exports = BayesianList;
