// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StringSlicer {
    string private storedString;

    function storeString(string memory _input) public {
        storedString = _input;
    }

    function getSlicedString(uint start, uint end) public view returns (string memory) {
        bytes memory strBytes = bytes(storedString);
        require(end < strBytes.length + 1, "End index out of bounds");
        require(start <= end, "Start must be less than or equal to End");

        bytes memory result = new bytes(end - start + 1);
        for (uint i = start; i <= end; i++) {
            result[i - start] = strBytes[i];
        }

        return string(result);
    }
}