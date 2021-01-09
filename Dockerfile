FROM registry.cn-hangzhou.aliyuncs.com/xhsheng/github_dockerfile:torch1_4

RUN apt-get update && \
    pip3 install open3d &&\
    pip3 install tensorflow==1.13.1 &&\
    pip3 install tensorboardX &&\
    pip3 install tensorboard &&\
    apt-get clean && \
    apt-get autoremove
