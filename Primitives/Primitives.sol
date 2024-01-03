// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Primitives {
    /*
        Primitive data types in solidity:
        boolean
        uint256
        int256
        address
    */
    // uint stands for unsigned integer, meaning non negative integers

    uint256 public a = 1;
    bool public b = true;
    address public c = 0x0
    
    //    Negative numbers are allowed for int types.

    int256 public d = -1;

    // Addresses are Ethereum addresses, stored as 20 byte values.
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // Default values
    // Unassigned variables have a default value

    bool public defaultBool; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000


}