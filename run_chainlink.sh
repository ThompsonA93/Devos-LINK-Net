#!/bin/bash

echo "[Log]
Level = 'warn'

[WebServer]
SecureCookies = false
TLS.HTTPSPort = 0

[Insecure]
DevWebServer = true

" > chainlink/config.toml

echo "[Password]
Keystore = 'clnodepw13378545'

[Database]
URL = 'postgresql://postgres:psql@localhost:5432/postgres?sslmode=disable'
AllowSimplePasswords = true
" > chainlink/secrets.toml

cd chainlink
make chainlink-dev
./chainlink -c config.toml -s secrets.toml node start
