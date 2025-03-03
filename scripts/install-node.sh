#!/usr/bin/env bash

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Source the nvm() shell command
source "${NVM_DIR}/nvm.sh"

# Set the default node version
nvm install 20
nvm alias default 20
nvm use default

# Install global npm packages
npm install -g aws-cdk
npm install -g localtunnel
npm install -g pnpm
