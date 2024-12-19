#! /bin/bash
sudo yum update
sudo yum upgrade -y
sudo yum install nginx -y
sudo yum update
sudo yum install ruby-full -y
sudo yum install wget
cd /home/ec2-user
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
