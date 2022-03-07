const ethereumButton = document.getElementById(".enableEthereumButton");
  ethereumButton.addEventListener("click", () => {
    ethereumButton.disabled = true;
    ethereumButton.innerText = "Connecting ...";

    const accounts = ethereum.request({ method: 'eth_requestAccounts' });
    const account = accounts[0];

    ethereumButton.disabled = false;
    ethereumButton.innerText = account;
  });

/** 
web3.eth.getAccounts(function(err, accounts){
  if (err != null) console.error("An error occurred: "+err);
  else if (accounts.length == 0) console.log("User is not logged in to MetaMask");
  else console.log("User is logged in to MetaMask");
});
*/