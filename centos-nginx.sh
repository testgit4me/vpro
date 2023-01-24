# as root
sudo yum install nano -y
sudo useradd nginx
sudo passwd nginx
sudo usermod -aG wheel nginx
sudo rsync --archive --chown=nginx:nginx /home/centos/.ssh /home/nginx
sudo echo "nginx  ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl reload sshd

sudo yum install epel-release -y
sudo yum install nginx wget unzip -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo rm -rf /usr/share/nginx/html/*
sudo cd /opt
sudo wget https://templatemo.com/tm-zip-files-2020/templatemo_582_tale_seo_agency.zip && unzip -o templatemo_582_tale_seo_agency.zip
sudo cp -rf templatemo_582_tale_seo_agency/* /usr/share/nginx/html/
sudo systemctl reload nginx

sudo timedatectl set-timezone Africa/Kampala
sudo yum install ntp -y
sudo systemctl start ntpd
sudo systemctl enable ntpd

sudo yum install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --permanent --zone=public --add-service=ssh
sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload