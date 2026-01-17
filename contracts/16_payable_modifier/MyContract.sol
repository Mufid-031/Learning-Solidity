// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  address payable public owner;

  constructor() {
    owner = payable(msg.sender);
  }

  modifier onlyOwner() {
    require(msg.sender == owner, "Not owner");
    _;
  }

  function withdraw(uint256 amount) public onlyOwner {
    owner.transfer(amount);
  }

  function transfer(address payable _to, uint256 amount) public onlyOwner {
    _to.transfer(amount);
  }
}