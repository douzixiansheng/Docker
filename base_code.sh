#!/bin/sh


# Docker 是一个开源的引擎，可以轻松的为任何应用创建一个轻量级的、可移植的、自给自足的容器。

# 列出镜像
# 镜像ID是镜像的唯一标识，一个镜像可以对应多个标签
docker image ls
# 仓库名              标签                 镜像ID              创建时间             所占用的空间
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# redis               4.0.14-alpine       d2664936e292        6 days ago          35.7MB
# node                10.16.0-alpine      9dfa73010b19        3 weeks ago         75.3MB
# hello-world         latest              fce289e99eb9        6 months ago        1.84kB

# 查看镜像、容器、数据卷所占用的空间
docker system df

# 虚悬镜像(dangling image) : 仓库名、标签均为<none> 的镜像
docker image ls -f dangling=true

# 默认的docker image ls  列表中只会显示顶层镜像
# docker image ls -a 显示包括中间层镜像在内的所有镜像
docker image ls -a

# 列出部分镜像
docker iamges ls redis

# 删除本地镜像  docker image rm [选项] <镜像1>[...]

# 导出容器 docker export 容器名或容器ID > 导出的路径以及tar包的名字
# docker export e039d9c6da11 > ./redis:4.0.14-alpine.tar

# docker import : 丢弃了所有的历史记录和元数据信息，仅保存容器当时的快照状态。
# 在导入的时候重新制定标签等元数据信息。
# docker load: 将保存完整记录，体积较大

