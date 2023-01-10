FROM ubuntu
LABEL "auhtor"="devops engineer"
RUN apt update && apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FORGROUND"]
EXPOSE 80
WORKDIR /var/www/html
ADD nano.tar.gz /var/www/html
