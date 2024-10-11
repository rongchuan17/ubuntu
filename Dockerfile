FROM ubuntu:20.04

ENV TZ='Asia/Shanghai'
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        tzdata  byobu curl git htop man unzip vim wget iputils-ping wget net-tools  \
    && sed -i "s@http://.*.ubuntu.com@https://mirrors.aliyun.com@g" /etc/apt/sources.list \
    && rm -rf /var/apt/cache/*
CMD ["bash"]