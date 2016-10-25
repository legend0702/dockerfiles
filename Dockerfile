FROM 0702/centos7

MAINTAINER qwepoidjdj@hotmail.com

RUN yum -y install gcc;yum clean all
RUN yum -y install make;yum clean all

RUN cd ~
RUN wget https://github.com/z3APA3A/3proxy/archive/3proxy-0.8.7.tar.gz && tar zxf 3proxy-0.8.7.tar.gz
RUN wget https://github.com/xtaci/kcptun/releases/download/v20160919/kcptun-linux-amd64-20160919.tar.gz && tar zxf kcptun-linux-amd64-20160919.tar.gz
RUN wget https://github.com/legend0702/dockerfiles/releases/download/KCP-TUN/3proxy.cfg

RUN cd 3proxy-3proxy-0.8.7
RUN make -f Makefile.Linux
RUN make -f Makefile.Linux install

RUN /usr/local/bin/3proxy ~/3proxy.cfg

CMD ~/server_linux_amd64 -t "0.0.0.0:2080" -l ":553" -mode fast2 --key "zhq--!"

EXPOSE 2080
EXPOSE 553