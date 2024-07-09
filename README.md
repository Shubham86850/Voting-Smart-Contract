<h1> Voting Smart Contract </h1>


<h2> Overview </h2>


This smart contract implements a basic voting system where users can vote for predefined candidates. The contract is managed by an owner who has special permissions to end and reset the voting. This contract is written in Solidity and designed to be deployed on the Ethereum blockchain.

<h2> Features </h2>

• Users can vote for candidates

• Prevents double voting

• Owner can end the voting and determine the winner

• Owner can reset the voting for a new session

<h2> Getting Started </h2>

<h3> Prerequisites </h3>

• [Remix IDE](https://remix.ethereum.org/)

• An Ethereum wallet (e.g., MetaMask) for deploying the contract

<h3> Deployment </h3>

• Open [Remix IDE](https://remix.ethereum.org/)

• Create a new file and paste the smart contract code into it.

• Compile the contract using the Solidity compiler.

• Deploy the contract by selecting the Voting contract and providing the list of candidates as an array of strings in the constructor argument (e.g., ["C1", "C2", "C3"]).

<h3> Interacting with the Contract </h3>

<h4> Functions </h4>

**1. Vote**

• Function: vote(string memory _candidate)

• Description: Casts a vote for a candidate.

• Usage: Enter the candidate's name in the _candidate field and click "transact".

**2. End Voting**

• Function: endVoting()

• Description: Ends the voting and determines the winner. Can only be called by the owner.

• Usage: Click "transact" to end the voting.

**3. Reset Voting**

• Function: resetVoting()

• Description: Resets the voting for a new session. Can only be called by the owner.

• Usage: Click "transact" to reset the voting.

**4. Check Winner**

• Function: winner()

• Description: Returns the name of the winning candidate.

• Usage: Click the blue button next to winner to view the winner.

<h3> Sample Interaction Sequence </h3>

**1. Deploy the Contract**

• Use the constructor to deploy the contract with a list of candidates (e.g., ["C1", "C2", "C3"]).

**2. User1 Votes for C1**

• Select the first account from the "Account" dropdown.

• Call the vote function with "C1".

**3. User2 Votes for C2**

• Select the second account from the dropdown.

• Call the vote function with "C2".

**4. User3 Votes for C3**

• Select the third account from the dropdown.

• Call the vote function with "C3".

**5. End Voting**

• Switch back to the owner account.

• Call the endVoting function.

**6. Check the Winner**

• Call the winner function to see the winner.

**7. Reset Voting (Optional)**

• Call the resetVoting function to reset the voting for a new session.

<h2> License </h2>

This project is licensed under the MIT License

<h2> Acknowldegements </h2> 

• [OpenZeppelin](https://www.openzeppelin.com/) for their Solidity libraries.


