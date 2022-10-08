// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

library StorageLib {
    // Storage, stores data and defines storage layout in a struct
    bytes internal constant NAMESPACE = keccak256("storage.lib");
    struct Storage {
        string message;
    }

    // Fetch Storage, retrieves data/storage from specific NAMESPACE position
    function getStorage() internal pure returns (Storage storage s) {
        bytes32 position = NAMESPACE;
        assembly :
        s.slot := position
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
