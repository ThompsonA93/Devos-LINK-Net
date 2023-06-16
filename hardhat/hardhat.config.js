require("@nomicfoundation/hardhat-toolbox");

task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});

// Do not bother configuring this pos, just run from CLI
// npx hardhat node --fork https://eth-mainnet.alchemyapi.io/v2/<key>

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  mocha: {
    timeout: 3600000, // 1 Hour max
  },
};
