


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ThirdClass{
  
  //  uint public num1=20;

  //  function addition(uint num2) public{
  //   //  num1 = num1+num2;
  //    num1+=num2;
  //  }
  //  function sustraction(uint num3)public{

  //   require(num1>=num3,"First number must be less than or equel to num3");
  //   num1-=num3;

  //  }
  //  function multyply(uint num4) public{
  //    num1*=num4;
  //  }

  //  function divided(uint num5) public{
  //   require(num5>0);
  //   num1=num1/num5;

  //  }

  // uint public age1=20;
  // uint public age2=31;

  // function age3(uint age) public view returns(bool){
  //   return age>age1;
  // }
  //   function age4(uint age) public view returns(bool){
  //   return age>age2;
  // }

//   function checkdoublecondition(uint age) public view returns(bool){
//     return age>age1 && age<age2;
//   }

//   function ageCheker(uint age) public pure returns(string memory){
//   if(age<13){
//  return " You are teenager";
//   }
//   else if(age<18 && age>13){
//  return " you are young";
//   }
//   else{
//  return "you are old";
//   }
  // }

  mapping (address=>uint)public marks;
  function addMarks(uint mark)  public {
    require(mark<=100,"your mark musr be less than or equel to 100");
    marks[msg.sender]=mark;
  }

  function getGrade() public view returns(string memory){

    uint mark=marks[msg.sender];

    if(mark>80){
      return "you have A+";
    }
    else if(mark>70){
       return "A";
    }
     else if(mark>60){
       return "A-";
    }
    else{
      return "You ar failed";
    }

  }
  function hasPassed() public view returns(bool){
     return marks[msg.sender]>60;
  }

 function marksNeedeToNextGrade() public view returns(uint){
  uint mark = marks[msg.sender];
  
  if(mark>80) return 0;
  if(mark>70) return 80 - mark;
  if(mark>60) return 70 - mark;

  return 60 - mark;
 
 }


}