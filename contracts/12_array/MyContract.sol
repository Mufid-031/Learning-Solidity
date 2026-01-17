// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract MyContract {
  uint256[] public myArray;
  uint256[] public myArray2 = [1, 2, 3, 4, 5];
  uint256[3] public myFixedArray;
  
  uint256[] integerArray;
  bool[] booleanArray;
  address[] addressArray;

  function pushIsToArray(uint256 index) public {
    myArray.push(index);
  }

  function getItemInArray(uint256 index) public view returns (uint256) {
    return myArray[index];
  }

  function updateTheArray(uint256 index, uint256 newValue) public {
    myArray[index] = newValue;
  }

  function remove(uint256 index) public {
    delete myArray[index];
  }

  function removeAndCompact(uint256 index) public {
    myArray[index] = myArray[myArray.length - 1];
    myArray.pop();
  }

  function getLength() public view returns (uint256) {
    return myArray.length;
  }
}