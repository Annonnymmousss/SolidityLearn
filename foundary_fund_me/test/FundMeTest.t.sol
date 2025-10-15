// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe ;
    function setUp() external{
        fundMe = new FundMe();
        console.log("vzxvsxvxz");
        
    }
    function testMinimumDollarIsFive()public{
        assertEq(fundMe.MINIMUM_USD(),5e18);
        console.log("vxz");
    }   
}