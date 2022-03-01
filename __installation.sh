#!/bin/bash
# Script may influence existing packages on the operating system. 
# Extract what is necessary.
apt-get install python3-pip xterm
pip3 install -r requirements.txt 

echo "Installed Python3-Dependencies."

curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
apt install -y nodejs
npm install -g truffle ganache-cli

echo "Installed NPM-Truffle and NPM-Ganache."
