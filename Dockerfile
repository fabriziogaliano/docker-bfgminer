#FROM sdhibit/rpi-raspbian:jessie

FROM resin/rpi-raspbian:jessie

USER root

COPY ./docker /docker

 RUN apt update -dd
 RUN apt install -y \
     build-essential \
     autoconf \
     automake \
     libtool \
     pkg-config \
     libcurl4-gnutls-dev \
     libjansson-dev \
     uthash-dev \ 
     libncursesw5-dev \
     libudev-dev \
     libusb-1.0-0-dev \
     libevent-dev \
     libmicrohttpd-dev \
     git

 RUN cd /tmp \
     && git clone https://github.com/luke-jr/bfgminer.git \
     && cd bfgminer \
     && ./autogen.sh \
     && ./configure --enable-scrypt 

#CMD ["/docker/bin/bfgminer"]