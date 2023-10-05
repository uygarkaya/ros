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

class HBVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.HBVectorSubscribedTopicNames = null;
      this.HBVectorSubscribedTopicFrequencyCheck = null;
      this.HBVectorPublishedTopicNames = null;
      this.HBVectorPublishedTopicOutputBoundaryCheck = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('HBVectorSubscribedTopicNames')) {
        this.HBVectorSubscribedTopicNames = initObj.HBVectorSubscribedTopicNames
      }
      else {
        this.HBVectorSubscribedTopicNames = [];
      }
      if (initObj.hasOwnProperty('HBVectorSubscribedTopicFrequencyCheck')) {
        this.HBVectorSubscribedTopicFrequencyCheck = initObj.HBVectorSubscribedTopicFrequencyCheck
      }
      else {
        this.HBVectorSubscribedTopicFrequencyCheck = [];
      }
      if (initObj.hasOwnProperty('HBVectorPublishedTopicNames')) {
        this.HBVectorPublishedTopicNames = initObj.HBVectorPublishedTopicNames
      }
      else {
        this.HBVectorPublishedTopicNames = [];
      }
      if (initObj.hasOwnProperty('HBVectorPublishedTopicOutputBoundaryCheck')) {
        this.HBVectorPublishedTopicOutputBoundaryCheck = initObj.HBVectorPublishedTopicOutputBoundaryCheck
      }
      else {
        this.HBVectorPublishedTopicOutputBoundaryCheck = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HBVector
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [HBVectorSubscribedTopicNames]
    // Serialize the length for message field [HBVectorSubscribedTopicNames]
    bufferOffset = _serializer.uint32(obj.HBVectorSubscribedTopicNames.length, buffer, bufferOffset);
    obj.HBVectorSubscribedTopicNames.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [HBVectorSubscribedTopicFrequencyCheck]
    // Serialize the length for message field [HBVectorSubscribedTopicFrequencyCheck]
    bufferOffset = _serializer.uint32(obj.HBVectorSubscribedTopicFrequencyCheck.length, buffer, bufferOffset);
    obj.HBVectorSubscribedTopicFrequencyCheck.forEach((val) => {
      bufferOffset = std_msgs.msg.Bool.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [HBVectorPublishedTopicNames]
    // Serialize the length for message field [HBVectorPublishedTopicNames]
    bufferOffset = _serializer.uint32(obj.HBVectorPublishedTopicNames.length, buffer, bufferOffset);
    obj.HBVectorPublishedTopicNames.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [HBVectorPublishedTopicOutputBoundaryCheck]
    // Serialize the length for message field [HBVectorPublishedTopicOutputBoundaryCheck]
    bufferOffset = _serializer.uint32(obj.HBVectorPublishedTopicOutputBoundaryCheck.length, buffer, bufferOffset);
    obj.HBVectorPublishedTopicOutputBoundaryCheck.forEach((val) => {
      bufferOffset = std_msgs.msg.Bool.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HBVector
    let len;
    let data = new HBVector(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [HBVectorSubscribedTopicNames]
    // Deserialize array length for message field [HBVectorSubscribedTopicNames]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.HBVectorSubscribedTopicNames = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.HBVectorSubscribedTopicNames[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [HBVectorSubscribedTopicFrequencyCheck]
    // Deserialize array length for message field [HBVectorSubscribedTopicFrequencyCheck]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.HBVectorSubscribedTopicFrequencyCheck = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.HBVectorSubscribedTopicFrequencyCheck[i] = std_msgs.msg.Bool.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [HBVectorPublishedTopicNames]
    // Deserialize array length for message field [HBVectorPublishedTopicNames]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.HBVectorPublishedTopicNames = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.HBVectorPublishedTopicNames[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [HBVectorPublishedTopicOutputBoundaryCheck]
    // Deserialize array length for message field [HBVectorPublishedTopicOutputBoundaryCheck]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.HBVectorPublishedTopicOutputBoundaryCheck = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.HBVectorPublishedTopicOutputBoundaryCheck[i] = std_msgs.msg.Bool.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.HBVectorSubscribedTopicNames.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    length += object.HBVectorSubscribedTopicFrequencyCheck.length;
    object.HBVectorPublishedTopicNames.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    length += object.HBVectorPublishedTopicOutputBoundaryCheck.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/HBVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '090614f5d21826ff335eda6bf5c4b40f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/String[] HBVectorSubscribedTopicNames
    std_msgs/Bool[] HBVectorSubscribedTopicFrequencyCheck
    std_msgs/String[] HBVectorPublishedTopicNames
    std_msgs/Bool[] HBVectorPublishedTopicOutputBoundaryCheck
    
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
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HBVector(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.HBVectorSubscribedTopicNames !== undefined) {
      resolved.HBVectorSubscribedTopicNames = new Array(msg.HBVectorSubscribedTopicNames.length);
      for (let i = 0; i < resolved.HBVectorSubscribedTopicNames.length; ++i) {
        resolved.HBVectorSubscribedTopicNames[i] = std_msgs.msg.String.Resolve(msg.HBVectorSubscribedTopicNames[i]);
      }
    }
    else {
      resolved.HBVectorSubscribedTopicNames = []
    }

    if (msg.HBVectorSubscribedTopicFrequencyCheck !== undefined) {
      resolved.HBVectorSubscribedTopicFrequencyCheck = new Array(msg.HBVectorSubscribedTopicFrequencyCheck.length);
      for (let i = 0; i < resolved.HBVectorSubscribedTopicFrequencyCheck.length; ++i) {
        resolved.HBVectorSubscribedTopicFrequencyCheck[i] = std_msgs.msg.Bool.Resolve(msg.HBVectorSubscribedTopicFrequencyCheck[i]);
      }
    }
    else {
      resolved.HBVectorSubscribedTopicFrequencyCheck = []
    }

    if (msg.HBVectorPublishedTopicNames !== undefined) {
      resolved.HBVectorPublishedTopicNames = new Array(msg.HBVectorPublishedTopicNames.length);
      for (let i = 0; i < resolved.HBVectorPublishedTopicNames.length; ++i) {
        resolved.HBVectorPublishedTopicNames[i] = std_msgs.msg.String.Resolve(msg.HBVectorPublishedTopicNames[i]);
      }
    }
    else {
      resolved.HBVectorPublishedTopicNames = []
    }

    if (msg.HBVectorPublishedTopicOutputBoundaryCheck !== undefined) {
      resolved.HBVectorPublishedTopicOutputBoundaryCheck = new Array(msg.HBVectorPublishedTopicOutputBoundaryCheck.length);
      for (let i = 0; i < resolved.HBVectorPublishedTopicOutputBoundaryCheck.length; ++i) {
        resolved.HBVectorPublishedTopicOutputBoundaryCheck[i] = std_msgs.msg.Bool.Resolve(msg.HBVectorPublishedTopicOutputBoundaryCheck[i]);
      }
    }
    else {
      resolved.HBVectorPublishedTopicOutputBoundaryCheck = []
    }

    return resolved;
    }
};

module.exports = HBVector;
