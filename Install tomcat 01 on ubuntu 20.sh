#!/bin/bash
# https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-10-on-ubuntu-20-04
# https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-centos-7
# https://www.digitalocean.com/community/tutorials/how-to-secure-tomcat-10-with-apache-or-nginx-on-ubuntu-20-04
# tomcat, apache, nginx, sql
useradd -m -d /opt/tomcat -U -s /bin/false tomcat
sudo apt update
sudo apt install default-jdk -y
cd /tmp
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz

CMD/Entrypoint
Entry point has higher priority then comes cmd
