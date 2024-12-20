#!/bin/bash
echo "Starting before_install..." >> /var/log/deployment.log

# Example of stopping a service if it exists
if systemctl is-active --quiet httpd; then
  systemctl stop httpd
  echo "Stopped httpd service" >> /var/log/deployment.log
else
  echo "httpd service not running" >> /var/log/deployment.log
fi

echo "Completed before_install..." >> /var/log/deployment.log
