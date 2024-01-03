// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
    There are 3 types of variables in Solidity
    - Local : declared inside a function, not stored on the blockchain
    - State: declared outside a function, stored on the blockchain
    - Global: (provides information about the blockchain)
        - block
        - msg
        - tx
*/

contract Variables {
  //state variables are stored on the blockchain
    uint256 public stateUint = 1;
    string public string1 = "test";

    function() public {
        // local variable not stored on the blockchain
        uint i = 123;
        
         // Global variables
        uint timestamp = block.timestamp; // current block timestamp
        address sender = msg.sender; // address of the caller
    }
}