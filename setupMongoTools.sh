#!/bin/bash
# Setup mongoDB Tools - src: https://www.mongodb.com/docs/database-tools/installation/installation-linux/
if [ ! -f ./.setupMongoKeys ]; then
  "$(dirname "$0")"/setupMongoKeys.sh
fi

if [ "$MONGOTOOLS_KEEP_MAN" = "true" ]; then
  echo "ℹ️ Keeping man/doc pages as MONGOTOOLS_KEEP_MAN=true"
else
  echo "⚙️ Disable man/doc before apt install"
  sudo tee /etc/dpkg/dpkg.cfg.d/01_nodoc <<'EOF'
path-exclude=/usr/share/man/*
path-exclude=/usr/share/doc/*
EOF
fi

echo "⚙️ aptitude install mongodb-database-tools"
sudo apt install mongodb-database-tools

if [ "$MONGOTOOLS_KEEP_MAN" != "true" ]; then
echo "⚙️ Re-enable man/doc for following steps"
rm /etc/dpkg/dpkg.cfg.d/01_nodoc
fi

echo "🔎 Show mongodump and mongorestore current version"
mongodump --version
mongorestore --version

