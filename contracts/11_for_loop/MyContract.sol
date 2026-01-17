// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  uint256 public loopCount;

  function doLoop(uint256 n) public {
    for (uint256 i = 0; i < n; i++) {
      loopCount += 1;
    }
  }
}