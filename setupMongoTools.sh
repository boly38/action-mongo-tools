#!/bin/bash
# Setup mongoDB Tools - src: https://www.mongodb.com/docs/database-tools/installation/installation-linux/
if [ ! -f ./.setupMongoKeys ]; then
  ./setupMongoKeys.sh
fi

echo "aptitude install mongodb-database-tools"
sudo apt install mongodb-database-tools

echo "mongodump --version"
mongodump --version