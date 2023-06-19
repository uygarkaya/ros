#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def publish_data():
    rospy.init_node('publisher_node')
    rospy.loginfo('Publisher Node has been started...')
    
    publisher = rospy.Publisher('/hello/topic', String, queue_size=10)
    while not rospy.is_shutdown():
        msg = "Hello, ROS! - %s" %rospy.get_time()
        publisher.publish(msg)
        rospy.Rate(2).sleep()

if __name__ == '__main__':
    try:
        publish_data()
    except rospy.ROSInterruptException:
        pass    