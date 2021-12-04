FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime

RUN pip install tensorboard && \
    pip install scipy