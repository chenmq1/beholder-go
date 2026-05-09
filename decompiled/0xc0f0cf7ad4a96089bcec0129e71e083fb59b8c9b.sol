// Decompiled by library.dedaub.com
// 2025.12.13 18:20 UTC
// Compiled using the solidity compiler version 0.8.19


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _withdrawToken_14u2; // STORAGE[0x0]
uint8 stor_1_0_0; // STORAGE[0x1] bytes 0 to 0



function 0x102e(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(_withdrawToken_14u2[msg.sender]);
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    MEM[MEM[64] + 192] = 0;
    MEM[MEM[64] + 224] = 0;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64] + 288] = 0;
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    MEM[MEM[64] + 192] = 0;
    MEM[MEM[64] + 224] = 0;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64] + 288] = 0;
    v0, v1, v2, v3 = 0x19a1(stor_1_0_0, varg0, varg1, varg2);
    if (MEM[v1 + 288]) {
        v4 = v5 = MEM[160 + v1];
    } else {
        v4 = v6 = MEM[192 + v1];
    }
    v7, /* uint256 */ v8 = address(v4).balanceOf(this).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1eb3(v3, v2, MEM[v1 + 288], MEM[v1 + 192], MEM[v1 + 160], MEM[v0], MEM[v1]);
    v9, /* uint256 */ v10 = address(v4).balanceOf(this).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v11 = v12 = _SafeSub(v10, v8);
    require(v12 > 0, Error(20048));
    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 != address(v4)) {
        v11 = v13 = 0x232b(v4, v12);
    }
    return v11;
}

function 0x141e(uint256 varg0, uint256 varg1, address varg2) private { 
    require(varg1 > 0, Error('invalid debt amount'));
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg2.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4 = v5 = uint112(v2);
    v4 = v6 = uint112(v1);
    if (!varg0) {
    }
    v7 = _SafeMul(997, varg1);
    v8 = _SafeMul(v7, v4);
    v9 = _SafeMul(1000, v4);
    v10 = _SafeAdd(v9, v7);
    v11 = _SafeDiv(v8, v10);
    return v11;
}

function 0x1562(uint256 varg0, uint256 varg1, address varg2) private { 
    require(varg1 > 0, Error('invalid borrow amount'));
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg2.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4 = v5 = uint112(v2);
    v4 = v6 = uint112(v1);
    if (!varg0) {
    }
    v7 = _SafeMul(v4, varg1);
    v8 = _SafeMul(1000, v7);
    v9 = _SafeSub(v4, varg1);
    v10 = _SafeMul(997, v9);
    v11 = _SafeDiv(v8, v10);
    v12 = _SafeAdd(1, v11);
    return v12;
}

function 0x0000000a(address varg0, uint256 varg1, struct(2) varg2, address varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_withdrawToken_14u2[msg.sender]);
    require(block.coinbase == varg0, Error(20034));
    if (block.coinbase.balance - varg1) {
        require(_withdrawToken_14u2[msg.sender]);
        v1 = 0x102e(varg2.word1 >> 88, msg.data[4 + varg2 + 32 + 22] >> 96, varg2.word1 >> 96);
        v2 = _SafeSub(msg.gas, msg.gas);
        v3 = _SafeAdd(51500, v2);
        v4 = _SafeMul(v3, msg.gas);
        require(v1 > v4, Error(0x476173));
        v5 = _SafeSub(v1, v4);
        0x16f4(varg3, varg2.word1 >> 80, v5);
    } else {
        v6, /* uint256 */ v7 = block.coinbase.call().value(msg.value).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v8 = new bytes[](RETURNDATASIZE());
            v7 = v8.data;
            RETURNDATACOPY(v7, 0, RETURNDATASIZE());
        }
        require(v6);
    }
}

function 0x16f4(uint256 varg0, uint8 varg1, uint256 varg2) private { 
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v3 = _SafeMul(varg2, varg1);
    v4 = _SafeDiv(v3, 100);
    0x2650(varg0, v4);
    v5, /* uint256 */ v6 = 0x27b7eaf0db6e34435c838874595c91c0a33eb5b7.call().value(this.balance).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v7 = new bytes[](RETURNDATASIZE());
        v6 = v7.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    require(v5);
    return ;
}

function 0x000000a2(address varg0, uint256 varg1, uint256 varg2, bytes varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg3.length);
    require(!((v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg3.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0) | (v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg3.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg3.data, varg3.length);
    v0[varg3.length] = 0;
    0x848(v0, varg2, varg1, varg0);
}

function 0x1852(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    0x2650(varg0, varg1);
    v3, /* uint256 */ v4 = address(0x27b7eaf0db6e34435c838874595c91c0a33eb5b7).call().value(this.balance).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v5 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
    }
    require(v3);
    return ;
}

function 0x19a1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = 0;
    MEM[MEM[64]] = v1;
    MEM[MEM[64] + 32] = v1;
    MEM[MEM[64] + 64] = v1;
    MEM[MEM[64] + 96] = v1;
    MEM[MEM[64] + 128] = v1;
    MEM[MEM[64] + 160] = v1;
    MEM[MEM[64] + 192] = v1;
    MEM[MEM[64] + 224] = v1;
    MEM[MEM[64] + (uint8.max + 1)] = v1;
    MEM[MEM[64] + 288] = v1;
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    MEM[MEM[64] + 192] = 0;
    MEM[MEM[64] + 224] = 0;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64] + 288] = 0;
    v2, v3, v4 = 0x2697(varg1, varg2, varg3);
    v5 = new struct(4);
    v5.word0 = address(MEM[v4 + 224]);
    v5.word1 = 1;
    v5.word2 = int24(MEM[v4 + 64]);
    v5.word3 = uint128(MEM[v4 + (uint8.max + 1)]);
    v6 = new struct(4);
    v6.word0 = address(MEM[v3 + 224]);
    v6.word1 = 0;
    v6.word2 = int24(MEM[v3 + 64]);
    v6.word3 = uint128(MEM[v3 + (uint8.max + 1)]);
    v7 = new struct(12);
    v7.word0 = 0;
    v7.word1 = 0;
    v7.word2 = 0;
    v7.word3 = 0;
    v7.word4 = 0;
    v7.word5 = 0;
    v7.word6 = 0;
    v7.word7 = 0;
    v7.word8 = 0;
    v7.word9 = 0;
    v7.word10 = 0;
    v7.word11 = 0;
    v7.word2 = uint128(v5.word3);
    v7.word4 = address(v5.word0);
    v7.word5 = int24(v5.word2);
    v7.word3 = uint128(v6.word3);
    v7.word9 = address(v6.word0);
    v7.word7 = int24(v6.word2);
    while (1) {
        v8, v9 = 0x2802(!MEM[v4 + 288], MEM[96 + v3], MEM[96 + v4], v6, v5);
        v7.word11 = address(v8);
        v7.word10 = address(v9);
        v10, v11, v12, v13, v14 = 0x2bf0(MEM[v4 + 288], varg0, address(v8), v5, v4);
        v7.word8 = bool(v10);
        v5.word2 = int24(v11);
        v5.word0 = address(v12);
        v5.word3 = uint128(v13);
        v7.word0 = v14;
        v15, v16, v17, v18, v19 = 0x2bf0(!MEM[v4 + 288], varg0, v7.word10, v6, v3);
        v7.word6 = bool(v15);
        v6.word2 = int24(v16);
        v6.word0 = address(v17);
        v6.word3 = uint128(v18);
        v7.word1 = v19;
        v20 = v21 = v7.word8;
        if (v21) {
            v20 = v22 = v7.word6;
        }
        if (!v20) {
            v23 = v24 = !v7.word8;
            if (!bool(v7.word8)) {
                v23 = v25 = v7.word6;
            }
            if (!v23) {
                v23 = v26 = !v7.word8;
                if (!bool(v7.word8)) {
                    v23 = v27 = !v7.word6;
                }
                if (v23) {
                    v23 = v28 = v7.word0 < v7.word1;
                }
            }
            if (v23) {
                v0 = _SafeAdd(v0, v7.word0);
                v29 = 0x4d9c(10 ** 6, MEM[96 + v3]);
                v30 = _SafeMul(v7.word0, uint24(v29));
                v31 = _SafeDiv(v30, 10 ** 6);
                v32 = 0x2f08(!MEM[v4 + 288], v31, v7.word3, v7.word9);
                v6.word0 = address(v32);
                v33 = 0x2f51(address(v32));
                v6.word2 = int24(v33);
                v6.word3 = uint128(v7.word3);
                v7.word2 = uint128(v5.word3);
                v7.word4 = address(v5.word0);
                v7.word5 = int24(v5.word2);
            }
            v34 = v35 = v7.word8;
            if (v35) {
                v34 = v36 = !v7.word6;
            }
            if (!v34) {
                v34 = v37 = !v7.word8;
                if (!bool(v7.word8)) {
                    v34 = v38 = !v7.word6;
                }
                if (v34) {
                    v34 = v39 = v7.word0 >= v7.word1;
                }
            }
            if (v34) {
                v40 = 0x4d80(10 ** 6, MEM[96 + v3]);
                v41 = _SafeMul(v7.word1, uint24(v40));
                v42 = _SafeDiv(v41, 10 ** 6);
                v7.word1 = v42;
                v0 = _SafeAdd(v0, v42);
                v43 = 0x324d(MEM[v4 + 288], v7.word1, v7.word2, v7.word4);
                v5.word0 = address(v43);
                v44 = 0x2f51(address(v43));
                v5.word2 = int24(v44);
                v5.word3 = uint128(v7.word2);
                v7.word3 = uint128(v6.word3);
                v7.word9 = address(v6.word0);
                v7.word7 = int24(v6.word2);
            }
        } else {
            v45 = 0x4d80(10 ** 6, MEM[96 + v3]);
            v46 = _SafeMul(v7.word1, uint24(v45));
            v47 = _SafeDiv(v46, 10 ** 6);
            v48 = _SafeAdd(v0, v47);
            return v3, v4, v48, v2;
        }
    }
}

function 0x000000a3(struct(2) varg0, address varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_withdrawToken_14u2[msg.sender]);
    v1 = 0x102e(varg0.word1 >> 88, msg.data[4 + varg0 + 32 + 22] >> 96, varg0.word1 >> 96);
    v2 = _SafeSub(msg.gas, msg.gas);
    v3 = _SafeAdd(51500, v2);
    v4 = _SafeMul(v3, msg.gas);
    require(v1 > v4, Error(0x476173));
    v5 = _SafeSub(v1, v4);
    0x16f4(varg1, varg0.word1 >> 80, v5);
}

function 0x000000a7(uint256 varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    require(_withdrawToken_14u2[msg.sender]);
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        v2 = _SafeAdd(1, v0);
        v3, v4 = _SafeSub(varg2.data, varg2.length, v0, v2);
        v5 = bytes1(msg.data[v4]);
        if (v3 >= 1) {
            break;
        } else {
            v5 = v6 = bytes1(0xff00000000000000000000000000000000000000000000000000000000000000 << (1 - v3 << 3) & msg.data[v4]);
        }
        require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v0] < msg.data.length - varg0.data - 31);
        require(msg.data[varg0.data + varg0[v0]] <= uint64.max);
        require(32 + (varg0.data + varg0[v0]) <= msg.data.length - msg.data[varg0.data + varg0[v0]]);
        CALLDATACOPY(MEM[64], 32 + (varg0.data + varg0[v0]), msg.data[varg0.data + varg0[v0]]);
        MEM[msg.data[varg0.data + varg0[v0]] + MEM[64]] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = this.delegatecall(MEM[MEM[64]:MEM[64] + msg.data[varg0.data + varg0[vd0e_0x0V0x1ce]] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = 96;
        } else {
            v10 = v11 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
        }
        if (!v7) {
            break;
        } else {
            require(32 + v10 + MEM[v10] - (32 + v10) >= 32);
            v12 = _SafeMul(MEM[32 + v10], uint8(v5 >> 248));
            v13 = _SafeDiv(v12, 100);
            v0 = _SafeAdd(v0, v13);
            if (v0) {
                break;
            } else {
                v0 = v14 = 1;
            }
        }
        require(v0 + 1, Panic(17)); // arithmetic overflow or underflow
        v0 += 1;
    }
    require(v0, Error(0x4d4146));
    require(v0 > 0, Error(20048));
    v15 = _SafeSub(msg.gas, msg.gas);
    v16 = _SafeAdd(55000, v15);
    v17 = _SafeMul(v16, msg.gas);
    v18, /* uint256 */ v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v20 = _SafeSub(v19, v0);
    require(v20 > v17, Error(0x476173));
    0x1852(varg1, v0);
}

function withdrawToken_14u2(address varg0, uint256 varg1, uint256 varg2, address varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + (varg2.length << 5) + 32 <= msg.data.length);
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max);
    require(4 + varg4 + varg4.length + 32 <= msg.data.length);
    require(_withdrawToken_14u2[msg.sender]);
    require(block.coinbase == varg0, Error(20034));
    if (block.coinbase.balance - varg1) {
        require(_withdrawToken_14u2[msg.sender]);
        v0 = v1 = 0;
        while (v0 < varg2.length) {
            v2 = _SafeAdd(1, v0);
            v3, v4 = _SafeSub(varg4.data, varg4.length, v0, v2);
            v5 = bytes1(msg.data[v4]);
            if (v3 >= 1) {
                break;
            } else {
                v5 = v6 = bytes1(0xff00000000000000000000000000000000000000000000000000000000000000 << (1 - v3 << 3) & msg.data[v4]);
            }
            require(v0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg2[v0] < msg.data.length - varg2.data - 31);
            require(msg.data[varg2.data + varg2[v0]] <= uint64.max);
            require(32 + (varg2.data + varg2[v0]) <= msg.data.length - msg.data[varg2.data + varg2[v0]]);
            CALLDATACOPY(MEM[64], 32 + (varg2.data + varg2[v0]), msg.data[varg2.data + varg2[v0]]);
            MEM[msg.data[varg2.data + varg2[v0]] + MEM[64]] = 0;
            v7, /* uint256 */ v8, /* uint256 */ v9 = this.delegatecall(MEM[MEM[64]:MEM[64] + msg.data[varg2.data + varg2[vd0e_0x0V0x1021V0x1e1]] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v10 = 96;
            } else {
                v10 = v11 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
            }
            if (!v7) {
                break;
            } else {
                require(32 + v10 + MEM[v10] - (32 + v10) >= 32);
                v12 = _SafeMul(MEM[32 + v10], uint8(v5 >> 248));
                v13 = _SafeDiv(v12, 100);
                v0 = _SafeAdd(v0, v13);
                if (v0) {
                    break;
                } else {
                    v0 = v14 = 1;
                }
            }
            require(v0 + 1, Panic(17)); // arithmetic overflow or underflow
            v0 += 1;
        }
        require(v0, Error(0x4d4146));
        require(v0 > 0, Error(20048));
        v15 = _SafeSub(msg.gas, msg.gas);
        v16 = _SafeAdd(55000, v15);
        v17 = _SafeMul(v16, msg.gas);
        v18, /* uint256 */ v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v20 = _SafeSub(v19, v0);
        require(v20 > v17, Error(0x476173));
        0x1852(varg3, v0);
    } else {
        v21, /* uint256 */ v22 = block.coinbase.call().value(msg.value).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v23 = new bytes[](RETURNDATASIZE());
            v22 = v23.data;
            RETURNDATACOPY(v22, 0, RETURNDATASIZE());
        }
        require(v21);
    }
}

function 0x000000f3(uint256 varg0, uint256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg2.length);
    require(!((v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg2.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0) | (v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg2.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    v0[varg2.length] = 0;
    0x375(v0, varg1, varg0);
}

function 0x1eb3(uint8 varg0, uint256 varg1, uint256 varg2, address varg3, address varg4, address varg5, address varg6) private { 
    v0 = v1 = 35 == varg0;
    if (35 != varg0) {
        v0 = v2 = 34 == varg0;
    }
    if (!v0) {
        if (50 - varg0) {
            if (varg2) {
                v3 = v4 = 0x4b1a(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            } else {
                v3 = v5 = 0x4b41(1, 0x1000276a3);
            }
            v6 = new uint256[](varg3);
            MEM[v6.data] = varg5;
            v7 = new uint256[](224);
            v8 = v9 = 0;
            while (v8 < 224) {
                MEM[v8 + v7.data] = MEM[v8 + (MEM[64] + 32)];
                v8 += 32;
            }
            MEM[224 + v7.data] = 0;
            v10, /* uint256 */ v11, /* uint256 */ v12 = varg5.swap(address(this), bool(!varg2), varg1, address(v3), v7, v6, varg4, v13, v13, varg6, varg0, bool(varg2), varg1).gas(msg.gas);
            require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            return ;
        } else {
            v14 = 0x4ae2(varg1);
            if (varg2) {
                v15 = v16 = 0x4b41(1, 0x1000276a3);
            } else {
                v15 = v17 = 0x4b1a(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            v18 = new uint256[](varg3);
            MEM[v18.data] = varg5;
            v19 = new uint256[](224);
            v20 = v21 = 0;
            while (v20 < 224) {
                MEM[v20 + v19.data] = MEM[v20 + (MEM[64] + 32)];
                v20 += 32;
            }
            MEM[224 + v19.data] = 0;
            v22, /* uint256 */ v23, /* uint256 */ v24 = varg6.swap(varg5, bool(varg2), v14, address(v15), v19, v18, varg4, v13, v13, varg6, varg0, bool(varg2), varg1).gas(msg.gas);
            require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            return ;
        }
    } else {
        if (varg2) {
            varg1 = v25 = 0;
        }
        if (!varg2) {
            varg1 = v26 = 0;
        }
        v27 = new uint256[](varg5);
        MEM[v27.data] = varg6;
        v28 = new uint256[](224);
        v29 = v30 = 0;
        while (v29 < 224) {
            MEM[v29 + v28.data] = MEM[v29 + (MEM[64] + 32)];
            v29 += 32;
        }
        MEM[224 + v28.data] = 0;
        require(bool(varg6.code.size));
        v31 = varg6.swap(varg1, varg1, address(this), v28, v27, varg4, varg3, v13, v13, varg0, bool(varg2), varg1).gas(msg.gas);
        require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    }
}

function 0x0352bc85(address varg0, address varg1, uint8 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    v0 = 0x102e(varg2, varg1, varg0);
    return v0;
}

function 0x33ce1b35(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(address(0x8288c92c664a6edf6497501b0c081c8a0a473543) == msg.sender, Error('OWNER'));
    _withdrawToken_14u2[varg0] = 0;
}

function 0x232b(address varg0, uint256 varg1) private { 
    if (varg0 + 0xffffffffffffffffffffffff253e806a72d11adc5ddf9df966ba683ec27ce139) {
        require(!(varg0 + 0xffffffffffffffffffffffff5f47966e39de74c93e2e62b5d1614f31c9f914b8), Error(0x42415345));
        v0 = v1 = 0x88e6a0c2ddd26feeb64f039a2c41296fcb3f5640;
        v2 = v3 = 0x128acb08;
        v4 = v5 = this;
        v6 = v7 = 1;
        v8 = v9 = 0x4b41(v7, 0x1000276a3);
        MEM[MEM[64] + 32] = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
        v10 = v11 = MEM[64] + 64;
    } else {
        v6 = v12 = 0;
        v0 = v13 = 0x11b815efb8f581194ae79006d24e0d814b7697f6;
        v2 = v14 = 0x128acb08;
        v4 = v15 = this;
        v8 = v16 = 0x4b1a(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
        MEM[MEM[64] + 32] = 0xdac17f958d2ee523a2206206994597c13d831ec7;
        v10 = v17 = MEM[64] + 64;
    }
    v18 = new uint256[](v10 - MEM[64] - 32);
    v19 = v20 = 0;
    while (v19 < v10 - MEM[64] - 32) {
        MEM[v19 + v18.data] = MEM[v19 + (MEM[64] + 32)];
        v19 += 32;
    }
    MEM[v10 - MEM[64] - 32 + v18.data] = 0;
    v21, /* uint256 */ v22, /* uint256 */ v23 = v0.swap(address(v4), bool(v6), varg1, address(v8), v18).gas(msg.gas);
    require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    v24 = 0x4ae2(v22);
    return v24;
}

function 0x5d27030d(uint8 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(address(0x8288c92c664a6edf6497501b0c081c8a0a473543) == msg.sender, OnlyOwner());
    stor_1_0_0 = varg0;
}

function 0x2650(uint256 varg0, uint256 varg1) private { 
    if (0 - varg1) {
        if (!address(varg0)) {
            varg0 = v0 = block.coinbase;
        }
        v1 = v2 = 0;
        while (v1 < 0) {
            MEM[v1 + MEM[64]] = MEM[v1 + (MEM[64] + 32)];
            v1 += 32;
        }
        MEM[MEM[64]] = 0;
        v3, /* uint256 */ v4 = address(varg0).call().value(varg1).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v5 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
        }
        require(v3);
        return ;
    } else {
        return ;
    }
}

function 0x2697(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    MEM[64] = MEM[64] + 320;
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[64 + MEM[64]] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    MEM[MEM[64] + 192] = 0;
    MEM[MEM[64] + 224] = 0;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64] + 288] = 0;
    MEM[64] = MEM[64] + 320;
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    MEM[MEM[64] + 192] = 0;
    MEM[MEM[64] + 224] = 0;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64] + 288] = 0;
    if (bool(varg0 >> 4) == 2) {
        v0 = v1 = 0x35ce(varg2);
    } else {
        v0 = v2 = 0x3286(varg2);
    }
    if (2 == uint8(bool(varg0))) {
        v0 = v3 = 0x35ce(varg1);
    } else {
        v0 = v4 = 0x3286(varg1);
    }
    v5 = v6 = MEM[288 + v0];
    if (v6) {
        v5 = v7 = address(MEM[224 + v0]) < address(MEM[224 + v0]);
    }
    if (!v5) {
        v5 = v8 = !MEM[288 + v0];
        if (!bool(MEM[288 + v0])) {
            v5 = v9 = address(MEM[224 + v0]) > address(MEM[224 + v0]);
        }
    }
    if (v5) {
        varg0 = v10 = bool(uint8(varg0) >> 4) | 0xf0 & uint8(varg0) << 4;
    }
    return varg0, v0, v0;
}

function 0x8518b472(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(address(0x8288c92c664a6edf6497501b0c081c8a0a473543) == msg.sender, Error('OWNER'));
    _withdrawToken_14u2[varg0] = 1;
}

function 0x2802(uint256 varg0, uint256 varg1, uint256 varg2, struct(4) varg3, struct(4) varg4) private { 
    if (varg0) {
        v0 = v1 = 10 ** 38;
    } else {
        v0 = v2 = 10 ** 10;
    }
    v3 = uint128(v0);
    v4 = 0x4d9c(10 ** 6, varg1);
    v5 = 0x4d9c(10 ** 6, varg2);
    v6 = _SafeMul(uint24(v5), v3);
    v7 = _SafeDiv(v6, uint24(v4));
    v8 = _SafeMul(uint128(varg3.word3), v7);
    v9 = v10 = _SafeMul(v7, v3);
    v11 = v12 = 1;
    if (v10 >= uint128.max + 1) {
        v11 = v13 = uint64.max + 1;
        v9 = v14 = v10 >> 128;
    }
    if (v9 >= uint64.max + 1) {
        v11 = v15 = v11 << 32;
        v9 = v16 = v9 >> 64;
    }
    if (v9 >= uint32.max + 1) {
        v11 = v17 = v11 << 16;
        v9 = v18 = v9 >> 32;
    }
    if (v9 >= uint16.max + 1) {
        v11 = v19 = v11 << 8;
        v9 = v20 = v9 >> 16;
    }
    if (v9 >= uint8.max + 1) {
        v11 = v21 = v11 << 4;
        v9 = v22 = v9 >> 8;
    }
    if (v9 >= 16) {
        v11 = v23 = v11 << 2;
        v9 = v24 = v9 >> 4;
    }
    if (v9 >= 8) {
        v11 = v25 = v11 << 1;
    }
    v26 = v10 / (v10 / (v10 / v11 + v11 >> 1) + (v10 / v11 + v11 >> 1) >> 1) + (v10 / (v10 / v11 + v11 >> 1) + (v10 / v11 + v11 >> 1) >> 1) >> 1;
    v27 = v10 / (v10 / (v10 / v26 + v26 >> 1) + (v10 / v26 + v26 >> 1) >> 1) + (v10 / (v10 / v26 + v26 >> 1) + (v10 / v26 + v26 >> 1) >> 1) >> 1;
    v28 = v29 = v10 / v27 + v27 >> 1;
    v28 = v30 = v10 / v29;
    v31 = _SafeMul(uint128(varg4.word3), v28);
    v32 = _SafeAdd(v31, v8);
    if (varg0) {
        v33 = _SafeMul(uint128(varg3.word3), v7);
        v34 = v35 = _SafeDiv(v33, address(varg3.word0));
    } else {
        v36 = _SafeDiv(address(varg3.word0), v3);
        v37 = _SafeMul(uint128(varg3.word3), v36);
        v34 = v38 = _SafeMul(v37, v7);
    }
    if (varg0) {
        v39 = 0x4dfa(10 ** 6, varg4.word0);
        v40 = _SafeMul(uint128(varg4.word3), uint24(v5));
        v41 = _SafeMul(v40, v3);
        v42 = v43 = _SafeDiv(v41, address(v39));
    } else {
        v44 = _SafeDiv(address(varg4.word0), v3);
        v45 = 0x4dd4(varg4.word3, 10 ** 6);
        v46 = _SafeMul(uint128(v45), uint24(v5));
        v47 = _SafeMul(v46, v3);
        v42 = v48 = _SafeMul(v47, v44);
    }
    v49 = _SafeAdd(v34, v42);
    if (varg0) {
        v50 = v51 = _SafeDiv(v32, v49);
    } else {
        v52 = _SafeDiv(v49, v32);
        v50 = v53 = _SafeMul(v3, v52);
    }
    if (!varg0) {
        v54 = _SafeDiv(address(varg3.word0), v3);
        v55 = _SafeMul(uint128(varg3.word3), v54);
        v56 = _SafeDiv(address(v50), v3);
        v57 = _SafeMul(uint128(varg3.word3), v56);
        v58 = _SafeDiv(address(varg4.word0), v3);
        v59 = 0x4dd4(varg4.word3, 10 ** 6);
        v60 = _SafeMul(uint128(v59), v58);
        v61 = _SafeMul(v60, uint24(v4));
        v62 = _SafeAdd(v55, v61);
        v63 = _SafeSub(v62, v57);
        v64 = _SafeMul(10 ** 6, v3);
        v65 = _SafeMul(uint128(varg4.word3), uint24(v4));
        v66 = _SafeDiv(v65, v64);
        v67 = v68 = _SafeDiv(v63, v66);
    } else {
        v69 = _SafeMul(uint128(varg3.word3), v3);
        v70 = _SafeMul(v69, uint24(v4));
        v71 = _SafeDiv(v70, address(varg3.word0));
        v72 = _SafeMul(uint128(varg3.word3), v3);
        v73 = _SafeMul(v72, uint24(v4));
        v74 = _SafeDiv(v73, address(v50));
        v75 = _SafeMul(uint128(varg4.word3), v3);
        v76 = _SafeMul(10 ** 6, v75);
        v77 = _SafeDiv(v76, address(varg4.word0));
        v78 = _SafeAdd(v71, v77);
        v79 = _SafeSub(v78, v74);
        v80 = _SafeMul(uint128(varg4.word3), v3);
        v81 = _SafeMul(10 ** 6, v80);
        v67 = v82 = _SafeDiv(v81, v79);
    }
    return v67, v50;
}

function withdrawETH() public nonPayable { 
    require(address(0x8288c92c664a6edf6497501b0c081c8a0a473543) == msg.sender, OnlyOwner());
    if (this.balance) {
        v0, /* uint256 */ v1 = address(0x8288c92c664a6edf6497501b0c081c8a0a473543).call().value(this.balance).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v2 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v2.data, 0, RETURNDATASIZE());
        }
        require(v0);
    }
}

function withdrawERC20(address token) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(address(0x8288c92c664a6edf6497501b0c081c8a0a473543) == msg.sender, OnlyOwner());
    v0, /* uint256 */ v1 = token.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v1) {
        require(bool(token.code.size));
        v2 = token.transfer(address(0x8288c92c664a6edf6497501b0c081c8a0a473543), v1).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x2bf0(uint256 varg0, uint256 varg1, uint256 varg2, struct(4) varg3, uint256 varg4) private { 
    varg2 = v0 = 0;
    v1 = v2 = 0;
    v3 = v4 = 0;
    v5 = v6 = varg3.word2;
    v7 = v8 = 1;
    if (MEM[32 + varg4]) {
        while (1) {
            v9 = v10 = 0 == int128(v1);
            if (v10) {
                v9 = v11 = !v3;
            }
            if (v9) {
                v9 = v12 = uint8(varg1) > 0;
            }
            if (!v9) {
                varg2 = v13 = 0x3ad6(v5);
                v7 = v14 = varg3.word1;
                if (v14) {
                    v7 = v15 = MEM[288 + varg4];
                }
                if (v7) {
                    v7 = v16 = address(varg2) > address(v13);
                }
                if (!v7) {
                    v7 = v17 = varg3.word1;
                    if (v17) {
                        v7 = v18 = !MEM[288 + varg4];
                    }
                    if (v7) {
                        v7 = v19 = address(varg2) < address(v13);
                    }
                }
                if (!v7) {
                    v7 = v20 = !varg3.word1;
                    if (!bool(varg3.word1)) {
                        v7 = v21 = !MEM[288 + varg4];
                    }
                    if (v7) {
                        v7 = v22 = address(varg2) > address(v13);
                    }
                }
                if (!v7) {
                    v7 = v23 = !varg3.word1;
                    if (!bool(varg3.word1)) {
                        v7 = v24 = MEM[288 + varg4];
                    }
                    if (v7) {
                        v7 = v25 = address(varg2) < address(v13);
                    }
                }
            } else {
                require(uint8(varg1), Panic(17)); // arithmetic overflow or underflow
                varg1 = uint256.max + uint8(varg1);
                v3 = v26, v5 = 0x38e9(varg0, MEM[varg4 + 128], v5, 0x5339c296, address(MEM[varg4]));
                varg0 = v27 = int24(v5) == int24(v5);
                if (varg0) {
                    require(int24(v5) - int24.min, Panic(17)); // arithmetic overflow or underflow
                    v5 = uint256.max + int24(v5);
                }
                v28, /* uint128 */ v29, /* int128 */ v1, /* uint256 */ v30, /* uint256 */ v31, /* int56 */ v32, /* address */ v33, /* uint32 */ v34, /* bool */ v35 = address(MEM[varg4]).ticks(int24(v5)).gas(msg.gas);
                require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= uint8.max + 1);
                require(v29 == uint128(v29));
                require(v1 == int128(v1));
                require(v32 == int56(v32));
                require(v33 == address(v33));
                require(v34 == uint32(v34));
                require(v35 == bool(v35));
            }
        }
    }
    if (!v7) {
    }
    if (!varg3.word1) {
        if (varg0) {
            v36 = v37 = 0x3d8b(1, varg3.word3, varg3.word0, varg2);
        } else {
            v38 = (varg3.word0 - varg2 >> uint8.max) + (varg3.word0 - varg2) ^ varg3.word0 - varg2 >> uint8.max;
            v39 = 0x437f(uint96.max + 1, v38, varg3.word3);
            v36 = v40 = v39 + ((varg3.word3 * v38 % (uint96.max + 1) > 0) & 0x1);
        }
    } else if (varg0) {
        v41 = (varg2 - varg3.word0 >> uint8.max) + (varg2 - varg3.word0) ^ varg2 - varg3.word0 >> uint8.max;
        v42 = 0x437f(uint96.max + 1, v41, varg3.word3);
        v36 = v42 + ((varg3.word3 * v41 % (uint96.max + 1) > 0) & 0x0);
    } else {
        v36 = v43 = 0x3d8b(0, varg3.word3, varg2, varg3.word0);
    }
    if (varg0) {
        v1 = v44 = 0x4f17(v1);
        v5 = v45 = 0x4f55(v5, 1);
    }
    if (int128(v1) < 0) {
        v46 = 0x4f17(v1);
        v47 = 0x4f9a(varg3.word3, v46);
        return v7, v5, varg2, v47, v36;
    } else {
        v48 = 0x4f7a(varg3.word3, v1);
        return v7, v5, varg2, v48, v36;
    }
}

function 0x2f08(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(!(!varg3 | !varg2), InvalidPriceOrLiquidity());
    if (varg0) {
        v0 = 0x3f93(1, varg1, varg2, varg3);
        return v0;
    } else {
        v1 = 0x3e9b(1, varg1, varg2, varg3);
        return v1;
    }
}

function 0x2f51(uint256 varg0) private { 
    require(varg0 - 0x1000276a3 <= 0xfffd8963efd1fc6a506488495d951d5163961682);
    v0 = ((varg0 << 32 & 0xffffffffffffffffffffffffffffffffffffffff00000000) >> ((varg0 << 32 & 0xffffffffffffffffffffffffffffffffffffffff00000000 > uint128.max) << 7) > uint64.max) << 6;
    v1 = (varg0 << 32 & 0xffffffffffffffffffffffffffffffffffffffff00000000) >> ((varg0 << 32 & 0xffffffffffffffffffffffffffffffffffffffff00000000 > uint128.max) << 7) >> v0;
    v2 = (v1 >> ((v1 > uint32.max) << 5) >> ((v1 >> ((v1 > uint32.max) << 5) > uint16.max) << 4) >> ((v1 >> ((v1 > uint32.max) << 5) >> ((v1 >> ((v1 > uint32.max) << 5) > uint16.max) << 4) > uint8.max) << 3) > 15) << 2;
    v3 = v1 >> ((v1 > uint32.max) << 5) >> ((v1 >> ((v1 > uint32.max) << 5) > uint16.max) << 4) >> ((v1 >> ((v1 > uint32.max) << 5) >> ((v1 >> ((v1 > uint32.max) << 5) > uint16.max) << 4) > uint8.max) << 3) >> v2;
    v4 = v2 | ((v1 >> ((v1 > uint32.max) << 5) > uint16.max) << 4 | ((v1 > uint32.max) << 5 | (v0 | (varg0 << 32 & 0xffffffffffffffffffffffffffffffffffffffff00000000 > uint128.max) << 7)) | (v1 >> ((v1 > uint32.max) << 5) >> ((v1 >> ((v1 > uint32.max) << 5) > uint16.max) << 4) > uint8.max) << 3) | (v3 > 3) << 1 | (v3 >> ((v3 > 3) << 1) > 1);
    if (v4 < 128) {
        v5 = v6 = (varg0 << 32 & 0xffffffffffffffffffffffffffffffffffffffff00000000) << int8.max - v4;
    } else {
        v5 = v7 = (varg0 << 32 & 0xffffffffffffffffffffffffffffffffffffffff00000000) >> v4 - int8.max;
    }
    v8 = (v5 * v5 >> int8.max >> (v5 * v5 >> uint8.max)) * (v5 * v5 >> int8.max >> (v5 * v5 >> uint8.max));
    v9 = ((v8 >> int8.max >> (v8 >> uint8.max)) * (v8 >> int8.max >> (v8 >> uint8.max)) >> int8.max >> ((v8 >> int8.max >> (v8 >> uint8.max)) * (v8 >> int8.max >> (v8 >> uint8.max)) >> uint8.max)) * ((v8 >> int8.max >> (v8 >> uint8.max)) * (v8 >> int8.max >> (v8 >> uint8.max)) >> int8.max >> ((v8 >> int8.max >> (v8 >> uint8.max)) * (v8 >> int8.max >> (v8 >> uint8.max)) >> uint8.max));
    v10 = ((v9 >> int8.max >> (v9 >> uint8.max)) * (v9 >> int8.max >> (v9 >> uint8.max)) >> int8.max >> ((v9 >> int8.max >> (v9 >> uint8.max)) * (v9 >> int8.max >> (v9 >> uint8.max)) >> uint8.max)) * ((v9 >> int8.max >> (v9 >> uint8.max)) * (v9 >> int8.max >> (v9 >> uint8.max)) >> int8.max >> ((v9 >> int8.max >> (v9 >> uint8.max)) * (v9 >> int8.max >> (v9 >> uint8.max)) >> uint8.max));
    v11 = ((v10 >> int8.max >> (v10 >> uint8.max)) * (v10 >> int8.max >> (v10 >> uint8.max)) >> int8.max >> ((v10 >> int8.max >> (v10 >> uint8.max)) * (v10 >> int8.max >> (v10 >> uint8.max)) >> uint8.max)) * ((v10 >> int8.max >> (v10 >> uint8.max)) * (v10 >> int8.max >> (v10 >> uint8.max)) >> int8.max >> ((v10 >> int8.max >> (v10 >> uint8.max)) * (v10 >> int8.max >> (v10 >> uint8.max)) >> uint8.max));
    v12 = ((v11 >> int8.max >> (v11 >> uint8.max)) * (v11 >> int8.max >> (v11 >> uint8.max)) >> int8.max >> ((v11 >> int8.max >> (v11 >> uint8.max)) * (v11 >> int8.max >> (v11 >> uint8.max)) >> uint8.max)) * ((v11 >> int8.max >> (v11 >> uint8.max)) * (v11 >> int8.max >> (v11 >> uint8.max)) >> int8.max >> ((v11 >> int8.max >> (v11 >> uint8.max)) * (v11 >> int8.max >> (v11 >> uint8.max)) >> uint8.max));
    v13 = ((v12 >> int8.max >> (v12 >> uint8.max)) * (v12 >> int8.max >> (v12 >> uint8.max)) >> int8.max >> ((v12 >> int8.max >> (v12 >> uint8.max)) * (v12 >> int8.max >> (v12 >> uint8.max)) >> uint8.max)) * ((v12 >> int8.max >> (v12 >> uint8.max)) * (v12 >> int8.max >> (v12 >> uint8.max)) >> int8.max >> ((v12 >> int8.max >> (v12 >> uint8.max)) * (v12 >> int8.max >> (v12 >> uint8.max)) >> uint8.max));
    v14 = ((v13 >> int8.max >> (v13 >> uint8.max)) * (v13 >> int8.max >> (v13 >> uint8.max)) >> int8.max >> ((v13 >> int8.max >> (v13 >> uint8.max)) * (v13 >> int8.max >> (v13 >> uint8.max)) >> uint8.max)) * ((v13 >> int8.max >> (v13 >> uint8.max)) * (v13 >> int8.max >> (v13 >> uint8.max)) >> int8.max >> ((v13 >> int8.max >> (v13 >> uint8.max)) * (v13 >> int8.max >> (v13 >> uint8.max)) >> uint8.max));
    v15 = (0x4000000000000 & v14 >> 205 | (0x8000000000000 & (v13 >> int8.max >> (v13 >> uint8.max)) * (v13 >> int8.max >> (v13 >> uint8.max)) >> 204 | (0x10000000000000 & v13 >> 203 | (0x20000000000000 & (v12 >> int8.max >> (v12 >> uint8.max)) * (v12 >> int8.max >> (v12 >> uint8.max)) >> 202 | (0x40000000000000 & v12 >> 201 | (0x80000000000000 & (v11 >> int8.max >> (v11 >> uint8.max)) * (v11 >> int8.max >> (v11 >> uint8.max)) >> 200 | (0x100000000000000 & v11 >> 199 | (0x200000000000000 & (v10 >> int8.max >> (v10 >> uint8.max)) * (v10 >> int8.max >> (v10 >> uint8.max)) >> 198 | (0x400000000000000 & v10 >> 197 | (0x800000000000000 & (v9 >> int8.max >> (v9 >> uint8.max)) * (v9 >> int8.max >> (v9 >> uint8.max)) >> 196 | (0x1000000000000000 & v9 >> 195 | (0x2000000000000000 & (v8 >> int8.max >> (v8 >> uint8.max)) * (v8 >> int8.max >> (v8 >> uint8.max)) >> 194 | (0x4000000000000000 & v8 >> 193 | (0x8000000000000000 & v5 * v5 >> 192 | v4 + int8.min << 64)))))))))))))) * 0x3627a301d71055774c85;
    if (int24(v15 + 0xfffffffffffffffffffffffffffffffffd709b7e5480fba5a50fed5e62ffc556 >> 128) == int24(v15 + 0xdb2df09e81959a81455e260799a0632f >> 128)) {
        return v15 + 0xfffffffffffffffffffffffffffffffffd709b7e5480fba5a50fed5e62ffc556 >> 128;
    } else {
        v16 = 0x3ad6(v15 + 0xdb2df09e81959a81455e260799a0632f >> 128);
        if (address(v16) <= address(varg0)) {
            return v15 + 0xdb2df09e81959a81455e260799a0632f >> 128;
        } else {
            return v15 + 0xfffffffffffffffffffffffffffffffffd709b7e5480fba5a50fed5e62ffc556 >> 128;
        }
    }
}

function 0x324d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(!(!varg3 | !varg2), InvalidPriceOrLiquidity());
    if (varg0) {
        v0 = 0x3e9b(0, varg1, varg2, varg3);
        return v0;
    } else {
        v1 = 0x3f93(0, varg1, varg2, varg3);
        return v1;
    }
}

function 0x3286(address varg0) private { 
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    MEM[MEM[64] + 192] = 0;
    MEM[MEM[64] + 224] = 0;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64] + 288] = 0;
    v0, /* address */ v1, /* int24 */ v2, /* uint16 */ v3, /* uint16 */ v4, /* uint16 */ v5, /* uint32 */ v6, /* bool */ v7 = varg0.slot0().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 224);
    require(v1 == address(v1));
    require(v2 == int24(v2));
    require(v3 == uint16(v3));
    require(v4 == uint16(v4));
    require(v5 == uint16(v5));
    require(v6 == uint32(v6));
    require(v7 == bool(v7));
    v8, /* address */ v9 = varg0.token0().gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v9 == address(v9));
    v10, /* address */ v11 = varg0.token1().gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v11 == address(v11));
    v12 = new struct(10);
    v12.word0 = varg0;
    v12.word1 = True;
    v12.word2 = int24(v2);
    v13, /* uint24 */ v14 = varg0.fee().gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v14 == uint24(v14));
    v12.word3 = uint24(v14);
    v15, /* int24 */ v16 = varg0.tickSpacing().gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v16 == int24(v16));
    v12.word4 = int24(v16);
    v12.word5 = address(v9);
    v12.word6 = address(v11);
    v12.word7 = address(v1);
    v17, /* uint128 */ v18 = varg0.liquidity().gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v18 == uint128(v18));
    v12.word8 = uint128(v18);
    v19 = 0x4089(v11, v9);
    v12.word9 = bool(v19);
    return v12;
}

function 0x35ce(address varg0) private { 
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    MEM[MEM[64] + 192] = 0;
    MEM[MEM[64] + 224] = 0;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64] + 288] = 0;
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg0.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4, /* address */ v5 = varg0.token0().gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v5 == address(v5));
    v6, /* address */ v7 = varg0.token1().gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v7 == address(v7));
    v8 = new struct(10);
    v8.word0 = varg0;
    v8.word1 = False;
    v8.word2 = int24(0);
    v8.word3 = uint24(3000);
    v8.word4 = int24(0);
    v8.word5 = address(v5);
    v8.word6 = address(v7);
    v9 = 0x41a2(v1, v2);
    v8.word7 = address(v9);
    v10 = v11 = _SafeMul(uint112(v2), uint112(v1));
    v12 = v13 = 1;
    if (v11 >= uint128.max + 1) {
        v12 = v14 = uint64.max + 1;
        v10 = v15 = v11 >> 128;
    }
    if (v10 >= uint64.max + 1) {
        v12 = v16 = v12 << 32;
        v10 = v17 = v10 >> 64;
    }
    if (v10 >= uint32.max + 1) {
        v12 = v18 = v12 << 16;
        v10 = v19 = v10 >> 32;
    }
    if (v10 >= uint16.max + 1) {
        v12 = v20 = v12 << 8;
        v10 = v21 = v10 >> 16;
    }
    if (v10 >= uint8.max + 1) {
        v12 = v22 = v12 << 4;
        v10 = v23 = v10 >> 8;
    }
    if (v10 >= 16) {
        v12 = v24 = v12 << 2;
        v10 = v25 = v10 >> 4;
    }
    if (v10 >= 8) {
        v12 = v26 = v12 << 1;
    }
    v27 = v11 / (v11 / (v11 / v12 + v12 >> 1) + (v11 / v12 + v12 >> 1) >> 1) + (v11 / (v11 / v12 + v12 >> 1) + (v11 / v12 + v12 >> 1) >> 1) >> 1;
    v28 = v11 / (v11 / (v11 / v27 + v27 >> 1) + (v11 / v27 + v27 >> 1) >> 1) + (v11 / (v11 / v27 + v27 >> 1) + (v11 / v27 + v27 >> 1) >> 1) >> 1;
    v29 = v30 = v11 / v28 + v28 >> 1;
    v29 = v31 = v11 / v30;
    v8.word8 = uint128(v29);
    v32 = 0x4089(v7, v5);
    v8.word9 = bool(v32);
    return v8;
}

function 0x375(bytes varg0, uint256 varg1, uint256 varg2) private { 
    if (32 - varg0.length) {
        v0 = 0x4990(varg0.data, varg0.data + varg0.length);
        if (v0.word5) {
            v1 = v2 = v0.word0;
        } else {
            v1 = v3 = v0.word1;
        }
        if (50 - uint8(v0.word4)) {
            if (51 - uint8(v0.word4)) {
                if (3 - uint8(v0.word4)) {
                    return ;
                } else {
                    if (varg2 <= 0) {
                    }
                    require(bool((address(v1)).code.size));
                    v4 = address(v1).transfer(address(v0.word3), varg1).gas(msg.gas);
                    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    return ;
                }
            } else {
                v0.word4 = 3;
                v5 = 0x4ae2(v0.word6);
                if (v0.word5) {
                    v6 = v7 = 0x4b41(1, 0x1000276a3);
                } else {
                    v6 = v8 = 0x4b1a(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                }
                v9 = new uint256[](address(v0.word1));
                MEM[v9.data] = address(v0.word2);
                v10 = new uint256[](224);
                v11 = v12 = 0;
                while (v11 < 224) {
                    MEM[v11 + v10.data] = MEM[v11 + (MEM[64] + 32)];
                    v11 += 32;
                }
                MEM[224 + v10.data] = 0;
                v13, /* uint256 */ v14, /* uint256 */ v15 = address(v0.word3).swap(address(v0.word2), bool(v0.word5), v5, address(v6), v10, v9, address(v0.word0), v16, v16, address(v0.word3), uint8(v0.word4), bool(v0.word5), v0.word6).gas(msg.gas);
                require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                return ;
            }
        } else {
            v17 = 0x141e(!v0.word5, v0.word6, v0.word2);
            if (varg2 >= 0) {
                if (varg1 < 0) {
                    MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 36] = v17;
                    MEM[MEM[64] + 36 + 32] = 0;
                    MEM[MEM[64] + 36 + 64] = address(this);
                    MEM[MEM[64] + 36 + 96] = 128;
                    MEM[MEM[64] + 36 + 128] = 0;
                    v18 = v19 = 0;
                    while (v18 < 0) {
                        MEM[v18 + (MEM[64] + 36 + 128 + 32)] = MEM[v18 + (MEM[64] + 32)];
                        v18 += 32;
                    }
                    MEM[MEM[64] + 36 + 128 + 32] = 0;
                    require(bool((address(v0.word2)).code.size));
                    v20 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(bool((address(v1)).code.size));
                    v21 = address(v1).transfer(address(v0.word3), varg2).gas(msg.gas);
                    require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                }
            } else {
                MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 36] = 0;
                MEM[MEM[64] + 36 + 32] = v17;
                MEM[MEM[64] + 36 + 64] = address(this);
                MEM[MEM[64] + 36 + 96] = 128;
                MEM[MEM[64] + 36 + 128] = 0;
                v22 = v23 = 0;
                while (v22 < 0) {
                    MEM[v22 + (MEM[64] + 36 + 128 + 32)] = MEM[v22 + (MEM[64] + 32)];
                    v22 += 32;
                }
                MEM[MEM[64] + 36 + 128 + 32] = 0;
                require(bool((address(v0.word2)).code.size));
                v24 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(bool((address(v1)).code.size));
                v25 = address(v1).transfer(address(v0.word3), varg1).gas(msg.gas);
                require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
            return ;
        }
    } else {
        require(varg0.data + varg0.length - varg0.data >= 32);
        require(MEM[varg0.data] == address(MEM[varg0.data]));
        if (varg2 <= 0) {
        }
        require(bool((address(MEM[varg0.data])).code.size));
        v26 = address(MEM[varg0.data]).transfer(msg.sender, varg1).gas(msg.gas);
        require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    }
}

function 0x38e9(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4) private { 
    require(int24(varg1), Panic(18)); // division by zero
    v0 = v1 = varg2 / int24(varg1);
    v2 = v3 = varg2 < 0;
    if (v3) {
        require(int24(varg1), Panic(18)); // division by zero
        v2 = v4 = bool(int24(varg2 % int24(varg1)));
    }
    if (v2) {
        v0 = v5 = uint256.max + v1;
    }
    if (!varg0) {
        v6, /* uint256 */ v7 = varg4.staticcall(bytes4(varg3 << 224), int16(int24(1 + v0) >> 8)).gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (bool(v7 & ~(uint256.max + (1 << uint8(int24(1 + v0) % (uint8.max + 1)))))) {
            v8 = 0x4295(v7 & ~(uint256.max + (1 << uint8(int24(1 + v0) % (uint8.max + 1)))));
            v9 = v10 = (1 + v0 + uint8(v8 - int24(1 + v0) % (uint8.max + 1))) * varg1;
        } else {
            v9 = v11 = (1 + v0 + uint8(uint8.max - int24(1 + v0) % (uint8.max + 1))) * varg1;
        }
        return bool(v7 & ~(uint256.max + (1 << uint8(int24(1 + v0) % (uint8.max + 1))))), v9;
    } else {
        v12, /* uint256 */ v13 = varg4.staticcall(bytes4(varg3 << 224), int16(int24(v0) >> 8)).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (bool(v13 & uint256.max + ((1 << uint8(int24(v0) % (uint8.max + 1))) + (1 << uint8(int24(v0) % (uint8.max + 1)))))) {
            v14 = 0x41f4(v13 & uint256.max + ((1 << uint8(int24(v0) % (uint8.max + 1))) + (1 << uint8(int24(v0) % (uint8.max + 1)))));
            v15 = v16 = (v0 - uint8(int24(v0) % (uint8.max + 1) - v14)) * varg1;
        } else {
            v15 = v17 = (v0 - uint8(int24(v0) % (uint8.max + 1))) * varg1;
        }
        return bool(v13 & uint256.max + ((1 << uint8(int24(v0) % (uint8.max + 1))) + (1 << uint8(int24(v0) % (uint8.max + 1))))), v15;
    }
}

function 0x3ad6(uint256 varg0) private { 
    v0 = varg0 + (varg0 >> uint8.max) ^ varg0 >> uint8.max;
    require(v0 <= 0xd89e8, InvalidTick());
    v1 = v2 = 0x100000000000000000000000000000000 ^ (v0 & 0x1) * 0x1fffcb933bd6fad37aa2d162d1a594001;
    if (v0 & 0x2) {
        v1 = v3 = 0xfff97272373d413259a46990580e213a * v2 >> 128;
    }
    if (v0 & 0x4) {
        v1 = v4 = 0xfff2e50f5f656932ef12357cf3c7fdcc * v1 >> 128;
    }
    if (v0 & 0x8) {
        v1 = v5 = 0xffe5caca7e10e4e61c3624eaa0941cd0 * v1 >> 128;
    }
    if (v0 & 0x10) {
        v1 = v6 = 0xffcb9843d60f6159c9db58835c926644 * v1 >> 128;
    }
    if (v0 & 0x20) {
        v1 = v7 = 0xff973b41fa98c081472e6896dfb254c0 * v1 >> 128;
    }
    if (v0 & 0x40) {
        v1 = v8 = 0xff2ea16466c96a3843ec78b326b52861 * v1 >> 128;
    }
    if (v0 & 0x80) {
        v1 = v9 = 0xfe5dee046a99a2a811c461f1969c3053 * v1 >> 128;
    }
    if (v0 & 0x100) {
        v1 = v10 = 0xfcbe86c7900a88aedcffc83b479aa3a4 * v1 >> 128;
    }
    if (v0 & 0x200) {
        v1 = v11 = 0xf987a7253ac413176f2b074cf7815e54 * v1 >> 128;
    }
    if (v0 & 0x400) {
        v1 = v12 = 0xf3392b0822b70005940c7a398e4b70f3 * v1 >> 128;
    }
    if (v0 & 0x800) {
        v1 = v13 = 0xe7159475a2c29b7443b29c7fa6e889d9 * v1 >> 128;
    }
    if (v0 & 0x1000) {
        v1 = v14 = 0xd097f3bdfd2022b8845ad8f792aa5825 * v1 >> 128;
    }
    if (v0 & 0x2000) {
        v1 = v15 = 0xa9f746462d870fdf8a65dc1f90e061e5 * v1 >> 128;
    }
    if (v0 & 0x4000) {
        v1 = v16 = 0x70d869a156d2a1b890bb3df62baf32f7 * v1 >> 128;
    }
    if (v0 & 0x8000) {
        v1 = v17 = 0x31be135f97d08fd981231505542fcfa6 * v1 >> 128;
    }
    if (v0 & 0x10000) {
        v1 = v18 = 0x9aa508b5b7a84e1c677de54f3e99bc9 * v1 >> 128;
    }
    if (v0 & 0x20000) {
        v1 = v19 = 0x5d6af8dedb81196699c329225ee604 * v1 >> 128;
    }
    if (v0 & 0x40000) {
        v1 = v20 = 0x2216e584f5fa1ea926041bedfe98 * v1 >> 128;
    }
    if (v0 & 0x80000) {
        v1 = v21 = 0x48a170391f7dc42444e8fa2 * v1 >> 128;
    }
    if (varg0 > 0) {
        v1 = v22 = uint256.max / v1;
    }
    return uint32.max + v1 >> 32;
}

function receive() public payable { 
}

function 0x3d8b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg3, InvalidPrice());
    v0 = address(varg3 - varg3);
    if (varg0) {
        v1 = 0x4421(address(varg3), v0, varg1 << 96 & 0xffffffffffffffffffffffffffffffff000000000000000000000000);
        return bool(v1 % address(varg3)) + v1 / address(varg3);
    } else {
        v2 = 0x437f(address(varg3), v0, varg1 << 96 & 0xffffffffffffffffffffffffffffffff000000000000000000000000);
        require(address(varg3), Panic(18)); // division by zero
        return v2 / address(varg3);
    }
}

function 0x3e9b(uint256 varg0, uint256 varg1, uint128 varg2, uint256 varg3) private { 
    if (!varg0) {
        if (varg1 <= uint160.max) {
            v0 = v1 = bool((varg1 << 96) % varg2) + (varg1 << 96) / varg2;
        } else {
            v0 = v2 = 0x4421(varg2, uint96.max + 1, varg1);
        }
        require(varg3 > v0, NotEnoughLiquidity());
        return address(varg3) - v0;
    } else {
        if (varg1 <= uint160.max) {
            v3 = v4 = _SafeDiv(varg1 << 96, varg2);
        } else {
            v3 = v5 = 0x437f(varg2, uint96.max + 1, varg1);
        }
        v6 = _SafeAdd(address(varg3), v3);
        v7 = 0x4453(v6);
        return v7;
    }
}

function 0x3f93(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (0 - varg1) {
        v0 = varg2 << 96 & 0xffffffffffffffffffffffffffffffff000000000000000000000000;
        if (!varg0) {
            v1 = varg1 * address(varg3);
            require((v0 > v1) & (varg3 == v1 / varg1), PriceOverflow());
            v2 = 0x4421(v0 - v1, address(varg3), v0);
            v3 = 0x4453(v2);
            return v3;
        } else {
            require(varg1, Panic(18)); // division by zero
            if (!(address(varg3) * varg1 / varg1 - address(varg3))) {
                if (address(varg3) * varg1 + v0 >= v0) {
                    v4 = 0x4421(address(varg3) * varg1 + v0, address(varg3), v0);
                    return v4;
                }
            }
            v5 = _SafeDiv(v0, address(varg3));
            v6 = _SafeAdd(v5, varg1);
            return bool(v0 % v6) + v0 / v6;
        }
    } else {
        return varg3;
    }
}

function 0x4089(address varg0, address varg1) private { 
    if (varg1 + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e) {
        if (varg0 + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e) {
            if (varg1 + 0xffffffffffffffffffffffff5f47966e39de74c93e2e62b5d1614f31c9f914b8) {
                if (varg0 + 0xffffffffffffffffffffffff5f47966e39de74c93e2e62b5d1614f31c9f914b8) {
                    if (varg1 + 0xffffffffffffffffffffffff253e806a72d11adc5ddf9df966ba683ec27ce139) {
                        if (varg0 + 0xffffffffffffffffffffffff253e806a72d11adc5ddf9df966ba683ec27ce139) {
                            return 0;
                        } else {
                            return 0;
                        }
                    } else {
                        return 1;
                    }
                } else {
                    return 0;
                }
            } else {
                return 1;
            }
        } else {
            return 0;
        }
    } else {
        return 1;
    }
}

function 0x41a2(uint112 varg0, uint112 varg1) private { 
    v0 = v1 = 0x437f(varg0, uint144.max + 1, varg1);
    v2 = v3 = 1;
    if (v1 >= uint128.max + 1) {
        v2 = v4 = uint64.max + 1;
        v0 = v5 = v1 >> 128;
    }
    if (v0 >= uint64.max + 1) {
        v2 = v6 = v2 << 32;
        v0 = v7 = v0 >> 64;
    }
    if (v0 >= uint32.max + 1) {
        v2 = v8 = v2 << 16;
        v0 = v9 = v0 >> 32;
    }
    if (v0 >= uint16.max + 1) {
        v2 = v10 = v2 << 8;
        v0 = v11 = v0 >> 16;
    }
    if (v0 >= uint8.max + 1) {
        v2 = v12 = v2 << 4;
        v0 = v13 = v0 >> 8;
    }
    if (v0 >= 16) {
        v2 = v14 = v2 << 2;
        v0 = v15 = v0 >> 4;
    }
    if (v0 >= 8) {
        v2 = v16 = v2 << 1;
    }
    v17 = v1 / (v1 / (v1 / v2 + v2 >> 1) + (v1 / v2 + v2 >> 1) >> 1) + (v1 / (v1 / v2 + v2 >> 1) + (v1 / v2 + v2 >> 1) >> 1) >> 1;
    v18 = v1 / (v1 / (v1 / v17 + v17 >> 1) + (v1 / v17 + v17 >> 1) >> 1) + (v1 / (v1 / v17 + v17 >> 1) + (v1 / v17 + v17 >> 1) >> 1) >> 1;
    v19 = v20 = v1 / v18 + v18 >> 1;
    v19 = v21 = v1 / v20;
    v22 = _SafeMul(v19, uint24.max + 1);
    return v22;
}

function 0x41f4(uint256 varg0) private { 
    v0 = v1 = 0;
    require(varg0 > v1);
    if (varg0 >= uint128.max + 1) {
        varg0 = v2 = varg0 >> 128;
        v0 = v3 = 128;
    }
    if (varg0 >= uint64.max + 1) {
        varg0 = v4 = varg0 >> 64;
        v0 = v5 = 64 + v0;
    }
    if (varg0 >= uint32.max + 1) {
        varg0 = v6 = varg0 >> 32;
        v0 = v7 = 32 + v0;
    }
    if (varg0 >= uint16.max + 1) {
        varg0 = v8 = varg0 >> 16;
        v0 = v9 = 16 + v0;
    }
    if (varg0 >= uint8.max + 1) {
        varg0 = v10 = varg0 >> 8;
        v0 = v11 = 8 + v0;
    }
    if (varg0 >= 16) {
        varg0 = v12 = varg0 >> 4;
        v0 = v13 = 4 + v0;
    }
    if (varg0 >= 4) {
        varg0 = v14 = varg0 >> 2;
        v0 = v15 = 2 + v0;
    }
    if (varg0 < 2) {
        return v0;
    } else {
        return 1 + v0;
    }
}

function 0x4295(uint256 varg0) private { 
    require(varg0 > 0);
    v0 = v1 = uint8.max;
    if (!uint128(varg0)) {
        varg0 = v2 = varg0 >> 128;
    } else {
        v0 = v3 = int8.max;
    }
    if (!uint64(varg0)) {
        varg0 = v4 = varg0 >> 64;
    } else {
        v0 = v5 = v0 - 64;
    }
    if (!uint32(varg0)) {
        varg0 = v6 = varg0 >> 32;
    } else {
        v0 = v7 = v0 - 32;
    }
    if (!uint16(varg0)) {
        varg0 = v8 = varg0 >> 16;
    } else {
        v0 = v9 = v0 - 16;
    }
    if (!uint8(varg0)) {
        varg0 = v10 = varg0 >> 8;
    } else {
        v0 = v11 = v0 - 8;
    }
    if (!bool(varg0)) {
        varg0 = v12 = varg0 >> 4;
    } else {
        v0 = v13 = v0 - 4;
    }
    if (!(varg0 & 0x3)) {
        varg0 = v14 = varg0 >> 2;
    } else {
        v0 = v15 = v0 - 2;
    }
    if (!(varg0 & 0x1)) {
        return v0;
    } else {
        return uint256.max + v0;
    }
}

function 0x437f(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg1 * varg2;
    v1 = varg2 * varg1 % uint256.max - v0 - (varg2 * varg1 % uint256.max < v0);
    require(varg0 > v1);
    if (0 - v1) {
        v2 = varg2 * varg1 % varg0;
        v3 = varg0 & 0 - varg0;
        v4 = varg0 / v3;
        v5 = (2 - v4 * ((2 - v4 * ((2 - v4 * (0x2 ^ v4 * 3)) * (0x2 ^ v4 * 3))) * ((2 - v4 * (0x2 ^ v4 * 3)) * (0x2 ^ v4 * 3)))) * ((2 - v4 * ((2 - v4 * (0x2 ^ v4 * 3)) * (0x2 ^ v4 * 3))) * ((2 - v4 * (0x2 ^ v4 * 3)) * (0x2 ^ v4 * 3)));
        return ((v0 - v2) / v3 | (v1 - (v2 > v0)) * (1 + (0 - v3) / v3)) * ((2 - v4 * ((2 - v4 * ((2 - v4 * v5) * v5)) * ((2 - v4 * v5) * v5))) * ((2 - v4 * ((2 - v4 * v5) * v5)) * ((2 - v4 * v5) * v5)));
    } else {
        return v0 / varg0;
    }
}

function 0x4421(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x437f(varg0, varg1, varg2);
    require(varg0, Panic(18)); // division by zero
    if (!(varg2 * varg1 % varg0)) {
        return v0;
    } else {
        require(1 + v0);
        return 1 + v0;
    }
}

function 0x4453(uint256 varg0) private { 
    require(varg0 < uint160.max + 1, SafeCastOverflow());
    return varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2 <= varg3);
    require(varg3 <= varg1);
    return varg3 - varg2, varg2 + varg0;
}

function 0x4990(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 224);
    v0 = new struct(7);
    require(!((v0 + 224 > uint64.max) | (v0 + 224 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(MEM[varg0] == address(MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(MEM[varg0 + 32] == address(MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(MEM[varg0 + 64] == address(MEM[varg0 + 64]));
    v0.word2 = MEM[varg0 + 64];
    require(MEM[varg0 + 96] == address(MEM[varg0 + 96]));
    v0.word3 = MEM[varg0 + 96];
    require(MEM[varg0 + 128] == uint8(MEM[varg0 + 128]));
    v0.word4 = MEM[varg0 + 128];
    require(MEM[varg0 + 160] == bool(MEM[varg0 + 160]));
    v0.word5 = MEM[varg0 + 160];
    v0.word6 = MEM[varg0 + 192];
    return v0;
}

function 0x4ae2(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x4b1a(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x4b41(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x4d80(uint24 varg0, uint24 varg1) private { 
    require(varg1 + varg0 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x4d9c(uint24 varg0, uint24 varg1) private { 
    require(varg0 - varg1 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x4dd4(uint128 varg0, uint128 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x4dfa(address varg0, address varg1) private { 
    require((varg1 == address(varg0 * varg1) / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return address(varg0 * varg1);
}

function 0x4f17(int128 varg0) private { 
    require(varg0 - int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x4f55(int24 varg0, int24 varg1) private { 
    v0 = varg0 - varg1;
    require(!((v0 > int24.max) | (v0 < int24.min)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x4f7a(uint128 varg0, uint128 varg1) private { 
    require(varg1 + varg0 <= uint128.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x4f9a(uint128 varg0, uint128 varg1) private { 
    require(varg0 - varg1 <= uint128.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x848(bytes varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (varg2 <= 0) {
    }
    v0 = 0x4990(varg0.data, varg0.data + varg0.length);
    if (v0.word5) {
        v1 = v2 = v0.word1;
    } else {
        v1 = v3 = v0.word0;
    }
    if (v0.word5) {
        v4 = v5 = v0.word0;
    } else {
        v4 = v6 = v0.word1;
    }
    v7 = 0x1562(!v0.word5, varg1, v0.word3);
    if (35 - uint8(v0.word4)) {
        if (!(34 - uint8(v0.word4))) {
            require(bool((address(v1)).code.size));
            v8 = address(v1).transfer(address(v0.word2), varg1).gas(msg.gas);
            require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v9 = 0x141e(!v0.word5, varg1, v0.word2);
            if (v0.word5) {
                MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 36] = v9;
                MEM[MEM[64] + 36 + 32] = 0;
                MEM[MEM[64] + 36 + 64] = address(this);
                MEM[MEM[64] + 36 + 96] = 128;
                MEM[MEM[64] + 36 + 128] = 0;
                v10 = v11 = 0;
                while (v10 < 0) {
                    MEM[v10 + (MEM[64] + 36 + 128 + 32)] = MEM[v10 + (MEM[64] + 32)];
                    v10 += 32;
                }
                MEM[MEM[64] + 36 + 128 + 32] = 0;
                require(bool((address(v0.word2)).code.size));
                v12 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else {
                MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 36] = 0;
                MEM[MEM[64] + 36 + 32] = v9;
                MEM[MEM[64] + 36 + 64] = address(this);
                MEM[MEM[64] + 36 + 96] = 128;
                MEM[MEM[64] + 36 + 128] = 0;
                v13 = v14 = 0;
                while (v13 < 0) {
                    MEM[v13 + (MEM[64] + 36 + 128 + 32)] = MEM[v13 + (MEM[64] + 32)];
                    v13 += 32;
                }
                MEM[MEM[64] + 36 + 128 + 32] = 0;
                require(bool((address(v0.word2)).code.size));
                v15 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
        }
    } else {
        if (!v0.word5) {
            v16 = v17 = 0x4b41(1, 0x1000276a3);
        } else {
            v16 = v18 = 0x4b1a(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
        }
        v19 = new uint256[](32);
        v20 = v21 = 0;
        while (v20 < 32) {
            MEM[v20 + v19.data] = MEM[v20 + (MEM[64] + 32)];
            v20 += 32;
        }
        MEM[32 + v19.data] = 0;
        v22, /* uint256 */ v23, /* uint256 */ v24 = address(v0.word2).swap(address(this), bool(!v0.word5), v0.word6, address(v16), v19, v25, address(v1)).gas(msg.gas);
        require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    }
    require(bool((address(v4)).code.size));
    v26 = address(v4).transfer(address(v0.word3), v7).gas(msg.gas);
    require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0x352bc85 > function_selector >> 224) {
        if (167 > function_selector >> 224) {
            if (10 == function_selector >> 224) {
                0x0000000a();
            } else if (162 == function_selector >> 224) {
                0x000000a2();
            } else if (163 == function_selector >> 224) {
                0x000000a3();
            }
        } else if (167 == function_selector >> 224) {
            0x000000a7();
        } else if (200 == function_selector >> 224) {
            withdrawToken_14u2(address,uint256);
        } else if (243 == function_selector >> 224) {
            0x000000f3();
        }
    } else if (0x8518b472 > function_selector >> 224) {
        if (0x352bc85 == function_selector >> 224) {
            0x0352bc85();
        } else if (0x33ce1b35 == function_selector >> 224) {
            0x33ce1b35();
        } else if (0x5d27030d == function_selector >> 224) {
            0x5d27030d();
        }
    } else if (0x8518b472 == function_selector >> 224) {
        0x8518b472();
    } else if (0xe086e5ec == function_selector >> 224) {
        withdrawETH();
    } else if (0xf4f3b200 == function_selector >> 224) {
        withdrawERC20(address);
    }
    v0, v1 = _SafeSub(0, msg.data.length, 0, 4);
    v2 = v3 = bytes4(msg.data[v1]);
    if (v0 < 4) {
        v2 = v4 = bytes4(msg.data[v1] & 0xffffffff00000000000000000000000000000000000000000000000000000000 << (4 - v0 << 3));
    }
    if (0xfa461e3300000000000000000000000000000000000000000000000000000000 - bytes4(v2)) {
        if (0x23a69e7500000000000000000000000000000000000000000000000000000000 - bytes4(v2)) {
            if (0x3a1c453c00000000000000000000000000000000000000000000000000000000 - bytes4(v2)) {
                v5 = v6 = 0;
            } else {
                v5 = v7 = 1;
            }
        } else {
            v5 = v8 = 1;
        }
    } else {
        v5 = v9 = 1;
    }
    if (!v5) {
        v10, v11 = _SafeSub(0, msg.data.length, 4, msg.data.length);
        require(v11 + v10 - v11 >= 128);
        require(msg.data[v11] == address(msg.data[v11]));
        require(msg.data[v11 + 96] <= uint64.max);
        require(v11 + msg.data[v11 + 96] + 31 < v11 + v10);
        require(msg.data[v11 + msg.data[v11 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v11 + msg.data[v11 + 96]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v11 + msg.data[v11 + 96]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v11 + msg.data[v11 + 96]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        MEM[MEM[64]] = msg.data[v11 + msg.data[v11 + 96]];
        require(v11 + msg.data[v11 + 96] + msg.data[v11 + msg.data[v11 + 96]] + 32 <= v11 + v10);
        CALLDATACOPY(MEM[64] + 32, v11 + msg.data[v11 + 96] + 32, msg.data[v11 + msg.data[v11 + 96]]);
        MEM[MEM[64] + msg.data[v11 + msg.data[v11 + 96]] + 32] = 0;
        0x848(MEM[64], msg.data[v11 + 64], msg.data[v11 + 32], msg.data[v11]);
    } else {
        v12, v13 = _SafeSub(0, msg.data.length, 4, msg.data.length);
        require(v13 + v12 - v13 >= 96);
        require(msg.data[v13 + 64] <= uint64.max);
        require(v13 + msg.data[v13 + 64] + 31 < v13 + v12);
        require(msg.data[v13 + msg.data[v13 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v13 + msg.data[v13 + 64]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v13 + msg.data[v13 + 64]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v13 + msg.data[v13 + 64]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        MEM[MEM[64]] = msg.data[v13 + msg.data[v13 + 64]];
        require(v13 + msg.data[v13 + 64] + msg.data[v13 + msg.data[v13 + 64]] + 32 <= v13 + v12);
        CALLDATACOPY(MEM[64] + 32, v13 + msg.data[v13 + 64] + 32, msg.data[v13 + msg.data[v13 + 64]]);
        MEM[MEM[64] + msg.data[v13 + msg.data[v13 + 64]] + 32] = 0;
        0x375(MEM[64], msg.data[v13 + 32], msg.data[v13]);
    }
    MEM[64] = MEM[64] + 32;
    MEM[MEM[64]] = 0;
}
