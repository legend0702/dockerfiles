FROM jdeathe/centos-ssh:centos-7

MAINTAINER qwepoidjdj@hotmail.com

RUN yum -y upgrade
RUN yum -y install yum-utils
RUN yum -y install net-tools
RUN yum -y install screen
RUN yum -y install wget
RUN yum clean all