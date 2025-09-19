// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    string public name = "Test Token";
    string public symbol = "TEST";
    uint8 public decimals = 18;
    uint256 public totalSupply = 100000 * (10 ** uint256(decimals));

    mapping(address => uint256) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }
}
