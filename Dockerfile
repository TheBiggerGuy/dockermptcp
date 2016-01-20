FROM ubuntu:trusty

MAINTAINER Guy Taylor <thebigguy.co.uk@gmail.com>

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 21EB8BCD
RUN echo "deb http://multipath-tcp.org/repos/apt/debian trusty main"     >> /etc/apt/sources.list.d/mptcp.list ;\
    echo "deb-src http://multipath-tcp.org/repos/apt/debian trusty main" >> /etc/apt/sources.list.d/mptcp.list
RUN apt-get -y update; apt-get -y install linux-mptcp

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

