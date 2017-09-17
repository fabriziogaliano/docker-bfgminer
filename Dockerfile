FROM sdhibit/rpi-raspbian:jessie

USER root

RUN apt update -dd \
    && apt install -y -dd \
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
    libmicrohttpd-dev
    autoconf \
    automake \
    libtool \
    pkg-config \
    libcurl4-gnutls-dev \
    libjansson-dev \
    uthash-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libpdcurses \
    hidapi \
    libevent \
    libusb-1.0-0-dev