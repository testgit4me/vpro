#!/bin/bash
sudo yum install epel-release -y
sudo yum install ansible -y
ansible --version
ansible localhost -m ping
ansible localhost -a 'free -m'