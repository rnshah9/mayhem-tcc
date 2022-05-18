FROM --platform=linux/amd64 ubuntu:20.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential gcc-multilib

ADD . /tcc
WORKDIR /tcc
RUN ./configure
RUN make
