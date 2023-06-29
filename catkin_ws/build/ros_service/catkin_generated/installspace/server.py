#!/usr/bin/env python2
import rospy
from ros_service.srv import service, serviceResponse

class Callback():
    def __init__(self, request):
        self.request = request
    
    def addition_callback(self, request):
        return serviceResponse(request.input1 + request.input2)
    
    def subtraction_callback(self, request):
        return serviceResponse(request.input1 - request.input2)
    
    def multiplication_callback(self, request):
        return serviceResponse(request.input1 * request.input2)
    
    def division_callback(self, request):
        return serviceResponse(request.input1 / request.input2)

class Node():
    def __init__(self, choice):
        self.choice = choice
        self.request = service()
        self.callback = Callback(self.request)
    
    def select_operation(self):
        if self.choice == 'addition':
            rospy.Service('/ros_service/addition', service, self.callback.addition_callback)
            rospy.spin()

        elif self.choice == 'subtraction':
            rospy.Service('/ros_service/subtraction', service, self.callback.subtraction_callback)
            rospy.spin()

        elif self.choice == 'multiplication':
            rospy.Service('/ros_service/multiplication', service, self.callback.multiplication_callback)
            rospy.spin()

        elif self.choice == 'division':
            rospy.Service('/ros_service/division', service, self.callback.division_callback)
            rospy.spin()


if __name__ == '__main__':
    try:
        rospy.init_node('server_node')         
        choice = 'division' # operations: addition, subtraction, multiplication, division
        rospy.loginfo('ROS Service Server Mode Started...')
        rospy.loginfo('Selected Operation: %s', choice)

        node = Node(choice)
        node.select_operation()
    except rospy.ROSInterruptException:
        pass