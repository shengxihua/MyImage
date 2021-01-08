FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-devel

RUN rm /etc/apt/sources.list.d/cuda.list && rm /etc/apt/sources.list.d/nvidia-ml.list && \
	sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt-get update && \
	apt install -y openssh-server openssh-client && \
    apt install -y libopenblas-dev && \
	apt install -y libgl1-mesa-glx &&\
	pip install torch-points3d && \
    pip install tensorflow==1.13.1 &&\
	pip install tensorboardX &&\
	pip install tensorboard &&\
	pip install MinkowskiEngine==0.4.0 && \
	apt-get clean && \
    apt-get autoremove	