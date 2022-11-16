FROM ubuntu:latest
RUN apt-get update && apt-get install -y bc language-pack-ja-base language-pack-ja locales
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
