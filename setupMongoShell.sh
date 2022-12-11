#!/bin/bash
# Setup mongosh - src: https://www.mongodb.com/docs/mongodb-shell/install/
echo "setup keys"
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

echo "aptitude update"
sudo apt-get update

echo "aptitude install mongodb-mongosh"
sudo apt-get install -y mongodb-mongosh

echo "show current version"
mongosh --version