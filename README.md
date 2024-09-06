# Intermediate-Mod3
# TokenContract

This Solidity smart contract defines an ERC20 token with custom functionality. It includes an admin-only minting feature, token burning, and a transfer function. Below is a summary of its key components and how to use the contract.

## Overview

- **Contract Name:** `TokenContract`
- **Inherits:** `ERC20` from OpenZeppelin
- **Token Name:** Ayush
- **Token Symbol:** AP
- **Decimals:** 3
- **Initial Supply:** 10 tokens

## Contract Features

1. **Admin Control:**
   - The contract restricts minting of new tokens to the admin only.
   - Admin is set during contract deployment.

2. **Minting Tokens:**
   - Admin can mint new tokens to any specified address using `createTokens`.

3. **Burning Tokens:**
   - Any user can burn tokens from their own account using `destroyTokens`.

4. **Token Transfer:**
   - Tokens can be transferred to a specific address using `transferFunds`.

## Functions

### `constructor()`
- Initializes the token with the name "Ayush" and symbol "AP".
- Mints an initial supply of 10 tokens to the deployer of the contract.

### `decimals()`
- Overrides the default ERC20 `decimals` function to return 3.

### `createTokens(address recipient, uint256 amount)`
- **Access:** Only admin.
- Mints `amount` of tokens to `recipient`.

### `destroyTokens(uint256 amount)`
- **Access:** Any user.
- Burns `amount` of tokens from the caller's account.

### `transferFunds(address receiver, uint256 amount)`
- **Access:** Any user.
- Transfers `amount` of tokens to `receiver`.

## Usage

1. **Deploy the Contract:**
   Deploy the contract to the Ethereum network. The deployer will be set as the admin.

2. **Mint Tokens:**
   The admin can call `createTokens` to mint tokens to a specified address.

3. **Burn Tokens:**
   Users can call `destroyTokens` to burn tokens from their own account.

4. **Transfer Tokens:**
   Users can call `transferFunds` to transfer tokens to another address.

