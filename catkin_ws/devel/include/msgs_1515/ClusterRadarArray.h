// Generated by gencpp from file msgs_1515/ClusterRadarArray.msg
// DO NOT EDIT!


#ifndef MSGS_1515_MESSAGE_CLUSTERRADARARRAY_H
#define MSGS_1515_MESSAGE_CLUSTERRADARARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <msgs_1515/ClusterRadar.h>

namespace msgs_1515
{
template <class ContainerAllocator>
struct ClusterRadarArray_
{
  typedef ClusterRadarArray_<ContainerAllocator> Type;

  ClusterRadarArray_()
    : header()
    , clusterRadarArray()
    , nof_targetsnear(0.0)
    , nof_targetsfar(0.0)
    , meas_counter(0.0)
    , interface_version(0.0)  {
    }
  ClusterRadarArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , clusterRadarArray(_alloc)
    , nof_targetsnear(0.0)
    , nof_targetsfar(0.0)
    , meas_counter(0.0)
    , interface_version(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::msgs_1515::ClusterRadar_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::msgs_1515::ClusterRadar_<ContainerAllocator> >> _clusterRadarArray_type;
  _clusterRadarArray_type clusterRadarArray;

   typedef float _nof_targetsnear_type;
  _nof_targetsnear_type nof_targetsnear;

   typedef float _nof_targetsfar_type;
  _nof_targetsfar_type nof_targetsfar;

   typedef float _meas_counter_type;
  _meas_counter_type meas_counter;

   typedef float _interface_version_type;
  _interface_version_type interface_version;





  typedef boost::shared_ptr< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> const> ConstPtr;

}; // struct ClusterRadarArray_

typedef ::msgs_1515::ClusterRadarArray_<std::allocator<void> > ClusterRadarArray;

typedef boost::shared_ptr< ::msgs_1515::ClusterRadarArray > ClusterRadarArrayPtr;
typedef boost::shared_ptr< ::msgs_1515::ClusterRadarArray const> ClusterRadarArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_1515::ClusterRadarArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgs_1515::ClusterRadarArray_<ContainerAllocator1> & lhs, const ::msgs_1515::ClusterRadarArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.clusterRadarArray == rhs.clusterRadarArray &&
    lhs.nof_targetsnear == rhs.nof_targetsnear &&
    lhs.nof_targetsfar == rhs.nof_targetsfar &&
    lhs.meas_counter == rhs.meas_counter &&
    lhs.interface_version == rhs.interface_version;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgs_1515::ClusterRadarArray_<ContainerAllocator1> & lhs, const ::msgs_1515::ClusterRadarArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgs_1515

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3788d9ac9895b49d2a932679c4bf0315";
  }

  static const char* value(const ::msgs_1515::ClusterRadarArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3788d9ac9895b49dULL;
  static const uint64_t static_value2 = 0x2a932679c4bf0315ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_1515/ClusterRadarArray";
  }

  static const char* value(const ::msgs_1515::ClusterRadarArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"ClusterRadar[] clusterRadarArray\n"
"float32 nof_targetsnear\n"
"float32 nof_targetsfar\n"
"float32 meas_counter\n"
"float32 interface_version\n"
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
"\n"
"================================================================================\n"
"MSG: msgs_1515/ClusterRadar\n"
"Header header\n"
"uint8 target_id\n"
"float32 longitude_dist\n"
"float32 lateral_dist\n"
"float32 longitude_vel\n"
"float32 lateral_vel\n"
"float32 rcs\n"
"float32 DynProp\n"
"float32 std_dev_long_dist\n"
"float32 std_dev_lat_dist\n"
"float32 std_dev_long_vel\n"
"float32 std_dev_lat_vel\n"
"float32 false_alarm_prob\n"
"float32 validty_state\n"
"float32 doppler_state\n"
"bool static_check\n"
;
  }

  static const char* value(const ::msgs_1515::ClusterRadarArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.clusterRadarArray);
      stream.next(m.nof_targetsnear);
      stream.next(m.nof_targetsfar);
      stream.next(m.meas_counter);
      stream.next(m.interface_version);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClusterRadarArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_1515::ClusterRadarArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_1515::ClusterRadarArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "clusterRadarArray[]" << std::endl;
    for (size_t i = 0; i < v.clusterRadarArray.size(); ++i)
    {
      s << indent << "  clusterRadarArray[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::msgs_1515::ClusterRadar_<ContainerAllocator> >::stream(s, indent + "    ", v.clusterRadarArray[i]);
    }
    s << indent << "nof_targetsnear: ";
    Printer<float>::stream(s, indent + "  ", v.nof_targetsnear);
    s << indent << "nof_targetsfar: ";
    Printer<float>::stream(s, indent + "  ", v.nof_targetsfar);
    s << indent << "meas_counter: ";
    Printer<float>::stream(s, indent + "  ", v.meas_counter);
    s << indent << "interface_version: ";
    Printer<float>::stream(s, indent + "  ", v.interface_version);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_1515_MESSAGE_CLUSTERRADARARRAY_H