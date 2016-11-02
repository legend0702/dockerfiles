FROM jdeathe/centos-ssh:centos-7

MAINTAINER qwepoidjdj@hotmail.com

RUN yum -y install yum-utils net-tools
RUN yum -y install screen wget
RUN yum -y install unzip
RUN yum -y install zip
RUN yum clean all