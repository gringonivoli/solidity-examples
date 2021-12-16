// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract Variables {
	// 1. fixed-size types
	bool isReady;
	uint a;
	address recipient;
	bytes32 data;

	// 2. variable-size types
	string name;
	bytes _data;
	uint[] amounts;
	mapping(uint => string) users;

	// 3. user defined types
	struct User {
		uint id;
		string name;
		uint[] friends;
	}

	enum Color {
		Red,
		Green,
		Blue
	}
}