#!/bin/bash
case "$1" in
   -[sS])        printf "Starting Backendserver.\n";    xterm -hold -e "npm start"  ;;
   -[cC])        printf "Starting local Blockchain.\n"; xterm -hold -e "npx ganache-cli" ;;
   -[mM])        printf "Migrating Contracts.\n";       xterm -hold -e "cd web3/;truffle migrate" ;;
   *)            printf "No/Incorrect options were passed.\n Pass -s to run the backend-server\n Pass -m to run Smart Contract Migrations\n Pass -c to run the local Blockchain.\n"; 
esac