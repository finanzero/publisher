FROM ubuntu:18.04

RUN apt update
RUN apt install -y python python-pip build-essential wget curl docker.io git groff
RUN wget -O /usr/local/bin/rdocker https://github.com/dvddarias/rdocker/raw/master/rdocker.sh && \
    chmod +x /usr/local/bin/rdocker
RUN pip install awscli