// Generated by gencpp from file geometry_msgs/InertiaStamped.msg
// DO NOT EDIT!


#ifndef GEOMETRY_MSGS_MESSAGE_INERTIASTAMPED_H
#define GEOMETRY_MSGS_MESSAGE_INERTIASTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Inertia.h>

namespace geometry_msgs
{
template <class ContainerAllocator>
struct InertiaStamped_
{
  typedef InertiaStamped_<ContainerAllocator> Type;

  InertiaStamped_()
    : header()
    , inertia()  {
    }
  InertiaStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , inertia(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Inertia_<ContainerAllocator>  _inertia_type;
  _inertia_type inertia;





  typedef boost::shared_ptr< ::geometry_msgs::InertiaStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::geometry_msgs::InertiaStamped_<ContainerAllocator> const> ConstPtr;

}; // struct InertiaStamped_

typedef ::geometry_msgs::InertiaStamped_<std::allocator<void> > InertiaStamped;

typedef boost::shared_ptr< ::geometry_msgs::InertiaStamped > InertiaStampedPtr;
typedef boost::shared_ptr< ::geometry_msgs::InertiaStamped const> InertiaStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::geometry_msgs::InertiaStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace geometry_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/home/nvidia/catkin_ws/src/common_msg/geometry_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::geometry_msgs::InertiaStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geometry_msgs::InertiaStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geometry_msgs::InertiaStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ddee48caeab5a966c5e8d166654a9ac7";
  }

  static const char* value(const ::geometry_msgs::InertiaStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xddee48caeab5a966ULL;
  static const uint64_t static_value2 = 0xc5e8d166654a9ac7ULL;
};

template<class ContainerAllocator>
struct DataType< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/InertiaStamped";
  }

  static const char* value(const ::geometry_msgs::InertiaStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Inertia inertia\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Inertia\n\
# Mass [kg]\n\
float64 m\n\
\n\
# Center of mass [m]\n\
geometry_msgs/Vector3 com\n\
\n\
# Inertia Tensor [kg-m^2]\n\
#     | ixx ixy ixz |\n\
# I = | ixy iyy iyz |\n\
#     | ixz iyz izz |\n\
float64 ixx\n\
float64 ixy\n\
float64 ixz\n\
float64 iyy\n\
float64 iyz\n\
float64 izz\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::geometry_msgs::InertiaStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.inertia);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InertiaStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::geometry_msgs::InertiaStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::geometry_msgs::InertiaStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "inertia: ";
    s << std::endl;
    Printer< ::geometry_msgs::Inertia_<ContainerAllocator> >::stream(s, indent + "  ", v.inertia);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GEOMETRY_MSGS_MESSAGE_INERTIASTAMPED_H
