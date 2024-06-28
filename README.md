# mySmart_contract
Introduction

This smart contract, `mySmartContract`, is designed to handle basic financial operations such as depositing and withdrawing Ether. It also includes functions to demonstrate condition checking and assertion in Solidity. The contract is implemented using Solidity 0.8.0 and can be deployed and interacted with using the Remix IDE.

Description

`mySmartContract` provides the following functionalities:

1.Deposit Ether: Allows users to deposit Ether into the contract. The deposited amount must be greater than 0.
2.Withdraw Ether: Allows users to withdraw a specified amount of Ether from the contract. The withdrawal amount must be greater than 0 and less than or equal to the current balance of the contract.
3.Check Condition and Revert: A utility function to check a boolean condition and revert the transaction with a message if the condition is false.
4.Assert Balance: Demonstrates the use of assert to ensure that the contract balance is never negative.

Getting Started


Functions

1.`deposit()`: Deposits Ether into the contract.

function deposit() public payable {
    require(msg.value > 0, "Deposit amount must be greater than 0");
    balance += msg.value;
}

2.`withdraw(uint amount)`: Withdraws the specified amount of Ether from the contract.

function withdraw(uint amount) public {
    require(amount > 0, "Withdrawal amount must be greater than 0");
    require(amount <= balance, "Insufficient balance");
    balance -= amount;
    payable(msg.sender).transfer(amount);
}

3.`checkConditionAndRevert(bool condition)`: Checks a condition and reverts the transaction if the condition is false.

function checkConditionAndRevert(bool condition) public pure {
    if (!condition) {
        revert("Condition is false, reverting transaction");
    }
}

4.demoAssert(): Demonstrates the use of assert to ensure the balance is non-negative.

function demoAssert() public view {
    assert(balance >= 0);
}

Steps to Deploy and Interact Using Remix IDE
Open Remix IDE:

Go to Remix IDE.
Create a New File:

In the Remix file explorer, create a new file named mySmartContract.sol.
Paste the Smart Contract Code:

Copy the following code and paste it into the mySmartContract.sol file:
Compile the Contract:

In the Remix IDE, go to the "Solidity Compiler" tab.
Select the appropriate compiler version (0.8.0 or above).
Click on "Compile mySmartContract.sol".
Deploy the Contract:

Go to the "Deploy & Run Transactions" tab.
Select the environment (e.g., JavaScript VM for testing).
Click on "Deploy" for the mySmartContract contract.
Interact with the Deployed Contract:

Once deployed, the contract's functions will appear in the "Deployed Contracts" section.
You can interact with the functions by inputting the necessary values and clicking the buttons.

Example Transactions

Deposit Ether:

Select the `deposit` function.
Enter an amount of Ether in the "Value" field (e.g., 1 Ether).
Click on transact.

Withdraw Ether:

Select the `withdraw` function.
Enter an amount of Ether to withdraw (e.g., 0.5 Ether).
Click on transact.

Check Condition and Revert:

Select the `checkConditionAndRevert` function.
Enter a boolean value (e.g., false).
Click on transact to see the transaction revert.

Demo Assert:

Select the `demoAssert` function.
Click on call to ensure the balance is non-negative.

Authors

Metacrafter Dipika Tiwari
dipikadeepsikha@gmail.com

License

This project is licensed under the MIT License - see the LICENSE.md file for details

