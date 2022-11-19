FROM ubuntu:latest
RUN apt-get update && apt-get install -y bc git \
                      language-pack-ja-base language-pack-ja \
                      locales gawk imagemagick \
                      parallel
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
