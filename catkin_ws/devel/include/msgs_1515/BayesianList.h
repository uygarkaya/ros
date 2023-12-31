// Generated by gencpp from file msgs_1515/BayesianList.msg
// DO NOT EDIT!


#ifndef MSGS_1515_MESSAGE_BAYESIANLIST_H
#define MSGS_1515_MESSAGE_BAYESIANLIST_H


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
struct BayesianList_
{
  typedef BayesianList_<ContainerAllocator> Type;

  BayesianList_()
    : Q1(0)
    , Q2(0)
    , Q3(0)
    , Q4(0)
    , Q5(0)
    , Q6(0)
    , Q7(0)
    , Q8(0)
    , Q9(0)
    , Q10(0)  {
    }
  BayesianList_(const ContainerAllocator& _alloc)
    : Q1(0)
    , Q2(0)
    , Q3(0)
    , Q4(0)
    , Q5(0)
    , Q6(0)
    , Q7(0)
    , Q8(0)
    , Q9(0)
    , Q10(0)  {
  (void)_alloc;
    }



   typedef uint8_t _Q1_type;
  _Q1_type Q1;

   typedef uint8_t _Q2_type;
  _Q2_type Q2;

   typedef uint8_t _Q3_type;
  _Q3_type Q3;

   typedef uint8_t _Q4_type;
  _Q4_type Q4;

   typedef uint8_t _Q5_type;
  _Q5_type Q5;

   typedef uint8_t _Q6_type;
  _Q6_type Q6;

   typedef uint8_t _Q7_type;
  _Q7_type Q7;

   typedef uint8_t _Q8_type;
  _Q8_type Q8;

   typedef uint8_t _Q9_type;
  _Q9_type Q9;

   typedef uint8_t _Q10_type;
  _Q10_type Q10;





  typedef boost::shared_ptr< ::msgs_1515::BayesianList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_1515::BayesianList_<ContainerAllocator> const> ConstPtr;

}; // struct BayesianList_

typedef ::msgs_1515::BayesianList_<std::allocator<void> > BayesianList;

typedef boost::shared_ptr< ::msgs_1515::BayesianList > BayesianListPtr;
typedef boost::shared_ptr< ::msgs_1515::BayesianList const> BayesianListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_1515::BayesianList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_1515::BayesianList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgs_1515::BayesianList_<ContainerAllocator1> & lhs, const ::msgs_1515::BayesianList_<ContainerAllocator2> & rhs)
{
  return lhs.Q1 == rhs.Q1 &&
    lhs.Q2 == rhs.Q2 &&
    lhs.Q3 == rhs.Q3 &&
    lhs.Q4 == rhs.Q4 &&
    lhs.Q5 == rhs.Q5 &&
    lhs.Q6 == rhs.Q6 &&
    lhs.Q7 == rhs.Q7 &&
    lhs.Q8 == rhs.Q8 &&
    lhs.Q9 == rhs.Q9 &&
    lhs.Q10 == rhs.Q10;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgs_1515::BayesianList_<ContainerAllocator1> & lhs, const ::msgs_1515::BayesianList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgs_1515

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::BayesianList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::BayesianList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::BayesianList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::BayesianList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::BayesianList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::BayesianList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_1515::BayesianList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27e0bc7354fd5b6934bfa9c612e9bff1";
  }

  static const char* value(const ::msgs_1515::BayesianList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27e0bc7354fd5b69ULL;
  static const uint64_t static_value2 = 0x34bfa9c612e9bff1ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_1515::BayesianList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_1515/BayesianList";
  }

  static const char* value(const ::msgs_1515::BayesianList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_1515::BayesianList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 Q1\n"
"uint8 Q2\n"
"uint8 Q3\n"
"uint8 Q4\n"
"uint8 Q5\n"
"uint8 Q6\n"
"uint8 Q7\n"
"uint8 Q8\n"
"uint8 Q9\n"
"uint8 Q10\n"
;
  }

  static const char* value(const ::msgs_1515::BayesianList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_1515::BayesianList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Q1);
      stream.next(m.Q2);
      stream.next(m.Q3);
      stream.next(m.Q4);
      stream.next(m.Q5);
      stream.next(m.Q6);
      stream.next(m.Q7);
      stream.next(m.Q8);
      stream.next(m.Q9);
      stream.next(m.Q10);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BayesianList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_1515::BayesianList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_1515::BayesianList_<ContainerAllocator>& v)
  {
    s << indent << "Q1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q1);
    s << indent << "Q2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q2);
    s << indent << "Q3: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q3);
    s << indent << "Q4: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q4);
    s << indent << "Q5: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q5);
    s << indent << "Q6: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q6);
    s << indent << "Q7: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q7);
    s << indent << "Q8: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q8);
    s << indent << "Q9: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q9);
    s << indent << "Q10: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Q10);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_1515_MESSAGE_BAYESIANLIST_H
