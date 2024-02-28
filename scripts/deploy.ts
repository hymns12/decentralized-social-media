import { ethers } from "hardhat";

async function main() {
  const NFT = await ethers.deployContract("NFT");
  await NFT.waitForDeployment();
  
  console.log(`decentralized-social-media.sol ${NFT.target}`);
  
  const Relayer = await ethers.deployContract("Relayer");
  await Relayer.waitForDeployment();
  
  console.log(`decentralized-social-media.sol ${Relayer.target}`);
  
  const socialMedia = await ethers.deployContract("SocialMedia");
  await socialMedia.waitForDeployment();

  console.log(`decentralized-social-media.sol ${socialMedia.target}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
