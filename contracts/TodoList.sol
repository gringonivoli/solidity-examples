// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract TodoList {

	struct Task {
		string text;
		bool completed;
	}

	Task[] public tasks;

	function create(string memory _text) public {
		// 1
		tasks.push(Task(_text, false));

		// 2
		// tasks.push(Task({text: _text, completed: false}));

		// // 3
		// Task memory task;
		// task.text = _text;
		// task.completed = false;
		// tasks.push(task); 
	}

	function update(uint _index, string memory _text) public {
		// 1
		Task storage task = tasks[_index];
		task.text = _text;

		// 2
		// tasks[_index].text = _text;
	}

	function toggleCompleted(uint _index) public {
		// 1 
		Task storage task = tasks[_index];
		task.completed = !task.completed;
		
		// 2
		// tasks[_index].completed = !tasks[_index].completed;
	}
}
