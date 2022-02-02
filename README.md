# DeVoS
Part of Master Thesis - Custom voting system running on the EVM.

## Specifications
    Operating System:   Ubuntu      20.04.3 LTS
    Packages:           Geth        1.10.15-stable
                        Ganache     2.5.4-linux-x86_64
                        Node.js     v10.19.0
                        NPM         6.14.4
                        Truffle     v5.4.29 (core: 5.4.29)
                        Solidity    v0.5.16 (solc-js)
                        Web3.js     v1.5.3

## Installation

> sudo add-apt-repository ppa:ethereum/ethereum\
> sudo apt install ethereum nodejs npm\
> sudo npm install -g truffle

Also, download Ganache from https://trufflesuite.com/ganache/ and run
.APPIMAGE as executable.
Apply Ganache-Configurations to Network specifications in truffle-config.js and deploy given contracts using
> truffle migrate

If the transactions are registered correctly, everything is set.

Alternatively, use the Remix IDE ( https://remix.ethereum.org/ ) and export the contracts to the Web-IDE. 


### Web3

Work in Progress