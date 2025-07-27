// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19; //this is solidity version

contract SimpleStorage {
    uint256 FavouriteNumber;
    function store(uint256 _FavouriteNumber)public {
        FavouriteNumber = _FavouriteNumber;
    }
}