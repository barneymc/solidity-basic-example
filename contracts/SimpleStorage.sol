pragma solidity >=0.4.21 <0.6.0;

//Barneymc added this comment here, to force recompile for TK version


contract SimpleStorage {
  address public owner;
  uint public amount;

  constructor() public {
    owner = msg.sender;
  }

  function store(uint _amount) public {
    require(msg.sender==owner, "Only contract Owner can modify amount");
    amount = _amount;
  }

  function get() public view returns(uint){
    return amount;
  }
}
