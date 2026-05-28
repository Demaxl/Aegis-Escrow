// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {Placeholder} from "../src/Placeholder.sol";

contract PlaceholderTest is Test {
    Placeholder internal placeholder;

    function setUp() public {
        placeholder = new Placeholder();
    }

    function test_increment() public {
        placeholder.increment();
        assertEq(placeholder.value(), 1);
    }

    function testFuzz_setValue(uint256 x) public {
        placeholder.setValue(x);
        assertEq(placeholder.value(), x);
    }
}
