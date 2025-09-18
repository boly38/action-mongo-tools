#!/bin/bash
echo "⚙️ Setup Mongo keys"

# Install gnupg if not present
sudo apt-get install -y gnupg

# Create the directory for keyrings if it doesn't exist
sudo install -m 0755 -d /etc/apt/keyrings

# Download and install the MongoDB public GPG key into the keyring
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo gpg --dearmor -o /etc/apt/keyrings/mongodb-6.0.gpg

# Set correct permissions
sudo chmod 644 /etc/apt/keyrings/mongodb-6.0.gpg

# Add the MongoDB repository using the new signed-by option
echo "deb [arch=amd64,arm64 signed-by=/etc/apt/keyrings/mongodb-6.0.gpg] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

echo "⚙️ Aptitude update"
sudo apt-get update

touch .setupMongoKeys