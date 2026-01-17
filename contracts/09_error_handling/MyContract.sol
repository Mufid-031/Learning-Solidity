// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  // Assert - is used to check for conditions that should never be false
  // Require - is used to validate inputs and conditions before executing a function
  // Revert - is used to revert the transaction and provide an error message

  uint256 public balance;

  function deposit(uint256 amount) public {
    uint256 oldBalance = balance;
    uint256 newBalance = oldBalance + amount;
    require(newBalance >= oldBalance, "Overflow");

    balance += amount;
    assert(balance >= amount);

    if (balance < amount) {
      revert("Underflow");
    }
  }
}