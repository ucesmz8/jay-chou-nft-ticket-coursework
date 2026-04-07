// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract JayChouConcertTicket {
    string public name = "JayChouConcertTicket";
    string public symbol = "JCT";

    uint256 public nextTokenId = 1;

    mapping(uint256 => address) public ownerOf;

    function mint(address to) public {
        ownerOf[nextTokenId] = to;
        nextTokenId++;
    }
}
