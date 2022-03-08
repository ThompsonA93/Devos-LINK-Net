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