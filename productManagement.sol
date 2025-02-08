
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;



contract ProductManager{

  string public productName;
  uint public price;
  uint public stock;
  bool public isAvailable;

  function setupProduct(string memory name, uint initialPrice, uint initialStock)public{
    productName=name;
    price=initialPrice;
    stock=initialStock;
    isAvailable=true;

  }

  function purchase(uint quantity) public returns(bool){
    if(stock>=quantity && isAvailable){
        stock=stock-quantity;

        if(stock==0){
            isAvailable=false;
        }
        return true;
    }
    return false;
  }

  function canFullFillOrder(uint Quantity)public view returns(bool){
    return(stock>=Quantity && isAvailable);
  }
 function updatePrice(uint newPrice) public{
    price=newPrice;
 }


}