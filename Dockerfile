FROM ubuntu:latest
RUN apt-get update -y \
  && apt-get install -y --no-install-recommends bison flex \
  && rm -rf /var/lib/apt/lists/*
COPY files /home/files
VOLUME /home
WORKDIR /home/files
