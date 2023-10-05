// Generated by gencpp from file msgs_1515/imu.msg
// DO NOT EDIT!


#ifndef MSGS_1515_MESSAGE_IMU_H
#define MSGS_1515_MESSAGE_IMU_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace msgs_1515
{
template <class ContainerAllocator>
struct imu_
{
  typedef imu_<ContainerAllocator> Type;

  imu_()
    : header()
    , angular_velocity()
    , linear_acceleration()  {
    }
  imu_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , angular_velocity(_alloc)
    , linear_acceleration(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _angular_velocity_type;
  _angular_velocity_type angular_velocity;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _linear_acceleration_type;
  _linear_acceleration_type linear_acceleration;





  typedef boost::shared_ptr< ::msgs_1515::imu_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_1515::imu_<ContainerAllocator> const> ConstPtr;

}; // struct imu_

typedef ::msgs_1515::imu_<std::allocator<void> > imu;

typedef boost::shared_ptr< ::msgs_1515::imu > imuPtr;
typedef boost::shared_ptr< ::msgs_1515::imu const> imuConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_1515::imu_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_1515::imu_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgs_1515::imu_<ContainerAllocator1> & lhs, const ::msgs_1515::imu_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.angular_velocity == rhs.angular_velocity &&
    lhs.linear_acceleration == rhs.linear_acceleration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgs_1515::imu_<ContainerAllocator1> & lhs, const ::msgs_1515::imu_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgs_1515

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::imu_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::imu_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::imu_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::imu_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::imu_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::imu_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_1515::imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "464450fcea736fec565d7aac952efb90";
  }

  static const char* value(const ::msgs_1515::imu_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x464450fcea736fecULL;
  static const uint64_t static_value2 = 0x565d7aac952efb90ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_1515::imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_1515/imu";
  }

  static const char* value(const ::msgs_1515::imu_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_1515::imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"geometry_msgs/Vector3 angular_velocity\n"
"geometry_msgs/Vector3 linear_acceleration\n"
"\n"
" \n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::msgs_1515::imu_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_1515::imu_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.angular_velocity);
      stream.next(m.linear_acceleration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct imu_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_1515::imu_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_1515::imu_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "angular_velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.angular_velocity);
    s << indent << "linear_acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.linear_acceleration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_1515_MESSAGE_IMU_H
