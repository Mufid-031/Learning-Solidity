// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract MyContract {
  string public myString = "hello";
  bytes32 public myBytes32 = "hello bytes32";
  int256 public myInt = 1;
  uint256 public myUint = 1;
  uint8 public myUint8 = 4;
  address public myAddress = 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984;

  function getValue() public pure returns (uint256) {
    uint256 value = 6;
    return value;
  }
}