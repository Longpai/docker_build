FROM python:3.7-alpine
ENV LANG C.UTF-8

WORKDIR /root/

# COPY ./sources.list /etc/apt/
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
# ARG DEBIAN_FRONTEND=noninteractive
# ENTRYPOINT ["/bin/sh"]
