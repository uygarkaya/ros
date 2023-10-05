// Auto-generated. Do not edit!

// (in-package msgs_1515.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleKinematics = require('./ObstacleKinematics.js');
let ObstacleProperties = require('./ObstacleProperties.js');

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle_kinematics = null;
      this.obstacle_properties = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle_kinematics')) {
        this.obstacle_kinematics = initObj.obstacle_kinematics
      }
      else {
        this.obstacle_kinematics = new ObstacleKinematics();
      }
      if (initObj.hasOwnProperty('obstacle_properties')) {
        this.obstacle_properties = initObj.obstacle_properties
      }
      else {
        this.obstacle_properties = new ObstacleProperties();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [obstacle_kinematics]
    bufferOffset = ObstacleKinematics.serialize(obj.obstacle_kinematics, buffer, bufferOffset);
    // Serialize message field [obstacle_properties]
    bufferOffset = ObstacleProperties.serialize(obj.obstacle_properties, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [obstacle_kinematics]
    data.obstacle_kinematics = ObstacleKinematics.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle_properties]
    data.obstacle_properties = ObstacleProperties.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObstacleKinematics.getMessageSize(object.obstacle_kinematics);
    length += ObstacleProperties.getMessageSize(object.obstacle_properties);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3dc5d4ef897e9d201b15e7e0c351f4a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    msgs_1515/ObstacleKinematics obstacle_kinematics
    msgs_1515/ObstacleProperties obstacle_properties
    ================================================================================
    MSG: msgs_1515/ObstacleKinematics
    std_msgs/Header header
      uint32 seq
      time stamp
      string frame_id
    geometry_msgs/Pose pose
    geometry_msgs/Twist twist
    geometry_msgs/Accel accel
    geometry_msgs/Vector3 dimensions
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: msgs_1515/ObstacleProperties
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
    const resolved = new Obstacle(null);
    if (msg.obstacle_kinematics !== undefined) {
      resolved.obstacle_kinematics = ObstacleKinematics.Resolve(msg.obstacle_kinematics)
    }
    else {
      resolved.obstacle_kinematics = new ObstacleKinematics()
    }

    if (msg.obstacle_properties !== undefined) {
      resolved.obstacle_properties = ObstacleProperties.Resolve(msg.obstacle_properties)
    }
    else {
      resolved.obstacle_properties = new ObstacleProperties()
    }

    return resolved;
    }
};

module.exports = Obstacle;
