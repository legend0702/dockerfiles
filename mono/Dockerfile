FROM 0702/centos7

MAINTAINER qwepoidjdj@hotmail.com

RUN rpm --rebuilddb
RUN rpm --import “http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF”
RUN yum-config-manager --add-repo http://download.mono-project.com/repo/centos/
RUN yum -y install mono-complete; yum clean all
RUN ln -s /usr/lib64/libMonoPosixHelper.so /usr/lib/libMonoPosixHelper.so

EXPOSE 22