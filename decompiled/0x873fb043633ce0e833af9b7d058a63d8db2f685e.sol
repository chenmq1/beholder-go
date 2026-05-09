// Decompiled by library.dedaub.com
// 2026.04.09 22:53 UTC
// Compiled using the solidity compiler version 0.8.21


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _onMorphoFlashLoan; // STORAGE[0x5]
address _setOwner; // STORAGE[0x0] bytes 0 to 19
address _lockAcquired; // STORAGE[0x1] bytes 0 to 19
address stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
address owner_3_0_19; // STORAGE[0x3] bytes 0 to 19
address stor_4_0_19; // STORAGE[0x4] bytes 0 to 19



function 0x1354(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    v0, v1, v1, /* address */ v2, /* address */ v3, /* uint24 */ v4, /* uint256 */ v5 = stor_4_0_19.poolIdToPoolKey(varg3).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 192);
    require(v1 == address(v1));
    require(v1 == address(v1));
    require(MEM[MEM[64] + 64] == address(MEM[MEM[64] + 64]));
    require(MEM[MEM[64] + 96] == address(MEM[MEM[64] + 96]));
    require(v4 == uint24(v4));
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    if (!varg2) {
    }
    v6 = v7 = 0;
    if (varg1 < v7) {
        if (varg2) {
            v8 = v9 = 0x38ae(1, 0x1000276a3);
        } else {
            v8 = v10 = 0x388e(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
        }
        v11 = new uint256[](0);
        v12, v13 = stor_4_0_19.swap(address(v1), address(v1), address(MEM[MEM[64] + 64]), address(stor_4_0_19), uint24(v4), MEM[MEM[64] + 160], bool(varg2), varg1, address(v8), v11).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (varg2) {
            v6 = v14 = uint128(int128(v13));
        } else {
            v6 = v15 = uint128(v13 >> 128);
        }
        require(bool(_lockAcquired.code.size));
        v16 = _lockAcquired.take(address(v1), this, v6).gas(msg.gas);
        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (varg0.length > 1) {
            0xcf3(v6, varg0);
        }
        v17 = 0x37dd(varg1);
        0x2c26(v17, v1, _lockAcquired);
    }
    return v6;
}

function 0x16d2(uint256 varg0, uint256 varg1) private { 
    require(varg1.length > 0, Error('No steps'));
    require(0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    stor_4_0_19 = MEM[varg1[0] + 96];
    v0 = address(MEM[varg1[0] + 32]) < address(MEM[varg1[0] + 64]);
    if (uint8(MEM[varg1[0]])) {
        v1 = v2 = 1 == uint8(MEM[varg1[0]]);
        if (1 != uint8(MEM[varg1[0]])) {
            v1 = v3 = 10 == uint8(MEM[varg1[0]]);
        }
        if (!v1) {
            if (uint8(MEM[varg1[0]]) - 2) {
                if (uint8(MEM[varg1[0]]) - 3) {
                    v4 = v5 = 5 == uint8(MEM[varg1[0]]);
                    if (5 != uint8(MEM[varg1[0]])) {
                        v4 = v6 = 6 == uint8(MEM[varg1[0]]);
                    }
                    if (!v4) {
                        if (uint8(MEM[varg1[0]]) - 20) {
                            if (uint8(MEM[varg1[0]]) - 21) {
                                if (uint8(MEM[varg1[0]]) - 22) {
                                    if (uint8(MEM[varg1[0]]) - 23) {
                                        require(!(uint8(MEM[varg1[0]]) - 24), Error('Unsupported'));
                                        v7 = v8 = 0x2b42(varg0, varg1[0]);
                                    } else {
                                        v7 = v9 = 0x297b(varg0, varg1[0]);
                                    }
                                } else {
                                    v7 = v10 = 0x2825(varg0, varg1[0]);
                                }
                            } else {
                                v7 = v11 = 0x276f(varg0, varg1[0]);
                            }
                        } else {
                            v7 = v12 = 0x25ca(varg0, varg1[0]);
                        }
                    } else {
                        v7 = v13 = 0x22f6(varg0, varg1[0]);
                    }
                    if (varg1.length > 1) {
                        0xcf3(v7, varg1);
                    }
                } else {
                    v14 = 0x220d(varg1, MEM[192 + varg1[0]], varg0, v0, MEM[96 + varg1[0]]);
                }
            } else {
                v15 = 0x20d2(varg1, MEM[192 + varg1[0]], varg0, v0, MEM[96 + varg1[0]]);
            }
        } else {
            v16 = 0x1f80(varg1, varg0, v0, MEM[96 + varg1[0]]);
        }
    } else {
        v17 = address(MEM[96 + varg1[0]]).getReserves().gas(msg.gas);
        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v18, v19, v20 = 0x3958(MEM[64], MEM[64] + RETURNDATASIZE());
        if (v0) {
            v21 = _SafeMul(varg0, MEM[varg1[0] + 128]);
            v22 = _SafeMul(10000, uint112(v20));
            v23 = _SafeAdd(v22, v21);
            v24 = _SafeMul(varg0, MEM[128 + varg1[0]]);
            v25 = _SafeMul(v24, uint112(v19));
            v26 = v27 = _SafeDiv(v25, v23);
        } else {
            v28 = _SafeMul(varg0, MEM[varg1[0] + 128]);
            v29 = _SafeMul(10000, uint112(v19));
            v30 = _SafeAdd(v29, v28);
            v31 = _SafeMul(varg0, MEM[128 + varg1[0]]);
            v32 = _SafeMul(v31, uint112(v20));
            v26 = v33 = _SafeDiv(v32, v30);
        }
        v34 = new struct(4);
        v34.word0 = bool(v0);
        v34.word1 = address(MEM[32 + varg1[0]]);
        v34.word2 = varg0;
        v34.word3 = varg1;
        v35 = 0x39a4(32 + MEM[64], v34);
        if (address(MEM[varg1[0] + 32]) >= address(MEM[varg1[0] + 64])) {
            v36 = new uint256[](v35 - MEM[64] - 32);
            v37 = v38 = 0;
            while (v37 < v35 - MEM[64] - 32) {
                MEM[v37 + v36.data] = MEM[v37 + (MEM[64] + 32)];
                v37 += 32;
            }
            MEM[v35 - MEM[64] - 32 + v36.data] = 0;
            require(bool((address(MEM[96 + varg1[0]])).code.size));
            v39 = address(MEM[96 + varg1[0]]).swap(v26, 0, address(this), v36).gas(msg.gas);
            require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        } else {
            v40 = new uint256[](v35 - MEM[64] - 32);
            v41 = v42 = 0;
            while (v41 < v35 - MEM[64] - 32) {
                MEM[v41 + v40.data] = MEM[v41 + (MEM[64] + 32)];
                v41 += 32;
            }
            MEM[v35 - MEM[64] - 32 + v40.data] = 0;
            require(bool((address(MEM[96 + varg1[0]])).code.size));
            v43 = address(MEM[96 + varg1[0]]).swap(0, v26, address(this), v40).gas(msg.gas);
            require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    }
    return ;
}

function depositEth(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _setOwner, Error(111));
    require(this.balance >= varg0, Error(100));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(this == sender, Error('sender not this'));
    v1 = 4 + data + 32 + msg.data[4 + data];
    require(v1 - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(v1 - (4 + data + 32 + data.word1) >= 128);
    v2 = new struct(4);
    require(!((v2 + 128 > uint64.max) | (v2 + 128 < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] == bool(msg.data[4 + data + 32 + data.word1]));
    v2.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v2.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v2.word2 = msg.data[64 + (4 + data + 32 + data.word1)];
    require(msg.data[4 + data + 32 + data.word1 + 96] <= uint64.max);
    v3 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 96];
    require(v3 + 31 < v1);
    require(msg.data[v3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new uint256[](msg.data[v3]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v3] << 5) + 32 + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v3] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v6 = v4.data;
    require(32 + (v3 + (msg.data[v3] << 8)) <= v1);
    v7 = v8 = v3 + 32;
    while (v7 < 32 + (v3 + (msg.data[v3] << 8))) {
        require(v1 - v7 >= uint8.max + 1);
        v9 = new struct(8);
        require(!((v9 + (uint8.max + 1) < v9) | (v9 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v7] == uint8(msg.data[v7]));
        v9.word0 = msg.data[v7];
        require(msg.data[v7 + 32] == address(msg.data[v7 + 32]));
        v9.word1 = msg.data[v7 + 32];
        require(msg.data[64 + v7] == address(msg.data[64 + v7]));
        v9.word2 = msg.data[64 + v7];
        require(msg.data[96 + v7] == address(msg.data[96 + v7]));
        v9.word3 = msg.data[96 + v7];
        v9.word4 = msg.data[128 + v7];
        require(msg.data[v7 + 160] == int24(msg.data[v7 + 160]));
        v9.word5 = msg.data[v7 + 160];
        v9.word6 = msg.data[192 + v7];
        v9.word7 = msg.data[v7 + 224];
        MEM[v5] = v9;
        v5 += 32;
        v7 += uint8.max + 1;
    }
    v2.word3 = v4;
    if (amount0 <= 0) {
    }
    if (v10.length > 1) {
        v11 = v2.word3;
        0xcf3(v12, v2.word3);
    }
    0x1b18(v2.word2, msg.sender, v2.word1);
}

function 0x1b18(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.transfer(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        v4 = v8.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v9 = !MEM[v6];
        if (MEM[v6]) {
            require(v5 + MEM[v6] - v5 >= 32);
            v2 = MEM[v5];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x1c0c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = address(MEM[96 + varg3]).getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1, v2, v3 = 0x3958(MEM[64], MEM[64] + RETURNDATASIZE());
    if (!varg0) {
        0x1b18(varg2, MEM[96 + varg3], MEM[32 + varg3]);
    }
    if (address(MEM[32 + varg3]) >= address(MEM[64 + varg3])) {
        v4, /* uint256 */ v5 = address(MEM[varg3 + 32]).balanceOf(address(MEM[varg3 + 96])).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v6 = _SafeSub(v5, uint112(v2));
        v7 = _SafeMul(v6, MEM[128 + varg3]);
        v8 = _SafeMul(10000, uint112(v2));
        v9 = _SafeAdd(v8, v7);
        v10 = _SafeMul(v6, MEM[128 + varg3]);
        v11 = _SafeMul(v10, uint112(v3));
        v12 = v13 = _SafeDiv(v11, v9);
    } else {
        v14, /* uint256 */ v15 = address(MEM[varg3 + 32]).balanceOf(address(MEM[varg3 + 96])).gas(msg.gas);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v16 = _SafeSub(v15, uint112(v3));
        v17 = _SafeMul(v16, MEM[128 + varg3]);
        v18 = _SafeMul(10000, uint112(v3));
        v19 = _SafeAdd(v18, v17);
        v20 = _SafeMul(v16, MEM[128 + varg3]);
        v21 = _SafeMul(v20, uint112(v2));
        v12 = v22 = _SafeDiv(v21, v19);
    }
    if (!address(varg1)) {
        varg1 = v23 = this;
    }
    if (address(MEM[32 + varg3]) >= address(MEM[64 + varg3])) {
        v24 = new uint256[](0);
        v25 = v26 = 0;
        while (v25 < 0) {
            MEM[v25 + v24.data] = MEM[v25 + (MEM[64] + 32)];
            v25 += 32;
        }
        MEM[v24.data] = 0;
        require(bool((address(MEM[varg3 + 96])).code.size));
        v27 = address(MEM[varg3 + 96]).swap(v12, 0, address(varg1), v24).gas(msg.gas);
        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v28 = new uint256[](0);
        v29 = v30 = 0;
        while (v29 < 0) {
            MEM[v29 + v28.data] = MEM[v29 + (MEM[64] + 32)];
            v29 += 32;
        }
        MEM[v28.data] = 0;
        require(bool((address(MEM[varg3 + 96])).code.size));
        v31 = address(MEM[varg3 + 96]).swap(0, v12, address(varg1), v28).gas(msg.gas);
        require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    return v12;
}

function setOwner(address _owner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _setOwner, Error(111));
    _setOwner = _owner;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    0x3e2(data.length, data.data, amount1Delta, amount0Delta);
}

function 0x1f80(uint256 varg0, uint256 varg1, uint256 varg2, address varg3) private { 
    stor_4_0_19 = varg3;
    if (varg2) {
        v0 = v1 = 0x38ae(1, 0x1000276a3);
    } else {
        v0 = v2 = 0x388e(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
    }
    v3 = new struct(4);
    v3.word0 = bool(varg2);
    require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v4 = varg0.data;
    v3.word1 = address(MEM[32 + varg0[0]]);
    v3.word2 = 0;
    v3.word3 = varg0;
    v5 = 0x39a4(32 + MEM[64], v3);
    v6 = new uint256[](v5 - MEM[64] - 32);
    v7 = v8 = 0;
    while (v7 < v5 - MEM[64] - 32) {
        MEM[v7 + v6.data] = MEM[v7 + (MEM[64] + 32)];
        v7 += 32;
    }
    MEM[v5 - MEM[64] - 32 + v6.data] = 0;
    v9, /* uint256 */ v10, /* uint256 */ v10 = varg3.swap(address(this), bool(varg2), varg1, address(v0), v6).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (!varg2) {
    }
    v11 = 0x37dd(v10);
    return v11;
}

function onMorphoFlashLoan(uint256 varg0, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_onMorphoFlashLoan[tx.origin], Error(101));
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + data.word1 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](msg.data[4 + data + 32 + data.word1]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[4 + data + 32 + data.word1] << 5) + 32 + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[4 + data + 32 + data.word1] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(32 + (4 + data + 32 + data.word1 + (msg.data[4 + data + 32 + data.word1] << 8)) <= 4 + data + 32 + msg.data[4 + data]);
    v4 = v5 = 4 + data + 32 + data.word1 + 32;
    while (v4 < 32 + (4 + data + 32 + data.word1 + (msg.data[4 + data + 32 + data.word1] << 8))) {
        require(4 + data + 32 + msg.data[4 + data] - v4 >= uint8.max + 1);
        v6 = new struct(8);
        require(!((v6 + (uint8.max + 1) < v6) | (v6 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v4] == uint8(msg.data[v4]));
        v6.word0 = msg.data[v4];
        require(msg.data[v4 + 32] == address(msg.data[v4 + 32]));
        v6.word1 = msg.data[v4 + 32];
        require(msg.data[64 + v4] == address(msg.data[64 + v4]));
        v6.word2 = msg.data[64 + v4];
        require(msg.data[96 + v4] == address(msg.data[96 + v4]));
        v6.word3 = msg.data[96 + v4];
        v6.word4 = msg.data[128 + v4];
        require(msg.data[v4 + 160] == int24(msg.data[v4 + 160]));
        v6.word5 = msg.data[v4 + 160];
        v6.word6 = msg.data[192 + v4];
        v6.word7 = msg.data[v4 + 224];
        MEM[v2] = v6;
        v2 += 32;
        v4 += uint8.max + 1;
    }
    require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v7 = v1.data;
    require(msg.sender == address(MEM[96 + v1[0]]), Error('Unauthorized'));
    if (v1.length > 1) {
        0xcf3(varg0, v1);
    }
    require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v8 = v1.data;
    v9 = v10 = 0;
    while (v9 < 68) {
        MEM[v9 + MEM[64]] = MEM[v9 + (MEM[64] + 32)];
        v9 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v11 = v12, /* uint256 */ v13, /* uint256 */ v14 = address(MEM[32 + v1[0]]).approve(msg.sender, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v15 = v16 = 96;
    } else {
        v15 = v17 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
    }
    if (v12) {
        v11 = v18 = !MEM[v15];
        if (MEM[v15]) {
            require(v14 + MEM[v15] - v14 >= 32);
            v11 = MEM[v14];
            require(v11 == bool(v11));
        }
    }
    require(v11, Error('Approve failed'));
}

function 0x20d2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    if (msg.sender - owner_3_0_19) {
        stor_4_0_19 = varg4;
        v0 = new struct(5);
        v0.word0 = bool(varg3);
        v1 = 0x37dd(varg2);
        v0.word1 = v1;
        v0.word2 = varg1;
        v0.word3 = uint8(2);
        v0.word4 = varg0;
        v2 = 0x3a78(32 + MEM[64], v0);
        MEM[v2] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
        MEM[4 + v2] = 32;
        MEM[4 + v2 + 32] = v2 - MEM[64] - 32;
        v3 = v4 = 0;
        while (v3 < v2 - MEM[64] - 32) {
            MEM[v3 + (4 + v2 + 32 + 32)] = MEM[v3 + (MEM[64] + 32)];
            v3 += 32;
        }
        MEM[v2 - MEM[64] - 32 + (4 + v2 + 32 + 32)] = 0;
        v5, /* uint256 */ v6 = owner_3_0_19.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v20d20x2163_0x0 - MEM[64] - 32 + 4 + v20d20x2163_0x0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(MEM[MEM[64]] <= uint64.max);
        require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
        require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](MEM[MEM[64] + MEM[MEM[64]]]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
        v8 = v9 = 0;
        while (v8 < MEM[MEM[64] + MEM[MEM[64]]]) {
            v7[v8] = MEM[v8 + (MEM[64] + MEM[MEM[64]] + 32)];
            v8 += 32;
        }
        v7[MEM[MEM[64] + MEM[MEM[64]]]] = 0;
        require(v7.data + v7.length - v7.data >= 32);
        v10 = MEM[v7.data];
    } else {
        v11 = 0x37dd(varg2);
        v10 = v12 = 0xff1(varg0, v11, varg3, varg1);
    }
    return v10;
}

function 0x220d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    if (msg.sender - _lockAcquired) {
        stor_4_0_19 = varg4;
        v0 = new struct(5);
        v0.word0 = bool(varg3);
        v1 = 0x37dd(varg2);
        v0.word1 = v1;
        v0.word2 = varg1;
        v0.word3 = uint8(3);
        v0.word4 = varg0;
        v2 = 0x3a78(32 + MEM[64], v0);
        MEM[v2] = 0x8154831900000000000000000000000000000000000000000000000000000000;
        MEM[4 + v2] = 32;
        MEM[4 + v2 + 32] = v2 - MEM[64] - 32;
        v3 = v4 = 0;
        while (v3 < v2 - MEM[64] - 32) {
            MEM[v3 + (4 + v2 + 32 + 32)] = MEM[v3 + (MEM[64] + 32)];
            v3 += 32;
        }
        MEM[v2 - MEM[64] - 32 + (4 + v2 + 32 + 32)] = 0;
        v5, /* uint256 */ v6 = _lockAcquired.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v220d0x22b2_0x0 - MEM[64] - 32 + 4 + v220d0x22b2_0x0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(MEM[MEM[64]] <= uint64.max);
        require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
        require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](MEM[MEM[64] + MEM[MEM[64]]]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
        v8 = v9 = 0;
        while (v8 < MEM[MEM[64] + MEM[MEM[64]]]) {
            v7[v8] = MEM[v8 + (MEM[64] + MEM[MEM[64]] + 32)];
            v8 += 32;
        }
        v7[MEM[MEM[64] + MEM[MEM[64]]]] = 0;
        require(v7.data + v7.length - v7.data >= 32);
        v10 = MEM[v7.data];
    } else {
        stor_4_0_19 = varg4;
        v11 = 0x37dd(varg2);
        v10 = v12 = 0x1354(varg0, v11, varg3, varg1);
    }
    return v10;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    v0 = 0x5c1(rawData.length, rawData.data);
    v1 = new uint256[](MEM[v0]);
    v2 = v3 = 0;
    while (v2 < MEM[v0]) {
        MEM[v2 + v1.data] = MEM[v2 + (v0 + 32)];
        v2 += 32;
    }
    MEM[MEM[v0] + v1.data] = 0;
    return v1;
}

function 0x22f6(uint256 varg0, uint256 varg1) private { 
    v0 = MEM[varg1 + 128];
    v1, /* uint256 */ v2 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x2dcd(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v3 = v4 = 0;
    if (!(uint8(MEM[varg1]) - uint8(5))) {
        v5 = v6 = 0;
        while (v5 < 132) {
            MEM[v5 + MEM[64]] = MEM[v5 + (MEM[64] + 32)];
            v5 += 32;
        }
        MEM[132 + MEM[64]] = 0;
        v3 = v7, /* uint256 */ v8 = address(MEM[varg1 + 96]).exchange(v0, 0x3df0212400000000000000000000000000000000000000000000000000000000 | uint224(v0), int24(MEM[varg1 + 160]), varg0, MEM[varg1 + 224]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v9 = new bytes[](RETURNDATASIZE());
            v8 = v9.data;
            RETURNDATACOPY(v8, 0, RETURNDATASIZE());
        }
    }
    if (!(uint8(MEM[varg1]) - 6)) {
        v10 = v11 = 0;
        while (v10 < 132) {
            MEM[v10 + MEM[64]] = MEM[v10 + (MEM[64] + 32)];
            v10 += 32;
        }
        MEM[132 + MEM[64]] = 0;
        v3 = v12, /* uint256 */ v13 = address(MEM[varg1 + 96]).setMetaGold(v0, 0x5b41b90800000000000000000000000000000000000000000000000000000000 | uint224(v0), int24(MEM[varg1 + 160]), varg0, MEM[varg1 + 224]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v14 = new bytes[](RETURNDATASIZE());
            v13 = v14.data;
            RETURNDATACOPY(v13, 0, RETURNDATASIZE());
        }
    }
    require(v3, Error('Curve Failed'));
    v15, /* uint256 */ v16 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v17 = _SafeSub(v16, v2);
    return v17;
}

function setOp(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _setOwner, Error(111));
    _onMorphoFlashLoan[account] = 1;
}

function 0x25ca(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x2dcd(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v2, /* uint256 */ v3 = address(MEM[varg1 + 96]).tradeBySourceAmount(address(MEM[varg1 + 32]), address(MEM[varg1 + 64]), varg0, MEM[varg1 + 224], block.timestamp, this).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v4, /* uint256 */ v5 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v5, v1);
    return v6;
}

function 0x276f(uint256 varg0, uint256 varg1) private { 
    0x2dcd(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v0, /* uint256 */ v1, /* uint256 */ v2 = address(MEM[varg1 + 96]).swapExactAmountIn(address(MEM[varg1 + 32]), varg0, address(MEM[varg1 + 64]), MEM[varg1 + 224], uint256.max).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    return v1;
}

function lockAcquired(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.sender == _lockAcquired, Error('Unauthorized'));
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 32);
    require(rawData.word1 <= uint64.max);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32 + rawData.word1) >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 < v1) | (v1 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + rawData + 32 + rawData.word1] == bool(msg.data[4 + rawData + 32 + rawData.word1]));
    v1.word0 = msg.data[4 + rawData + 32 + rawData.word1];
    v1.word1 = msg.data[4 + rawData + 32 + rawData.word1 + 32];
    v1.word2 = msg.data[4 + rawData + 32 + rawData.word1 + 64];
    require(msg.data[4 + rawData + 32 + rawData.word1 + 96] == uint8(msg.data[4 + rawData + 32 + rawData.word1 + 96]));
    v1.word3 = msg.data[4 + rawData + 32 + rawData.word1 + 96];
    require(msg.data[4 + rawData + 32 + rawData.word1 + 128] <= uint64.max);
    v2 = 4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 128];
    require(v2 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v2] << 5) + 32 + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v2] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(32 + (v2 + (msg.data[v2] << 8)) <= 4 + rawData + 32 + msg.data[4 + rawData]);
    v6 = v7 = v2 + 32;
    while (v6 < 32 + (v2 + (msg.data[v2] << 8))) {
        require(4 + rawData + 32 + msg.data[4 + rawData] - v6 >= uint8.max + 1);
        v8 = new struct(8);
        require(!((v8 + (uint8.max + 1) < v8) | (v8 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v6] == uint8(msg.data[v6]));
        v8.word0 = msg.data[v6];
        require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
        v8.word1 = msg.data[v6 + 32];
        require(msg.data[64 + v6] == address(msg.data[64 + v6]));
        v8.word2 = msg.data[64 + v6];
        require(msg.data[96 + v6] == address(msg.data[96 + v6]));
        v8.word3 = msg.data[96 + v6];
        v8.word4 = msg.data[128 + v6];
        require(msg.data[v6 + 160] == int24(msg.data[v6 + 160]));
        v8.word5 = msg.data[v6 + 160];
        v8.word6 = msg.data[192 + v6];
        v8.word7 = msg.data[v6 + 224];
        MEM[v4] = v8;
        v4 += 32;
        v6 += uint8.max + 1;
    }
    v1.word4 = v3;
    v9 = v1.word4;
    v10 = 0x1354(v1.word4, v1.word1, v1.word0, v1.word2);
    MEM[32 + MEM[64]] = v10;
    MEM[MEM[64]] = 32;
}

function 0x2825(uint256 varg0, uint256 varg1) private { 
    0x2dcd(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v0 = new struct(6);
    v0.word0 = MEM[192 + varg1];
    require(0 <= 1, Panic(33)); // failed convertion to enum type
    v0.word1 = 0;
    v0.word2 = address(MEM[32 + varg1]);
    v0.word3 = address(MEM[64 + varg1]);
    v0.word4 = varg0;
    require(0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new struct(1);
    v1.word0 = 0;
    if (0) {
        CALLDATACOPY(v1.data, msg.data.length, 0);
        v2 = v1.data;
    }
    v0.word5 = v1;
    v3 = new uint256[](v0.word0);
    require(v0.word1 < 2, Panic(33)); // failed convertion to enum type
    MEM[v3.data] = v0.word1;
    v4 = v5 = 0;
    while (v4 < v6.length) {
        MEM[v4 + (4 + MEM[64] + 416 + 32)] = v6[v4];
        v4 += 32;
    }
    MEM[v6.length + (4 + MEM[64] + 416 + 32)] = 0;
    v7, /* uint256 */ v8 = address(MEM[varg1 + 96]).swap(v3, address(this), False, address(this), False, MEM[varg1 + 224], block.timestamp, v9, v9, address(v0.word2), address(v0.word3), v0.word4, 192, v6.length).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v8;
}

function 0x297b(uint256 varg0, uint256 varg1) private { 
    v0 = address(MEM[96 + varg1])._BASE_TOKEN_().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = 0x3c3c(MEM[64], MEM[64] + RETURNDATASIZE());
    0x1b18(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    if (address(MEM[32 + varg1]) - address(v1)) {
        v2, /* uint256 */ v3 = address(MEM[varg1 + 96]).sellQuote(this).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v4, /* uint256 */ v3 = address(MEM[varg1 + 96]).sellBase(this).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    require(v3 >= MEM[224 + varg1], Error('GSP: Slippage'));
    return v3;
}

function 0xe48454ae(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg0.length << 5) + 32 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg0.length << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + varg0 + (varg0.length << 8)) <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 32 + (4 + varg0 + (varg0.length << 8))) {
        require(msg.data.length - v3 >= uint8.max + 1);
        v5 = new struct(8);
        require(!((v5 + (uint8.max + 1) < v5) | (v5 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v3] == uint8(msg.data[v3]));
        v5.word0 = msg.data[v3];
        require(msg.data[v3 + 32] == address(msg.data[v3 + 32]));
        v5.word1 = msg.data[v3 + 32];
        require(msg.data[64 + v3] == address(msg.data[64 + v3]));
        v5.word2 = msg.data[64 + v3];
        require(msg.data[96 + v3] == address(msg.data[96 + v3]));
        v5.word3 = msg.data[96 + v3];
        v5.word4 = msg.data[128 + v3];
        require(msg.data[v3 + 160] == int24(msg.data[v3 + 160]));
        v5.word5 = msg.data[v3 + 160];
        v5.word6 = msg.data[192 + v3];
        v5.word7 = msg.data[v3 + 224];
        MEM[v1] = v5;
        v1 += 32;
        v3 += uint8.max + 1;
    }
    require(_onMorphoFlashLoan[msg.sender], Error(112));
    v6 = v7 = v0.length > 0;
    if (v7) {
        require(0 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v8 = v0.data;
        v6 = uint8(MEM[v0[0]]) == uint8(99);
    }
    if (!v6) {
        0x16d2(varg1, v0);
    } else {
        MEM[32 + MEM[64]] = 32;
        MEM[32 + MEM[64] + 32] = v0.length;
        v9 = v10 = 32 + MEM[64] + 32 + 32;
        v11 = v12 = v0.data;
        v13 = 0;
        while (v13 < v0.length) {
            MEM[v9] = uint8(MEM[MEM[v11]]);
            MEM[v9 + 32] = address(MEM[MEM[v11] + 32]);
            MEM[v9 + 64] = address(MEM[MEM[v11] + 64]);
            MEM[v9 + 96] = address(MEM[MEM[v11] + 96]);
            MEM[v9 + 128] = MEM[MEM[v11] + 128];
            MEM[v9 + 160] = int24(MEM[MEM[v11] + 160]);
            MEM[v9 + 192] = MEM[192 + MEM[v11]];
            MEM[v9 + 224] = MEM[224 + MEM[v11]];
            v9 = v9 + (uint8.max + 1);
            v11 += 32;
            v13 += 1;
        }
        require(0 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v14 = v0.data;
        require(0 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v15 = v0.data;
        v16 = new uint256[](v9 - MEM[64] - 32);
        v17 = v18 = 0;
        while (v17 < v9 - MEM[64] - 32) {
            MEM[v17 + v16.data] = MEM[v17 + (MEM[64] + 32)];
            v17 += 32;
        }
        MEM[v9 - MEM[64] - 32 + v16.data] = 0;
        require(bool((address(MEM[96 + v0[0]])).code.size));
        v19 = address(MEM[96 + v0[0]]).flashLoan(address(MEM[32 + v0[0]]), varg1, v16).gas(msg.gas);
        require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v20 = _SafeSub(v0.length, 1);
    require(v20 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v21 = v22 = MEM[64 + v0[v20]];
    if (!(address(v22) - address(0x0))) {
        v21 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
    v23, /* uint256 */ v24 = address(v21).balanceOf(this).gas(msg.gas);
    require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v24 > 0, Error('No balance'));
    if (address(v21) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e) {
        0x1b18(v24, _setOwner, v21);
    } else {
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v24).gas(msg.gas);
        require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v26 = _SafeSub(msg.gas, msg.gas);
        v27 = _SafeAdd(varg3, v26);
        v28 = _SafeMul(v27, tx.gasprice);
        require(v24 > v28, Error(20039));
        v29 = _SafeSub(v24, v28);
        v30 = _SafeMul(v29, varg2);
        v31 = _SafeDiv(v30, 100);
        v32 = _SafeSub(v24, v31);
        if (v32) {
            v33, /* uint256 */ v34 = _setOwner.call().value(v32).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v35 = new bytes[](RETURNDATASIZE());
                v34 = v35.data;
                RETURNDATACOPY(v34, 0, RETURNDATASIZE());
            }
            require(v33, Error('send On failed'));
        }
        if (v31) {
            v36, /* uint256 */ v37 = block.coinbase.call().value(v31).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v38 = new bytes[](RETURNDATASIZE());
                v37 = v38.data;
                RETURNDATACOPY(v37, 0, RETURNDATASIZE());
            }
            require(v36, Error('bribe failed'));
        }
    }
}

function 0x2b42(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x2dcd(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v2, /* uint256 */ v3 = address(MEM[varg1 + 96]).swap(address(MEM[varg1 + 32]), address(MEM[varg1 + 64]), varg0, MEM[varg1 + 224], this).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v4, /* uint256 */ v5 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v5, v1);
    return v6;
}

function 0x2c26(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(bool((address(varg2)).code.size));
    v0 = address(varg2).sync(address(varg1)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = v2 = !address(varg1);
    if (address(varg1)) {
        v1 = v3 = !address(varg1);
    }
    if (!v1) {
        v4 = v5 = 11628;
        0x1b18(varg0, varg2, varg1);
        MEM[MEM[64] + 68] = varg0;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(varg2));
        v6, /* uint256 */ v7 = address(varg2).settle().gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v8 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg0).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v9, /* uint256 */ v10 = address(varg2).settle().value(varg0).gas(msg.gas);
        require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    return ;
}

function 0x2dcd(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4 = varg2.approve(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v5 = v6 = 96;
    } else {
        v5 = v7 = new bytes[](RETURNDATASIZE());
        v3 = v7.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v8 = v9 = !v2;
    if (v2) {
        v8 = v10 = bool(MEM[v5]);
        if (MEM[v5]) {
            require(v4 + MEM[v5] - v4 >= 32);
            require(MEM[v4] == bool(MEM[v4]));
            v8 = v11 = !MEM[v4];
        }
    }
    if (v8) {
        v12 = v13 = 0;
        while (v12 < 68) {
            MEM[v12 + MEM[64]] = MEM[v12 + (MEM[64] + 32)];
            v12 += 32;
        }
        MEM[68 + MEM[64]] = 0;
        v14, /* uint256 */ v15 = varg2.approve(varg1, 0).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v16 = new bytes[](RETURNDATASIZE());
            v15 = v16.data;
            RETURNDATACOPY(v15, 0, RETURNDATASIZE());
        }
        v17 = v18 = 0;
        while (v17 < 68) {
            MEM[v17 + MEM[64]] = MEM[v17 + (MEM[64] + 32)];
            v17 += 32;
        }
        MEM[68 + MEM[64]] = 0;
        v19 = v20, /* uint256 */ v21, /* uint256 */ v22 = varg2.approve(varg1, varg0).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v23 = v24 = 96;
        } else {
            v23 = v25 = new bytes[](RETURNDATASIZE());
            v21 = v25.data;
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
        }
        if (v20) {
            v19 = v26 = !MEM[v23];
            if (MEM[v23]) {
                require(v22 + MEM[v23] - v22 >= 32);
                v19 = MEM[v22];
                require(v19 == bool(v19));
            }
        }
        require(v19, Error(21313));
    }
    return ;
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

function 0x37dd(uint256 varg0) private { 
    require(varg0 + int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x388e(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x38ae(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x3958(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(MEM[varg0] == uint112(MEM[varg0]));
    require(MEM[varg0 + 32] == uint112(MEM[varg0 + 32]));
    require(MEM[varg0 + 64] == uint32(MEM[varg0 + 64]));
    return MEM[varg0 + 64], MEM[varg0 + 32], MEM[varg0];
}

function 0x39a4(uint256 varg0, struct(4) varg1) private { 
    MEM[varg0] = 32;
    MEM[varg0 + 32] = bool(varg1.word0);
    MEM[varg0 + 64] = address(varg1.word1);
    MEM[varg0 + 96] = varg1.word2;
    MEM[varg0 + 128] = 128;
    MEM[varg0 + 160] = v0.length;
    v1 = v2 = varg0 + 160 + 32;
    v3 = v4 = v0.data;
    v5 = 0;
    while (v5 < v0.length) {
        MEM[v1] = uint8(MEM[MEM[v3]]);
        MEM[v1 + 32] = address(MEM[MEM[v3] + 32]);
        MEM[v1 + 64] = address(MEM[MEM[v3] + 64]);
        MEM[v1 + 96] = address(MEM[MEM[v3] + 96]);
        MEM[v1 + 128] = MEM[MEM[v3] + 128];
        MEM[v1 + 160] = int24(MEM[MEM[v3] + 160]);
        MEM[v1 + 192] = MEM[192 + MEM[v3]];
        MEM[v1 + 224] = MEM[224 + MEM[v3]];
        v1 = v1 + (uint8.max + 1);
        v3 += 32;
        v5 += 1;
    }
    return v1;
}

function 0x3a78(uint256 varg0, struct(5) varg1) private { 
    MEM[varg0] = 32;
    MEM[varg0 + 32] = bool(varg1.word0);
    MEM[varg0 + 64] = varg1.word1;
    MEM[varg0 + 96] = varg1.word2;
    MEM[varg0 + 128] = uint8(varg1.word3);
    MEM[varg0 + 160] = 160;
    MEM[varg0 + 192] = v0.length;
    v1 = v2 = varg0 + 192 + 32;
    v3 = v4 = v0.data;
    v5 = 0;
    while (v5 < v0.length) {
        MEM[v1] = uint8(MEM[MEM[v3]]);
        MEM[v1 + 32] = address(MEM[MEM[v3] + 32]);
        MEM[v1 + 64] = address(MEM[MEM[v3] + 64]);
        MEM[v1 + 96] = address(MEM[MEM[v3] + 96]);
        MEM[v1 + 128] = MEM[MEM[v3] + 128];
        MEM[v1 + 160] = int24(MEM[MEM[v3] + 160]);
        MEM[v1 + 192] = MEM[192 + MEM[v3]];
        MEM[v1 + 224] = MEM[224 + MEM[v3]];
        v1 = v1 + (uint8.max + 1);
        v3 += 32;
        v5 += 1;
    }
    return v1;
}

function 0x3c3c(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] == address(MEM[varg0]));
    return MEM[varg0];
}

function 0x3e2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(_onMorphoFlashLoan[tx.origin], Error(101));
    v0 = varg1 + varg0;
    require(v0 - varg1 >= 32);
    require(msg.data[varg1] <= uint64.max);
    v1 = varg1 + msg.data[varg1];
    require(v0 - v1 >= 128);
    v2 = new struct(4);
    require(!((v2 + 128 > uint64.max) | (v2 + 128 < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v1] == bool(msg.data[v1]));
    v2.word0 = msg.data[v1];
    require(msg.data[v1 + 32] == address(msg.data[v1 + 32]));
    v2.word1 = msg.data[v1 + 32];
    v2.word2 = msg.data[64 + v1];
    require(msg.data[v1 + 96] <= uint64.max);
    require(v1 + msg.data[v1 + 96] + 31 < v0);
    require(msg.data[v1 + msg.data[v1 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v1 + msg.data[v1 + 96]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v1 + msg.data[v1 + 96]] << 5) + 32 + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v1 + msg.data[v1 + 96]] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(32 + (v1 + msg.data[v1 + 96] + (msg.data[v1 + msg.data[v1 + 96]] << 8)) <= v0);
    v6 = v7 = v1 + msg.data[v1 + 96] + 32;
    while (v6 < 32 + (v1 + msg.data[v1 + 96] + (msg.data[v1 + msg.data[v1 + 96]] << 8))) {
        require(v0 - v6 >= uint8.max + 1);
        v8 = new struct(8);
        require(!((v8 + (uint8.max + 1) < v8) | (v8 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v6] == uint8(msg.data[v6]));
        v8.word0 = msg.data[v6];
        require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
        v8.word1 = msg.data[v6 + 32];
        require(msg.data[64 + v6] == address(msg.data[64 + v6]));
        v8.word2 = msg.data[64 + v6];
        require(msg.data[96 + v6] == address(msg.data[96 + v6]));
        v8.word3 = msg.data[96 + v6];
        v8.word4 = msg.data[128 + v6];
        require(msg.data[v6 + 160] == int24(msg.data[v6 + 160]));
        v8.word5 = msg.data[v6 + 160];
        v8.word6 = msg.data[192 + v6];
        v8.word7 = msg.data[v6 + 224];
        MEM[v4] = v8;
        v4 += 32;
        v6 += uint8.max + 1;
    }
    v2.word3 = v3;
    if (!v2.word0) {
    }
    if (v2.word0) {
        v9 = 0x37dd(varg2);
    } else {
        v9 = v10 = 0x37dd(varg3);
    }
    if (v11.length > 1) {
        v12 = v2.word3;
        0xcf3(v9, v2.word3);
    }
    0x1b18(varg2, msg.sender, v2.word1);
    return ;
}

function 0x5c1(uint256 varg0, uint256 varg1) private { 
    require(msg.sender == owner_3_0_19, Error('Unauthorized'));
    v0 = varg1 + varg0;
    require(v0 - varg1 >= 32);
    require(msg.data[varg1] <= uint64.max);
    v1 = varg1 + msg.data[varg1];
    require(v0 - v1 >= 160);
    v2 = new struct(5);
    require(!((v2 + 160 < v2) | (v2 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v1] == bool(msg.data[v1]));
    v2.word0 = msg.data[v1];
    v2.word1 = msg.data[v1 + 32];
    v2.word2 = msg.data[v1 + 64];
    require(msg.data[v1 + 96] == uint8(msg.data[v1 + 96]));
    v2.word3 = msg.data[v1 + 96];
    require(msg.data[v1 + 128] <= uint64.max);
    require(v1 + msg.data[v1 + 128] + 31 < v0);
    require(msg.data[v1 + msg.data[v1 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v1 + msg.data[v1 + 128]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v1 + msg.data[v1 + 128]] << 5) + 32 + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v1 + msg.data[v1 + 128]] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(32 + (v1 + msg.data[v1 + 128] + (msg.data[v1 + msg.data[v1 + 128]] << 8)) <= v0);
    v6 = v7 = v1 + msg.data[v1 + 128] + 32;
    while (v6 < 32 + (v1 + msg.data[v1 + 128] + (msg.data[v1 + msg.data[v1 + 128]] << 8))) {
        require(v0 - v6 >= uint8.max + 1);
        v8 = new struct(8);
        require(!((v8 + (uint8.max + 1) < v8) | (v8 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v6] == uint8(msg.data[v6]));
        v8.word0 = msg.data[v6];
        require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
        v8.word1 = msg.data[v6 + 32];
        require(msg.data[64 + v6] == address(msg.data[64 + v6]));
        v8.word2 = msg.data[64 + v6];
        require(msg.data[96 + v6] == address(msg.data[96 + v6]));
        v8.word3 = msg.data[96 + v6];
        v8.word4 = msg.data[128 + v6];
        require(msg.data[v6 + 160] == int24(msg.data[v6 + 160]));
        v8.word5 = msg.data[v6 + 160];
        v8.word6 = msg.data[192 + v6];
        v8.word7 = msg.data[v6 + 224];
        MEM[v4] = v8;
        v4 += 32;
        v6 += uint8.max + 1;
    }
    v2.word4 = v3;
    v9 = v2.word4;
    v10 = 0xff1(v2.word4, v2.word1, v2.word0, v2.word2);
    MEM[32 + MEM[64]] = v10;
    MEM[MEM[64]] = 32;
    return MEM[64];
}

function 0xcf3(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = new uint256[](v2);
    v3 = v2 = 1;
    v0 = v4 = 0;
    v5 = v6 = v1.data;
    while (v3) {
        v7 = new struct(8);
        v7.word0 = 0;
        v7.word1 = 0;
        v7.word2 = 0;
        v7.word3 = 0;
        v7.word4 = 0;
        v7.word5 = 0;
        v7.word6 = 0;
        v7.word7 = 0;
        MEM[v5] = v7;
        v3 = v3 - 1;
        v5 += 32;
    }
    v0 = v8 = 1;
    while (v0 < MEM[v0]) {
        require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = v9 = MEM[32 + (v0 << 5) + v0];
        v0 = v10 = address(MEM[32 + v9]) < address(MEM[64 + v9]);
        require(0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[v0 + 32] = v9;
        if (uint8(MEM[v9])) {
            v11 = v12 = 1 == uint8(MEM[v9]);
            if (1 != uint8(MEM[v9])) {
                v11 = v13 = 10 == uint8(MEM[v9]);
            }
            if (!v11) {
                if (uint8(MEM[v9]) - 2) {
                    if (uint8(MEM[v9]) - 3) {
                        v14 = v15 = 5 == uint8(MEM[v9]);
                        if (5 != uint8(MEM[v9])) {
                            v14 = v16 = 6 == uint8(MEM[v9]);
                        }
                        if (!v14) {
                            if (uint8(MEM[v9]) - 20) {
                                if (uint8(MEM[v9]) - 21) {
                                    if (uint8(MEM[v9]) - 22) {
                                        if (uint8(MEM[v9]) - 23) {
                                            require(!(uint8(MEM[v9]) - 24), Error('Unknown Flag'));
                                            v0 = v17 = 0x2b42(v0, v9);
                                            v18, /* uint256 */ v19 = address(MEM[v0 + 64]).balanceOf(this).gas(msg.gas);
                                            require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            v20 = v21 = MEM[96 + v0];
                                        } else {
                                            v0 = v22 = 0x297b(v0, v9);
                                            v0 = v23 = 0;
                                            v24 = address(MEM[96 + v0])._BASE_TOKEN_().gas(msg.gas);
                                            require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                            v25 = MEM[64];
                                            v0 = v26 = v25 + RETURNDATASIZE();
                                            v25 = v27 = 0x3c3c(v25, v26);
                                            v28 = v29 = MEM[96 + v0];
                                            require(v0 - v25 >= 32);
                                        }
                                    } else {
                                        v0 = v30 = 0x2825(v0, v9);
                                        v20 = v31 = MEM[96 + v0];
                                        // Unknown jump to Block 0x2dcd0xcf3. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    v0 = v32 = 0x276f(v0, v9);
                                    v20 = v33 = MEM[96 + v0];
                                }
                            } else {
                                v0 = v34 = 0x25ca(v0, v9);
                                v35, /* uint256 */ v36 = address(MEM[v0 + 64]).balanceOf(this).gas(msg.gas);
                                require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                v20 = v37 = MEM[96 + v0];
                            }
                        } else {
                            v0 = v38 = 0x22f6(v0, v9);
                            v39, /* uint256 */ v40 = address(MEM[v0 + 64]).balanceOf(this).gas(msg.gas);
                            require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            v20 = MEM[96 + v0];
                        }
                        MEM[MEM[64] + 68] = v0;
                        v41 = v42 = MEM[64];
                        MEM[v42] = 68;
                        MEM[v42 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(v20));
                    } else {
                        v0 = v43 = MEM[96 + v9];
                        v0 = v44 = MEM[192 + v9];
                        v0 = v45 = 0x220d(v0, v44, v0, v10, v43);
                        if (msg.sender - _lockAcquired) {
                            stor_4_0_19 = v0;
                            v46 = v47 = new struct(5);
                            v47.word0 = bool(v0);
                            v46 = v48 = 0;
                            v49 = 0x37dd(v0);
                            v47.word1 = v49;
                            v47.word2 = v0;
                            v47.word3 = uint8(3);
                            v47.word4 = v0;
                            v50 = v51 = 32 + MEM[64];
                            v50 = v52 = 0x3a78(v51, v47);
                            v53 = v54 = MEM[64];
                            MEM[v54] = v50 - v54 - 32;
                            MEM[v50] = 0x8154831900000000000000000000000000000000000000000000000000000000;
                            v55 = v56 = 4 + v50;
                            // Unknown jump to Block 0x324b0xcf3. Refer to 3-address code (TAC);
                        } else {
                            stor_4_0_19 = v0;
                            v0 = v57 = 8778;
                            v0 = v58 = 0x37dd(v0);
                            MEM[MEM[64]] = 0;
                            MEM[MEM[64] + 32] = 0;
                            MEM[MEM[64] + 64] = 0;
                            MEM[MEM[64] + 96] = 0;
                            MEM[MEM[64] + 128] = 0;
                            MEM[MEM[64] + 160] = 0;
                            v59 = stor_4_0_19.poolIdToPoolKey(v0).gas(msg.gas);
                            require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        }
                    }
                } else {
                    v0 = v60 = MEM[96 + v9];
                    v0 = v61 = MEM[192 + v9];
                    v0 = v62 = 0x20d2(v0, v61, v0, v10, v60);
                    if (msg.sender - owner_3_0_19) {
                        stor_4_0_19 = v0;
                        v46 = new struct(5);
                        v46.word0 = bool(v0);
                        v46 = v63 = 0;
                        v64 = 0x37dd(v0);
                        v46.word1 = v64;
                        v46.word2 = v0;
                        v46.word3 = uint8(2);
                        v46.word4 = v0;
                        v50 = 32 + MEM[64];
                        v50 = v65 = 0x3a78(v50, v46);
                        v53 = v66 = MEM[64];
                        MEM[v66] = v50 - v66 - 32;
                        MEM[v50] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                        v55 = 4 + v50;
                    } else {
                        v0 = v67 = 8436;
                        v0 = v68 = 0x37dd(v0);
                        MEM[MEM[64]] = 0;
                        MEM[MEM[64] + 32] = 0;
                        MEM[MEM[64] + 64] = 0;
                        MEM[MEM[64] + 96] = 0;
                        MEM[MEM[64] + 128] = 0;
                        v69 = stor_2_0_19.poolKeys(bytes25(v0)).gas(msg.gas);
                        require(bool(v69), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    }
                }
                require(v0 + int256.min, Panic(17)); // arithmetic overflow or underflow
                MEM[v55] = 32;
                v70 = v55 + 32;
                // Unknown jump to Block 0x32200xcf3. Refer to 3-address code (TAC);
                MEM[v50] = 32;
                MEM[v50 + 32] = bool(MEM[v46]);
                MEM[v50 + 64] = MEM[v46 + 32];
                MEM[v50 + 96] = MEM[v46 + 64];
                MEM[v50 + 128] = uint8(MEM[v46 + 96]);
                MEM[v50 + 160] = 160;
            } else {
                v0 = v71 = 3774;
                v0 = v72 = MEM[96 + v9];
                v0 = v73 = 0x1f80(v0, v0, v10, v72);
                stor_4_0_19 = v0;
                v0 = v74 = 0;
                if (v0) {
                    v75 = v76 = 0x38ae(1, 0x1000276a3);
                } else {
                    v75 = v77 = 0x388e(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                }
                v78 = 0;
                v78 = v79 = new struct(4);
                v79.word0 = bool(v0);
                require(0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v79.word1 = address(MEM[32 + MEM[32 + v0]]);
                v79.word2 = 0;
                v79.word3 = v0;
                v80 = 32 + MEM[64];
                v75 = v81 = 8242;
                v80 = v82 = 0x39a4(v80, v79);
                v53 = v83 = MEM[64];
                MEM[v83] = v80 - v83 - 32;
                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = address(this);
                MEM[4 + MEM[64] + 32] = bool(v0);
                MEM[4 + MEM[64] + 64] = v0;
                MEM[4 + MEM[64] + 96] = address(v75);
                MEM[4 + MEM[64] + 128] = 160;
                v70 = v84 = 4 + MEM[64] + 160;
                MEM[v80] = 32;
                MEM[v80 + 32] = bool(MEM[v78]);
                MEM[v80 + 64] = address(MEM[v78 + 32]);
                MEM[v80 + 96] = MEM[v78 + 64];
                MEM[v80 + 128] = 128;
            }
        } else {
            v0 = v85 = v0 > 1;
            if (v85) {
                v86 = _SafeSub(v0, 1);
                require(v86 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v0 = v87 = 0 == uint8(MEM[MEM[32 + (v86 << 5) + v0]]);
            }
            v0 = v88 = 0;
            v89 = _SafeAdd(1, v0);
            v90 = v91 = v89 < MEM[v0];
            if (v91) {
                v92 = _SafeAdd(1, v0);
                require(v92 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v90 = v93 = 0 == uint8(MEM[MEM[32 + (v92 << 5) + v0]]);
            }
            if (v90) {
                v94 = _SafeAdd(1, v0);
                require(v94 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v0 = v95 = MEM[96 + MEM[32 + (v94 << 5) + v0]];
            }
            v0 = v96 = 0x1c0c(v0, v0, v0, v9);
            v97 = address(MEM[96 + v0]).getReserves().gas(msg.gas);
            require(bool(v97), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v98 = MEM[64];
            v99 = v98 + RETURNDATASIZE();
            v100 = v101 = 7283;
            v98 = v102, v99 = v103, v100 = v104 = 0x3958(v98, v99);
            if (v0) {
                if (address(MEM[32 + v0]) >= address(MEM[64 + v0])) {
                    v105, /* uint256 */ v106 = address(MEM[v0 + 32]).balanceOf(address(MEM[v0 + 96])).gas(msg.gas);
                    require(bool(v105), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    v107 = _SafeSub(v106, uint112(v99));
                    v108 = _SafeMul(v107, MEM[128 + v0]);
                    v109 = _SafeMul(10000, uint112(v99));
                    v110 = _SafeAdd(v109, v108);
                    v111 = _SafeMul(v107, MEM[128 + v0]);
                    v112 = _SafeMul(v111, uint112(v100));
                    v113 = v114 = _SafeDiv(v112, v110);
                } else {
                    v115, /* uint256 */ v116 = address(MEM[v0 + 32]).balanceOf(address(MEM[v0 + 96])).gas(msg.gas);
                    require(bool(v115), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    v117 = _SafeSub(v116, uint112(v100));
                    v118 = _SafeMul(v117, MEM[128 + v0]);
                    v119 = _SafeMul(10000, uint112(v100));
                    v120 = _SafeAdd(v119, v118);
                    v121 = _SafeMul(v117, MEM[128 + v0]);
                    v122 = _SafeMul(v121, uint112(v99));
                    v113 = v123 = _SafeDiv(v122, v120);
                }
                if (!address(v0)) {
                    v0 = v124 = this;
                }
                if (address(MEM[32 + v0]) >= address(MEM[64 + v0])) {
                    v53 = v125 = MEM[64];
                    v113 = v126 = 0;
                    MEM[v125] = v126;
                    MEM[64] = v125 + 32;
                    MEM[v125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    v127 = v128 = v125 + 36;
                } else {
                    v53 = MEM[64];
                    v113 = 0;
                    MEM[v53] = v113;
                    MEM[64] = v53 + 32;
                    MEM[v53 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    v127 = v53 + 36;
                }
                MEM[v127] = v113;
                MEM[v127 + 32] = v113;
                MEM[v127 + 64] = address(v0);
                MEM[v127 + 96] = 128;
                v70 = v129 = v127 + 128;
            } else {
                v28 = MEM[96 + v0];
            }
            require(v99 - v98 >= 96);
        }
        MEM[MEM[64] + 68] = v0;
        v41 = MEM[64];
        MEM[v41] = 68;
        MEM[64] = MEM[64] + 100;
        MEM[v41 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v28));
        require(v0 + 1, Panic(17)); // arithmetic overflow or underflow
        v0 += 1;
        MEM[v70] = MEM[v53];
    }
    return ;
}

function 0xff1(uint256 varg0, uint256 varg1, uint256 varg2, bytes25 varg3) private { 
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    v0, /* address */ v1, /* address */ v1, /* uint24 */ v2, /* int24 */ v3, /* address */ v4 = stor_2_0_19.poolKeys(varg3).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
    require(v1 == address(v1));
    require(v1 == address(v1));
    require(v2 == uint24(v2));
    require(v3 == int24(v3));
    require(v4 == address(v4));
    MEM[64] = MEM[64] + 160;
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[64] = MEM[64] + 160;
    if (!varg2) {
    }
    v5 = v6 = 0;
    if (varg1 < v6) {
        if (varg2) {
            v7 = v8 = 0x38ae(1, 0x1000276a3);
        } else {
            v7 = v9 = 0x388e(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
        }
        v10 = new uint256[](0);
        v11, v12 = owner_3_0_19.swap(address(v1), address(v1), uint24(v2), int24(v3), address(v4), bool(varg2), varg1, address(v7), v10).gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (varg2) {
            v5 = v13 = uint128(int128(v12));
        } else {
            v5 = v14 = uint128(v12 >> 128);
        }
        require(bool(owner_3_0_19.code.size));
        v15 = owner_3_0_19.take(address(v1), this, v5).gas(msg.gas);
        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (varg0.length > 1) {
            0xcf3(v5, varg0);
        }
        v16 = 0x37dd(varg1);
        0x2c26(v16, v1, owner_3_0_19);
    }
    return v5;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
    } else {
        if (0x84800812 > function_selector >> 224) {
            if (0x2c8958f6 > function_selector >> 224) {
                if (0xf4d14e9 == function_selector >> 224) {
                    depositEth(uint256);
                } else if (0x10d1e85c != function_selector >> 224) {
                    if (0x13af4035 == function_selector >> 224) {
                        setOwner(address);
                    } else {
                        require(0x23a69e75 == function_selector >> 224);
                    }
                }
            } else if (0x2c8958f6 != function_selector >> 224) {
                if (0x31f57072 == function_selector >> 224) {
                    onMorphoFlashLoan(uint256,bytes);
                } else if (0x3a1c453c != function_selector >> 224) {
                    require(0x4b58a6e8 == function_selector >> 224);
                }
            }
        } else if (0xe0154ff0 > function_selector >> 224) {
            if (0x84800812 != function_selector >> 224) {
                if (0x91dd7346 == function_selector >> 224) {
                    unlockCallback(bytes);
                } else if (0xa36a7526 == function_selector >> 224) {
                    setOp(address);
                } else {
                    require(0xab6291fe == function_selector >> 224);
                    lockAcquired(bytes);
                }
            }
        } else if (0xe0154ff0 != function_selector >> 224) {
            if (0xe48454ae == function_selector >> 224) {
                0xe48454ae();
            } else if (0xfa461e33 != function_selector >> 224) {
                require(0xfa483e72 == function_selector >> 224);
            }
        }
        swapCallback(int256,int256,bytes);
        pancakeCall(address,uint256,uint256,bytes);
    }
}
