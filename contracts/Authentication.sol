// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Authentication {

    mapping(address => bool) public authorizedUsers;

    function authorizeUser(address user) public {

        authorizedUsers[user] = true;
    }

    function isAuthorized(address user) public view returns (bool) {
        
        return authorizedUsers[user];
    }
}
