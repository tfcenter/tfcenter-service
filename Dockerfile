# 使用官方提供的基础镜像
FROM alpine:latest

# 设置工作目录
WORKDIR /app

# 将压缩包复制到容器中
COPY v3.4.1/tfcenter-linux-v3.4.1.tar.gz /app/

# 解压压缩包
RUN tar -xzvf tfcenter-linux-v3.4.1.tar.gz

# 可选：清理工作目录，减少镜像大小
RUN rm tfcenter-linux-v3.4.1.tar.gz

RUN rm tfcenter-linux/tfcenter-daemon

# 定义容器启动时执行的命令
CMD ["bash"]
