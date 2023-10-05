// Auto-generated. Do not edit!

// (in-package msgs_1515.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TSLR_BBox = require('./TSLR_BBox.js');
let TSLR_SpdLim = require('./TSLR_SpdLim.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TSLR_BBoxs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.image_header = null;
      this.bounding_boxes = null;
      this.SpdLim = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('image_header')) {
        this.image_header = initObj.image_header
      }
      else {
        this.image_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bounding_boxes')) {
        this.bounding_boxes = initObj.bounding_boxes
      }
      else {
        this.bounding_boxes = [];
      }
      if (initObj.hasOwnProperty('SpdLim')) {
        this.SpdLim = initObj.SpdLim
      }
      else {
        this.SpdLim = new TSLR_SpdLim();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TSLR_BBoxs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [image_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.image_header, buffer, bufferOffset);
    // Serialize message field [bounding_boxes]
    // Serialize the length for message field [bounding_boxes]
    bufferOffset = _serializer.uint32(obj.bounding_boxes.length, buffer, bufferOffset);
    obj.bounding_boxes.forEach((val) => {
      bufferOffset = TSLR_BBox.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [SpdLim]
    bufferOffset = TSLR_SpdLim.serialize(obj.SpdLim, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TSLR_BBoxs
    let len;
    let data = new TSLR_BBoxs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_header]
    data.image_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_boxes]
    // Deserialize array length for message field [bounding_boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bounding_boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bounding_boxes[i] = TSLR_BBox.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [SpdLim]
    data.SpdLim = TSLR_SpdLim.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.Header.getMessageSize(object.image_header);
    length += 32 * object.bounding_boxes.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_1515/TSLR_BBoxs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dc90c36e2ae03bcd05954534edf078f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # TSLR Bouinding Boxes
    Header header
    Header image_header
    TSLR_BBox[] bounding_boxes
    TSLR_SpdLim SpdLim
    
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
    MSG: msgs_1515/TSLR_BBox
    # TSLR Bouinding Boxes
    int64 Class
    float64 probability # between 0 and 1
    # int64 xmin
    # int64 ymin
    # int64 xmax
    # int64 ymax
    # bool IsSpeedSign
    int64 SpeedSignValue
    float64 ETA # second
    
    ================================================================================
    MSG: msgs_1515/TSLR_SpdLim
    # TSLR Speed limit information. This will be used by ACC in order to limit ego vehicle's speed.
    int64 speed_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TSLR_BBoxs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.image_header !== undefined) {
      resolved.image_header = std_msgs.msg.Header.Resolve(msg.image_header)
    }
    else {
      resolved.image_header = new std_msgs.msg.Header()
    }

    if (msg.bounding_boxes !== undefined) {
      resolved.bounding_boxes = new Array(msg.bounding_boxes.length);
      for (let i = 0; i < resolved.bounding_boxes.length; ++i) {
        resolved.bounding_boxes[i] = TSLR_BBox.Resolve(msg.bounding_boxes[i]);
      }
    }
    else {
      resolved.bounding_boxes = []
    }

    if (msg.SpdLim !== undefined) {
      resolved.SpdLim = TSLR_SpdLim.Resolve(msg.SpdLim)
    }
    else {
      resolved.SpdLim = new TSLR_SpdLim()
    }

    return resolved;
    }
};

module.exports = TSLR_BBoxs;
