#!/bin/bash
echo "Starting after_install..." >> /var/log/deployment.log

# Ensure the target directory exists and is writable
if [ ! -d "/var/www/html/" ]; then
  mkdir -p /var/www/html/
  echo "Created /var/www/html/ directory" >> /var/log/deployment.log
fi

# Copy the new index.html
cp /index.html /var/www/html/

echo "Completed after_install..." >> /var/log/deployment.log
