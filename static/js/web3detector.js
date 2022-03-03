const web3 = new Web3("http://localhost:7545")

web3.eth.getBlockNumber(function (error, result) {
  blocknumber.innerHTML = "Blocks mined: "+result;
})

if (typeof window.ethereum !== 'undefined') {
  console.log( 'MetaMask is installed.');
}else{
  console.log( 'MetaMask is not installed.');
}