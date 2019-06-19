FROM ubuntu:18.04

RUN apt update && \
    apt install -y python python-pip build-essential wget curl docker.io git groff zip && \
    rm -rf /var/lib/apt/lists/*

RUN wget -O /usr/local/bin/rdocker https://github.com/dvddarias/rdocker/raw/master/rdocker.sh && \
    chmod +x /usr/local/bin/rdocker
    
RUN rm -rf /opt/go && \
    wget -O go.tar.gz  https://dl.google.com/go/go1.12.linux-amd64.tar.gz && \
    tar -zxvf go.tar.gz && \
    rm -rf /opt/go && \
    mv -f go /opt/go && \
    ln -sf /opt/go/bin/* /usr/bin && \
    rm -rf go.tar.gz && \
    go version

RUN pip install awscli

