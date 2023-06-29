#!/usr/bin/env python2
import rospy
from ros_service.srv import service, serviceResponse

class Callbacks():
    def __init__(self, request):
        self.request = request
    
    def addition_callback(self):
        return serviceResponse(self.request.input1 + self.request.input2)
    
    def subtraction_callback(self):
        return serviceResponse(self.request.input1 - self.request.input2)
    
    def multiplication_callback(self):
        return serviceResponse(self.request.input1 * self.request.input2)
    
    def division_callback(self):
        return serviceResponse(self.request.input1 / self.request.input2)

class Node():
    def __init__(self, choice):
        self.choice = choice
        self.callback = Callbacks(service())
    
    def select_operation(self):
        if self.choice == 'addition':
            rospy.Service('/ros_service/addition', service, self.callback)
            rospy.spin()

        elif self.choice == 'subtraction':
            rospy.Service('/ros_service/subtraction', service, self.callback)
            rospy.spin()

        elif self.choice == 'multiplication':
            rospy.Service('/ros_service/multiplication', service, self.callback)
            rospy.spin()

        elif self.choice == 'division':
            rospy.Service('/ros_service/division', service, self.callback)
            rospy.spin()


if __name__ == '__main__':
    try:
        rospy.init_node('server_node')
        rospy.loginfo('ROSSS')
        Node('multiplication').select_operation()
    except rospy.ROSInterruptException:
        pass