pragma solidity ^0.4.11;

import "truffle/Assert.sol"; //truffle公共的库
import "truffle/DeployedAddresses.sol"; //truffle公共的库
import "../contracts/Adoption.sol";

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption()); //实例化Adoption为adoption

    // 测试 adopt()
    function testUserCanAdoptPet() {
        uint returnedId = adoption.adopt(8); // 调用adoption合约实例中的adopt函数，输入参数8，获取返回值

        uint expected = 8; //设置期望的结果

        Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorded."); //判断如果不等则抛出异常
    }

    // 单个测试
    function testGetAdopterAddressByPetId() {
        // Expected owner is this contract
        address expected = this;

        address adopter = adoption.adopters(8);

        Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");
    }

    // 所有的测试
    function testGetAdopterAddressByPetIdInArray() {

        address expected = this;
        
        // Store adopters in memory rather than contract's storage        
        address[16] memory adopters = adoption.getAdopters();

        Assert.equal(adopters[8], expected, "Owner of pet ID 8 should be recorded.");
    }


}