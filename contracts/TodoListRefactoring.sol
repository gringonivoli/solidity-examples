// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "./EnumTaskStatus.sol";
import "./StructTask.sol";


contract TodoListRefactoring {

	mapping(address => Task[]) tasks;

	function create(string memory _text) public {
		tasks[msg.sender].push(Task(_text, TaskStatus.ToDo));
	}

	function update(uint _index, string memory _text) public {
		tasks[msg.sender][_index].text = _text;
	}

	function taskCompleted(uint _index) public {
		_updateStatus(_index, TaskStatus.Done);
	}

	function taskInProgress(uint _index) public {
		_updateStatus(_index, TaskStatus.Doing);
	}

	function taskToDo(uint _index) public {
		_updateStatus(_index, TaskStatus.ToDo);
	}

	function _updateStatus(uint _index, TaskStatus _status) internal {
		tasks[msg.sender][_index].status = _status;
	}
}
