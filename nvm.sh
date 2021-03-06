#!/bin/bash -
mkdir ~/.nvm
brew install nvm
#run the nvm setup commands 
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
nvm install --lts
nvm use node
if ! nvm run node --version; then
    echo "nvm is not installed properly."
    exit 1
fi
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
echo '. "$(brew --prefix nvm)/nvm.sh"' >> ~/.bash_profile