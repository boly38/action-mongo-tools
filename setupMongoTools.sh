#!/bin/bash
# Setup mongoDB Tools - src: https://www.mongodb.com/docs/database-tools/installation/installation-linux/
echo "aptitude install mongodb-database-tools"
sudo apt install mongodb-database-tools

echo "mongodump --version"
mongodump --version