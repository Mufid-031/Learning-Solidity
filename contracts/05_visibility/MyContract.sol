// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  // Private - A private function/state variable is only visible within the contract it is defined in
  // Internal - A internal function/state variable is visible within the contract it is defined in and in derived contracts
  // Public - A public function/state variable is visible externally and internally (both within the contract
  // External - A external function is only visible externally (cannot be called internally)

  // private state variable
  string private name;
  uint256 internal age = 21;
  string public id = "ABC123";

  // public function
  function setName(string memory newName) public {
    name = newName;
  }

  function getName() public view returns (string memory) {
    return name;
  }

  function getAge() public view returns (uint256) {
    return privateFunction();
  }

  function privateFunction() private view returns (uint256) {
    return age;
  }

  function externalFunction() external pure returns (string memory) {
    return "This is an external function";
  }
}