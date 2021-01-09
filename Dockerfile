FROM lualong/pytorch1.3.1-cu10

RUN rm /etc/apt/sources.list.d/cuda.list && rm /etc/apt/sources.list.d/nvidia-ml.list && \
    sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
    
RUN apt-get update && \
    apt install -y openssh-server openssh-client && \
    apt install -y libopenblas-dev && \
    apt install -y libgl1-mesa-glx &&\
    pip install MinkowskiEngine==0.4.0 &&\
    pip install open3d &&\
    pip install tensorflow==1.13.1 &&\
    pip install tensorboardX &&\
    pip install tensorboard &&\
    apt-get clean && \
    apt-get autoremove
