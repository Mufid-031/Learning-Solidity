import { task } from "hardhat/config"
import { ArgumentType } from "hardhat/types/arguments"

type DeployTaskArgs = {
  name: string
  args: string
}

async function deployAction(
  taskArgs: DeployTaskArgs,
  hre: any
) {
  const { name, args } = taskArgs

  const { deploy } = await import("../scripts/ethers-lib.js")

  const parsedArgs = args
    ? args.split(",").map(v => {
        if (v === "true") return true
        if (v === "false") return false
        if (!isNaN(Number(v))) return Number(v)
        return v
      })
    : []

  console.log(`🚀 Deploying ${name}`)
  console.log(`📦 Args:`, parsedArgs)

  const contract = await deploy(name, parsedArgs)
  const address = await contract.getAddress()

  console.log(`✅ ${name} deployed at ${address}`)
}

task("deploy", "Deploy a single contract")
  .addPositionalArgument({
    name: "name",
    description: "Contract name",
    type: ArgumentType.STRING,
  })
  .addPositionalArgument({
    name: "args",
    description: "Constructor arguments (comma separated)",
    type: ArgumentType.STRING,
    defaultValue: "",
  })
  .setAction(deployAction as any)