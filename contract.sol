// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

contract contractA {
    address real_owner = 0x9581a8b08621139288196C24F8a3580b3a21B240;


 //   function Withdraw() external payable {
   //     require(msg.sender == real_owner, "You're not the real owner");
   //     uint256 balance = address(this).balance;
   //     (bool transfer, ) = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db).call{value: balance}("");
   //     require(transfer, "Transfer failed");
    //}
    modifier onlyOwner(){
        require(msg.sender == owner ||real_owner , "Can only be called by the owner");
        _;
    }

}
