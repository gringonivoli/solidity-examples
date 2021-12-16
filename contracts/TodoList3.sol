// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract TodoList3 {

	enum TaskStatus {
		ToDo,
		Doing,
		Done
	}

	struct Task {
		string text;
		TaskStatus status;
	}

	mapping(address => Task[]) tasks;

	function create(string memory _text) public {
		// 1
		tasks[msg.sender].push(Task(_text, TaskStatus.ToDo));

		// 2
		// tasks.push(Task({text: _text, status: TaskStatus.ToDo}));

		// // 3
		// Task memory task;
		// task.text = _text;
		// task.status = TaskStatus.ToDo;
		// tasks.push(task); 
	}

	function update(uint _index, string memory _text) public {
		// 1
		Task storage task = tasks[msg.sender][_index];
		task.text = _text;

		// 2
		// tasks[msg.sender][_index].text = _text;
	}

	function taskCompleted(uint _index) public {
		// 1 
		Task storage task = tasks[msg.sender][_index];
		task.status = TaskStatus.Done;
		
		// 2
		// tasks[msg.sender][_index].status = TaskStatus.Done;
	}

	function taskInProgress(uint _index) public {
		tasks[msg.sender][_index].status = TaskStatus.Doing;
	}

	function taskToDo(uint _index) public {
		tasks[msg.sender][_index].status = TaskStatus.ToDo;
	}
}
