// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import "src/WriteMessageFaucet.sol";

// this faucet can read the messages that were
// previously set with the ReadMessageFaucet.sol contract
contract ReadMessageFaucet {
    // returns value from getMessage function
    function getMessage() external view returns (string memory) {
        return MessageLib.getMessage();
    }
}
