#!/bin/bash
# One of the dependencies for Chainlink
# Based on Ubuntu 22.04, check sources here: https://go.dev/dl/
sudo rm -rf /usr/local/go
wget https://go.dev/dl/go1.20.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz
ls /usr/local/go

export PATH=$PATH:/usr/local/go/bin
go version