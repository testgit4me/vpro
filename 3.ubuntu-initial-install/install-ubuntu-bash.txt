#!/bin/bash
sudo useradd sammy -m -p $(openssl passwd zxc) -s /bin/bash 
sudo usermod -aG sudo sammy
# ufw app list
sudo ufw allow OpenSSH
sudo ufw enable
sudo rsync --archive --chown=sammy:sammy /home/vagrant/.ssh /home/sammy

# *****************************************************

# sudo adduser -q --disabled-password --gecos "" test9999
# sudo echo -e "zxc\nzxc" | passwd test9999

# *****************************************************

# id test16
# ll /home
# sudo tail /etc/shadow

# *****************************************************

# useradd is native binary compiled with the system. But, adduser is a perl script which uses useradd binary in back-end.
# adduser is more user friendly and interactive than its back-end useradd. There's no difference in features provided.
# useradd, userdel, usermod, groupadd
# adduser, addgroup

# *****************************************************

# sudo nano /etc/default/useradd -> bin/bash
# sudo useradd -r username -> creates a system user
# sudo userdel -r jerry -> del user with directory

# ******************************************************

# creating user in /home directory:

# sudo useradd pupkin
# sudo passwd pupkin
# sudo useradd -m pupkin

# creating user on other directory:

# sudo mkdir -p /users/pupkin
# sudo cp -rT /etc/skel /users/pupkin
# sudo useradd pupkin -d /users/pupkin 
# sudo chown -R pupkin:pupkin /users/pupkin
# sudo passwd pupkin

# ******************************************************