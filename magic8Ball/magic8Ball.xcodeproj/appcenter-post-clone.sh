#!/usr/bin/env bash

# install correct node version
set -ex
brew uninstall node@6
NODE_VERSION="8.9.4"
curl "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.pkg" > "$HOME/Downloads/node-installer.pkg"
sudo installer -store -pkg "$HOME/Downloads/node-installer.pkg" -target "/"

# install apollo
npm install -g apollo

# setup cocoa pods keys
gem install cocoapods-keys

pod keys set userPoolId $USER_POOL_ID 
pod keys set clientId $CLIENT_ID
pod keys set clientSecret $CLIENT_SECRET
