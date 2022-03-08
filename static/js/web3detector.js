const web3 = new Web3("http://localhost:7545")

if (typeof window.ethereum !== 'undefined') {
  metamaskInstalled.innerHTML += "MetaMask is installed."
}else{
  metamaskInstalled.innerHTML += "MetaMask is not installed."
}
      
web3.eth.net.isListening()
  .then(() => chainInfo.innerHTML += "Web3-Provider Frontend connection successfull."  )
  .catch(e => chainInfo.innerHTML += 'Web3-Provider Frontend connection not successfull: '+ e );

web3.eth.getBlockNumber(function (error, result) {
  chainInfo.innerHTML += "Current Block #"+result;
})