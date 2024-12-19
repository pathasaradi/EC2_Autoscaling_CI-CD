#!/bin/bash
# Update and upgrade system packages
sudo yum update -y
sudo yum upgrade -y

# Install Nginx
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# Install Ruby
sudo yum install ruby -y

# Install wget
sudo yum install wget -y

# Install AWS CodeDeploy Agent
cd /home/ec2-user
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
