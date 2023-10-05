# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mobileye_560_660_msgs/AhbcGradual.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class AhbcGradual(genpy.Message):
  _md5sum = "06801ea66cd7dc52de9867c12dbfa5bf"
  _type = "mobileye_560_660_msgs/AhbcGradual"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

float32 boundary_domain_bottom_non_glare_hlb
float32 boundary_domain_non_glare_left_hand_hlb
float32 boundary_domain_non_glare_right_hand_hlb
uint16 object_distance_hlb
uint8 status_boundary_domain_bottom_non_glare_hlb
uint8 status_boundary_domain_non_glare_left_hand_hlb
uint8 status_boundary_domain_non_glare_right_hand_hlb
uint8 status_object_distance_hlb
bool left_target_change
bool right_target_change
bool too_many_cars
bool busy_scene

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
  __slots__ = ['header','boundary_domain_bottom_non_glare_hlb','boundary_domain_non_glare_left_hand_hlb','boundary_domain_non_glare_right_hand_hlb','object_distance_hlb','status_boundary_domain_bottom_non_glare_hlb','status_boundary_domain_non_glare_left_hand_hlb','status_boundary_domain_non_glare_right_hand_hlb','status_object_distance_hlb','left_target_change','right_target_change','too_many_cars','busy_scene']
  _slot_types = ['std_msgs/Header','float32','float32','float32','uint16','uint8','uint8','uint8','uint8','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,boundary_domain_bottom_non_glare_hlb,boundary_domain_non_glare_left_hand_hlb,boundary_domain_non_glare_right_hand_hlb,object_distance_hlb,status_boundary_domain_bottom_non_glare_hlb,status_boundary_domain_non_glare_left_hand_hlb,status_boundary_domain_non_glare_right_hand_hlb,status_object_distance_hlb,left_target_change,right_target_change,too_many_cars,busy_scene

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AhbcGradual, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.boundary_domain_bottom_non_glare_hlb is None:
        self.boundary_domain_bottom_non_glare_hlb = 0.
      if self.boundary_domain_non_glare_left_hand_hlb is None:
        self.boundary_domain_non_glare_left_hand_hlb = 0.
      if self.boundary_domain_non_glare_right_hand_hlb is None:
        self.boundary_domain_non_glare_right_hand_hlb = 0.
      if self.object_distance_hlb is None:
        self.object_distance_hlb = 0
      if self.status_boundary_domain_bottom_non_glare_hlb is None:
        self.status_boundary_domain_bottom_non_glare_hlb = 0
      if self.status_boundary_domain_non_glare_left_hand_hlb is None:
        self.status_boundary_domain_non_glare_left_hand_hlb = 0
      if self.status_boundary_domain_non_glare_right_hand_hlb is None:
        self.status_boundary_domain_non_glare_right_hand_hlb = 0
      if self.status_object_distance_hlb is None:
        self.status_object_distance_hlb = 0
      if self.left_target_change is None:
        self.left_target_change = False
      if self.right_target_change is None:
        self.right_target_change = False
      if self.too_many_cars is None:
        self.too_many_cars = False
      if self.busy_scene is None:
        self.busy_scene = False
    else:
      self.header = std_msgs.msg.Header()
      self.boundary_domain_bottom_non_glare_hlb = 0.
      self.boundary_domain_non_glare_left_hand_hlb = 0.
      self.boundary_domain_non_glare_right_hand_hlb = 0.
      self.object_distance_hlb = 0
      self.status_boundary_domain_bottom_non_glare_hlb = 0
      self.status_boundary_domain_non_glare_left_hand_hlb = 0
      self.status_boundary_domain_non_glare_right_hand_hlb = 0
      self.status_object_distance_hlb = 0
      self.left_target_change = False
      self.right_target_change = False
      self.too_many_cars = False
      self.busy_scene = False

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
      buff.write(_get_struct_3fH8B().pack(_x.boundary_domain_bottom_non_glare_hlb, _x.boundary_domain_non_glare_left_hand_hlb, _x.boundary_domain_non_glare_right_hand_hlb, _x.object_distance_hlb, _x.status_boundary_domain_bottom_non_glare_hlb, _x.status_boundary_domain_non_glare_left_hand_hlb, _x.status_boundary_domain_non_glare_right_hand_hlb, _x.status_object_distance_hlb, _x.left_target_change, _x.right_target_change, _x.too_many_cars, _x.busy_scene))
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
      end += 22
      (_x.boundary_domain_bottom_non_glare_hlb, _x.boundary_domain_non_glare_left_hand_hlb, _x.boundary_domain_non_glare_right_hand_hlb, _x.object_distance_hlb, _x.status_boundary_domain_bottom_non_glare_hlb, _x.status_boundary_domain_non_glare_left_hand_hlb, _x.status_boundary_domain_non_glare_right_hand_hlb, _x.status_object_distance_hlb, _x.left_target_change, _x.right_target_change, _x.too_many_cars, _x.busy_scene,) = _get_struct_3fH8B().unpack(str[start:end])
      self.left_target_change = bool(self.left_target_change)
      self.right_target_change = bool(self.right_target_change)
      self.too_many_cars = bool(self.too_many_cars)
      self.busy_scene = bool(self.busy_scene)
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
      buff.write(_get_struct_3fH8B().pack(_x.boundary_domain_bottom_non_glare_hlb, _x.boundary_domain_non_glare_left_hand_hlb, _x.boundary_domain_non_glare_right_hand_hlb, _x.object_distance_hlb, _x.status_boundary_domain_bottom_non_glare_hlb, _x.status_boundary_domain_non_glare_left_hand_hlb, _x.status_boundary_domain_non_glare_right_hand_hlb, _x.status_object_distance_hlb, _x.left_target_change, _x.right_target_change, _x.too_many_cars, _x.busy_scene))
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
      end += 22
      (_x.boundary_domain_bottom_non_glare_hlb, _x.boundary_domain_non_glare_left_hand_hlb, _x.boundary_domain_non_glare_right_hand_hlb, _x.object_distance_hlb, _x.status_boundary_domain_bottom_non_glare_hlb, _x.status_boundary_domain_non_glare_left_hand_hlb, _x.status_boundary_domain_non_glare_right_hand_hlb, _x.status_object_distance_hlb, _x.left_target_change, _x.right_target_change, _x.too_many_cars, _x.busy_scene,) = _get_struct_3fH8B().unpack(str[start:end])
      self.left_target_change = bool(self.left_target_change)
      self.right_target_change = bool(self.right_target_change)
      self.too_many_cars = bool(self.too_many_cars)
      self.busy_scene = bool(self.busy_scene)
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
_struct_3fH8B = None
def _get_struct_3fH8B():
    global _struct_3fH8B
    if _struct_3fH8B is None:
        _struct_3fH8B = struct.Struct("<3fH8B")
    return _struct_3fH8B
