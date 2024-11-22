// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract OnlineBanking {
    address private user;
    uint256 private constant MAX_BALANCE = 500;
    uint256 private on_memory_balance = 0;
    mapping(address => uint256) private balances;

    constructor() {
        user = msg.sender;
    }

    modifier currentUser() {
        require(user == msg.sender, "Only authorized user can access this!");
        _;
    }

    function deposit(uint16 amount) public currentUser {
        if (balances[msg.sender] + amount > MAX_BALANCE) {
            revert("Your account balance hit the max limit.");
        }
        require(amount > 0, "Deposit value must be greater than 0");
        balances[msg.sender] += amount;
        on_memory_balance += amount;
        assert(balances[msg.sender] == on_memory_balance);
    }

    function withdraw(uint256 amount) public currentUser {
        require(amount <= balances[msg.sender] , "Insufficient balance");
        balances[msg.sender] -= amount;
        on_memory_balance -= amount;
        assert(balances[msg.sender] == on_memory_balance);
    }

    function checkBalance() public view currentUser returns (uint256) {
        return balances[msg.sender];
    }

    function resetMyBalance() public currentUser {
        on_memory_balance = 0;
        balances[msg.sender]  = 0;
    }
}
