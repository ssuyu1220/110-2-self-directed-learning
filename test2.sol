pragma solidity ^0.4.25;

contract test{

    address owner;
    string name;
    uint public number;

    constructor () public {
        name="12345568788";
        owner=msg.sender;
        number=0;
    }

    modifier checkaddress(address _address){
        require(_address==owner,"not same.");
        number+=1;
        _;
    } 

    function setname(string _name) public checkaddress(msg.sender) returns(string){
        name=_name;
        return name;
    }

    function getname() public view returns(string){
        return name;
    }

}
