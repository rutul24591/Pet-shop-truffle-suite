// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract Adoption {
    address[16] public adopters;

    // Function cannot be declared as pure because this expression (potentially) modifies the state.
    // Function cannot be declared as view because this expression (potentially) modifies the state.
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

    // `memory` gives the data location for the variable. 
    // The `view` keyword in the function declaration means that the function will not modify the state of the contract.
    function getAdopters() public view returns (address[16] memory){
        return adopters;
    }
}