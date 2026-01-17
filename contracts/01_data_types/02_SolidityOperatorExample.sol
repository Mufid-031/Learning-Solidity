// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract SolidityOperatorExample {
  uint256 public variable_add = 70;
  uint256 public variable_sub = 50;
  uint256 public variable_mul = 5;
  uint256 public variable_div = 100;
  uint256 public variable_mod = 20;

  function getResults() public {
    variable_add += 30;  // Addition
    variable_sub -= 20;  // Subtraction
    variable_mul *= 4;   // Multiplication
    variable_div /= 2;   // Division
    variable_mod %= 6;   // Modulus

    return;
  }
}