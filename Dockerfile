FROM centos

MAINTAINER Mark

RUN yum upgrade -y && yum install httpd -y

COPY /tmp/web/* /var/www/html

EXPOSE 80

CMD /usr/sbin/httpd -DFOREGROUND
