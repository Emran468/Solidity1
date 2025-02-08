
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract SimpleBank{
  
 uint public  balance=0;

 function deposite(uint amount) public{
     balance= balance+amount;
 }

function withdraw(uint amounttt)public{

    require(amounttt<=balance,"amount must be greater than or equel to balance");
    balance=balance-amounttt;

}
 function checkbalance()public view returns(uint){
    return balance;
 }

}