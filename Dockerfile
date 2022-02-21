FROM dorowu/ubuntu-desktop-lxde-vnc

ENV TZ=Asia/Taipei

RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN apt-get install -y build-essential nodejs
RUN curl -fsSL https://code-server.dev/install.sh | sh

RUN mkdir .config; mkdir .config/code-server
COPY config.yaml .config/code-server/