FROM ubuntu:20.04
ENV LANG C.UTF-8

WORKDIR /root/

COPY ./sources.list /etc/apt/
COPY ./batch_gpg.sh .

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends gnupg1 vim \
 && rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A0546A43624A8331
RUN echo "deb http://repo.aptly.info/ squeeze main" >> /etc/apt/sources.list \
    && apt-get update \
	&& apt install aptly -y

# RUN /bin/bash batch_gpg.sh
# RUN gpg1 --export --armor > vircloud-apt-key.pub