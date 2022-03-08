const ethereumButton = document.getElementById(".enableEthereumButton");

ethereumButton.addEventListener("click", () => {
  console.log('Eth-Button clicked');
  getAccount();
});

async function getAccount() {
  const accounts = await ethereum.request({ method: 'eth_requestAccounts' });
  const account = accounts[0];
  ethereumButton.innerText = account;
}

/* FIXME -- Button must await callback from metamask
const ethereumButton = document.getElementById(".enableEthereumButton");
  ethereumButton.addEventListener("click", () => {
    ethereumButton.disabled = true;
    ethereumButton.innerText = "Connecting ...";

    const accounts = ethereum.request({ method: 'eth_requestAccounts' });
    const account = accounts[0];

    ethereumButton.disabled = false;
    ethereumButton.innerText = account;
    */
  
  
//  });

/** Expected to work: 


async function connectToMetamask(){
  ethereumButton.disabled = true;
  ethereumButton.innerText = "Connecting ...";

  const provider = ethereum.request({ method: 'eth_requestAccounts' });
  // Prompt user for account connections
  await provider.send("eth_requestAccounts", []);
  const signer = provider.getSigner();
  console.log("Account:", await signer.getAddress());

  const ethereumButton = document.getElementById(".enableEthereumButton");
  ethereumButton.disabled = false;
  ethereumButton.innerText = signer;
}
*/