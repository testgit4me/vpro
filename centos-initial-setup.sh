#/bin/bash
# as root user create a user with sudo previligues
sudo yum install nano -y
sudo useradd docker
sudo passwd docker
sudo usermod -aG wheel docker
sudo echo "docker  ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sudo sed -i 's/#PermitRootLogin no/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl reload sshd

# as docker user
su docker
mkdir /home/docker/.ssh
chmod 700 /home/docker/.ssh
nano /home/docker/.ssh/authorized_keys
chmod 600 /home/docker/.ssh/authorized_keys

sudo yum install firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-port=90/tcp
sudo firewall-cmd --reload

sudo timedatectl
sudo timedatectl list-timezones
sudo timedatectl set-timezone Africa/Kampala
sudo timedatectl

sudo yum install ntp
sudo systemctl start ntpd
sudo systemctl enable ntpd

sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab'
sudo poweroff

****************************************************

1) Commands

ssh-keygen
ssh-copy-id -i ~/.ssh/id_rsa.pub demo@SERVER_IP_ADDRESS
sudo firewall-cmd --permanent --remove-service=ssh
grep 80 /etc/services
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --get-services (To see any additional services that you can enable by name)
sudo firewall-cmd --permanent --list-all  (to see the list of the exceptions that are implemented)

2) install firewall

Firewalls provide a basic level of security for your server.
These applications are responsible for denying traffic to every port on your server with exceptions
for ports/services you have approved. CentOS ships with a firewall called firewalld.
A tool called firewall-cmd can be used to configure your firewall policies

3) Create a Swap File

Adding “swap” to a Linux server allows the system to move the less frequently accessed information
of a running program from RAM to a location on disk. Accessing data stored on disk is much slower than accessing RAM,
but having swap available can often be the difference between your application staying alive and crashing.
This is especially useful if you plan to host any databases on your system.

Generally, an amount equal to or double the amount of RAM on your system is a good starting point.
Allocate the space you want to use for your swap file using the fallocate utility.
For example, if we need a 4 Gigabyte file, we can create a swap file located at /swapfile by typing:
sudo fallocate -l 4G /swapfile

