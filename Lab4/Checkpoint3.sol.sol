// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SemesterRecord {

    // 👩‍🎓 Struct to hold all the semester data
    struct SemesterData {
        string gpa;
        uint studentID;
        string semesterName;
        uint courseTaken;
    }

    // 🔐 Mapping studentID => their semester data
    mapping(uint => SemesterData) private studentSemesters;

    function setSemesterData(
        uint _studentID,
        string memory _gpa,
        string memory _semesterName,
        uint _courseTaken
    ) public {
        studentSemesters[_studentID] = SemesterData(_gpa, _studentID, _semesterName, _courseTaken);
    }


    function getSemesterData(uint _studentID) public view returns (
        string memory,
        uint,
        string memory,
        uint
    ) {
        SemesterData memory data = studentSemesters[_studentID];
        return (data.gpa, data.studentID, data.semesterName, data.courseTaken);
    }
}

