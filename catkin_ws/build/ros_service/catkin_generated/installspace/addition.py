#!/usr/bin/env python2
import rospy
from ros_service.srv import service, serviceResponse

class Addition():
    def __init__(self):
        pass
    
    def callback(self, request):
        return serviceResponse(request.input1 + request.input2)

    def addition_node(self):
        rospy.init_node('ros_service/addition_node')
        service_ = rospy.Service('/ros_service/addition', service, self.callback)
        rospy.spin()
