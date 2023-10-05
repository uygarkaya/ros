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

class ObstacleProperties {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.blinker_info = null;
      this.cut_in_and_out = null;
      this.obstacle_type = null;
      this.obstacle_status = null;
      this.obstacle_brake_lights = null;
      this.obstacle_valid = null;
      this.obstacle_age = null;
      this.obstacle_lane = null;
      this.cipv_flag = null;
      this.radar_pos_x = null;
      this.radar_vel_x = null;
      this.radar_match_confidence = null;
      this.matched_radar_id = null;
      this.obstacle_scale_change = null;
      this.obstacle_replaced = null;
      this.radar_obstacle_id = null;
      this.me_obstacle_id = null;
      this.rcs = null;
      this.prob_exist = null;
      this.obstacle_class = null;
      this.dyn_property = null;
      this.meas_state = null;
      this.track_id = null;
      this.track_status = null;
      this.prbty_exstn = null;
      this.prbty_prsntn = null;
      this.prbty_detn = null;
      this.prbty_clutr = null;
      this.covariance = null;
      this.R = null;
    }
    else {
      if (initObj.hasOwnProperty('blinker_info')) {
        this.blinker_info = initObj.blinker_info
      }
      else {
        this.blinker_info = 0;
      }
      if (initObj.hasOwnProperty('cut_in_and_out')) {
        this.cut_in_and_out = initObj.cut_in_and_out
      }
      else {
        this.cut_in_and_out = 0;
      }
      if (initObj.hasOwnProperty('obstacle_type')) {
        this.obstacle_type = initObj.obstacle_type
      }
      else {
        this.obstacle_type = 0;
      }
      if (initObj.hasOwnProperty('obstacle_status')) {
        this.obstacle_status = initObj.obstacle_status
      }
      else {
        this.obstacle_status = 0;
      }
      if (initObj.hasOwnProperty('obstacle_brake_lights')) {
        this.obstacle_brake_lights = initObj.obstacle_brake_lights
      }
      else {
        this.obstacle_brake_lights = false;
      }
      if (initObj.hasOwnProperty('obstacle_valid')) {
        this.obstacle_valid = initObj.obstacle_valid
      }
      else {
        this.obstacle_valid = 0;
      }
      if (initObj.hasOwnProperty('obstacle_age')) {
        this.obstacle_age = initObj.obstacle_age
      }
      else {
        this.obstacle_age = 0;
      }
      if (initObj.hasOwnProperty('obstacle_lane')) {
        this.obstacle_lane = initObj.obstacle_lane
      }
      else {
        this.obstacle_lane = 0;
      }
      if (initObj.hasOwnProperty('cipv_flag')) {
        this.cipv_flag = initObj.cipv_flag
      }
      else {
        this.cipv_flag = false;
      }
      if (initObj.hasOwnProperty('radar_pos_x')) {
        this.radar_pos_x = initObj.radar_pos_x
      }
      else {
        this.radar_pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('radar_vel_x')) {
        this.radar_vel_x = initObj.radar_vel_x
      }
      else {
        this.radar_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('radar_match_confidence')) {
        this.radar_match_confidence = initObj.radar_match_confidence
      }
      else {
        this.radar_match_confidence = 0;
      }
      if (initObj.hasOwnProperty('matched_radar_id')) {
        this.matched_radar_id = initObj.matched_radar_id
      }
      else {
        this.matched_radar_id = 0;
      }
      if (initObj.hasOwnProperty('obstacle_scale_change')) {
        this.obstacle_scale_change = initObj.obstacle_scale_change
      }
      else {
        this.obstacle_scale_change = 0.0;
      }
      if (initObj.hasOwnProperty('obstacle_replaced')) {
        this.obstacle_replaced = initObj.obstacle_replaced
      }
      else {
        this.obstacle_replaced = false;
      }
      if (initObj.hasOwnProperty('radar_obstacle_id')) {
        this.radar_obstacle_id = initObj.radar_obstacle_id
      }
      else {
        this.radar_obstacle_id = 0;
      }
      if (initObj.hasOwnProperty('me_obstacle_id')) {
        this.me_obstacle_id = initObj.me_obstacle_id
      }
      else {
        this.me_obstacle_id = 0;
      }
      if (initObj.hasOwnProperty('rcs')) {
        this.rcs = initObj.rcs
      }
      else {
        this.rcs = 0.0;
      }
      if (initObj.hasOwnProperty('prob_exist')) {
        this.prob_exist = initObj.prob_exist
      }
      else {
        this.prob_exist = 0.0;
      }
      if (initObj.hasOwnProperty('obstacle_class')) {
        this.obstacle_class = initObj.obstacle_class
      }
      else {
        this.obstacle_class = '';
      }
      if (initObj.hasOwnProperty('dyn_property')) {
        this.dyn_property = initObj.dyn_property
      }
      else {
        this.dyn_property = '';
      }
      if (initObj.hasOwnProperty('meas_state')) {
        this.meas_state = initObj.meas_state
      }
      else {
        this.meas_state = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('track_status')) {
        this.track_status = initObj.track_status
      }
      else {
        this.track_status = 0;
      }
      if (initObj.hasOwnProperty('prbty_exstn')) {
        this.prbty_exstn = initObj.prbty_exstn
      }
      else {
        this.prbty_exstn = 0.0;
      }
      if (initObj.hasOwnProperty('prbty_prsntn')) {
        this.prbty_prsntn = initObj.prbty_prsntn
      }
      else {
        this.prbty_prsntn = 0.0;
      }
      if (initObj.hasOwnProperty('prbty_detn')) {
        this.prbty_detn = initObj.prbty_detn
      }
      else {
        this.prbty_detn = 0.0;
      }
      if (initObj.hasOwnProperty('prbty_clutr')) {
        this.prbty_clutr = initObj.prbty_clutr
      }
      else {
        this.prbty_clutr = 0.0;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = [];
      }
      if (initObj.hasOwnProperty('R')) {
        this.R = initObj.R
      }
      else {
        this.R = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleProperties
    // Serialize message field [blinker_info]
    bufferOffset = _serializer.uint8(obj.blinker_info, buffer, bufferOffset);
    // Serialize message field [cut_in_and_out]
    bufferOffset = _serializer.uint8(obj.cut_in_and_out, buffer, bufferOffset);
    // Serialize message field [obstacle_type]
    bufferOffset = _serializer.uint8(obj.obstacle_type, buffer, bufferOffset);
    // Serialize message field [obstacle_status]
    bufferOffset = _serializer.uint8(obj.obstacle_status, buffer, bufferOffset);
    // Serialize message field [obstacle_brake_lights]
    bufferOffset = _serializer.bool(obj.obstacle_brake_lights, buffer, bufferOffset);
    // Serialize message field [obstacle_valid]
    bufferOffset = _serializer.uint8(obj.obstacle_valid, buffer, bufferOffset);
    // Serialize message field [obstacle_age]
    bufferOffset = _serializer.uint16(obj.obstacle_age, buffer, bufferOffset);
    // Serialize message field [obstacle_lane]
    bufferOffset = _serializer.uint8(obj.obstacle_lane, buffer, bufferOffset);
    // Serialize message field [cipv_flag]
    bufferOffset = _serializer.bool(obj.cipv_flag, buffer, bufferOffset);
    // Serialize message field [radar_pos_x]
    bufferOffset = _serializer.float32(obj.radar_pos_x, buffer, bufferOffset);
    // Serialize message field [radar_vel_x]
    bufferOffset = _serializer.float32(obj.radar_vel_x, buffer, bufferOffset);
    // Serialize message field [radar_match_confidence]
    bufferOffset = _serializer.uint8(obj.radar_match_confidence, buffer, bufferOffset);
    // Serialize message field [matched_radar_id]
    bufferOffset = _serializer.uint16(obj.matched_radar_id, buffer, bufferOffset);
    // Serialize message field [obstacle_scale_change]
    bufferOffset = _serializer.float64(obj.obstacle_scale_change, buffer, bufferOffset);
    // Serialize message field [obstacle_replaced]
    bufferOffset = _serializer.bool(obj.obstacle_replaced, buffer, bufferOffset);
    // Serialize message field [radar_obstacle_id]
    bufferOffset = _serializer.uint8(obj.radar_obstacle_id, buffer, bufferOffset);
    // Serialize message field [me_obstacle_id]
    bufferOffset = _serializer.uint16(obj.me_obstacle_id, buffer, bufferOffset);
    // Serialize message field [rcs]
    bufferOffset = _serializer.float32(obj.rcs, buffer, bufferOffset);
    // Serialize message field [prob_exist]
    bufferOffset = _serializer.float32(obj.prob_exist, buffer, bufferOffset);
    // Serialize message field [obstacle_class]
    bufferOffset = _serializer.string(obj.obstacle_class, buffer, bufferOffset);
    // Serialize message field [dyn_property]
    bufferOffset = _serializer.string(obj.dyn_property, buffer, bufferOffset);
    // Serialize message field [meas_state]
    bufferOffset = _serializer.uint8(obj.meas_state, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint16(obj.track_id, buffer, bufferOffset);
    // Serialize message field [track_status]
    bufferOffset = _serializer.uint8(obj.track_status, buffer, bufferOffset);
    // Serialize message field [prbty_exstn]
    bufferOffset = _serializer.float64(obj.prbty_exstn, buffer, bufferOffset);
    // Serialize message field [prbty_prsntn]
    bufferOffset = _serializer.float64(obj.prbty_prsntn, buffer, bufferOffset);
    // Serialize message field [prbty_detn]
    bufferOffset = _serializer.float64(obj.prbty_detn, buffer, bufferOffset);
    // Serialize message field [prbty_clutr]
    bufferOffset = _serializer.float64(obj.prbty_clutr, buffer, bufferOffset);
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, null);
    // Serialize message field [R]
    bufferOffset = _arraySerializer.float64(obj.R, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleProperties
    let len;
    let data = new ObstacleProperties(null);
    // Deserialize message field [blinker_info]
    data.blinker_info = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cut_in_and_out]
    data.cut_in_and_out = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [obstacle_type]
    data.obstacle_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [obstacle_status]
    data.obstacle_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [obstacle_brake_lights]
    data.obstacle_brake_lights = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle_valid]
    data.obstacle_valid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [obstacle_age]
    data.obstacle_age = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [obstacle_lane]
    data.obstacle_lane = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cipv_flag]
    data.cipv_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [radar_pos_x]
    data.radar_pos_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radar_vel_x]
    data.radar_vel_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radar_match_confidence]
    data.radar_match_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [matched_radar_id]
    data.matched_radar_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [obstacle_scale_change]
    data.obstacle_scale_change = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [obstacle_replaced]
    data.obstacle_replaced = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [radar_obstacle_id]
    data.radar_obstacle_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [me_obstacle_id]
    data.me_obstacle_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rcs]
    data.rcs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [prob_exist]
    data.prob_exist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obstacle_class]
    data.obstacle_class = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dyn_property]
    data.dyn_property = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [meas_state]
    data.meas_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [track_status]
    data.track_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [prbty_exstn]
    data.prbty_exstn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [prbty_prsntn]
    data.prbty_prsntn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [prbty_detn]
    data.prbty_detn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [prbty_clutr]
    data.prbty_clutr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [R]
    data.R = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.obstacle_class.length;
    length += object.dyn_property.length;
    length += 8 * object.covariance.length;
    length += 8 * object.R.length;
    return length + 93;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/ObstacleProperties';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6834dd076a8cd9f04bc04f672112493';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 blinker_info
    uint8 cut_in_and_out
    uint8 obstacle_type
    uint8 obstacle_status
    bool obstacle_brake_lights
    uint8 obstacle_valid
    uint16 obstacle_age
    uint8 obstacle_lane
    bool cipv_flag
    float32 radar_pos_x
    float32 radar_vel_x
    uint8 radar_match_confidence
    uint16 matched_radar_id
    float64 obstacle_scale_change
    bool obstacle_replaced
    uint8 radar_obstacle_id
    uint16 me_obstacle_id
    float32 rcs
    float32 prob_exist
    string obstacle_class
    string dyn_property
    uint8 meas_state
    uint16 track_id
    uint8 track_status
    float64 prbty_exstn
    float64 prbty_prsntn
    float64 prbty_detn
    float64 prbty_clutr
    float64[] covariance
    float64[] R
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleProperties(null);
    if (msg.blinker_info !== undefined) {
      resolved.blinker_info = msg.blinker_info;
    }
    else {
      resolved.blinker_info = 0
    }

    if (msg.cut_in_and_out !== undefined) {
      resolved.cut_in_and_out = msg.cut_in_and_out;
    }
    else {
      resolved.cut_in_and_out = 0
    }

    if (msg.obstacle_type !== undefined) {
      resolved.obstacle_type = msg.obstacle_type;
    }
    else {
      resolved.obstacle_type = 0
    }

    if (msg.obstacle_status !== undefined) {
      resolved.obstacle_status = msg.obstacle_status;
    }
    else {
      resolved.obstacle_status = 0
    }

    if (msg.obstacle_brake_lights !== undefined) {
      resolved.obstacle_brake_lights = msg.obstacle_brake_lights;
    }
    else {
      resolved.obstacle_brake_lights = false
    }

    if (msg.obstacle_valid !== undefined) {
      resolved.obstacle_valid = msg.obstacle_valid;
    }
    else {
      resolved.obstacle_valid = 0
    }

    if (msg.obstacle_age !== undefined) {
      resolved.obstacle_age = msg.obstacle_age;
    }
    else {
      resolved.obstacle_age = 0
    }

    if (msg.obstacle_lane !== undefined) {
      resolved.obstacle_lane = msg.obstacle_lane;
    }
    else {
      resolved.obstacle_lane = 0
    }

    if (msg.cipv_flag !== undefined) {
      resolved.cipv_flag = msg.cipv_flag;
    }
    else {
      resolved.cipv_flag = false
    }

    if (msg.radar_pos_x !== undefined) {
      resolved.radar_pos_x = msg.radar_pos_x;
    }
    else {
      resolved.radar_pos_x = 0.0
    }

    if (msg.radar_vel_x !== undefined) {
      resolved.radar_vel_x = msg.radar_vel_x;
    }
    else {
      resolved.radar_vel_x = 0.0
    }

    if (msg.radar_match_confidence !== undefined) {
      resolved.radar_match_confidence = msg.radar_match_confidence;
    }
    else {
      resolved.radar_match_confidence = 0
    }

    if (msg.matched_radar_id !== undefined) {
      resolved.matched_radar_id = msg.matched_radar_id;
    }
    else {
      resolved.matched_radar_id = 0
    }

    if (msg.obstacle_scale_change !== undefined) {
      resolved.obstacle_scale_change = msg.obstacle_scale_change;
    }
    else {
      resolved.obstacle_scale_change = 0.0
    }

    if (msg.obstacle_replaced !== undefined) {
      resolved.obstacle_replaced = msg.obstacle_replaced;
    }
    else {
      resolved.obstacle_replaced = false
    }

    if (msg.radar_obstacle_id !== undefined) {
      resolved.radar_obstacle_id = msg.radar_obstacle_id;
    }
    else {
      resolved.radar_obstacle_id = 0
    }

    if (msg.me_obstacle_id !== undefined) {
      resolved.me_obstacle_id = msg.me_obstacle_id;
    }
    else {
      resolved.me_obstacle_id = 0
    }

    if (msg.rcs !== undefined) {
      resolved.rcs = msg.rcs;
    }
    else {
      resolved.rcs = 0.0
    }

    if (msg.prob_exist !== undefined) {
      resolved.prob_exist = msg.prob_exist;
    }
    else {
      resolved.prob_exist = 0.0
    }

    if (msg.obstacle_class !== undefined) {
      resolved.obstacle_class = msg.obstacle_class;
    }
    else {
      resolved.obstacle_class = ''
    }

    if (msg.dyn_property !== undefined) {
      resolved.dyn_property = msg.dyn_property;
    }
    else {
      resolved.dyn_property = ''
    }

    if (msg.meas_state !== undefined) {
      resolved.meas_state = msg.meas_state;
    }
    else {
      resolved.meas_state = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.track_status !== undefined) {
      resolved.track_status = msg.track_status;
    }
    else {
      resolved.track_status = 0
    }

    if (msg.prbty_exstn !== undefined) {
      resolved.prbty_exstn = msg.prbty_exstn;
    }
    else {
      resolved.prbty_exstn = 0.0
    }

    if (msg.prbty_prsntn !== undefined) {
      resolved.prbty_prsntn = msg.prbty_prsntn;
    }
    else {
      resolved.prbty_prsntn = 0.0
    }

    if (msg.prbty_detn !== undefined) {
      resolved.prbty_detn = msg.prbty_detn;
    }
    else {
      resolved.prbty_detn = 0.0
    }

    if (msg.prbty_clutr !== undefined) {
      resolved.prbty_clutr = msg.prbty_clutr;
    }
    else {
      resolved.prbty_clutr = 0.0
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = []
    }

    if (msg.R !== undefined) {
      resolved.R = msg.R;
    }
    else {
      resolved.R = []
    }

    return resolved;
    }
};

module.exports = ObstacleProperties;
