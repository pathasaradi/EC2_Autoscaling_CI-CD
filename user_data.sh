#!/bin/bash
sudo yum update
sudo yum upgrade -y
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
