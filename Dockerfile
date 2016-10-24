FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties

RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
RUN export JAVA_HOME

RUN apt-get install -y ssh
RUN apt-get install -y rsync

RUN wget http://www-eu.apache.org/dist/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz

RUN mkdir /usr/local/hadoop
RUN tar xfvz hadoop-2.7.3.tar.gz -C /usr/local/hadoop
