FROM registry.cn-hangzhou.aliyuncs.com/xhsheng/github_dockerfile:torch1_4

RUN apt-get update && \
    pip install open3d &&\
    pip install tensorflow==1.13.1 &&\
    pip install tensorboardX &&\
    pip install tensorboard &&\
    apt-get clean && \
    apt-get autoremove
