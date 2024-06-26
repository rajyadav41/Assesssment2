// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken {

    string public name; 
    string public symbol;
    uint256 public totalSupply; 

    mapping(address => uint256) public balances; 

    // Mint function to create new tokens and assign to an address
    function mint(address recipient, uint256 amount) public {
        totalSupply += amount; 
        balances[recipient] += amount; 
    }
    // Burn function to destroy tokens from a specific address
    function burn(address owner, uint256 amount) public {
        require(balances[owner] >= amount, "Insufficient balance"); 
        totalSupply -= amount; 
        balances[owner] -= amount; 
    }
}