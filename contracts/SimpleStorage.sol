// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract SimpleStorage{
    uint256 public favoriteNumber;

    function store(uint256 _newFavoriteNumber) public {
        favoriteNumber = _newFavoriteNumber;
    }
}