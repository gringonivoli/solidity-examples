// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract FunctionModifier {
    // We will use these variables to demonstrate how to use
    // modifiers.
    address public owner;
    bool hasPermission;

    constructor() {
        // Set the transaction sender as the owner of the contract.
        owner = msg.sender;
    }

    function changePermission() external {
        require(msg.sender == owner, "Not owner");
        hasPermission = true;
    }

    // Modifier to check that the caller is the owner of the contract.
    // modifier onlyOwner() {
    //     require(msg.sender == owner, "Not owner");
    //     // Underscore is a special character only used inside
    //     // a function modifier and it tells Solidity to
    //     // execute the rest of the code.
    //     _;
    // }

}
