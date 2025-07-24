// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

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

    function updateIssueStatus(uint _issueId, Status _newStatus) public {
        Issue storage issue = issueList[_issueId];

        if (_newStatus == Status.IN_PROGRESS) {
            require(issue.status == Status.ACTIVE, "Status must be ACTIVE to move to IN_PROGRESS");
        } else if (_newStatus == Status.COMPLETE) {
            revert("Use COMPLETE only from IN_PROGRESS status");
        } else if (_newStatus == Status.CLOSED) {
            assert(issue.status == Status.COMPLETE);
        }

        

        issue.status = _newStatus;
    }
}