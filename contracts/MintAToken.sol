// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MintAToken is ERC20
{
    string tokenName = "VJToken";
    string tokenSymbol = "VJT";
    uint decimal = 10**decimals();
    uint amount = 1000;

    constructor() ERC20(tokenName, tokenSymbol)
    {
        _mint(msg.sender, amount * decimal);
    }

    
}
