#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def calback(msg):
    rospy.loginfo("RECEIVED DATA: %s", msg.data)

def listener():
    rospy.init_node('subscriber_node')
    rospy.loginfo('Subscriber Node has been started...')
    rospy.Subscriber('/hello/topic', String, callback=calback)
    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass