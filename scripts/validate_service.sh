#!/bin/bash
# Validate that NGINX is running
if systemctl is-active --quiet nginx; then
    echo "NGINX is running."
    exit 0
else
    echo "NGINX is not running."
    exit 1
fi
