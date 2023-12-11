# CodeErrorHandler Documentation

## Author

- [Samson Ajulor](https://github.com/samsonajulor)

1. [Overview](#overview)
2. [Contract Details](#contract-details)
   - 2.1 [License](#license)
   - 2.2 [Solidity Version](#solidity-version)
3. [State Variables](#state-variables)
   - 3.1 [`counter`](#counter)
4. [Functions](#functions)
   - 4.1 [`usingRequireStatement`](#usingrequirestatement)
   - 4.2 [`usingAssertStatement`](#usingassertstatement)
   - 4.3 [`usingRevertStatement`](#usingrevertstatement)
5. [Usage](#usage)
6. [Examples](#examples)
   - 6.1 [Set Counter using Require Statement](#set-counter-using-require-statement)
   - 6.2 [Set Counter using Assert Statement](#set-counter-using-assert-statement)
   - 6.3 [Set Counter using Revert Statement](#set-counter-using-revert-statement)
7. [Considerations](#considerations)
8. [Conclusion](#conclusion)

## Overview

The `CodeErrorHandler` smart contract is designed to demonstrate the use of error handling statements in Solidity, specifically `require()`, `assert()`, and `revert()`. These statements are crucial for enforcing conditions, ensuring internal consistency, and handling exceptional cases within smart contracts.

## Contract Details

### License

This smart contract is released under the UNLICENSED license.

### Solidity Version

The contract is written in Solidity version 0.8.17.

## State Variables

### `counter`

- **Type**: `uint256`
- **Visibility**: `public`
- **Description**: Tracks the current value of the counter.

## Functions

### `usingRequireStatement`

```solidity
function usingRequireStatement(uint256 _number) external
```

- **Description**: Sets the `counter` value based on the provided input, but only if the input is greater than zero.
- **Parameters**:
  - `_number`: Input value to set the `counter`.
- **Error Handling**:
  - Uses `require()` to ensure `_number` is greater than zero.

### `usingAssertStatement`

```solidity
function usingAssertStatement(uint256 _number) external
```

- **Description**: Sets the `counter` value based on the provided input, without any conditions. Demonstrates the use of `assert()` for internal consistency checks.
- **Parameters**:
  - `_number`: Input value to set the `counter`.
- **Error Handling**:
  - Uses `assert()` to ensure `_number` is not equal to 42.

### `usingRevertStatement`

```solidity
function usingRevertStatement(uint256 _number) external
```

- **Description**: Sets the `counter` value based on the provided input, but reverts the transaction if the input is equal to 99. Demonstrates the use of `revert()` for explicit transaction reversal.
- **Parameters**:
  - `_number`: Input value to set the `counter`.
- **Error Handling**:
  - Uses `revert()` to explicitly revert the transaction if `_number` is equal to 99.

## Usage

To interact with this contract, deploy it on an Ethereum-compatible blockchain, and then call the functions `usingRequireStatement`, `usingAssertStatement`, and `usingRevertStatement` with appropriate parameters.

## Examples

### Set Counter using Require Statement

```javascript
// Assuming contractInstance is an instance of CodeErrorHandler
contractInstance.usingRequireStatement(5);
```

### Set Counter using Assert Statement

```javascript
// Assuming contractInstance is an instance of CodeErrorHandler
contractInstance.usingAssertStatement(10);
```

### Set Counter using Revert Statement

```javascript
// Assuming contractInstance is an instance of CodeErrorHandler
contractInstance.usingRevertStatement(50);
```

## Considerations

- Always provide valid inputs to functions to ensure proper execution.
- Understand the implications of using `assert()` and `revert()` carefully, as these can have different effects on gas consumption and state changes.

## Conclusion

The `CodeErrorHandler` contract provides a clear example of error handling in Solidity using require, assert and revert statements.
