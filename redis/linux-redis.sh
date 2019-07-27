#! /bin/sh
if [ -x "$(command -v docker)" ]
then
    echo "[1] checking docker state ------------ [ok]"
else
    echo "install docker first, pls"
fi

echo "[2] start pull redis.4.0.14-apline"
# 从镜像仓库中拉取或者更新指定镜像
sudo docker pull "redis.4.0.14-apline"
# 查看镜像
sudo docker images
# 优雅停用指定的容器
sudo docker container stop globalredis
# 删除指定的容器
sudo docker rm globalredis
# 创建一个新的容器并运行一个命令
# -d 后台运行容器 并返回容器ID
# --name 为容器指定一个名称
# -p 指定端口映射,格式为:主机(宿主)端口:容器端口
# -t 为容器重新分配一个伪输入终端
sudo docker run -d --name globalredis -p 6379:6379 -t redis:4.0.14-apline --requirepass "fb123456"
# 查看当前正在运行的的images实例
sudo docker ps