// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenContract is ERC20 {
    
    address private _admin;

    // Restrict access to certain functions to the contract admin
    modifier onlyAdmin() {
        require(msg.sender == _admin, "Access denied");
        _;
    }

    // Initialize the token with a name, symbol, and initial supply
    constructor() ERC20("Ayush", "AP") {
        _admin = msg.sender;
        _mint(_admin, 10 * 10 ** decimals());
    }

    // Override the decimals function to return 3
    function decimals() public pure override returns (uint8) {
        return 3;
    }

    // Mint new tokens to a specified address, accessible only by the admin
    function createTokens(address recipient, uint256 amount) external onlyAdmin {
        _mint(recipient, amount);
    }

    // Burn a specified amount of tokens from the sender's account
    function destroyTokens(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Transfer tokens to a specific address
    function transferFunds(address receiver, uint256 amount) external returns (bool) {
        return transfer(receiver, amount);
    }
}
