FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo

COPY root/ /
RUN useradd abc
RUN cp $(which bash) /bash
ENTRYPOINT ["/init"]
