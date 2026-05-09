// Decompiled by library.dedaub.com
// 2026.04.09 07:08 UTC
// Compiled using the solidity compiler version 0.8.25


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _callers; // STORAGE[0x1]
address _owner; // STORAGE[0x0] bytes 0 to 19



function fallback() public payable { 
    revert();
}

function 0x21f8c707(address varg0, int24 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(varg1);
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v0, /* uint256 */ v1, /* uint256 */ v2 = varg0.staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v3 = v4 = 96;
    } else {
        v3 = v5 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
    }
    require(v0, Error('ticks() call failed'));
    require(v2 + MEM[v3] - v2 >= 64);
    require(MEM[v2] == uint128(MEM[v2]));
    require(MEM[v2 + 32] == int128(MEM[v2 + 32]));
    return int128(MEM[v2 + 32]);
}

function 0x1660(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = 0x232d(varg1, varg2, varg3, varg4, varg5);
    v1 = 0;
    if (v0.length > v1) {
        v2 = _SafeSub(v0.length, 1);
        require(v2 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 = 0;
        while (v3 < varg0.length) {
            require(v3 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (int24(varg0[v3]) < int24(v0[v2])) {
                v1 = 0x3e0e(v1);
            }
            v3 += 1;
        }
    }
    v4 = v1 + v0.length;
    require(v0.length <= v4, Panic(17)); // arithmetic overflow or underflow
    require(v4 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](v4);
    if (v4) {
        v6 = v5.data;
        while (v4) {
            v7 = new struct(2);
            v7.word0 = 0;
            v7.word1 = 0;
            MEM[v6] = v7;
            v6 += 32;
            v4 = v4 - 1;
        }
    }
    v8 = 0;
    while (v8 < v0.length) {
        require(v8 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(int24(v0[v8]));
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v9, /* uint256 */ v10, /* uint256 */ v11 = address(varg5).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v12 = v13 = 96;
        } else {
            v12 = v14 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v14.data, 0, RETURNDATASIZE());
        }
        require(v9, Error('ticks() call failed'));
        require(v11 + MEM[v12] - v11 >= 64);
        require(MEM[v11] == uint128(MEM[v11]));
        require(MEM[v11 + 32] == int128(MEM[v11 + 32]));
        v15 = new struct(2);
        v15.word0 = int24(v0[v8]);
        v15.word1 = int128(MEM[v11 + 32]);
        v8 = 0x3e0e(v8);
        require(v8 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v5[v8] = v15;
        v8 += 1;
    }
    v16 = v0.length > 0;
    if (v16) {
        v16 = v17 = v1 > 0;
    }
    if (v16) {
        v18 = _SafeSub(v0.length, 1);
        require(v18 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v19 = v20 = _SafeSub(varg0.length, 1);
        while (v19 >= 0) {
            require(v19 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (int24(varg0[v19]) < int24(v0[v18])) {
                MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(int24(varg0[v19]));
                MCOPY(MEM[64], MEM[64] + 32, 36);
                MEM[MEM[64] + 36] = 0;
                v21, /* uint256 */ v22, /* uint256 */ v23 = address(varg5).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v24 = v25 = 96;
                } else {
                    v24 = v26 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v26.data, 0, RETURNDATASIZE());
                }
                require(v21, Error('ticks() call failed'));
                require(v23 + MEM[v24] - v23 >= 64);
                require(MEM[v23] == uint128(MEM[v23]));
                require(MEM[v23 + 32] == int128(MEM[v23 + 32]));
                v27 = new struct(2);
                v27.word0 = int24(varg0[v19]);
                v27.word1 = int128(MEM[v23 + 32]);
                v8 = 0x3e0e(v8);
                require(v8 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v5[v8] = v27;
            }
            require(v19 + int256.min, Panic(17)); // arithmetic overflow or underflow
            v19 += uint256.max;
        }
    }
    v28 = 0x273c(varg1, varg2, varg3, varg4, varg5);
    v29 = 0;
    if (v28.length > v29) {
        v30 = _SafeSub(v28.length, 1);
        require(v30 < v28.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v31 = 0;
        while (v31 < varg0.length) {
            require(v31 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (int24(varg0[v31]) > int24(v28[v30])) {
                v29 = 0x3e0e(v29);
            }
            v31 += 1;
        }
    }
    v32 = v29 + v28.length;
    require(v28.length <= v32, Panic(17)); // arithmetic overflow or underflow
    require(v32 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v33 = new uint256[](v32);
    if (v32) {
        v34 = v33.data;
        while (v32) {
            v35 = new struct(2);
            v35.word0 = 0;
            v35.word1 = 0;
            MEM[v34] = v35;
            v34 += 32;
            v32 = v32 - 1;
        }
    }
    v36 = 0;
    while (v36 < v28.length) {
        require(v36 < v28.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(int24(v28[v36]));
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v37, /* uint256 */ v38, /* uint256 */ v39 = address(varg5).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v40 = v41 = 96;
        } else {
            v40 = v42 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v42.data, 0, RETURNDATASIZE());
        }
        require(v37, Error('ticks() call failed'));
        require(v39 + MEM[v40] - v39 >= 64);
        require(MEM[v39] == uint128(MEM[v39]));
        require(MEM[v39 + 32] == int128(MEM[v39 + 32]));
        v43 = new struct(2);
        v43.word0 = int24(v28[v36]);
        v43.word1 = int128(MEM[v39 + 32]);
        v36 = 0x3e0e(v36);
        require(v36 < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v33[v36] = v43;
        v36 += 1;
    }
    v44 = v28.length > 0;
    if (v44) {
        v44 = v45 = v29 > 0;
    }
    if (!v44) {
        return v33, v5;
    } else {
        v46 = _SafeSub(v28.length, 1);
        require(v46 < v28.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v47 = 0;
        while (v47 < varg0.length) {
            require(v47 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (int24(varg0[v47]) > int24(v28[v46])) {
                MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(int24(varg0[v47]));
                MCOPY(MEM[64], MEM[64] + 32, 36);
                MEM[MEM[64] + 36] = 0;
                v48, /* uint256 */ v49, /* uint256 */ v50 = address(varg5).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v51 = v52 = 96;
                } else {
                    v51 = v53 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v53.data, 0, RETURNDATASIZE());
                }
                require(v48, Error('ticks() call failed'));
                require(v50 + MEM[v51] - v50 >= 64);
                require(MEM[v50] == uint128(MEM[v50]));
                require(MEM[v50 + 32] == int128(MEM[v50 + 32]));
                v54 = new struct(2);
                v54.word0 = int24(varg0[v47]);
                v54.word1 = int128(MEM[v50 + 32]);
                v36 = 0x3e0e(v36);
                require(v36 < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v33[v36] = v54;
            }
            v47 += 1;
        }
        return v33, v5;
    }
}

function 0x2ba6c401(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    require(v0.data + v0.length - v0.data >= 128);
    require(MEM[v0.data] == uint8(MEM[v0.data]));
    require(v0[32][32] == address(v0[32][32]));
    require(v0[96] == int16(v0[96]));
    if (1 - uint8(MEM[v0.data])) {
        v1, /* address */ v2, /* int24 */ v3, /* uint16 */ v4, /* uint16 */ v5, /* uint16 */ v6 = address(v0[32][32]).slot0().gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        v7 = new struct(5);
        require(!((v7 + 160 > uint64.max) | (v7 + 160 < v7)), Panic(65)); // failed memory allocation (too much memory)
        require(v2 == address(v2));
        v7.word0 = v2;
        require(v3 == int24(v3));
        v7.word1 = v3;
        require(v4 == uint16(v4));
        v7.word2 = v4;
        require(v5 == uint16(v5));
        v7.word3 = v5;
        require(v6 == uint16(v6));
        v7.word4 = v6;
        v8 = v9 = v7.word1;
        v10 = v11 = v7.word0;
    } else {
        v12, /* address */ v13, /* int24 */ v14, /* uint16 */ v15, /* uint16 */ v16, /* uint16 */ v17 = address(v0[32][32]).slot0().gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        v18 = new struct(5);
        require(!((v18 + 160 > uint64.max) | (v18 + 160 < v18)), Panic(65)); // failed memory allocation (too much memory)
        require(v13 == address(v13));
        v18.word0 = v13;
        require(v14 == int24(v14));
        v18.word1 = v14;
        require(v15 == uint16(v15));
        v18.word2 = v15;
        require(v16 == uint16(v16));
        v18.word3 = v16;
        require(v17 == uint16(v17));
        v18.word4 = v17;
        v8 = v19 = v18.word1;
        v10 = v20 = v18.word0;
    }
    v21, /* int24 */ v22 = address(v0[32][32]).tickSpacing().gas(msg.gas);
    require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v22 == int24(v22));
    v23, /* uint128 */ v24 = address(v0[32][32]).liquidity().gas(msg.gas);
    require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v24 == uint128(v24));
    v25, v26 = 0x604(0, v0[96], v0[64], v22, v8, v0[32][32]);
    MEM[32 + MEM[64]] = int24(v8);
    MEM[32 + MEM[64] + 32] = address(v10);
    MEM[32 + MEM[64] + 64] = uint128(v24);
    MEM[32 + MEM[64] + 96] = 160;
    MEM[32 + MEM[64] + 160] = v26.length;
    v27 = v28 = 32 + MEM[64] + 160 + 32;
    v29 = v30 = v26.data;
    v31 = v32 = 0;
    while (v31 < v26.length) {
        MEM[v27] = int24(MEM[MEM[v29]]);
        MEM[v27 + 32] = int128(MEM[32 + MEM[v29]]);
        v27 = v27 + 64;
        v29 += 32;
        v31 += 1;
    }
    MEM[32 + MEM[64] + 128] = v27 - (32 + MEM[64]);
    MEM[v27] = v25.length;
    v33 = v34 = v27 + 32;
    v35 = v36 = v25.data;
    v37 = v38 = 0;
    while (v37 < v25.length) {
        MEM[v33] = int24(MEM[MEM[v35]]);
        MEM[v33 + 32] = int128(MEM[32 + MEM[v35]]);
        v33 = v33 + 64;
        v35 += 32;
        v37 += 1;
    }
    v39 = new uint256[](v33 - MEM[64] - 32);
    MCOPY(v39.data, MEM[64] + 32, v33 - MEM[64] - 32);
    MEM[v39 + (v33 - MEM[64] - 32) + 32] = 0;
    return v39;
}

function 0x4ede648d(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    require(v0.data + v0.length - v0.data >= 160);
    require(MEM[v0.data] == uint8(MEM[v0.data]));
    require(v0[32][32] == address(v0[32][32]));
    require(v0[96] == int16(v0[96]));
    require(v0[128] <= uint64.max);
    require(v0.data + v0.length > v0.data + v0[128] + 31);
    require(v0[v0[128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0[v0[128]]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0[v0[128]]) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0[v0[128]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0.data + v0[128] + v0[v0[128]] + 32 <= v0.data + v0.length);
    MCOPY(v1.data, v0.data + v0[128] + 32, v0[v0[128]]);
    v1[v0[v0[128]]] = 0;
    require(3, Panic(18)); // division by zero
    require(!(v1.length % 3), Error('invalid packed ticks length'));
    require(3, Panic(18)); // division by zero
    require(v1.length / 3 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](v1.length / 3);
    if (v1.length / 3) {
        CALLDATACOPY(v2.data, msg.data.length, v1.length / 3 << 5);
    }
    v3 = v4 = 0;
    while (v3 < v1.length / 3) {
        require(2 <= v3 + 2, Panic(17)); // arithmetic overflow or underflow
        require(v3 + 2 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(1 <= v3 + 1, Panic(17)); // arithmetic overflow or underflow
        require(v3 + 1 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v3 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 += 3;
        require(v3 <= v3, Panic(17)); // arithmetic overflow or underflow
        if (!((v1[v3] >> 248 << 16 | uint24(uint8(v1[v3 + 1] >> 248 << 248 >> 248)) << 8 | v1[v3 + 2] >> 248) & 0x800000)) {
            require(v3 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v2[v3] = int24(uint24(v1[v3] >> 248 << 16 | uint24(uint8(v1[v3 + 1] >> 248 << 248 >> 248)) << 8 | v1[v3 + 2] >> 248));
        } else {
            require(v3 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v2[v3] = int24(0xff000000 | uint24(v1[v3] >> 248 << 16 | uint24(uint8(v1[v3 + 1] >> 248 << 248 >> 248)) << 8 | v1[v3 + 2] >> 248));
        }
        v3 += 1;
    }
    if (1 - uint8(MEM[v0.data])) {
        v5, /* address */ v6, /* int24 */ v7, /* uint16 */ v8, /* uint16 */ v9, /* uint16 */ v10 = address(v0[32][32]).slot0().gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        v11 = new struct(5);
        require(!((v11 + 160 > uint64.max) | (v11 + 160 < v11)), Panic(65)); // failed memory allocation (too much memory)
        require(v6 == address(v6));
        v11.word0 = v6;
        require(v7 == int24(v7));
        v11.word1 = v7;
        require(v8 == uint16(v8));
        v11.word2 = v8;
        require(v9 == uint16(v9));
        v11.word3 = v9;
        require(v10 == uint16(v10));
        v11.word4 = v10;
        v12 = v13 = v11.word1;
        v14 = v15 = v11.word0;
    } else {
        v16, /* address */ v17, /* int24 */ v18, /* uint16 */ v19, /* uint16 */ v20, /* uint16 */ v21 = address(v0[32][32]).slot0().gas(msg.gas);
        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        v22 = new struct(5);
        require(!((v22 + 160 > uint64.max) | (v22 + 160 < v22)), Panic(65)); // failed memory allocation (too much memory)
        require(v17 == address(v17));
        v22.word0 = v17;
        require(v18 == int24(v18));
        v22.word1 = v18;
        require(v19 == uint16(v19));
        v22.word2 = v19;
        require(v20 == uint16(v20));
        v22.word3 = v20;
        require(v21 == uint16(v21));
        v22.word4 = v21;
        v12 = v23 = v22.word1;
        v14 = v24 = v22.word0;
    }
    v25, /* int24 */ v26 = address(v0[32][32]).tickSpacing().gas(msg.gas);
    require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v26 == int24(v26));
    v27, /* uint128 */ v28 = address(v0[32][32]).liquidity().gas(msg.gas);
    require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v28 == uint128(v28));
    v29, v30 = 0x1660(v2, v0[96], v0[64], v26, v12, v0[32][32]);
    v31 = 0x1cf5(v30);
    v32 = 0x1cf5(v29);
    MEM[MEM[64] + 32] = v12 << 232;
    MEM[MEM[64] + 35] = bytes20(v14 << 96);
    MEM[MEM[64] + 55] = bytes16(v28 << 128);
    MEM[MEM[64] + 103] = bytes2(v30.length << 240);
    MEM[MEM[64] + 105] = bytes2(v29.length << 240);
    MCOPY(139 + MEM[64], MEM[64] + 32, 39);
    MEM[139 + MEM[64] + 39] = 0;
    MCOPY(139 + MEM[64] + 39, MEM[64] + 32, 75 + (MEM[64] - MEM[64]));
    MEM[139 + MEM[64] + 39 + (75 + (MEM[64] - MEM[64]))] = 0;
    MCOPY(139 + MEM[64] + 39 + (75 + (MEM[64] - MEM[64])), v31.data, v31.length);
    MEM[139 + MEM[64] + 39 + (75 + (MEM[64] - MEM[64])) + v31.length] = 0;
    MCOPY(139 + MEM[64] + 39 + (75 + (MEM[64] - MEM[64])) + v31.length, v32.data, v32.length);
    MEM[139 + MEM[64] + 39 + (75 + (MEM[64] - MEM[64])) + v31.length + v32.length] = 0;
    v33 = new uint256[](139 + MEM[64] + 39 + (75 + (MEM[64] - MEM[64])) + v31.length + v32.length - MEM[64] - 32);
    MCOPY(v33.data, MEM[64] + 32, 139 + MEM[64] + 39 + (75 + (MEM[64] - MEM[64])) + v31.length + v32.length - MEM[64] - 32);
    MEM[v33 + (139 + MEM[64] + 39 + (75 + (MEM[64] - MEM[64])) + v31.length + v32.length - MEM[64] - 32) + 32] = 0;
    return v33;
}

function callers(address varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    return _callers[varg0];
}

function 0x1cf5(uint256 varg0) private { 
    require((varg0.length == varg0.length * 19 / 19) | !0x13, Panic(17)); // arithmetic overflow or underflow
    require(varg0.length * 19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length * 19);
    if (varg0.length * 19) {
        CALLDATACOPY(v0.data, msg.data.length, varg0.length * 19);
    }
    v1 = v2 = 0;
    while (v1 < varg0.length) {
        require(v1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM8[32 + v1 + v0] = (byte(bytes1(int24(MEM[varg0[v1]]) >> 16 << 248), 0x0)) & 0xFF;
        require(1 <= v1 + 1, Panic(17)); // arithmetic overflow or underflow
        require(v1 + 1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM8[32 + (v1 + 1) + v0] = (byte(bytes1(int24(MEM[varg0[v1]]) >> 8 << 248), 0x0)) & 0xFF;
        require(2 <= v1 + 2, Panic(17)); // arithmetic overflow or underflow
        require(v1 + 2 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM8[32 + (v1 + 2) + v0] = (byte(bytes1(MEM[varg0[v1]] << 248), 0x0)) & 0xFF;
        require(v1 <= 3 + v1, Panic(17)); // arithmetic overflow or underflow
        v3 = v4 = 0;
        while (v3 < 16) {
            v5 = _SafeSub(15, v3);
            require((v5 == v5 << 3 >> 3) | !0x8, Panic(17)); // arithmetic overflow or underflow
            require(3 + v1 <= v3 + (3 + v1), Panic(17)); // arithmetic overflow or underflow
            require(v3 + (3 + v1) < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM8[32 + (v3 + (3 + v1)) + v0] = (byte(bytes1(int128(MEM[32 + varg0[v1]]) >> (v5 << 3) << 248), 0x0)) & 0xFF;
            v3 += 1;
        }
        v1 += 19;
        require(3 + v1 <= v1, Panic(17)); // arithmetic overflow or underflow
        v1 += 1;
    }
    return v0;
}

function owner() public payable { 
    return _owner;
}

function setCaller(address _caller, bool _value) public payable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _owner, Error('!owner'));
    _callers[_caller] = _value;
}

function 0x9ec18964(address varg0, uint256 varg1, uint256 varg2, int16 varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    MEM[MEM[64] + 192] = 96;
    MEM[MEM[64] + 224] = 96;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64] + 288] = 0;
    MEM[MEM[64] + 320] = 0;
    v0, /* address */ v1 = varg0.token0().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == address(v1));
    v2, /* address */ v3 = varg0.token1().gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v3 == address(v3));
    if (1 - varg1) {
        v4, /* address */ v5, /* int24 */ v6, /* uint16 */ v7, /* uint16 */ v8, /* uint16 */ v9 = varg0.slot0().gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        v10 = new struct(5);
        require(!((v10 + 160 > uint64.max) | (v10 + 160 < v10)), Panic(65)); // failed memory allocation (too much memory)
        require(v5 == address(v5));
        v10.word0 = v5;
        require(v6 == int24(v6));
        v10.word1 = v6;
        require(v7 == uint16(v7));
        v10.word2 = v7;
        require(v8 == uint16(v8));
        v10.word3 = v8;
        require(v9 == uint16(v9));
        v10.word4 = v9;
        v11 = v12 = v10.word0;
        v13 = v14 = v10.word1;
    } else {
        v15, /* address */ v16, /* int24 */ v17, /* uint16 */ v18, /* uint16 */ v19, /* uint16 */ v20 = varg0.slot0().gas(msg.gas);
        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        v21 = new struct(5);
        require(!((v21 + 160 > uint64.max) | (v21 + 160 < v21)), Panic(65)); // failed memory allocation (too much memory)
        require(v16 == address(v16));
        v21.word0 = v16;
        require(v17 == int24(v17));
        v21.word1 = v17;
        require(v18 == uint16(v18));
        v21.word2 = v18;
        require(v19 == uint16(v19));
        v21.word3 = v19;
        require(v20 == uint16(v20));
        v21.word4 = v20;
        v11 = v22 = v21.word0;
        v13 = v23 = v21.word1;
    }
    v24, /* int24 */ v25 = varg0.tickSpacing().gas(msg.gas);
    require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v25 == int24(v25));
    v26 = new bytes[](4);
    MEM[v26.data] = 0xda3c300d00000000000000000000000000000000000000000000000000000000 | uint224(MEM[v26.data]);
    MCOPY(MEM[64], v26.data, v26.length);
    MEM[MEM[64] + v26.length] = 0;
    v27, /* uint256 */ v28, /* uint256 */ v29 = varg0.staticcall(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v30 = v31 = 96;
    } else {
        v30 = v32 = new bytes[](RETURNDATASIZE());
        v28 = v32.data;
        RETURNDATACOPY(v28, 0, RETURNDATASIZE());
    }
    v33, v34 = 0x604(0, varg3, varg2, v25, v13, varg0);
    v35, /* address */ v36 = varg0.factory().gas(msg.gas);
    require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v36 == address(v36));
    v37, /* uint128 */ v38 = varg0.liquidity().gas(msg.gas);
    require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v38 == uint128(v38));
    if (v27) {
        require(v29 + MEM[v30] - v29 >= 32);
        v39 = v40 = MEM[v29];
        require(v40 == uint24(v40));
    } else {
        v41, /* uint24 */ v39 = varg0.fee().gas(msg.gas);
        require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v39 == uint24(v39));
    }
    v42 = new uint256[](varg0);
    MEM[v42.data] = address(v1);
    v43 = v44 = v42 + 352 + 32;
    v45 = v46 = v34 + 32;
    v47 = v48 = 0;
    while (v47 < MEM[v34]) {
        MEM[v43] = int24(MEM[MEM[v45]]);
        MEM[v43 + 32] = int128(MEM[32 + MEM[v45]]);
        v43 = v43 + 64;
        v45 += 32;
        v47 += 1;
    }
    MEM[v43] = MEM[v33];
    v49 = v50 = v43 + 32;
    v51 = v52 = v33 + 32;
    v53 = v54 = 0;
    while (v53 < MEM[v33]) {
        MEM[v49] = int24(MEM[MEM[v51]]);
        MEM[v49 + 32] = int128(MEM[32 + MEM[v51]]);
        v49 = v49 + 64;
        v51 += 32;
        v53 += 1;
    }
    v55 = new uint256[](int24(v25));
    return v42, v56, v56, address(v3), address(v36), uint128(v38), address(v11), v55, v43 - v42, int24(v13), uint24(v39), v56, MEM[v34];
}

function 0x232d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    require(varg1 > 0, Error(0x6e3d30));
    v0 = v1 = 0x3f49(varg3, varg2);
    v2 = v3 = int24(varg3) < 0;
    if (v3) {
        v4 = 0x3f81(varg3, varg2);
        v2 = v5 = bool(int24(v4));
    }
    if (v2) {
        v0 = v6 = 0x3fa2(v1);
    }
    require(varg1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v7 = new uint256[](varg1);
    if (varg1) {
        CALLDATACOPY(v7.data, msg.data.length, varg1 << 5);
    }
    v8 = v9 = 0;
    v10 = 0x3f49(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618, varg2);
    if (int24(v0) >= int24(v10)) {
        v11 = v12 = int24(v0) >> 8;
        v13, /* uint256 */ v14 = varg4.tickBitmap(int16(v12)).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (uint8.max - uint8(v0)) {
            v14 = v15 = v14 & (1 << 1 + uint8(v0)) - 1;
        }
        v16 = v17 = 0;
        v18 = 0x3fc3(v12, varg0);
        while (1) {
            v19 = v20 = int16(v11) > int16(v18);
            if (v20) {
                v19 = v21 = v8 < varg1;
            }
            if (v19) {
                v19 = v22 = !v16;
            }
            if (!v19) {
                break;
            } else {
                while (1) {
                    v23 = v24 = bool(v14);
                    if (v14) {
                        v23 = v25 = v8 < varg1;
                    }
                    if (!v23) {
                        break;
                    } else {
                        v26 = 0x2c3d(v14);
                        v27 = 0x3fe6(int24(v11 << 8), uint8(v26));
                        v28 = 0x400b(v27, varg2);
                        if (int24(v28) >= 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618) {
                            v8 = 0x3e0e(v8);
                            require(v8 < v7.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v7[v8] = int24(v28);
                            if (0 - uint8(v26)) {
                                v14 = v14 & (1 << uint8(v26)) - 1;
                            } else {
                                v14 = v29 = 0;
                            }
                        } else {
                            v16 = v30 = 1;
                            break;
                        }
                    }
                }
                v16 = v31 = v8 >= varg1;
                if (v8 < varg1) {
                }
                if (v16) {
                    break;
                } else {
                    v11 = v11 - 1;
                    v32 = 0x3fe6(uint8.max, int24(v11 << 8));
                    v33 = 0x400b(v32, varg2);
                    if (int24(v33) >= 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618) {
                        v34, /* uint256 */ v14 = varg4.tickBitmap(int16(v11)).gas(msg.gas);
                        require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    } else {
                        break;
                    }
                }
            }
        }
        require(v8 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v35 = new uint256[](v8);
        if (v8) {
            CALLDATACOPY(v35.data, msg.data.length, v8 << 5);
        }
        v36 = v37 = 0;
        while (v36 < v8) {
            require(v36 < v7.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v36 < v35.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v35[v36] = int24(v7[v36]);
            v36 += 1;
        }
        return v35;
    } else {
        v38 = new uint256[](0);
        if (!0) {
            return v38;
        } else {
            CALLDATACOPY(v38.data, msg.data.length, 0);
            v39 = v38.data;
            return v38;
        }
    }
}

function 0x9fc50f4c(uint256 varg0) public payable { 
    v0 = v1 = 587;
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length > 4 + varg0 + 31);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = v2 = new uint256[](varg0.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(32 + (4 + varg0 + (varg0.length << 7)) <= msg.data.length);
    v5 = v6 = varg0.data;
    while (v5 < 32 + (4 + varg0 + (varg0.length << 7))) {
        require(msg.data.length - v5 >= 128);
        v7 = new struct(4);
        require(!((v7 + 128 < v7) | (v7 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v5] == address(msg.data[v5]));
        v7.word0 = msg.data[v5];
        v7.word1 = msg.data[32 + v5];
        v7.word2 = msg.data[v5 + 64];
        require(msg.data[v5 + 96] == int16(msg.data[v5 + 96]));
        v7.word3 = msg.data[v5 + 96];
        MEM[v3] = v7;
        v5 += 128;
        v3 += 32;
    }
    v8 = v9 = v2.length;
    require(v9 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = v10 = new uint256[](v9);
    if (v9) {
        v11 = v10.data;
        do {
            v12 = new struct(11);
            v12.word0 = 0;
            v12.word1 = 0;
            v12.word2 = 0;
            v12.word3 = 0;
            v12.word4 = 0;
            v12.word5 = 0;
            v12.word6 = 96;
            v12.word7 = 96;
            v12.word8 = 0;
            v12.word9 = 0;
            v12.word10 = 0;
            MEM[v11] = v12;
            v11 += 32;
            v8 = v8 - 1;
        } while (v8);
    }
    v0 = v13 = 0;
    while (v0 < MEM[v0]) {
        require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = v14 = MEM[32 + ((v0 << 5) + v0)];
        v15 = v16, /* uint256 */ v17 = this.staticcall(0x9ec1896400000000000000000000000000000000000000000000000000000000, address(MEM[v14]), MEM[v14 + 32], MEM[v14 + 64], int16(MEM[v14 + 96])).gas(msg.gas);
        if (v16) {
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
            require(v17 + RETURNDATASIZE() - v17 >= 32);
            require(MEM[v17] <= uint64.max);
            v18 = v17 + MEM[v17];
            require(v17 + RETURNDATASIZE() - v18 >= 352);
            v0 = v19 = new struct(11);
            require(!((v19 + 352 < v19) | (v19 + 352 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[v18] == address(MEM[v18]));
            v19.word0 = MEM[v18];
            require(MEM[v18 + 32] == address(MEM[v18 + 32]));
            v19.word1 = MEM[v18 + 32];
            require(MEM[v18 + 64] == address(MEM[v18 + 64]));
            v19.word2 = MEM[v18 + 64];
            require(MEM[v18 + 96] == address(MEM[v18 + 96]));
            v19.word3 = MEM[v18 + 96];
            require(MEM[v18 + 128] == uint128(MEM[v18 + 128]));
            v19.word4 = MEM[v18 + 128];
            require(MEM[v18 + 160] == address(MEM[v18 + 160]));
            v19.word5 = MEM[v18 + 160];
            require(MEM[v18 + 192] <= uint64.max);
            v20 = 0x3a48(v18 + MEM[v18 + 192], v17 + RETURNDATASIZE());
            v19.word6 = v20;
            require(MEM[v18 + 224] <= uint64.max);
            v21 = 0x3a48(v18 + MEM[v18 + 224], v17 + RETURNDATASIZE());
            v19.word7 = v21;
            require(MEM[v18 + (uint8.max + 1)] == int24(MEM[v18 + (uint8.max + 1)]));
            v19.word8 = MEM[v18 + (uint8.max + 1)];
            require(MEM[v18 + 288] == uint24(MEM[v18 + 288]));
            v19.word9 = MEM[v18 + 288];
            require(MEM[v18 + 320] == int24(MEM[v18 + 320]));
            v19.word10 = MEM[v18 + 320];
            v15 = 1;
        }
        if (v15) {
            require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[32 + (v0 << 5) + v0] = v0;
        }
        v0 += 1;
    }
    v22 = new uint256[](MEM[v0]);
    v23 = v24 = v22.data;
    v25 = v26 = MEM[64] + (MEM[v0] << 5) + 64;
    v27 = v28 = v0 + 32;
    v29 = v30 = 0;
    while (v29 < MEM[v0]) {
        MEM[v23] = v25 - MEM[64] - 64;
        MEM[v25] = address(MEM[MEM[v27]]);
        MEM[v25 + 32] = address(MEM[MEM[v27] + 32]);
        MEM[v25 + 64] = address(MEM[MEM[v27] + 64]);
        MEM[v25 + 96] = address(MEM[MEM[v27] + 96]);
        MEM[v25 + 128] = uint128(MEM[MEM[v27] + 128]);
        MEM[v25 + 160] = address(MEM[MEM[v27] + 160]);
        MEM[v25 + 192] = 352;
        MEM[v25 + 352] = MEM[MEM[MEM[v27] + 192]];
        v31 = v25 + 352 + 32;
        v32 = v33 = MEM[MEM[v27] + 192] + 32;
        v34 = v35 = 0;
        while (v34 < MEM[MEM[MEM[v27] + 192]]) {
            MEM[v31] = int24(MEM[MEM[v32]]);
            MEM[v31 + 32] = int128(MEM[32 + MEM[v32]]);
            v31 = v31 + 64;
            v32 += 32;
            v34 += 1;
        }
        MEM[v25 + 224] = v31 - v25;
        MEM[v31] = MEM[MEM[MEM[v27] + 224]];
        v25 = v31 + 32;
        v36 = v37 = MEM[MEM[v27] + 224] + 32;
        v38 = v39 = 0;
        while (v38 < MEM[MEM[MEM[v27] + 224]]) {
            MEM[v25] = int24(MEM[MEM[v36]]);
            MEM[v25 + 32] = int128(MEM[32 + MEM[v36]]);
            v25 = v25 + 64;
            v36 += 32;
            v38 += 1;
        }
        MEM[v25 + (uint8.max + 1)] = int24(MEM[MEM[v27] + (uint8.max + 1)]);
        MEM[v25 + 288] = uint24(MEM[288 + MEM[v27]]);
        MEM[v25 + 320] = int24(MEM[320 + MEM[v27]]);
        v23 += 32;
        v27 += 32;
        v29 += 1;
    }
    return v22;
}

function 0xa6388312(address varg0, uint256 varg1, address varg2, address varg3, struct(2) varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < msg.data.length);
    require(msg.data[4 + varg4] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_callers[msg.sender] == 1, Error('!caller'));
    v1 = v2 = bytes20(varg4.word1);
    if (msg.data[4 + varg4] < 20) {
        v1 = bytes20(varg4.word1 & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - msg.data[4 + varg4] << 3));
    }
    MEM[MEM[64] + 128] = bytes20(varg2 << 96);
    MEM[MEM[64] + 148] = 0;
    MEM[MEM[64] + 180] = bytes20(varg3 << 96);
    MEM[MEM[64]] = 168 + (MEM[64] - MEM[64]);
    MEM[MEM[64] + 32] = 32;
    MEM[MEM[64] + 32 + 32] = 96;
    MEM[MEM[64] + 32 + 128] = MEM[MEM[64]];
    MCOPY(MEM[64] + 32 + 128 + 32, MEM[64] + 32, MEM[MEM[64]]);
    MEM[MEM[64] + 32 + 128 + MEM[MEM[64]] + 32] = 0;
    MEM[64 + (MEM[64] + 32)] = msg.sender;
    MEM[MEM[64] + 32 + 96] = address(v1 >> 96);
    if (varg2 >= varg3) {
        v3 = new uint256[](MEM[64] + 32 + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MCOPY(v3.data, MEM[64] + 32, MEM[64] + 32 + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MEM[v3 + (MEM[64] + 32 + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
        v4, /* uint256 */ v5, /* uint256 */ v6 = address(v1 >> 96).swap(varg0, varg2 < varg3, varg1, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v3).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        v7 = 0x3f14(v5);
    } else {
        v8 = new uint256[](MEM[64] + 32 + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MCOPY(v8.data, MEM[64] + 32, MEM[64] + 32 + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MEM[v8 + (MEM[64] + 32 + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
        v9, /* uint256 */ v10, /* uint256 */ v11 = address(v1 >> 96).swap(varg0, varg2 < varg3, varg1, address(0x1000276a4), v8).gas(msg.gas);
        require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        v7 = v12 = 0x3f14(v11);
    }
}

function 0xa76c6775(address varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + (varg2.length << 5) + 32 <= msg.data.length);
    v0 = _SafeSub(varg2.length, 1);
    v1 = v2 = 0;
    while (v1 < varg2.length) {
        v3 = _SafeSub(v0, v1);
        require(v3 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg2[v3] < msg.data.length - varg2.data - 63);
        require(varg2[v3] + varg2.data + 32 - (varg2[v3] + varg2.data) >= 32);
        require(msg.data[varg2[v3] + varg2.data] == address(msg.data[varg2[v3] + varg2.data]));
        if (v3 < v0) {
            require(1 <= v3 + 1, Panic(17)); // arithmetic overflow or underflow
            require(v3 + 1 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg2[v3 + 1] < msg.data.length - varg2.data - 63);
            require(varg2[v3 + 1] + varg2.data + 32 - (varg2[v3 + 1] + varg2.data) >= 32);
            v4 = msg.data[varg2[v3 + 1] + varg2.data];
            require(v4 == address(v4));
        }
        require(v3 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg2[v3] < msg.data.length - varg2.data - 63);
        require(msg.data[varg2[v3] + varg2.data + 32] < msg.data.length - (varg2[v3] + varg2.data) - 31);
        require(msg.data[varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32]] <= uint64.max);
        require(32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32]) <= msg.data.length - msg.data[varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32]]);
        require(32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32]) + msg.data[varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32]] - (32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32])) >= 64);
        require(msg.data[32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32])] == address(msg.data[32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32])]));
        require(msg.data[32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32]) + 32] == address(msg.data[32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32]) + 32]));
        v5, /* uint256 */ v6 = address(msg.data[32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32]) + 32]).call(0x6addbf6000000000000000000000000000000000000000000000000000000000, address(msg.data[varg2[v3] + varg2.data]), address(v4), v6, address(msg.data[32 + (varg2[v3] + varg2.data + msg.data[varg2[v3] + varg2.data + 32])])).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v1 = v1 + 1;
    }
    require(v6 <= 1 + v6, Panic(17)); // arithmetic overflow or underflow
    return 1 + v6;
}

function 0x273c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    require(varg1 > 0, Error(0x6e3d30));
    v0 = v1 = 0x3f49(varg3, varg2);
    v2 = v3 = int24(varg3) < 0;
    if (v3) {
        v4 = 0x3f81(varg3, varg2);
        v2 = v5 = bool(int24(v4));
    }
    if (v2) {
        v0 = v6 = 0x3fa2(v1);
    }
    v7 = 0x3fe6(v0, 1);
    require(varg1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v8 = new uint256[](varg1);
    if (varg1) {
        CALLDATACOPY(v8.data, msg.data.length, varg1 << 5);
    }
    v9 = v10 = 0;
    v11 = 0x402a(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618);
    v12 = 0x3f49(v11, varg2);
    if (int24(v7) <= int24(v12)) {
        v13 = v14 = int24(v7) >> 8;
        v15, /* uint256 */ v16 = varg4.tickBitmap(int16(v14)).gas(msg.gas);
        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (0 - uint8(v7)) {
            v16 = v17 = v16 & ~((1 << uint8(v7)) - 1);
        }
        v18 = v19 = 0;
        v20 = 0x404a(v14, varg0);
        while (1) {
            v21 = v22 = int16(v13) < int16(v20);
            if (v22) {
                v21 = v23 = v9 < varg1;
            }
            if (v21) {
                v21 = v24 = !v18;
            }
            if (!v21) {
                break;
            } else {
                while (1) {
                    v25 = v26 = bool(v16);
                    if (v16) {
                        v25 = v27 = v9 < varg1;
                    }
                    if (!v25) {
                        break;
                    } else {
                        v28 = 0x2d6c(v16);
                        v29 = 0x3fe6(int24(v13 << 8), uint8(v28));
                        v30 = 0x400b(v29, varg2);
                        v31 = 0x402a(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618);
                        if (int24(v30) <= int24(v31)) {
                            v9 = 0x3e0e(v9);
                            require(v9 < v8.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v8[v9] = int24(v30);
                            if (uint8.max - uint8(v28)) {
                                v16 = v16 & ~((1 << 1 + uint8(v28)) - 1);
                            } else {
                                v16 = v32 = 0;
                            }
                        } else {
                            v18 = v33 = 1;
                            break;
                        }
                    }
                }
                v18 = v34 = v9 >= varg1;
                if (v9 < varg1) {
                }
                if (v18) {
                    break;
                } else {
                    v13 += 1;
                    v35 = 0x402a(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618);
                    v36 = 0x400b(int24(v13 << 8), varg2);
                    if (int24(v36) <= int24(v35)) {
                        v37, /* uint256 */ v16 = varg4.tickBitmap(int16(v13)).gas(msg.gas);
                        require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    } else {
                        break;
                    }
                }
            }
        }
        require(v9 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v38 = new uint256[](v9);
        if (v9) {
            CALLDATACOPY(v38.data, msg.data.length, v9 << 5);
        }
        v39 = v40 = 0;
        while (v39 < v9) {
            require(v39 < v8.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v39 < v38.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v38[v39] = int24(v8[v39]);
            v39 += 1;
        }
        return v38;
    } else {
        v41 = new uint256[](0);
        if (!0) {
            return v41;
        } else {
            CALLDATACOPY(v41.data, msg.data.length, 0);
            v42 = v41.data;
            return v41;
        }
    }
}

function 0xccee0802(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + (varg2.length << 5) + 32 <= msg.data.length);
    require(_callers[msg.sender] == 1, Error('!caller'));
    require(varg2.length, Error('univ3:path'));
    require(0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(varg2[0] < msg.data.length - varg2.data - 63);
    require(varg2[0] + varg2.data + 32 - (varg2[0] + varg2.data) >= 32);
    require(msg.data[varg2[0] + varg2.data] == address(msg.data[varg2[0] + varg2.data]));
    v0, /* uint256 */ v1 = address(msg.data[varg2[0] + varg2.data]).balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 > 1, Error('univ3:amountIn'));
    v2 = v3 = _SafeSub(v1, 1);
    v4 = v5 = this;
    v6 = _SafeSub(varg2.length, 1);
    v7 = v8 = 0;
    while (v7 < varg2.length) {
        require(v7 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg2[v7] < msg.data.length - varg2.data - 63);
        require(varg2[v7] + varg2.data + 32 - (varg2[v7] + varg2.data) >= 32);
        require(msg.data[varg2[v7] + varg2.data] == address(msg.data[varg2[v7] + varg2.data]));
        if (v7 < v6) {
            require(1 <= v7 + 1, Panic(17)); // arithmetic overflow or underflow
            require(v7 + 1 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg2[v7 + 1] < msg.data.length - varg2.data - 63);
            require(varg2[v7 + 1] + varg2.data + 32 - (varg2[v7 + 1] + varg2.data) >= 32);
            v9 = msg.data[varg2[v7 + 1] + varg2.data];
            require(v9 == address(v9));
        }
        if (v7) {
            v4 = v10 = this;
            v11 = address(msg.data[varg2[v7] + varg2.data]).balanceOf(v10).gas(msg.gas);
            if (bool(v11)) {
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v2 = MEM[MEM[64]];
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        require(v7 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg2[v7] < msg.data.length - varg2.data - 63);
        require(msg.data[varg2[v7] + varg2.data + 32] < msg.data.length - (varg2[v7] + varg2.data) - 31);
        require(msg.data[varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32]] <= uint64.max);
        require(32 + (varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32]) <= msg.data.length - msg.data[varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32]]);
        require(32 + (varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32]) + msg.data[varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32]] - (32 + (varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32])) >= 64);
        v12 = msg.data[32 + (varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32])];
        require(v12 == address(v12));
        require(msg.data[32 + (varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32]) + 32] == address(msg.data[32 + (varg2[v7] + varg2.data + msg.data[varg2[v7] + varg2.data + 32]) + 32]));
        MEM[MEM[64] + 128] = bytes20(msg.data[varg2[v7] + varg2.data] << 96);
        MEM[MEM[64] + 148] = v8;
        MEM[MEM[64] + 180] = bytes20(v9 << 96);
        MEM[MEM[64]] = 168 + (MEM[64] - MEM[64]);
        MEM[32 + MEM[64]] = 32;
        MEM[32 + MEM[64] + 32] = 96;
        MEM[32 + MEM[64] + 128] = MEM[MEM[64]];
        MCOPY(32 + MEM[64] + 128 + 32, MEM[64] + 32, MEM[MEM[64]]);
        MEM[32 + MEM[64] + 128 + MEM[MEM[64]] + 32] = 0;
        MEM[96 + MEM[64]] = address(v4);
        MEM[32 + MEM[64] + 96] = address(v12);
        if (v7 >= v6) {
            if (address(msg.data[varg2[v7] + varg2.data]) >= address(v9)) {
                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = varg0;
                MEM[4 + MEM[64] + 32] = address(msg.data[varg2[v7] + varg2.data]) < address(v9);
                MEM[4 + MEM[64] + 64] = v2;
                MEM[4 + MEM[64] + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                MEM[4 + MEM[64] + 128] = 160;
                MEM[4 + MEM[64] + 160] = 32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32;
                MCOPY(4 + MEM[64] + 160 + 32, MEM[64] + 32, 32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                MEM[4 + MEM[64] + 160 + (32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
                v13 = address(v12).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 160 + 32 + MEM[64] + 128 + MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                if (bool(v13)) {
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                    v14 = 0x3f14(MEM[MEM[64]]);
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = varg0;
                MEM[4 + MEM[64] + 32] = address(msg.data[varg2[v7] + varg2.data]) < address(v9);
                MEM[4 + MEM[64] + 64] = v2;
                MEM[4 + MEM[64] + 96] = address(0x1000276a4);
                MEM[4 + MEM[64] + 128] = 160;
                MEM[4 + MEM[64] + 160] = 32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32;
                MCOPY(4 + MEM[64] + 160 + 32, MEM[64] + 32, 32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                MEM[4 + MEM[64] + 160 + (32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
                v15 = address(v12).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 160 + 32 + MEM[64] + 128 + MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                if (bool(v15)) {
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                    v14 = v16 = 0x3f14(MEM[MEM[64] + 32]);
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            }
        } else if (address(msg.data[varg2[v7] + varg2.data]) >= address(v9)) {
            MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = address(this);
            MEM[4 + MEM[64] + 32] = address(msg.data[varg2[v7] + varg2.data]) < address(v9);
            MEM[4 + MEM[64] + 64] = v2;
            MEM[4 + MEM[64] + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
            MEM[4 + MEM[64] + 128] = 160;
            MEM[4 + MEM[64] + 160] = 32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32;
            MCOPY(4 + MEM[64] + 160 + 32, MEM[64] + 32, 32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
            MEM[4 + MEM[64] + 160 + (32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
            v17 = address(v12).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 160 + 32 + MEM[64] + 128 + MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
            if (bool(v17)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                v18 = 0x3f14(MEM[MEM[64]]);
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        } else {
            MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = address(this);
            MEM[4 + MEM[64] + 32] = address(msg.data[varg2[v7] + varg2.data]) < address(v9);
            MEM[4 + MEM[64] + 64] = v2;
            MEM[4 + MEM[64] + 96] = address(0x1000276a4);
            MEM[4 + MEM[64] + 128] = 160;
            MEM[4 + MEM[64] + 160] = 32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32;
            MCOPY(4 + MEM[64] + 160 + 32, MEM[64] + 32, 32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
            MEM[4 + MEM[64] + 160 + (32 + MEM[64] + 128 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
            v19 = address(v12).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 160 + 32 + MEM[64] + 128 + MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
            if (bool(v19)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                v18 = v20 = 0x3f14(MEM[MEM[64] + 32]);
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v7 = v7 + 1;
    }
    exit;
}

function rescueToken(address token, address recipient, uint256 amount) public payable { 
    require(msg.data.length - 4 >= 96);
    require(msg.sender == _owner, Error('!owner'));
    MEM[MEM[64] + 68] = amount;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(recipient);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v0 = v1, /* uint256 */ v2, /* uint256 */ v3 = token.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        v0 = v7 = !MEM[v4];
        if (MEM[v4]) {
            require(v3 + MEM[v4] - v3 >= 32);
            v0 = MEM[v3];
            require(v0 == bool(v0));
        }
    }
    require(v0, Error('uv3:transfer'));
}

function 0xeffb278c(address varg0, uint256 varg1, int16 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    v0 = v1 = 96;
    v2 = v3 = 0;
    v4 = v5, /* address */ v6, /* int24 */ v7, /* uint16 */ v8, /* uint16 */ v9, /* uint16 */ v10 = varg0.slot0().gas(msg.gas);
    if (v5) {
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        v2 = new struct(5);
        require(!((v2 + 160 > uint64.max) | (v2 + 160 < v2)), Panic(65)); // failed memory allocation (too much memory)
        require(v6 == address(v6));
        v2.word0 = v6;
        require(v7 == int24(v7));
        v2.word1 = v7;
        require(v8 == uint16(v8));
        v2.word2 = v8;
        require(v9 == uint16(v9));
        v2.word3 = v9;
        require(v10 == uint16(v10));
        v2.word4 = v10;
        v4 = 1;
    }
    if (v4) {
        v11 = v12 = MEM[32 + v2];
    } else {
        v13, /* address */ v14, /* int24 */ v15, /* uint16 */ v16, /* uint16 */ v17, /* uint16 */ v18 = address(v0).slot0().gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
        v19 = new struct(5);
        require(!((v19 + 160 > uint64.max) | (v19 + 160 < v19)), Panic(65)); // failed memory allocation (too much memory)
        require(v14 == address(v14));
        v19.word0 = v14;
        require(v15 == int24(v15));
        v19.word1 = v15;
        require(v16 == uint16(v16));
        v19.word2 = v16;
        require(v17 == uint16(v17));
        v19.word3 = v17;
        require(v18 == uint16(v18));
        v19.word4 = v18;
        v11 = v20 = v19.word1;
    }
    v21, /* int24 */ v22 = address(v0).tickSpacing().gas(msg.gas);
    require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v22 == int24(v22));
    v23 = 0x232d(v0, v0, v22, v11, v0);
    v24 = 0x273c(v0, v0, v22, v11, v0);
    v25 = new int24[](v23.length);
    v26 = v27 = v25.data;
    v28 = v29 = v23.data;
    v30 = v31 = 0;
    while (v30 < v23.length) {
        MEM[v26] = int24(MEM[v28]);
        v26 += 32;
        v28 += 32;
        v30 += 1;
    }
    v26 = new int24[](v24.length);
    v32 = v33 = v26.data;
    v34 = v35 = v24.data;
    v36 = v37 = 0;
    while (v36 < v24.length) {
        MEM[v32] = int24(MEM[v34]);
        v32 += 32;
        v34 += 32;
        v36 += 1;
    }
    return v25, v26;
}

function 0x2c3d(uint256 varg0) private { 
    v0 = v1 = 0;
    require(varg0 > v1, Error('x must be non-zero'));
    if (varg0 >= uint128.max + 1) {
        varg0 = v2 = varg0 >> 128;
        v0 = v3 = 0x406d(v1, 128);
    }
    if (varg0 >= uint64.max + 1) {
        varg0 = v4 = varg0 >> 64;
        v0 = v5 = 0x406d(v0, 64);
    }
    if (varg0 >= uint32.max + 1) {
        varg0 = v6 = varg0 >> 32;
        v0 = v7 = 0x406d(v0, 32);
    }
    if (varg0 >= uint16.max + 1) {
        varg0 = v8 = varg0 >> 16;
        v0 = v9 = 0x406d(v0, 16);
    }
    if (varg0 >= uint8.max + 1) {
        varg0 = v10 = varg0 >> 8;
        v0 = v11 = 0x406d(v0, 8);
    }
    if (varg0 >= 16) {
        varg0 = v12 = varg0 >> 4;
        v0 = v13 = 0x406d(v0, 4);
    }
    if (varg0 >= 4) {
        varg0 = v14 = varg0 >> 2;
        v0 = v15 = 0x406d(v0, 2);
    }
    if (varg0 < 2) {
        return v0;
    } else {
        v16 = 0x406d(v0, 1);
        return v16;
    }
}

function transferOwnership(address newOwner) public payable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _owner, Error('!owner'));
    require(newOwner, Error('!NewOwner'));
    _owner = newOwner;
}

function 0x2d6c(uint256 varg0) private { 
    v0 = v1 = 0;
    require(varg0 > v1, Error('x must be non-zero'));
    v2 = v3 = varg0 & ~varg0 + 1;
    if (v3 >= uint128.max + 1) {
        v0 = v4 = 128;
        v2 = v5 = v3 >> 128;
    }
    if (v2 >= uint64.max + 1) {
        v0 = v6 = 64 + v0;
        v2 = v7 = v2 >> 64;
    }
    if (v2 >= uint32.max + 1) {
        v0 = v8 = 32 + v0;
        v2 = v9 = v2 >> 32;
    }
    if (v2 >= uint16.max + 1) {
        v0 = v10 = 16 + v0;
        v2 = v11 = v2 >> 16;
    }
    if (v2 >= uint8.max + 1) {
        v0 = v12 = 8 + v0;
        v2 = v13 = v2 >> 8;
    }
    if (v2 >= 16) {
        v0 = v14 = 4 + v0;
        v2 = v15 = v2 >> 4;
    }
    if (v2 >= 4) {
        v0 = v16 = 2 + v0;
        v2 = v17 = v2 >> 2;
    }
    if (v2 < 2) {
        return v0;
    } else {
        return 1 + v0;
    }
}

function 0x3a48(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(32 + (varg0 + (v0 << 6)) <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < 32 + (varg0 + (v0 << 6))) {
        require(varg1 - v4 >= 64);
        v6 = new struct(2);
        require(!((v6 + 64 < v6) | (v6 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[v4] == int24(MEM[v4]));
        v6.word0 = MEM[v4];
        require(MEM[32 + v4] == int128(MEM[32 + v4]));
        v6.word1 = MEM[32 + v4];
        MEM[v2] = v6;
        v2 += 32;
        v4 += 64;
    }
    return v1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x3e0e(uint256 varg0) private { 
    require(varg0 + 1, Panic(17)); // arithmetic overflow or underflow
    return 1 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 - varg1;
    require(!((varg1 < 0) & (v0 < varg0) | (v0 > varg0) & (varg1 >= 0)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x3f14(uint256 varg0) private { 
    require(varg0 + int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x3f49(int24 varg0, int24 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    require(!((varg1 == uint256.max) & (varg0 == int24.min)), Panic(17)); // arithmetic overflow or underflow
    return varg0 / varg1;
}

function 0x3f81(int24 varg0, int24 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 % varg1;
}

function 0x3fa2(int24 varg0) private { 
    require(varg0 - int24.min, Panic(17)); // arithmetic overflow or underflow
    return uint256.max + varg0;
}

function 0x3fc3(int16 varg0, int16 varg1) private { 
    v0 = varg0 - varg1;
    require(!((v0 > int16.max) | (v0 < int16.min)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x3fe6(int24 varg0, int24 varg1) private { 
    v0 = varg1 + varg0;
    require(!((v0 < int24.min) | (v0 > int24.max)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x400b(int24 varg0, int24 varg1) private { 
    require(int24(varg0 * varg1) == varg0 * varg1, Panic(17)); // arithmetic overflow or underflow
    return int24(varg0 * varg1);
}

function 0x402a(int24 varg0) private { 
    require(varg0 - int24.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x404a(int16 varg0, int16 varg1) private { 
    v0 = varg1 + varg0;
    require(!((v0 < int16.min) | (v0 > int16.max)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x406d(uint8 varg0, uint8 varg1) private { 
    require(varg1 + varg0 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x604(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = new uint256[](varg0);
    if (varg0) {
        CALLDATACOPY(v0.data, msg.data.length, varg0 << 5);
    }
    v1 = 0x232d(varg1, varg2, varg3, varg4, varg5);
    v2 = 0;
    if (v1.length > v2) {
        v3 = _SafeSub(v1.length, 1);
        require(v3 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v4 = 0;
        while (v4 < v0.length) {
            require(v4 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (int24(v0[v4]) < int24(v1[v3])) {
                v2 = 0x3e0e(v2);
            }
            v4 += 1;
        }
    }
    v5 = v2 + v1.length;
    require(v1.length <= v5, Panic(17)); // arithmetic overflow or underflow
    require(v5 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new uint256[](v5);
    if (v5) {
        v7 = v6.data;
        while (v5) {
            v8 = new struct(2);
            v8.word0 = 0;
            v8.word1 = 0;
            MEM[v7] = v8;
            v7 += 32;
            v5 = v5 - 1;
        }
    }
    v9 = 0;
    while (v9 < v1.length) {
        require(v9 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(int24(v1[v9]));
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v10, /* uint256 */ v11, /* uint256 */ v12 = address(varg5).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v14 = 96;
        } else {
            v13 = v15 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
        }
        require(v10, Error('ticks() call failed'));
        require(v12 + MEM[v13] - v12 >= 64);
        require(MEM[v12] == uint128(MEM[v12]));
        require(MEM[v12 + 32] == int128(MEM[v12 + 32]));
        v16 = new struct(2);
        v16.word0 = int24(v1[v9]);
        v16.word1 = int128(MEM[v12 + 32]);
        v9 = 0x3e0e(v9);
        require(v9 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v6[v9] = v16;
        v9 += 1;
    }
    v17 = v1.length > 0;
    if (v17) {
        v17 = v18 = v2 > 0;
    }
    if (v17) {
        v19 = _SafeSub(v1.length, 1);
        require(v19 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v20 = v21 = _SafeSub(v0.length, 1);
        while (v20 >= 0) {
            require(v20 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (int24(v0[v20]) < int24(v1[v19])) {
                MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(int24(v0[v20]));
                MCOPY(MEM[64], MEM[64] + 32, 36);
                MEM[MEM[64] + 36] = 0;
                v22, /* uint256 */ v23, /* uint256 */ v24 = address(varg5).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v25 = v26 = 96;
                } else {
                    v25 = v27 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v27.data, 0, RETURNDATASIZE());
                }
                require(v22, Error('ticks() call failed'));
                require(v24 + MEM[v25] - v24 >= 64);
                require(MEM[v24] == uint128(MEM[v24]));
                require(MEM[v24 + 32] == int128(MEM[v24 + 32]));
                v28 = new struct(2);
                v28.word0 = int24(v0[v20]);
                v28.word1 = int128(MEM[v24 + 32]);
                v9 = 0x3e0e(v9);
                require(v9 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v6[v9] = v28;
            }
            require(v20 + int256.min, Panic(17)); // arithmetic overflow or underflow
            v20 += uint256.max;
        }
    }
    v29 = 0x273c(varg1, varg2, varg3, varg4, varg5);
    v30 = 0;
    if (v29.length > v30) {
        v31 = _SafeSub(v29.length, 1);
        require(v31 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v32 = 0;
        while (v32 < v0.length) {
            require(v32 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (int24(v0[v32]) > int24(v29[v31])) {
                v30 = 0x3e0e(v30);
            }
            v32 += 1;
        }
    }
    v33 = v30 + v29.length;
    require(v29.length <= v33, Panic(17)); // arithmetic overflow or underflow
    require(v33 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v34 = new uint256[](v33);
    if (v33) {
        v35 = v34.data;
        while (v33) {
            v36 = new struct(2);
            v36.word0 = 0;
            v36.word1 = 0;
            MEM[v35] = v36;
            v35 += 32;
            v33 = v33 - 1;
        }
    }
    v37 = 0;
    while (v37 < v29.length) {
        require(v37 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(int24(v29[v37]));
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v38, /* uint256 */ v39, /* uint256 */ v40 = address(varg5).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v41 = v42 = 96;
        } else {
            v41 = v43 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v43.data, 0, RETURNDATASIZE());
        }
        require(v38, Error('ticks() call failed'));
        require(v40 + MEM[v41] - v40 >= 64);
        require(MEM[v40] == uint128(MEM[v40]));
        require(MEM[v40 + 32] == int128(MEM[v40 + 32]));
        v44 = new struct(2);
        v44.word0 = int24(v29[v37]);
        v44.word1 = int128(MEM[v40 + 32]);
        v37 = 0x3e0e(v37);
        require(v37 < v34.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v34[v37] = v44;
        v37 += 1;
    }
    v45 = v29.length > 0;
    if (v45) {
        v45 = v46 = v30 > 0;
    }
    if (!v45) {
        return v34, v6;
    } else {
        v47 = _SafeSub(v29.length, 1);
        require(v47 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v48 = 0;
        while (v48 < v0.length) {
            require(v48 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (int24(v0[v48]) > int24(v29[v47])) {
                MEM[MEM[64] + 32] = 0xf30dba9300000000000000000000000000000000000000000000000000000000 | uint224(int24(v0[v48]));
                MCOPY(MEM[64], MEM[64] + 32, 36);
                MEM[MEM[64] + 36] = 0;
                v49, /* uint256 */ v50, /* uint256 */ v51 = address(varg5).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v52 = v53 = 96;
                } else {
                    v52 = v54 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v54.data, 0, RETURNDATASIZE());
                }
                require(v49, Error('ticks() call failed'));
                require(v51 + MEM[v52] - v51 >= 64);
                require(MEM[v51] == uint128(MEM[v51]));
                require(MEM[v51 + 32] == int128(MEM[v51 + 32]));
                v55 = new struct(2);
                v55.word0 = int24(v0[v48]);
                v55.word1 = int128(MEM[v51 + 32]);
                v37 = 0x3e0e(v37);
                require(v37 < v34.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v34[v37] = v55;
            }
            v48 += 1;
        }
        return v34, v6;
    }
}

function summaSwapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32) >= 32);
    require(_data.word1 <= uint64.max);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32 + _data.word1) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + _data + 32 + _data.word1] <= uint64.max);
    v2 = 4 + _data + 32 + _data.word1 + msg.data[4 + _data + 32 + _data.word1];
    require(v2 + 31 < 4 + _data + 32 + msg.data[4 + _data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + _data + 32 + msg.data[4 + _data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word0 = v3;
    require(msg.data[4 + _data + 32 + _data.word1 + 32] == address(msg.data[4 + _data + 32 + _data.word1 + 32]));
    v1.word1 = msg.data[4 + _data + 32 + _data.word1 + 32];
    require(msg.data[4 + _data + 32 + _data.word1 + 64] == address(msg.data[4 + _data + 32 + _data.word1 + 64]));
    v1.word2 = msg.data[4 + _data + 32 + _data.word1 + 64];
    require(msg.sender == address(v1.word2), Error('univ3:pool'));
    if (amount0Delta <= 0) {
    }
    if (address(v1.word1) - this) {
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = v4;
        MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | uint224(address(v1.word1));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        if (v6) {
            v5 = v13 = !MEM[v10];
            if (MEM[v10]) {
                require(v8 + MEM[v10] - v8 >= 32);
                v5 = MEM[v8];
                require(v5 == bool(v5));
            }
        }
        require(v5, Error('uv3:transferFrom'));
    } else {
        MEM[MEM[64] + 68] = v4;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v14 = v15, /* uint256 */ v16, /* uint256 */ v17 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v18 = v19 = 96;
        } else {
            v18 = v20 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());
        }
        if (v15) {
            v14 = v21 = !MEM[v18];
            if (MEM[v18]) {
                require(v17 + MEM[v18] - v17 >= 32);
                v14 = MEM[v17];
                require(v14 == bool(v14));
            }
        }
        require(v14, Error('uv3:transfer'));
    }
}

function ShibaswapV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32) >= 32);
    require(_data.word1 <= uint64.max);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32 + _data.word1) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + _data + 32 + _data.word1] <= uint64.max);
    v2 = 4 + _data + 32 + _data.word1 + msg.data[4 + _data + 32 + _data.word1];
    require(v2 + 31 < 4 + _data + 32 + msg.data[4 + _data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + _data + 32 + msg.data[4 + _data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word0 = v3;
    require(msg.data[4 + _data + 32 + _data.word1 + 32] == address(msg.data[4 + _data + 32 + _data.word1 + 32]));
    v1.word1 = msg.data[4 + _data + 32 + _data.word1 + 32];
    require(msg.data[4 + _data + 32 + _data.word1 + 64] == address(msg.data[4 + _data + 32 + _data.word1 + 64]));
    v1.word2 = msg.data[4 + _data + 32 + _data.word1 + 64];
    require(msg.sender == address(v1.word2), Error('univ3:pool'));
    if (amount0Delta <= 0) {
    }
    if (address(v1.word1) - this) {
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = v4;
        MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | uint224(address(v1.word1));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        if (v6) {
            v5 = v13 = !MEM[v10];
            if (MEM[v10]) {
                require(v8 + MEM[v10] - v8 >= 32);
                v5 = MEM[v8];
                require(v5 == bool(v5));
            }
        }
        require(v5, Error('uv3:transferFrom'));
    } else {
        MEM[MEM[64] + 68] = v4;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v14 = v15, /* uint256 */ v16, /* uint256 */ v17 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v18 = v19 = 96;
        } else {
            v18 = v20 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());
        }
        if (v15) {
            v14 = v21 = !MEM[v18];
            if (MEM[v18]) {
                require(v17 + MEM[v18] - v17 >= 32);
                v14 = MEM[v17];
                require(v14 == bool(v14));
            }
        }
        require(v14, Error('uv3:transfer'));
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v2 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v2 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word0 = v3;
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] == address(msg.data[4 + data + 32 + data.word1 + 64]));
    v1.word2 = msg.data[4 + data + 32 + data.word1 + 64];
    require(msg.sender == address(v1.word2), Error('univ3:pool'));
    if (amount0Delta <= 0) {
    }
    if (address(v1.word1) - this) {
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = v4;
        MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | uint224(address(v1.word1));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        if (v6) {
            v5 = v13 = !MEM[v10];
            if (MEM[v10]) {
                require(v8 + MEM[v10] - v8 >= 32);
                v5 = MEM[v8];
                require(v5 == bool(v5));
            }
        }
        require(v5, Error('uv3:transferFrom'));
    } else {
        MEM[MEM[64] + 68] = v4;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v14 = v15, /* uint256 */ v16, /* uint256 */ v17 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v18 = v19 = 96;
        } else {
            v18 = v20 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());
        }
        if (v15) {
            v14 = v21 = !MEM[v18];
            if (MEM[v18]) {
                require(v17 + MEM[v18] - v17 >= 32);
                v14 = MEM[v17];
                require(v14 == bool(v14));
            }
        }
        require(v14, Error('uv3:transfer'));
    }
}

function ramsesV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v2 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v2 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word0 = v3;
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] == address(msg.data[4 + data + 32 + data.word1 + 64]));
    v1.word2 = msg.data[4 + data + 32 + data.word1 + 64];
    require(msg.sender == address(v1.word2), Error('univ3:pool'));
    if (amount0Delta <= 0) {
    }
    if (address(v1.word1) - this) {
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = v4;
        MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | uint224(address(v1.word1));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        if (v6) {
            v5 = v13 = !MEM[v10];
            if (MEM[v10]) {
                require(v8 + MEM[v10] - v8 >= 32);
                v5 = MEM[v8];
                require(v5 == bool(v5));
            }
        }
        require(v5, Error('uv3:transferFrom'));
    } else {
        MEM[MEM[64] + 68] = v4;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v14 = v15, /* uint256 */ v16, /* uint256 */ v17 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v18 = v19 = 96;
        } else {
            v18 = v20 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());
        }
        if (v15) {
            v14 = v21 = !MEM[v18];
            if (MEM[v18]) {
                require(v17 + MEM[v18] - v17 >= 32);
                v14 = MEM[v17];
                require(v14 == bool(v14));
            }
        }
        require(v14, Error('uv3:transfer'));
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v2 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v2 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word0 = v3;
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] == address(msg.data[4 + data + 32 + data.word1 + 64]));
    v1.word2 = msg.data[4 + data + 32 + data.word1 + 64];
    require(msg.sender == address(v1.word2), Error('univ3:pool'));
    if (amount0Delta <= 0) {
    }
    if (address(v1.word1) - this) {
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = v4;
        MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | uint224(address(v1.word1));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        if (v6) {
            v5 = v13 = !MEM[v10];
            if (MEM[v10]) {
                require(v8 + MEM[v10] - v8 >= 32);
                v5 = MEM[v8];
                require(v5 == bool(v5));
            }
        }
        require(v5, Error('uv3:transferFrom'));
    } else {
        MEM[MEM[64] + 68] = v4;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v14 = v15, /* uint256 */ v16, /* uint256 */ v17 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v18 = v19 = 96;
        } else {
            v18 = v20 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());
        }
        if (v15) {
            v14 = v21 = !MEM[v18];
            if (MEM[v18]) {
                require(v17 + MEM[v18] - v17 >= 32);
                v14 = MEM[v17];
                require(v14 == bool(v14));
            }
        }
        require(v14, Error('uv3:transfer'));
    }
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v2 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v2 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word0 = v3;
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] == address(msg.data[4 + data + 32 + data.word1 + 64]));
    v1.word2 = msg.data[4 + data + 32 + data.word1 + 64];
    require(msg.sender == address(v1.word2), Error('univ3:pool'));
    if (amount0Delta <= 0) {
    }
    if (address(v1.word1) - this) {
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = v4;
        MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | uint224(address(v1.word1));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        if (v6) {
            v5 = v13 = !MEM[v10];
            if (MEM[v10]) {
                require(v8 + MEM[v10] - v8 >= 32);
                v5 = MEM[v8];
                require(v5 == bool(v5));
            }
        }
        require(v5, Error('uv3:transferFrom'));
    } else {
        MEM[MEM[64] + 68] = v4;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v14 = v15, /* uint256 */ v16, /* uint256 */ v17 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v18 = v19 = 96;
        } else {
            v18 = v20 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());
        }
        if (v15) {
            v14 = v21 = !MEM[v18];
            if (MEM[v18]) {
                require(v17 + MEM[v18] - v17 >= 32);
                v14 = MEM[v17];
                require(v14 == bool(v14));
            }
        }
        require(v14, Error('uv3:transfer'));
    }
}

function pangolinv3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v2 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v2 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word0 = v3;
    require(msg.data[4 + varg2 + 32 + varg2.word1 + 32] == address(msg.data[4 + varg2 + 32 + varg2.word1 + 32]));
    v1.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    require(msg.data[4 + varg2 + 32 + varg2.word1 + 64] == address(msg.data[4 + varg2 + 32 + varg2.word1 + 64]));
    v1.word2 = msg.data[4 + varg2 + 32 + varg2.word1 + 64];
    require(msg.sender == address(v1.word2), Error('univ3:pool'));
    if (varg0 <= 0) {
    }
    if (address(v1.word1) - this) {
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = v4;
        MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | uint224(address(v1.word1));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        if (v6) {
            v5 = v13 = !MEM[v10];
            if (MEM[v10]) {
                require(v8 + MEM[v10] - v8 >= 32);
                v5 = MEM[v8];
                require(v5 == bool(v5));
            }
        }
        require(v5, Error('uv3:transferFrom'));
    } else {
        MEM[MEM[64] + 68] = v4;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v14 = v15, /* uint256 */ v16, /* uint256 */ v17 = address(MEM[v9.data] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v18 = v19 = 96;
        } else {
            v18 = v20 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());
        }
        if (v15) {
            v14 = v21 = !MEM[v18];
            if (MEM[v18]) {
                require(v17 + MEM[v18] - v17 >= 32);
                v14 = MEM[v17];
                require(v14 == bool(v14));
            }
        }
        require(v14, Error('uv3:transfer'));
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x9ec18964 > function_selector >> 224) {
            if (0x4ede648d > function_selector >> 224) {
                if (0x21f8c707 == function_selector >> 224) {
                    0x21f8c707();
                } else if (0x23a69e75 == function_selector >> 224) {
                    pancakeV3SwapCallback(int256,int256,bytes);
                } else if (0x2ba6c401 == function_selector >> 224) {
                    0x2ba6c401();
                } else if (0x2c8958f6 == function_selector >> 224) {
                    algebraSwapCallback(int256,int256,bytes);
                } else if (0x4179b664 == function_selector >> 224) {
                    pangolinv3SwapCallback(int256,int256,bytes);
                }
            } else if (0x4ede648d == function_selector >> 224) {
                0x4ede648d();
            } else if (0x654b6487 == function_selector >> 224) {
                ramsesV2SwapCallback(int256,int256,bytes);
            } else if (0x7bbf4a3f == function_selector >> 224) {
                callers(address);
            } else if (0x8da5cb5b == function_selector >> 224) {
                owner();
            } else {
                require(0x9cae6eae == function_selector >> 224);
                setCaller(address,bool);
            }
        } else if (0xe26e9f95 > function_selector >> 224) {
            if (0x9ec18964 == function_selector >> 224) {
                0x9ec18964();
            } else if (0x9fc50f4c == function_selector >> 224) {
                0x9fc50f4c();
            } else if (0xa6388312 == function_selector >> 224) {
                0xa6388312();
            } else if (0xa76c6775 == function_selector >> 224) {
                0xa76c6775();
            } else {
                require(0xccee0802 == function_selector >> 224);
                0xccee0802();
            }
        } else if (0xe26e9f95 == function_selector >> 224) {
            summaSwapV3SwapCallback(int256,int256,bytes);
        } else if (0xe5711e8b == function_selector >> 224) {
            rescueToken(address,address,uint256);
        } else if (0xeffb278c == function_selector >> 224) {
            0xeffb278c();
        } else if (0xf2fde38b == function_selector >> 224) {
            transferOwnership(address);
        } else if (0xf40a74a8 == function_selector >> 224) {
            ShibaswapV2SwapCallback(int256,int256,bytes);
        } else {
            require(0xfa461e33 == function_selector >> 224);
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    fallback();
}
