FROM debian:bookworm-slim

LABEL maintainer="cq@vk6flab.com"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install \
	gnuradio \
	gobject-introspection \
	gir1.2-gtk-3.0 \
	libcanberra-gtk3-module

RUN apt-get -y install \
	dbus-x11 \
	xterm

RUN apt-get -y install \
	gedit

RUN apt-get -y install \
	cmake \
	qtbase5-dev \
	libqwt-qt5-dev \
	pkg-config

RUN apt-get -y install \
	gr-fosphor

RUN sed -i 's|x-terminal-emulator|/usr/bin/xterm|g' /etc/gnuradio/conf.d/grc.conf

RUN ln -s $(which gnuradio-companion) /usr/local/bin/gnuradio-companion

RUN useradd -ms /bin/bash docker
USER docker

ENV NO_AT_BRIDGE=1

RUN mkdir /tmp/docker
RUN chmod 0700 /tmp/docker
ENV XDG_RUNTIME_DIR=/tmp/docker

ENTRYPOINT ["/usr/local/bin/gnuradio-companion"]
