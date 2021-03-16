FROM ubuntu:18.04

LABEL maintainer="haotang <haotangwei@gmail.com>" version="1.0.0" license="MIT"

WORKDIR /apue

RUN cd ~ \
    && apt-get update \
    && apt-get -y install wget \
    && wget http://www.apuebook.com/src.3e.tar.gz \
    && tar -xvf src.3e.tar.gz \
    && cd apue.3e \
    && apt-get -y install gcc \
    && apt-get -y install libbsd-dev \
    && apt-get -y install make \
    && make \
    && cp ~/apue.3e/lib/libapue.a /usr/lib \
    && cp ~/apue.3e/include/apue.h /usr/include \
    && apt-get -y install vim