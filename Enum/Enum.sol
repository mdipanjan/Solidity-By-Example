
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//Enums can be declared outside of a contract.


contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input

    function set(Status _status) public {
        status = _status;
    }

    // We can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }

}