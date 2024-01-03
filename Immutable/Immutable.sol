// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Immutable {
    address public immutable MY_ADDRESS;
    constructor() {
        MY_ADDRESS = msg.sender;
    }

}