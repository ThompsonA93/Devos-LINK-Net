#!/bin/bash
echo "# Devos-LINKNET
Blockchain oracle which acts as intermediary for user identity management.

| Environment      | Version          |
| ---------------- | ---------------- |
| Operating System | $(lsb_release -d | awk '{print $2 " " $3}') |
| Node             | $(node --version)|
| NPM              | $(npm --version) |
| Go-Server | $(go version | awk '{print $3}') |
| Python | | $(python --version | awk '{print $2}')|
| Postgresql | $(psql --version | awk '{print $3}') |

# References:
#### Hardhat
Local node that chainlink depends upon. Fork the endpoint for the Sepolia test-network, otherwise reconfigure chainlink to use the proper chain.
- https://hardhat.org/hardhat-runner/docs/getting-started
- https://hardhat.org/hardhat-network/docs/guides/forking-other-networks


#### Chainlink
Oracle based on Hardhat. Use installation from source given dockerized solutions were just buggy af.
- https://docs.chain.link/chainlink-nodes/v1/running-a-chainlink-node 
- https://docs.chain.link/chainlink-nodes/v1/node-config
- https://docs.chain.link/chainlink-nodes/v1/secrets-config
" > README.md


