#!/usr/bin/env python
import rospy
from custom_massage.msg import position

def publish_custom_data():
    rospy.init_node('publisher_node')
    rospy.loginfo('Publisher Node has been started...')
    publisher = rospy.Publisher('/custom_msg/topic', position, queue_size=10)
    while not rospy.is_shutdown():
        massage = position()
        massage.massage = "TIME - [%s]" %rospy.get_time()
        massage.x_position = 0.0
        massage.y_position = 0.0
        
        for idx in range(1, 5):
            publisher.publish(massage)
            massage.x_position = massage.x_position + idx
            massage.y_position = massage.y_position + idx
            
        rospy.Rate(0.5).sleep()

if __name__ == '__main__':
    try:
        publish_custom_data()
    except rospy.ROSInterruptException:
        pass