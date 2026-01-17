// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  string public symbol;

  function symbolNum(uint256 _symbolNum) public {
    if (_symbolNum == 1) {
      symbol = "BTC";
    } else if (_symbolNum == 2) {
      symbol = "ETH";
    } else {
      symbol = "CRAPCOIN";
    }
  }
}