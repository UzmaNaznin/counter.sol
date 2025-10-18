// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    // State variable to store the count
    uint256 private count;

    // Function to get the current count (view = read-only)
    function getCount() public view returns (uint256) {
        return count;
    }

    // Function to increment the count
    function increment() public {
        count += 1;
    }

    // Function to decrement the count
    function decrement() public {
        require(count > 0, "Counter cannot go below zero");
        count -= 1;
    }

    // Function to set count to a specific value
    function setCount(uint256 newCount) public {
        count = newCount;
    }
}
