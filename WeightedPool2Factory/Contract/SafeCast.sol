// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

import "./BalancerErrors.sol";

library SafeCast {
 
    function toInt256(uint256 value) internal pure returns (int256) {
        _require(value >> 255 == 0, Errors.SAFE_CAST_VALUE_CANT_FIT_INT256);
        return int256(value);
    }

    function toUint64(uint256 value) internal pure returns (uint64) {
        _require(value <= type(uint64).max, Errors.SAFE_CAST_VALUE_CANT_FIT_UINT64);
        return uint64(value);
    }
}