#!/bin/bash
# Setup mongosh - src: https://www.mongodb.com/docs/mongodb-shell/install/
if [ ! -f ./.setupMongoKeys ]; then
  ./setupMongoKeys.sh
fi

echo "aptitude install mongodb-mongosh"
sudo apt-get install -y mongodb-mongosh

echo "show current version"
mongosh --version