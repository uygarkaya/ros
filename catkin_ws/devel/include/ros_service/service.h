// Generated by gencpp from file ros_service/service.msg
// DO NOT EDIT!


#ifndef ROS_SERVICE_MESSAGE_SERVICE_H
#define ROS_SERVICE_MESSAGE_SERVICE_H

#include <ros/service_traits.h>


#include <ros_service/serviceRequest.h>
#include <ros_service/serviceResponse.h>


namespace ros_service
{

struct service
{

typedef serviceRequest Request;
typedef serviceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct service
} // namespace ros_service


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_service::service > {
  static const char* value()
  {
    return "94f5ca12044db57606226623620720c4";
  }

  static const char* value(const ::ros_service::service&) { return value(); }
};

template<>
struct DataType< ::ros_service::service > {
  static const char* value()
  {
    return "ros_service/service";
  }

  static const char* value(const ::ros_service::service&) { return value(); }
};


// service_traits::MD5Sum< ::ros_service::serviceRequest> should match
// service_traits::MD5Sum< ::ros_service::service >
template<>
struct MD5Sum< ::ros_service::serviceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_service::service >::value();
  }
  static const char* value(const ::ros_service::serviceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_service::serviceRequest> should match
// service_traits::DataType< ::ros_service::service >
template<>
struct DataType< ::ros_service::serviceRequest>
{
  static const char* value()
  {
    return DataType< ::ros_service::service >::value();
  }
  static const char* value(const ::ros_service::serviceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_service::serviceResponse> should match
// service_traits::MD5Sum< ::ros_service::service >
template<>
struct MD5Sum< ::ros_service::serviceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_service::service >::value();
  }
  static const char* value(const ::ros_service::serviceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_service::serviceResponse> should match
// service_traits::DataType< ::ros_service::service >
template<>
struct DataType< ::ros_service::serviceResponse>
{
  static const char* value()
  {
    return DataType< ::ros_service::service >::value();
  }
  static const char* value(const ::ros_service::serviceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_SERVICE_MESSAGE_SERVICE_H