FROM centos:latest

COPY Remi-PHP-7.repo /etc/yum.repos.d/
COPY gf.repo /etc/yum.repos.d/

RUN yum install epel-release -y && \
    yum update -y && \
    yum install httpd sqlite -y && \
    yum install php php-pdo php-gd php-mbstring php-common php-opcache php-cli php-xml  -y && \
    yum install postfix3 -y && \
    yum clean all

RUN rm -rf /var/www/html 

ADD entrypoint.sh /entrypoint.sh

RUN postconf -e inet_interfaces=all
RUN postconf -e relayhost=10.0.0.23

EXPOSE 80

CMD /entrypoint.sh
