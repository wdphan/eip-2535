// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

// added new faucet that allows user to send and retriece messages
// set as library so that both faucets know how to retrieve and store data
// done to share functions and storage
library MessageLib {
    // used to reference a slot in storage and start storing things there
    bytes32 internal constant NAMESPACE = keccak256("message.faucet");
    // create layout for storage for this faucet
    struct Storage {
        string message;
    }

    function getStorage() internal pure returns (Storage storage s) {
        bytes32 position = NAMESPACE;
        assembly {
            s.slot := position
        }
    }

    // set message with storage just created
    // internal function, so when we create new faucets,
    // we import the library
    function setMessage(string calldata _msg) internal {
        Storage storage s = getStorage();
        s.message = _msg;
    }

    // retrieve the message from Storage and return it
    function getMessage() internal view returns (string memory) {
        return getStorage().message;
    }
}