
const hre = require("hardhat");

async function main() {


  const Token = await hre.ethers.getContractFactory("MintAToken");
  const token = await Token.deploy();

  await token.deployed();

  console.log(
    `MintAToken contract deployed to ${token.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
