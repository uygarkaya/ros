// Generated by gencpp from file msgs_1515/ObstacleProperties.msg
// DO NOT EDIT!


#ifndef MSGS_1515_MESSAGE_OBSTACLEPROPERTIES_H
#define MSGS_1515_MESSAGE_OBSTACLEPROPERTIES_H


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
struct ObstacleProperties_
{
  typedef ObstacleProperties_<ContainerAllocator> Type;

  ObstacleProperties_()
    : blinker_info(0)
    , cut_in_and_out(0)
    , obstacle_type(0)
    , obstacle_status(0)
    , obstacle_brake_lights(false)
    , obstacle_valid(0)
    , obstacle_age(0)
    , obstacle_lane(0)
    , cipv_flag(false)
    , radar_pos_x(0.0)
    , radar_vel_x(0.0)
    , radar_match_confidence(0)
    , matched_radar_id(0)
    , obstacle_scale_change(0.0)
    , obstacle_replaced(false)
    , radar_obstacle_id(0)
    , me_obstacle_id(0)
    , rcs(0.0)
    , prob_exist(0.0)
    , obstacle_class()
    , dyn_property()
    , meas_state(0)
    , track_id(0)
    , track_status(0)
    , prbty_exstn(0.0)
    , prbty_prsntn(0.0)
    , prbty_detn(0.0)
    , prbty_clutr(0.0)
    , covariance()
    , R()  {
    }
  ObstacleProperties_(const ContainerAllocator& _alloc)
    : blinker_info(0)
    , cut_in_and_out(0)
    , obstacle_type(0)
    , obstacle_status(0)
    , obstacle_brake_lights(false)
    , obstacle_valid(0)
    , obstacle_age(0)
    , obstacle_lane(0)
    , cipv_flag(false)
    , radar_pos_x(0.0)
    , radar_vel_x(0.0)
    , radar_match_confidence(0)
    , matched_radar_id(0)
    , obstacle_scale_change(0.0)
    , obstacle_replaced(false)
    , radar_obstacle_id(0)
    , me_obstacle_id(0)
    , rcs(0.0)
    , prob_exist(0.0)
    , obstacle_class(_alloc)
    , dyn_property(_alloc)
    , meas_state(0)
    , track_id(0)
    , track_status(0)
    , prbty_exstn(0.0)
    , prbty_prsntn(0.0)
    , prbty_detn(0.0)
    , prbty_clutr(0.0)
    , covariance(_alloc)
    , R(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _blinker_info_type;
  _blinker_info_type blinker_info;

   typedef uint8_t _cut_in_and_out_type;
  _cut_in_and_out_type cut_in_and_out;

   typedef uint8_t _obstacle_type_type;
  _obstacle_type_type obstacle_type;

   typedef uint8_t _obstacle_status_type;
  _obstacle_status_type obstacle_status;

   typedef uint8_t _obstacle_brake_lights_type;
  _obstacle_brake_lights_type obstacle_brake_lights;

   typedef uint8_t _obstacle_valid_type;
  _obstacle_valid_type obstacle_valid;

   typedef uint16_t _obstacle_age_type;
  _obstacle_age_type obstacle_age;

   typedef uint8_t _obstacle_lane_type;
  _obstacle_lane_type obstacle_lane;

   typedef uint8_t _cipv_flag_type;
  _cipv_flag_type cipv_flag;

   typedef float _radar_pos_x_type;
  _radar_pos_x_type radar_pos_x;

   typedef float _radar_vel_x_type;
  _radar_vel_x_type radar_vel_x;

   typedef uint8_t _radar_match_confidence_type;
  _radar_match_confidence_type radar_match_confidence;

   typedef uint16_t _matched_radar_id_type;
  _matched_radar_id_type matched_radar_id;

   typedef double _obstacle_scale_change_type;
  _obstacle_scale_change_type obstacle_scale_change;

   typedef uint8_t _obstacle_replaced_type;
  _obstacle_replaced_type obstacle_replaced;

   typedef uint8_t _radar_obstacle_id_type;
  _radar_obstacle_id_type radar_obstacle_id;

   typedef uint16_t _me_obstacle_id_type;
  _me_obstacle_id_type me_obstacle_id;

   typedef float _rcs_type;
  _rcs_type rcs;

   typedef float _prob_exist_type;
  _prob_exist_type prob_exist;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _obstacle_class_type;
  _obstacle_class_type obstacle_class;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _dyn_property_type;
  _dyn_property_type dyn_property;

   typedef uint8_t _meas_state_type;
  _meas_state_type meas_state;

   typedef uint16_t _track_id_type;
  _track_id_type track_id;

   typedef uint8_t _track_status_type;
  _track_status_type track_status;

   typedef double _prbty_exstn_type;
  _prbty_exstn_type prbty_exstn;

   typedef double _prbty_prsntn_type;
  _prbty_prsntn_type prbty_prsntn;

   typedef double _prbty_detn_type;
  _prbty_detn_type prbty_detn;

   typedef double _prbty_clutr_type;
  _prbty_clutr_type prbty_clutr;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _covariance_type;
  _covariance_type covariance;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _R_type;
  _R_type R;





  typedef boost::shared_ptr< ::msgs_1515::ObstacleProperties_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgs_1515::ObstacleProperties_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleProperties_

typedef ::msgs_1515::ObstacleProperties_<std::allocator<void> > ObstacleProperties;

typedef boost::shared_ptr< ::msgs_1515::ObstacleProperties > ObstaclePropertiesPtr;
typedef boost::shared_ptr< ::msgs_1515::ObstacleProperties const> ObstaclePropertiesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgs_1515::ObstacleProperties_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgs_1515::ObstacleProperties_<ContainerAllocator1> & lhs, const ::msgs_1515::ObstacleProperties_<ContainerAllocator2> & rhs)
{
  return lhs.blinker_info == rhs.blinker_info &&
    lhs.cut_in_and_out == rhs.cut_in_and_out &&
    lhs.obstacle_type == rhs.obstacle_type &&
    lhs.obstacle_status == rhs.obstacle_status &&
    lhs.obstacle_brake_lights == rhs.obstacle_brake_lights &&
    lhs.obstacle_valid == rhs.obstacle_valid &&
    lhs.obstacle_age == rhs.obstacle_age &&
    lhs.obstacle_lane == rhs.obstacle_lane &&
    lhs.cipv_flag == rhs.cipv_flag &&
    lhs.radar_pos_x == rhs.radar_pos_x &&
    lhs.radar_vel_x == rhs.radar_vel_x &&
    lhs.radar_match_confidence == rhs.radar_match_confidence &&
    lhs.matched_radar_id == rhs.matched_radar_id &&
    lhs.obstacle_scale_change == rhs.obstacle_scale_change &&
    lhs.obstacle_replaced == rhs.obstacle_replaced &&
    lhs.radar_obstacle_id == rhs.radar_obstacle_id &&
    lhs.me_obstacle_id == rhs.me_obstacle_id &&
    lhs.rcs == rhs.rcs &&
    lhs.prob_exist == rhs.prob_exist &&
    lhs.obstacle_class == rhs.obstacle_class &&
    lhs.dyn_property == rhs.dyn_property &&
    lhs.meas_state == rhs.meas_state &&
    lhs.track_id == rhs.track_id &&
    lhs.track_status == rhs.track_status &&
    lhs.prbty_exstn == rhs.prbty_exstn &&
    lhs.prbty_prsntn == rhs.prbty_prsntn &&
    lhs.prbty_detn == rhs.prbty_detn &&
    lhs.prbty_clutr == rhs.prbty_clutr &&
    lhs.covariance == rhs.covariance &&
    lhs.R == rhs.R;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgs_1515::ObstacleProperties_<ContainerAllocator1> & lhs, const ::msgs_1515::ObstacleProperties_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgs_1515

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgs_1515::ObstacleProperties_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgs_1515::ObstacleProperties_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgs_1515::ObstacleProperties_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f6834dd076a8cd9f04bc04f672112493";
  }

  static const char* value(const ::msgs_1515::ObstacleProperties_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf6834dd076a8cd9fULL;
  static const uint64_t static_value2 = 0x04bc04f672112493ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgs_1515/ObstacleProperties";
  }

  static const char* value(const ::msgs_1515::ObstacleProperties_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 blinker_info\n"
"uint8 cut_in_and_out\n"
"uint8 obstacle_type\n"
"uint8 obstacle_status\n"
"bool obstacle_brake_lights\n"
"uint8 obstacle_valid\n"
"uint16 obstacle_age\n"
"uint8 obstacle_lane\n"
"bool cipv_flag\n"
"float32 radar_pos_x\n"
"float32 radar_vel_x\n"
"uint8 radar_match_confidence\n"
"uint16 matched_radar_id\n"
"float64 obstacle_scale_change\n"
"bool obstacle_replaced\n"
"uint8 radar_obstacle_id\n"
"uint16 me_obstacle_id\n"
"float32 rcs\n"
"float32 prob_exist\n"
"string obstacle_class\n"
"string dyn_property\n"
"uint8 meas_state\n"
"uint16 track_id\n"
"uint8 track_status\n"
"float64 prbty_exstn\n"
"float64 prbty_prsntn\n"
"float64 prbty_detn\n"
"float64 prbty_clutr\n"
"float64[] covariance\n"
"float64[] R\n"
;
  }

  static const char* value(const ::msgs_1515::ObstacleProperties_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.blinker_info);
      stream.next(m.cut_in_and_out);
      stream.next(m.obstacle_type);
      stream.next(m.obstacle_status);
      stream.next(m.obstacle_brake_lights);
      stream.next(m.obstacle_valid);
      stream.next(m.obstacle_age);
      stream.next(m.obstacle_lane);
      stream.next(m.cipv_flag);
      stream.next(m.radar_pos_x);
      stream.next(m.radar_vel_x);
      stream.next(m.radar_match_confidence);
      stream.next(m.matched_radar_id);
      stream.next(m.obstacle_scale_change);
      stream.next(m.obstacle_replaced);
      stream.next(m.radar_obstacle_id);
      stream.next(m.me_obstacle_id);
      stream.next(m.rcs);
      stream.next(m.prob_exist);
      stream.next(m.obstacle_class);
      stream.next(m.dyn_property);
      stream.next(m.meas_state);
      stream.next(m.track_id);
      stream.next(m.track_status);
      stream.next(m.prbty_exstn);
      stream.next(m.prbty_prsntn);
      stream.next(m.prbty_detn);
      stream.next(m.prbty_clutr);
      stream.next(m.covariance);
      stream.next(m.R);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleProperties_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgs_1515::ObstacleProperties_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgs_1515::ObstacleProperties_<ContainerAllocator>& v)
  {
    s << indent << "blinker_info: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.blinker_info);
    s << indent << "cut_in_and_out: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cut_in_and_out);
    s << indent << "obstacle_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstacle_type);
    s << indent << "obstacle_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstacle_status);
    s << indent << "obstacle_brake_lights: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstacle_brake_lights);
    s << indent << "obstacle_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstacle_valid);
    s << indent << "obstacle_age: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.obstacle_age);
    s << indent << "obstacle_lane: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstacle_lane);
    s << indent << "cipv_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cipv_flag);
    s << indent << "radar_pos_x: ";
    Printer<float>::stream(s, indent + "  ", v.radar_pos_x);
    s << indent << "radar_vel_x: ";
    Printer<float>::stream(s, indent + "  ", v.radar_vel_x);
    s << indent << "radar_match_confidence: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.radar_match_confidence);
    s << indent << "matched_radar_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.matched_radar_id);
    s << indent << "obstacle_scale_change: ";
    Printer<double>::stream(s, indent + "  ", v.obstacle_scale_change);
    s << indent << "obstacle_replaced: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstacle_replaced);
    s << indent << "radar_obstacle_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.radar_obstacle_id);
    s << indent << "me_obstacle_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.me_obstacle_id);
    s << indent << "rcs: ";
    Printer<float>::stream(s, indent + "  ", v.rcs);
    s << indent << "prob_exist: ";
    Printer<float>::stream(s, indent + "  ", v.prob_exist);
    s << indent << "obstacle_class: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.obstacle_class);
    s << indent << "dyn_property: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.dyn_property);
    s << indent << "meas_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.meas_state);
    s << indent << "track_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.track_id);
    s << indent << "track_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.track_status);
    s << indent << "prbty_exstn: ";
    Printer<double>::stream(s, indent + "  ", v.prbty_exstn);
    s << indent << "prbty_prsntn: ";
    Printer<double>::stream(s, indent + "  ", v.prbty_prsntn);
    s << indent << "prbty_detn: ";
    Printer<double>::stream(s, indent + "  ", v.prbty_detn);
    s << indent << "prbty_clutr: ";
    Printer<double>::stream(s, indent + "  ", v.prbty_clutr);
    s << indent << "covariance[]" << std::endl;
    for (size_t i = 0; i < v.covariance.size(); ++i)
    {
      s << indent << "  covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.covariance[i]);
    }
    s << indent << "R[]" << std::endl;
    for (size_t i = 0; i < v.R.size(); ++i)
    {
      s << indent << "  R[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.R[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGS_1515_MESSAGE_OBSTACLEPROPERTIES_H
