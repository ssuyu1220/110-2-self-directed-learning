pragma solidity ^0.4.25;
contract test{
    string name;
    address owner;
    constructor () public{
        name="none";
        owner=msg.sender;
    }
    function SetName(string _name) public returns (string){
        if (msg.sender==owner){
            name=_name;
        }
        else{
            revert("Permission denied.");
        }
        return name;
    }

    function GetName() public view returns (string){
        return name;
    }

}
