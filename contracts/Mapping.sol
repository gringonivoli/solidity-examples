// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract Mapping {

	mapping(address => uint) public balances;

	function sendMagicMoney(uint _amount, address _to) public {
		balances[_to] = _amount;
	}

	function balance(address _from) public view returns (uint) {
		return balances[_from];
	}
}
