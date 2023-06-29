#!/usr/bin/env python2
import rospy
from ros_service.srv import service, serviceResponse

class Clinet():
    def __init__(self, input1, input2, operation):
        self.input1 = input1
        self.input2 = input2

        if operation == 'addition':
            self.service_name = '/ros_service/addition'
        
        elif operation == 'subtraction':
            self.service_name = '/ros_service/subtraction'
        
        elif operation == 'multiplication':
            self.service_name = '/ros_service/multiplication'

        elif operation == 'division':
            self.service_name = '/ros_service/division'

    def operation_client(self):
        rospy.wait_for_service(self.service_name)
        rate = rospy.Rate(1)

        while not rospy.is_shutdown():
            try: 
                service_proxy = rospy.ServiceProxy(self.service_name, service)
                response = service_proxy(self.input1, self.input2)
                rospy.loginfo('Operation Result: %f', response.result)
                rate.sleep()
            except rospy.ServiceException as exc:
                print('Service Call Faild: %s', exc)



if __name__ == '__main__':
    try:
        rospy.init_node('client_node')
        input1 = 7.0
        input2 = 5.0
        operation = 'division' # operations: addition, subtraction, multiplication, division
        rospy.loginfo('ROS Service Client Mode Started...')
        rospy.loginfo('Selected Operation: %s', operation)

        clinet = Clinet(input1, input2, operation)
        clinet.operation_client()
    except rospy.ROSInterruptException:
        pass