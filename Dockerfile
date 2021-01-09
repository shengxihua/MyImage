FROM registry.cn-hangzhou.aliyuncs.com/xhsheng/github_dockerfile:torch1_4
RUN rm /etc/apt/sources.list.d/cuda.list && rm /etc/apt/sources.list.d/nvidia-ml.list && \
	sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple open3d &&\
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simpletensorflow==1.13.1 &&\
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorboardX &&\
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorboard &&\
    apt-get clean && \
    apt-get autoremove
