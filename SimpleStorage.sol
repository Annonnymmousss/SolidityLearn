// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19; //this is solidity version

contract SimpleStorage {
    //by default variable declaration is internal
    // if u have to store smtg which is visible outside the contract u should make it public
    uint256 public FavouriteNumber; //0
    function store(uint256 _FavouriteNumber)public { //every smart contract has its own unique address
        FavouriteNumber = _FavouriteNumber;
    }
}