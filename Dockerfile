FROM ubuntu:18.04

RUN apt update && \
    apt install -y python python-pip build-essential wget curl docker.io git groff zip && \
    rm -rf /var/lib/apt/lists/*

RUN wget -O /usr/local/bin/rdocker https://github.com/dvddarias/rdocker/raw/master/rdocker.sh && \
    chmod +x /usr/local/bin/rdocker

RUN pip install awscli
