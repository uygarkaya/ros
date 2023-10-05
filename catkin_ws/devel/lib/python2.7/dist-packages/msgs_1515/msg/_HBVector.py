# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from msgs_1515/HBVector.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class HBVector(genpy.Message):
  _md5sum = "090614f5d21826ff335eda6bf5c4b40f"
  _type = "msgs_1515/HBVector"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
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
bool data"""
  __slots__ = ['header','HBVectorSubscribedTopicNames','HBVectorSubscribedTopicFrequencyCheck','HBVectorPublishedTopicNames','HBVectorPublishedTopicOutputBoundaryCheck']
  _slot_types = ['std_msgs/Header','std_msgs/String[]','std_msgs/Bool[]','std_msgs/String[]','std_msgs/Bool[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,HBVectorSubscribedTopicNames,HBVectorSubscribedTopicFrequencyCheck,HBVectorPublishedTopicNames,HBVectorPublishedTopicOutputBoundaryCheck

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HBVector, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.HBVectorSubscribedTopicNames is None:
        self.HBVectorSubscribedTopicNames = []
      if self.HBVectorSubscribedTopicFrequencyCheck is None:
        self.HBVectorSubscribedTopicFrequencyCheck = []
      if self.HBVectorPublishedTopicNames is None:
        self.HBVectorPublishedTopicNames = []
      if self.HBVectorPublishedTopicOutputBoundaryCheck is None:
        self.HBVectorPublishedTopicOutputBoundaryCheck = []
    else:
      self.header = std_msgs.msg.Header()
      self.HBVectorSubscribedTopicNames = []
      self.HBVectorSubscribedTopicFrequencyCheck = []
      self.HBVectorPublishedTopicNames = []
      self.HBVectorPublishedTopicOutputBoundaryCheck = []

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
      length = len(self.HBVectorSubscribedTopicNames)
      buff.write(_struct_I.pack(length))
      for val1 in self.HBVectorSubscribedTopicNames:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.HBVectorSubscribedTopicFrequencyCheck)
      buff.write(_struct_I.pack(length))
      for val1 in self.HBVectorSubscribedTopicFrequencyCheck:
        _x = val1.data
        buff.write(_get_struct_B().pack(_x))
      length = len(self.HBVectorPublishedTopicNames)
      buff.write(_struct_I.pack(length))
      for val1 in self.HBVectorPublishedTopicNames:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.HBVectorPublishedTopicOutputBoundaryCheck)
      buff.write(_struct_I.pack(length))
      for val1 in self.HBVectorPublishedTopicOutputBoundaryCheck:
        _x = val1.data
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
      if self.HBVectorSubscribedTopicNames is None:
        self.HBVectorSubscribedTopicNames = None
      if self.HBVectorSubscribedTopicFrequencyCheck is None:
        self.HBVectorSubscribedTopicFrequencyCheck = None
      if self.HBVectorPublishedTopicNames is None:
        self.HBVectorPublishedTopicNames = None
      if self.HBVectorPublishedTopicOutputBoundaryCheck is None:
        self.HBVectorPublishedTopicOutputBoundaryCheck = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.HBVectorSubscribedTopicNames = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.data = str[start:end]
        self.HBVectorSubscribedTopicNames.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.HBVectorSubscribedTopicFrequencyCheck = []
      for i in range(0, length):
        val1 = std_msgs.msg.Bool()
        start = end
        end += 1
        (val1.data,) = _get_struct_B().unpack(str[start:end])
        val1.data = bool(val1.data)
        self.HBVectorSubscribedTopicFrequencyCheck.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.HBVectorPublishedTopicNames = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.data = str[start:end]
        self.HBVectorPublishedTopicNames.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.HBVectorPublishedTopicOutputBoundaryCheck = []
      for i in range(0, length):
        val1 = std_msgs.msg.Bool()
        start = end
        end += 1
        (val1.data,) = _get_struct_B().unpack(str[start:end])
        val1.data = bool(val1.data)
        self.HBVectorPublishedTopicOutputBoundaryCheck.append(val1)
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
      length = len(self.HBVectorSubscribedTopicNames)
      buff.write(_struct_I.pack(length))
      for val1 in self.HBVectorSubscribedTopicNames:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.HBVectorSubscribedTopicFrequencyCheck)
      buff.write(_struct_I.pack(length))
      for val1 in self.HBVectorSubscribedTopicFrequencyCheck:
        _x = val1.data
        buff.write(_get_struct_B().pack(_x))
      length = len(self.HBVectorPublishedTopicNames)
      buff.write(_struct_I.pack(length))
      for val1 in self.HBVectorPublishedTopicNames:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.HBVectorPublishedTopicOutputBoundaryCheck)
      buff.write(_struct_I.pack(length))
      for val1 in self.HBVectorPublishedTopicOutputBoundaryCheck:
        _x = val1.data
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
      if self.HBVectorSubscribedTopicNames is None:
        self.HBVectorSubscribedTopicNames = None
      if self.HBVectorSubscribedTopicFrequencyCheck is None:
        self.HBVectorSubscribedTopicFrequencyCheck = None
      if self.HBVectorPublishedTopicNames is None:
        self.HBVectorPublishedTopicNames = None
      if self.HBVectorPublishedTopicOutputBoundaryCheck is None:
        self.HBVectorPublishedTopicOutputBoundaryCheck = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.HBVectorSubscribedTopicNames = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.data = str[start:end]
        self.HBVectorSubscribedTopicNames.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.HBVectorSubscribedTopicFrequencyCheck = []
      for i in range(0, length):
        val1 = std_msgs.msg.Bool()
        start = end
        end += 1
        (val1.data,) = _get_struct_B().unpack(str[start:end])
        val1.data = bool(val1.data)
        self.HBVectorSubscribedTopicFrequencyCheck.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.HBVectorPublishedTopicNames = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.data = str[start:end]
        self.HBVectorPublishedTopicNames.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.HBVectorPublishedTopicOutputBoundaryCheck = []
      for i in range(0, length):
        val1 = std_msgs.msg.Bool()
        start = end
        end += 1
        (val1.data,) = _get_struct_B().unpack(str[start:end])
        val1.data = bool(val1.data)
        self.HBVectorPublishedTopicOutputBoundaryCheck.append(val1)
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
