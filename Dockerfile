FROM tensorflow/tensorflow:1.13.1-gpu-py3
RUN pip install -U pandas
RUN pip install -U dask
RUN pip install -U scipy
RUN pip install -U sklearn
RUN pip install open3d==0.9.0.0
RUN apt update -y
RUN apt-get install libsm6 -y
RUN apt-get install libxrender1 -y
RUN apt-get install libxext-dev -y
