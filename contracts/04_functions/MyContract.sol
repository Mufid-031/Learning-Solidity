// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  string private name;

  // Function that create transaction to set the name on the blockchain
  function setName(string memory newName) public {
    name = newName;
  }

  // Function that do not create transaction, just read from the blockchain (view or pure)
  function getName() public view returns (string memory) {
    return name;
  }
}