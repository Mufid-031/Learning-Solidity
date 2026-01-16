import { deploy } from "./ethers-lib.js"

(async () => {
  try {
    const result = await deploy('BasicSyntaxContract', [])
    console.log(`address: ${result.getAddress()}`)
  } catch (e: any) {
    console.log(e.message)
  }
})()