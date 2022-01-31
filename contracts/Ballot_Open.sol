// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract Ballot_Open{

    struct vote{
        address voterAddress;
        bool choice;
    }

    mapping(address => vote) private votes;

    address public officialBallotAddress;
    string public officialBallotName;
    string public proposal;
    string public metainfo;
    uint public timeStart;
    uint public timeEnd;

    uint public countPro = 0;
    uint public totalVotes = 0;

    /// @param _condition Any condition accepted; Development purposes only
    modifier condition(bool _condition){
        require(_condition);
        _;
    }

    /// @dev Requirement for official Address
    modifier onlyOfficial(){
        require(msg.sender == officialBallotAddress);
        _;
    }

    /// @param _voter address running interaction
    /// @notice Checks if address has not voted.
    modifier hasNotVoted(address _voter){
        require(votes[msg.sender].voterAddress == address(0));
        _;
    }

    modifier validVotingTime(uint _blockTime){
        require(_blockTime < timeEnd);
        _;
    }

    /// @notice Constructor for Contract
    constructor(string memory _officialBallotName, string memory _proposal, string memory _metainfo, uint _votingDays){
        officialBallotAddress = msg.sender;
        officialBallotName = _officialBallotName;
        proposal = _proposal;
        metainfo = _metainfo;
        timeStart = block.timestamp;
        timeEnd = timeStart + (_votingDays * 1 days);
    }

    /// @notice Adds vote to pool
    function addVote(bool _choice) public validVotingTime(block.timestamp) hasNotVoted(msg.sender){
        vote memory v;
        v.voterAddress = msg.sender;
        v.choice = _choice;
        votes[msg.sender] = v;

        if(_choice){ countPro += 1; }
        totalVotes += 1;
    }

    /// @notice Reduces Votingtime. For development purposes
    function reduceEndTime() public onlyOfficial{
        timeEnd -= (30 * 1 days);
    }

}