# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from msgs_1515/ContiRadar.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class ContiRadar(genpy.Message):
  _md5sum = "54fd2f5dc0ec9b28d9901950018b93fb"
  _type = "msgs_1515/ContiRadar"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
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
"""
  __slots__ = ['header','obstacle_id','longitude_dist','lateral_dist','longitude_vel','lateral_vel','rcs','orientation_angle','length','width','prob_exist','obstacle_class','dyn_property','meas_state']
  _slot_types = ['std_msgs/Header','uint8','float32','float32','float32','float32','float32','float32','float32','float32','float32','string','string','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,obstacle_id,longitude_dist,lateral_dist,longitude_vel,lateral_vel,rcs,orientation_angle,length,width,prob_exist,obstacle_class,dyn_property,meas_state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ContiRadar, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.obstacle_id is None:
        self.obstacle_id = 0
      if self.longitude_dist is None:
        self.longitude_dist = 0.
      if self.lateral_dist is None:
        self.lateral_dist = 0.
      if self.longitude_vel is None:
        self.longitude_vel = 0.
      if self.lateral_vel is None:
        self.lateral_vel = 0.
      if self.rcs is None:
        self.rcs = 0.
      if self.orientation_angle is None:
        self.orientation_angle = 0.
      if self.length is None:
        self.length = 0.
      if self.width is None:
        self.width = 0.
      if self.prob_exist is None:
        self.prob_exist = 0.
      if self.obstacle_class is None:
        self.obstacle_class = ''
      if self.dyn_property is None:
        self.dyn_property = ''
      if self.meas_state is None:
        self.meas_state = 0
    else:
      self.header = std_msgs.msg.Header()
      self.obstacle_id = 0
      self.longitude_dist = 0.
      self.lateral_dist = 0.
      self.longitude_vel = 0.
      self.lateral_vel = 0.
      self.rcs = 0.
      self.orientation_angle = 0.
      self.length = 0.
      self.width = 0.
      self.prob_exist = 0.
      self.obstacle_class = ''
      self.dyn_property = ''
      self.meas_state = 0

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
      buff.write(_get_struct_B9f().pack(_x.obstacle_id, _x.longitude_dist, _x.lateral_dist, _x.longitude_vel, _x.lateral_vel, _x.rcs, _x.orientation_angle, _x.length, _x.width, _x.prob_exist))
      _x = self.obstacle_class
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.dyn_property
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.meas_state
      buff.write(_get_struct_B().pack(_x))
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
      end += 37
      (_x.obstacle_id, _x.longitude_dist, _x.lateral_dist, _x.longitude_vel, _x.lateral_vel, _x.rcs, _x.orientation_angle, _x.length, _x.width, _x.prob_exist,) = _get_struct_B9f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.obstacle_class = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.obstacle_class = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.dyn_property = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.dyn_property = str[start:end]
      start = end
      end += 1
      (self.meas_state,) = _get_struct_B().unpack(str[start:end])
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
      buff.write(_get_struct_B9f().pack(_x.obstacle_id, _x.longitude_dist, _x.lateral_dist, _x.longitude_vel, _x.lateral_vel, _x.rcs, _x.orientation_angle, _x.length, _x.width, _x.prob_exist))
      _x = self.obstacle_class
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.dyn_property
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.meas_state
      buff.write(_get_struct_B().pack(_x))
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
      end += 37
      (_x.obstacle_id, _x.longitude_dist, _x.lateral_dist, _x.longitude_vel, _x.lateral_vel, _x.rcs, _x.orientation_angle, _x.length, _x.width, _x.prob_exist,) = _get_struct_B9f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.obstacle_class = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.obstacle_class = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.dyn_property = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.dyn_property = str[start:end]
      start = end
      end += 1
      (self.meas_state,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_B9f = None
def _get_struct_B9f():
    global _struct_B9f
    if _struct_B9f is None:
        _struct_B9f = struct.Struct("<B9f")
    return _struct_B9f