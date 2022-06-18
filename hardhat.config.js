require("@nomiclabs/hardhat-waffle");
/**
 * @type import('hardhat/config').HardhatUserConfig
 */
const projectId = "33565dc689904b9e9250b8f5354ab27a";
module.exports = {
  networks: {
    hardhat: {
      host: "localhost",
      chainId: 31337
    }
    // ropsten: {
    //   url: `https://ropsten.infura.io/v3/${projectId}`,
    // },
    // mainnet: {
    //   url: `https://mainnet.infura.io/v3/${projectId}`,
    // }
  },
  solidity: "0.8.1",
};
