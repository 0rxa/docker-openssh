FROM centos:8

RUN dnf update -y && \
    dnf install -y openssh-server sudo

COPY root/ /
RUN useradd abc
RUN ln /usr/bin/bash /bash
ENTRYPOINT ["/init"]
