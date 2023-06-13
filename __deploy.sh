#!/bin/bash
# Postgresql
sudo docker run --name cl-postgres -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres

# Chainlink
mkdir -p ~/.chainlink-sepolia

echo "[Log]
Level = 'warn'

[WebServer]
AllowOrigins = '\*'
SecureCookies = false

[WebServer.TLS]
HTTPSPort = 0

[[EVM]]
ChainID = '11155111'

[[EVM.Nodes]]
Name = 'Sepolia'
WSURL = 'wss://127.0.0.1:8545/'
HTTPURL = 'https://127.0.0.1:8545/'
" > ~/.chainlink-sepolia/config.toml

echo "[Password]
Keystore = 'mysecretkeystorepassword'
[Database]
URL = 'postgresql://postgres:mysecretpassword@host.docker.internal:5432/postgres?sslmode=disable'
" > ~/.chainlink-sepolia/secrets.toml

cd ~/.chainlink-sepolia && sudo docker run --platform linux/x86_64/v8 --name chainlink -v ~/.chainlink-sepolia:/chainlink -it -p 6688:6688 --add-host=host.docker.internal:host-gateway smartcontract/chainlink:2.0.0 node -config /chainlink/config.toml -secrets /chainlink/secrets.toml start

sudo docker ps