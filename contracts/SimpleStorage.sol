// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract SimpleStorage {
  uint256 public favoriteNumber;

  event storeNumber(
    uint256 indexed oldNumber,
    uint256 indexed newNumber,
    uint addedNumber,
    address sender
  );

  function store(uint256 _newFavoriteNumber) public {
    emit storeNumber(
      favoriteNumber,
      _newFavoriteNumber,
      favoriteNumber + _newFavoriteNumber,
      msg.sender
    );
    favoriteNumber = _newFavoriteNumber;
  }
}
