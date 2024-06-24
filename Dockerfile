# 使用官方的 Golang 镜像创建构建产物。
FROM golang:1.21.3 AS builder

# 将本地代码复制到容器镜像中。
WORKDIR /app
COPY . .

# 在容器内构建命令。
RUN tar xvf v3.3.4/tfcenter-linux-v3.3.4.tar.gz

# 使用一个新的阶段创建一个最小的镜像。
FROM alpine:3.14
COPY --from=builder /app/my-app /usr/local/bin/my-app
# 更新文件权限以确保它是可执行的。
RUN chmod +x /usr/local/bin/my-app
# 设置容器的默认端口
EXPOSE 8081

# 设置容器的默认命令。
CMD ["/usr/local/bin/my-app"]
