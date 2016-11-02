FROM jdeathe/centos-ssh:centos-7

MAINTAINER qwepoidjdj@hotmail.com

RUN yum -y install yum-utils \
					net-tools \
					screen \
					wget \
					&& yum clean all