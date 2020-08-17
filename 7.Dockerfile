FROM centos:7

RUN yum update -y && \
    yum install -y openssh-server sudo

COPY root/ /
RUN useradd abc
RUN ln /usr/bin/bash /bash
ENTRYPOINT ["/init"]
