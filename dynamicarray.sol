
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract dynamicArray{

    uint[] public dynamicArry;
    function addElement(uint _element)public{
        dynamicArry.push(_element);
    }

}