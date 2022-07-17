// SPDX-License-Identifier: Unlicensed

//This is the version of Solidity I'm using
pragma solidity ^0.8.0;


// Importing ERC20 Contract from OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// contract x { ... }
contract Digicoin is ERC20 {

    // We also want to call the constructor present
    // inside ERC20
    // constructor is in deploy and run(remix)
    constructor(string memory _name, string memory _symbol)
    ERC20(_name, _symbol)
    {
        // Get some tokens for ourselves
        //msg.sender is the person deploying the contract

        // USD
        // 1.29$ = 129 (cents)
        // 1.39$ =
        // wei > gwei > eth
        _mint(msg.sender, 200000 * (10 ** 18));
    }
}
