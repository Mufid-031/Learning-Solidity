// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "./MathLibrary.sol";

library MathLibrary2 {
  function multiply(uint256 a, uint256 b) internal view returns (uint256, address) {
    return (a * b, address(this));
  }
}

contract MyContract {
  using MathLibrary2 for uint256;
  address owner = address(this);

  function callLibrary(uint256 a, uint256 b) public view returns (uint256, address) {
    return MathLibrary.multiply(a, b);
  }

  function callLibrary2(uint256 a, uint256 b) public view returns (uint256, address) {
    return a.multiply(b);
  }
}