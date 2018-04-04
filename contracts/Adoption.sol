pragma solidity ^0.4.17; // 指定solidity至少需要的版本

contract Adoption {

    address[16] public adopters;  // 定义领养者的地址 类型和字节长度

    // 领养宠物
    // 函数原理：当有msg.sender发起要领养petId为3的宠物时，则adopters[3]指定为这个msg.sender。
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);  // 确保petId的值在数组长度范围内
        adopters[petId] = msg.sender;        // 保存调用者地址 msg.sender是这个函数的调用者
        return petId; // 最终返回petId进行确认
    }

  // 检索所有领养者情况
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }

}