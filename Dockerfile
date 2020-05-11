FROM node:10-alpine

RUN wget -O /usr/local/bin/rdocker https://github.com/dvddarias/rdocker/raw/master/rdocker.sh && chmod +x /usr/local/bin/rdocker
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
RUN apk add git
RUN apk add openssh-client
RUN apk add aws-cli
RUN apk add docker-cli
RUN apk add bash
RUN apk add zip
