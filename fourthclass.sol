

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract fourthClass{
    // uint public counter=1;
    // function increment()public{
    //     counter ++;
    // }

    uint public score=5;

    function changeScore(uint newScore)public{
        score=newScore;
    }
  function getScore()public view returns(uint){
     return score;
  }

  function addTwoNumbers(uint a , uint b) public pure returns(uint){
    return a+b;
  }
    
}
