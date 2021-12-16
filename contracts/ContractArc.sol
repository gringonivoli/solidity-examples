// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/access/Ownable.sol";

// interfaces

library SafeMath {
    function add(uint x, uint y) internal pure returns (uint) {
        uint z = x + y;
        require(z >= x, "uint overflow");

        return z;
    }
}

library MyLib {
    function superFunction() internal pure returns (uint) {
        return 7;
    }
}


/// @author The Solidity Team
/// @title A simple storage example
contract ContractArc is Ownable {

	using SafeMath for uint;

	struct User {
		address user;
		string name;
	}

	event Log(address indexed sender, string message);

	function testLog() public {
		emit Log(msg.sender, 'this is a test..');
	}

    /// @dev retrieves safe added value
	/// @param x number
	/// @param y number
    /// @return the safe value
	function testSafeMath(uint x, uint y) public pure returns (uint) {
		return x.add(y);
	}

	/// Return a magic value.
    /// @dev retrieves the value of MyLib
    /// @return the stored value
	function testMyLib() public pure returns (uint) {
		return MyLib.superFunction();
	}

// NatSpec
// @title	A title that describes the contract	contract, interface
// @author	The name of the author	contract, interface, function
// @notice	Explanation of functionality	contract, interface, function
// @dev	Any extra details	contract, interface, function
// @param	Parameter type followed by parameter name	function
// @return	The return value of a contract’s function	function