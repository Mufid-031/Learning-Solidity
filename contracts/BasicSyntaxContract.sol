// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract BasicSyntaxContract {
  uint public storedData;

  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint) {
    return storedData;
  }
}