// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract CodeErrorHandler {
    uint256 public counter;

    function usingRequireStatement(uint256 _number) external {
        require(_number > 0, "Number must be greater than zero");

        counter = _number;
    }

    function usingAssertStatement(uint256 _number) external {
        assert(_number != 42);

        counter = _number;
    }

    function usingRevertStatement(uint256 _number) external {
        if (_number == 99) {
            revert("Unsafe input, reverting transaction");
        }

        counter = _number;
    }
}
