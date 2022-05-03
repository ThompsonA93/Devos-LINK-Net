# DevoServ

| Environment| Version|
|-|-|
Operating System    | Ubuntu 20.04.4 LTS


| Packages | Version |
|-|-|

## Installation

Run the following command for local project setup.
```sh
cd devoclient
npm install
```
### Solc Compilations
The Project supports on-site compilation of smart contracts. Put smart contracts into /w3/contracts, then run
```sh
npm run solcompile
```

### Metamask
The frontend connection to the blockchain system is handled by MetaMask.
> https://metamask.io/


## Execution
Run the following command and then visit the shown address via browser.
```sh
cd devoclient
npm run dev
```