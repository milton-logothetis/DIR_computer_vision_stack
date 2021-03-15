# Tests MAP on test dataset

cd ..

./darknet detector map data/robocup/robocup.data yolov3_custom.cfg data/robocup/weights/yolov3_custom_final.weights -thresh 0.75

