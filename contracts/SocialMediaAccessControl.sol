// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import './NFTFactory.sol';

contract SocialMediaAccessControl is AccessControl {

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    bytes32 public constant MODERATOR_ROLE = keccak256("MODERATOR_ROLE");


    constructor() {

        _setupRole(ADMIN_ROLE, msg.sender);

        _setupRole(MODERATOR_ROLE, msg.sender);
    }

    modifier onlyAdmin() {
        require(hasRole(ADMIN_ROLE, msg.sender), "Caller is not an admin");
        _;
    }

    modifier onlyModerator() {
        require(hasRole(MODERATOR_ROLE, msg.sender), "Caller is not a moderator");
        _;
    }
}
