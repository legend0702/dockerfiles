FROM jdeathe/centos-ssh:centos-7

MAINTAINER qwepoidjdj@hotmail.com

ENV SSH_AUTHORIZED_KEYS="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDg8AnuZIspqhQmF3tmvYE/vQf9wnL+SOtRc5/fwn+++Hb1R0Sx5lB9QUJHnLj6/OMERgErR96QvHG/wig/2GJKvyJnxwPUVMpscl6KNY7UbUlv511wj6l3dWHqjlqIZq3vQZaDWmk423wdCzG87Y2wDcH39nszWJjLDgSKTBnV7FnJM5BkQgQZnR7RFE7906StAwKXlzli6BeQ3KexkbFm4hglxY/RPABHQjei+IlDjdjiQw/0oVcD7FilAsI6JqfCdlEiApsDmCAr9xApOzmsy2i/e5Q54UTryt5/iWrkW0ux42i90yVZjrqpJgm4/50kF98qIZexal8TA2gtcYZv ZhuHongQing+ZHQ@ZhuHongQing"

RUN yum -y update; yum clean all
RUN yum -y install yum-utils; yum clean all
RUN yum -y install screen; yum clean all
RUN yum -y install wget; yum clean all
RUN yum -y install unzip zip; yum clean all
