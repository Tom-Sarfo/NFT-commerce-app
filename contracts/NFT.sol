// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract NFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    address contractAddress;

    constructor(address _marketPlaceAddress) ERC721 ("Course Toke", "CST") {
        contractAddress = _marketPlaceAddress;
    }

    function createToken (string memory _tokenURI) public returns (uint){
        //1.  Increment token
        _tokenIds.increment();
        //2.  Grab the current token 
        uint newItemId = _tokenIds.current();
        //3.  Mint Token providing parameter(userAddress, newTokenId created)
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, _tokenURI);
        setApprovalForAll(contractAddress, true);
        return newItemId;

    }
}

