#!/bin/bash
echo "Starting application..." >> /var/log/deployment.log

# Start the Apache service (or your application service)
systemctl start httpd

echo "Application started successfully" >> /var/log/deployment.log
