
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract Struct{
    //struct=~object
    struct User{
        string name;
        uint points;
        bool isRegistered;
    }

    mapping(address=>User) public users;

    event UserRegistered(address userAddress,string name, uint timestamp );
    event PointsEarned(address user, uint points, string activity);

    function registeredUser(string memory _name) public{
        require(! users[msg.sender].isRegistered, "user allready registered");
    users[msg.sender]=User(_name, 0, true);


    emit UserRegistered(msg.sender, _name, block.timestamp);

    }

    function earnPoints(uint _points, string memory _activity) public{

        require(users[msg.sender].isRegistered,"Uder not regitered");
       users[msg.sender].points += _points;

       emit PointsEarned(msg.sender, _points, _activity);
    }
}