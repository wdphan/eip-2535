# EIP-2535

> Diamonds

This method is a way to organize large and complex solidity contracts. It consists of one single contract (living at one address) proxying calls to several different contracts (living at different addresses with different logic). The main single contract that maps and lookups functions from other smaller contracts. Each of these smaller contracts are called faucets. Add/remove different functions from different contracts instead of a single contract with all logic.

