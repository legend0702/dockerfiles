FROM jdeathe/centos-ssh:centos-7

MAINTAINER qwepoidjdj@hotmail.com

RUN yum -y update; yum clean all
RUN yum -y install yum-utils; yum clean all
RUN yum -y install screen; yum clean all
RUN yum -y install wget; yum clean all
RUN yum -y install unzip zip; yum clean all