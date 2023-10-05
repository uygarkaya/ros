// Generated by gencpp from file mobileye_560_660_msgs/AwsDisplay.msg
// DO NOT EDIT!


#ifndef MOBILEYE_560_660_MSGS_MESSAGE_AWSDISPLAY_H
#define MOBILEYE_560_660_MSGS_MESSAGE_AWSDISPLAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mobileye_560_660_msgs
{
template <class ContainerAllocator>
struct AwsDisplay_
{
  typedef AwsDisplay_<ContainerAllocator> Type;

  AwsDisplay_()
    : header()
    , suppress_sound(false)
    , night_time(false)
    , dusk_time(false)
    , sound_type(0)
    , headway_valid(false)
    , headway_measurement(0.0)
    , lanes_on(false)
    , left_ldw_on(false)
    , right_ldw_on(false)
    , fcw_on(false)
    , left_crossing(false)
    , right_crossing(false)
    , maintenance(false)
    , failsafe(false)
    , ped_fcw(false)
    , ped_in_dz(false)
    , headway_warning_level(0)  {
    }
  AwsDisplay_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , suppress_sound(false)
    , night_time(false)
    , dusk_time(false)
    , sound_type(0)
    , headway_valid(false)
    , headway_measurement(0.0)
    , lanes_on(false)
    , left_ldw_on(false)
    , right_ldw_on(false)
    , fcw_on(false)
    , left_crossing(false)
    , right_crossing(false)
    , maintenance(false)
    , failsafe(false)
    , ped_fcw(false)
    , ped_in_dz(false)
    , headway_warning_level(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _suppress_sound_type;
  _suppress_sound_type suppress_sound;

   typedef uint8_t _night_time_type;
  _night_time_type night_time;

   typedef uint8_t _dusk_time_type;
  _dusk_time_type dusk_time;

   typedef uint8_t _sound_type_type;
  _sound_type_type sound_type;

   typedef uint8_t _headway_valid_type;
  _headway_valid_type headway_valid;

   typedef float _headway_measurement_type;
  _headway_measurement_type headway_measurement;

   typedef uint8_t _lanes_on_type;
  _lanes_on_type lanes_on;

   typedef uint8_t _left_ldw_on_type;
  _left_ldw_on_type left_ldw_on;

   typedef uint8_t _right_ldw_on_type;
  _right_ldw_on_type right_ldw_on;

   typedef uint8_t _fcw_on_type;
  _fcw_on_type fcw_on;

   typedef uint8_t _left_crossing_type;
  _left_crossing_type left_crossing;

   typedef uint8_t _right_crossing_type;
  _right_crossing_type right_crossing;

   typedef uint8_t _maintenance_type;
  _maintenance_type maintenance;

   typedef uint8_t _failsafe_type;
  _failsafe_type failsafe;

   typedef uint8_t _ped_fcw_type;
  _ped_fcw_type ped_fcw;

   typedef uint8_t _ped_in_dz_type;
  _ped_in_dz_type ped_in_dz;

   typedef uint8_t _headway_warning_level_type;
  _headway_warning_level_type headway_warning_level;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SOUND_SILENT)
  #undef SOUND_SILENT
#endif
#if defined(_WIN32) && defined(SOUND_LDWL)
  #undef SOUND_LDWL
#endif
#if defined(_WIN32) && defined(SOUND_LDWR)
  #undef SOUND_LDWR
#endif
#if defined(_WIN32) && defined(SOUND_FAR_HW)
  #undef SOUND_FAR_HW
#endif
#if defined(_WIN32) && defined(SOUND_NEAR_HW)
  #undef SOUND_NEAR_HW
#endif
#if defined(_WIN32) && defined(SOUND_SOFT_FCW)
  #undef SOUND_SOFT_FCW
#endif
#if defined(_WIN32) && defined(SOUND_HARD_FCW)
  #undef SOUND_HARD_FCW
#endif
#if defined(_WIN32) && defined(SOUND_RESERVED)
  #undef SOUND_RESERVED
#endif
#if defined(_WIN32) && defined(HEADWAY_LEVEL_OFF)
  #undef HEADWAY_LEVEL_OFF
#endif
#if defined(_WIN32) && defined(HEADWAY_LEVEL_GREEN)
  #undef HEADWAY_LEVEL_GREEN
#endif
#if defined(_WIN32) && defined(HEADWAY_LEVEL_ORANGE)
  #undef HEADWAY_LEVEL_ORANGE
#endif
#if defined(_WIN32) && defined(HEADWAY_LEVEL_RED)
  #undef HEADWAY_LEVEL_RED
#endif

  enum {
    SOUND_SILENT = 0u,
    SOUND_LDWL = 1u,
    SOUND_LDWR = 2u,
    SOUND_FAR_HW = 3u,
    SOUND_NEAR_HW = 4u,
    SOUND_SOFT_FCW = 5u,
    SOUND_HARD_FCW = 6u,
    SOUND_RESERVED = 7u,
    HEADWAY_LEVEL_OFF = 0u,
    HEADWAY_LEVEL_GREEN = 1u,
    HEADWAY_LEVEL_ORANGE = 2u,
    HEADWAY_LEVEL_RED = 3u,
  };


  typedef boost::shared_ptr< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> const> ConstPtr;

}; // struct AwsDisplay_

typedef ::mobileye_560_660_msgs::AwsDisplay_<std::allocator<void> > AwsDisplay;

typedef boost::shared_ptr< ::mobileye_560_660_msgs::AwsDisplay > AwsDisplayPtr;
typedef boost::shared_ptr< ::mobileye_560_660_msgs::AwsDisplay const> AwsDisplayConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator1> & lhs, const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.suppress_sound == rhs.suppress_sound &&
    lhs.night_time == rhs.night_time &&
    lhs.dusk_time == rhs.dusk_time &&
    lhs.sound_type == rhs.sound_type &&
    lhs.headway_valid == rhs.headway_valid &&
    lhs.headway_measurement == rhs.headway_measurement &&
    lhs.lanes_on == rhs.lanes_on &&
    lhs.left_ldw_on == rhs.left_ldw_on &&
    lhs.right_ldw_on == rhs.right_ldw_on &&
    lhs.fcw_on == rhs.fcw_on &&
    lhs.left_crossing == rhs.left_crossing &&
    lhs.right_crossing == rhs.right_crossing &&
    lhs.maintenance == rhs.maintenance &&
    lhs.failsafe == rhs.failsafe &&
    lhs.ped_fcw == rhs.ped_fcw &&
    lhs.ped_in_dz == rhs.ped_in_dz &&
    lhs.headway_warning_level == rhs.headway_warning_level;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator1> & lhs, const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mobileye_560_660_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7aa82a0063aa4c0e719bef3d14c24bf7";
  }

  static const char* value(const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7aa82a0063aa4c0eULL;
  static const uint64_t static_value2 = 0x719bef3d14c24bf7ULL;
};

template<class ContainerAllocator>
struct DataType< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mobileye_560_660_msgs/AwsDisplay";
  }

  static const char* value(const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"bool suppress_sound\n"
"bool night_time\n"
"bool dusk_time\n"
"\n"
"uint8 SOUND_SILENT = 0\n"
"uint8 SOUND_LDWL = 1\n"
"uint8 SOUND_LDWR = 2\n"
"uint8 SOUND_FAR_HW = 3\n"
"uint8 SOUND_NEAR_HW = 4\n"
"uint8 SOUND_SOFT_FCW = 5\n"
"uint8 SOUND_HARD_FCW = 6\n"
"uint8 SOUND_RESERVED = 7\n"
"uint8 sound_type\n"
"\n"
"bool headway_valid\n"
"float32 headway_measurement\n"
"bool lanes_on\n"
"bool left_ldw_on\n"
"bool right_ldw_on\n"
"bool fcw_on\n"
"bool left_crossing\n"
"bool right_crossing\n"
"bool maintenance\n"
"bool failsafe\n"
"bool ped_fcw\n"
"bool ped_in_dz\n"
"\n"
"uint8 HEADWAY_LEVEL_OFF = 0\n"
"uint8 HEADWAY_LEVEL_GREEN = 1\n"
"uint8 HEADWAY_LEVEL_ORANGE = 2\n"
"uint8 HEADWAY_LEVEL_RED = 3\n"
"uint8 headway_warning_level\n"
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

  static const char* value(const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.suppress_sound);
      stream.next(m.night_time);
      stream.next(m.dusk_time);
      stream.next(m.sound_type);
      stream.next(m.headway_valid);
      stream.next(m.headway_measurement);
      stream.next(m.lanes_on);
      stream.next(m.left_ldw_on);
      stream.next(m.right_ldw_on);
      stream.next(m.fcw_on);
      stream.next(m.left_crossing);
      stream.next(m.right_crossing);
      stream.next(m.maintenance);
      stream.next(m.failsafe);
      stream.next(m.ped_fcw);
      stream.next(m.ped_in_dz);
      stream.next(m.headway_warning_level);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AwsDisplay_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mobileye_560_660_msgs::AwsDisplay_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "suppress_sound: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.suppress_sound);
    s << indent << "night_time: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.night_time);
    s << indent << "dusk_time: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dusk_time);
    s << indent << "sound_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sound_type);
    s << indent << "headway_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.headway_valid);
    s << indent << "headway_measurement: ";
    Printer<float>::stream(s, indent + "  ", v.headway_measurement);
    s << indent << "lanes_on: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lanes_on);
    s << indent << "left_ldw_on: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_ldw_on);
    s << indent << "right_ldw_on: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_ldw_on);
    s << indent << "fcw_on: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fcw_on);
    s << indent << "left_crossing: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_crossing);
    s << indent << "right_crossing: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_crossing);
    s << indent << "maintenance: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.maintenance);
    s << indent << "failsafe: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.failsafe);
    s << indent << "ped_fcw: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ped_fcw);
    s << indent << "ped_in_dz: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ped_in_dz);
    s << indent << "headway_warning_level: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.headway_warning_level);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOBILEYE_560_660_MSGS_MESSAGE_AWSDISPLAY_H
