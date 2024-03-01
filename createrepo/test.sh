#!/bin/bash
# docker run --name some-nginx -p 5018:80 -v /home/docker-mirror/docker-mirror/rpm:/usr/share/nginx/html/rpm:ro -d nginx
docker run --name some-nginx-2 -p 5017:80 -v /home/docker-mirror/docker-mirror/rpm:/usr/share/nginx/html/rpm:ro -d service/yumrepo:0.1