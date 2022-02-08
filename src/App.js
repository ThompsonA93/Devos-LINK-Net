import logo from './logo.svg';
import './App.css';
import Web3 from 'web3';



function App() {
  window.addEventListener('load', function () {
    if (window.ethereum) {
        window.web3 = new Web3(ethereum);
        ethereum.enable()
            .then(() => {
                console.log("Ethereum enabled");

                web3.eth.getAccounts(function (err, acc) {
                    if (err != null) {
                        self.setStatus("There was an error fetching your accounts");
                        return;
                    }
                    if (acc.length > 0) {
                        console.log(acc);
                    }
                });
            })
            .catch(() => {
                console.warn('User didn\'t allow access to accounts.');
                waitLogin();
            });
    } else {
        console.log("Non-Ethereum browser detected. You should consider installing MetaMask.");
    }
  });

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
