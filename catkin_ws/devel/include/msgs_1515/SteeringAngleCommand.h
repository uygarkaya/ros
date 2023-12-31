// Generated by gencpp from file msgs_1515/SteeringAngleCommand.msg
// DO NOT EDIT!


#ifndef MSGS_1515_MESSAGE_STEERINGANGLECOMMAND_H
#define MSGS_1515_MESSAGE_STEERINGANGLECOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace msgs_1515
{
template <class ContainerAllocator>
struct SteeringAngleCommand_
{
  typedef SteeringAngleCommand_<ContainerAllocator> Type;

  SteeringAngleCommand_()
    : header()
    , flag(0)
    , steering_angle(0)
    , max_velocity(0)  {
    }
  SteeringAngleCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , flag(0)
    , steering_angle(0)
    , max_velocity(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _flag_type;
  _flag_type flag;

   typedef int16_t _steering_angle_type;
  _steering_angle_type steering_angle;

   typedef int16_t _max_velocity_type;
  _max_velocity_type max_velocity;





  typedef boost::shared_ptr< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> const> ConstPtr;

}; // struct SteeringAngleCommand_

typedef ::msgs_1515::SteeringAngleCommand_<std::allocator<void> > SteeringAngleCommand;

typedef boost::shared_ptr< ::msgs_1515::SteeringAngleCommand > SteeringAngleCommandPtr;
typedef boost::shared_ptr< ::msgs_1515::SteeringAngleCommand const> SteeringAngleCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator1> & lhs, const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.flag == rhs.flag &&
    lhs.steering_angle == rhs.steering_angle &&
    lhs.max_velocity == rhs.max_velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator1> & lhs, const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgs_1515

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "61975182c288d6efa2e8fdf65060714d";
  }

  static const char* value(const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x61975182c288d6efULL;
  static const uint64_t static_value2 = 0xa2e8fdf65060714dULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_1515/SteeringAngleCommand";
  }

  static const char* value(const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint8 flag\n"
"int16 steering_angle\n"
"int16 max_velocity\n"
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

  static const char* value(const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.flag);
      stream.next(m.steering_angle);
      stream.next(m.max_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SteeringAngleCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_1515::SteeringAngleCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_1515::SteeringAngleCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flag);
    s << indent << "steering_angle: ";
    Printer<int16_t>::stream(s, indent + "  ", v.steering_angle);
    s << indent << "max_velocity: ";
    Printer<int16_t>::stream(s, indent + "  ", v.max_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_1515_MESSAGE_STEERINGANGLECOMMAND_H
