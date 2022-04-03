pragma solidity ^0.4.19;

contract DepositWithdraw{

    address owner;
    address withdrawer;  

    constructor(address withdrawer_arg) public{
        owner = msg.sender;
        withdrawer = withdrawer_arg;
    }

    function deposit() payable public {

    }

    function get_balance()public view returns(uint256){
        return address(this).balance;
    }

    function withdraw() public {
        require(owner == msg.sender || msg.sender == withdrawer);
        msg.sender.transfer(address(this).balance);
    }

}
