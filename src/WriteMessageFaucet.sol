// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import "src/MessageLib.sol";

// this faucet can set messages
contract WriteMessageFaucet {
    // external function that users can call
    function setMessage( string calldata _msg) external {
        MessageLib.setMessage(_msg);
    }
}