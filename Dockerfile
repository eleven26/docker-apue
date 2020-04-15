FROM ubuntu:18.04

LABEL maintainer="eleven26 <rubymay21s@gmail.com>" version="1.0.0" license="MIT"

WORKDIR /apue

COPY ./sources.list /etc/apt/sources.list
COPY ./src.3e.tar.gz /tmp/src.3e.tar.gz

RUN cd /tmp \
    && tar -xvf src.3e.tar.gz \
    && cd apue.3e \
    && apt-get update \
    && apt-get -y install gcc \
    && apt-get -y install libbsd-dev \
    && apt-get -y install make \
    && make \
    && cp /tmp/apue.3e/lib/libapue.a /usr/lib \
    && apt-get -y install vim
# && apt-get -y autoremove \
# && apt-get clean \
# && rm -r /var/lib/apt/lists/*