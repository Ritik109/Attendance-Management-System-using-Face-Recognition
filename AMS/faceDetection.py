import cv2
import numpy as np
import os

def faceDetection(test_img):
    gray_img=cv2.cvtColor(test_img,cv2.COLOR_BGR2GRAY)
    face_haar_cascade=cv2.CascadeClassifier('C:/Users/rkg10/openCVfaceRecog/HaarCascade/haarcascade_frontalface_default.xml')
    faces=face_haar_cascade.detectMultiScale(gray_img,scaleFactor=1.32,minNeighbors=5)

    return faces,gray_img

def labels_for_training_data(directory):
    faces=[]
    faceID=[]
    for path,subdirnames,filenames in os.walk(directory):
        for filename in filenames:
            if filename.startswith("."):
                print("Skiped: ")
                continue
            id=os.path.basename(path)
            img_path=os.path.join(path,filename)
            test_img=cv2.imread(img_path)
            if test_img is None:
                print("Not loaded image")
                continue
            #faces_rect,gray_img=faceDetection(test_img)
            #if len(faces_rect)<1:
            #    print(len(faces_rect))
             #   print(len(gray_img))
            #    continue
            #(x,y,w,h)=faces_rect[0]
            #roi_gray=gray_img[y:y+w,x:x+h]
            gray = cv2.cvtColor(test_img, cv2.COLOR_BGR2GRAY)
            faces.append(gray)
            faceID.append(int(id))
    return faces,faceID

def train_classifier(faces,faceID):
    face_recognizer=cv2.face.LBPHFaceRecognizer_create()
    face_recognizer.train(faces,np.array(faceID))
    return face_recognizer

def draw_rect(test_img,face):
    (x,y,w,h)=face
    cv2.rectangle(test_img,(x,y),(x+w,y+h),(255,0,0),thickness=5)

def put_text(test_img,text,x,y):
    cv2.putText(test_img,text,(x,y),cv2.FONT_HERSHEY_DUPLEX,5,(255,0,0),6)

