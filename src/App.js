import logo from './logo.svg';
import './App.css';
import { useEffect } from 'react/cjs/react.production.min';
import Web3 from 'web3';
import configData from "./conf.json";



function App() {
  const providerUrl = configData.PROVIDER_URL;
  const BC_URL = configData.BC_URL; 
  const web3 = new Web3(providerUrl);

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
