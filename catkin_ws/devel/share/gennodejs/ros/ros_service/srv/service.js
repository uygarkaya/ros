// Auto-generated. Do not edit!

// (in-package ros_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input1 = null;
      this.input2 = null;
    }
    else {
      if (initObj.hasOwnProperty('input1')) {
        this.input1 = initObj.input1
      }
      else {
        this.input1 = 0.0;
      }
      if (initObj.hasOwnProperty('input2')) {
        this.input2 = initObj.input2
      }
      else {
        this.input2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type serviceRequest
    // Serialize message field [input1]
    bufferOffset = _serializer.float32(obj.input1, buffer, bufferOffset);
    // Serialize message field [input2]
    bufferOffset = _serializer.float32(obj.input2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type serviceRequest
    let len;
    let data = new serviceRequest(null);
    // Deserialize message field [input1]
    data.input1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [input2]
    data.input2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_service/serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7061cfc5235fe887684776d9815b0c08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 input1
    float32 input2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new serviceRequest(null);
    if (msg.input1 !== undefined) {
      resolved.input1 = msg.input1;
    }
    else {
      resolved.input1 = 0.0
    }

    if (msg.input2 !== undefined) {
      resolved.input2 = msg.input2;
    }
    else {
      resolved.input2 = 0.0
    }

    return resolved;
    }
};

class serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type serviceResponse
    // Serialize message field [result]
    bufferOffset = _serializer.float32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type serviceResponse
    let len;
    let data = new serviceResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_service/serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db954e5de3aba73b237d07575e5cac28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new serviceResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: serviceRequest,
  Response: serviceResponse,
  md5sum() { return '94f5ca12044db57606226623620720c4'; },
  datatype() { return 'ros_service/service'; }
};
