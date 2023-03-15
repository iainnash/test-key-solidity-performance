// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/StorageTest.sol";

contract StorageTestTest is Test {
    StorageTest public storageTest;

    function setUp() public {
        storageTest = new StorageTest();
    }

    function testSingleMapping(uint256 index1, uint256 value) public {
        storageTest.setSingleMapping(index1, value);
        assertEq(storageTest.getSingleMapping(index1), value);
    }

    function testSingleMappingRaw(uint256 index1, uint256 value) public {
        storageTest.setSingleKey(index1, value);
        assertEq(storageTest.getSingleKey(index1), value);
    }

    function testDoubleMapping(uint256 index1, uint256 index2, uint256 value) public {
        storageTest.setDoubleKey(index1, index2, value);
        assertEq(storageTest.getDoubleKey(index1, index2), value);
    }

    function testDoubleMappingRaw(uint256 index1, uint256 index2, uint256 value) public {
        storageTest.setDoubleMapping(index1, index2, value);
        assertEq(storageTest.getDoubleMapping(index1, index2), value);
    }

    function testTripleMapping(uint256 index1, uint256 index2, uint256 index3, uint256 value) public {
        storageTest.setTripleMapping(index1, index2, index3, value);
        assertEq(storageTest.getTripleMapping(index1, index2, index3), value);
    }

    function testTripleMappingRaw(uint256 index1, uint256 index2, uint256 index3, uint256 value) public {
        storageTest.setTripleKey(index1, index2, index3, value);
        assertEq(storageTest.getTripleKey(index1, index2, index3), value);
    }
}
