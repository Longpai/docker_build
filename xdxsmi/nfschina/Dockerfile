FROM nfschinadocker/nfschina-server:v4.0

WORKDIR /root/

RUN dnf update -y
RUN dnf install -y autoconf \
	make \
	cmake \
	libtool \
	xorg-x11-util-macros \
	automake

RUN dnf install	-y gcc-c++

RUN dnf clean all && dnf autoremove
