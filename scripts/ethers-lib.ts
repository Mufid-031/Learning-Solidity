import hre from "hardhat";
import type { Contract } from "ethers";

export async function deploy(
  contractName: string,
  args: any[] = []
): Promise<Contract> {

  console.log(`Deploying ${contractName}...`);

  // Connect ke network (Hardhat v3)
  const { ethers } = await hre.network.connect();

  // Deploy contract (Hardhat handle ABI & bytecode)
  const contract = await ethers.deployContract(contractName, args);

  console.log("Waiting for deployment tx...");
  await contract.waitForDeployment();

  console.log(
    `${contractName} deployed at:`,
    await contract.getAddress()
  );

  return contract;
}
