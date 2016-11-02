FROM jdeathe/centos-ssh:centos-7
MAINTAINER qwepoidjdj@hotmail.com

RUN yum -y reinstall "*" && yum clean all
RUN yum -y install yum-utils \
					net-tools \
					screen \
					wget \
					zip \
					unzip \
					&& yum clean all