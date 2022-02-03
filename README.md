# DeVoS
Custom voting system using Web3 principles as part of a Master Thesis.

Work in Progress - Refer to TODO.md

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Specifications
Implemented using the following systems/components:

    Operating System:   Ubuntu      20.04.3 LTS
    Packages:           Geth        1.10.15-stable
                        Ganache     2.5.4-linux-x86_64
                        Node.js     v16.13.2
                        NPM         6.14.4
                        Truffle     v5.4.29 (core: 5.4.29)
                        Solidity    v0.5.16 (solc-js)
                        Web3.js     v1.5.3

## Installation
Project currently implemented using React over Node.js.
> npx create-react-app $project-name

Notable modules:
* npm install web3 truffle
* npx install ganache-cli

## Execution
Execute 'launch.sh' with corresponding options.
  - Pass -s to run the backend-server
  - Pass -m to run smart contract migrations
  - Pass -c to run the local Blockchain

__Note__: In order to migrate (-m) the contracts, the local blockchain must be up and running.

Alternatively, run the following commands via terminal/shell as deemed necessary:
> npm start \
> npx ganache-cli \
> truffle migrate 

## References & Links
* https://nodejs.org/en/ 
* https://reactjs.org/docs/create-a-new-react-app.html 
* https://trufflesuite.com/ganache/
* https://remix.ethereum.org/ 