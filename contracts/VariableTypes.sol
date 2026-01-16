// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract VariableTypes {
  // State Variable
  uint public sum;

  function add(uint num1, uint num2) public {
    // Local Variable
    uint result = num1 + num2;
    sum = result;
  }

  function getSum() public view returns (uint) {
    return sum;
  }
}

contract Types {
  bool public valid = true;

  int32 public angka1 = -32;
  uint public angka2 = 1;

  uint32 public ui_data = 5_01_2021;
}