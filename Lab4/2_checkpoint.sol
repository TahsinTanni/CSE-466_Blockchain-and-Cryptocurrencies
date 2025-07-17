// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDirectory {
    
    // mapping: student ID => student name
    mapping(uint => string) private studentNames;

    function addStudent(uint id, string memory name) public {
        studentNames[id] = name;
    }

    
    function getStudentName(uint id) public view returns (string memory) {
        return studentNames[id];
    }
}