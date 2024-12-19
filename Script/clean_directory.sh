#!/bin/bash
set -e

echo "Running BeforeInstall script: clean_directory.sh"

# Remove the existing index.html file if it exists
if [ -f /var/www/html/index.html ]; then
  echo "Removing existing index.html"
  rm -f /var/www/html/index.html
else
  echo "No index.html found, skipping removal."
fi
