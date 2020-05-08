// Auto-generated. Do not edit!

// (in-package darknet_rospy_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DarkBox = require('./DarkBox.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DarkBoxArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.dark_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('dark_array')) {
        this.dark_array = initObj.dark_array
      }
      else {
        this.dark_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DarkBoxArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [dark_array]
    // Serialize the length for message field [dark_array]
    bufferOffset = _serializer.uint32(obj.dark_array.length, buffer, bufferOffset);
    obj.dark_array.forEach((val) => {
      bufferOffset = DarkBox.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DarkBoxArray
    let len;
    let data = new DarkBoxArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [dark_array]
    // Deserialize array length for message field [dark_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dark_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dark_array[i] = DarkBox.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.dark_array.forEach((val) => {
      length += DarkBox.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'darknet_rospy_msgs/DarkBoxArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '822841aecb4bb6b72d78b4ce5a699e44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    DarkBox[] dark_array
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: darknet_rospy_msgs/DarkBox
    string label
    float64 probability
    int64 xmin
    int64 ymin
    int64 xmax
    int64 ymax
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DarkBoxArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.dark_array !== undefined) {
      resolved.dark_array = new Array(msg.dark_array.length);
      for (let i = 0; i < resolved.dark_array.length; ++i) {
        resolved.dark_array[i] = DarkBox.Resolve(msg.dark_array[i]);
      }
    }
    else {
      resolved.dark_array = []
    }

    return resolved;
    }
};

module.exports = DarkBoxArray;
