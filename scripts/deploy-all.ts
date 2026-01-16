import fs from "fs/promises"
import path from "path"
import { deploy } from "./ethers-lib.js"
import { fileURLToPath } from "url"

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

const CONTRACTS_DIR = path.resolve(__dirname, "../contracts")

async function getContracts(): Promise<string[]> {
  const files = await fs.readdir(CONTRACTS_DIR)

  return files
    .filter(f => f.endsWith(".sol") && !f.endsWith(".t.sol"))
    .map(f => path.basename(f, ".sol"))
}


(async () => {
  try {
    console.log("📦 Scanning contracts folder...")
    const contracts = await getContracts()

    if (contracts.length === 0) {
      console.log("❌ No contracts found")
      return
    }

    console.log("🚀 Contracts to deploy:", contracts)

    const deployed: Record<string, string> = {}

    for (const contract of contracts) {
      console.log(`\n🔹 Deploying ${contract}...`)
      const instance = await deploy(contract, [])
      const address = await instance.getAddress()

      deployed[contract] = address
      console.log(`✅ ${contract} deployed at ${address}`)
    }

    console.log("\n🎉 Deployment summary:")
    console.table(deployed)

  } catch (e: any) {
    console.error("❌ Deployment failed:", e.message)
    process.exit(1)
  }
})()
