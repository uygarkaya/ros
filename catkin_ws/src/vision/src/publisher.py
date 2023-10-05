#!/usr/bin/env python
import rospy, cv2, time, multiprocessing
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

bridge = CvBridge()
pTime = 0

def publish_image(path, topic="vision/image"):
    global pTime, counter

    publisher = rospy.Publisher(topic, Image, queue_size=1)
    rate = rospy.Rate(30)
    cap = cv2.VideoCapture(path)

    while not rospy.is_shutdown():
        success, img = cap.read()
        if not success:
            # cap.release()
            # cap = cv2.VideoCapture(path)
            # continue
            break
        
        cTime = time.time()
        fps = 1/(cTime-pTime)
        pTime = cTime

        cv2.putText(img, "FPS: {}".format(int(fps)), (10, 30), cv2.FONT_HERSHEY_PLAIN, 2, (0, 255, 0), 2)

        image_msg = bridge.cv2_to_imgmsg(img, "bgr8")
        publisher.publish(image_msg)
        rospy.loginfo("Topic: {} - MSG:{}".format(topic, image_msg))

        rate.sleep()

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
        
        if rospy.is_shutdown():
            cap.release()

def run():
    publish_image(path=rospy.get_param('/image_publisher/path1'))
    rospy.loginfo('vision/image1 topic was published, now vision/image2 start to publish...')
    # publish_image(path=rospy.get_param('/image_publisher/path2'))


def log(topic, msg):
    with open('../logs/msg.txt', 'w') as file_:
        file_.write("Topic: {} - MSG:{}".format(topic, msg))


if __name__ == '__main__':
    try:
        start_time = time.time()

        rospy.init_node('vision_node')
        rospy.loginfo('publisher node has been started...')
        
        run()

        end_time = time.time()
        rospy.loginfo("Execution Time: {}".format(end_time-start_time))
    except rospy.ROSInterruptException:
        pass