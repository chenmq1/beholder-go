// Decompiled by library.dedaub.com
// 2025.11.29 03:24 UTC
// Compiled using the solidity compiler version 0.8.29


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _operators; // STORAGE[0x3]
address _owner; // STORAGE[0x0] bytes 0 to 19
address _pendingOwner; // STORAGE[0x1] bytes 0 to 19
address _withdrawer; // STORAGE[0x2] bytes 0 to 19
address _unlockCallback; // STORAGE[0x2aa6865a2f30964061a939b7d02c911e6ce520ed88fc01dc32be5a547a1d8600] bytes 0 to 19
address _swapY2XCallback; // STORAGE[0xd4c54f33abf20296072c8c10dd1d747c8a8a97e3889bb159fe7ceb37f90e12a8] bytes 0 to 19
address stor_fd576ee1874aa3088d23acaba24ab35461415a6c3a8ab378574cb7d51fd69a28_0_19; // STORAGE[0xfd576ee1874aa3088d23acaba24ab35461415a6c3a8ab378574cb7d51fd69a28] bytes 0 to 19


// Events
OwnershipTransferred(address, address);
OwnershipTransferStarted(address, address);
OperatorAdded(address);
OperatorRemoved(address);

function receive() public payable { 
}

function 0x187a() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    return v0;
}

function 0x1b83(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) - 32);
    return v0;
}

function 0x1bb4(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x207b(bytes varg0) private { 
    require(0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.code.size);
    v0 = new bytes[](varg0.length);
    MCOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = 0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.delegatecall(0x9ebe468300000000000000000000000000000000000000000000000000000000, v0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    if (v1) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x2233(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(msg.gas <= varg1, msg.gas, varg1);
    if (varg0 <= msg.gas * (10000 + (varg1 - msg.gas))) {
        v0 = v1 = 0;
    } else {
        v0 = v2 = varg0 - msg.gas * (10000 + (varg1 - msg.gas));
    }
    if (v0 <= varg2) {
        return 0;
    } else {
        return v0 - varg2;
    }
}

function 0x2297(uint256 varg0, uint256 varg1) private { 
    varg1 = v0 = this.balance;
    if (varg1 <= v0) {
    }
    if (!varg1) {
        return ;
    } else {
        if (!address(varg0)) {
            varg0 = v1 = block.coinbase;
        }
        require(this.balance >= varg1, InsufficientBalance(this.balance, varg1));
        v2, /* uint256 */ v3 = address(varg0).call().value(varg1).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v4 = v5 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v4 = new bytes[](RETURNDATASIZE());
            require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
            v3 = v4.data;
            RETURNDATACOPY(v3, 0, RETURNDATASIZE());
        }
        if (!v2) {
            require(!MEM[v4], v4 + 32, MEM[v4]);
            revert(FailedCall());
        } else {
            return ;
        }
    }
}

function 0x2475(address varg0) private { 
    v0 = varg0;
    require(!bool(!v0), 0);
    require(!_operators[v0], v0);
    _operators[v0] = 1;
    emit OperatorAdded(v0);
    return ;
}

function 0x2530(address varg0) private { 
    v0 = varg0;
    require(!bool(!v0), 0);
    require(_operators[v0], v0);
    _operators[v0] = 0;
    emit OperatorRemoved(v0);
    return ;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x263a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = 0x1b83(varg3);
    CALLDATACOPY(v0.data, varg2, varg3);
    v1 = v2 = v0.data + 4 + 4;
    v3 = v4 = v0[4] >> 224;
    v5 = v6 = v2 + uint32(MEM[v0.data] >> 224);
    v7 = v8 = 0;
    while (v1 < v6) {
        v9 = v1 + 1;
        v10 = MEM[v1] >> 248;
        require(v10 < 37, Panic(33)); // failed convertion to enum type
        require(37 > v10, Panic(33)); // failed convertion to enum type
        if (!v10) {
            v11 = 0x2ff6();
            v11.word0 = MEM[v9 + 1] >> (32 - (byte(MEM[v9], 0x0)) << 3);
            v11.word1 = MEM[v9 + (byte(MEM[v9], 0x0)) + 1] >> 248;
            v1 = 1 + (v9 + (byte(MEM[v9], 0x0)) + 1);
            v12 = v13 = 34;
        } else {
            require(37 > v10, Panic(33)); // failed convertion to enum type
            if (v10 == 1) {
                v14 = 0x187a();
                v14.word0 = uint8(MEM[v9] >> 248);
                v14.word1 = MEM[v9 + 1 + 1] >> (32 - (byte(MEM[v9 + 1], 0x0)) << 3);
                v14.word2 = MEM[v9 + 1 + (byte(MEM[v9 + 1], 0x0)) + 1] >> 248;
                v1 = 1 + (v9 + 1 + (byte(MEM[v9 + 1], 0x0)) + 1);
                v12 = v15 = 35;
            } else {
                require(37 > v10, Panic(33)); // failed convertion to enum type
                if (v10 == 2) {
                    v16 = 0x187a();
                    v16.word0 = uint8(MEM[v9] >> 248);
                    v16.word1 = uint8(MEM[v9 + 1] >> 248);
                    v1 = v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1;
                    v16.word2 = MEM[v9 + 1 + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1], 0x0)) << 3);
                    v12 = v17 = 34;
                } else {
                    require(37 > v10, Panic(33)); // failed convertion to enum type
                    if (v10 != 3) {
                        require(37 > v10, Panic(33)); // failed convertion to enum type
                        if (v10 != 4) {
                            require(37 > v10, Panic(33)); // failed convertion to enum type
                            if (v10 != 5) {
                                require(37 > v10, Panic(33)); // failed convertion to enum type
                                if (v10 == 6) {
                                    v18 = 0x187a();
                                    v18.word0 = MEM[v9] >> 248;
                                    require(MEM[v9 + 1] >> 248 < 7, Panic(33)); // failed convertion to enum type
                                    require(MEM[v9 + 1] >> 248 < 7, Panic(33)); // failed convertion to enum type
                                    v18.word1 = MEM[v9 + 1] >> 248;
                                    v18.word2 = MEM[2 + v9] >> 224;
                                    v1 = 6 + v9;
                                    v12 = v19 = 6;
                                } else {
                                    require(37 > v10, Panic(33)); // failed convertion to enum type
                                    if (v10 != 7) {
                                        require(37 > v10, Panic(33)); // failed convertion to enum type
                                        if (v10 != 8) {
                                            require(37 > v10, Panic(33)); // failed convertion to enum type
                                            if (v10 != 9) {
                                                require(37 > v10, Panic(33)); // failed convertion to enum type
                                                if (v10 == 10) {
                                                    v20 = 0x3192();
                                                    v20.word0 = MEM[v9] >> 248;
                                                    v20.word1 = MEM[v9 + 1] >> 248;
                                                    v20.word2 = MEM[v9 + 2] >> 248;
                                                    v20.word3 = MEM[v9 + 3] >> 224;
                                                    v1 = v9 + 7;
                                                    v12 = v21 = 7;
                                                } else {
                                                    require(37 > v10, Panic(33)); // failed convertion to enum type
                                                    if (v10 != 11) {
                                                        require(37 > v10, Panic(33)); // failed convertion to enum type
                                                        if (v10 != 12) {
                                                            require(37 > v10, Panic(33)); // failed convertion to enum type
                                                            if (v10 != 13) {
                                                                require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                if (v10 == 14) {
                                                                    v22 = 0x3271();
                                                                    v22.word0 = MEM[v9] >> 248;
                                                                    require(MEM[v9 + 1] >> 248 < 7, Panic(33)); // failed convertion to enum type
                                                                    require(MEM[v9 + 1] >> 248 < 7, Panic(33)); // failed convertion to enum type
                                                                    v22.word1 = MEM[v9 + 1] >> 248;
                                                                    v22.word2 = bool(MEM[2 + v9] >> 248);
                                                                    v22.word3 = MEM[2 + v9 + 1 + 1] >> (32 - (byte(MEM[2 + v9 + 1], 0x0)) << 3);
                                                                    v22.word4 = MEM[2 + v9 + 1 + (byte(MEM[2 + v9 + 1], 0x0)) + 1] >> 248;
                                                                    v1 = 1 + (2 + v9 + 1 + (byte(MEM[2 + v9 + 1], 0x0)) + 1);
                                                                    v12 = v23 = 37;
                                                                } else {
                                                                    require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                    if (v10 == 15) {
                                                                        v24 = 0x332b();
                                                                        v24.word0 = uint8(MEM[v9] >> 248);
                                                                        v24.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                        v24.word2 = uint8(MEM[v9 + 2] >> 248);
                                                                        v24.word3 = uint8(MEM[3 + v9] >> 248);
                                                                        v24.word4 = MEM[3 + v9 + 1 + 1] >> (32 - (byte(MEM[3 + v9 + 1], 0x0)) << 3);
                                                                        v24.word5 = MEM[3 + v9 + 1 + (byte(MEM[3 + v9 + 1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[3 + v9 + 1 + (byte(MEM[3 + v9 + 1], 0x0)) + 1], 0x0)) << 3);
                                                                        v1 = 3 + v9 + 1 + (byte(MEM[3 + v9 + 1], 0x0)) + 1 + (byte(MEM[3 + v9 + 1 + (byte(MEM[3 + v9 + 1], 0x0)) + 1], 0x0)) + 1 + 1;
                                                                        v24.word6 = uint8(MEM[3 + v9 + 1 + (byte(MEM[3 + v9 + 1], 0x0)) + 1 + (byte(MEM[3 + v9 + 1 + (byte(MEM[3 + v9 + 1], 0x0)) + 1], 0x0)) + 1] >> 248);
                                                                        v12 = v25 = 71;
                                                                    } else {
                                                                        require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                        if (v10 != 16) {
                                                                            require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                            if (v10 != 17) {
                                                                                require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                if (v10 == 18) {
                                                                                    v26 = 0x3271();
                                                                                    v26.word0 = uint8(MEM[v9] >> 248);
                                                                                    v26.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                                    v26.word2 = MEM[v9 + 1 + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1], 0x0)) << 3);
                                                                                    v26.word3 = MEM[v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1], 0x0)) << 3);
                                                                                    v26.word4 = MEM[v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1], 0x0)) + 1] >> 248;
                                                                                    v1 = 1 + (v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1], 0x0)) + 1);
                                                                                    v12 = v27 = 69;
                                                                                } else {
                                                                                    require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                    if (v10 == 19) {
                                                                                        v28 = 0x3490();
                                                                                        v28.word0 = uint8(MEM[v9] >> 248);
                                                                                        v28.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                                        v28.word2 = uint8(MEM[v9 + 2] >> 248);
                                                                                        v28.word3 = uint8(MEM[v9 + 3] >> 248);
                                                                                        v28.word4 = MEM[4 + v9 + 1] >> (32 - (byte(MEM[4 + v9], 0x0)) << 3);
                                                                                        v1 = 4 + v9 + (byte(MEM[4 + v9], 0x0)) + 1 + (byte(MEM[4 + v9 + (byte(MEM[4 + v9], 0x0)) + 1], 0x0)) + 1;
                                                                                        v28.word5 = MEM[4 + v9 + (byte(MEM[4 + v9], 0x0)) + 1 + 1] >> (32 - (byte(MEM[4 + v9 + (byte(MEM[4 + v9], 0x0)) + 1], 0x0)) << 3);
                                                                                        v12 = v29 = 69;
                                                                                    } else {
                                                                                        require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                        if (v10 != 20) {
                                                                                            require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                            if (v10 == 21) {
                                                                                                v30 = 0x332b();
                                                                                                v30.word0 = uint8(MEM[v9] >> 248);
                                                                                                v30.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                                                v30.word2 = uint8(MEM[v9 + 2] >> 248);
                                                                                                v30.word3 = uint24(MEM[3 + v9 + 1] >> (32 - (byte(MEM[3 + v9], 0x0)) << 3));
                                                                                                v30.word4 = int24(MEM[3 + v9 + (byte(MEM[3 + v9], 0x0)) + 1 + 1] >> (32 - (byte(MEM[3 + v9 + (byte(MEM[3 + v9], 0x0)) + 1], 0x0)) << 3));
                                                                                                v30.word5 = uint8(MEM[3 + v9 + (byte(MEM[3 + v9], 0x0)) + 1 + (byte(MEM[3 + v9 + (byte(MEM[3 + v9], 0x0)) + 1], 0x0)) + 1] >> 248);
                                                                                                v1 = 3 + v9 + (byte(MEM[3 + v9], 0x0)) + 1 + (byte(MEM[3 + v9 + (byte(MEM[3 + v9], 0x0)) + 1], 0x0)) + 1 + 1 + 4;
                                                                                                v30.word6 = uint32(MEM[3 + v9 + (byte(MEM[3 + v9], 0x0)) + 1 + (byte(MEM[3 + v9 + (byte(MEM[3 + v9], 0x0)) + 1], 0x0)) + 1 + 1] >> 224);
                                                                                                v12 = v31 = 74;
                                                                                            } else {
                                                                                                require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                if (v10 != 22) {
                                                                                                    require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                    if (v10 == 23) {
                                                                                                        v32 = 0x2ff6();
                                                                                                        v32.word0 = MEM[v9] >> 248;
                                                                                                        v32.word1 = MEM[v9 + 1] >> 248;
                                                                                                        v1 = v9 + 2;
                                                                                                        v12 = v33 = 2;
                                                                                                    } else {
                                                                                                        require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                        if (v10 != 24) {
                                                                                                            require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                            if (v10 != 25) {
                                                                                                                require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                if (v10 == 26) {
                                                                                                                    v34 = 0x3192();
                                                                                                                    v34.word0 = uint8(MEM[v9] >> 248);
                                                                                                                    v34.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                                                                    v34.word2 = MEM[v9 + 1 + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1], 0x0)) << 3);
                                                                                                                    v34.word3 = MEM[v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1] >> 248;
                                                                                                                    v1 = 1 + (v9 + 1 + 1 + (byte(MEM[v9 + 1 + 1], 0x0)) + 1);
                                                                                                                    v12 = v35 = 36;
                                                                                                                } else {
                                                                                                                    require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                    if (v10 == 27) {
                                                                                                                        v36 = 0x367e();
                                                                                                                        v36.word0 = uint8(MEM[v9] >> 248);
                                                                                                                        v36.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                                                                        v36.word2 = uint8(MEM[v9 + 1 + 1] >> 248);
                                                                                                                        v36.word3 = uint24(MEM[v9 + 1 + 1 + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1 + 1], 0x0)) << 3));
                                                                                                                        v36.word4 = int24(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) << 3));
                                                                                                                        v36.word5 = uint8(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1] >> 248);
                                                                                                                        v36.word6 = bool(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1] >> 248);
                                                                                                                        v1 = v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1], 0x0)) + 1;
                                                                                                                        v36.word7 = MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1], 0x0)) << 3);
                                                                                                                        v12 = v37 = 104;
                                                                                                                    } else {
                                                                                                                        require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                        if (v10 == 28) {
                                                                                                                            v38 = 0x3490();
                                                                                                                            v38.word0 = uint8(MEM[v9] >> 248);
                                                                                                                            v38.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                                                                            v38.word2 = uint8(MEM[v9 + 2] >> 248);
                                                                                                                            v38.word3 = uint8(MEM[v9 + 3] >> 248);
                                                                                                                            v38.word4 = uint8(MEM[4 + v9] >> 248);
                                                                                                                            v1 = 4 + v9 + 1 + (byte(MEM[4 + v9 + 1], 0x0)) + 1;
                                                                                                                            v38.word5 = MEM[4 + v9 + 1 + 1] >> (32 - (byte(MEM[4 + v9 + 1], 0x0)) << 3);
                                                                                                                            v12 = v39 = 38;
                                                                                                                        } else {
                                                                                                                            require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                            if (v10 != 29) {
                                                                                                                                require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                                if (v10 == 30) {
                                                                                                                                    v40 = 0x3271();
                                                                                                                                    v40.word0 = uint8(MEM[v9] >> 248);
                                                                                                                                    v40.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                                                                                    v40.word2 = uint8(MEM[v9 + 1 + 1] >> 248);
                                                                                                                                    v40.word3 = uint8(MEM[v9 + 1 + 1 + 1] >> 248);
                                                                                                                                    v1 = v9 + 1 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1 + 1], 0x0)) + 1;
                                                                                                                                    v40.word4 = MEM[v9 + 1 + 1 + 1 + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1 + 1 + 1], 0x0)) << 3);
                                                                                                                                    v12 = v41 = 37;
                                                                                                                                } else {
                                                                                                                                    require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                                    if (v10 != 31) {
                                                                                                                                        require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                                        if (v10 != 32) {
                                                                                                                                            require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                                            if (v10 != 33) {
                                                                                                                                                require(37 > v10, Panic(33)); // failed convertion to enum type
                                                                                                                                                if (v10 == 32) {
                                                                                                                                                    v42 = 0x187a();
                                                                                                                                                    v42.word0 = MEM[v9] >> 248;
                                                                                                                                                    v42.word1 = MEM[v9 + 1] >> 224;
                                                                                                                                                    v1 = 6 + v9;
                                                                                                                                                    require(MEM[v9 + 5] >> 248 < 4, Panic(33)); // failed convertion to enum type
                                                                                                                                                    require(MEM[v9 + 5] >> 248 < 4, Panic(33)); // failed convertion to enum type
                                                                                                                                                    v42.word2 = MEM[v9 + 5] >> 248;
                                                                                                                                                    v12 = v43 = 5;
                                                                                                                                                } else {
                                                                                                                                                    require(37 <= v10, uint8(v10));
                                                                                                                                                    revert(Panic(33));
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        v44 = 0x332b();
                                                                                                                                        v44.word0 = uint8(MEM[v9] >> 248);
                                                                                                                                        v44.word1 = uint8(MEM[v9 + 1] >> 248);
                                                                                                                                        v44.word2 = uint8(MEM[v9 + 1 + 1] >> 248);
                                                                                                                                        v44.word3 = MEM[v9 + 1 + 1 + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1 + 1], 0x0)) << 3);
                                                                                                                                        v44.word4 = MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) << 3);
                                                                                                                                        v44.word5 = uint8(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1] >> 248);
                                                                                                                                        v1 = v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1;
                                                                                                                                        require(uint8(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1] >> 248) < 4, Panic(33)); // failed convertion to enum type
                                                                                                                                        require(uint8(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1] >> 248) < 4, Panic(33)); // failed convertion to enum type
                                                                                                                                        v44.word6 = uint8(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v9 + 1 + 1 + 1 + (byte(MEM[v9 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1] >> 248);
                                                                                                                                        v12 = v45 = 71;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                v46 = new struct(1);
                                                                                                require(!((v46 + 32 > uint64.max) | (v46 + 32 < v46)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                v46.word0 = 0;
                                                                                                v46.word0 = MEM[v9] >> 248;
                                                                                                v1 = 1 + v9;
                                                                                                v12 = v47 = 1;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            v48 = 0x187a();
                                                            v48.word0 = MEM[v9] >> 248;
                                                            v48.word1 = bool(MEM[v9 + 1] >> 248);
                                                            v1 = 2 + v9 + (byte(MEM[2 + v9], 0x0)) + 1;
                                                            v48.word2 = MEM[2 + v9 + 1] >> (32 - (byte(MEM[2 + v9], 0x0)) << 3);
                                                            v12 = v49 = 35;
                                                        }
                                                        v50 = 0x3192();
                                                        v50.word0 = MEM[v9] >> 248;
                                                        v50.word1 = bool(MEM[v9 + 1] >> 248);
                                                        v50.word2 = MEM[2 + v9 + 1] >> (32 - (byte(MEM[2 + v9], 0x0)) << 3);
                                                        v50.word3 = MEM[2 + v9 + (byte(MEM[2 + v9], 0x0)) + 1] >> 248;
                                                        v1 = 1 + (2 + v9 + (byte(MEM[2 + v9], 0x0)) + 1);
                                                        v12 = v51 = 36;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    v52 = 0x187a();
                                    v52.word0 = MEM[v9] >> 248;
                                    v52.word1 = MEM[v9 + 1] >> 248;
                                    v52.word2 = MEM[v9 + 2] >> 224;
                                    v1 = v9 + 6;
                                    v12 = v53 = 6;
                                }
                            }
                            v54 = 0x2ff6();
                            v54.word0 = MEM[v9] >> 248;
                            v54.word1 = MEM[v9 + 1] >> 224;
                            v1 = v9 + 5;
                            v12 = v55 = 5;
                        }
                    }
                    v56 = 0x2ff6();
                    v56.word0 = uint8(MEM[v9] >> 248);
                    v1 = v9 + 1 + (byte(MEM[v9 + 1], 0x0)) + 1;
                    v56.word1 = MEM[v9 + 1 + 1] >> (32 - (byte(MEM[v9 + 1], 0x0)) << 3);
                    v12 = v57 = 34;
                }
            }
        }
        v7 = _SafeAdd(v7, v12);
    }
    v58 = 0x1b83(v7);
    v59 = v60 = v58.data;
    while (v1 < v5) {
        v59, v1, v3 = v61, v5 = v62, v59 = v63, varg0 = v64, varg1 = v65, v66 = v67, v68 = 0x2b31(v1, v59, varg1);
    }
    0x2edf(v59, v59, v5, v5 + uint32(v3));
    v69 = new uint256[](MEM[varg1]);
    v70 = v71 = v69.data;
    v72 = varg1 + 32;
    v73 = 0;
    while (v73 < MEM[varg1]) {
        MEM[v70] = MEM[MEM[v72]];
        MEM[v70 + 32] = MEM[32 + MEM[v72]];
        v70 = v70 + 64;
        v72 = v72 + 32;
        v73 += 1;
    }
    emit 0x40e9c1eb674f01849d4f378b5f1492d97d1109fb9627f2b2965644c1b841b4c6(varg0, v69);
    return ;
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _pendingOwner = newOwner;
    emit OwnershipTransferStarted(_owner, newOwner);
}

function 0xf2b0e84e(uint256 varg0, uint256 varg1, uint256 varg2, bytes varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(!(address(varg0) - varg0));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    require(!(msg.sender - stor_fd576ee1874aa3088d23acaba24ab35461415a6c3a8ab378574cb7d51fd69a28_0_19), msg.sender, stor_fd576ee1874aa3088d23acaba24ab35461415a6c3a8ab378574cb7d51fd69a28_0_19);
    stor_fd576ee1874aa3088d23acaba24ab35461415a6c3a8ab378574cb7d51fd69a28_0_19 = 0;
    require(0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.code.size);
    v0 = new bytes[](varg3.length);
    CALLDATACOPY(v0.data, varg3.data, varg3.length);
    v0[varg3.length] = 0;
    v1 = 0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.delegatecall(0x9ebe468300000000000000000000000000000000000000000000000000000000, v0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    if (v1) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        exit;
    } else {
        exit;
    }
}

function pendingOwner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _pendingOwner;
}

function swapY2XCallback(uint256 x, uint256 y, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(!(msg.sender - _swapY2XCallback), msg.sender, _swapY2XCallback);
    _swapY2XCallback = 0;
    require(0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.code.size);
    v0 = new bytes[](data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = 0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.delegatecall(0x9ebe468300000000000000000000000000000000000000000000000000000000, v0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    if (v1) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        exit;
    } else {
        exit;
    }
}

function removeOperators(address[] varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    v0 = v1 = 0;
    while (1) {
        if (v0 < varg0.length) {
            v2 = 0x1bb4(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v2]) - msg.data[v2]));
            0x2530(msg.data[v2]);
            v0 = v0 + 1;
        } else {
            exit;
        }
    }
}

function withdrawer() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _withdrawer;
}

function 0xc5c957f0(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    v0 = v1 = msg.sender == _withdrawer;
    if (msg.sender != _withdrawer) {
        v0 = v2 = msg.sender == _owner;
    }
    require(v0, msg.sender);
    require(!bool(!address(varg0)), 0);
    require(!bool(!address(varg1)), 0);
    require((address(varg0)).code.size);
    v3 = address(varg0).safeTransferFrom(this, address(varg1), varg2).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    if (v3) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        exit;
    } else {
        exit;
    }
}

function 0xb044830c(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(bool(varg1) - varg1));
    require(_operators[msg.sender], msg.sender);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = 0;
    while (v1 < 32 + (varg0.length << 5) - 32) {
        v3 = 0x187a();
        MEM[v0 + v1 + 32] = v3;
        v1 = v1 + 32;
    }
    v4 = v5 = 0;
    while (v4 < varg0.length) {
        require(v4 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v4] < msg.data.length - varg0.data - 223);
        require(msg.data[varg0.data + varg0[v4]] < msg.data.length - (varg0.data + varg0[v4]) - 31);
        require(msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]] <= uint64.max);
        require(32 + (varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]) <= msg.data.length - msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]]);
        require(v4 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v4] < msg.data.length - varg0.data - 223);
        require(v4 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v4] < msg.data.length - varg0.data - 223);
        require(!(bool(msg.data[64 + (varg0.data + varg0[v4])]) - msg.data[64 + (varg0.data + varg0[v4])]));
        require(v4 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v4] < msg.data.length - varg0.data - 223);
        require(v4 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v4] < msg.data.length - varg0.data - 223);
        require(!(bool(msg.data[128 + (varg0.data + varg0[v4])]) - msg.data[128 + (varg0.data + varg0[v4])]));
        require(v4 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v4] < msg.data.length - varg0.data - 223);
        v6 = v7 = msg.data[160 + (varg0.data + varg0[v4])];
        require(!(bool(v7) - v7));
        require(v4 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v4] < msg.data.length - varg0.data - 223);
        require(msg.data[varg0.data + varg0[v4] + 192] < msg.data.length - (varg0.data + varg0[v4]) - 31);
        require(msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4] + 192]] <= uint64.max);
        require(32 + (varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4] + 192]) <= msg.data.length - msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4] + 192]]);
        v8 = 0x187a();
        if (!msg.data[32 + (varg0.data + varg0[v4])]) {
            v9 = v10 = 0xa80();
            v10.word0 = 0;
            v10.word1 = msg.data[96 + (varg0.data + varg0[v4])];
            v10.word2 = 0;
        } else {
            if (!msg.data[128 + (varg0.data + varg0[v4])]) {
                MEM[MEM[64]] = 0x5589a91800000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 128;
                MEM[MEM[64] + 4 + 128] = msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]];
                CALLDATACOPY(MEM[64] + 4 + 128 + 32, 32 + (varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]), msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]]);
                MEM[MEM[64] + 4 + 128 + msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]] + 32] = 0;
                MEM[MEM[64] + 4 + 32] = msg.data[32 + (varg0.data + varg0[v4])];
                MEM[MEM[64] + 4 + 64] = msg.data[96 + (varg0.data + varg0[v4])];
                MEM[MEM[64] + 4 + 96] = bool(msg.data[64 + (varg0.data + varg0[v4])]);
                v11 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(v12, MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (v11) {
                    v13 = v14 = 0;
                    if (v11) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x5589a91800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v15.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v13 = new uint256[](v15.length);
                        require(!((v13 + (32 + (v15.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v13 + (32 + (v15.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v13)), Panic(65)); // failed memory allocation (too much memory)
                        v16 = v17 = v13.data;
                        require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v15.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
                        v18 = v19 = v15.data;
                        while (v18 < MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v15.length << 6) + 32) {
                            require(MEM[64] + RETURNDATASIZE() - v18 >= 64);
                            v20 = new struct(2);
                            require(!((v20 + 64 > uint64.max) | (v20 + 64 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            v20.word0 = MEM[v18];
                            v20.word1 = MEM[v18 + 32];
                            MEM[v16] = v20;
                            v16 = v16 + 32;
                            v18 = v18 + 64;
                        }
                    }
                }
            } else {
                MEM[MEM[64]] = 0x96f5d98100000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 96;
                MEM[MEM[64] + 4 + 96] = msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]];
                CALLDATACOPY(MEM[64] + 4 + 96 + 32, 32 + (varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]), msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]]);
                MEM[MEM[64] + 4 + 96 + msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4]]] + 32] = 0;
                MEM[MEM[64] + 4 + 32] = msg.data[32 + (varg0.data + varg0[v4])];
                MEM[MEM[64] + 4 + 64] = msg.data[96 + (varg0.data + varg0[v4])];
                v21 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(v12, MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (v21) {
                    v13 = v22 = 0;
                    if (v21) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x96f5d98100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v23.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v13 = v24 = new uint256[](v23.length);
                        require(!((v24 + (32 + (v23.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (v23.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
                        v25 = v26 = v24.data;
                        require(MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + (v23.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
                        v27 = v28 = v23.data;
                        while (v27 < MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + (v23.length << 6) + 32) {
                            require(MEM[64] + RETURNDATASIZE() - v27 >= 64);
                            v29 = new struct(2);
                            require(!((v29 + 64 > uint64.max) | (v29 + 64 < v29)), Panic(65)); // failed memory allocation (too much memory)
                            v29.word0 = MEM[v27];
                            v29.word1 = MEM[v27 + 32];
                            MEM[v25] = v29;
                            v25 = v25 + 32;
                            v27 = v27 + 64;
                        }
                    }
                }
            }
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
            require(MEM[v13], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(MEM[v13] - 1 < MEM[v13], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v30 = v31 = !MEM[MEM[32 + v13]];
            if (bool(MEM[MEM[32 + v13]])) {
                v30 = v32 = !MEM[MEM[(MEM[v13] - 1 << 5) + v13 + 32] + 32];
            }
            if (v30) {
                v9 = v33 = 0xa80();
                v33.word0 = 0;
                v33.word1 = MEM[MEM[32 + v13]];
                v33.word2 = MEM[MEM[(MEM[v13] - 1 << 5) + v13 + 32] + 32];
            } else {
                if (v7) {
                    v6 = v34 = MEM[MEM[(MEM[v13] - 1 << 5) + v13 + 32] + 32] <= MEM[MEM[32 + v13]];
                }
                if (v6) {
                    v9 = v35 = 0xa80();
                    v35.word0 = 0;
                    v35.word1 = MEM[MEM[32 + v13]];
                    v35.word2 = MEM[MEM[(MEM[v13] - 1 << 5) + v13 + 32] + 32];
                } else {
                    0x263a(v4, v13, 32 + (varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4] + 192]), msg.data[varg0.data + varg0[v4] + msg.data[varg0.data + varg0[v4] + 192]]);
                    v9 = v36 = 0xa80();
                    v36.word0 = 1;
                    v36.word1 = MEM[MEM[32 + v13]];
                    v36.word2 = MEM[MEM[(MEM[v13] - 1 << 5) + v13 + 32] + 32];
                }
            }
        }
        require(v4 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0[v4] = v9;
        require(v4 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (varg1) {
            require(v4 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v37 = bool(!MEM[v0[v4]]);
        }
        if (v37) {
            break;
        } else {
            v4 += 1;
        }
    }
    v38 = new uint256[](v0.length);
    v39 = v40 = v38.data;
    v41 = v0.data;
    v42 = 0;
    while (v42 < v0.length) {
        MEM[v39] = bool(MEM[MEM[v41]]);
        MEM[v39 + 32] = MEM[MEM[v41] + 32];
        MEM[v39 + 64] = MEM[MEM[v41] + 64];
        v39 = v39 + 96;
        v41 = v41 + 32;
        v42 = v42 + 1;
    }
    return v38;
}

function removeOperator(address operator) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    0x2530(operator);
}

function addOperators(address[] varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    v0 = v1 = 0;
    while (1) {
        if (v0 < varg0.length) {
            v2 = 0x1bb4(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v2]) - msg.data[v2]));
            0x2475(msg.data[v2]);
            v0 = v0 + 1;
        } else {
            exit;
        }
    }
}

function addOperator(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    0x2475(account);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    require(!(msg.sender - _unlockCallback), msg.sender, _unlockCallback);
    _unlockCallback = 0;
    require(0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.code.size);
    v0 = new bytes[](rawData.length);
    CALLDATACOPY(v0.data, rawData.data, rawData.length);
    v0[rawData.length] = 0;
    v1 = 0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.delegatecall(0x9ebe468300000000000000000000000000000000000000000000000000000000, v0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    if (v1) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v2 = new uint256[](0);
    MCOPY(v2.data, MEM[64] + 32, 0);
    MEM[v2.data] = 0;
    return v2;
}

function 0x90ab6f3e(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(varg0 + (varg0.length << 5) + 36 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < varg0 + (varg0.length << 5) + 36) {
        require(msg.data[v3] <= uint64.max);
        require(varg0 + msg.data[v3] + 36 + 31 < msg.data.length);
        require(msg.data[varg0 + msg.data[v3] + 36] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](msg.data[varg0 + msg.data[v3] + 36]);
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[varg0 + msg.data[v3] + 36]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[varg0 + msg.data[v3] + 36]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        require(varg0 + msg.data[v3] + 36 + msg.data[varg0 + msg.data[v3] + 36] + 32 <= msg.data.length);
        CALLDATACOPY(v5.data, varg0 + msg.data[v3] + 36 + 32, msg.data[varg0 + msg.data[v3] + 36]);
        v5[msg.data[varg0 + msg.data[v3] + 36]] = 0;
        MEM[v1] = v5;
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    require(_operators[msg.sender], msg.sender);
    v6 = v7 = 0;
    while (1) {
        if (v6 >= v0.length) {
            exit;
        } else {
            require(v6 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            0x207b(v0[v6]);
            v6 = v6 + 1;
        }
    }
}

function 0x2b31(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = varg0 + 1;
    v2 = MEM[varg0] >> 248;
    require(v2 < 37, Panic(33)); // failed convertion to enum type
    require(37 > v2, Panic(33)); // failed convertion to enum type
    MEM8[varg1] = uint8(v2) & 0xFF;
    v3 = v4 = varg1 + 1;
    require(37 > v2, Panic(33)); // failed convertion to enum type
    if (!v2) {
        v5 = 0x2ff6();
        v6 = 0x2ff6();
        v6.word0 = MEM[v1 + 1] >> (32 - (byte(MEM[v1], 0x0)) << 3);
        v6.word1 = MEM[v1 + (byte(MEM[v1], 0x0)) + 1] >> 248;
        v7 = v8 = 0x41a4(v6.word0, varg2);
        v6.word0 = v8;
        v9 = v10 = 32;
        v9 = v11 = 0;
        while (v9 < 32) {
            if (!v7) {
                break;
            } else {
                v9 += 1;
                v7 = v7 >> 8;
            }
        }
        MEM8[v4] = v9 & 0xFF;
        MEM[v4 + 1] = MEM[v4 + 1] & uint128.max << (32 - v9 << 3) | v8 << (32 - v9 << 3);
        MEM8[v4 + v9 + 1] = uint8(v6.word1) & 0xFF;
        return v4 + v9 + 1 + 1, 1 + (v1 + (byte(MEM[v1], 0x0)) + 1);
    } else {
        require(37 > v2, Panic(33)); // failed convertion to enum type
        if (v2 == 1) {
            v12 = 0x187a();
            v13 = 0x187a();
            v13.word0 = uint8(MEM[v1] >> 248);
            v13.word1 = MEM[v1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1], 0x0)) << 3);
            v13.word2 = MEM[v1 + 1 + (byte(MEM[v1 + 1], 0x0)) + 1] >> 248;
            v14 = 0x41a4(v13.word1, varg2);
            v13.word1 = v14;
            MEM8[v4] = uint8(v13.word0) & 0xFF;
            v15 = v16 = v13.word1;
            v17 = v18 = 32;
            v17 = v19 = 0;
            while (v17 < 32) {
                if (!v15) {
                    break;
                } else {
                    v17 += 1;
                    v15 = v15 >> 8;
                }
            }
            MEM8[v4 + 1] = v17 & 0xFF;
            MEM[v4 + 1 + 1] = MEM[v4 + 1 + 1] & uint128.max << (32 - v17 << 3) | v16 << (32 - v17 << 3);
            MEM8[v4 + 1 + v17 + 1] = uint8(v13.word2) & 0xFF;
            return v4 + 1 + v17 + 1 + 1, 1 + (v1 + 1 + (byte(MEM[v1 + 1], 0x0)) + 1);
        } else {
            require(37 > v2, Panic(33)); // failed convertion to enum type
            if (v2 == 2) {
                v20 = 0x187a();
                v21 = 0x187a();
                v21.word0 = uint8(MEM[v1] >> 248);
                v21.word1 = uint8(MEM[v1 + 1] >> 248);
                v21.word2 = MEM[v1 + 1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1], 0x0)) << 3);
                v22 = 0x41a4(v21.word2, varg2);
                v21.word2 = v22;
                MEM8[v4] = uint8(v21.word0) & 0xFF;
                MEM8[v4 + 1] = uint8(v21.word1) & 0xFF;
                v23 = v24 = v21.word2;
                v25 = v26 = 32;
                v25 = v27 = 0;
                while (v25 < 32) {
                    if (!v23) {
                        break;
                    } else {
                        v25 += 1;
                        v23 = v23 >> 8;
                    }
                }
                MEM8[v4 + 1 + 1] = v25 & 0xFF;
                MEM[v4 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1] & uint128.max << (32 - v25 << 3) | v24 << (32 - v25 << 3);
                return v4 + 1 + 1 + v25 + 1, v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1;
            } else {
                require(37 > v2, Panic(33)); // failed convertion to enum type
                if (v2 != 3) {
                    require(37 > v2, Panic(33)); // failed convertion to enum type
                    if (v2 != 4) {
                        require(37 > v2, Panic(33)); // failed convertion to enum type
                        if (v2 != 5) {
                            require(37 > v2, Panic(33)); // failed convertion to enum type
                            if (v2 != 6) {
                                require(37 > v2, Panic(33)); // failed convertion to enum type
                                if (v2 != 7) {
                                    require(37 > v2, Panic(33)); // failed convertion to enum type
                                    if (v2 != 8) {
                                        require(37 > v2, Panic(33)); // failed convertion to enum type
                                        if (v2 != 9) {
                                            require(37 > v2, Panic(33)); // failed convertion to enum type
                                            if (v2 == 10) {
                                                v28 = v29 = 0;
                                                while (v28 < 7) {
                                                    MEM8[v3] = MEM[v0] >> 248 & 0xFF;
                                                    v3 = v3 + 1;
                                                    v0 = v0 + 1;
                                                    v28 = v28 + 1;
                                                }
                                                return v4 + 7, v1 + 7;
                                            } else {
                                                require(37 > v2, Panic(33)); // failed convertion to enum type
                                                if (v2 != 11) {
                                                    require(37 > v2, Panic(33)); // failed convertion to enum type
                                                    if (v2 != 12) {
                                                        require(37 > v2, Panic(33)); // failed convertion to enum type
                                                        if (v2 != 13) {
                                                            require(37 > v2, Panic(33)); // failed convertion to enum type
                                                            if (v2 == 14) {
                                                                v30 = 0x3271();
                                                                v31 = 0x3271();
                                                                v31.word0 = MEM[v1] >> 248;
                                                                require(MEM[v1 + 1] >> 248 < 7, Panic(33)); // failed convertion to enum type
                                                                require(MEM[v1 + 1] >> 248 < 7, Panic(33)); // failed convertion to enum type
                                                                v31.word1 = MEM[v1 + 1] >> 248;
                                                                v31.word2 = bool(MEM[2 + v1] >> 248);
                                                                v31.word3 = MEM[2 + v1 + 1 + 1] >> (32 - (byte(MEM[2 + v1 + 1], 0x0)) << 3);
                                                                v31.word4 = MEM[2 + v1 + 1 + (byte(MEM[2 + v1 + 1], 0x0)) + 1] >> 248;
                                                                v32 = 0x41a4(v31.word3, varg2);
                                                                v31.word3 = v32;
                                                                MEM8[v4] = uint8(v31.word0) & 0xFF;
                                                                require(v31.word1 < 7, Panic(33)); // failed convertion to enum type
                                                                MEM8[v4 + 1] = uint8(v31.word1) & 0xFF;
                                                                v33 = v34 = 1;
                                                                if (bool(!v31.word2)) {
                                                                    v33 = 0;
                                                                }
                                                                MEM8[v4 + 1 + 1] = uint8(v33) & 0xFF;
                                                                v35 = v36 = v31.word3;
                                                                v37 = v38 = 32;
                                                                v37 = v39 = 0;
                                                                while (v37 < 32) {
                                                                    if (!v35) {
                                                                        break;
                                                                    } else {
                                                                        v37 += 1;
                                                                        v35 = v35 >> 8;
                                                                    }
                                                                }
                                                                MEM8[v4 + 1 + 1 + v34] = v37 & 0xFF;
                                                                MEM[v4 + 1 + 1 + v34 + 1] = MEM[v4 + 1 + 1 + v34 + 1] & uint128.max << (32 - v37 << 3) | v36 << (32 - v37 << 3);
                                                                MEM8[v4 + 1 + 1 + v34 + v37 + 1] = uint8(v31.word4) & 0xFF;
                                                                return v4 + 1 + 1 + v34 + v37 + 1 + 1, 1 + (2 + v1 + 1 + (byte(MEM[2 + v1 + 1], 0x0)) + 1);
                                                            } else {
                                                                require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                if (v2 == 15) {
                                                                    v40 = 0x332b();
                                                                    v41 = 0x332b();
                                                                    v41.word0 = uint8(MEM[v1] >> 248);
                                                                    v41.word1 = uint8(MEM[v1 + 1] >> 248);
                                                                    v41.word2 = uint8(MEM[v1 + 2] >> 248);
                                                                    v41.word3 = uint8(MEM[3 + v1] >> 248);
                                                                    v41.word4 = MEM[3 + v1 + 1 + 1] >> (32 - (byte(MEM[3 + v1 + 1], 0x0)) << 3);
                                                                    v41.word5 = MEM[3 + v1 + 1 + (byte(MEM[3 + v1 + 1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[3 + v1 + 1 + (byte(MEM[3 + v1 + 1], 0x0)) + 1], 0x0)) << 3);
                                                                    v41.word6 = uint8(MEM[3 + v1 + 1 + (byte(MEM[3 + v1 + 1], 0x0)) + 1 + (byte(MEM[3 + v1 + 1 + (byte(MEM[3 + v1 + 1], 0x0)) + 1], 0x0)) + 1] >> 248);
                                                                    v42 = 0x41a4(v41.word4, varg2);
                                                                    v41.word4 = v42;
                                                                    v43 = 0x41a4(v41.word5, varg2);
                                                                    v41.word5 = v43;
                                                                    MEM8[v4] = uint8(v41.word0) & 0xFF;
                                                                    MEM8[v4 + 1] = uint8(v41.word1) & 0xFF;
                                                                    MEM8[v4 + 1 + 1] = uint8(v41.word2) & 0xFF;
                                                                    MEM8[v4 + 1 + 1 + 1] = uint8(v41.word3) & 0xFF;
                                                                    v44 = v45 = v41.word4;
                                                                    v46 = v47 = 32;
                                                                    v46 = v48 = 0;
                                                                    while (v46 < 32) {
                                                                        if (!v44) {
                                                                            break;
                                                                        } else {
                                                                            v46 += 1;
                                                                            v44 = v44 >> 8;
                                                                        }
                                                                    }
                                                                    MEM8[v4 + 1 + 1 + 1 + 1] = v46 & 0xFF;
                                                                    MEM[v4 + 1 + 1 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1 + 1] & uint128.max << (32 - v46 << 3) | v45 << (32 - v46 << 3);
                                                                    v49 = v50 = v41.word5;
                                                                    v51 = v52 = 32;
                                                                    v51 = v53 = 0;
                                                                    while (v51 < 32) {
                                                                        if (!v49) {
                                                                            break;
                                                                        } else {
                                                                            v51 += 1;
                                                                            v49 = v49 >> 8;
                                                                        }
                                                                    }
                                                                    MEM8[v4 + 1 + 1 + 1 + 1 + v46 + 1] = v51 & 0xFF;
                                                                    MEM[v4 + 1 + 1 + 1 + 1 + v46 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1 + v46 + 1 + 1] & uint128.max << (32 - v51 << 3) | v50 << (32 - v51 << 3);
                                                                    MEM8[v4 + 1 + 1 + 1 + 1 + v46 + 1 + v51 + 1] = uint8(v41.word6) & 0xFF;
                                                                    return v4 + 1 + 1 + 1 + 1 + v46 + 1 + v51 + 1 + 1, 3 + v1 + 1 + (byte(MEM[3 + v1 + 1], 0x0)) + 1 + (byte(MEM[3 + v1 + 1 + (byte(MEM[3 + v1 + 1], 0x0)) + 1], 0x0)) + 1 + 1;
                                                                } else {
                                                                    require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                    if (v2 != 16) {
                                                                        require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                        if (v2 != 17) {
                                                                            require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                            if (v2 == 18) {
                                                                                v54 = 0x3271();
                                                                                v55 = 0x3271();
                                                                                v55.word0 = uint8(MEM[v1] >> 248);
                                                                                v55.word1 = uint8(MEM[v1 + 1] >> 248);
                                                                                v55.word2 = MEM[v1 + 1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1], 0x0)) << 3);
                                                                                v55.word3 = MEM[v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1], 0x0)) << 3);
                                                                                v55.word4 = MEM[v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1], 0x0)) + 1] >> 248;
                                                                                v56 = 0x41a4(v55.word2, varg2);
                                                                                v55.word2 = v56;
                                                                                v57 = 0x41a4(v55.word3, varg2);
                                                                                v55.word3 = v57;
                                                                                MEM8[v4] = uint8(v55.word0) & 0xFF;
                                                                                MEM8[v4 + 1] = uint8(v55.word1) & 0xFF;
                                                                                v58 = v59 = v55.word2;
                                                                                v60 = v61 = 32;
                                                                                v60 = v62 = 0;
                                                                                while (v60 < 32) {
                                                                                    if (!v58) {
                                                                                        break;
                                                                                    } else {
                                                                                        v60 += 1;
                                                                                        v58 = v58 >> 8;
                                                                                    }
                                                                                }
                                                                                MEM8[v4 + 1 + 1] = v60 & 0xFF;
                                                                                MEM[v4 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1] & uint128.max << (32 - v60 << 3) | v59 << (32 - v60 << 3);
                                                                                v63 = v64 = v55.word3;
                                                                                v65 = v66 = 32;
                                                                                v65 = v67 = 0;
                                                                                while (v65 < 32) {
                                                                                    if (!v63) {
                                                                                        break;
                                                                                    } else {
                                                                                        v65 += 1;
                                                                                        v63 = v63 >> 8;
                                                                                    }
                                                                                }
                                                                                MEM8[v4 + 1 + 1 + v60 + 1] = v65 & 0xFF;
                                                                                MEM[v4 + 1 + 1 + v60 + 1 + 1] = MEM[v4 + 1 + 1 + v60 + 1 + 1] & uint128.max << (32 - v65 << 3) | v64 << (32 - v65 << 3);
                                                                                MEM8[v4 + 1 + 1 + v60 + 1 + v65 + 1] = uint8(v55.word4) & 0xFF;
                                                                                return v4 + 1 + 1 + v60 + 1 + v65 + 1 + 1, 1 + (v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1], 0x0)) + 1);
                                                                            } else {
                                                                                require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                if (v2 == 19) {
                                                                                    v68 = 0x3490();
                                                                                    v69 = 0x3490();
                                                                                    v69.word0 = uint8(MEM[v1] >> 248);
                                                                                    v69.word1 = uint8(MEM[v1 + 1] >> 248);
                                                                                    v69.word2 = uint8(MEM[v1 + 2] >> 248);
                                                                                    v69.word3 = uint8(MEM[v1 + 3] >> 248);
                                                                                    v69.word4 = MEM[4 + v1 + 1] >> (32 - (byte(MEM[4 + v1], 0x0)) << 3);
                                                                                    v69.word5 = MEM[4 + v1 + (byte(MEM[4 + v1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[4 + v1 + (byte(MEM[4 + v1], 0x0)) + 1], 0x0)) << 3);
                                                                                    v70 = 0x41a4(v69.word4, varg2);
                                                                                    v69.word4 = v70;
                                                                                    v71 = 0x41a4(v69.word5, varg2);
                                                                                    v69.word5 = v71;
                                                                                    MEM8[v4] = uint8(v69.word0) & 0xFF;
                                                                                    MEM8[v4 + 1] = uint8(v69.word1) & 0xFF;
                                                                                    MEM8[v4 + 1 + 1] = uint8(v69.word2) & 0xFF;
                                                                                    MEM8[v4 + 1 + 1 + 1] = uint8(v69.word3) & 0xFF;
                                                                                    v72 = v73 = v69.word4;
                                                                                    v74 = v75 = 32;
                                                                                    v74 = v76 = 0;
                                                                                    while (v74 < 32) {
                                                                                        if (!v72) {
                                                                                            break;
                                                                                        } else {
                                                                                            v74 += 1;
                                                                                            v72 = v72 >> 8;
                                                                                        }
                                                                                    }
                                                                                    MEM8[v4 + 1 + 1 + 1 + 1] = v74 & 0xFF;
                                                                                    MEM[v4 + 1 + 1 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1 + 1] & uint128.max << (32 - v74 << 3) | v73 << (32 - v74 << 3);
                                                                                    v77 = v78 = v69.word5;
                                                                                    v79 = v80 = 32;
                                                                                    v79 = v81 = 0;
                                                                                    while (v79 < 32) {
                                                                                        if (!v77) {
                                                                                            break;
                                                                                        } else {
                                                                                            v79 += 1;
                                                                                            v77 = v77 >> 8;
                                                                                        }
                                                                                    }
                                                                                    MEM8[v4 + 1 + 1 + 1 + 1 + v74 + 1] = v79 & 0xFF;
                                                                                    MEM[v4 + 1 + 1 + 1 + 1 + v74 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1 + v74 + 1 + 1] & uint128.max << (32 - v79 << 3) | v78 << (32 - v79 << 3);
                                                                                    return v4 + 1 + 1 + 1 + 1 + v74 + 1 + v79 + 1, 4 + v1 + (byte(MEM[4 + v1], 0x0)) + 1 + (byte(MEM[4 + v1 + (byte(MEM[4 + v1], 0x0)) + 1], 0x0)) + 1;
                                                                                } else {
                                                                                    require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                    if (v2 != 20) {
                                                                                        require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                        if (v2 == 21) {
                                                                                            v82 = v83 = 0;
                                                                                            while (v82 < 2) {
                                                                                                MEM[v3] = MEM[v0];
                                                                                                v3 = v3 + 32;
                                                                                                v0 = v0 + 32;
                                                                                                v82 = v82 + 1;
                                                                                            }
                                                                                            v84 = 0;
                                                                                            while (v84 < 10) {
                                                                                                MEM8[v3] = MEM[v0] >> 248 & 0xFF;
                                                                                                v3 = v3 + 1;
                                                                                                v0 = v0 + 1;
                                                                                                v84 = v84 + 1;
                                                                                            }
                                                                                            return v4 + 74, v1 + 74;
                                                                                        } else {
                                                                                            require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                            if (v2 != 22) {
                                                                                                require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                if (v2 == 23) {
                                                                                                    v85 = v86 = 0;
                                                                                                    while (v85 < 2) {
                                                                                                        MEM8[v3] = MEM[v0] >> 248 & 0xFF;
                                                                                                        v3 = v3 + 1;
                                                                                                        v0 = v0 + 1;
                                                                                                        v85 = v85 + 1;
                                                                                                    }
                                                                                                    return v4 + 2, v1 + 2;
                                                                                                } else {
                                                                                                    require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                    if (v2 != 24) {
                                                                                                        require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                        if (v2 != 25) {
                                                                                                            require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                            if (v2 == 26) {
                                                                                                                v87 = 0x3192();
                                                                                                                v88 = 0x3192();
                                                                                                                v88.word0 = uint8(MEM[v1] >> 248);
                                                                                                                v88.word1 = uint8(MEM[v1 + 1] >> 248);
                                                                                                                v88.word2 = MEM[v1 + 1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1], 0x0)) << 3);
                                                                                                                v88.word3 = MEM[v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1] >> 248;
                                                                                                                v89 = 0x41a4(v88.word2, varg2);
                                                                                                                v88.word2 = v89;
                                                                                                                MEM8[v4] = uint8(v88.word0) & 0xFF;
                                                                                                                MEM8[v4 + 1] = uint8(v88.word1) & 0xFF;
                                                                                                                v90 = v91 = v88.word2;
                                                                                                                v92 = v93 = 32;
                                                                                                                v92 = v94 = 0;
                                                                                                                while (v92 < 32) {
                                                                                                                    if (!v90) {
                                                                                                                        break;
                                                                                                                    } else {
                                                                                                                        v92 += 1;
                                                                                                                        v90 = v90 >> 8;
                                                                                                                    }
                                                                                                                }
                                                                                                                MEM8[v4 + 1 + 1] = v92 & 0xFF;
                                                                                                                MEM[v4 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1] & uint128.max << (32 - v92 << 3) | v91 << (32 - v92 << 3);
                                                                                                                MEM8[v4 + 1 + 1 + v92 + 1] = uint8(v88.word3) & 0xFF;
                                                                                                                return v4 + 1 + 1 + v92 + 1 + 1, 1 + (v1 + 1 + 1 + (byte(MEM[v1 + 1 + 1], 0x0)) + 1);
                                                                                                            } else {
                                                                                                                require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                if (v2 == 27) {
                                                                                                                    v95 = v96 = 0x13acc;
                                                                                                                    v95 = v97 = 0x146b6;
                                                                                                                    v95 = v98 = 16116;
                                                                                                                    v95 = v99 = 192;
                                                                                                                    v95 = v100 = 16108;
                                                                                                                    v95 = v101 = 16093;
                                                                                                                    v95 = v102 = 16070;
                                                                                                                    v95 = v103 = 0x146dd;
                                                                                                                    v104 = 0x367e();
                                                                                                                    v95 = v105 = 0x367e();
                                                                                                                    v105.word0 = uint8(MEM[v1] >> 248);
                                                                                                                    v105.word1 = uint8(MEM[v1 + 1] >> 248);
                                                                                                                    v105.word2 = uint8(MEM[v1 + 1 + 1] >> 248);
                                                                                                                    v105.word3 = uint24(MEM[v1 + 1 + 1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1 + 1], 0x0)) << 3));
                                                                                                                    v105.word4 = int24(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) << 3));
                                                                                                                    v105.word5 = uint8(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1] >> 248);
                                                                                                                    v105.word6 = bool(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1] >> 248);
                                                                                                                    v95 = v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1], 0x0)) + 1;
                                                                                                                    v105.word7 = MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1], 0x0)) << 3);
                                                                                                                    v95 = v106 = v105 + 224;
                                                                                                                    v107 = 0x41a4(v105.word7, varg2);
                                                                                                                    v105.word7 = v107;
                                                                                                                    MEM8[v4] = uint8(v105.word0) & 0xFF;
                                                                                                                    MEM8[v4 + 1] = uint8(v105.word1) & 0xFF;
                                                                                                                    MEM8[v4 + 1 + 1] = uint8(v105.word2) & 0xFF;
                                                                                                                    v108 = v4 + 1 + 1 + 1;
                                                                                                                    v109 = v110 = uint24(v105.word3);
                                                                                                                    while (1) {
                                                                                                                        while (1) {
                                                                                                                            v111 = 32;
                                                                                                                            v111 = v112 = 0;
                                                                                                                            while (v111 < 32) {
                                                                                                                                if (!v109) {
                                                                                                                                    break;
                                                                                                                                } else {
                                                                                                                                    v111 += 1;
                                                                                                                                    v109 = v109 >> 8;
                                                                                                                                }
                                                                                                                            }
                                                                                                                            MEM8[v108] = v111 & 0xFF;
                                                                                                                            MEM[v108 + 1] = MEM[v108 + 1] & uint128.max << (32 - v111 << 3) | v109 << (32 - v111 << 3);
                                                                                                                            v108 = v108 + v111 + 1;
                                                                                                                            // Unknown jump to Block ['0x146ddB0x2e23', '0x3ec6B0x2e23', '0x3eddB0x2e23']. Refer to 3-address code (TAC);
                                                                                                                            MEM8[v108] = uint8(MEM[v95 + 160]) & 0xFF;
                                                                                                                            v113 = v114 = 1;
                                                                                                                            if (bool(!MEM[v95 + v95])) {
                                                                                                                                v113 = v115 = 0;
                                                                                                                            }
                                                                                                                            MEM8[v108 + 1] = uint8(v113) & 0xFF;
                                                                                                                            v108 = v108 + 1 + v114;
                                                                                                                            v109 = v116 = MEM[v95];
                                                                                                                        }
                                                                                                                        v109 = v117 = int24(MEM[v95 + 128]);
                                                                                                                    }
                                                                                                                    return v108, v95, v95, v95, v95, v95, v95, v95, v95;
                                                                                                                } else {
                                                                                                                    require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                    if (v2 == 28) {
                                                                                                                        v118 = 0x3490();
                                                                                                                        v119 = 0x3490();
                                                                                                                        v119.word0 = uint8(MEM[v1] >> 248);
                                                                                                                        v119.word1 = uint8(MEM[v1 + 1] >> 248);
                                                                                                                        v119.word2 = uint8(MEM[v1 + 2] >> 248);
                                                                                                                        v119.word3 = uint8(MEM[v1 + 3] >> 248);
                                                                                                                        v119.word4 = uint8(MEM[4 + v1] >> 248);
                                                                                                                        v119.word5 = MEM[4 + v1 + 1 + 1] >> (32 - (byte(MEM[4 + v1 + 1], 0x0)) << 3);
                                                                                                                        v120 = 0x41a4(v119.word5, varg2);
                                                                                                                        v119.word5 = v120;
                                                                                                                        MEM8[v4] = uint8(v119.word0) & 0xFF;
                                                                                                                        MEM8[v4 + 1] = uint8(v119.word1) & 0xFF;
                                                                                                                        MEM8[v4 + 1 + 1] = uint8(v119.word2) & 0xFF;
                                                                                                                        MEM8[v4 + 1 + 1 + 1] = uint8(v119.word3) & 0xFF;
                                                                                                                        MEM8[v4 + 1 + 1 + 1 + 1] = uint8(v119.word4) & 0xFF;
                                                                                                                        v121 = v122 = v119.word5;
                                                                                                                        v123 = v124 = 32;
                                                                                                                        v123 = v125 = 0;
                                                                                                                        while (v123 < 32) {
                                                                                                                            if (!v121) {
                                                                                                                                break;
                                                                                                                            } else {
                                                                                                                                v123 += 1;
                                                                                                                                v121 = v121 >> 8;
                                                                                                                            }
                                                                                                                        }
                                                                                                                        MEM8[v4 + 1 + 1 + 1 + 1 + 1] = v123 & 0xFF;
                                                                                                                        MEM[v4 + 1 + 1 + 1 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1 + 1 + 1] & uint128.max << (32 - v123 << 3) | v122 << (32 - v123 << 3);
                                                                                                                        return v4 + 1 + 1 + 1 + 1 + 1 + v123 + 1, 4 + v1 + 1 + (byte(MEM[4 + v1 + 1], 0x0)) + 1;
                                                                                                                    } else {
                                                                                                                        require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                        if (v2 != 29) {
                                                                                                                            require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                            if (v2 == 30) {
                                                                                                                                v126 = 0x3271();
                                                                                                                                v127 = 0x3271();
                                                                                                                                v127.word0 = uint8(MEM[v1] >> 248);
                                                                                                                                v127.word1 = uint8(MEM[v1 + 1] >> 248);
                                                                                                                                v127.word2 = uint8(MEM[v1 + 1 + 1] >> 248);
                                                                                                                                v127.word3 = uint8(MEM[v1 + 1 + 1 + 1] >> 248);
                                                                                                                                v127.word4 = MEM[v1 + 1 + 1 + 1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1 + 1 + 1], 0x0)) << 3);
                                                                                                                                v128 = 0x41a4(v127.word4, varg2);
                                                                                                                                v127.word4 = v128;
                                                                                                                                MEM8[v4] = uint8(v127.word0) & 0xFF;
                                                                                                                                MEM8[v4 + 1] = uint8(v127.word1) & 0xFF;
                                                                                                                                MEM8[v4 + 1 + 1] = uint8(v127.word2) & 0xFF;
                                                                                                                                MEM8[v4 + 1 + 1 + 1] = uint8(v127.word3) & 0xFF;
                                                                                                                                v129 = v130 = v127.word4;
                                                                                                                                v131 = v132 = 32;
                                                                                                                                v131 = v133 = 0;
                                                                                                                                while (v131 < 32) {
                                                                                                                                    if (!v129) {
                                                                                                                                        break;
                                                                                                                                    } else {
                                                                                                                                        v131 += 1;
                                                                                                                                        v129 = v129 >> 8;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                MEM8[v4 + 1 + 1 + 1 + 1] = v131 & 0xFF;
                                                                                                                                MEM[v4 + 1 + 1 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1 + 1] & uint128.max << (32 - v131 << 3) | v130 << (32 - v131 << 3);
                                                                                                                                return v4 + 1 + 1 + 1 + 1 + v131 + 1, v1 + 1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1 + 1], 0x0)) + 1;
                                                                                                                            } else {
                                                                                                                                require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                                if (v2 != 31) {
                                                                                                                                    require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                                    if (v2 != 32) {
                                                                                                                                        require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                                        if (v2 != 33) {
                                                                                                                                            require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                                            if (v2 != 34) {
                                                                                                                                                require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                                                if (v2 == 35) {
                                                                                                                                                    v134 = 0x3fe6();
                                                                                                                                                    v135 = 0x3fe6();
                                                                                                                                                    v135.word0 = MEM[v1] >> 248;
                                                                                                                                                    v135.word1 = MEM[v1 + 1] >> 248;
                                                                                                                                                    v135.word2 = MEM[v1 + 2] >> 248;
                                                                                                                                                    v135.word3 = MEM[v1 + 3] >> 248;
                                                                                                                                                    v135.word4 = MEM[v1 + 4] >> 248;
                                                                                                                                                    v135.word5 = uint8(MEM[v1 + 5] >> 248);
                                                                                                                                                    v135.word6 = MEM[6 + v1 + 1] >> (32 - (byte(MEM[6 + v1], 0x0)) << 3);
                                                                                                                                                    v136 = 6 + v1 + (byte(MEM[6 + v1], 0x0)) + 1 + (byte(MEM[6 + v1 + (byte(MEM[6 + v1], 0x0)) + 1], 0x0)) + 1;
                                                                                                                                                    v135.word7 = MEM[6 + v1 + (byte(MEM[6 + v1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[6 + v1 + (byte(MEM[6 + v1], 0x0)) + 1], 0x0)) << 3);
                                                                                                                                                    v135.word8 = MEM[v136 + 1] >> (32 - (byte(MEM[v136], 0x0)) << 3);
                                                                                                                                                    v135.word9 = MEM[v136 + (byte(MEM[v136], 0x0)) + 1 + 1] >> (32 - (byte(MEM[v136 + (byte(MEM[v136], 0x0)) + 1], 0x0)) << 3);
                                                                                                                                                    v137 = 0x41a4(MEM[6 + v1 + (byte(MEM[6 + v1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[6 + v1 + (byte(MEM[6 + v1], 0x0)) + 1], 0x0)) << 3), varg2);
                                                                                                                                                    v135.word7 = v137;
                                                                                                                                                    v138 = v139 = 0x149ac;
                                                                                                                                                    v138 = v140 = 0x149d4;
                                                                                                                                                    MEM8[v4] = uint8(v135.word0) & 0xFF;
                                                                                                                                                    MEM8[v4 + 1] = uint8(v135.word1) & 0xFF;
                                                                                                                                                    MEM8[v4 + 1 + 1] = uint8(v135.word2) & 0xFF;
                                                                                                                                                    MEM8[v4 + 1 + 1 + 1] = uint8(v135.word3) & 0xFF;
                                                                                                                                                    MEM8[v4 + 1 + 1 + 1 + 1] = uint8(v135.word4) & 0xFF;
                                                                                                                                                    MEM8[v4 + 1 + 1 + 1 + 1 + 1] = uint8(v135.word5) & 0xFF;
                                                                                                                                                    v141 = v142 = v135.word6;
                                                                                                                                                    v143 = v144 = 32;
                                                                                                                                                    v143 = v145 = 0;
                                                                                                                                                    while (v143 < 32) {
                                                                                                                                                        if (!v141) {
                                                                                                                                                            break;
                                                                                                                                                        } else {
                                                                                                                                                            v143 += 1;
                                                                                                                                                            v141 = v141 >> 8;
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    MEM8[v4 + 1 + 1 + 1 + 1 + 1 + 1] = v143 & 0xFF;
                                                                                                                                                    MEM[v4 + 1 + 1 + 1 + 1 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1 + 1 + 1 + 1] & uint128.max << (32 - v143 << 3) | v142 << (32 - v143 << 3);
                                                                                                                                                    v146 = v147 = v135.word7;
                                                                                                                                                    v148 = v149 = 32;
                                                                                                                                                    v148 = v150 = 0;
                                                                                                                                                    while (v148 < 32) {
                                                                                                                                                        if (!v146) {
                                                                                                                                                            break;
                                                                                                                                                        } else {
                                                                                                                                                            v148 += 1;
                                                                                                                                                            v146 = v146 >> 8;
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    MEM8[v4 + 1 + 1 + 1 + 1 + 1 + 1 + v143 + 1] = v148 & 0xFF;
                                                                                                                                                    MEM[v4 + 1 + 1 + 1 + 1 + 1 + 1 + v143 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1 + 1 + 1 + v143 + 1 + 1] & uint128.max << (32 - v148 << 3) | v147 << (32 - v148 << 3);
                                                                                                                                                    v151 = v4 + 1 + 1 + 1 + 1 + 1 + 1 + v143 + 1 + v148 + 1;
                                                                                                                                                    v152 = v153 = v135.word8;
                                                                                                                                                    while (1) {
                                                                                                                                                        v154 = 32;
                                                                                                                                                        v154 = v155 = 0;
                                                                                                                                                        while (v154 < 32) {
                                                                                                                                                            if (!v152) {
                                                                                                                                                                break;
                                                                                                                                                            } else {
                                                                                                                                                                v154 += 1;
                                                                                                                                                                v152 = v152 >> 8;
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        MEM8[v151] = v154 & 0xFF;
                                                                                                                                                        MEM[v151 + 1] = MEM[v151 + 1] & uint128.max << (32 - v154 << 3) | v152 << (32 - v154 << 3);
                                                                                                                                                        v151 = v151 + v154 + 1;
                                                                                                                                                        // Unknown jump to Block ['0x149acB0x4137B0x2ddd', '0x149d4B0x4137B0x2ddd']. Refer to 3-address code (TAC);
                                                                                                                                                        v152 = v156 = v135.word9;
                                                                                                                                                    }
                                                                                                                                                    return v151, v140, 0x139fa, v136 + (byte(MEM[v136], 0x0)) + 1 + (byte(MEM[v136 + (byte(MEM[v136], 0x0)) + 1], 0x0)) + 1, v157;
                                                                                                                                                } else {
                                                                                                                                                    require(37 > v2, Panic(33)); // failed convertion to enum type
                                                                                                                                                    if (v2 == 36) {
                                                                                                                                                        v158 = v159 = 0;
                                                                                                                                                        while (v158 < 1) {
                                                                                                                                                            MEM[v3] = MEM[v0];
                                                                                                                                                            v0 += 32;
                                                                                                                                                            v3 = v3 + 32;
                                                                                                                                                            v158 += 1;
                                                                                                                                                        }
                                                                                                                                                        v160 = v161 = 0;
                                                                                                                                                        while (v160 < 6) {
                                                                                                                                                            MEM8[v3] = MEM[v0] >> 248 & 0xFF;
                                                                                                                                                            v3 = v3 + 1;
                                                                                                                                                            v0 = v0 + 1;
                                                                                                                                                            v160 = v160 + 1;
                                                                                                                                                        }
                                                                                                                                                        return v4 + 38, v1 + 38;
                                                                                                                                                    } else {
                                                                                                                                                        require(37 <= v2, uint8(v2));
                                                                                                                                                        revert(Panic(33));
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    v162 = 0x332b();
                                                                                                                                    v163 = 0x332b();
                                                                                                                                    v163.word0 = uint8(MEM[v1] >> 248);
                                                                                                                                    v163.word1 = uint8(MEM[v1 + 1] >> 248);
                                                                                                                                    v163.word2 = uint8(MEM[v1 + 1 + 1] >> 248);
                                                                                                                                    v163.word3 = MEM[v1 + 1 + 1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1 + 1], 0x0)) << 3);
                                                                                                                                    v163.word4 = MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + 1] >> (32 - (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) << 3);
                                                                                                                                    v163.word5 = uint8(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1] >> 248);
                                                                                                                                    require(uint8(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1] >> 248) < 4, Panic(33)); // failed convertion to enum type
                                                                                                                                    require(uint8(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1] >> 248) < 4, Panic(33)); // failed convertion to enum type
                                                                                                                                    v163.word6 = uint8(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1] >> 248);
                                                                                                                                    v164 = 0x41a4(v163.word3, varg2);
                                                                                                                                    v163.word3 = v164;
                                                                                                                                    v165 = 0x41a4(v163.word4, varg2);
                                                                                                                                    v163.word4 = v165;
                                                                                                                                    MEM8[v4] = uint8(v163.word0) & 0xFF;
                                                                                                                                    MEM8[v4 + 1] = uint8(v163.word1) & 0xFF;
                                                                                                                                    MEM8[v4 + 1 + 1] = uint8(v163.word2) & 0xFF;
                                                                                                                                    v166 = v167 = v163.word4;
                                                                                                                                    v168 = v169 = 32;
                                                                                                                                    v168 = v170 = 0;
                                                                                                                                    while (v168 < 32) {
                                                                                                                                        if (!v166) {
                                                                                                                                            break;
                                                                                                                                        } else {
                                                                                                                                            v168 += 1;
                                                                                                                                            v166 = v166 >> 8;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    MEM8[v4 + 1 + 1 + 1] = v168 & 0xFF;
                                                                                                                                    MEM[v4 + 1 + 1 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + 1] & uint128.max << (32 - v168 << 3) | v167 << (32 - v168 << 3);
                                                                                                                                    v171 = v172 = v163.word3;
                                                                                                                                    v173 = v174 = 32;
                                                                                                                                    v173 = v175 = 0;
                                                                                                                                    while (v173 < 32) {
                                                                                                                                        if (!v171) {
                                                                                                                                            break;
                                                                                                                                        } else {
                                                                                                                                            v173 += 1;
                                                                                                                                            v171 = v171 >> 8;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    MEM8[v4 + 1 + 1 + 1 + v168 + 1] = v173 & 0xFF;
                                                                                                                                    MEM[v4 + 1 + 1 + 1 + v168 + 1 + 1] = MEM[v4 + 1 + 1 + 1 + v168 + 1 + 1] & uint128.max << (32 - v173 << 3) | v172 << (32 - v173 << 3);
                                                                                                                                    MEM8[v4 + 1 + 1 + 1 + v168 + 1 + v173 + 1] = uint8(v163.word5) & 0xFF;
                                                                                                                                    if (v163.word6 < 4) {
                                                                                                                                        if (v163.word6 < 4) {
                                                                                                                                            MEM8[v4 + 1 + 1 + 1 + v168 + 1 + v173 + 1 + 1] = uint8(v163.word6) & 0xFF;
                                                                                                                                            return v4 + 1 + 1 + 1 + v168 + 1 + v173 + 1 + 1 + 1, v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1 + (byte(MEM[v1 + 1 + 1 + 1 + (byte(MEM[v1 + 1 + 1 + 1], 0x0)) + 1], 0x0)) + 1 + 1 + 1;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    revert(Panic(33));
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            v176 = v177 = 0;
                                                                                            while (v176 < 1) {
                                                                                                MEM8[v3] = MEM[v0] >> 248 & 0xFF;
                                                                                                v3 = v3 + 1;
                                                                                                v0 = v0 + 1;
                                                                                                v176 = v176 + 1;
                                                                                            }
                                                                                            return v4 + 1, v1 + 1;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        v178 = 0x187a();
                                                        v179 = 0x187a();
                                                        v179.word0 = MEM[v1] >> 248;
                                                        v179.word1 = bool(MEM[v1 + 1] >> 248);
                                                        v179.word2 = MEM[2 + v1 + 1] >> (32 - (byte(MEM[2 + v1], 0x0)) << 3);
                                                        v180 = 0x41a4(v179.word2, varg2);
                                                        v179.word2 = v180;
                                                        MEM8[v4] = uint8(v179.word0) & 0xFF;
                                                        v181 = v182 = 1;
                                                        if (bool(!v179.word1)) {
                                                            v181 = 0;
                                                        }
                                                        MEM8[v4 + 1] = uint8(v181) & 0xFF;
                                                        v183 = v184 = v179.word2;
                                                        v185 = v186 = 32;
                                                        v185 = v187 = 0;
                                                        while (v185 < 32) {
                                                            if (!v183) {
                                                                break;
                                                            } else {
                                                                v185 += 1;
                                                                v183 = v183 >> 8;
                                                            }
                                                        }
                                                        MEM8[v4 + 1 + v182] = v185 & 0xFF;
                                                        MEM[v4 + 1 + v182 + 1] = MEM[v4 + 1 + v182 + 1] & uint128.max << (32 - v185 << 3) | v184 << (32 - v185 << 3);
                                                        return v4 + 1 + v182 + v185 + 1, 2 + v1 + (byte(MEM[2 + v1], 0x0)) + 1;
                                                    }
                                                    v188 = 0x3192();
                                                    v189 = 0x3192();
                                                    v189.word0 = MEM[v1] >> 248;
                                                    v189.word1 = bool(MEM[v1 + 1] >> 248);
                                                    v189.word2 = MEM[2 + v1 + 1] >> (32 - (byte(MEM[2 + v1], 0x0)) << 3);
                                                    v189.word3 = MEM[2 + v1 + (byte(MEM[2 + v1], 0x0)) + 1] >> 248;
                                                    v190 = 0x41a4(v189.word2, varg2);
                                                    v189.word2 = v190;
                                                    MEM8[v4] = uint8(v189.word0) & 0xFF;
                                                    v191 = v192 = 1;
                                                    if (bool(!v189.word1)) {
                                                        v191 = 0;
                                                    }
                                                    MEM8[v4 + 1] = uint8(v191) & 0xFF;
                                                    v193 = v194 = v189.word2;
                                                    v195 = v196 = 32;
                                                    v195 = v197 = 0;
                                                    while (v195 < 32) {
                                                        if (!v193) {
                                                            break;
                                                        } else {
                                                            v195 += 1;
                                                            v193 = v193 >> 8;
                                                        }
                                                    }
                                                    MEM8[v4 + 1 + v192] = v195 & 0xFF;
                                                    MEM[v4 + 1 + v192 + 1] = MEM[v4 + 1 + v192 + 1] & uint128.max << (32 - v195 << 3) | v194 << (32 - v195 << 3);
                                                    MEM8[v4 + 1 + v192 + v195 + 1] = uint8(v189.word3) & 0xFF;
                                                    return v4 + 1 + v192 + v195 + 1 + 1, 1 + (2 + v1 + (byte(MEM[2 + v1], 0x0)) + 1);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            0x4229(v4, v1);
                            return v4 + 6, v1 + 6;
                        }
                        v198 = v199 = 0;
                        while (v198 < 5) {
                            MEM8[v3] = MEM[v0] >> 248 & 0xFF;
                            v3 = v3 + 1;
                            v0 = v0 + 1;
                            v198 = v198 + 1;
                        }
                        return v4 + 5, v1 + 5;
                    }
                }
                v200 = 0x2ff6();
                v201 = 0x2ff6();
                v201.word0 = uint8(MEM[v1] >> 248);
                v201.word1 = MEM[v1 + 1 + 1] >> (32 - (byte(MEM[v1 + 1], 0x0)) << 3);
                v202 = 0x41a4(v201.word1, varg2);
                v201.word1 = v202;
                MEM8[v4] = uint8(v201.word0) & 0xFF;
                v203 = v204 = v201.word1;
                v205 = v206 = 32;
                v205 = v207 = 0;
                while (v205 < 32) {
                    if (!v203) {
                        break;
                    } else {
                        v205 += 1;
                        v203 = v203 >> 8;
                    }
                }
                MEM8[v4 + 1] = v205 & 0xFF;
                MEM[v4 + 1 + 1] = MEM[v4 + 1 + 1] & uint128.max << (32 - v205 << 3) | v204 << (32 - v205 << 3);
                return v4 + 1 + v205 + 1, v1 + 1 + (byte(MEM[v1 + 1], 0x0)) + 1;
            }
        }
    }
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function acceptOwnership() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(_pendingOwner - msg.sender), OwnableUnauthorizedAccount(msg.sender));
    _pendingOwner = 0;
    _owner = msg.sender;
    emit OwnershipTransferred(_owner, msg.sender);
}

function 0x7499a84b(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(varg0 + varg0.length * 96 + 36 <= msg.data.length);
    v0 = v1 = msg.sender == _withdrawer;
    if (msg.sender != _withdrawer) {
        v0 = v2 = msg.sender == _owner;
    }
    require(v0, msg.sender);
    v3 = v4 = 0;
    while (1) {
        if (v3 >= varg0.length) {
            exit;
        } else {
            require(!(address(varg0[v3]) - varg0[v3]));
            require(!(address(msg.data[varg0.data + v3 * 96 + 32]) - msg.data[varg0.data + v3 * 96 + 32]));
            require(!bool(!address(varg0[v3])), 0);
            require(!bool(!address(msg.data[varg0.data + v3 * 96 + 32])), 0);
            require(!bool(!msg.data[varg0.data + v3 * 96 + 64]), msg.data[varg0.data + v3 * 96 + 64]);
            v5 = new bytes[](68);
            MEM[v5.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v5 + 36] = address(msg.data[varg0.data + v3 * 96 + 32]);
            MEM[v5 + 68] = msg.data[varg0.data + v3 * 96 + 64];
            require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
            v6 = v5.length;
            v7 = varg0[v3].transfer(address(msg.data[varg0.data + v3 * 96 + 32]), msg.data[varg0.data + v3 * 96 + 64]).gas(msg.gas);
            require(v7, MEM[64], RETURNDATASIZE());
            if (RETURNDATASIZE()) {
                v8 = v9 = 1 != MEM[0];
            } else {
                v8 = !(address(varg0[v3])).code.size;
            }
            require(!v8, SafeERC20FailedOperation(address(varg0[v3])));
            v3 = v3 + 1;
        }
    }
}

function 0x72607864(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    require(_operators[msg.sender], msg.sender);
    0x207b(v0);
}

function renounceOwnership() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _pendingOwner = 0;
    _owner = 0;
    emit OwnershipTransferred(_owner, 0);
}

function 0x6515bf42(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(bool(varg1) - varg1));
    require(!(address(varg4) - varg4));
    require(_operators[msg.sender], msg.sender);
    v0 = 0;
    v1 = 0;
    while (v1 < varg0.length) {
        require(v1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v1] < msg.data.length - varg0.data - 63);
        require(msg.data[varg0.data + varg0[v1]] < msg.data.length - (varg0.data + varg0[v1]) - 223);
        v2 = varg0.data + varg0[v1] + msg.data[varg0.data + varg0[v1]];
        require(msg.data[v2] < msg.data.length - v2 - 31);
        require(msg.data[v2 + msg.data[v2]] <= uint64.max);
        require(32 + (v2 + msg.data[v2]) <= msg.data.length - msg.data[v2 + msg.data[v2]]);
        require(!(bool(msg.data[v2 + 64]) - msg.data[v2 + 64]));
        require(!(bool(msg.data[v2 + 128]) - msg.data[v2 + 128]));
        v3 = v4 = msg.data[v2 + 160];
        require(!(bool(v4) - v4));
        require(msg.data[v2 + 192] < msg.data.length - v2 - 31);
        require(msg.data[v2 + msg.data[v2 + 192]] <= uint64.max);
        require(32 + (v2 + msg.data[v2 + 192]) <= msg.data.length - msg.data[v2 + msg.data[v2 + 192]]);
        v5 = 0x187a();
        if (!msg.data[v2 + 32]) {
            v6 = v7 = 0xa80();
            v7.word0 = 0;
            v7.word1 = msg.data[v2 + 96];
            v7.word2 = 0;
        } else {
            if (!msg.data[v2 + 128]) {
                MEM[MEM[64]] = 0x5589a91800000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 128;
                MEM[MEM[64] + 4 + 128] = msg.data[v2 + msg.data[v2]];
                CALLDATACOPY(MEM[64] + 4 + 128 + 32, 32 + (v2 + msg.data[v2]), msg.data[v2 + msg.data[v2]]);
                MEM[MEM[64] + 4 + 128 + msg.data[v2 + msg.data[v2]] + 32] = 0;
                MEM[MEM[64] + 4 + 32] = msg.data[v2 + 32];
                MEM[MEM[64] + 4 + 64] = msg.data[v2 + 96];
                MEM[MEM[64] + 4 + 96] = bool(msg.data[v2 + 64]);
                v8 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(v9, MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (v8) {
                    v10 = v11 = 0;
                    if (v8) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x5589a91800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v12.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = new uint256[](v12.length);
                        require(!((v10 + (32 + (v12.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (v12.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                        v13 = v14 = v10.data;
                        require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v12.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
                        v15 = v16 = v12.data;
                        while (v15 < MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v12.length << 6) + 32) {
                            require(MEM[64] + RETURNDATASIZE() - v15 >= 64);
                            v17 = new struct(2);
                            require(!((v17 + 64 > uint64.max) | (v17 + 64 < v17)), Panic(65)); // failed memory allocation (too much memory)
                            v17.word0 = MEM[v15];
                            v17.word1 = MEM[v15 + 32];
                            MEM[v13] = v17;
                            v13 = v13 + 32;
                            v15 = v15 + 64;
                        }
                    }
                }
            } else {
                MEM[MEM[64]] = 0x96f5d98100000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 96;
                MEM[MEM[64] + 4 + 96] = msg.data[v2 + msg.data[v2]];
                CALLDATACOPY(MEM[64] + 4 + 96 + 32, 32 + (v2 + msg.data[v2]), msg.data[v2 + msg.data[v2]]);
                MEM[MEM[64] + 4 + 96 + msg.data[v2 + msg.data[v2]] + 32] = 0;
                MEM[MEM[64] + 4 + 32] = msg.data[v2 + 32];
                MEM[MEM[64] + 4 + 64] = msg.data[v2 + 96];
                v18 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(v9, MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (v18) {
                    v10 = v19 = 0;
                    if (v18) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x96f5d98100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v20.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = v21 = new uint256[](v20.length);
                        require(!((v21 + (32 + (v20.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (v20.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
                        v22 = v23 = v21.data;
                        require(MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + (v20.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
                        v24 = v25 = v20.data;
                        while (v24 < MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + (v20.length << 6) + 32) {
                            require(MEM[64] + RETURNDATASIZE() - v24 >= 64);
                            v26 = new struct(2);
                            require(!((v26 + 64 > uint64.max) | (v26 + 64 < v26)), Panic(65)); // failed memory allocation (too much memory)
                            v26.word0 = MEM[v24];
                            v26.word1 = MEM[v24 + 32];
                            MEM[v22] = v26;
                            v22 = v22 + 32;
                            v24 = v24 + 64;
                        }
                    }
                }
            }
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
            require(MEM[v10], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(MEM[v10] - 1 < MEM[v10], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v27 = v28 = !MEM[MEM[32 + v10]];
            if (bool(MEM[MEM[32 + v10]])) {
                v27 = v29 = !MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32];
            }
            if (v27) {
                v6 = v30 = 0xa80();
                v30.word0 = 0;
                v30.word1 = MEM[MEM[32 + v10]];
                v30.word2 = MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32];
            } else {
                if (v4) {
                    v3 = v31 = MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32] <= MEM[MEM[32 + v10]];
                }
                if (v3) {
                    v6 = 0xa80();
                    v6.word0 = 0;
                    v6.word1 = MEM[MEM[32 + v10]];
                    v6.word2 = MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32];
                } else {
                    0x263a(v1, v10, 32 + (v2 + msg.data[v2 + 192]), msg.data[v2 + msg.data[v2 + 192]]);
                    v6 = v32 = 0xa80();
                    v32.word0 = 1;
                    v32.word1 = MEM[MEM[32 + v10]];
                    v32.word2 = MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32];
                }
            }
        }
        if (varg1) {
            v33 = bool(!MEM[v6]);
            break;
        }
        if (v33) {
            break;
        } else {
            if (MEM[v6]) {
                require(MEM[v6 + 64] >= MEM[v6 + 32]);
                require(v1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(varg0[v1] < msg.data.length - varg0.data - 63);
                require(msg.data[varg0.data + varg0[v1] + 32], Panic(18)); // division by zero
                v0 += (MEM[v6 + 64] - MEM[v6 + 32]) * 10 ** 18 / msg.data[varg0.data + varg0[v1] + 32];
            }
            v1 += 1;
        }
    }
    v34 = 0x2233(v0, varg2, varg5);
    require(v34);
    0x2297(varg4, v34 * varg3 / 10 ** 18);
}

function withdrawTokens(address token, address to, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    v0 = v1 = msg.sender == _withdrawer;
    if (msg.sender != _withdrawer) {
        v0 = v2 = msg.sender == _owner;
    }
    require(v0, msg.sender);
    require(!bool(!token), 0);
    require(!bool(!to), 0);
    require(!bool(!amount), amount);
    v3 = new bytes[](68);
    MEM[v3.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v3 + 36] = to;
    MEM[v3 + 68] = amount;
    require(!((v3 + 128 > uint64.max) | (v3 + 128 < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v3.length;
    v5 = token.transfer(to, amount).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (RETURNDATASIZE()) {
        v6 = v7 = 1 != MEM[0];
    } else {
        v6 = !token.code.size;
    }
    require(!v6, SafeERC20FailedOperation(token));
}

function 0x4e82cac3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(bool(varg1) - varg1));
    require(!(address(varg4) - varg4));
    require(_operators[msg.sender], msg.sender);
    v0 = 0;
    v1 = 0;
    while (v1 < varg0.length) {
        require(v1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v1] < msg.data.length - varg0.data - 63);
        require(msg.data[varg0.data + varg0[v1]] < msg.data.length - (varg0.data + varg0[v1]) - 223);
        v2 = varg0.data + varg0[v1] + msg.data[varg0.data + varg0[v1]];
        require(msg.data[v2] < msg.data.length - v2 - 31);
        require(msg.data[v2 + msg.data[v2]] <= uint64.max);
        require(32 + (v2 + msg.data[v2]) <= msg.data.length - msg.data[v2 + msg.data[v2]]);
        require(!(bool(msg.data[v2 + 64]) - msg.data[v2 + 64]));
        require(!(bool(msg.data[v2 + 128]) - msg.data[v2 + 128]));
        v3 = v4 = msg.data[v2 + 160];
        require(!(bool(v4) - v4));
        require(msg.data[v2 + 192] < msg.data.length - v2 - 31);
        require(msg.data[v2 + msg.data[v2 + 192]] <= uint64.max);
        require(32 + (v2 + msg.data[v2 + 192]) <= msg.data.length - msg.data[v2 + msg.data[v2 + 192]]);
        v5 = 0x187a();
        if (!msg.data[v2 + 32]) {
            v6 = v7 = 0xa80();
            v7.word0 = 0;
            v7.word1 = msg.data[v2 + 96];
            v7.word2 = 0;
        } else {
            if (!msg.data[v2 + 128]) {
                MEM[MEM[64]] = 0x5589a91800000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 128;
                MEM[MEM[64] + 4 + 128] = msg.data[v2 + msg.data[v2]];
                CALLDATACOPY(MEM[64] + 4 + 128 + 32, 32 + (v2 + msg.data[v2]), msg.data[v2 + msg.data[v2]]);
                MEM[MEM[64] + 4 + 128 + msg.data[v2 + msg.data[v2]] + 32] = 0;
                MEM[MEM[64] + 4 + 32] = msg.data[v2 + 32];
                MEM[MEM[64] + 4 + 64] = msg.data[v2 + 96];
                MEM[MEM[64] + 4 + 96] = bool(msg.data[v2 + 64]);
                v8 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(v9, MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (v8) {
                    v10 = v11 = 0;
                    if (v8) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x5589a91800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v12.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = new uint256[](v12.length);
                        require(!((v10 + (32 + (v12.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (v12.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                        v13 = v14 = v10.data;
                        require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v12.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
                        v15 = v16 = v12.data;
                        while (v15 < MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v12.length << 6) + 32) {
                            require(MEM[64] + RETURNDATASIZE() - v15 >= 64);
                            v17 = new struct(2);
                            require(!((v17 + 64 > uint64.max) | (v17 + 64 < v17)), Panic(65)); // failed memory allocation (too much memory)
                            v17.word0 = MEM[v15];
                            v17.word1 = MEM[v15 + 32];
                            MEM[v13] = v17;
                            v13 = v13 + 32;
                            v15 = v15 + 64;
                        }
                    }
                }
            } else {
                MEM[MEM[64]] = 0x96f5d98100000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 96;
                MEM[MEM[64] + 4 + 96] = msg.data[v2 + msg.data[v2]];
                CALLDATACOPY(MEM[64] + 4 + 96 + 32, 32 + (v2 + msg.data[v2]), msg.data[v2 + msg.data[v2]]);
                MEM[MEM[64] + 4 + 96 + msg.data[v2 + msg.data[v2]] + 32] = 0;
                MEM[MEM[64] + 4 + 32] = msg.data[v2 + 32];
                MEM[MEM[64] + 4 + 64] = msg.data[v2 + 96];
                v18 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(v9, MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (v18) {
                    v10 = v19 = 0;
                    if (v18) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x96f5d98100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v20.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = v21 = new uint256[](v20.length);
                        require(!((v21 + (32 + (v20.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (v20.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
                        v22 = v23 = v21.data;
                        require(MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + (v20.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
                        v24 = v25 = v20.data;
                        while (v24 < MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + (v20.length << 6) + 32) {
                            require(MEM[64] + RETURNDATASIZE() - v24 >= 64);
                            v26 = new struct(2);
                            require(!((v26 + 64 > uint64.max) | (v26 + 64 < v26)), Panic(65)); // failed memory allocation (too much memory)
                            v26.word0 = MEM[v24];
                            v26.word1 = MEM[v24 + 32];
                            MEM[v22] = v26;
                            v22 = v22 + 32;
                            v24 = v24 + 64;
                        }
                    }
                }
            }
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
            require(MEM[v10], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(MEM[v10] - 1 < MEM[v10], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v27 = v28 = !MEM[MEM[32 + v10]];
            if (bool(MEM[MEM[32 + v10]])) {
                v27 = v29 = !MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32];
            }
            if (v27) {
                v6 = v30 = 0xa80();
                v30.word0 = 0;
                v30.word1 = MEM[MEM[32 + v10]];
                v30.word2 = MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32];
            } else {
                if (v4) {
                    v3 = v31 = MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32] <= MEM[MEM[32 + v10]];
                }
                if (v3) {
                    v6 = 0xa80();
                    v6.word0 = 0;
                    v6.word1 = MEM[MEM[32 + v10]];
                    v6.word2 = MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32];
                } else {
                    0x263a(v1, v10, 32 + (v2 + msg.data[v2 + 192]), msg.data[v2 + msg.data[v2 + 192]]);
                    v6 = v32 = 0xa80();
                    v32.word0 = 1;
                    v32.word1 = MEM[MEM[32 + v10]];
                    v32.word2 = MEM[MEM[(MEM[v10] - 1 << 5) + v10 + 32] + 32];
                }
            }
        }
        if (varg1) {
            v33 = bool(!MEM[v6]);
            break;
        }
        if (v33) {
            break;
        } else {
            if (MEM[v6]) {
                require(MEM[v6 + 64] >= MEM[v6 + 32]);
                require(v1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(varg0[v1] < msg.data.length - varg0.data - 63);
                require(msg.data[varg0.data + varg0[v1] + 32], Panic(18)); // division by zero
                v0 += (MEM[v6 + 64] - MEM[v6 + 32]) * 10 ** 18 / msg.data[varg0.data + varg0[v1] + 32];
            }
            v1 += 1;
        }
    }
    v34 = v35 = 0x2233(v0, varg2, varg5);
    require(v35);
    if (varg3 <= v35) {
    }
    v34 = v36 = this.balance;
    if (v34 <= v36) {
    }
    if (v34) {
        if (!address(varg4)) {
            v37 = v38 = block.coinbase;
        }
        require(this.balance >= v34, InsufficientBalance(this.balance, v34));
        v39, /* uint256 */ v40 = address(v37).call().value(v34).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v41 = v42 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v41 = new bytes[](RETURNDATASIZE());
            require(!((v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v41)), Panic(65)); // failed memory allocation (too much memory)
            v40 = v41.data;
            RETURNDATACOPY(v40, 0, RETURNDATASIZE());
        }
        if (!v39) {
            require(!MEM[v41], v41 + 32, MEM[v41]);
            revert(FailedCall());
        }
    }
}

function withdrawETH(address to, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0 = v1 = 0;
    v2 = v3 = msg.sender == _withdrawer;
    if (msg.sender != _withdrawer) {
        v2 = v4 = msg.sender == _owner;
    }
    require(v2, msg.sender);
    require(!bool(!to), 0);
    require(!bool(!amount), amount);
    if (!amount) {
        v0 = v5 = 2300;
    }
    v6 = to.call().value(amount).gas(v0);
    require(v6, MEM[64], RETURNDATASIZE());
}

function 0x3ee9aa17(bytes varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    require(_operators[msg.sender], msg.sender);
    require(!(block.number - varg1));
    0x207b(v0);
}

function 0x36fb010e(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 224);
    v0 = 0x187a();
    require(_operators[msg.sender], msg.sender);
    require(varg0.length < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + varg0.length] <= uint64.max);
    require(32 + (4 + varg0 + varg0.length) <= msg.data.length - msg.data[4 + varg0 + varg0.length]);
    require(!(bool(msg.data[varg0 + 68]) - msg.data[varg0 + 68]));
    require(!(bool(msg.data[varg0 + 132]) - msg.data[varg0 + 132]));
    v1 = v2 = msg.data[varg0 + 164];
    require(!(bool(v2) - v2));
    require(msg.data[varg0 + 196] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 196]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 196]) <= msg.data.length - msg.data[4 + varg0 + msg.data[varg0 + 196]]);
    v3 = 0x187a();
    if (!msg.data[varg0.data]) {
        v4 = v5 = 0xa80();
        v5.word0 = 0;
        v5.word1 = msg.data[varg0 + 100];
        v5.word2 = 0;
    } else {
        if (!msg.data[varg0 + 132]) {
            v6 = new uint256[](msg.data[4 + varg0 + varg0.length]);
            CALLDATACOPY(v6.data, 32 + (4 + varg0 + varg0.length), msg.data[4 + varg0 + varg0.length]);
            MEM[v6 + msg.data[4 + varg0 + varg0.length] + 32] = 0;
            v7 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(0x5589a91800000000000000000000000000000000000000000000000000000000, v6, MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000, msg.data[varg0.data], msg.data[varg0 + 100], bool(msg.data[varg0 + 68])).gas(msg.gas);
            if (v7) {
                v8 = v9 = 0;
                if (v7) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x5589a91800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v10.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v8 = new uint256[](v10.length);
                    require(!((v8 + (32 + (v10.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (v10.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
                    v11 = v12 = v8.data;
                    require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v10.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
                    v13 = v14 = v10.data;
                    while (v13 < MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v10.length << 6) + 32) {
                        require(MEM[64] + RETURNDATASIZE() - v13 >= 64);
                        v15 = new struct(2);
                        require(!((v15 + 64 > uint64.max) | (v15 + 64 < v15)), Panic(65)); // failed memory allocation (too much memory)
                        v15.word0 = MEM[v13];
                        v15.word1 = MEM[v13 + 32];
                        MEM[v11] = v15;
                        v11 = v11 + 32;
                        v13 = v13 + 64;
                    }
                }
            }
        } else {
            v16 = new uint256[](msg.data[4 + varg0 + varg0.length]);
            CALLDATACOPY(v16.data, 32 + (4 + varg0 + varg0.length), msg.data[4 + varg0 + varg0.length]);
            MEM[v16 + msg.data[4 + varg0 + varg0.length] + 32] = 0;
            v17 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(0x96f5d98100000000000000000000000000000000000000000000000000000000, v16, MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000, msg.data[varg0.data], msg.data[varg0 + 100]).gas(msg.gas);
            if (v17) {
                v8 = v18 = 0;
                if (v17) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x96f5d98100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v19.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v8 = v20 = new uint256[](v19.length);
                    require(!((v20 + (32 + (v19.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v20 + (32 + (v19.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v20)), Panic(65)); // failed memory allocation (too much memory)
                    v21 = v22 = v20.data;
                    require(MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + (v19.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
                    v23 = v24 = v19.data;
                    while (v23 < MEM[64] + 0x96f5d98100000000000000000000000000000000000000000000000000000000 + (v19.length << 6) + 32) {
                        require(MEM[64] + RETURNDATASIZE() - v23 >= 64);
                        v25 = new struct(2);
                        require(!((v25 + 64 > uint64.max) | (v25 + 64 < v25)), Panic(65)); // failed memory allocation (too much memory)
                        v25.word0 = MEM[v23];
                        v25.word1 = MEM[v23 + 32];
                        MEM[v21] = v25;
                        v21 = v21 + 32;
                        v23 = v23 + 64;
                    }
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
        require(MEM[v8], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(MEM[v8] - 1 < MEM[v8], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v26 = v27 = !MEM[MEM[32 + v8]];
        if (bool(MEM[MEM[32 + v8]])) {
            v26 = v28 = !MEM[MEM[(MEM[v8] - 1 << 5) + v8 + 32] + 32];
        }
        if (v26) {
            v4 = v29 = 0xa80();
            v29.word0 = 0;
            v29.word1 = MEM[MEM[32 + v8]];
            v29.word2 = MEM[MEM[(MEM[v8] - 1 << 5) + v8 + 32] + 32];
        } else {
            if (v2) {
                v1 = v30 = MEM[MEM[(MEM[v8] - 1 << 5) + v8 + 32] + 32] <= MEM[MEM[32 + v8]];
            }
            if (v1) {
                v4 = v31 = 0xa80();
                v31.word0 = 0;
                v31.word1 = MEM[MEM[32 + v8]];
                v31.word2 = MEM[MEM[(MEM[v8] - 1 << 5) + v8 + 32] + 32];
            } else {
                0x263a(0, v8, 32 + (4 + varg0 + msg.data[varg0 + 196]), msg.data[4 + varg0 + msg.data[varg0 + 196]]);
                v4 = v32 = 0xa80();
                v32.word0 = 1;
                v32.word1 = MEM[MEM[32 + v8]];
                v32.word2 = MEM[MEM[(MEM[v8] - 1 << 5) + v8 + 32] + 32];
            }
        }
    }
    return bool(MEM[v4]), MEM[v4 + 32], MEM[v4 + 64];
}

function 0x2edf(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg1 - varg0;
    v1 = 0x1b83(v0);
    v2 = v3 = v1.data;
    v4 = v5 = 0;
    while (v4 < v0 >> 5) {
        MEM[v2] = MEM[varg0];
        v2 = v2 + 32;
        varg0 = varg0 + 32;
        v4 = v4 + 1;
    }
    v6 = 0;
    while (v6 < v0 & 0x1f) {
        MEM8[v2] = MEM[varg0] >> 248 & 0xFF;
        v2 = v2 + 1;
        varg0 = varg0 + 1;
        v6 = v6 + 1;
    }
    v7 = varg3 - varg2;
    v8 = 0x1b83(v7);
    v9 = v10 = v8.data;
    v11 = v12 = 0;
    while (v11 < v7 >> 5) {
        MEM[v9] = MEM[varg2];
        v9 = v9 + 32;
        varg2 = varg2 + 32;
        v11 = v11 + 1;
    }
    v13 = 0;
    while (v13 < v7 & 0x1f) {
        MEM8[v9] = MEM[varg2] >> 248 & 0xFF;
        v9 = v9 + 1;
        varg2 = varg2 + 1;
        v13 = v13 + 1;
    }
    require(0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.code.size);
    v14 = new bytes[](v1.length);
    MCOPY(v14.data, v1.data, v1.length);
    v14[v1.length] = 0;
    v14[v1.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = v8.length;
    MCOPY((v1.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v14 + 32 + 32, v8.data, v8.length);
    MEM[(v1.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v14 + 32 + v8.length + 32] = 0;
    v15 = 0x1cb307766c7f3ecccd63a12d2780888e08d8e43f.delegatecall(0xa1baf57000000000000000000000000000000000000000000000000000000000, v14, (v1.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v14 + 32 - MEM[64] - 4).gas(msg.gas);
    require(v15, MEM[64], RETURNDATASIZE());
    if (v15) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        return ;
    } else {
        return ;
    }
}

function 0x22520ce6(bytes varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(!msg.sender);
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = 0xf2109d8fea44193ba537926090789bd66b191fbd.delegatecall(0x5589a91800000000000000000000000000000000000000000000000000000000, v0, MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000, varg1, varg2, 0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v2 = v3 = 0;
    if (v1) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x5589a91800000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
        require(v4.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = new uint256[](v4.length);
        require(!((v2 + (32 + (v4.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (v4.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
        v5 = v6 = v2.data;
        require(MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v4.length << 6) + 32 <= MEM[64] + RETURNDATASIZE());
        v7 = v8 = v4.data;
        while (v7 < MEM[64] + 0x5589a91800000000000000000000000000000000000000000000000000000000 + (v4.length << 6) + 32) {
            require(MEM[64] + RETURNDATASIZE() - v7 >= 64);
            v9 = new struct(2);
            require(!((v9 + 64 > uint64.max) | (v9 + 64 < v9)), Panic(65)); // failed memory allocation (too much memory)
            v9.word0 = MEM[v7];
            v9.word1 = MEM[v7 + 32];
            MEM[v5] = v9;
            v5 = v5 + 32;
            v7 = v7 + 64;
        }
    }
    v10 = new uint256[](MEM[v2]);
    v11 = v12 = v10.data;
    v13 = v2 + 32;
    v14 = 0;
    while (v14 < MEM[v2]) {
        MEM[v11] = MEM[MEM[v13]];
        MEM[v11 + 32] = MEM[32 + MEM[v13]];
        v11 = v11 + 64;
        v13 = v13 + 32;
        v14 += 1;
    }
    return v10;
}

function operators(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _operators[varg0];
}

function transferWithdrawer(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _withdrawer = newOwner;
    emit 0x5457c627e0fb1d25e4785eb9bf3b25b65a6757095996f099a58261fbc73449d(_withdrawer, newOwner);
}

function 0x2ff6() private { 
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    return v0;
}

function 0x3192() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    return v0;
}

function 0x3271() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    return v0;
}

function 0x332b() private { 
    v0 = new struct(7);
    require(!((v0 + 224 > uint64.max) | (v0 + 224 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    v0.word6 = 0;
    return v0;
}

function 0x3490() private { 
    v0 = new struct(6);
    require(!((v0 + 192 > uint64.max) | (v0 + 192 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    return v0;
}

function 0x367e() private { 
    v0 = new struct(8);
    require(!((v0 + (uint8.max + 1) > uint64.max) | (v0 + (uint8.max + 1) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    v0.word6 = 0;
    v0.word7 = 0;
    return v0;
}

function 0x3fe6() private { 
    v0 = new struct(10);
    require(!((v0 + 320 > uint64.max) | (v0 + 320 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    v0.word6 = 0;
    v0.word7 = 0;
    v0.word8 = 0;
    v0.word9 = 0;
    return v0;
}

function 0x41a4(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 >> 1;
    require(v0 < MEM[varg1], MEM[varg1], v0);
    if (0x1 & varg0) {
        require(v0 < MEM[varg1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        return MEM[MEM[(v0 << 5) + varg1 + 32] + 32];
    } else {
        require(v0 < MEM[varg1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        return MEM[MEM[(v0 << 5) + varg1 + 32]];
    }
}

function 0x4229(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    while (v0 < 6) {
        MEM8[varg0] = MEM[varg1] >> 248 & 0xFF;
        varg0 = varg0 + 1;
        varg1 = varg1 + 1;
        v0 = v0 + 1;
    }
    return ;
}

function 0xa80() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0xdaf9c1e == v0) {
            transferWithdrawer(address);
        } else {
            if (0xdf794b9 != v0) {
                if (0x10d1e85c != v0) {
                    if (0x13e7c9d8 == v0) {
                        operators(address);
                    } else {
                        if (0x18780684 != v0) {
                            if (0x22520ce6 == v0) {
                                0x22520ce6();
                            } else if (0x23a69e75 != v0) {
                                if (0x2934d9d3 != v0) {
                                    if (0x2c8958f6 != v0) {
                                        if (0x352e5484 != v0) {
                                            if (0x3693cbf4 != v0) {
                                                if (0x36fb010e == v0) {
                                                    0x36fb010e();
                                                } else if (0x3a1c453c != v0) {
                                                    if (0x3d625bb5 != v0) {
                                                        if (0x3ee9aa17 == v0) {
                                                            0x3ee9aa17();
                                                        } else if (0x4782f779 == v0) {
                                                            withdrawETH(address,uint256);
                                                        } else if (0x4e82cac3 == v0) {
                                                            0x4e82cac3();
                                                        } else if (0x526bff66 != v0) {
                                                            if (0x5e35359e == v0) {
                                                                withdrawTokens(address,address,uint256);
                                                            } else if (0x6515bf42 == v0) {
                                                                0x6515bf42();
                                                            } else if (0x654b6487 != v0) {
                                                                if (0x715018a6 == v0) {
                                                                    renounceOwnership();
                                                                } else if (0x72607864 == v0) {
                                                                    0x72607864();
                                                                } else if (0x7499a84b == v0) {
                                                                    0x7499a84b();
                                                                } else if (0x79ba5097 == v0) {
                                                                    acceptOwnership();
                                                                } else if (0x84800812 != v0) {
                                                                    if (0x84cee21c != v0) {
                                                                        if (0x8da5cb5b == v0) {
                                                                            owner();
                                                                        } else if (0x90ab6f3e == v0) {
                                                                            0x90ab6f3e();
                                                                        } else if (0x91dd7346 == v0) {
                                                                            unlockCallback(bytes);
                                                                        } else if (0x9870d7fe == v0) {
                                                                            addOperator(address);
                                                                        } else if (0x9a7bff79 != v0) {
                                                                            if (0x9f886526 != v0) {
                                                                                if (0x9feb758b != v0) {
                                                                                    if (0xa07aea1c == v0) {
                                                                                        addOperators(address[]);
                                                                                    } else if (0xac8a584a == v0) {
                                                                                        removeOperator(address);
                                                                                    } else if (0xb044830c == v0) {
                                                                                        0xb044830c();
                                                                                    } else if (0xbea9cf36 != v0) {
                                                                                        if (0xc18c82cc != v0) {
                                                                                            if (0xc457049c != v0) {
                                                                                                if (0xc5c957f0 == v0) {
                                                                                                    0xc5c957f0();
                                                                                                } else if (0xcdc18424 == v0) {
                                                                                                    withdrawer();
                                                                                                } else if (0xd365a377 == v0) {
                                                                                                    removeOperators(address[]);
                                                                                                } else if (0xd3e1c284 != v0) {
                                                                                                    if (0xd989c999 != v0) {
                                                                                                        if (0xdf9aee68 != v0) {
                                                                                                            if (0xe0154ff0 != v0) {
                                                                                                                if (0xe30c3978 == v0) {
                                                                                                                    pendingOwner();
                                                                                                                } else if (0xe81f56f4 != v0) {
                                                                                                                    if (0xf2b0e84e != v0) {
                                                                                                                        if (0xf2fde38b == v0) {
                                                                                                                            transferOwnership(address);
                                                                                                                        } else if (0xf3633aa8 != v0) {
                                                                                                                            if (0xfa461e33 != v0) {
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        swapY2XCallback(uint256,uint256,bytes);
                    }
                }
            }
            0x0df794b9();
        }
    }
    require(!msg.data.length);
    receive();
}
