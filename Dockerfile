FROM meadml/cuda10.1-cudnn7-devel-ubuntu18.04-python3.6:latest
RUN apt update -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get update -y
RUN pip install -U pandas
RUN pip install -U dask
RUN pip install -U scipy
RUN pip install -U sklearn
RUN apt update -y
RUN apt-get install libsm6 -y
RUN apt-get install libxrender1 -y
RUN apt-get install libxext-dev -y
RUN apt-get install libffi-dev -y
RUN apt install libgl1-mesa-glx -y
RUN pip install open3d==0.9.0.0
