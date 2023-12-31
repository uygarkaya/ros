# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from msgs_1515/ObstacleList.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import msgs_1515.msg
import std_msgs.msg

class ObstacleList(genpy.Message):
  _md5sum = "d166be37a54d9b661f457c17d42d190a"
  _type = "msgs_1515/ObstacleList"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
float64 measurement_time
uint32 number_of_obstacles
msgs_1515/Obstacle[] obstacles



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
MSG: msgs_1515/Obstacle
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
float64[] R"""
  __slots__ = ['header','seq','stamp','frame_id','measurement_time','number_of_obstacles','obstacles']
  _slot_types = ['std_msgs/Header','uint32','time','string','float64','uint32','msgs_1515/Obstacle[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,seq,stamp,frame_id,measurement_time,number_of_obstacles,obstacles

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ObstacleList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.seq is None:
        self.seq = 0
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.frame_id is None:
        self.frame_id = ''
      if self.measurement_time is None:
        self.measurement_time = 0.
      if self.number_of_obstacles is None:
        self.number_of_obstacles = 0
      if self.obstacles is None:
        self.obstacles = []
    else:
      self.header = std_msgs.msg.Header()
      self.seq = 0
      self.stamp = genpy.Time()
      self.frame_id = ''
      self.measurement_time = 0.
      self.number_of_obstacles = 0
      self.obstacles = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.seq, _x.stamp.secs, _x.stamp.nsecs))
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_dI().pack(_x.measurement_time, _x.number_of_obstacles))
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        _v1 = val1.obstacle_kinematics
        _v2 = _v1.header
        _x = _v2.seq
        buff.write(_get_struct_I().pack(_x))
        _v3 = _v2.stamp
        _x = _v3
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v2.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v1.seq
        buff.write(_get_struct_I().pack(_x))
        _v4 = _v1.stamp
        _x = _v4
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v5 = _v1.pose
        _v6 = _v5.position
        _x = _v6
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v7 = _v5.orientation
        _x = _v7
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v8 = _v1.twist
        _v9 = _v8.linear
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v10 = _v8.angular
        _x = _v10
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v11 = _v1.accel
        _v12 = _v11.linear
        _x = _v12
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v13 = _v11.angular
        _x = _v13
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v14 = _v1.dimensions
        _x = _v14
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v15 = val1.obstacle_properties
        _x = _v15
        buff.write(_get_struct_6BH2B2fBHd2BH2f().pack(_x.blinker_info, _x.cut_in_and_out, _x.obstacle_type, _x.obstacle_status, _x.obstacle_brake_lights, _x.obstacle_valid, _x.obstacle_age, _x.obstacle_lane, _x.cipv_flag, _x.radar_pos_x, _x.radar_vel_x, _x.radar_match_confidence, _x.matched_radar_id, _x.obstacle_scale_change, _x.obstacle_replaced, _x.radar_obstacle_id, _x.me_obstacle_id, _x.rcs, _x.prob_exist))
        _x = _v15.obstacle_class
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v15.dyn_property
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v15
        buff.write(_get_struct_BHB4d().pack(_x.meas_state, _x.track_id, _x.track_status, _x.prbty_exstn, _x.prbty_prsntn, _x.prbty_detn, _x.prbty_clutr))
        length = len(_v15.covariance)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*_v15.covariance))
        length = len(_v15.R)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*_v15.R))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.obstacles is None:
        self.obstacles = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.seq, _x.stamp.secs, _x.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.measurement_time, _x.number_of_obstacles,) = _get_struct_dI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = msgs_1515.msg.Obstacle()
        _v16 = val1.obstacle_kinematics
        _v17 = _v16.header
        start = end
        end += 4
        (_v17.seq,) = _get_struct_I().unpack(str[start:end])
        _v18 = _v17.stamp
        _x = _v18
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v17.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v17.frame_id = str[start:end]
        start = end
        end += 4
        (_v16.seq,) = _get_struct_I().unpack(str[start:end])
        _v19 = _v16.stamp
        _x = _v19
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v16.frame_id = str[start:end]
        _v20 = _v16.pose
        _v21 = _v20.position
        _x = _v21
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v22 = _v20.orientation
        _x = _v22
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v23 = _v16.twist
        _v24 = _v23.linear
        _x = _v24
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v25 = _v23.angular
        _x = _v25
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v26 = _v16.accel
        _v27 = _v26.linear
        _x = _v27
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v28 = _v26.angular
        _x = _v28
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v29 = _v16.dimensions
        _x = _v29
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v30 = val1.obstacle_properties
        _x = _v30
        start = end
        end += 41
        (_x.blinker_info, _x.cut_in_and_out, _x.obstacle_type, _x.obstacle_status, _x.obstacle_brake_lights, _x.obstacle_valid, _x.obstacle_age, _x.obstacle_lane, _x.cipv_flag, _x.radar_pos_x, _x.radar_vel_x, _x.radar_match_confidence, _x.matched_radar_id, _x.obstacle_scale_change, _x.obstacle_replaced, _x.radar_obstacle_id, _x.me_obstacle_id, _x.rcs, _x.prob_exist,) = _get_struct_6BH2B2fBHd2BH2f().unpack(str[start:end])
        _v30.obstacle_brake_lights = bool(_v30.obstacle_brake_lights)
        _v30.cipv_flag = bool(_v30.cipv_flag)
        _v30.obstacle_replaced = bool(_v30.obstacle_replaced)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v30.obstacle_class = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v30.obstacle_class = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v30.dyn_property = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v30.dyn_property = str[start:end]
        _x = _v30
        start = end
        end += 36
        (_x.meas_state, _x.track_id, _x.track_status, _x.prbty_exstn, _x.prbty_prsntn, _x.prbty_detn, _x.prbty_clutr,) = _get_struct_BHB4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        _v30.covariance = s.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        _v30.R = s.unpack(str[start:end])
        self.obstacles.append(val1)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.seq, _x.stamp.secs, _x.stamp.nsecs))
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_dI().pack(_x.measurement_time, _x.number_of_obstacles))
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        _v31 = val1.obstacle_kinematics
        _v32 = _v31.header
        _x = _v32.seq
        buff.write(_get_struct_I().pack(_x))
        _v33 = _v32.stamp
        _x = _v33
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v32.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v31.seq
        buff.write(_get_struct_I().pack(_x))
        _v34 = _v31.stamp
        _x = _v34
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v31.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v35 = _v31.pose
        _v36 = _v35.position
        _x = _v36
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v37 = _v35.orientation
        _x = _v37
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v38 = _v31.twist
        _v39 = _v38.linear
        _x = _v39
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v40 = _v38.angular
        _x = _v40
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v41 = _v31.accel
        _v42 = _v41.linear
        _x = _v42
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v43 = _v41.angular
        _x = _v43
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v44 = _v31.dimensions
        _x = _v44
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v45 = val1.obstacle_properties
        _x = _v45
        buff.write(_get_struct_6BH2B2fBHd2BH2f().pack(_x.blinker_info, _x.cut_in_and_out, _x.obstacle_type, _x.obstacle_status, _x.obstacle_brake_lights, _x.obstacle_valid, _x.obstacle_age, _x.obstacle_lane, _x.cipv_flag, _x.radar_pos_x, _x.radar_vel_x, _x.radar_match_confidence, _x.matched_radar_id, _x.obstacle_scale_change, _x.obstacle_replaced, _x.radar_obstacle_id, _x.me_obstacle_id, _x.rcs, _x.prob_exist))
        _x = _v45.obstacle_class
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v45.dyn_property
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v45
        buff.write(_get_struct_BHB4d().pack(_x.meas_state, _x.track_id, _x.track_status, _x.prbty_exstn, _x.prbty_prsntn, _x.prbty_detn, _x.prbty_clutr))
        length = len(_v45.covariance)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(_v45.covariance.tostring())
        length = len(_v45.R)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(_v45.R.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.obstacles is None:
        self.obstacles = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.seq, _x.stamp.secs, _x.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.measurement_time, _x.number_of_obstacles,) = _get_struct_dI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = msgs_1515.msg.Obstacle()
        _v46 = val1.obstacle_kinematics
        _v47 = _v46.header
        start = end
        end += 4
        (_v47.seq,) = _get_struct_I().unpack(str[start:end])
        _v48 = _v47.stamp
        _x = _v48
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v47.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v47.frame_id = str[start:end]
        start = end
        end += 4
        (_v46.seq,) = _get_struct_I().unpack(str[start:end])
        _v49 = _v46.stamp
        _x = _v49
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v46.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v46.frame_id = str[start:end]
        _v50 = _v46.pose
        _v51 = _v50.position
        _x = _v51
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v52 = _v50.orientation
        _x = _v52
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v53 = _v46.twist
        _v54 = _v53.linear
        _x = _v54
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v55 = _v53.angular
        _x = _v55
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v56 = _v46.accel
        _v57 = _v56.linear
        _x = _v57
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v58 = _v56.angular
        _x = _v58
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v59 = _v46.dimensions
        _x = _v59
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v60 = val1.obstacle_properties
        _x = _v60
        start = end
        end += 41
        (_x.blinker_info, _x.cut_in_and_out, _x.obstacle_type, _x.obstacle_status, _x.obstacle_brake_lights, _x.obstacle_valid, _x.obstacle_age, _x.obstacle_lane, _x.cipv_flag, _x.radar_pos_x, _x.radar_vel_x, _x.radar_match_confidence, _x.matched_radar_id, _x.obstacle_scale_change, _x.obstacle_replaced, _x.radar_obstacle_id, _x.me_obstacle_id, _x.rcs, _x.prob_exist,) = _get_struct_6BH2B2fBHd2BH2f().unpack(str[start:end])
        _v60.obstacle_brake_lights = bool(_v60.obstacle_brake_lights)
        _v60.cipv_flag = bool(_v60.cipv_flag)
        _v60.obstacle_replaced = bool(_v60.obstacle_replaced)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v60.obstacle_class = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v60.obstacle_class = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v60.dyn_property = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v60.dyn_property = str[start:end]
        _x = _v60
        start = end
        end += 36
        (_x.meas_state, _x.track_id, _x.track_status, _x.prbty_exstn, _x.prbty_prsntn, _x.prbty_detn, _x.prbty_clutr,) = _get_struct_BHB4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        _v60.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        _v60.R = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        self.obstacles.append(val1)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_6BH2B2fBHd2BH2f = None
def _get_struct_6BH2B2fBHd2BH2f():
    global _struct_6BH2B2fBHd2BH2f
    if _struct_6BH2B2fBHd2BH2f is None:
        _struct_6BH2B2fBHd2BH2f = struct.Struct("<6BH2B2fBHd2BH2f")
    return _struct_6BH2B2fBHd2BH2f
_struct_BHB4d = None
def _get_struct_BHB4d():
    global _struct_BHB4d
    if _struct_BHB4d is None:
        _struct_BHB4d = struct.Struct("<BHB4d")
    return _struct_BHB4d
_struct_dI = None
def _get_struct_dI():
    global _struct_dI
    if _struct_dI is None:
        _struct_dI = struct.Struct("<dI")
    return _struct_dI
