const web3 = new Web3("http://localhost:7545")

web3.eth.getBlockNumber(function (error, result) {
  console.log(result)
  blocknumber.innerHTML = "Blocks mined: "+result;
})