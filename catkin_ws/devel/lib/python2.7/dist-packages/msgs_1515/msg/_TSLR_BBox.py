# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from msgs_1515/TSLR_BBox.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TSLR_BBox(genpy.Message):
  _md5sum = "ad6be840399777361d3c87413b09edbd"
  _type = "msgs_1515/TSLR_BBox"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# TSLR Bouinding Boxes
int64 Class
float64 probability # between 0 and 1
# int64 xmin
# int64 ymin
# int64 xmax
# int64 ymax
# bool IsSpeedSign
int64 SpeedSignValue
float64 ETA # second
"""
  __slots__ = ['Class','probability','SpeedSignValue','ETA']
  _slot_types = ['int64','float64','int64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Class,probability,SpeedSignValue,ETA

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TSLR_BBox, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Class is None:
        self.Class = 0
      if self.probability is None:
        self.probability = 0.
      if self.SpeedSignValue is None:
        self.SpeedSignValue = 0
      if self.ETA is None:
        self.ETA = 0.
    else:
      self.Class = 0
      self.probability = 0.
      self.SpeedSignValue = 0
      self.ETA = 0.

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
      buff.write(_get_struct_qdqd().pack(_x.Class, _x.probability, _x.SpeedSignValue, _x.ETA))
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
      end = 0
      _x = self
      start = end
      end += 32
      (_x.Class, _x.probability, _x.SpeedSignValue, _x.ETA,) = _get_struct_qdqd().unpack(str[start:end])
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
      buff.write(_get_struct_qdqd().pack(_x.Class, _x.probability, _x.SpeedSignValue, _x.ETA))
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
      end = 0
      _x = self
      start = end
      end += 32
      (_x.Class, _x.probability, _x.SpeedSignValue, _x.ETA,) = _get_struct_qdqd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_qdqd = None
def _get_struct_qdqd():
    global _struct_qdqd
    if _struct_qdqd is None:
        _struct_qdqd = struct.Struct("<qdqd")
    return _struct_qdqd