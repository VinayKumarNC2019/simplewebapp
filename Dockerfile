FROM centos

MAINTAINER Mark

RUN yum upgrade -y && yum install httpd -y

EXPOSE 80

CMD /usr/sbin/httpd -DFOREGROUND
