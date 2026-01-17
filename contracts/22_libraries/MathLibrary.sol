// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

library MathLibrary {
  function multiply(uint256 a, uint256 b) public view returns (uint256, address) {
    return (a * b, address(this));
  }
}