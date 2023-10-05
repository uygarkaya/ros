// Auto-generated. Do not edit!

// (in-package msgs_1515.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Collision_Object = require('./Collision_Object.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Collision_Debug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
      this.LaggingObj = null;
      this.LeadingObj = null;
      this.LowerLimit = null;
      this.UpperLimit = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('LaggingObj')) {
        this.LaggingObj = initObj.LaggingObj
      }
      else {
        this.LaggingObj = new Collision_Object();
      }
      if (initObj.hasOwnProperty('LeadingObj')) {
        this.LeadingObj = initObj.LeadingObj
      }
      else {
        this.LeadingObj = new Collision_Object();
      }
      if (initObj.hasOwnProperty('LowerLimit')) {
        this.LowerLimit = initObj.LowerLimit
      }
      else {
        this.LowerLimit = 0.0;
      }
      if (initObj.hasOwnProperty('UpperLimit')) {
        this.UpperLimit = initObj.UpperLimit
      }
      else {
        this.UpperLimit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Collision_Debug
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [LaggingObj]
    bufferOffset = Collision_Object.serialize(obj.LaggingObj, buffer, bufferOffset);
    // Serialize message field [LeadingObj]
    bufferOffset = Collision_Object.serialize(obj.LeadingObj, buffer, bufferOffset);
    // Serialize message field [LowerLimit]
    bufferOffset = _serializer.float32(obj.LowerLimit, buffer, bufferOffset);
    // Serialize message field [UpperLimit]
    bufferOffset = _serializer.float32(obj.UpperLimit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Collision_Debug
    let len;
    let data = new Collision_Debug(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [LaggingObj]
    data.LaggingObj = Collision_Object.deserialize(buffer, bufferOffset);
    // Deserialize message field [LeadingObj]
    data.LeadingObj = Collision_Object.deserialize(buffer, bufferOffset);
    // Deserialize message field [LowerLimit]
    data.LowerLimit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [UpperLimit]
    data.UpperLimit = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.frame_id.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/Collision_Debug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03f9ad5ff762f269d1f7b61bc1ae9977';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
      uint32 seq
      time stamp
      string frame_id
    Collision_Object LaggingObj
    Collision_Object LeadingObj
    float32 LowerLimit
    float32 UpperLimit
    
    
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
    MSG: msgs_1515/Collision_Object
    float32 xPos
    float32 yPos
    float32 speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Collision_Debug(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.LaggingObj !== undefined) {
      resolved.LaggingObj = Collision_Object.Resolve(msg.LaggingObj)
    }
    else {
      resolved.LaggingObj = new Collision_Object()
    }

    if (msg.LeadingObj !== undefined) {
      resolved.LeadingObj = Collision_Object.Resolve(msg.LeadingObj)
    }
    else {
      resolved.LeadingObj = new Collision_Object()
    }

    if (msg.LowerLimit !== undefined) {
      resolved.LowerLimit = msg.LowerLimit;
    }
    else {
      resolved.LowerLimit = 0.0
    }

    if (msg.UpperLimit !== undefined) {
      resolved.UpperLimit = msg.UpperLimit;
    }
    else {
      resolved.UpperLimit = 0.0
    }

    return resolved;
    }
};

module.exports = Collision_Debug;
