// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mySmartContract {
    uint public balance;

    // Function to deposit Ether into the contract
    function deposit() public payable {
        // Ensure the deposit amount is greater than 0
        require(msg.value > 0, "Deposit amount must be greater than 0");
        balance += msg.value;
    }

    // Function to withdraw Ether from the contract
    function withdraw(uint amount) public {
        // Ensure the withdrawal amount is greater than 0 and less than or equal to the balance
        require(amount > 0, "Withdrawal amount must be greater than 0");
        require(amount <= balance, "Insufficient balance");

        // Performing withdrawal
        balance -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Function to check a condition and revert if false
    function checkConditionAndRevert(bool condition) public pure {
        if (!condition) {
            revert("Condition is false, reverting transaction");
        }
    }

    
    function demoAssert() public view {
        // Ensure the balance is never negative (this should always be true)
        assert(balance >= 0);
    }
}

