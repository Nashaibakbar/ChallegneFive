pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";


contract ChallengeFive is Ownable {
    
    uint _FixedTime;
    
    
    
    constructor() public{
        
        _FixedTime=1605830400; //  Unix Timestamp 11/20/2020 @ 12:00am (UTC) is 1605830400
    }
    
    function sendEther() payable public{
        // Receive Ether
    }
    
    function WithdrawEther(uint _amount,address payable _address) onlyOwner public {
        if(now >=_FixedTime){// this will check Timestamp if time is equal or greater than to our fixed time than withdraw will work otherwise not able to withdraw ether 
        // Means withdraw is locked for time period 
            _address.transfer(_amount);
        }
        else
        {revert();}
        
    
    }
    
}
