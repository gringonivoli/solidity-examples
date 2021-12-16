// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract StorageMemory {
    int256[] public numbers;

    function memoryNumbers() public {
        numbers.push(1);
        numbers.push(2);

        int256[] memory myArray = numbers;

        myArray[0] = 0;
    }

    function storageNumbers() public {
        numbers.push(1);
        numbers.push(2);

        int256[] storage myArray = numbers;

        myArray[0] = 0;
    }
}
