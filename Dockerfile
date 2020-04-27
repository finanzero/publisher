FROM busybox
FROM alpine/git

FROM ubuntu:18.04

COPY --from=0 /bin/busybox /bin/busybox

RUN apt update && \
    apt install -y python python-pip build-essential wget curl git docker.io groff zip rsync && \
    rm -rf /var/lib/apt/lists/*

COPY --from=1 /usr/bin/git /usr/bin/git

RUN wget -O /usr/local/bin/rdocker https://github.com/dvddarias/rdocker/raw/master/rdocker.sh && \
    chmod +x /usr/local/bin/rdocker
    
RUN rm -rf /opt/go && \
    wget -O go.tar.gz  https://dl.google.com/go/go1.13.linux-amd64.tar.gz && \
    tar -zxvf go.tar.gz && \
    rm -rf /opt/go && \
    mv -f go /opt/go && \
    ln -sf /opt/go/bin/* /usr/bin && \
    rm -rf go.tar.gz && \
    go version
    
RUN /bin/busybox --install

RUN pip install awscli
