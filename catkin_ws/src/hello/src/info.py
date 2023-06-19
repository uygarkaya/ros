#!/usr/bin/env python
import rospy

if __name__ == '__main__':
    rospy.init_node('readme_node')
    rospy.loginfo('Hi there, README.md Node has been started...')
    rospy.sleep(1.0)

    while not rospy.is_shutdown():
        rospy.loginfo('This is the Hello, ROS! Package')
        rospy.loginfo('It was Created for Publisher & Subscriber Logic\n')
        rospy.Rate(0.5).sleep()