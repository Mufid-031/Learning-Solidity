// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  string private name = "Mufid Risqi";

  // View function are read-only functions that do not modify the state of the blockchain
  function getName() public view returns (string memory) {
    return name;
  }

  // Pure functions do not read or modify the state of the blockchain
  function sum(uint256 a, uint256 b) public pure returns (uint256) {
    return a + b;
  }
}