// Decompiled by library.dedaub.com
// 2025.12.08 05:17 UTC
// Compiled using the solidity compiler version 0.8.0





function 0x106d(uint256 varg0, uint256 varg1) private { 
    if (address(varg1) != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
        v0 = 0x267f(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg1, 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f);
        if (address(v0)) {
            v1 = v2 = new struct(3);
            v2.word0 = 2;
            CALLDATACOPY(v2.data, msg.data.length, 64);
            require(0 < v2.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v3 = v2.data;
            v2.word1 = address(varg1);
            require(1 < v2.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v2.word2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        } else {
            v4 = 0x267f(0xdac17f958d2ee523a2206206994597c13d831ec7, varg1, 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f);
            if (address(v4)) {
                v1 = v5 = new struct(4);
                v5.word0 = 3;
                CALLDATACOPY(v5.data, msg.data.length, 96);
                require(0 < v5.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v6 = v5.data;
                v5.word1 = address(varg1);
                require(1 < v5.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v5.word2 = address(0xdac17f958d2ee523a2206206994597c13d831ec7);
                require(2 < v5.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v5.word3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v7 = 0x267f(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, varg1, 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f);
                if (address(v7)) {
                    v1 = v8 = new struct(4);
                    v8.word0 = 3;
                    CALLDATACOPY(v8.data, msg.data.length, 96);
                    require(0 < v8.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v9 = v8.data;
                    v8.word1 = address(varg1);
                    require(1 < v8.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v8.word2 = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48);
                    require(2 < v8.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v8.word3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                } else {
                    return 0;
                }
            }
        }
        require(0 < MEM[v1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(1 < MEM[v1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v10, v11 = 0x2a4d(MEM[64 + v1], MEM[32 + v1]);
        require(bool((address(varg1)).code.size));
        v12, /* bool */ v13 = address(varg1).transfer(address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f000000000000000000000000), keccak256(bytes20(v11 << 96), bytes20(v10 << 96)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)), varg0).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v13 == bool(v13));
        v14 = 0x26ef(this, v1);
        return v14;
    } else {
        return varg0;
    }
}

function 0x7f35fb39(uint256 varg0, uint256 varg1, address varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg3 <= uint64.max);
    v0 = 0;
    require(4 + varg3 + 31 < msg.data.length, v0, v0);
    require(varg3.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](varg3.length);
    require(!((v1 + ((varg3.length << 5) + 32) < v1) | (v1 + ((varg3.length << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    v4 = v5 = varg3.data;
    require(msg.data.length >= 32 + (4 + varg3 + varg3.length * 96), v0, v0);
    while (v0 < varg3.length) {
        require(msg.data.length - v4 >= 96, v0, v0);
        v6 = new struct(3);
        require(!((v6 + 96 > uint64.max) | (v6 + 96 < v6)), Panic(65)); // failed memory allocation (too much memory)
        v6.word0 = msg.data[v4];
        require(msg.data[v4 + 32] == address(msg.data[v4 + 32]));
        v6.word1 = msg.data[v4 + 32];
        require(msg.data[64 + v4] == address(msg.data[64 + v4]));
        v6.word2 = msg.data[64 + v4];
        MEM[v2] = v6;
        v2 += 32;
        v4 += 96;
        v0 += 1;
    }
    v7 = new uint256[](MEM[96]);
    v8 = v9 = 0;
    v10 = v11 = v7.data;
    v12 = v13 = 128;
    while (v8 < MEM[96]) {
        MEM[v10] = MEM[v12];
        v10 += 32;
        v12 += 32;
        v8 += 1;
    }
    return v7;
}

function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = 0;
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32) >= 96, v2, v2);
    require(_data.word1 <= uint64.max, v2, v2);
    v3 = 0;
    require(4 + _data + 32 + _data.word1 + 31 < 4 + _data + 32 + msg.data[4 + _data], v3, v3);
    require(msg.data[4 + _data + 32 + _data.word1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new uint256[](msg.data[4 + _data + 32 + _data.word1]);
    require(!((v4 + ((msg.data[4 + _data + 32 + _data.word1] << 5) + 32) < v4) | (v4 + ((msg.data[4 + _data + 32 + _data.word1] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v6 = v4.data;
    v7 = v8 = 32 + (4 + _data + 32 + _data.word1);
    require(4 + _data + 32 + msg.data[4 + _data] >= 32 + (4 + _data + 32 + _data.word1 + msg.data[4 + _data + 32 + _data.word1] * 96), v3, v3);
    while (v3 < msg.data[4 + _data + 32 + _data.word1]) {
        require(4 + _data + 32 + msg.data[4 + _data] - v7 >= 96, v3, v3);
        v9 = new struct(3);
        require(!((v9 + 96 > uint64.max) | (v9 + 96 < v9)), Panic(65)); // failed memory allocation (too much memory)
        v9.word0 = msg.data[v7];
        require(msg.data[v7 + 32] == address(msg.data[v7 + 32]));
        v9.word1 = msg.data[v7 + 32];
        require(msg.data[64 + v7] == address(msg.data[64 + v7]));
        v9.word2 = msg.data[64 + v7];
        MEM[v5] = v9;
        v5 += 32;
        v7 += 96;
        v3 += 1;
    }
    require(_data.word2 <= uint64.max, v2, v2);
    require(4 + _data + 32 + msg.data[4 + _data] > 4 + _data + 32 + _data.word2 + 31, v2, v2);
    require(msg.data[4 + _data + 32 + _data.word2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new uint256[](msg.data[4 + _data + 32 + _data.word2]);
    require(!((v10 + ((msg.data[4 + _data + 32 + _data.word2] << 5) + 32) < v10) | (v10 + ((msg.data[4 + _data + 32 + _data.word2] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v11 = v12 = v10.data;
    v13 = v14 = 32 + (4 + _data + 32 + _data.word2);
    require(4 + _data + 32 + msg.data[4 + _data] >= 32 + (4 + _data + 32 + _data.word2 + (msg.data[4 + _data + 32 + _data.word2] << 5)), v2, v2);
    while (v1 < msg.data[4 + _data + 32 + _data.word2]) {
        MEM[v11] = msg.data[v13];
        v1 += 1;
        v11 += 32;
        v13 += 32;
    }
    require(_data.word3 == address(_data.word3));
    require(v10.length >= 1, Panic(17)); // arithmetic overflow or underflow
    require(v10.length - 1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v15 = new uint256[](v10.length - 1);
    if (v10.length - 1) {
        CALLDATACOPY(v15.data, msg.data.length, v10.length - 1 << 5);
    }
    require(v4.length >= 1, Panic(17)); // arithmetic overflow or underflow
    v16 = v4.length - 1;
    require(v16 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v17 = new uint256[](v16);
    if (v16) {
        v18 = v17.data;
        do {
            v19 = new struct(3);
            v19.word0 = 0;
            v19.word1 = 0;
            v19.word2 = 0;
            MEM[v18] = v19;
            v18 += 32;
            v16 = v16 - 1;
        } while (v16);
    }
    v20 = v21 = 1;
    while (v20 < v10.length) {
        require(v20 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v20 >= 1, Panic(17)); // arithmetic overflow or underflow
        require(v20 - 1 < v15.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v15[v20 - 1] = v10[v20];
        v20 = 0x3820(v20);
    }
    v22 = v23 = 1;
    while (v22 < v4.length) {
        require(v22 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v22 >= 1, Panic(17)); // arithmetic overflow or underflow
        require(v22 - 1 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v17[v22 - 1] = v4[v22];
        v22 = 0x3820(v22);
    }
    require(0 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v24 = v17.data;
    v25 = v26 = uint8(MEM[v17[0]]) >= 10;
    if (uint8(MEM[v17[0]]) < 10) {
        v25 = v27 = MEM[v17[0]] > uint40.max + 1;
    }
    if (!v25) {
        v25 = 5 == uint8(MEM[v17[0]]);
    }
    if (!v25) {
        require(0 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v28 = v4.data;
        require(0 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v29 = v17.data;
        require(bool((address(MEM[64 + v4[0]])).code.size));
        v30, /* bool */ v31 = address(MEM[64 + v4[0]]).transfer(address(MEM[32 + v17[0]]), v32).gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v31 == bool(v31));
    }
    require(0 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v33 = v4.data;
    0x16be(this, v17, v15, MEM[64 + v4[0]]);
    if (_sender == 4096) {
        require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v34 = v10.data;
        require(0 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v35 = v4.data;
        require(bool((address(_data.word3)).code.size));
        v36, /* uint256 */ v37 = address(_data.word3).allowance(address(this), address(MEM[32 + v4[0]])).gas(msg.gas);
        require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v37 < v10[0]) {
            require(0 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v38 = v4.data;
            require(bool((address(_data.word3)).code.size));
            v39, /* bool */ v40 = address(_data.word3).approve(address(MEM[32 + v4[0]]), uint256.max).gas(msg.gas);
            require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v40 == bool(v40));
        }
    } else {
        require(0 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v41 = v4.data;
        require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v42 = v10.data;
        require(bool((address(_data.word3)).code.size));
        v43, /* bool */ v44 = address(_data.word3).transfer(address(MEM[32 + v4[0]]), v10[0]).gas(msg.gas);
        require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v44 == bool(v44));
    }
}

function 0x16be(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = 0;
    while (v0 < varg1.length) {
        require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (MEM[varg1[v0]] <= uint40.max + 1) {
            v2 = v3 = uint8(MEM[varg1[v0]]);
        } else {
            v2 = v4 = 22;
        }
        require(varg1.length >= 1, Panic(17)); // arithmetic overflow or underflow
        if (v0 < varg1.length - 1) {
            v5 = _SafeAdd(1, v0);
            require(v5 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v6 = v7 = uint8(MEM[varg1[v5]]) >= 10;
            if (uint8(MEM[varg1[v5]]) < 10) {
                v6 = v8 = MEM[varg1[v5]] > uint40.max + 1;
            }
            if (!v6) {
                v6 = v9 = 5 == uint8(MEM[varg1[v5]]);
            }
            if (!v6) {
                v10 = _SafeAdd(1, v0);
                require(v10 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                varg0 = v11 = MEM[32 + varg1[v10]];
            } else {
                varg0 = v12 = this;
            }
        }
        v13 = v14 = !v2;
        if (v2) {
            v13 = v15 = 1 == v2;
        }
        if (!v13) {
            if (3 != v2) {
                if (4 != v2) {
                    if (5 != v2) {
                        if (22 != v2) {
                            if (21 != v2) {
                                if (26 == v2) {
                                    require(v0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    MEM[MEM[64]] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = address(this);
                                    MEM[4 + MEM[64] + 32] = address(MEM[32 + varg1[v0]]);
                                    require(bool((address(varg3)).code.size));
                                    v16 = address(varg3).staticcall(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v16)) {
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        if (MEM[MEM[64]] < varg2[v0]) {
                                            require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            MEM[MEM[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                            MEM[4 + MEM[64]] = address(MEM[32 + varg1[v0]]);
                                            MEM[4 + MEM[64] + 32] = uint256.max;
                                            require(bool((address(varg3)).code.size));
                                            v17 = address(varg3).call(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                            if (bool(v17)) {
                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                require(MEM[MEM[64]] == bool(MEM[MEM[64]]));
                                            } else {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        }
                                        require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(v0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        MEM[MEM[64]] = 0x5b41b90800000000000000000000000000000000000000000000000000000000;
                                        MEM[4 + MEM[64]] = uint8(MEM[varg1[v0]] >> 8);
                                        MEM[4 + MEM[64] + 32] = MEM[varg1[v0]] >> 16;
                                        MEM[4 + MEM[64] + 64] = varg2[v0];
                                        MEM[4 + MEM[64] + 96] = 0;
                                        require(bool((address(MEM[32 + varg1[v0]])).code.size));
                                        v18 = address(MEM[32 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 132 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                        if (bool(v18)) {
                                            if (this != address(varg0)) {
                                                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v19 = _SafeAdd(1, v0);
                                                require(v19 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                MEM[MEM[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                                MEM[4 + MEM[64]] = address(varg0);
                                                MEM[4 + MEM[64] + 32] = varg2[v19];
                                                require(bool((address(MEM[64 + varg1[v0]])).code.size));
                                                v20 = address(MEM[64 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                                if (bool(v20)) {
                                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                    require(MEM[MEM[64]] == bool(MEM[MEM[64]]));
                                                } else {
                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                    revert(0, RETURNDATASIZE());
                                                }
                                            }
                                        } else {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                            } else {
                                require(v0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                MEM[MEM[64]] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
                                MEM[4 + MEM[64]] = address(this);
                                MEM[4 + MEM[64] + 32] = address(MEM[32 + varg1[v0]]);
                                require(bool((address(varg3)).code.size));
                                v21 = address(varg3).staticcall(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                if (bool(v21)) {
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    if (MEM[MEM[64]] < varg2[v0]) {
                                        require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        MEM[MEM[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                        MEM[4 + MEM[64]] = address(MEM[32 + varg1[v0]]);
                                        MEM[4 + MEM[64] + 32] = uint256.max;
                                        require(bool((address(varg3)).code.size));
                                        v22 = address(varg3).call(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                        if (bool(v22)) {
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            require(MEM[MEM[64]] == bool(MEM[MEM[64]]));
                                        } else {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    }
                                    require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    require(v0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    MEM[MEM[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = int128(uint8(MEM[varg1[v0]] >> 8));
                                    MEM[4 + MEM[64] + 32] = int128(MEM[varg1[v0]] >> 16);
                                    MEM[4 + MEM[64] + 64] = varg2[v0];
                                    MEM[4 + MEM[64] + 96] = 0;
                                    require(bool((address(MEM[32 + varg1[v0]])).code.size));
                                    v23 = address(MEM[32 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 132 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v23)) {
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        if (this != address(varg0)) {
                                            require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            MEM[MEM[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                            MEM[4 + MEM[64]] = address(varg0);
                                            MEM[4 + MEM[64] + 32] = MEM[MEM[64]];
                                            require(bool((address(MEM[64 + varg1[v0]])).code.size));
                                            v24 = address(MEM[64 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                            if (bool(v24)) {
                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                require(MEM[MEM[64]] == bool(MEM[MEM[64]]));
                                            } else {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        }
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            v25 = new struct(6);
                            v25.word0 = 0;
                            v25.word1 = 0;
                            v25.word2 = address(0x0);
                            v25.word3 = address(0x0);
                            v25.word4 = 0;
                            v25.word5 = 96;
                            v25.word0 = MEM[varg1[v0]];
                            v25.word1 = 0;
                            v25.word2 = address(varg3);
                            require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v25.word3 = address(MEM[64 + varg1[v0]]);
                            require(v0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v25.word4 = varg2[v0];
                            v26 = new struct(1);
                            v26.word0 = 0;
                            v25.word5 = v26;
                            MEM[MEM[64]] = 0;
                            MEM[MEM[64] + 32] = 0;
                            MEM[MEM[64] + 64] = 0;
                            MEM[MEM[64] + 96] = 0;
                            require(v0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            MEM[MEM[64]] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = address(this);
                            MEM[4 + MEM[64] + 32] = address(MEM[32 + varg1[v0]]);
                            require(bool((address(varg3)).code.size));
                            v27 = address(varg3).staticcall(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                            if (bool(v27)) {
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                if (MEM[MEM[64]] < varg2[v0]) {
                                    require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    MEM[MEM[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = address(MEM[32 + varg1[v0]]);
                                    MEM[4 + MEM[64] + 32] = uint256.max;
                                    require(bool((address(varg3)).code.size));
                                    v28 = address(varg3).call(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v28)) {
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        require(MEM[MEM[64]] == bool(MEM[MEM[64]]));
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                MEM[MEM[64]] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                MEM[4 + MEM[64]] = 224;
                                MEM[4 + MEM[64] + 224] = v25.word0;
                                require(v25.word1 < 2, Panic(33)); // failed convertion to enum type
                                MEM[4 + MEM[64] + (uint8.max + 1)] = v25.word1;
                                MEM[4 + MEM[64] + 288] = address(v25.word2);
                                MEM[4 + MEM[64] + 320] = address(v25.word3);
                                MEM[4 + MEM[64] + 352] = v25.word4;
                                MEM[4 + MEM[64] + 384] = 192;
                                MEM[4 + MEM[64] + 416] = MEM[v25.word5];
                                v29 = v30 = 0;
                                while (v29 < MEM[v25.word5]) {
                                    MEM[v29 + (4 + MEM[64] + 416 + 32)] = MEM[v29 + (v25.word5 + 32)];
                                    v29 += 32;
                                }
                                if (v29 > MEM[v25.word5]) {
                                    MEM[MEM[v25.word5] + (4 + MEM[64] + 416 + 32)] = 0;
                                }
                                MEM[4 + MEM[64] + 32] = address(this);
                                MEM[4 + MEM[64] + 32 + 32] = False;
                                MEM[4 + MEM[64] + 32 + 64] = address(varg0);
                                MEM[4 + MEM[64] + 32 + 96] = False;
                                MEM[4 + MEM[64] + 160] = 0;
                                MEM[196 + MEM[64]] = block.timestamp;
                                require(bool((address(MEM[32 + varg1[v0]])).code.size));
                                v31 = address(MEM[32 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v2bb7.word5] + 4 + MEM[64] + 416 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                if (bool(v31)) {
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v32 = address(varg3) < address(MEM[64 + varg1[v0]]);
                        require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(v0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (v32) {
                            v33 = v34 = 0x1000276a4;
                        } else {
                            v33 = v35 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                        MEM[32 + MEM[64]] = address(varg3);
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = address(varg0);
                        MEM[4 + MEM[64] + 32] = bool(v32);
                        MEM[4 + MEM[64] + 64] = varg2[v0];
                        MEM[4 + MEM[64] + 96] = address(v33);
                        MEM[4 + MEM[64] + 128] = 160;
                        MEM[4 + MEM[64] + 160] = 64 + MEM[64] - MEM[64] - 32;
                        v36 = v37 = 0;
                        while (v36 < 64 + MEM[64] - MEM[64] - 32) {
                            MEM[v36 + (4 + MEM[64] + 160 + 32)] = MEM[v36 + (MEM[64] + 32)];
                            v36 += 32;
                        }
                        if (v36 > 64 + MEM[64] - MEM[64] - 32) {
                            MEM[64 + MEM[64] - MEM[64] - 32 + (4 + MEM[64] + 160 + 32)] = 0;
                        }
                        require(bool((address(MEM[32 + varg1[v0]])).code.size));
                        v38 = address(MEM[32 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + 64 + MEM[64] - MEM[64] - 32 + 4 + MEM[64] + 160 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                        if (bool(v38)) {
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                } else {
                    require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v39 = v40 = address(MEM[32 + varg1[v0]]);
                    MEM[MEM[64]] = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = address(varg0);
                    v41 = 36 + MEM[64];
                }
            } else {
                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v39 = v42 = address(MEM[32 + varg1[v0]]);
                MEM[MEM[64]] = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = address(varg0);
                v41 = v43 = 36 + MEM[64];
            }
            require(bool(v39.code.size));
            v44 = v39.call(MEM[MEM[64]:MEM[64] + v3325V0x1afd - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
            if (bool(v44)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        } else {
            require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            varg3 = v45 = MEM[64 + varg1[v0]];
            if (address(v46) >= address(v45)) {
            }
            v47 = _SafeAdd(1, v0);
            require(v47 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v48 = v49 = varg2[v47];
            if (address(varg3) == address(varg3)) {
                v48 = v50 = 0;
            } else {
                v48 = v51 = 0;
            }
            if (0 != v2) {
                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[MEM[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = v48;
                MEM[4 + MEM[64] + 32] = v48;
                MEM[4 + MEM[64] + 64] = address(varg0);
                require(bool((address(MEM[32 + varg1[v0]])).code.size));
                v52 = address(MEM[32 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 100 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (!bool(v52)) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v53 = new bytes[](0);
                if (0) {
                    CALLDATACOPY(v53.data, msg.data.length, 0);
                    v54 = v53.data;
                }
                MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = v48;
                MEM[4 + MEM[64] + 32] = v48;
                MEM[4 + MEM[64] + 64] = address(varg0);
                MEM[4 + MEM[64] + 96] = 128;
                MEM[4 + MEM[64] + 128] = v53.length;
                v55 = v56 = 0;
                while (v55 < v53.length) {
                    MEM[v55 + (4 + MEM[64] + 128 + 32)] = v53[v55];
                    v55 += 32;
                }
                if (v55 > v53.length) {
                    MEM[v53.length + (4 + MEM[64] + 128 + 32)] = 0;
                }
                require(bool((address(MEM[32 + varg1[v0]])).code.size));
                v57 = address(MEM[32 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (!bool(v57)) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            }
        }
        require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        varg3 = v58 = MEM[64 + varg1[v0]];
        v0 = 0x3820(v0);
    }
    return ;
}

function 0xecc142e2(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0 = 0x106d(varg1, varg0);
    return v0;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = 0;
    v1 = v3 = 0;
    if (amount0Delta < v3) {
        v1 = v4 = 0x383b(amount0Delta);
    }
    if (amount1Delta < 0) {
        v1 = v5 = 0x383b(amount1Delta);
    }
    if (msg.data[4 + data] > 64) {
        v6 = 4 + data + 32 + msg.data[4 + data];
        v7 = v8 = 0;
        require(v6 - (4 + data + 32) >= 96, v8, v8);
        require(data.word1 <= uint64.max, v8, v8);
        v9 = 0;
        require(4 + data + 32 + data.word1 + 31 < v6, v9, v9);
        require(msg.data[4 + data + 32 + data.word1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v10 = new uint256[](msg.data[4 + data + 32 + data.word1]);
        require(!((v10 + ((msg.data[4 + data + 32 + data.word1] << 5) + 32) < v10) | (v10 + ((msg.data[4 + data + 32 + data.word1] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v11 = v12 = v10.data;
        v13 = v14 = 32 + (4 + data + 32 + data.word1);
        require(v6 >= 32 + (4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] * 96), v9, v9);
        while (v9 < msg.data[4 + data + 32 + data.word1]) {
            require(v6 - v13 >= 96, v9, v9);
            v15 = new struct(3);
            require(!((v15 + 96 > uint64.max) | (v15 + 96 < v15)), Panic(65)); // failed memory allocation (too much memory)
            v15.word0 = msg.data[v13];
            require(msg.data[v13 + 32] == address(msg.data[v13 + 32]));
            v15.word1 = msg.data[v13 + 32];
            require(msg.data[64 + v13] == address(msg.data[64 + v13]));
            v15.word2 = msg.data[64 + v13];
            MEM[v11] = v15;
            v11 += 32;
            v13 += 96;
            v9 += 1;
        }
        require(data.word2 <= uint64.max, v8, v8);
        require(v6 > 4 + data + 32 + data.word2 + 31, v8, v8);
        require(msg.data[4 + data + 32 + data.word2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v16 = new uint256[](msg.data[4 + data + 32 + data.word2]);
        require(!((v16 + ((msg.data[4 + data + 32 + data.word2] << 5) + 32) < v16) | (v16 + ((msg.data[4 + data + 32 + data.word2] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v17 = v18 = v16.data;
        v19 = v20 = 32 + (4 + data + 32 + data.word2);
        require(v6 >= 32 + (4 + data + 32 + data.word2 + (msg.data[4 + data + 32 + data.word2] << 5)), v8, v8);
        while (v7 < msg.data[4 + data + 32 + data.word2]) {
            MEM[v17] = msg.data[v19];
            v7 += 1;
            v17 += 32;
            v19 += 32;
        }
        require(data.word3 == address(data.word3));
        require(v16.length >= 1, Panic(17)); // arithmetic overflow or underflow
        require(v16.length - 1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v21 = new uint256[](v16.length - 1);
        if (v16.length - 1) {
            CALLDATACOPY(v21.data, msg.data.length, v16.length - 1 << 5);
        }
        require(v10.length >= 1, Panic(17)); // arithmetic overflow or underflow
        v22 = v10.length - 1;
        require(v22 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v23 = new uint256[](v22);
        if (v22) {
            v24 = v23.data;
            do {
                v25 = new struct(3);
                v25.word0 = 0;
                v25.word1 = 0;
                v25.word2 = 0;
                MEM[v24] = v25;
                v24 += 32;
                v22 = v22 - 1;
            } while (v22);
        }
        v26 = v27 = 1;
        while (v26 < v16.length) {
            require(v26 < v16.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v26 >= 1, Panic(17)); // arithmetic overflow or underflow
            require(v26 - 1 < v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v21[v26 - 1] = v16[v26];
            v26 = 0x3820(v26);
        }
        v28 = v29 = 1;
        while (v28 < v10.length) {
            require(v28 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v28 >= 1, Panic(17)); // arithmetic overflow or underflow
            require(v28 - 1 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v23[v28 - 1] = v10[v28];
            v28 = 0x3820(v28);
        }
        require(0 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v30 = v23.data;
        v31 = v32 = uint8(MEM[v23[0]]) >= 10;
        if (uint8(MEM[v23[0]]) < 10) {
            v31 = v33 = MEM[v23[0]] > uint40.max + 1;
        }
        if (!v31) {
            v31 = 5 == uint8(MEM[v23[0]]);
        }
        if (!v31) {
            require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v34 = v10.data;
            require(0 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v35 = v23.data;
            require(bool((address(MEM[64 + v10[0]])).code.size));
            v36, /* bool */ v37 = address(MEM[64 + v10[0]]).transfer(address(MEM[32 + v23[0]]), v1).gas(msg.gas);
            require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v37 == bool(v37));
        }
        require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v38 = v10.data;
        0x16be(this, v23, v21, MEM[64 + v10[0]]);
        if (address(this) == 4096) {
            require(0 < v16.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v39 = v16.data;
            require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v40 = v10.data;
            require(bool((address(data.word3)).code.size));
            v41, /* uint256 */ v42 = address(data.word3).allowance(address(this), address(MEM[32 + v10[0]])).gas(msg.gas);
            require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            if (v42 < v16[0]) {
                require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v43 = v10.data;
                require(bool((address(data.word3)).code.size));
                v44, /* bool */ v45 = address(data.word3).approve(address(MEM[32 + v10[0]]), uint256.max).gas(msg.gas);
                require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v45 == bool(v45));
            }
        } else {
            require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v46 = v10.data;
            require(0 < v16.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v47 = v16.data;
            require(bool((address(data.word3)).code.size));
            v48, /* bool */ v49 = address(data.word3).transfer(address(MEM[32 + v10[0]]), v16[0]).gas(msg.gas);
            require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v49 == bool(v49));
        }
    } else {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
        require(data.word1 == address(data.word1));
        require(bool((address(data.word1)).code.size));
        v50, /* bool */ v51 = address(data.word1).transfer(msg.sender, v1).gas(msg.gas);
        require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v51 == bool(v51));
    }
}

function 0x267f(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, v1 = 0x2a4d(varg0, varg1);
    return keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg2 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f);
}

function 0x26ef(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    while (1) {
        require(MEM[varg1] >= 1, Panic(17)); // arithmetic overflow or underflow
        if (v0 >= MEM[varg1] - 1) {
            return v0;
        } else {
            require(v0 < MEM[varg1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v2 = MEM[32 + (v0 << 5) + varg1];
            v3 = _SafeAdd(1, v0);
            require(v3 < MEM[varg1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v4, v5 = 0x2a4d(MEM[32 + (v3 << 5) + varg1], v2);
            v6 = 0x267f(MEM[32 + (v3 << 5) + varg1], v2, 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f);
            require(bool((address(v6)).code.size));
            v7, /* uint112 */ v8, /* uint112 */ v9, /* uint32 */ v10 = address(v6).getReserves().gas(msg.gas);
            require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v8 == uint112(v8));
            require(v9 == uint112(v9));
            require(v10 == uint32(v10));
            v11 = v12 = uint112(v9);
            v11 = v13 = uint112(v8);
            if (address(v2) != address(v5)) {
            }
            require(bool((address(v2)).code.size));
            v14, /* uint256 */ v15 = address(v2).balanceOf(address(v6)).gas(msg.gas);
            require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v15 >= v11, Panic(17)); // arithmetic overflow or underflow
            v0 = v16 = 0x2ad7(v11, v11, v15 - v11);
            if (address(v2) == address(v5)) {
                v0 = v17 = 0;
            } else {
                v0 = v18 = 0;
            }
            require(MEM[varg1] >= 2, Panic(17)); // arithmetic overflow or underflow
            if (v0 < MEM[varg1] - 2) {
                v19 = _SafeAdd(2, v0);
                require(v19 < MEM[varg1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v20, v21 = 0x2a4d(MEM[32 + (v19 << 5) + varg1], MEM[32 + (v3 << 5) + varg1]);
                MEM[32 + MEM[64]] = bytes20(v21 << 96);
                MEM[32 + MEM[64] + 20] = bytes20(v20 << 96);
                v22 = new uint256[](72 + MEM[64] - v22 - 32);
                v23 = v22.length;
                v24 = v22.data;
                MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                MEM[32 + MEM[64] + 1] = bytes20(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f000000000000000000000000);
                MEM[32 + MEM[64] + 21] = keccak256(v22);
                MEM[32 + MEM[64] + 53] = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
                v25 = new uint256[](117 + MEM[64] - v25 - 32);
                v26 = v25.length;
                v27 = v25.data;
                varg0 = v28 = keccak256(v25);
            }
            MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 36] = v0;
            MEM[MEM[64] + 36 + 32] = v0;
            MEM[MEM[64] + 36 + 64] = address(varg0);
            MEM[MEM[64] + 36 + 96] = 128;
            MEM[MEM[64] + 36 + 128] = 0;
            v29 = v30 = 0;
            while (v29 < 0) {
                MEM[v29 + (MEM[64] + 36 + 128 + 32)] = MEM[v29 + (MEM[64] + 32)];
                v29 += 32;
            }
            if (v29 > 0) {
                MEM[MEM[64] + 36 + 128 + 32] = 0;
            }
            require(bool((address(v6)).code.size));
            v31 = address(v6).call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (v0 > 0) {
            }
            v0 = 0x3820(v0);
        }
    }
}

function 0x2a4d(uint256 varg0, uint256 varg1) private { 
    require(address(varg1) != address(varg0), Error('PancakeLibrary: IDENTICAL_ADDRESSES'));
    if (address(varg1) >= address(varg0)) {
    }
    require(address(varg1), Error('PancakeLibrary: ZERO_ADDRESS'));
    return varg1, varg1;
}

function 0x2ad7(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x2b25(9975, varg2);
    v1 = 0x2b25(varg0, v0);
    v2 = 0x2b25(10000, varg1);
    v3 = 0x2b65(v0, v2);
    v4 = _SafeDiv(v1, v3);
    return v4;
}

function 0x2b25(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = v3 = !varg0;
    if (varg0) {
        v0 = v4 = _SafeMul(varg1, varg0);
        v5 = _SafeDiv(v4, varg0);
        v2 = v6 = v5 == varg1;
    }
    require(v2, Error('math-mul-overflow'));
    return v0;
}

function 0x2b65(uint256 varg0, uint256 varg1) private { 
    v0 = _SafeAdd(varg1, varg0);
    require(v0 >= varg1, Error('math-add-overflow'));
    return v0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= ~varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!(bool(varg0) & (varg1 > uint256.max / varg0)), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x3820(uint256 varg0) private { 
    require(varg0 != uint256.max, Panic(17)); // arithmetic overflow or underflow
    return 1 + varg0;
}

function 0x383b(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x54894bc2(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg0 <= uint64.max);
    v0 = 0;
    require(4 + varg0 + 31 < msg.data.length, v0, v0);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](varg0.length);
    require(!((v1 + ((varg0.length << 5) + 32) < v1) | (v1 + ((varg0.length << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    v4 = v5 = varg0.data;
    require(msg.data.length >= 32 + (4 + varg0 + varg0.length * 96), v0, v0);
    while (v0 < varg0.length) {
        require(msg.data.length - v4 >= 96, v0, v0);
        v6 = new struct(3);
        require(!((v6 + 96 > uint64.max) | (v6 + 96 < v6)), Panic(65)); // failed memory allocation (too much memory)
        v6.word0 = msg.data[v4];
        require(msg.data[v4 + 32] == address(msg.data[v4 + 32]));
        v6.word1 = msg.data[v4 + 32];
        require(msg.data[64 + v4] == address(msg.data[64 + v4]));
        v6.word2 = msg.data[64 + v4];
        MEM[v2] = v6;
        v2 += 32;
        v4 += 96;
        v0 += 1;
    }
    MEM[36 + MEM[64] + 32] = varg2;
    MEM[36 + MEM[64] + 64] = 96;
    v7 = v8 = 0;
    MEM[36 + MEM[64] + 96] = v1.length;
    v9 = v10 = 36 + MEM[64] + 96 + 32;
    v11 = v12 = v1.data;
    while (v7 < v1.length) {
        MEM[v9] = MEM[MEM[v11]];
        MEM[v9 + 32] = address(MEM[MEM[v11] + 32]);
        MEM[v9 + 64] = address(MEM[64 + MEM[v11]]);
        v9 = v9 + 96;
        v11 += 32;
        v7 += 1;
    }
    MEM[MEM[64] + 32] = bytes4(0xe5c90f9e00000000000000000000000000000000000000000000000000000000) | uint224(varg1);
    v13 = v14 = 0;
    while (v13 < v9 - MEM[64] - 32) {
        MEM[v13 + MEM[64]] = MEM[v13 + (MEM[64] + 32)];
        v13 += 32;
    }
    if (v13 > v9 - MEM[64] - 32) {
        MEM[v9 - MEM[64] - 32 + MEM[64]] = 0;
    }
    v15, /* uint256 */ v16, /* uint256 */ v17 = address(0xfad372ce10c90ed9dcb7a147772edf4f56344a2b).delegatecall(MEM[MEM[64]:MEM[64] + v3191_0x6V0x36cdV0x1c2V0xf8 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v18 = v19 = 96;
    } else {
        v18 = v20 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v20.data, 0, RETURNDATASIZE());
    }
    require(v15, Error(19760));
    v21 = v22 = 0;
    require(v17 + MEM[v18] - v17 >= 64, v22, v22);
    require(MEM[v17] <= uint64.max, v22, v22);
    require(v17 + MEM[v18] > v17 + MEM[v17] + 31, v22, v22);
    require(MEM[v17 + MEM[v17]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v23 = new uint256[](MEM[v17 + MEM[v17]]);
    require(!((v23 + ((MEM[v17 + MEM[v17]] << 5) + 32) < v23) | (v23 + ((MEM[v17 + MEM[v17]] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v24 = v25 = v23.data;
    v26 = v27 = 32 + (v17 + MEM[v17]);
    require(v17 + MEM[v18] >= 32 + (v17 + MEM[v17] + (MEM[v17 + MEM[v17]] << 5)), v22, v22);
    while (v21 < MEM[v17 + MEM[v17]]) {
        MEM[v24] = MEM[v26];
        v21 += 1;
        v24 += 32;
        v26 += 32;
    }
    require(MEM[32 + v17] == bool(MEM[32 + v17]));
    require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v28 = v1.data;
    MEM[MEM[64] + 32] = 96;
    v29 = v30 = 0;
    MEM[MEM[64] + 32 + 96] = v1.length;
    v31 = v32 = MEM[64] + 32 + 96 + 32;
    v33 = v34 = v1.data;
    while (v29 < v1.length) {
        MEM[v31] = MEM[MEM[v33]];
        MEM[v31 + 32] = address(MEM[MEM[v33] + 32]);
        MEM[v31 + 64] = address(MEM[64 + MEM[v33]]);
        v31 = v31 + 96;
        v33 += 32;
        v29 += 1;
    }
    MEM[MEM[64] + 32 + 32] = v31 - (MEM[64] + 32);
    v35 = v36 = 0;
    MEM[v31] = v23.length;
    v37 = v38 = v31 + 32;
    v39 = v40 = v23.data;
    while (v35 < v23.length) {
        MEM[v37] = MEM[v39];
        v37 += 32;
        v39 += 32;
        v35 += 1;
    }
    MEM[MEM[64] + 32 + 64] = varg2;
    if (3 != uint8(MEM[v1[0]])) {
        if (4 != uint8(MEM[v1[0]])) {
            if (5 != uint8(MEM[v1[0]])) {
                require(!uint8(MEM[v1[0]]), Error(19762));
                require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v41 = v1.data;
                v42 = v43 = MEM[64 + v1[0]];
                if (varg2 >= address(v43)) {
                }
                if (varg2 == address(v42)) {
                    v44 = v45 = 0;
                    require(1 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v46 = v47 = v23[1];
                } else {
                    require(1 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v44 = v48 = v23[1];
                    v46 = v49 = 0;
                }
                require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v50 = v1.data;
                v51 = new uint256[](v37 - MEM[64] - 32);
                v52 = v53 = 0;
                while (v52 < v37 - MEM[64] - 32) {
                    MEM[v52 + v51.data] = MEM[v52 + (MEM[64] + 32)];
                    v52 += 32;
                }
                if (v52 > v37 - MEM[64] - 32) {
                    MEM[v37 - MEM[64] - 32 + v51.data] = 0;
                }
                require(bool((address(MEM[32 + v1[0]])).code.size));
                v54 = address(MEM[32 + v1[0]]).swap(v44, v46, address(this), v51).gas(msg.gas);
                require(bool(v54), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else {
                require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v55 = v1.data;
                require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v56 = v1.data;
                require(0 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v57 = v23.data;
                if (varg2 < address(MEM[64 + v1[0]])) {
                    v58 = v59 = 0x1000276a4;
                } else {
                    v58 = v60 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                v61 = new uint256[](v37 - MEM[64] - 32);
                v62 = v63 = 0;
                while (v62 < v37 - MEM[64] - 32) {
                    MEM[v62 + v61.data] = MEM[v62 + (MEM[64] + 32)];
                    v62 += 32;
                }
                if (v62 > v37 - MEM[64] - 32) {
                    MEM[v37 - MEM[64] - 32 + v61.data] = 0;
                }
                require(bool((address(MEM[32 + v1[0]])).code.size));
                v64, /* uint256 */ v65, /* uint256 */ v66 = address(MEM[32 + v1[0]]).swap(address(this), varg2 < address(MEM[64 + v1[0]]), v23[0], address(v58), v61).gas(msg.gas);
                require(bool(v64), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            }
        } else {
            require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v67 = v1.data;
            v68 = address(MEM[32 + v1[0]]);
            require(1 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v69 = new uint256[](v37 - MEM[64] - 32);
            v70 = v71 = 0;
            while (v70 < v37 - MEM[64] - 32) {
                MEM[v70 + v69.data] = MEM[v70 + (MEM[64] + 32)];
                v70 += 32;
            }
            if (v70 > v37 - MEM[64] - 32) {
                MEM[v37 - MEM[64] - 32 + v69.data] = 0;
            }
        }
    } else {
        require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v72 = v1.data;
        v68 = v73 = address(MEM[32 + v1[0]]);
        require(1 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v74 = new uint256[](v37 - MEM[64] - 32);
        v75 = v76 = 0;
        while (v75 < v37 - MEM[64] - 32) {
            MEM[v75 + v74.data] = MEM[v75 + (MEM[64] + 32)];
            v75 += 32;
        }
        if (v75 > v37 - MEM[64] - 32) {
            MEM[v37 - MEM[64] - 32 + v74.data] = 0;
        }
    }
    require(bool(v68.code.size));
    v77 = v68.flashLoan(uint32(0xd0a494e4), 0, v23[1], v23[1], 0, address(this), address(this), v74, v69).gas(msg.gas);
    require(bool(v77), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == varg2) {
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v78, /* uint256 */ v79 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address(this)).gas(msg.gas);
        require(bool(v78), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        require(bool(varg2.code.size));
        v80, /* uint256 */ v81 = varg2.balanceOf(address(this)).gas(msg.gas);
        require(bool(v80), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v79 = v82 = 0x106d(v81, varg2);
        require(v82 > 0, Error(19763));
    }
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v83 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v79).gas(msg.gas);
    require(bool(v83), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(v79 >= varg3, Error(19764));
    v84 = _SafeMul(v79, varg4);
    v85 = v86 = _SafeDiv(v84, 100);
    if (v86) {
        require(v79 >= v86, Panic(17)); // arithmetic overflow or underflow
        if (v79 - v86 < varg3) {
            require(v79 >= varg3, Panic(17)); // arithmetic overflow or underflow
            v85 = v79 - varg3;
        }
        if (v85) {
            v87 = block.coinbase.call().value(v85).gas(2300 * !v85);
            require(bool(v87), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    }
    v88 = msg.sender.call().value(this.balance).gas(2300 * !this.balance);
    require(bool(v88), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function receive() public payable { 
}

function dodoCall(bool isDODOBuy, uint256 baseAmount, uint256 quoteAmount, bytes varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(msg.data[4 + varg3] <= uint64.max);
    require(v0.data <= msg.data.length);
    if (!isDODOBuy) {
        v1 = v2 = 0;
        v3 = v4 = 0;
        require(4 + varg3 + 32 + msg.data[4 + varg3] - (4 + varg3 + 32) >= 96, v4, v4);
        require(varg3.word1 <= uint64.max, v4, v4);
        v5 = 0;
        require(4 + varg3 + 32 + varg3.word1 + 31 < 4 + varg3 + 32 + msg.data[4 + varg3], v5, v5);
        require(msg.data[4 + varg3 + 32 + varg3.word1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = new uint256[](msg.data[4 + varg3 + 32 + varg3.word1]);
        require(!((v6 + ((msg.data[4 + varg3 + 32 + varg3.word1] << 5) + 32) < v6) | (v6 + ((msg.data[4 + varg3 + 32 + varg3.word1] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v7 = v8 = v6.data;
        v9 = v10 = 32 + (4 + varg3 + 32 + varg3.word1);
        require(4 + varg3 + 32 + msg.data[4 + varg3] >= 32 + (4 + varg3 + 32 + varg3.word1 + msg.data[4 + varg3 + 32 + varg3.word1] * 96), v5, v5);
        while (v5 < msg.data[4 + varg3 + 32 + varg3.word1]) {
            require(4 + varg3 + 32 + msg.data[4 + varg3] - v9 >= 96, v5, v5);
            v11 = new struct(3);
            require(!((v11 + 96 > uint64.max) | (v11 + 96 < v11)), Panic(65)); // failed memory allocation (too much memory)
            v11.word0 = msg.data[v9];
            require(msg.data[v9 + 32] == address(msg.data[v9 + 32]));
            v11.word1 = msg.data[v9 + 32];
            require(msg.data[64 + v9] == address(msg.data[64 + v9]));
            v11.word2 = msg.data[64 + v9];
            MEM[v7] = v11;
            v7 += 32;
            v9 += 96;
            v5 += 1;
        }
        require(varg3.word2 <= uint64.max, v4, v4);
        require(4 + varg3 + 32 + msg.data[4 + varg3] > 4 + varg3 + 32 + varg3.word2 + 31, v4, v4);
        require(msg.data[4 + varg3 + 32 + varg3.word2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v12 = new uint256[](msg.data[4 + varg3 + 32 + varg3.word2]);
        require(!((v12 + ((msg.data[4 + varg3 + 32 + varg3.word2] << 5) + 32) < v12) | (v12 + ((msg.data[4 + varg3 + 32 + varg3.word2] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v13 = v14 = v12.data;
        v15 = v16 = 32 + (4 + varg3 + 32 + varg3.word2);
        require(4 + varg3 + 32 + msg.data[4 + varg3] >= 32 + (4 + varg3 + 32 + varg3.word2 + (msg.data[4 + varg3 + 32 + varg3.word2] << 5)), v4, v4);
        while (v3 < msg.data[4 + varg3 + 32 + varg3.word2]) {
            MEM[v13] = msg.data[v15];
            v3 += 1;
            v13 += 32;
            v15 += 32;
        }
        require(varg3.word3 == address(varg3.word3));
        require(v12.length >= 1, Panic(17)); // arithmetic overflow or underflow
        require(v12.length - 1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v17 = new uint256[](v12.length - 1);
        if (v12.length - 1) {
            CALLDATACOPY(v17.data, msg.data.length, v12.length - 1 << 5);
        }
        require(v6.length >= 1, Panic(17)); // arithmetic overflow or underflow
        v18 = v6.length - 1;
        require(v18 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v19 = new uint256[](v18);
        if (v18) {
            v20 = v19.data;
            do {
                v21 = new struct(3);
                v21.word0 = 0;
                v21.word1 = 0;
                v21.word2 = 0;
                MEM[v20] = v21;
                v20 += 32;
                v18 = v18 - 1;
            } while (v18);
        }
        v22 = v23 = 1;
        while (v22 < v12.length) {
            require(v22 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v22 >= 1, Panic(17)); // arithmetic overflow or underflow
            require(v22 - 1 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v17[v22 - 1] = v12[v22];
            v22 = 0x3820(v22);
        }
        v24 = v25 = 1;
        while (v24 < v6.length) {
            require(v24 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v24 >= 1, Panic(17)); // arithmetic overflow or underflow
            require(v24 - 1 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v19[v24 - 1] = v6[v24];
            v24 = 0x3820(v24);
        }
        require(0 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v26 = v19.data;
        v27 = v28 = uint8(MEM[v19[0]]) >= 10;
        if (uint8(MEM[v19[0]]) < 10) {
            v27 = v29 = MEM[v19[0]] > uint40.max + 1;
        }
        if (!v27) {
            v27 = 5 == uint8(MEM[v19[0]]);
        }
        if (!v27) {
            require(0 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v30 = v6.data;
            require(0 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v31 = v19.data;
            require(bool((address(MEM[64 + v6[0]])).code.size));
            v32, /* bool */ v33 = address(MEM[64 + v6[0]]).transfer(address(MEM[32 + v19[0]]), v1).gas(msg.gas);
            require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v33 == bool(v33));
        }
        require(0 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v34 = v6.data;
        0x16be(this, v19, v17, MEM[64 + v6[0]]);
        if (address(0x1000) == 4096) {
            require(0 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v35 = v12.data;
            require(0 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v36 = v6.data;
            require(bool((address(varg3.word3)).code.size));
            v37, /* uint256 */ v38 = address(varg3.word3).allowance(address(this), address(MEM[32 + v6[0]])).gas(msg.gas);
            require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            if (v38 < v12[0]) {
                require(0 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v39 = v6.data;
                require(bool((address(varg3.word3)).code.size));
                v40, /* bool */ v41 = address(varg3.word3).approve(address(MEM[32 + v6[0]]), uint256.max).gas(msg.gas);
                require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v41 == bool(v41));
            }
        } else {
            require(0 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v42 = v6.data;
            require(0 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v43 = v12.data;
            require(bool((address(varg3.word3)).code.size));
            v44, /* bool */ v45 = address(varg3.word3).transfer(address(MEM[32 + v6[0]]), v12[0]).gas(msg.gas);
            require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v45 == bool(v45));
        }
    } else {
        v46 = v47 = 0;
        v48 = v49 = 0;
        require(4 + varg3 + 32 + msg.data[4 + varg3] - (4 + varg3 + 32) >= 96, v49, v49);
        require(varg3.word1 <= uint64.max, v49, v49);
        v50 = 0;
        require(4 + varg3 + 32 + varg3.word1 + 31 < 4 + varg3 + 32 + msg.data[4 + varg3], v50, v50);
        require(msg.data[4 + varg3 + 32 + varg3.word1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v51 = new uint256[](msg.data[4 + varg3 + 32 + varg3.word1]);
        require(!((v51 + ((msg.data[4 + varg3 + 32 + varg3.word1] << 5) + 32) < v51) | (v51 + ((msg.data[4 + varg3 + 32 + varg3.word1] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v52 = v53 = v51.data;
        v54 = v55 = 32 + (4 + varg3 + 32 + varg3.word1);
        require(4 + varg3 + 32 + msg.data[4 + varg3] >= 32 + (4 + varg3 + 32 + varg3.word1 + msg.data[4 + varg3 + 32 + varg3.word1] * 96), v50, v50);
        while (v50 < msg.data[4 + varg3 + 32 + varg3.word1]) {
            require(4 + varg3 + 32 + msg.data[4 + varg3] - v54 >= 96, v50, v50);
            v56 = new struct(3);
            require(!((v56 + 96 > uint64.max) | (v56 + 96 < v56)), Panic(65)); // failed memory allocation (too much memory)
            v56.word0 = msg.data[v54];
            require(msg.data[v54 + 32] == address(msg.data[v54 + 32]));
            v56.word1 = msg.data[v54 + 32];
            require(msg.data[64 + v54] == address(msg.data[64 + v54]));
            v56.word2 = msg.data[64 + v54];
            MEM[v52] = v56;
            v52 += 32;
            v54 += 96;
            v50 += 1;
        }
        require(varg3.word2 <= uint64.max, v49, v49);
        require(4 + varg3 + 32 + msg.data[4 + varg3] > 4 + varg3 + 32 + varg3.word2 + 31, v49, v49);
        require(msg.data[4 + varg3 + 32 + varg3.word2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v57 = new uint256[](msg.data[4 + varg3 + 32 + varg3.word2]);
        require(!((v57 + ((msg.data[4 + varg3 + 32 + varg3.word2] << 5) + 32) < v57) | (v57 + ((msg.data[4 + varg3 + 32 + varg3.word2] << 5) + 32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v58 = v59 = v57.data;
        v60 = v61 = 32 + (4 + varg3 + 32 + varg3.word2);
        require(4 + varg3 + 32 + msg.data[4 + varg3] >= 32 + (4 + varg3 + 32 + varg3.word2 + (msg.data[4 + varg3 + 32 + varg3.word2] << 5)), v49, v49);
        while (v48 < msg.data[4 + varg3 + 32 + varg3.word2]) {
            MEM[v58] = msg.data[v60];
            v48 += 1;
            v58 += 32;
            v60 += 32;
        }
        require(varg3.word3 == address(varg3.word3));
        require(v57.length >= 1, Panic(17)); // arithmetic overflow or underflow
        require(v57.length - 1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v62 = new uint256[](v57.length - 1);
        if (v57.length - 1) {
            CALLDATACOPY(v62.data, msg.data.length, v57.length - 1 << 5);
        }
        require(v51.length >= 1, Panic(17)); // arithmetic overflow or underflow
        v63 = v51.length - 1;
        require(v63 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v64 = new uint256[](v63);
        if (v63) {
            v65 = v64.data;
            do {
                v66 = new struct(3);
                v66.word0 = 0;
                v66.word1 = 0;
                v66.word2 = 0;
                MEM[v65] = v66;
                v65 += 32;
                v63 = v63 - 1;
            } while (v63);
        }
        v67 = v68 = 1;
        while (v67 < v57.length) {
            require(v67 < v57.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v67 >= 1, Panic(17)); // arithmetic overflow or underflow
            require(v67 - 1 < v62.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v62[v67 - 1] = v57[v67];
            v67 = 0x3820(v67);
        }
        v69 = v70 = 1;
        while (v69 < v51.length) {
            require(v69 < v51.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v69 >= 1, Panic(17)); // arithmetic overflow or underflow
            require(v69 - 1 < v64.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v64[v69 - 1] = v51[v69];
            v69 = 0x3820(v69);
        }
        require(0 < v64.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v71 = v64.data;
        v72 = v73 = uint8(MEM[v64[0]]) >= 10;
        if (uint8(MEM[v64[0]]) < 10) {
            v72 = v74 = MEM[v64[0]] > uint40.max + 1;
        }
        if (!v72) {
            v72 = 5 == uint8(MEM[v64[0]]);
        }
        if (!v72) {
            require(0 < v51.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v75 = v51.data;
            require(0 < v64.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v76 = v64.data;
            require(bool((address(MEM[64 + v51[0]])).code.size));
            v77, /* bool */ v78 = address(MEM[64 + v51[0]]).transfer(address(MEM[32 + v64[0]]), v46).gas(msg.gas);
            require(bool(v77), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v78 == bool(v78));
        }
        require(0 < v51.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v79 = v51.data;
        0x16be(this, v64, v62, MEM[64 + v51[0]]);
        if (address(0x1000) == 4096) {
            require(0 < v57.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v80 = v57.data;
            require(0 < v51.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v81 = v51.data;
            require(bool((address(varg3.word3)).code.size));
            v82, /* uint256 */ v83 = address(varg3.word3).allowance(address(this), address(MEM[32 + v51[0]])).gas(msg.gas);
            require(bool(v82), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            if (v83 < v57[0]) {
                require(0 < v51.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v84 = v51.data;
                require(bool((address(varg3.word3)).code.size));
                v85, /* bool */ v86 = address(varg3.word3).approve(address(MEM[32 + v51[0]]), uint256.max).gas(msg.gas);
                require(bool(v85), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v86 == bool(v86));
            }
        } else {
            require(0 < v51.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v87 = v51.data;
            require(0 < v57.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v88 = v57.data;
            require(bool((address(varg3.word3)).code.size));
            v89, /* bool */ v90 = address(varg3.word3).transfer(address(MEM[32 + v51[0]]), v57[0]).gas(msg.gas);
            require(bool(v89), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v90 == bool(v90));
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0x84800812 > function_selector >> 224) {
        if (0x54894bc2 == function_selector >> 224) {
            0x54894bc2();
        } else if (0x60378cea == function_selector >> 224) {
            dodoCall(bool,uint256,uint256,bytes);
        } else if (0x7f35fb39 == function_selector >> 224) {
            0x7f35fb39();
        }
    } else if (0x84800812 == function_selector >> 224) {
        pancakeCall(address,uint256,uint256,bytes);
    } else if (0xecc142e2 == function_selector >> 224) {
        0xecc142e2();
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    }
    CALLDATACOPY(4, 4, msg.data.length - 4);
    if (this == MEM[4] == 1) {
        MEM8[0] = 0x84 & 0xFF;
        MEM8[1] = 0x80 & 0xFF;
        MEM8[2] = 0x8 & 0xFF;
        MEM8[3] = 0x12 & 0xFF;
    } else {
        MEM8[0] = 0xfa & 0xFF;
        MEM8[1] = 0x46 & 0xFF;
        MEM8[2] = 0x1e & 0xFF;
        MEM8[3] = 0x33 & 0xFF;
    }
    v0 = this.delegatecall(MEM[0:msg.data.length], MEM[0:0]).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return MEM[0:RETURNDATASIZE()];
}
