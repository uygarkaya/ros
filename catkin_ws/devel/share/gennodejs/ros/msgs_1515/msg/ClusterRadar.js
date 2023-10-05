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

class ClusterRadar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.target_id = null;
      this.longitude_dist = null;
      this.lateral_dist = null;
      this.longitude_vel = null;
      this.lateral_vel = null;
      this.rcs = null;
      this.DynProp = null;
      this.std_dev_long_dist = null;
      this.std_dev_lat_dist = null;
      this.std_dev_long_vel = null;
      this.std_dev_lat_vel = null;
      this.false_alarm_prob = null;
      this.validty_state = null;
      this.doppler_state = null;
      this.static_check = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('target_id')) {
        this.target_id = initObj.target_id
      }
      else {
        this.target_id = 0;
      }
      if (initObj.hasOwnProperty('longitude_dist')) {
        this.longitude_dist = initObj.longitude_dist
      }
      else {
        this.longitude_dist = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_dist')) {
        this.lateral_dist = initObj.lateral_dist
      }
      else {
        this.lateral_dist = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_vel')) {
        this.longitude_vel = initObj.longitude_vel
      }
      else {
        this.longitude_vel = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_vel')) {
        this.lateral_vel = initObj.lateral_vel
      }
      else {
        this.lateral_vel = 0.0;
      }
      if (initObj.hasOwnProperty('rcs')) {
        this.rcs = initObj.rcs
      }
      else {
        this.rcs = 0.0;
      }
      if (initObj.hasOwnProperty('DynProp')) {
        this.DynProp = initObj.DynProp
      }
      else {
        this.DynProp = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev_long_dist')) {
        this.std_dev_long_dist = initObj.std_dev_long_dist
      }
      else {
        this.std_dev_long_dist = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev_lat_dist')) {
        this.std_dev_lat_dist = initObj.std_dev_lat_dist
      }
      else {
        this.std_dev_lat_dist = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev_long_vel')) {
        this.std_dev_long_vel = initObj.std_dev_long_vel
      }
      else {
        this.std_dev_long_vel = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev_lat_vel')) {
        this.std_dev_lat_vel = initObj.std_dev_lat_vel
      }
      else {
        this.std_dev_lat_vel = 0.0;
      }
      if (initObj.hasOwnProperty('false_alarm_prob')) {
        this.false_alarm_prob = initObj.false_alarm_prob
      }
      else {
        this.false_alarm_prob = 0.0;
      }
      if (initObj.hasOwnProperty('validty_state')) {
        this.validty_state = initObj.validty_state
      }
      else {
        this.validty_state = 0.0;
      }
      if (initObj.hasOwnProperty('doppler_state')) {
        this.doppler_state = initObj.doppler_state
      }
      else {
        this.doppler_state = 0.0;
      }
      if (initObj.hasOwnProperty('static_check')) {
        this.static_check = initObj.static_check
      }
      else {
        this.static_check = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterRadar
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [target_id]
    bufferOffset = _serializer.uint8(obj.target_id, buffer, bufferOffset);
    // Serialize message field [longitude_dist]
    bufferOffset = _serializer.float32(obj.longitude_dist, buffer, bufferOffset);
    // Serialize message field [lateral_dist]
    bufferOffset = _serializer.float32(obj.lateral_dist, buffer, bufferOffset);
    // Serialize message field [longitude_vel]
    bufferOffset = _serializer.float32(obj.longitude_vel, buffer, bufferOffset);
    // Serialize message field [lateral_vel]
    bufferOffset = _serializer.float32(obj.lateral_vel, buffer, bufferOffset);
    // Serialize message field [rcs]
    bufferOffset = _serializer.float32(obj.rcs, buffer, bufferOffset);
    // Serialize message field [DynProp]
    bufferOffset = _serializer.float32(obj.DynProp, buffer, bufferOffset);
    // Serialize message field [std_dev_long_dist]
    bufferOffset = _serializer.float32(obj.std_dev_long_dist, buffer, bufferOffset);
    // Serialize message field [std_dev_lat_dist]
    bufferOffset = _serializer.float32(obj.std_dev_lat_dist, buffer, bufferOffset);
    // Serialize message field [std_dev_long_vel]
    bufferOffset = _serializer.float32(obj.std_dev_long_vel, buffer, bufferOffset);
    // Serialize message field [std_dev_lat_vel]
    bufferOffset = _serializer.float32(obj.std_dev_lat_vel, buffer, bufferOffset);
    // Serialize message field [false_alarm_prob]
    bufferOffset = _serializer.float32(obj.false_alarm_prob, buffer, bufferOffset);
    // Serialize message field [validty_state]
    bufferOffset = _serializer.float32(obj.validty_state, buffer, bufferOffset);
    // Serialize message field [doppler_state]
    bufferOffset = _serializer.float32(obj.doppler_state, buffer, bufferOffset);
    // Serialize message field [static_check]
    bufferOffset = _serializer.bool(obj.static_check, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterRadar
    let len;
    let data = new ClusterRadar(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_id]
    data.target_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [longitude_dist]
    data.longitude_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_dist]
    data.lateral_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude_vel]
    data.longitude_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_vel]
    data.lateral_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rcs]
    data.rcs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DynProp]
    data.DynProp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev_long_dist]
    data.std_dev_long_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev_lat_dist]
    data.std_dev_lat_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev_long_vel]
    data.std_dev_long_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev_lat_vel]
    data.std_dev_lat_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [false_alarm_prob]
    data.false_alarm_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [validty_state]
    data.validty_state = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [doppler_state]
    data.doppler_state = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [static_check]
    data.static_check = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/ClusterRadar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb3e5405dc7c6503c3a17cff308b05b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ClusterRadar(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.target_id !== undefined) {
      resolved.target_id = msg.target_id;
    }
    else {
      resolved.target_id = 0
    }

    if (msg.longitude_dist !== undefined) {
      resolved.longitude_dist = msg.longitude_dist;
    }
    else {
      resolved.longitude_dist = 0.0
    }

    if (msg.lateral_dist !== undefined) {
      resolved.lateral_dist = msg.lateral_dist;
    }
    else {
      resolved.lateral_dist = 0.0
    }

    if (msg.longitude_vel !== undefined) {
      resolved.longitude_vel = msg.longitude_vel;
    }
    else {
      resolved.longitude_vel = 0.0
    }

    if (msg.lateral_vel !== undefined) {
      resolved.lateral_vel = msg.lateral_vel;
    }
    else {
      resolved.lateral_vel = 0.0
    }

    if (msg.rcs !== undefined) {
      resolved.rcs = msg.rcs;
    }
    else {
      resolved.rcs = 0.0
    }

    if (msg.DynProp !== undefined) {
      resolved.DynProp = msg.DynProp;
    }
    else {
      resolved.DynProp = 0.0
    }

    if (msg.std_dev_long_dist !== undefined) {
      resolved.std_dev_long_dist = msg.std_dev_long_dist;
    }
    else {
      resolved.std_dev_long_dist = 0.0
    }

    if (msg.std_dev_lat_dist !== undefined) {
      resolved.std_dev_lat_dist = msg.std_dev_lat_dist;
    }
    else {
      resolved.std_dev_lat_dist = 0.0
    }

    if (msg.std_dev_long_vel !== undefined) {
      resolved.std_dev_long_vel = msg.std_dev_long_vel;
    }
    else {
      resolved.std_dev_long_vel = 0.0
    }

    if (msg.std_dev_lat_vel !== undefined) {
      resolved.std_dev_lat_vel = msg.std_dev_lat_vel;
    }
    else {
      resolved.std_dev_lat_vel = 0.0
    }

    if (msg.false_alarm_prob !== undefined) {
      resolved.false_alarm_prob = msg.false_alarm_prob;
    }
    else {
      resolved.false_alarm_prob = 0.0
    }

    if (msg.validty_state !== undefined) {
      resolved.validty_state = msg.validty_state;
    }
    else {
      resolved.validty_state = 0.0
    }

    if (msg.doppler_state !== undefined) {
      resolved.doppler_state = msg.doppler_state;
    }
    else {
      resolved.doppler_state = 0.0
    }

    if (msg.static_check !== undefined) {
      resolved.static_check = msg.static_check;
    }
    else {
      resolved.static_check = false
    }

    return resolved;
    }
};

module.exports = ClusterRadar;
