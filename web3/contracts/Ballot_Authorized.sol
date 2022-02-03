// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


/** @title Ballot_Authorized
 *  @notice Contract for voting on the chain over authorized, by official contract creator, addresses. Use-Case for non-open polls such as in a parliament.
 */
contract Ballot_Authorized{
    struct vote{
        address voterAddress;
        bool choice;
    }

    struct voter {
        string voterName;
        bool voted;
    }

    address public officialBallotAddress;
    string public officialBallotName;
    string public proposal;
    string public metainfo;

    uint private countResult = 0;
    uint public finalResult = 0;
    uint public totalVoter = 0;
    uint public totalVotes = 0;

    mapping(uint => vote) private votes;
    mapping(address => voter) public voterRegistry;

    enum State { Created, Voting, Ended }
    State public state;

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

    /// @param _state Depending on Created, Voting, Ended state of Contract
    modifier inState(State _state){
        require(state == _state);
        _;
    }

    /// @notice Constructor for Contract
    constructor(string memory _officialBallotName, string memory _proposal, string memory _metainfo){
        officialBallotAddress = msg.sender;
        officialBallotName = _officialBallotName;
        proposal = _proposal;
        metainfo = _metainfo;
        state = State.Created;
    }

    /// @notice Adds address to authorized votees. Required to vote.
    function addVoter(address _voterAddress, string memory _voterName) public inState(State.Created) onlyOfficial{
        voter memory v;
        v.voterName = _voterName;
        v.voted = false;
        voterRegistry[_voterAddress] = v;
        totalVoter+=1; 
    }

    /// @notice Start voting process
    function startVote() public inState(State.Created) onlyOfficial {
        state = State.Voting;
    }

    /// @notice Adds vote to the poll for current address
    function doVote(bool _choice) public inState(State.Voting) returns (bool voted){
        bool found = false;

        if(bytes(voterRegistry[msg.sender].voterName).length != 0 && !voterRegistry[msg.sender].voted){
            voterRegistry[msg.sender].voted = true;
            vote memory v; 
            v.voterAddress = msg.sender;
            v.choice = _choice;     
            if(_choice){
                countResult+=1;
            }      
            votes[totalVotes] = v;
            totalVotes+=1;
            found = true;
        }
        return found;
    }

    /// @notice Terminates voting process. Aggregates results. 
    function endVote() public inState(State.Voting) onlyOfficial {
        state = State.Ended;
        finalResult = countResult;
    }
}