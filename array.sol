
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


 contract GradeCalculator{

    function calculatorMarks(uint bang, uint eng, uint math) public pure returns(uint){
        return (bang+eng+math)/3;
    }

    function checkedPassed(uint avarage, uint attendaceDays) public pure returns(bool){
      return(avarage>=60 && attendaceDays>=20);
    }
 }