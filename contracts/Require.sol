// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Require {

    function isOne(uint i) public pure returns (uint) {
        require(i == 1, "Not one");
		return i;
    }
}
