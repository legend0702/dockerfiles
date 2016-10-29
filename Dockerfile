FROM 0702/centos7

MAINTAINER qwepoidjdj@hotmail.com

ENV SSH_PORT 22
ENV KCP_PORT 553
ENV KCP_VER 20160919

RUN yum -y install gcc;yum clean all
RUN yum -y install make;yum clean all

WORKDIR /usr/src
RUN wget https://github.com/z3APA3A/3proxy/archive/3proxy-0.8.7.tar.gz && tar zxf 3proxy-0.8.7.tar.gz
RUN wget https://github.com/xtaci/kcptun/releases/download/v${KCP_VER}/kcptun-linux-amd64-${KCP_VER}.tar.gz | tar xz -C /usr/local/bin
RUN wget https://github.com/legend0702/dockerfiles/releases/download/KCP-TUN/3proxy.cfg

WORKDIR /usr/src/3proxy-3proxy-0.8.7
RUN make -f Makefile.Linux
RUN make -f Makefile.Linux install

WORKDIR /usr/src
RUN 3proxy 3proxy.cfg
CMD server_linux_amd64 -t "0.0.0.0:2080" -l ":553" -mode fast2 --key "zhq--!"

EXPOSE $SSH_PORT
EXPOSE $KCP_PORT/udp