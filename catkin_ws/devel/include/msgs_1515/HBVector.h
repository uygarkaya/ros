// Generated by gencpp from file msgs_1515/HBVector.msg
// DO NOT EDIT!


#ifndef MSGS_1515_MESSAGE_HBVECTOR_H
#define MSGS_1515_MESSAGE_HBVECTOR_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>

namespace msgs_1515
{
template <class ContainerAllocator>
struct HBVector_
{
  typedef HBVector_<ContainerAllocator> Type;

  HBVector_()
    : header()
    , HBVectorSubscribedTopicNames()
    , HBVectorSubscribedTopicFrequencyCheck()
    , HBVectorPublishedTopicNames()
    , HBVectorPublishedTopicOutputBoundaryCheck()  {
    }
  HBVector_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , HBVectorSubscribedTopicNames(_alloc)
    , HBVectorSubscribedTopicFrequencyCheck(_alloc)
    , HBVectorPublishedTopicNames(_alloc)
    , HBVectorPublishedTopicOutputBoundaryCheck(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::std_msgs::String_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::std_msgs::String_<ContainerAllocator> >> _HBVectorSubscribedTopicNames_type;
  _HBVectorSubscribedTopicNames_type HBVectorSubscribedTopicNames;

   typedef std::vector< ::std_msgs::Bool_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::std_msgs::Bool_<ContainerAllocator> >> _HBVectorSubscribedTopicFrequencyCheck_type;
  _HBVectorSubscribedTopicFrequencyCheck_type HBVectorSubscribedTopicFrequencyCheck;

   typedef std::vector< ::std_msgs::String_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::std_msgs::String_<ContainerAllocator> >> _HBVectorPublishedTopicNames_type;
  _HBVectorPublishedTopicNames_type HBVectorPublishedTopicNames;

   typedef std::vector< ::std_msgs::Bool_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::std_msgs::Bool_<ContainerAllocator> >> _HBVectorPublishedTopicOutputBoundaryCheck_type;
  _HBVectorPublishedTopicOutputBoundaryCheck_type HBVectorPublishedTopicOutputBoundaryCheck;





  typedef boost::shared_ptr< ::msgs_1515::HBVector_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_1515::HBVector_<ContainerAllocator> const> ConstPtr;

}; // struct HBVector_

typedef ::msgs_1515::HBVector_<std::allocator<void> > HBVector;

typedef boost::shared_ptr< ::msgs_1515::HBVector > HBVectorPtr;
typedef boost::shared_ptr< ::msgs_1515::HBVector const> HBVectorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_1515::HBVector_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_1515::HBVector_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgs_1515::HBVector_<ContainerAllocator1> & lhs, const ::msgs_1515::HBVector_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.HBVectorSubscribedTopicNames == rhs.HBVectorSubscribedTopicNames &&
    lhs.HBVectorSubscribedTopicFrequencyCheck == rhs.HBVectorSubscribedTopicFrequencyCheck &&
    lhs.HBVectorPublishedTopicNames == rhs.HBVectorPublishedTopicNames &&
    lhs.HBVectorPublishedTopicOutputBoundaryCheck == rhs.HBVectorPublishedTopicOutputBoundaryCheck;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgs_1515::HBVector_<ContainerAllocator1> & lhs, const ::msgs_1515::HBVector_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgs_1515

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::HBVector_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::HBVector_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::HBVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::HBVector_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::HBVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::HBVector_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_1515::HBVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "090614f5d21826ff335eda6bf5c4b40f";
  }

  static const char* value(const ::msgs_1515::HBVector_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x090614f5d21826ffULL;
  static const uint64_t static_value2 = 0x335eda6bf5c4b40fULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_1515::HBVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_1515/HBVector";
  }

  static const char* value(const ::msgs_1515::HBVector_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_1515::HBVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"std_msgs/String[] HBVectorSubscribedTopicNames\n"
"std_msgs/Bool[] HBVectorSubscribedTopicFrequencyCheck\n"
"std_msgs/String[] HBVectorPublishedTopicNames\n"
"std_msgs/Bool[] HBVectorPublishedTopicOutputBoundaryCheck\n"
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
"MSG: std_msgs/String\n"
"string data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
;
  }

  static const char* value(const ::msgs_1515::HBVector_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_1515::HBVector_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.HBVectorSubscribedTopicNames);
      stream.next(m.HBVectorSubscribedTopicFrequencyCheck);
      stream.next(m.HBVectorPublishedTopicNames);
      stream.next(m.HBVectorPublishedTopicOutputBoundaryCheck);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HBVector_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_1515::HBVector_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_1515::HBVector_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "HBVectorSubscribedTopicNames[]" << std::endl;
    for (size_t i = 0; i < v.HBVectorSubscribedTopicNames.size(); ++i)
    {
      s << indent << "  HBVectorSubscribedTopicNames[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "    ", v.HBVectorSubscribedTopicNames[i]);
    }
    s << indent << "HBVectorSubscribedTopicFrequencyCheck[]" << std::endl;
    for (size_t i = 0; i < v.HBVectorSubscribedTopicFrequencyCheck.size(); ++i)
    {
      s << indent << "  HBVectorSubscribedTopicFrequencyCheck[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "    ", v.HBVectorSubscribedTopicFrequencyCheck[i]);
    }
    s << indent << "HBVectorPublishedTopicNames[]" << std::endl;
    for (size_t i = 0; i < v.HBVectorPublishedTopicNames.size(); ++i)
    {
      s << indent << "  HBVectorPublishedTopicNames[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "    ", v.HBVectorPublishedTopicNames[i]);
    }
    s << indent << "HBVectorPublishedTopicOutputBoundaryCheck[]" << std::endl;
    for (size_t i = 0; i < v.HBVectorPublishedTopicOutputBoundaryCheck.size(); ++i)
    {
      s << indent << "  HBVectorPublishedTopicOutputBoundaryCheck[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "    ", v.HBVectorPublishedTopicOutputBoundaryCheck[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_1515_MESSAGE_HBVECTOR_H