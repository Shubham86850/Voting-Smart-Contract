# Simple-Smart-Contract

**Overview**

The SimpleSmartContract is a basic Solidity contract for managing deposits and withdrawals. It includes owner-only withdrawal functionality and balance safeguards.


**Features**

**Owner Management:** Only the owner can withdraw funds.

**Deposit:** Allows anyone to deposit funds.

**Withdraw:** Owner-only withdrawal functionality.

**Balance Check:** Ensures the balance is non-negative.

**Force Revert:** A function that always reverts.


**Functions**

**Constructor**
constructor(): Sets the contract deployer as the owner.

**Deposit**
deposit(): Allows anyone to deposit funds.

**Withdraw**
withdraw(uint256 amount): Allows the owner to withdraw funds.

**Check Balance**
checkBalance(): Ensures the balance is non-negative.

**Force Revert**
forceRevert(): Always reverts when called.
