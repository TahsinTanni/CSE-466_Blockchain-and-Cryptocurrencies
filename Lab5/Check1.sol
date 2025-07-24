// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract IssueTracker {
    enum Status { ACTIVE, IN_PROGRESS, COMPLETE, CLOSED }

    struct Issue {
        uint issueId;
        string description;
        Status status;
    }

    mapping(uint => Issue) public issueList;

    function addIssue(uint _issueId, string memory _description, Status _status) public {
        issueList[_issueId] = Issue(_issueId, _description, _status);
    }
}
