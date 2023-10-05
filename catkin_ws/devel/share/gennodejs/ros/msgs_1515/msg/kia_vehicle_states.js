// Auto-generated. Do not edit!

// (in-package msgs_1515.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class kia_vehicle_states {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.brakePressure = null;
      this.steeringAngle = null;
      this.wheelSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('brakePressure')) {
        this.brakePressure = initObj.brakePressure
      }
      else {
        this.brakePressure = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('steeringAngle')) {
        this.steeringAngle = initObj.steeringAngle
      }
      else {
        this.steeringAngle = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('wheelSpeed')) {
        this.wheelSpeed = initObj.wheelSpeed
      }
      else {
        this.wheelSpeed = new Array(4).fill(new std_msgs.msg.Float64());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kia_vehicle_states
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [brakePressure]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.brakePressure, buffer, bufferOffset);
    // Serialize message field [steeringAngle]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.steeringAngle, buffer, bufferOffset);
    // Check that the constant length array field [wheelSpeed] has the right length
    if (obj.wheelSpeed.length !== 4) {
      throw new Error('Unable to serialize array field wheelSpeed - length must be 4')
    }
    // Serialize message field [wheelSpeed]
    obj.wheelSpeed.forEach((val) => {
      bufferOffset = std_msgs.msg.Float64.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kia_vehicle_states
    let len;
    let data = new kia_vehicle_states(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [brakePressure]
    data.brakePressure = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [steeringAngle]
    data.steeringAngle = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheelSpeed]
    len = 4;
    data.wheelSpeed = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wheelSpeed[i] = std_msgs.msg.Float64.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/kia_vehicle_states';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46eaabf74bdd814e01cd08effd3efb51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/Float64 brakePressure
    std_msgs/Float64 steeringAngle
    std_msgs/Float64[4] wheelSpeed
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kia_vehicle_states(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.brakePressure !== undefined) {
      resolved.brakePressure = std_msgs.msg.Float64.Resolve(msg.brakePressure)
    }
    else {
      resolved.brakePressure = new std_msgs.msg.Float64()
    }

    if (msg.steeringAngle !== undefined) {
      resolved.steeringAngle = std_msgs.msg.Float64.Resolve(msg.steeringAngle)
    }
    else {
      resolved.steeringAngle = new std_msgs.msg.Float64()
    }

    if (msg.wheelSpeed !== undefined) {
      resolved.wheelSpeed = new Array(4)
      for (let i = 0; i < resolved.wheelSpeed.length; ++i) {
        if (msg.wheelSpeed.length > i) {
          resolved.wheelSpeed[i] = std_msgs.msg.Float64.Resolve(msg.wheelSpeed[i]);
        }
        else {
          resolved.wheelSpeed[i] = new std_msgs.msg.Float64();
        }
      }
    }
    else {
      resolved.wheelSpeed = new Array(4).fill(new std_msgs.msg.Float64())
    }

    return resolved;
    }
};

module.exports = kia_vehicle_states;
