#!/usr/bin/env python
import rospy
from custom_massage.msg import position

def callback(msg):
    rospy.loginfo('X: %f | Y: %f | %s', msg.x_position, msg.y_position, msg.massage)

def listener():
    rospy.init_node('subscriber_node')
    rospy.loginfo('Subscriber Node has been started...')
    rospy.Subscriber('/custom_msg/topic', position, callback=callback)
    rospy.spin()

if __name__ == '__main__':
    try: 
        listener()
    except rospy.ROSInterruptException:
        pass
