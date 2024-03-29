// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EtherUnits {
    uint public oneWei = 1 wei;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;
}