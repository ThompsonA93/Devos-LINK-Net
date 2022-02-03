# DeVoS-Web3
Implementation of Smart Contracts using Solidity. Operation intended for local blockchains (Ganache-Cli), compiled using Truffle.

## Specifications
    Operating System:   Ubuntu      20.04.3 LTS
    Packages:           Geth        1.10.15-stable
                        Ganache     2.5.4-linux-x86_64
                        Truffle     v5.4.29 (core: 5.4.29)
                        Solidity    v0.5.16 (solc-js)

## Installation
Operational, but deemed deprecated. Refer to 'launch.sh'.

> sudo add-apt-repository ppa:ethereum/ethereum\
> sudo apt install ethereum nodejs npm\
> sudo npm install -g truffle

Also, download Ganache from https://trufflesuite.com/ganache/ and run
.APPIMAGE as executable.
Apply Ganache-Configurations to Network specifications in truffle-config.js and deploy given contracts using
> truffle migrate

If the transactions are registered correctly, everything is set.

Alternatively, use the Remix IDE ( https://remix.ethereum.org/ ) and export the contracts to the Web-IDE. 