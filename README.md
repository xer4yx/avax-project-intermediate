# OnlineBanking - AVAX Intermediate Project

A smart contract using Solidity as language for simple bank transaction with error handling implementations of `assert`, `require`, `revert` statements.

## Description

`OnlineBanking` smart contract simulates a basic banking system where a single authorized user can perform deposit, withdraw, check balance, and reset balance.

## Getting Started

### Requirements
- Use Remix IDE or any Solidity-supported IDE to deploy and interact with the contract.

### How to run the program?

1. Compile the program using version `0.8.26` and above then deploy.
2. Click `deposit` function to deposit a value to the user balance.
3. Click `withdraw` function to withdraw an amount to the user balance.
4. Click `checkBalance` function to view the user's balance.
5. Click `resetMyBalance` function to reset the user balance to 0

NOTE: The transactions are only for the address that is being use and cannot be tampered by other address

## Error Handling

This contract incorporates `require`, `assert`, and `revert` statements to safeguard against invalid transactions:

- `assert`: Used to ensure that the account balance matches the value from the memory.
- `require`: Check if the amount input by the user is greater than 0, and if the amount to be withdrawn is less or equal to user's balance.
- `revert`: Used to prevent transactions that would exceed the user's balance.

## Help

For troubleshooting, check Remix IDE for compilation errors, runtime issues, or gas limit problems.

## License

This project is licensed under the MIT License.
