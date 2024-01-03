
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;
    
    // get by index
    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }
    //Add elemnt to array
    function add(uint i) public {
        arr.push(i);
    }
    //Remove element from array
    function pop() public {
        arr.pop();
    }
    // get aray length
    function length() public view returns (uint) {
        return arr.length;
    }
    // Remove element from array by index
    function remove(uint index) public {
        delete arr[index];
    }
}