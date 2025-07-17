// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Checkpoint1 {
    // Store your own ID as string
    string myStudentID = "22101744";

    // Compare input string ID with your ID
    function checkID(string memory id) public view returns (string memory) {
        // Use keccak256 to compare strings securely (unique hash)
        if (keccak256(bytes(id)) == keccak256(bytes(myStudentID))) {
            return "Tahsin Tanni";
        } else {
            return "This is not your ID";
        }
    }
}