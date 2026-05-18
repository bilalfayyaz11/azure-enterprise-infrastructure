#!/bin/bash
set -euo pipefail

NODE_VERSION="${1:-20.x}"

echo "Starting Node.js installation..."
echo "Target version: $NODE_VERSION"

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg

curl -fsSL "https://deb.nodesource.com/setup_${NODE_VERSION}" | sudo -E bash -

sudo apt-get install -y nodejs

echo "Node.js version:"
node --version

echo "npm version:"
npm --version

echo "Node.js installation completed successfully!"
