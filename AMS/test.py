import cv2
import os
import numpy as np
import faceDetection as fr

test_img=cv2.imread('C:/xampp/htdocs/AMS/uploads/new.jpg')
faces_detected,gray_img=fr.faceDetection(test_img)
#print("faces_detected:",faces_detected)

name={1551229:'gaurav',1551226:'ritik',1551223:'SD'}

faces,faceID=fr.labels_for_training_data('C:/xampp/htdocs/AMS/dataset')

face_recognizer=fr.train_classifier(faces,faceID)
face_recognizer.write('trainingData.yml')
#use this to load training data for subsequent runs
#face_recognizer=cv2.face.LBPHFaceRecognizer_create()
#face_recognizer.read('trainedData.yml')

for face in faces_detected:
    (x,y,w,h)=face
    roi_gray=gray_img[y:y+h,x:x+h]
    label,confidence=face_recognizer.predict(roi_gray)#predicting the label of given image
    #fr.draw_rect(test_img,face)
    #predicted_name=name[label]
    #fr.put_text(test_img,predicted_name,x,y)
    print(label)

#resized_img=cv2.resize(test_img,(500,500))
#cv2.imshow("face dtecetion tutorial",resized_img)
#cv2.waitKey(0)#Waits indefinitely until a key is pressed
cv2.destroyAllWindows