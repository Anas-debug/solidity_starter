
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Admin {
    uint a;
    uint b;
    uint c;
    uint d;
    address owner;

    constructor(){
        admin = msg.sender
    }
    modifier onlyAdmin{
        require(admin == msg.sender, 'only admin');
    }
        function set (uint _a, uint _b, uint _c, uint _d) public onlyOwner{
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }
     function get() public view onlyAdmin returns(uint){
        if ((a > b) && (a > c) && (a > d)){
        return(a);
        }
        else if ((b >c ) && (b > d) && (b > a)){
            return(b);
        }
        else if ((c > d) && (c > a) && (c > b)){
            return(c);
        }
        else {
            return(d);
        }
    }
}
