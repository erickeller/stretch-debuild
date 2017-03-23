FROM debian:stretch
RUN apt-get update
RUN apt-get install -y git dh-make build-essential autoconf autotools-dev devscripts
RUN mkdir -p /build
WORKDIR /build
VOLUME /build
