pragma solidity ^0.8.0;

contract RewardPoints {
    mapping(address => uint256) private balances;
    
    function reward(address user, uint256 amount) public {
        balances[user] += amount;
    }
    
    function redeem(address user, uint256 amount) public {
        require(balances[user] >= amount, "Insufficient balance");
        balances[user] -= amount;
    }
    
    function checkBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}
