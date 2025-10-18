🧮 Counter Smart Contract

A simple Solidity smart contract that stores, updates, and retrieves a single number (counter) on the Ethereum blockchain.
This project demonstrates state variables, setters, getters, and view functions in Solidity — perfect for beginners learning how to manage on-chain data.

🚀 Features

Store a single value on-chain

Increment and decrement the counter

Prevent the counter from going below zero

Retrieve (read) the current value using a view function

Set the counter to any custom value

📜 Smart Contract Code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    // State variable to store the count
    uint256 private count;

    // Function to get the current count
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

🧠 Concepts Demonstrated

State Variables: Store data permanently on the blockchain.

Setter Functions: Modify state variables.

Getter Functions: Retrieve stored data.

View Functions: Read-only operations (no gas fees when called externally).

🧩 How It Works

Deploy the contract → initializes count = 0.

Call increment() → increases the count by 1.

Call decrement() → decreases the count by 1 (only if count > 0).

Call getCount() → returns the current counter value.

Call setCount(x) → manually sets a new count value.

🧰 Prerequisites

Solidity ≥ 0.8.0

Remix IDE or Hardhat / Truffle

MetaMask (for testnet/mainnet deployment)

⚡ Deployment (Using Remix)

Open Remix IDE

Create a new file Counter.sol

Paste the contract code above

Compile (Solidity Compiler → click “Compile Counter.sol”)

Deploy (Deploy & Run Transactions → click “Deploy”)

🧾 Deployment Details
contract deploy address: 0xB34ef24B59284CAe1CE44Dfd9D16cb889c8E958C

This project is licensed under the MIT License – feel free to use and modify it.

🌟 Author

Uzma Naznin (Beta)
💡 Beginner-friendly Solidity project for learning blockchain basics.
