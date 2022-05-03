#!/bin/bash
# Script may influence existing packages on the operating system. 
# Extract what is necessary.
apt-get install python3-pip xterm
pip3 install -r requirements.txt 

echo "Installed Python3-Dependencies."