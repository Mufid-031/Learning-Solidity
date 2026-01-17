// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  string firstName;
  string lastName;

  constructor(string memory _firstName, string memory _lastName) {
    firstName = _firstName;
    lastName = _lastName;
  }

  function fullname() public view returns (string memory) {
    return string(abi.encodePacked(firstName, " ", lastName));
  }
}