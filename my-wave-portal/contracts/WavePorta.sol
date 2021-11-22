// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint) public userWaves;
    address[] public addressIndices;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        userWaves[msg.sender] += 1;
        addressIndices.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getWavesPerSender() public view returns(uint256) {
        uint arrayLength = addressIndices.length;
        for (uint i=0; i<arrayLength; i++) {
            console.log(userWaves[addressIndices[i]]);
        }
        return arrayLength;
    }
}