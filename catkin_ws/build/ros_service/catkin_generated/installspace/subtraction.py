#!/usr/bin/env python2
import rospy
from ros_service.srv import service, serviceResponse

class Subtraction():
    def __init__(self):
        pass
    
    def callback(self, request):
        return serviceResponse(request.input1 - request.input2)

    def subtraction_node(self):
        rospy.init_node('ros_service/subtraction_node')
        service_ = rospy.Service('/ros_service/subtraction', service, self.callback)
        rospy.spin()
