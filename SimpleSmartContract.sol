// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleSmartContract {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
    }

    
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balance += msg.value;
    }

    
    function withdraw(uint256 amount) public onlyOwner {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
        payable(owner).transfer(amount);
    }

   
    function checkBalance() public view returns (string memory) {
        assert(balance >= 0);
        return "Balance is non-negative";
    }

    
    function forceRevert() public pure {
        revert("This function always reverts");
    }
}
