#!/usr/bin/env bash

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Source the nvm() shell command
source ${NVM_DIR}/nvm.sh

# Set the default to node v14
nvm install 14
nvm alias default 14
nvm use default

# Install global npm packages
npm install -g cdk
npm install -g localtunnel

