
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{
     //SYNTAX
     //mapping(keytype =>valuetype) public MappingName;


     mapping(address => uint) public  balances;

     function updateBalance(uint _amount) public{
      balances[msg.sender]= _amount;
     }

   
}