# Democritus Industrial Robotics Computer Vision Stack
This repository contains [DIR's](http://dir.com.gr/) computer vision stack for the Robocup@Work challenge.
## YOLO Object Detection using [AlexeyAB's darknet](https://github.com/AlexeyAB/darknet)

### 1. Installation Instructions (Ubuntu 18):
 
To install the darknet backend for YOLO object detection, the installation instructions and dependancies can be found from AlexeyAB`s repository. To simplify things, the user can use the following instructions:

#### Dependencies:

 * [CUDA - 11.2](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1804&target_type=deblocal)
 * [cuDNN - v8.1.1](https://developer.nvidia.com/rdp/cudnn-download)
 * [OpenCV](https://docs.opencv.org/master/d7/d9f/tutorial_linux_install.html)


##### CUDA-toolkit installation tips:

 * If you already have a CUDA-toolkit installed:
	
	a. Remove previous installations:
  `sudo apt-get purge --auto-remove nvidia-cuda-toolkit`

	b. Clean previous binaries:
  `sudo rm -rf /usr/local/cuda-xx.x`

 * Rename `/usr/local/cuda-11-2` to `/usr/local/cuda`
 
 * Set env variables `gedit ~/.bashrc`:
	
  ```
  export PATH=/usr/local/cuda/bin:$PATH
  export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
  ```
 
* Verify installation:
 `nvcc --version`	


##### cuDNN installation tips:

 * Once downloaded and unpacked (`tar -xf cudnn-11.2-linux-x64-v8.1.1.33.tgz`), copy `cuda/include/*` and `cuda/lib64/*` into respective `/usr/local/cuda` folders.


#### Build darknet using `make`:
 
```
cd ~/darknet
```
 
* Edit Makefile:
```ini
CUDA=1
CUDNN=1
OPENCV=1
LIBSO=1
ARCH=(fill with supported nvidia arch)
```

* Build:
```
make
```


### 2. DIR's YOLOv3

#### Setup:

 * Copy the `/object_detection/darknet/data/robocup` folder into `/darknet/data`.
 * Copy the `yolov3_custom.cfg` config file and the `/scripts_DIR` folder into `/darknet`.
 * Create a new `/dataset` folder in `/data/robocup` and paste images and their labels from DIR's    drive.

#### Runtime:

 * For calculating Mean Average Precision (MAP):
 ```bash
 cd scripts_DIR
 ./test_map.sh
 ```
 
 




	



