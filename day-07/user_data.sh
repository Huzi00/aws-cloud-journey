#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install nginx1 -y || sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
echo "Welcome to Day 7 - Nginx Web Server on AWS EC2!" | sudo tee /usr/share/nginx/html/index.html
