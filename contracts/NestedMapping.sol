// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract NestedMapping {

	mapping(address => mapping(uint => bool)) private nested;

	function set(uint _i, bool _value) public {
		nested[msg.sender][_i] = _value;
	}

	function get(uint _i) public view returns (bool) {
		return nested[msg.sender][_i];
	}
}
