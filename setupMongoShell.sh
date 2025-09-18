#!/bin/bash
# Setup mongosh - src: https://www.mongodb.com/docs/mongodb-shell/install/
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

echo "⚙️ Aptitude install mongodb-mongosh"
sudo apt-get install -y mongodb-mongosh

if [ "$MONGOTOOLS_KEEP_MAN" != "true" ]; then
echo "⚙️ Re-enable man/doc for following steps"
rm /etc/dpkg/dpkg.cfg.d/01_nodoc
fi

echo "🔎 Show current version"
mongosh --version