// Generated by gencpp from file msgs_1515/ClusterList.msg
// DO NOT EDIT!


#ifndef MSGS_1515_MESSAGE_CLUSTERLIST_H
#define MSGS_1515_MESSAGE_CLUSTERLIST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace msgs_1515
{
template <class ContainerAllocator>
struct ClusterList_
{
  typedef ClusterList_<ContainerAllocator> Type;

  ClusterList_()
    : nof_targetsnear(0)
    , nof_targetsfar(0)
    , meas_counter(0)
    , interface_version(0)  {
    }
  ClusterList_(const ContainerAllocator& _alloc)
    : nof_targetsnear(0)
    , nof_targetsfar(0)
    , meas_counter(0)
    , interface_version(0)  {
  (void)_alloc;
    }



   typedef uint8_t _nof_targetsnear_type;
  _nof_targetsnear_type nof_targetsnear;

   typedef uint8_t _nof_targetsfar_type;
  _nof_targetsfar_type nof_targetsfar;

   typedef uint32_t _meas_counter_type;
  _meas_counter_type meas_counter;

   typedef uint8_t _interface_version_type;
  _interface_version_type interface_version;





  typedef boost::shared_ptr< ::msgs_1515::ClusterList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_1515::ClusterList_<ContainerAllocator> const> ConstPtr;

}; // struct ClusterList_

typedef ::msgs_1515::ClusterList_<std::allocator<void> > ClusterList;

typedef boost::shared_ptr< ::msgs_1515::ClusterList > ClusterListPtr;
typedef boost::shared_ptr< ::msgs_1515::ClusterList const> ClusterListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_1515::ClusterList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_1515::ClusterList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgs_1515::ClusterList_<ContainerAllocator1> & lhs, const ::msgs_1515::ClusterList_<ContainerAllocator2> & rhs)
{
  return lhs.nof_targetsnear == rhs.nof_targetsnear &&
    lhs.nof_targetsfar == rhs.nof_targetsfar &&
    lhs.meas_counter == rhs.meas_counter &&
    lhs.interface_version == rhs.interface_version;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgs_1515::ClusterList_<ContainerAllocator1> & lhs, const ::msgs_1515::ClusterList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgs_1515

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::ClusterList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::ClusterList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::ClusterList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::ClusterList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::ClusterList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::ClusterList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_1515::ClusterList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95a654931a9c98d760080cd397e1011c";
  }

  static const char* value(const ::msgs_1515::ClusterList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95a654931a9c98d7ULL;
  static const uint64_t static_value2 = 0x60080cd397e1011cULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_1515::ClusterList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_1515/ClusterList";
  }

  static const char* value(const ::msgs_1515::ClusterList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_1515::ClusterList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 nof_targetsnear\n"
"uint8 nof_targetsfar\n"
"uint32 meas_counter\n"
"uint8 interface_version\n"
;
  }

  static const char* value(const ::msgs_1515::ClusterList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_1515::ClusterList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.nof_targetsnear);
      stream.next(m.nof_targetsfar);
      stream.next(m.meas_counter);
      stream.next(m.interface_version);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClusterList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_1515::ClusterList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_1515::ClusterList_<ContainerAllocator>& v)
  {
    s << indent << "nof_targetsnear: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.nof_targetsnear);
    s << indent << "nof_targetsfar: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.nof_targetsfar);
    s << indent << "meas_counter: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.meas_counter);
    s << indent << "interface_version: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.interface_version);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_1515_MESSAGE_CLUSTERLIST_H
