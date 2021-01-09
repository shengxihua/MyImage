FROM registry.cn-hangzhou.aliyuncs.com/xhsheng/github_dockerfile:torch1_4

RUN apt-get update && \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple open3d &&\
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simpletensorflow==1.13.1 &&\
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorboardX &&\
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorboard &&\
    apt-get clean && \
    apt-get autoremove
