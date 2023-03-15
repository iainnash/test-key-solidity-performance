// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract StorageTest {
    mapping(bytes32 => uint256) rawMapping;
    mapping(uint256 => uint256) singleMapping;
    mapping(uint256 => mapping(uint256 => uint256)) doubleMapping;
    mapping(uint256 => mapping(uint256 => mapping(uint256 => uint256))) tripleMapping;

    function getSingleMapping(uint256 index) public view returns (uint256) {
        return singleMapping[index];
    }

    function setSingleMapping(uint256 index, uint256 value) public {
        singleMapping[index] = value;
    }

    function getSingleKey(uint256 index) public view returns (uint256) {
        return rawMapping[keccak256(abi.encode(index))];
    }

    function setSingleKey(uint256 index, uint256 value) public {
        rawMapping[keccak256(abi.encode(index))] = value;
    }

    function getDoubleMapping(uint256 index1, uint256 index2)
        public
        view
        returns (uint256)
    {
        return doubleMapping[index1][index2];
    }

    function setDoubleMapping(
        uint256 index1,
        uint256 index2,
        uint256 value
    ) public {
        doubleMapping[index1][index2] = value;
    }

    function getDoubleKey(uint256 index1, uint256 index2)
        public
        view
        returns (uint256)
    {
        return rawMapping[keccak256(abi.encode(index1, index2))];
    }

     function setDoubleKey(
        uint256 index1,
        uint256 index2,
        uint256 value
    ) public {
        rawMapping[keccak256(abi.encode(index1, index2))]= value;
    }

    function getTripleMapping(
        uint256 index1,
        uint256 index2,
        uint256 index3
    ) public view returns (uint256) {
        return tripleMapping[index1][index2][index3];
    }
    function setTripleMapping(
        uint256 index1,
        uint256 index2,
        uint256 index3,
        uint256 value
    ) public {
        tripleMapping[index1][index2][index3] = value;
    }


    function getTripleKey(
        uint256 index1,
        uint256 index2,
        uint256 index3
    ) public view returns (uint256) {
        return rawMapping[keccak256(abi.encode(index1, index2, index3))];
    }
     function setTripleKey(
        uint256 index1,
        uint256 index2,
        uint256 index3,
        uint256 value
    ) public {
        rawMapping[keccak256(abi.encode(index1, index2, index3))]= value;
    }
}
