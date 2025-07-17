// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Checkpoint1 {
    uint myStudentID = 22101744;

    function checkID(uint id) public pure returns (string memory) {
        if (id == 22101744) {
            return "Tahsin Tanni";
        } else {
            return "This is not your ID";
        }
    }
}
