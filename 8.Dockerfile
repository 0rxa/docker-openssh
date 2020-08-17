FROM centos:8

RUN dnf update -y && \
    dnf install -y openssh-server sudo

COPY root/ /
RUN useradd user
RUN ln /usr/bin/bash /bash
ENTRYPOINT ["/init"]
