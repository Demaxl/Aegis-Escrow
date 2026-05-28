// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Placeholder {
    uint256 public value;

    function setValue(uint256 newValue) external {
        value = newValue;
    }

    function increment() external {
        value += 1;
    }
}
