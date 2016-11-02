FROM jdeathe/centos-ssh:centos-7

MAINTAINER qwepoidjdj@hotmail.com

RUN rpm --rebuilddb
RUN yum clean all
RUN yum -y install yum-utils net-tools
RUN yum -y install screen wget
RUN yum -y install zip
RUN yum -y install unzip
RUN yum clean all