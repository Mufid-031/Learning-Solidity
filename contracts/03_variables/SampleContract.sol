// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract SampleContract {
  // State variable
  // Data in this variable is stored on the blockchain
  uint256 public storedData;

  function getResult() public pure returns (uint256) {
    // Local variables
    uint256 a = 10;
    uint256 b = 20;
    uint256 result = a + b;
    
    // Access the local variable 'result'
    return result;
  }

  function getSenderOfTransaction() public view returns (address) {
    // Global variable msg.sender
    return msg.sender;
  }

  function getChainId() public view returns (uint256) {
    // Global variable block.chainid
    return block.chainid; 
  }
}