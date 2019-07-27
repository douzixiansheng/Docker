#!/bin/sh

docker rm httpserver

docker run -p 8080:8080 --name httpserver -d httpserver

# logs 查看 stdout
# 所有容器内写到stdout的内容都会被捕获到host中的一个history文件中，
# 可以通过 docker logs CONTAINER 查看
docker logs httpserver

#查看镜像和容器的详细信息
#docker inspect CONSTAINER