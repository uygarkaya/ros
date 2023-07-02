#!/usr/bin/env python
import rospy

if __name__ == '__main__':
    try:
        rospy.init_node('readme_node')
        rospy.loginfo('Hi there, README.md Node has been started...')
        rospy.sleep(1)

        while not rospy.is_shutdown():
            rospy.loginfo('This is the ROS Vision Package')
            rospy.loginfo('It was Created for ROS Image and Video Message Logic\n')
            rospy.Rate(0.5).sleep()
    except rospy.ROSInterruptException:
        pass