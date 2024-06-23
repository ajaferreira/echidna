// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts@v4.9.6/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@v4.9.6/access/Ownable.sol";

contract Echidna is ERC20, Ownable {
    constructor() ERC20("Echidna", "ECH") {
        _mint(msg.sender, 10000000 * (10 ** uint256(decimals())));
    }

    function burn(uint256 amount) public onlyOwner {
        _burn(msg.sender, amount);
    }
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}