// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IDChecker {
    string public storedName;

  
    event Debug(uint remainder);

    function checkID(uint fullID, string memory name) public returns (string memory) {
        // Extract last two digits as a local variable
        uint lastTwoDigits = fullID % 100;

      
        storedName = name;

        uint remainder = fullID / lastTwoDigits;
        emit Debug(remainder);

        if (remainder == 0) {
            return storedName;
        } else {
            return "Not Found";
        }
    }
}