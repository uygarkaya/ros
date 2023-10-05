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

class AutonomousStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
      this.lka_status = null;
      this.acc_status = null;
      this.acc_mode = null;
      this.set_speed = null;
      this.dm_mode = null;
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
      if (initObj.hasOwnProperty('lka_status')) {
        this.lka_status = initObj.lka_status
      }
      else {
        this.lka_status = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('acc_status')) {
        this.acc_status = initObj.acc_status
      }
      else {
        this.acc_status = new std_msgs.msg.Int8();
      }
      if (initObj.hasOwnProperty('acc_mode')) {
        this.acc_mode = initObj.acc_mode
      }
      else {
        this.acc_mode = new std_msgs.msg.Int8();
      }
      if (initObj.hasOwnProperty('set_speed')) {
        this.set_speed = initObj.set_speed
      }
      else {
        this.set_speed = new std_msgs.msg.Int8();
      }
      if (initObj.hasOwnProperty('dm_mode')) {
        this.dm_mode = initObj.dm_mode
      }
      else {
        this.dm_mode = new std_msgs.msg.Int8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutonomousStates
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [lka_status]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.lka_status, buffer, bufferOffset);
    // Serialize message field [acc_status]
    bufferOffset = std_msgs.msg.Int8.serialize(obj.acc_status, buffer, bufferOffset);
    // Serialize message field [acc_mode]
    bufferOffset = std_msgs.msg.Int8.serialize(obj.acc_mode, buffer, bufferOffset);
    // Serialize message field [set_speed]
    bufferOffset = std_msgs.msg.Int8.serialize(obj.set_speed, buffer, bufferOffset);
    // Serialize message field [dm_mode]
    bufferOffset = std_msgs.msg.Int8.serialize(obj.dm_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutonomousStates
    let len;
    let data = new AutonomousStates(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lka_status]
    data.lka_status = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_status]
    data.acc_status = std_msgs.msg.Int8.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_mode]
    data.acc_mode = std_msgs.msg.Int8.deserialize(buffer, bufferOffset);
    // Deserialize message field [set_speed]
    data.set_speed = std_msgs.msg.Int8.deserialize(buffer, bufferOffset);
    // Deserialize message field [dm_mode]
    data.dm_mode = std_msgs.msg.Int8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.frame_id.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/AutonomousStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c16518f721ec6e01d4ec26824c39854c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
      uint32 seq
      time stamp
      string frame_id
    std_msgs/Bool lka_status
    std_msgs/Int8 acc_status
    std_msgs/Int8 acc_mode
    std_msgs/Int8 set_speed
    std_msgs/Int8 dm_mode
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
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: std_msgs/Int8
    int8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutonomousStates(null);
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

    if (msg.lka_status !== undefined) {
      resolved.lka_status = std_msgs.msg.Bool.Resolve(msg.lka_status)
    }
    else {
      resolved.lka_status = new std_msgs.msg.Bool()
    }

    if (msg.acc_status !== undefined) {
      resolved.acc_status = std_msgs.msg.Int8.Resolve(msg.acc_status)
    }
    else {
      resolved.acc_status = new std_msgs.msg.Int8()
    }

    if (msg.acc_mode !== undefined) {
      resolved.acc_mode = std_msgs.msg.Int8.Resolve(msg.acc_mode)
    }
    else {
      resolved.acc_mode = new std_msgs.msg.Int8()
    }

    if (msg.set_speed !== undefined) {
      resolved.set_speed = std_msgs.msg.Int8.Resolve(msg.set_speed)
    }
    else {
      resolved.set_speed = new std_msgs.msg.Int8()
    }

    if (msg.dm_mode !== undefined) {
      resolved.dm_mode = std_msgs.msg.Int8.Resolve(msg.dm_mode)
    }
    else {
      resolved.dm_mode = new std_msgs.msg.Int8()
    }

    return resolved;
    }
};

module.exports = AutonomousStates;
