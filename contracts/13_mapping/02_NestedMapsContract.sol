// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract NestedMapsContract {
  mapping(address => mapping(address => uint256)) public allowance;

  function get(address _addressOwner, address _addressSpender) public view returns (uint256) {
    return allowance[_addressOwner][_addressSpender];
  }

  function set(
    address _addressOwner,
    address _addressSpender,
    uint256 amount
  ) public {
    allowance[_addressOwner][_addressSpender] = amount;
  }

  function remove(address _addressOwner, address _addressSpender) public {
    delete allowance[_addressOwner][_addressSpender];
  }
}