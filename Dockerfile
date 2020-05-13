FROM centos

MAINTAINER Mark

RUN yum upgrade -y && yum install httpd -y

COPY /home/mark/project/*.html /var/www/html

EXPOSE 80

CMD /usr/sbin/httpd -DFOREGROUND
