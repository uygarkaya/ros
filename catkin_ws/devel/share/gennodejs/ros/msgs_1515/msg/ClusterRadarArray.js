// Auto-generated. Do not edit!

// (in-package msgs_1515.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ClusterRadar = require('./ClusterRadar.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ClusterRadarArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.clusterRadarArray = null;
      this.nof_targetsnear = null;
      this.nof_targetsfar = null;
      this.meas_counter = null;
      this.interface_version = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('clusterRadarArray')) {
        this.clusterRadarArray = initObj.clusterRadarArray
      }
      else {
        this.clusterRadarArray = [];
      }
      if (initObj.hasOwnProperty('nof_targetsnear')) {
        this.nof_targetsnear = initObj.nof_targetsnear
      }
      else {
        this.nof_targetsnear = 0.0;
      }
      if (initObj.hasOwnProperty('nof_targetsfar')) {
        this.nof_targetsfar = initObj.nof_targetsfar
      }
      else {
        this.nof_targetsfar = 0.0;
      }
      if (initObj.hasOwnProperty('meas_counter')) {
        this.meas_counter = initObj.meas_counter
      }
      else {
        this.meas_counter = 0.0;
      }
      if (initObj.hasOwnProperty('interface_version')) {
        this.interface_version = initObj.interface_version
      }
      else {
        this.interface_version = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterRadarArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [clusterRadarArray]
    // Serialize the length for message field [clusterRadarArray]
    bufferOffset = _serializer.uint32(obj.clusterRadarArray.length, buffer, bufferOffset);
    obj.clusterRadarArray.forEach((val) => {
      bufferOffset = ClusterRadar.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [nof_targetsnear]
    bufferOffset = _serializer.float32(obj.nof_targetsnear, buffer, bufferOffset);
    // Serialize message field [nof_targetsfar]
    bufferOffset = _serializer.float32(obj.nof_targetsfar, buffer, bufferOffset);
    // Serialize message field [meas_counter]
    bufferOffset = _serializer.float32(obj.meas_counter, buffer, bufferOffset);
    // Serialize message field [interface_version]
    bufferOffset = _serializer.float32(obj.interface_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterRadarArray
    let len;
    let data = new ClusterRadarArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [clusterRadarArray]
    // Deserialize array length for message field [clusterRadarArray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.clusterRadarArray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.clusterRadarArray[i] = ClusterRadar.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [nof_targetsnear]
    data.nof_targetsnear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nof_targetsfar]
    data.nof_targetsfar = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [meas_counter]
    data.meas_counter = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interface_version]
    data.interface_version = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.clusterRadarArray.forEach((val) => {
      length += ClusterRadar.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/ClusterRadarArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3788d9ac9895b49d2a932679c4bf0315';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ClusterRadar[] clusterRadarArray
    float32 nof_targetsnear
    float32 nof_targetsfar
    float32 meas_counter
    float32 interface_version
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
    MSG: msgs_1515/ClusterRadar
    Header header
    uint8 target_id
    float32 longitude_dist
    float32 lateral_dist
    float32 longitude_vel
    float32 lateral_vel
    float32 rcs
    float32 DynProp
    float32 std_dev_long_dist
    float32 std_dev_lat_dist
    float32 std_dev_long_vel
    float32 std_dev_lat_vel
    float32 false_alarm_prob
    float32 validty_state
    float32 doppler_state
    bool static_check
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClusterRadarArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.clusterRadarArray !== undefined) {
      resolved.clusterRadarArray = new Array(msg.clusterRadarArray.length);
      for (let i = 0; i < resolved.clusterRadarArray.length; ++i) {
        resolved.clusterRadarArray[i] = ClusterRadar.Resolve(msg.clusterRadarArray[i]);
      }
    }
    else {
      resolved.clusterRadarArray = []
    }

    if (msg.nof_targetsnear !== undefined) {
      resolved.nof_targetsnear = msg.nof_targetsnear;
    }
    else {
      resolved.nof_targetsnear = 0.0
    }

    if (msg.nof_targetsfar !== undefined) {
      resolved.nof_targetsfar = msg.nof_targetsfar;
    }
    else {
      resolved.nof_targetsfar = 0.0
    }

    if (msg.meas_counter !== undefined) {
      resolved.meas_counter = msg.meas_counter;
    }
    else {
      resolved.meas_counter = 0.0
    }

    if (msg.interface_version !== undefined) {
      resolved.interface_version = msg.interface_version;
    }
    else {
      resolved.interface_version = 0.0
    }

    return resolved;
    }
};

module.exports = ClusterRadarArray;
