FROM ubuntu:20.04
ENV LANG C.UTF-8

WORKDIR /root/

COPY ./sources.list /etc/apt/

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends gnupg1 vim alien \
 && rm -rf /var/lib/apt/lists/*

# RUN /bin/bash batch_gpg.sh
# RUN gpg1 --export --armor > vircloud-apt-key.pub
