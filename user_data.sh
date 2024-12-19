#!/bin/bash
sudo yum update
sudo yum upgrade -y
sudo yum install nginx -y
sudo yum update
sudo yum install ruby-full -y
sudo yum install wget
cd /home/ec2-user
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
