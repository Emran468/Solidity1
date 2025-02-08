

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifier{
  string public myName="Emran";
  string public contractName="modifier";

  address public owner;

  constructor(){
    owner=msg.sender;
  }

  modifier onlyOwner{
     
          require(msg.sender==owner ,"This function call only owner");
          _; //placeholder
  }

  function changeName(string memory newName) public onlyOwner {

      myName = newName;
  }

  function contractNameChange(string memory contractchange) public{
   
       require(msg.sender==owner ,"This function call only owner");
       contractName = contractchange;

  }

}