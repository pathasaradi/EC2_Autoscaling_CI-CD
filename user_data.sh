#! /bin/bash
sudo yum update -y
sudo yum upgrade -y
sudo amazon-linux-extras enable nginx1
sudo yum install nginx -y
sudo yum install ruby -y
sudo yum install wget -y
sudo systemctl start nginx
sudo systemctl enable nginx
cd /home/ec2-user
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
