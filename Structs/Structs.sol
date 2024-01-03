
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
    We can define your own type by creating a struct.
    They are useful for grouping together related data.
    Structs can be declared outside of a contract and imported in another contract.

 */
// Caen also be imported from different file
import "./StructDeclaration.sol";

contract Todo {
    struct TodoItem {
        string task;
        bool completed;
    }
    // An array of 'Todo' structs
    Todo[] public todos;

    function create(calldata _text)  returns () {
        // 3 ways to initialize a struct

        // 1) - calling it like a function
        todos.push(TodoItem(_text, false));
        // 2) key value mapping
        todos.push(TodoItem({task: _text, completed: false}));
        // 3) initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        todos.push(todo);

    }
    // Solidity automatically created a getter for 'todos' so
    // we don't actually need this function.
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }
    // update text
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
    // update completed
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}