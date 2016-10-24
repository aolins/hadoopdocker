FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties

RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
