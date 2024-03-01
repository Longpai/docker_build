DOCKER ?= docker

BASE_SERVER ?= library/nginx:latest
BASE_MAINTENANCE ?= centos:7
TAG ?= 0.1

PROJECT ?= service

.PHONY: all
all: update

update:
	$(DOCKER) run --rm \
		-v /home/docker-mirror/docker-mirror/rpm:/root/rpm \
		$(PROJECT)/yumupdate:$(TAG)

build:
	$(DOCKER) build -t \
		$(PROJECT)/yumrepo:$(TAG) \
		--file Dockerfile.nginx .
	$(DOCKER) build -t \
		$(PROJECT)/yumupdate:$(TAG) \
		--file Dockerfile.centos .