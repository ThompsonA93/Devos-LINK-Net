const ethereumButton = document.getElementById(".enableEthereumButton");
  ethereumButton.addEventListener("click", () => {
    ethereum.request({ method: 'eth_requestAccounts' });
});
