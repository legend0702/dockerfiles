FROM jdeathe/centos-ssh:centos-7

MAINTAINER qwepoidjdj@hotmail.com

RUN yum -y install yum-utils net-tools;
RUN yum -y install screen wget;

RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bk

WORKDIR /etc/yum.repos.d/
RUN wget https://lug.ustc.edu.cn/wiki/_export/code/mirrors/help/centos?codeblock=3
RUN yum clean all
RUN yum makecache
RUN yum -y install zip unzip;
RUN yum clean all