#!/bin/bash

########################################################
##### USE THIS FILE IF YOU LAUNCHED AMAZON LINUX 2 #####
########################################################

# get admin privileges
sudo su

# system update, -y is yes for every question
yum update -y

# install httpd (Linux 2 version)
yum install -y httpd.x86_64

# starting service httpd
systemctl start httpd.service

# enable this service again after reboot
systemctl enable httpd.service

# display initial page
curl localhost:80

# first page
echo "Hello World" > /var/www/html/index.html

# page with hostname
echo "Hello World from $(hostname -f)" > /var/www/html/index.html
