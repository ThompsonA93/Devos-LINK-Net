#!/bin/bash
# Chainlink-Conf
mkdir ~/.chainlink-sepolia

echo "[Log]
Level = 'warn'

[WebServer]
AllowOrigins = '\*'
SecureCookies = false

[WebServer.TLS]
HTTPSPort = 0

[[EVM]]
ChainID = '1337'

[[EVM.Nodes]]
Name = 'Simulated'
WSURL = 'ws://host.docker.internal:8545'
HTTPURL = 'https://:8080'
" > ~/.chainlink-sepolia/config.toml

echo "[Password]
Keystore = 'mysecretkeystorepassword'
[Database]
URL = 'postgresql://postgres:mysecretkeystorepassword@host.docker.internal:5432/postgres?sslmode=disable'
" > ~/.chainlink-sepolia/secrets.toml

# Chainlink Execute
cd ~/.chainlink-sepolia
sudo docker run --platform linux/x86_64/v8 --name chainlink -v ~/.chainlink-sepolia:/chainlink -it -p 6688:6688 --add-host=host.docker.internal:host-gateway smartcontract/chainlink:2.0.0 node -config /chainlink/config.toml -secrets /chainlink/secrets.toml start
