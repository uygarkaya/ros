#!/usr/bin/env python
import cv2
import time

cap = cv2.VideoCapture('../data/multilane.mp4')
pTime = 0

if not cap.isOpened():
    print('Cannot Open Camera')

while True:
    success, img = cap.read()
    if not success:
        break
    
    cTime = time.time()
    fps = 1/(cTime-pTime)
    pTime = cTime

    cv2.putText(img, "FPS: {}".format(int(fps)), (10, 30), cv2.FONT_HERSHEY_PLAIN, 2, (0, 255, 0), 2)
    cv2.imshow('Video Frame', img)
    cv2.waitKey(1)