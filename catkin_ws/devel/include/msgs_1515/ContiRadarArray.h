// Generated by gencpp from file msgs_1515/ContiRadarArray.msg
// DO NOT EDIT!


#ifndef MSGS_1515_MESSAGE_CONTIRADARARRAY_H
#define MSGS_1515_MESSAGE_CONTIRADARARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <msgs_1515/ContiRadar.h>

namespace msgs_1515
{
template <class ContainerAllocator>
struct ContiRadarArray_
{
  typedef ContiRadarArray_<ContainerAllocator> Type;

  ContiRadarArray_()
    : radarTime()
    , radarArray()  {
    }
  ContiRadarArray_(const ContainerAllocator& _alloc)
    : radarTime()
    , radarArray(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _radarTime_type;
  _radarTime_type radarTime;

   typedef std::vector< ::msgs_1515::ContiRadar_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::msgs_1515::ContiRadar_<ContainerAllocator> >> _radarArray_type;
  _radarArray_type radarArray;





  typedef boost::shared_ptr< ::msgs_1515::ContiRadarArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_1515::ContiRadarArray_<ContainerAllocator> const> ConstPtr;

}; // struct ContiRadarArray_

typedef ::msgs_1515::ContiRadarArray_<std::allocator<void> > ContiRadarArray;

typedef boost::shared_ptr< ::msgs_1515::ContiRadarArray > ContiRadarArrayPtr;
typedef boost::shared_ptr< ::msgs_1515::ContiRadarArray const> ContiRadarArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_1515::ContiRadarArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgs_1515::ContiRadarArray_<ContainerAllocator1> & lhs, const ::msgs_1515::ContiRadarArray_<ContainerAllocator2> & rhs)
{
  return lhs.radarTime == rhs.radarTime &&
    lhs.radarArray == rhs.radarArray;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgs_1515::ContiRadarArray_<ContainerAllocator1> & lhs, const ::msgs_1515::ContiRadarArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgs_1515

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::ContiRadarArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::ContiRadarArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::ContiRadarArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ca4826b66e9da546402554f6773f48d";
  }

  static const char* value(const ::msgs_1515::ContiRadarArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ca4826b66e9da54ULL;
  static const uint64_t static_value2 = 0x6402554f6773f48dULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_1515/ContiRadarArray";
  }

  static const char* value(const ::msgs_1515::ContiRadarArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time radarTime\n"
"ContiRadar[] radarArray\n"
"\n"
"================================================================================\n"
"MSG: msgs_1515/ContiRadar\n"
"Header header\n"
"uint8 obstacle_id\n"
"float32 longitude_dist\n"
"float32 lateral_dist\n"
"float32 longitude_vel\n"
"float32 lateral_vel\n"
"float32 rcs\n"
"float32 orientation_angle\n"
"float32 length\n"
"float32 width\n"
"float32 prob_exist\n"
"string obstacle_class\n"
"string dyn_property\n"
"uint8 meas_state\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::msgs_1515::ContiRadarArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.radarTime);
      stream.next(m.radarArray);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ContiRadarArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_1515::ContiRadarArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_1515::ContiRadarArray_<ContainerAllocator>& v)
  {
    s << indent << "radarTime: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.radarTime);
    s << indent << "radarArray[]" << std::endl;
    for (size_t i = 0; i < v.radarArray.size(); ++i)
    {
      s << indent << "  radarArray[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::msgs_1515::ContiRadar_<ContainerAllocator> >::stream(s, indent + "    ", v.radarArray[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_1515_MESSAGE_CONTIRADARARRAY_H
