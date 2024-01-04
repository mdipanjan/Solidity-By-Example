// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
    Inheritance is a way to reuse code of smart contracts.
    Solidity supports multiple inheritance.
    Contracts can inherit other contract by using the keyword 'is'.
    The syntax for inheritance is as follows:
    
*/

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract C is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// Contracts inherit other contracts by using the keyword 'is'.

contract B is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner.

contract D is B, C {
    // D.foo() returns "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}