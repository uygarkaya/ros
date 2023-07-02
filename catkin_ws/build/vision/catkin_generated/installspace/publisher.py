#!/usr/bin/env python2
import rospy, cv2, time

from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

bridge = CvBridge()
pTime = 0

def publish_image():
    global pTime

    rospy.init_node('vision_node')
    rospy.loginfo('Publisher Node has been started...')

    publisher = rospy.Publisher('vision/image', Image, queue_size=1)
    rate = rospy.Rate(30)
    cap = cv2.VideoCapture('../data/multilane.mp4')

    while not rospy.is_shutdown():
        success, img = cap.read()
        if not success:
            cap.release()
            cap = cv2.VideoCapture('../data/multilane.mp4')
            continue
        
        cTime = time.time()
        fps = 1/(cTime-pTime)
        pTime = cTime

        cv2.putText(img, "FPS: {}".format(int(fps)), (10, 30), cv2.FONT_HERSHEY_PLAIN, 2, (0, 255, 0), 2)

        image_msg = bridge.cv2_to_imgmsg(img, "bgr8")
        publisher.publish(image_msg)

        rate.sleep()

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
        
        if rospy.is_shutdown():
            cap.release()


if __name__ == '__main__':
    try:
        publish_image()
    except rospy.ROSInterruptException:
        pass