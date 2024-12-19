#!/bin/bash
sudo yum update -y
sudo yum upgrade -y
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo yum install ruby -y
sudo yum install wget -y
cd /home/ec2-user
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
