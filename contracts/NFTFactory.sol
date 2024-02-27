// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFTFactory is ERC721URIStorage {

    uint256 public tokenCounter;

    constructor(string memory name, string memory symbol) ERC721(name, symbol) {
        
        tokenCounter =  0;
    }

    function createNFT(string memory tokenURI) public returns (uint256) {

        uint256 newNFTId = tokenCounter;

        _safeMint(msg.sender, newNFTId);

        _setTokenURI(newNFTId, tokenURI);

        tokenCounter = tokenCounter +  1;

        return newNFTId;
    }
}
