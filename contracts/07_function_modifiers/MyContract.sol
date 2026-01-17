// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  address public owner;
  string private name;

  constructor() {
    owner = msg.sender;
  }

  // Modifier to restrict access to only the owner
  modifier onlyOwner() {
    require(msg.sender == owner, "Not owner");
    _;
  }

  // Function that can only be called by the owner
  function setName(string memory newName) public onlyOwner {
    name = newName;
  }

  function getName() public view returns (string memory) {
    return name;
  }
}