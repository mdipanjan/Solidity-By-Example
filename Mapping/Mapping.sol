// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Mapping {
// Mapping from address to uint
 mapping (address => uint) myMap;

 function name(address _addr) public view returns () {
    // Mapping always returns a value.
    // If the value was never set, it will return the default value.

    return myMap[_addr];
 }
}