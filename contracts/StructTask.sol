// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "./EnumTaskStatus.sol";

struct Task {
	string text;
	TaskStatus status;
}
