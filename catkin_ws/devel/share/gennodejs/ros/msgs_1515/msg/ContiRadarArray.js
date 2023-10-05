// Auto-generated. Do not edit!

// (in-package msgs_1515.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ContiRadar = require('./ContiRadar.js');

//-----------------------------------------------------------

class ContiRadarArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radarTime = null;
      this.radarArray = null;
    }
    else {
      if (initObj.hasOwnProperty('radarTime')) {
        this.radarTime = initObj.radarTime
      }
      else {
        this.radarTime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('radarArray')) {
        this.radarArray = initObj.radarArray
      }
      else {
        this.radarArray = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContiRadarArray
    // Serialize message field [radarTime]
    bufferOffset = _serializer.time(obj.radarTime, buffer, bufferOffset);
    // Serialize message field [radarArray]
    // Serialize the length for message field [radarArray]
    bufferOffset = _serializer.uint32(obj.radarArray.length, buffer, bufferOffset);
    obj.radarArray.forEach((val) => {
      bufferOffset = ContiRadar.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContiRadarArray
    let len;
    let data = new ContiRadarArray(null);
    // Deserialize message field [radarTime]
    data.radarTime = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [radarArray]
    // Deserialize array length for message field [radarArray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.radarArray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.radarArray[i] = ContiRadar.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.radarArray.forEach((val) => {
      length += ContiRadar.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/ContiRadarArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ca4826b66e9da546402554f6773f48d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time radarTime
    ContiRadar[] radarArray
    
    ================================================================================
    MSG: msgs_1515/ContiRadar
    Header header
    uint8 obstacle_id
    float32 longitude_dist
    float32 lateral_dist
    float32 longitude_vel
    float32 lateral_vel
    float32 rcs
    float32 orientation_angle
    float32 length
    float32 width
    float32 prob_exist
    string obstacle_class
    string dyn_property
    uint8 meas_state
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContiRadarArray(null);
    if (msg.radarTime !== undefined) {
      resolved.radarTime = msg.radarTime;
    }
    else {
      resolved.radarTime = {secs: 0, nsecs: 0}
    }

    if (msg.radarArray !== undefined) {
      resolved.radarArray = new Array(msg.radarArray.length);
      for (let i = 0; i < resolved.radarArray.length; ++i) {
        resolved.radarArray[i] = ContiRadar.Resolve(msg.radarArray[i]);
      }
    }
    else {
      resolved.radarArray = []
    }

    return resolved;
    }
};

module.exports = ContiRadarArray;
