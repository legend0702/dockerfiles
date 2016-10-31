FROM jdeathe/centos-ssh:centos-7

MAINTAINER qwepoidjdj@hotmail.com

RUN yum -y update; yum clean all
RUN yum -y install yum-utils net-tools; yum clean all
RUN yum -y install screen wget; yum clean all
RUN yum -y install unzip zip; yum clean all
