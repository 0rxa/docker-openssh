FROM centos:7

RUN yum update -y && \
    yum install -y openssh-server sudo

COPY root/ /
RUN useradd user
RUN ln /usr/bin/bash /bash
ENTRYPOINT ["/init"]
