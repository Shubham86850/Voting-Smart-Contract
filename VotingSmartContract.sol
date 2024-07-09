// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    address public owner;
    bool public votingEnded;
    mapping(address => bool) public hasVoted;
    mapping(string => uint256) public votes;
    string[] public candidates;
    string public winner;

    event VoteCast(address indexed voter, string candidate);
    event VotingEnded(string winner);

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    modifier votingActive() {
        require(!votingEnded, "Voting has ended");
        _;
    }

    constructor(string[] memory _candidates) {
        owner = msg.sender;
        candidates = _candidates;
    }

    function vote(string memory _candidate) public votingActive {
        require(!hasVoted[msg.sender], "You have already voted");
        bool validCandidate = false;

        for (uint i = 0; i < candidates.length; i++) {
            if (keccak256(abi.encodePacked(candidates[i])) == keccak256(abi.encodePacked(_candidate))) {
                validCandidate = true;
                break;
            }
        }

        require(validCandidate, "Invalid candidate");
        hasVoted[msg.sender] = true;
        votes[_candidate]++;
        emit VoteCast(msg.sender, _candidate);
    }

    function endVoting() public onlyOwner votingActive {
        votingEnded = true;
        uint256 highestVotes = 0;

        for (uint i = 0; i < candidates.length; i++) {
            if (votes[candidates[i]] > highestVotes) {
                highestVotes = votes[candidates[i]];
                winner = candidates[i];
            }
        }

        assert(bytes(winner).length > 0);
        emit VotingEnded(winner);
    }

    function resetVoting() public onlyOwner {
        if (!votingEnded) {
            revert("Voting is still active");
        }

        for (uint i = 0; i < candidates.length; i++) {
            votes[candidates[i]] = 0;
        }

        votingEnded = false;
        winner = "";
    }
}
