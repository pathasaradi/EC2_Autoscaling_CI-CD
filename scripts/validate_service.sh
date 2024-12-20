#!/bin/bash
echo "Validating service..." >> /var/log/deployment.log

# Example validation by checking if the Apache service is running
if systemctl is-active --quiet httpd; then
  echo "Apache is running" >> /var/log/deployment.log
  exit 0  # Return success
else
  echo "Apache failed to start" >> /var/log/deployment.log
  exit 1  # Return failure
fi
