// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19; //this is solidity version

contract SimpleStorage {
    //by default variable declaration is internal
    // if u have to store smtg which is visible outside the contract u should make it public
    uint256 public FavouriteNumber; //0,   automatically a storage variable as outside the function but inside a contract

    uint256[] listofFavouriteNumber; //list 
    function store(uint256 _FavouriteNumber)public { //every smart contract has its own unique address
        FavouriteNumber = _FavouriteNumber;
    }

    struct Person{
        uint256 number;


        string name;
    }


    Person public pat = Person({
        number : 7 ,
        name : annonnymmousss
    });

    Person public pat1 = Person({
        number : 8 ,
        name : annonnymmousss1
    });

    //other than declaring thing again and again u can use dynamic list of your custtom datatype

    Person[/*size*/] public listOfPerson;
    //view,pure
    function retrieve() public view returns (uint256) {     //it can only return smtg which is to view only u cannot add changes or edit things in it 
        return FavouriteNumber;
    }


    //memomry, storage, calldata

    //memory and calldata both are temporary but memory is mutable but calldata isnt
    function addPerson(string memory _name , uint256 memory _number) public {
        listOfPerson.push(Person(_number , _name));
    }
}