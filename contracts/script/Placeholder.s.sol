// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {Placeholder} from "../src/Placeholder.sol";

contract PlaceholderScript is Script {
    function run() public {
        vm.startBroadcast();
        new Placeholder();
        vm.stopBroadcast();
    }
}
