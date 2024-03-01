FROM python:3.7-alpine
ENV LANG C.UTF-8

WORKDIR /root/

# COPY ./sources.list /etc/apt/
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
# ARG DEBIAN_FRONTEND=noninteractive

RUN apk update && apk add --purge \
	nodejs \
	npm    \
    && rm -rf  /var/cache/apk/*

RUN npm config set registry https://registry.npmmirror.com && npm i docsify-cli -g
# ENTRYPOINT ["/bin/sh"]
