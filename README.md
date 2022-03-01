# DeVoS
Custom voting system using Web3 principles as part of a Master Thesis. 

Work in Progress - Refer to TODO.md

## Specifications
Implemented using the following systems/components:

    Operating System:   Ubuntu 20.04.4 LTS
    Python3             Python v3.8.10
                        pip v20.0.2
    NPM                 NPM v8.3.1
                        Ganache CLI v6.12.2 (ganache-core: 2.13.2)
                        Truffle v5.5.2

## Installation
Execute '__installation.sh' or extract singular commands.

## Execution
Execute '__launch.sh' with corresponding flags:
    Pass -s to run the backend-server
    Pass -m to run smart contract migrations
    Pass -c to run the local Blockchain

Note: In order to migrate (-m) the contracts, the local blockchain must be up and running.

## References & Links
|                   |                                            |
| -----------       | -----------                                |
| Flask             | https://palletsprojects.com/p/flask/       |
| Web3Py            | https://web3py.readthedocs.io/en/stable/   |
| Ganache CLI       | https://www.npmjs.com/package/ganache      |
| Truffle           | https://www.npmjs.com/package/truffle      | 
| Ethereum          | https://ethereum.org                       |
