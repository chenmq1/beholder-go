// Decompiled by library.dedaub.com
// 2025.12.15 18:40 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) mapping_0; // STORAGE[0x0]
uint256 stor_10; // STORAGE[0x10]
uint256 stor_11; // STORAGE[0x11]
uint256 stor_12; // STORAGE[0x12]
uint256 stor_13; // STORAGE[0x13]
uint256 stor_14; // STORAGE[0x14]
uint256 stor_15; // STORAGE[0x15]
uint256 stor_16; // STORAGE[0x16]
uint256 stor_17; // STORAGE[0x17]
uint256 stor_18; // STORAGE[0x18]
uint256 stor_19; // STORAGE[0x19]
uint256 stor_1a; // STORAGE[0x1a]
uint256 stor_1b; // STORAGE[0x1b]
uint256 stor_1c; // STORAGE[0x1c]
uint256 stor_1d; // STORAGE[0x1d]
address stor_1_0_19; // STORAGE[0x1] bytes 0 to 19
address stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
address stor_3_0_19; // STORAGE[0x3] bytes 0 to 19
address stor_4_0_19; // STORAGE[0x4] bytes 0 to 19
address stor_5_0_19; // STORAGE[0x5] bytes 0 to 19
address _unlockCallback; // STORAGE[0x8] bytes 0 to 19
address stor_9_0_19; // STORAGE[0x9] bytes 0 to 19
address stor_a_0_19; // STORAGE[0xa] bytes 0 to 19
address stor_b_0_19; // STORAGE[0xb] bytes 0 to 19
address stor_c_0_19; // STORAGE[0xc] bytes 0 to 19
address stor_d_0_19; // STORAGE[0xd] bytes 0 to 19
address stor_1e_0_19; // STORAGE[0x1e] bytes 0 to 19
bool _squadV3SwapCallback; // STORAGE[0x5] bytes 20 to 20
uint8 stor_8_20_20; // STORAGE[0x8] bytes 20 to 20
bool stor_8_21_21; // STORAGE[0x8] bytes 21 to 21
bool stor_8_22_22; // STORAGE[0x8] bytes 22 to 22



function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    v0 = 4 + data + 32;
    require(v1.data <= msg.data.length);
    if (amount0 <= 0) {
    }
    require(stor_9_0_19, Error(0x23343335));
    stor_9_0_19 = 0;
    require(v0 + msg.data[4 + data] - v0 >= 352);
    require(v0 + msg.data[4 + data] - v0 >= 288);
    v2 = 0x458b();
    require(data.word1 == address(data.word1));
    v2.word0 = data.word1;
    require(data.word2 == address(data.word2));
    v2.word1 = data.word2;
    require(data.word3 == address(data.word3));
    v2.word2 = data.word3;
    v2.word3 = data.word4;
    v2.word4 = data.word5;
    v2.word5 = data.word6;
    v2.word6 = data.word7;
    v2.word7 = data.word8;
    v2.word8 = data.word9;
    require(data.word10 <= uint64.max);
    require(v0 + data.word10 + 31 < v0 + msg.data[4 + data]);
    require(msg.data[v0 + data.word10] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v0 + data.word10]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + data.word10] << 5) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + data.word10] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(v0 + data.word10 + (msg.data[v0 + data.word10] << 5) + 32 <= v0 + msg.data[4 + data]);
    v6 = v7 = v0 + data.word10 + 32;
    while (v6 < v0 + data.word10 + (msg.data[v0 + data.word10] << 5) + 32) {
        MEM[v4] = msg.data[v6];
        v4 += 32;
        v6 += 32;
    }
    require(data.word11 <= uint64.max);
    require(v0 + data.word11 + 31 < v0 + msg.data[4 + data]);
    require(msg.data[v0 + data.word11] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v8 = new uint256[](msg.data[v0 + data.word11]);
    require(!((v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + data.word11] << 5) + 31) < v8) | (v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + data.word11] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v9 = v10 = v8.data;
    require(v0 + data.word11 + (msg.data[v0 + data.word11] << 5) + 32 <= v0 + msg.data[4 + data]);
    v11 = v12 = v0 + data.word11 + 32;
    while (v11 < v0 + data.word11 + (msg.data[v0 + data.word11] << 5) + 32) {
        require(msg.data[v11] <= uint64.max);
        require(v0 + msg.data[4 + data] > v0 + data.word11 + msg.data[v11] + 63);
        require(msg.data[v0 + data.word11 + msg.data[v11] + 32] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v13 = new bytes[](msg.data[v0 + data.word11 + msg.data[v11] + 32]);
        require(!((v13 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + data.word11 + msg.data[v11] + 32]) + 31) < v13) | (v13 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + data.word11 + msg.data[v11] + 32]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v0 + msg.data[4 + data] >= msg.data[v0 + data.word11 + msg.data[v11] + 32] + (v0 + data.word11 + msg.data[v11]) + 64);
        CALLDATACOPY(v13.data, v0 + data.word11 + msg.data[v11] + 64, msg.data[v0 + data.word11 + msg.data[v11] + 32]);
        v13[msg.data[v0 + data.word11 + msg.data[v11] + 32]] = 0;
        MEM[v9] = v13;
        v9 = v9 + 32;
        v11 = v11 + 32;
    }
    0x955(v8, v3);
    v14, /* uint256 */ v15 = address(v2.word1).balanceOf(this).gas(msg.gas);
    require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v15 >= v2.word3, Error('#4439'));
    0xc6a(v2.word3, v2.word0, v2.word1);
    stor_9_0_19 = 0;
}

function 0x13371337(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](varg1.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg1.length << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg1.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);
    v8 = v9 = varg1.data;
    while (v8 < 4 + varg1 + (varg1.length << 5) + 32) {
        require(msg.data[v8] <= uint64.max);
        require(msg.data.length > 4 + varg1 + msg.data[v8] + 63);
        v10 = msg.data[4 + varg1 + msg.data[v8] + 32];
        require(v10 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v11 = new bytes[](v10);
        require(!((v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10) + 31) < v11) | (v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data.length >= v10 + (4 + varg1 + msg.data[v8]) + 64);
        CALLDATACOPY(v11.data, 4 + varg1 + msg.data[v8] + 64, v10);
        v11[v10] = 0;
        MEM[v6] = v11;
        v6 = v6 + 32;
        v8 = v8 + 32;
    }
    require(1 == mapping_0[msg.sender], Error(12853));
    stor_1d = 0;
    stor_1e_0_19 = 0;
    0x955(v5, v0);
    if (stor_1e_0_19 - stor_d_0_19) {
        v12, /* uint256 */ v13 = stor_1e_0_19.balanceOf(this).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v13) {
            0xc6a(v13, msg.sender, stor_1e_0_19);
        }
    } else {
        v14 = msg.sender.call().value(this.balance).gas(2300 * !this.balance);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    v0 = 4 + data + 32;
    require(v1.data <= msg.data.length);
    if (!_squadV3SwapCallback) {
        require(stor_5_0_19, Error(0x233337));
        require(v0 + msg.data[4 + data] - v0 >= 128);
        require(data.word1 == bool(data.word1));
        require(v0 + msg.data[4 + data] - v0 - 32 >= 96);
        v2 = new struct(3);
        require(!((v2 + 96 < v2) | (v2 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(data.word2 == address(data.word2));
        v2.word0 = data.word2;
        require(data.word3 == address(data.word3));
        v2.word1 = data.word3;
        v2.word2 = data.word4;
        require(address(v2.word1) == stor_5_0_19, Error(13365));
        0xc6a(v2.word2, v2.word1, v2.word0);
        stor_5_0_19 = 0;
    } else {
        require(1 == _squadV3SwapCallback, Error(0x233335));
        _squadV3SwapCallback = 0;
        require(stor_5_0_19, Error(0x233337));
        require(v0 + msg.data[4 + data] - v0 >= 192);
        require(v0 + msg.data[4 + data] - v0 >= 128);
        v3 = 0x45d8();
        require(data.word1 == address(data.word1));
        v3.word0 = data.word1;
        require(data.word2 == address(data.word2));
        v3.word1 = data.word2;
        require(data.word3 == address(data.word3));
        v3.word2 = data.word3;
        v3.word3 = data.word4;
        require(data.word5 <= uint64.max);
        require(v0 + data.word5 + 31 < v0 + msg.data[4 + data]);
        require(msg.data[v0 + data.word5] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = new uint256[](msg.data[v0 + data.word5]);
        require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + data.word5] << 5) + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + data.word5] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v5 = v6 = v4.data;
        require(v0 + data.word5 + (msg.data[v0 + data.word5] << 5) + 32 <= v0 + msg.data[4 + data]);
        v7 = v8 = v0 + data.word5 + 32;
        while (v7 < v0 + data.word5 + (msg.data[v0 + data.word5] << 5) + 32) {
            MEM[v5] = msg.data[v7];
            v5 += 32;
            v7 += 32;
        }
        require(data.word6 <= uint64.max);
        require(v0 + data.word6 + 31 < v0 + msg.data[4 + data]);
        require(msg.data[v0 + data.word6] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = new uint256[](msg.data[v0 + data.word6]);
        require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + data.word6] << 5) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + data.word6] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v10 = v11 = v9.data;
        require(v0 + data.word6 + (msg.data[v0 + data.word6] << 5) + 32 <= v0 + msg.data[4 + data]);
        v12 = v13 = v0 + data.word6 + 32;
        while (v12 < v0 + data.word6 + (msg.data[v0 + data.word6] << 5) + 32) {
            require(msg.data[v12] <= uint64.max);
            require(v0 + msg.data[4 + data] > v0 + data.word6 + msg.data[v12] + 63);
            require(msg.data[v0 + data.word6 + msg.data[v12] + 32] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v14 = new bytes[](msg.data[v0 + data.word6 + msg.data[v12] + 32]);
            require(!((v14 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + data.word6 + msg.data[v12] + 32]) + 31) < v14) | (v14 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + data.word6 + msg.data[v12] + 32]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v0 + msg.data[4 + data] >= msg.data[v0 + data.word6 + msg.data[v12] + 32] + (v0 + data.word6 + msg.data[v12]) + 64);
            CALLDATACOPY(v14.data, v0 + data.word6 + msg.data[v12] + 64, msg.data[v0 + data.word6 + msg.data[v12] + 32]);
            v14[msg.data[v0 + data.word6 + msg.data[v12] + 32]] = 0;
            MEM[v10] = v14;
            v10 = v10 + 32;
            v12 = v12 + 32;
        }
        if (amount0Delta <= 0) {
        }
        v15 = 0x575c(v16);
        if (amount0Delta <= 0) {
        }
        0x955(v9, v4);
        v17, /* uint256 */ v18 = address(v3.word1).balanceOf(this).gas(msg.gas);
        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v18 >= v3.word3, Error('#4439'));
        0xc6a(v3.word3, v3.word0, v3.word1);
        stor_5_0_19 = 0;
    }
}

function 0x14e6(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.approve(varg1, 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);
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
    require(v2, Error('TransferHelper: APPROVE_FAILED'));
    return ;
}

function 0x3d5fba6c(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(1 == mapping_0[msg.sender], Error(12853));
    mapping_0[varg0] = 1;
}

function 0x44ad77d6() public payable { 
    require(1 == mapping_0[msg.sender], Error(12853));
    v0 = msg.sender.call().value(this.balance).gas(2300 * !this.balance);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    v0 = 4 + rawData + 32;
    require(v1.data <= msg.data.length);
    require(msg.sender == _unlockCallback, Error('#42352'));
    if (!stor_8_22_22) {
        require(1 == stor_8_21_21, Error('#345643'));
        require(msg.sender == _unlockCallback, Error('#42352'));
        require(v0 + msg.data[4 + rawData] - v0 >= 224);
        require(v0 + msg.data[4 + rawData] - v0 >= 224);
        v2 = 0x45b5();
        require(rawData.word1 == address(rawData.word1));
        v2.word0 = rawData.word1;
        require(rawData.word2 == int128(rawData.word2));
        v2.word1 = rawData.word2;
        require(rawData.word3 == address(rawData.word3));
        v2.word2 = rawData.word3;
        require(rawData.word4 == address(rawData.word4));
        v2.word3 = rawData.word4;
        require(rawData.word5 == uint24(rawData.word5));
        v2.word4 = rawData.word5;
        require(rawData.word6 == int24(rawData.word6));
        v2.word5 = rawData.word6;
        require(rawData.word7 == address(rawData.word7));
        v2.word6 = rawData.word7;
        v3 = v4 = bool(address(v2.word0));
        if (address(v2.word0)) {
            v3 = !int128(v2.word1);
        }
        if (v3) {
            v5 = 0x43c4(v2.word0);
            v2.word1 = int128(v5);
        }
        v6 = v7 = !address(v2.word0);
        if (!bool(address(v2.word0))) {
            v6 = !int128(v2.word1);
        }
        if (v6) {
            v2.word1 = int128(this.balance);
        }
        if (address(v2.word0) != address(v2.word2)) {
        }
        v8 = 0x4c98(v2.word1);
        if (address(v2.word2) == address(v2.word0)) {
            v9 = v10 = 0x1000276a4;
        } else {
            v9 = v11 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        v12 = new uint256[](0);
        v13 = v14 = 0;
        while (v13 < 0) {
            MEM[v13 + v12.data] = MEM[v13 + (MEM[64] + 32)];
            v13 += 32;
        }
        MEM[v12.data] = 0;
        v15, v16 = _unlockCallback.swap(address(v2.word2), address(v2.word3), uint24(v2.word4), int24(v2.word5), address(v2.word6), address(v2.word2) == address(v2.word0), int128(v8), address(v9), v12).gas(msg.gas);
        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (address(v2.word0) == address(v2.word2)) {
            v17 = v18 = int128(v16);
        } else {
            v17 = v19 = v16 >> 128;
        }
        require(bool(_unlockCallback.code.size));
        v20 = _unlockCallback.take(address(v21), this, int128(v17)).gas(msg.gas);
        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (address(v2.word0)) {
            require(bool(_unlockCallback.code.size));
            v22 = _unlockCallback.sync(address(v2.word0)).gas(msg.gas);
            require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            0xc6a(int128(v2.word1), _unlockCallback, address(v2.word0));
            v23, /* uint256 */ v24 = _unlockCallback.settle().gas(msg.gas);
            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        } else {
            v25, /* uint256 */ v26 = _unlockCallback.settle().value(int128(v2.word1)).gas(msg.gas);
            require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
        MEM[MEM[64] + 32] = address(v21);
        MEM[MEM[64] + 64] = int128(v17);
        v27 = v28 = MEM[64];
        MEM[v28] = 64;
    } else {
        require(1 == stor_8_22_22, Error('#34535'));
        stor_8_22_22 = 0;
        require(1 == bool((0xffffffffffffffffff00ffffffffffffffffffffffffffffffffffffffffffff & STORAGE[0x8]) >> 168), Error('#345643'));
        require(v0 + msg.data[4 + rawData] - v0 >= 288);
        require(v0 + msg.data[4 + rawData] - v0 >= 224);
        v29 = 0x45b5();
        require(rawData.word1 == address(rawData.word1));
        v29.word0 = rawData.word1;
        require(rawData.word2 == int128(rawData.word2));
        v29.word1 = rawData.word2;
        require(rawData.word3 == address(rawData.word3));
        v29.word2 = rawData.word3;
        require(rawData.word4 == address(rawData.word4));
        v29.word3 = rawData.word4;
        require(rawData.word5 == uint24(rawData.word5));
        v29.word4 = rawData.word5;
        require(rawData.word6 == int24(rawData.word6));
        v29.word5 = rawData.word6;
        require(rawData.word7 == address(rawData.word7));
        v29.word6 = rawData.word7;
        require(rawData.word8 <= uint64.max);
        require(v0 + rawData.word8 + 31 < v0 + msg.data[4 + rawData]);
        require(msg.data[v0 + rawData.word8] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v30 = new uint256[](msg.data[v0 + rawData.word8]);
        require(!((v30 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + rawData.word8] << 5) + 31) < v30) | (v30 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + rawData.word8] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v31 = v32 = v30.data;
        require(v0 + rawData.word8 + (msg.data[v0 + rawData.word8] << 5) + 32 <= v0 + msg.data[4 + rawData]);
        v33 = v34 = v0 + rawData.word8 + 32;
        while (v33 < v0 + rawData.word8 + (msg.data[v0 + rawData.word8] << 5) + 32) {
            MEM[v31] = msg.data[v33];
            v31 += 32;
            v33 += 32;
        }
        require(rawData.word9 <= uint64.max);
        require(v0 + rawData.word9 + 31 < v0 + msg.data[4 + rawData]);
        require(msg.data[v0 + rawData.word9] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v35 = new uint256[](msg.data[v0 + rawData.word9]);
        require(!((v35 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + rawData.word9] << 5) + 31) < v35) | (v35 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + rawData.word9] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v36 = v37 = v35.data;
        require(v0 + rawData.word9 + (msg.data[v0 + rawData.word9] << 5) + 32 <= v0 + msg.data[4 + rawData]);
        v38 = v39 = v0 + rawData.word9 + 32;
        while (v38 < v0 + rawData.word9 + (msg.data[v0 + rawData.word9] << 5) + 32) {
            require(msg.data[v38] <= uint64.max);
            require(v0 + msg.data[4 + rawData] > v0 + rawData.word9 + msg.data[v38] + 63);
            require(msg.data[v0 + rawData.word9 + msg.data[v38] + 32] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v40 = new bytes[](msg.data[v0 + rawData.word9 + msg.data[v38] + 32]);
            require(!((v40 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + rawData.word9 + msg.data[v38] + 32]) + 31) < v40) | (v40 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + rawData.word9 + msg.data[v38] + 32]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v0 + msg.data[4 + rawData] >= msg.data[v0 + rawData.word9 + msg.data[v38] + 32] + (v0 + rawData.word9 + msg.data[v38]) + 64);
            CALLDATACOPY(v40.data, v0 + rawData.word9 + msg.data[v38] + 64, msg.data[v0 + rawData.word9 + msg.data[v38] + 32]);
            v40[msg.data[v0 + rawData.word9 + msg.data[v38] + 32]] = 0;
            MEM[v36] = v40;
            v36 = v36 + 32;
            v38 = v38 + 32;
        }
        require(int128(v29.word1) > 0, Error('#93583'));
        if (address(v29.word0) != address(v29.word2)) {
        }
        v41 = 0x4c98(v29.word1);
        if (address(v29.word2) == address(v29.word0)) {
            v42 = v43 = 0x1000276a4;
        } else {
            v42 = v44 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        v45 = new uint256[](0);
        v46 = v47 = 0;
        while (v46 < 0) {
            MEM[v46 + v45.data] = MEM[v46 + (MEM[64] + 32)];
            v46 += 32;
        }
        MEM[v45.data] = 0;
        v48, v49 = _unlockCallback.swap(address(v29.word2), address(v29.word3), uint24(v29.word4), int24(v29.word5), address(v29.word6), address(v29.word2) == address(v29.word0), int128(v41), address(v42), v45).gas(msg.gas);
        require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (address(v29.word0) == address(v29.word2)) {
            v50 = v51 = int128(v49);
        } else {
            v50 = v52 = v49 >> 128;
        }
        require(bool(_unlockCallback.code.size));
        v53 = _unlockCallback.take(address(v54), this, int128(v50)).gas(msg.gas);
        require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        0x955(v35, v30);
        if (address(v29.word0)) {
            require(bool(_unlockCallback.code.size));
            v55 = _unlockCallback.sync(address(v29.word0)).gas(msg.gas);
            require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            0xc6a(int128(v29.word1), _unlockCallback, address(v29.word0));
            v56, /* uint256 */ v57 = _unlockCallback.settle().gas(msg.gas);
            require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        } else {
            v58, /* uint256 */ v59 = _unlockCallback.settle().value(int128(v29.word1)).gas(msg.gas);
            require(bool(v58), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
        MEM[MEM[64] + 32] = address(v54);
        MEM[MEM[64] + 64] = int128(v50);
        v27 = v60 = MEM[64];
        MEM[v60] = 64;
    }
    v61 = new uint256[](MEM[v27]);
    v62 = v63 = 0;
    while (v62 < MEM[v27]) {
        MEM[v62 + v61.data] = MEM[v62 + (v27 + 32)];
        v62 += 32;
    }
    MEM[MEM[v27] + v61.data] = 0;
    return v61;
}

function 0xb9635481(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(1 == mapping_0[msg.sender], Error(12853));
    mapping_0[varg0] = 0;
}

function 0x1ccf(uint256 varg0) private { 
    stor_8_21_21 = 1;
    if (stor_8_20_20) {
        v0 = 0x5057(32 + varg0, 32 + varg0 + MEM[varg0]);
        v1 = v2 = bool(address(v0.word0));
        if (address(v0.word0)) {
            v1 = !int128(v0.word1);
        }
        if (v1) {
            v3 = 0x43c4(v0.word0);
            v0.word1 = int128(v3);
        }
        v4 = v5 = !address(v0.word0);
        if (!bool(address(v0.word0))) {
            v4 = !int128(v0.word1);
        }
        if (v4) {
            v0.word1 = int128(this.balance);
        }
        if (address(v0.word0) != address(v0.word2)) {
        }
        v6 = 0x4c98(v0.word1);
        if (address(v0.word2) == address(v0.word0)) {
            v7 = v8 = 0x1000276a4;
        } else {
            v7 = v9 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        v10 = new uint256[](0);
        v11 = v12 = 0;
        while (v11 < 0) {
            MEM[v11 + v10.data] = MEM[v11 + (MEM[64] + 32)];
            v11 += 32;
        }
        MEM[v10.data] = 0;
        v13, v14 = _unlockCallback.swap(address(v0.word2), address(v0.word3), uint24(v0.word4), int24(v0.word5), address(v0.word6), address(v0.word2) == address(v0.word0), int128(v6), address(v7), v10).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (address(v0.word0) == address(v0.word2)) {
            v15 = v16 = int128(v14);
        } else {
            v15 = v17 = v14 >> 128;
        }
        require(bool(_unlockCallback.code.size));
        v18 = _unlockCallback.take(address(v19), this, int128(v15)).gas(msg.gas);
        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (address(v0.word0)) {
            require(bool(_unlockCallback.code.size));
            v20 = _unlockCallback.sync(address(v0.word0)).gas(msg.gas);
            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            0xc6a(int128(v0.word1), _unlockCallback, address(v0.word0));
            v21, /* uint256 */ v22 = _unlockCallback.settle().gas(msg.gas);
            require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        } else {
            v23, /* uint256 */ v24 = _unlockCallback.settle().value(int128(v0.word1)).gas(msg.gas);
            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
        MEM[MEM[64] + 32] = address(v19);
        MEM[MEM[64] + 64] = int128(v15);
        v25 = MEM[64];
        MEM[v25] = 64;
    } else {
        v26 = new uint256[](v27);
        v27 = MEM[varg0];
        v28 = v29 = 0;
        while (v28 < v27) {
            MEM[v28 + v26.data] = MEM[v28 + (varg0 + 32)];
            v28 += 32;
        }
        MEM[v27 + v26.data] = 0;
        v30, /* uint256 */ v31 = _unlockCallback.unlock(v26).gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        RETURNDATACOPY(v31, 0, RETURNDATASIZE());
        MEM[64] = v31 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        require(v31 + RETURNDATASIZE() - v31 >= 32);
        require(MEM[v31] <= uint64.max);
        require(v31 + RETURNDATASIZE() > v31 + MEM[v31] + 31);
        require(MEM[v31 + MEM[v31]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v25 = v32 = new bytes[](MEM[v31 + MEM[v31]]);
        require(!((v32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v31 + MEM[v31]]) + 31) < v32) | (v32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v31 + MEM[v31]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v31 + MEM[v31] + MEM[v31 + MEM[v31]] + 32 <= v31 + RETURNDATASIZE());
        v33 = v34 = 0;
        while (v33 < MEM[v31 + MEM[v31]]) {
            v32[v33] = MEM[v33 + (v31 + MEM[v31] + 32)];
            v33 += 32;
        }
        v32[MEM[v31 + MEM[v31]]] = 0;
    }
    stor_8_21_21 = 0;
    require(32 + v25 + MEM[v25] - (32 + v25) >= 64);
    require(MEM[32 + v25] == address(MEM[32 + v25]));
    return MEM[64 + v25], MEM[32 + v25];
}

function 0xc634e060(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(1 == mapping_0[msg.sender], Error(12853));
    0x14e6(varg1, msg.sender, varg0);
}

function 0xdf6864bf(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(1 == mapping_0[msg.sender], Error(12853));
    v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0xc6a(v1, msg.sender, varg0);
}

function 0x2cac(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x4d9a(32 + varg2, 32 + varg2 + MEM[varg2]);
    v1, v2 = 0x3e2e(v0.word2, v0.word1);
    require(v0.word3 > 0, Error('#324242'));
    if (!(0 - v0.word4)) {
        v3, /* uint112 */ v4, /* uint112 */ v5, /* uint32 */ v6 = address(v0.word0).getReserves().gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v4 == uint112(v4));
        require(v5 == uint112(v5));
        require(v6 == uint32(v6));
        v7 = v8 = uint112(v5);
        v7 = v9 = uint112(v4);
        if (address(v0.word1) != address(v2)) {
        }
        if (v0.word5) {
            v10 = _SafeMul(v0.word4, v0.word5);
            v11 = _SafeDiv(v10, 10 ** 18);
        }
        v12 = 0x3f17(v0.word8, v0.word7, v7, v7, v0.word3);
        v0.word4 = v12;
        if (v0.word6) {
            v13 = _SafeMul(v0.word4, v0.word6);
            v14 = _SafeDiv(v13, 10 ** 18);
            v0.word4 = v14;
        }
    }
    if (address(v0.word1) - address(v2)) {
        v15 = v16 = v0.word4;
        v17 = v18 = 0;
    } else {
        v15 = v19 = 0;
        v17 = v20 = v0.word4;
    }
    stor_9_0_19 = v0.word0;
    MEM[32 + MEM[64]] = address(v0.word0);
    MEM[32 + MEM[64] + 32] = address(v0.word1);
    MEM[32 + MEM[64] + 64] = address(v0.word2);
    MEM[32 + MEM[64] + 96] = v0.word3;
    MEM[32 + MEM[64] + 128] = v0.word4;
    MEM[32 + MEM[64] + 160] = v0.word5;
    MEM[32 + MEM[64] + 192] = v0.word6;
    MEM[32 + MEM[64] + 224] = v0.word7;
    MEM[32 + MEM[64] + (uint8.max + 1)] = v0.word8;
    MEM[32 + MEM[64] + 288] = 352;
    MEM[32 + MEM[64] + 352] = varg1.length;
    v21 = v22 = 32 + MEM[64] + 352 + 32;
    v23 = v24 = varg1.data;
    v25 = v26 = 0;
    while (v25 < varg1.length) {
        MEM[v21] = MEM[v23];
        v21 += 32;
        v23 = v23 + 32;
        v25 += 1;
    }
    MEM[32 + MEM[64] + 320] = v21 - (32 + MEM[64]);
    MEM[v21] = varg0.length;
    v27 = v21 + 32;
    v28 = v29 = v21 + (varg0.length << 5) + 32;
    v30 = varg0.data;
    v31 = 0;
    while (v31 < varg0.length) {
        MEM[v27] = v28 - v21 - 32;
        MEM[v28] = MEM[MEM[v30]];
        v32 = v33 = 0;
        while (v32 < MEM[MEM[v30]]) {
            MEM[v32 + (v28 + 32)] = MEM[v32 + (MEM[v30] + 32)];
            v32 += 32;
        }
        MEM[MEM[MEM[v30]] + (v28 + 32)] = 0;
        v28 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v30]]) + v28);
        v27 += 32;
        v30 += 32;
        v31 += 1;
    }
    v34 = new uint256[](v28 - MEM[64] - 32);
    v35 = v36 = 0;
    while (v35 < v28 - MEM[64] - 32) {
        MEM[v35 + v34.data] = MEM[v35 + (MEM[64] + 32)];
        v35 += 32;
    }
    MEM[v28 - MEM[64] - 32 + v34.data] = 0;
    require(bool((address(v0.word0)).code.size));
    v37 = address(v0.word0).swap(v15, v17, address(this), v34).gas(msg.gas);
    require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x2f88(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x4fb7(32 + varg2, 32 + varg2 + MEM[varg2]);
    require(v0.word3 > 0, Error('#5300004'));
    v1, /* address */ v2 = address(v0.word0).token0().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == address(v2));
    stor_5_0_19 = v0.word0;
    _squadV3SwapCallback = 1;
    if (address(v2) == address(v0.word1)) {
        v3 = v4 = 0x54d0(1, 0x1000276a3);
    } else {
        v3 = v5 = 0x54b1(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
    }
    MEM[32 + MEM[64]] = address(v0.word0);
    MEM[32 + MEM[64] + 32] = address(v0.word1);
    MEM[32 + MEM[64] + 64] = address(v0.word2);
    MEM[32 + MEM[64] + 96] = v0.word3;
    MEM[32 + MEM[64] + 128] = 192;
    MEM[32 + MEM[64] + 192] = varg1.length;
    v6 = v7 = 32 + MEM[64] + 192 + 32;
    v8 = v9 = varg1.data;
    v10 = v11 = 0;
    while (v10 < varg1.length) {
        MEM[v6] = MEM[v8];
        v6 += 32;
        v8 = v8 + 32;
        v10 += 1;
    }
    MEM[32 + MEM[64] + 160] = v6 - (32 + MEM[64]);
    MEM[v6] = varg0.length;
    v12 = v6 + 32;
    v13 = v14 = v6 + (varg0.length << 5) + 32;
    v15 = varg0.data;
    v16 = 0;
    while (v16 < varg0.length) {
        MEM[v12] = v13 - v6 - 32;
        MEM[v13] = MEM[MEM[v15]];
        v17 = v18 = 0;
        while (v17 < MEM[MEM[v15]]) {
            MEM[v17 + (v13 + 32)] = MEM[v17 + (MEM[v15] + 32)];
            v17 += 32;
        }
        MEM[MEM[MEM[v15]] + (v13 + 32)] = 0;
        v13 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v15]]) + v13);
        v12 += 32;
        v15 += 32;
        v16 += 1;
    }
    v19 = new uint256[](v13 - MEM[64] - 32);
    v20 = v21 = 0;
    while (v20 < v13 - MEM[64] - 32) {
        MEM[v20 + v19.data] = MEM[v20 + (MEM[64] + 32)];
        v20 += 32;
    }
    MEM[v13 - MEM[64] - 32 + v19.data] = 0;
    v22, /* uint256 */ v23, /* uint256 */ v24 = address(v0.word0).swap(address(this), address(v2) == address(v0.word1), v0.word3, address(v3), v19).gas(msg.gas);
    require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    return ;
}

function 0x31a7(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x5057(32 + varg2, 32 + varg2 + MEM[varg2]);
    require(int128(v0.word1) > 0, Error('#53453'));
    stor_8_20_20 = 1;
    stor_8_20_20 = 257;
    stor_8_21_21 = 1;
    stor_8_22_22 = 1;
    MEM[32 + MEM[64]] = address(v0.word0);
    MEM[32 + MEM[64] + 32] = int128(v0.word1);
    MEM[32 + MEM[64] + 64] = address(v0.word2);
    MEM[32 + MEM[64] + 96] = address(v0.word3);
    MEM[32 + MEM[64] + 128] = uint24(v0.word4);
    MEM[32 + MEM[64] + 160] = int24(v0.word5);
    MEM[32 + MEM[64] + 192] = address(v0.word6);
    MEM[32 + MEM[64] + 224] = 288;
    MEM[32 + MEM[64] + 288] = varg1.length;
    v1 = v2 = 32 + MEM[64] + 288 + 32;
    v3 = v4 = varg1.data;
    v5 = v6 = 0;
    while (v5 < varg1.length) {
        MEM[v1] = MEM[v3];
        v1 += 32;
        v3 = v3 + 32;
        v5 += 1;
    }
    MEM[32 + MEM[64] + (uint8.max + 1)] = v1 - (32 + MEM[64]);
    MEM[v1] = varg0.length;
    v7 = v1 + 32;
    v8 = v9 = v1 + (varg0.length << 5) + 32;
    v10 = varg0.data;
    v11 = 0;
    while (v11 < varg0.length) {
        MEM[v7] = v8 - v1 - 32;
        MEM[v8] = MEM[MEM[v10]];
        v12 = v13 = 0;
        while (v12 < MEM[MEM[v10]]) {
            MEM[v12 + (v8 + 32)] = MEM[v12 + (MEM[v10] + 32)];
            v12 += 32;
        }
        MEM[MEM[MEM[v10]] + (v8 + 32)] = 0;
        v8 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v10]]) + v8);
        v7 += 32;
        v10 += 32;
        v11 += 1;
    }
    v14 = new uint256[](v8 - MEM[64] - 32);
    v15 = v16 = 0;
    while (v15 < v8 - MEM[64] - 32) {
        MEM[v15 + v14.data] = MEM[v15 + (MEM[64] + 32)];
        v15 += 32;
    }
    MEM[v8 - MEM[64] - 32 + v14.data] = 0;
    v17, /* uint256 */ v18 = _unlockCallback.unlock(v14).gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    RETURNDATACOPY(v18, 0, RETURNDATASIZE());
    MEM[64] = v18 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
    require(v18 + RETURNDATASIZE() - v18 >= 32);
    require(MEM[v18] <= uint64.max);
    require(v18 + RETURNDATASIZE() > v18 + MEM[v18] + 31);
    require(MEM[v18 + MEM[v18]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v19 = new bytes[](MEM[v18 + MEM[v18]]);
    require(!((v19 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v18 + MEM[v18]]) + 31) < v19) | (v19 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v18 + MEM[v18]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v18 + MEM[v18] + MEM[v18 + MEM[v18]] + 32 <= v18 + RETURNDATASIZE());
    v20 = v21 = 0;
    while (v20 < MEM[v18 + MEM[v18]]) {
        v19[v20] = MEM[v20 + (v18 + MEM[v18] + 32)];
        v20 += 32;
    }
    v19[MEM[v18 + MEM[v18]]] = 0;
    stor_8_20_20 = 0;
    stor_8_21_21 = 0;
    return ;
}

function 0x3326() private { 
    v0 = _SafeAdd(msg.value, this.balance);
    require(v0 > 0);
    require(bool(stor_3_0_19.code.size));
    v1 = stor_3_0_19.deposit().value(v0).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v2, /* uint256 */ v3 = stor_3_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v3, stor_2_0_19;
}

function 0x358d(uint256 varg0) private { 
    require(32 + varg0 + MEM[varg0] - (32 + varg0) >= 32);
    v0 = new struct(1);
    require(!((v0 + 32 < v0) | (v0 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = MEM[32 + varg0];
    require(block.number <= v0.word0, Error(0x23323139));
    return ;
}

function 0x3e2e(uint256 varg0, uint256 varg1) private { 
    require(address(varg1) - address(varg0), Error(0x233132));
    if (address(varg1) >= address(varg0)) {
    }
    require(address(varg1), Error(0x233133));
    return varg1, varg1;
}

function 0x3f17(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(varg4 > 0, Error('getAmountOut: INSUFFICIENT_INPUT_AMOUNT'));
    v0 = v1 = varg3 > 0;
    if (v1) {
        v0 = v2 = varg2 > 0;
    }
    require(v0, Error('getAmountOut: INSUFFICIENT_LIQUIDITY', 'getAmountOut: INSUFFICIENT_LIQUIDITY'));
    v3 = v4 = 10000 == varg0;
    if (v4) {
        v3 = v5 = varg1 < 100;
    }
    if (!v3) {
        v3 = v6 = 1000 == varg0;
        if (v6) {
            v3 = v7 = varg1 < 10;
        }
    }
    if (!v3) {
        v3 = v8 = 100 == varg0;
        if (v8) {
            v3 = v9 = varg1 < 10;
        }
    }
    if (v3) {
        varg1 = v10 = _SafeSub(varg0, varg1);
    }
    v11 = 0x4448(varg1, varg4);
    v12 = 0x4448(varg2, v11);
    v13 = 0x4448(varg0, varg3);
    v14 = 0x4475(v11, v13);
    v15 = _SafeDiv(v12, v14);
    return v15;
}

function 0x40aa(address varg0, address varg1, struct(3) varg2) private { 
    v0, /* address */ v1 = varg1.token0().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == address(v1));
    if (address(v1) == address(varg2.word0)) {
        v2 = v3 = 0x54d0(1, 0x1000276a3);
    } else {
        v2 = v4 = 0x54b1(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
    }
    v5 = new uint256[](128);
    v6 = v7 = 0;
    while (v6 < 128) {
        MEM[v6 + v5.data] = MEM[v6 + (MEM[64] + 32)];
        v6 += 32;
    }
    MEM[128 + v5.data] = 0;
    v8, /* uint256 */ v9, /* uint256 */ v9 = varg1.swap(varg0, address(v1) == address(varg2.word0), varg2.word2, address(v2), v5, v10, False, address(varg2.word0), address(varg2.word1), varg2.word2).gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (address(v1) != address(varg2.word0)) {
    }
    v11 = 0x575c(v9);
    return v11;
}

function 0x4255(uint256 varg0, address varg1, address varg2, address varg3) private { 
    v0 = v1 = 0;
    while (v0 < 100) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[100 + MEM[64]] = 0;
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg3.transferFrom(varg2, 0x23b872dd00000000000000000000000000000000000000000000000000000000 | uint224(varg2), varg1, varg0).gas(msg.gas);
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
    require(v2, Error('TransferHelper: TRANSFER_FROM_FAILED', 'TransferHelper: TRANSFER_FROM_FAILED'));
    return ;
}

function 0x43c4(address varg0) private { 
    if (varg0) {
        v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        return v1;
    } else {
        return this.balance;
    }
}

function 0x4448(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = v3 = !varg1;
    if (varg1) {
        v0 = v4 = _SafeMul(varg1, varg0);
        v5 = _SafeDiv(v4, varg1);
        v2 = v6 = v5 == varg0;
    }
    require(v2);
    return v0;
}

function 0x4475(uint256 varg0, uint256 varg1) private { 
    v0 = _SafeAdd(varg1, varg0);
    require(v0 >= varg1);
    return v0;
}

function 0x458b() private { 
    v0 = new struct(9);
    require(!((v0 + 288 < v0) | (v0 + 288 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x45b5() private { 
    v0 = new struct(7);
    require(!((v0 + 224 < v0) | (v0 + 224 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x45d8() private { 
    v0 = new struct(4);
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function receive() public payable { 
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x4c98(int128 varg0) private { 
    require(varg0 - int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x4d9a(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 288);
    v0 = 0x458b();
    require(MEM[varg0] == address(MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(MEM[varg0 + 32] == address(MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(MEM[varg0 + 64] == address(MEM[varg0 + 64]));
    v0.word2 = MEM[varg0 + 64];
    v0.word3 = MEM[96 + varg0];
    v0.word4 = MEM[varg0 + 128];
    v0.word5 = MEM[varg0 + 160];
    v0.word6 = MEM[varg0 + 192];
    v0.word7 = MEM[varg0 + 224];
    v0.word8 = MEM[uint8.max + 1 + varg0];
    return v0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x4fb7(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 128);
    require(varg1 - varg0 >= 128);
    v0 = 0x45d8();
    require(MEM[varg0] == address(MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(MEM[varg0 + 32] == address(MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(MEM[varg0 + 64] == address(MEM[varg0 + 64]));
    v0.word2 = MEM[varg0 + 64];
    v0.word3 = MEM[96 + varg0];
    return v0;
}

function 0x5057(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 224);
    v0 = 0x45b5();
    require(MEM[varg0] == address(MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(MEM[varg0 + 32] == int128(MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(MEM[varg0 + 64] == address(MEM[varg0 + 64]));
    v0.word2 = MEM[varg0 + 64];
    require(MEM[varg0 + 96] == address(MEM[varg0 + 96]));
    v0.word3 = MEM[varg0 + 96];
    require(MEM[varg0 + 128] == uint24(MEM[varg0 + 128]));
    v0.word4 = MEM[varg0 + 128];
    require(MEM[varg0 + 160] == int24(MEM[varg0 + 160]));
    v0.word5 = MEM[varg0 + 160];
    require(MEM[varg0 + 192] == address(MEM[varg0 + 192]));
    v0.word6 = MEM[varg0 + 192];
    return v0;
}

function 0x54b1(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x54d0(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x575c(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x955(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    require(varg1.length == varg0.length, Error('#1241241'));
    v2 = v3 = stor_1d;
    while (1) {
        if (v2 >= varg1.length) {
            stor_1e_0_19 = v0;
            return ;
        } else {
            require(v2 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (varg1[v2] - stor_12) {
                if (varg1[v2] - stor_13) {
                    if (varg1[v2] - stor_14) {
                        if (varg1[v2] - stor_18) {
                            if (varg1[v2] - stor_19) {
                                if (varg1[v2] - stor_1a) {
                                    if (varg1[v2] - stor_1b) {
                                        if (varg1[v2] - stor_15) {
                                            if (varg1[v2] - stor_16) {
                                                if (varg1[v2] - stor_17) {
                                                    if (varg1[v2] - stor_10) {
                                                        if (varg1[v2] - stor_11) {
                                                            if (!(varg1[v2] - stor_1c)) {
                                                                require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                0x358d(varg0[v2]);
                                                            }
                                                        } else {
                                                            v4 = stor_3_0_19.balanceOf(this).gas(msg.gas);
                                                            if (bool(v4)) {
                                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                                require(MEM[MEM[64]] > 0);
                                                                require(bool(stor_3_0_19.code.size));
                                                                v5 = stor_3_0_19.withdraw(MEM[MEM[64]]).gas(msg.gas);
                                                                if (bool(v5)) {
                                                                    v0 = v6 = stor_1_0_19;
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
                                                        v7, v0 = v8 = 0x3326();
                                                    }
                                                } else {
                                                    v9 = _SafeAdd(1, v2);
                                                    stor_1d = v9;
                                                    require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    0x31a7(varg0, varg1, varg0[v2]);
                                                    return ;
                                                }
                                            } else {
                                                v10 = _SafeAdd(1, v2);
                                                stor_1d = v10;
                                                require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                0x2f88(varg0, varg1, varg0[v2]);
                                                return ;
                                            }
                                        } else {
                                            v11 = _SafeAdd(1, v2);
                                            stor_1d = v11;
                                            require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            0x2cac(varg0, varg1, varg0[v2]);
                                            return ;
                                        }
                                    } else {
                                        require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v12 = v13 = 0;
                                        require(32 + varg0[v2] + MEM[varg0[v2]] - (32 + varg0[v2]) >= uint8.max + 1);
                                        v14 = new struct(8);
                                        require(!((v14 + (uint8.max + 1) < v14) | (v14 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[32 + varg0[v2]] == address(MEM[32 + varg0[v2]]));
                                        v14.word0 = MEM[32 + varg0[v2]];
                                        require(MEM[32 + varg0[v2] + 32] == address(MEM[32 + varg0[v2] + 32]));
                                        v14.word1 = MEM[32 + varg0[v2] + 32];
                                        require(MEM[32 + varg0[v2] + 64] == address(MEM[32 + varg0[v2] + 64]));
                                        v14.word2 = MEM[32 + varg0[v2] + 64];
                                        v14.word3 = MEM[128 + varg0[v2]];
                                        v14.word4 = MEM[32 + varg0[v2] + 128];
                                        v14.word5 = MEM[32 + varg0[v2] + 160];
                                        require(MEM[32 + varg0[v2] + 192] == bool(MEM[32 + varg0[v2] + 192]));
                                        v14.word6 = MEM[32 + varg0[v2] + 192];
                                        v14.word7 = MEM[256 + varg0[v2]];
                                        if (!(0 - v14.word5)) {
                                            v15 = address(v14.word1).balanceOf(this).gas(msg.gas);
                                            if (bool(v15)) {
                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                v14.word5 = MEM[MEM[64]];
                                            } else {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        }
                                        0x14e6(v14.word5, v14.word0, v14.word1);
                                        v16 = address(v14.word2).balanceOf(this).gas(msg.gas);
                                        if (bool(v16)) {
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            if (0 - bool(v14.word6)) {
                                                if (!0) {
                                                    MEM[MEM[64] + 68] = int128(v14.word4);
                                                    MEM[MEM[64] + 100] = v14.word5;
                                                    MEM[MEM[64] + 132] = 0;
                                                    MEM[MEM[64] + 32] = 0xa6417ed600000000000000000000000000000000000000000000000000000000 | uint224(int128(v14.word3));
                                                    v17 = v18 = 0;
                                                    while (v17 < 132) {
                                                        MEM[v17 + MEM[64]] = MEM[v17 + (MEM[64] + 32)];
                                                        v17 += 32;
                                                    }
                                                    MEM[132 + MEM[64]] = 0;
                                                    v19 = address(v14.word0).call(MEM[MEM[64]:MEM[64] + 132 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() != 0) {
                                                        MEM[MEM[64]] = RETURNDATASIZE();
                                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (v19) {
                                                        v20 = address(v14.word2).balanceOf(this).gas(msg.gas);
                                                        if (bool(v20)) {
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                            v12 = v21 = _SafeSub(MEM[MEM[64]], MEM[MEM[64]]);
                                                        } else {
                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                            revert(0, RETURNDATASIZE());
                                                        }
                                                    }
                                                }
                                                if (!(0 - v12)) {
                                                    MEM[MEM[64] + 68] = v14.word4;
                                                    MEM[MEM[64] + 100] = v14.word5;
                                                    MEM[MEM[64] + 132] = 0;
                                                    MEM[MEM[64] + 32] = 0x65b2489b00000000000000000000000000000000000000000000000000000000 | uint224(v14.word3);
                                                    v22 = v23 = 0;
                                                    while (v22 < 132) {
                                                        MEM[v22 + MEM[64]] = MEM[v22 + (MEM[64] + 32)];
                                                        v22 += 32;
                                                    }
                                                    MEM[132 + MEM[64]] = 0;
                                                    v24 = address(v14.word0).call(MEM[MEM[64]:MEM[64] + 132 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() != 0) {
                                                        MEM[MEM[64]] = RETURNDATASIZE();
                                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (v24) {
                                                        v25 = address(v14.word2).balanceOf(this).gas(msg.gas);
                                                        if (bool(v25)) {
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                            v26 = _SafeSub(MEM[MEM[64]], MEM[MEM[64]]);
                                                        } else {
                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                            revert(0, RETURNDATASIZE());
                                                        }
                                                    }
                                                }
                                            } else {
                                                if (!0) {
                                                    MEM[MEM[64] + 68] = int128(v14.word4);
                                                    MEM[MEM[64] + 100] = v14.word5;
                                                    MEM[MEM[64] + 132] = 0;
                                                    MEM[MEM[64] + 32] = 0x3df0212400000000000000000000000000000000000000000000000000000000 | uint224(int128(v14.word3));
                                                    v27 = v28 = 0;
                                                    while (v27 < 132) {
                                                        MEM[v27 + MEM[64]] = MEM[v27 + (MEM[64] + 32)];
                                                        v27 += 32;
                                                    }
                                                    MEM[132 + MEM[64]] = 0;
                                                    v29 = address(v14.word0).call(MEM[MEM[64]:MEM[64] + 132 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() != 0) {
                                                        MEM[MEM[64]] = RETURNDATASIZE();
                                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (v29) {
                                                        v30 = address(v14.word2).balanceOf(this).gas(msg.gas);
                                                        if (bool(v30)) {
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                            v12 = v31 = _SafeSub(MEM[MEM[64]], MEM[MEM[64]]);
                                                        } else {
                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                            revert(0, RETURNDATASIZE());
                                                        }
                                                    }
                                                }
                                                if (!(0 - v12)) {
                                                    MEM[MEM[64] + 68] = v14.word4;
                                                    MEM[MEM[64] + 100] = v14.word5;
                                                    MEM[MEM[64] + 132] = 0;
                                                    MEM[MEM[64] + 32] = 0x5b41b90800000000000000000000000000000000000000000000000000000000 | uint224(v14.word3);
                                                    v32 = v33 = 0;
                                                    while (v32 < 132) {
                                                        MEM[v32 + MEM[64]] = MEM[v32 + (MEM[64] + 32)];
                                                        v32 += 32;
                                                    }
                                                    MEM[132 + MEM[64]] = 0;
                                                    v34 = address(v14.word0).call(MEM[MEM[64]:MEM[64] + 132 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() != 0) {
                                                        MEM[MEM[64]] = RETURNDATASIZE();
                                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (v34) {
                                                        v35 = address(v14.word2).balanceOf(this).gas(msg.gas);
                                                        if (bool(v35)) {
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                            v36 = _SafeSub(MEM[MEM[64]], MEM[MEM[64]]);
                                                        } else {
                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                            revert(0, RETURNDATASIZE());
                                                        }
                                                    }
                                                }
                                            }
                                            v0 = v37 = v14.word2;
                                        } else {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    }
                                } else {
                                    require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v38 = 0x4fb7(32 + varg0[v2], 32 + varg0[v2] + MEM[varg0[v2]]);
                                    if (!(0 - v38.word3)) {
                                        v39 = address(v38.word1).balanceOf(this).gas(msg.gas);
                                        if (bool(v39)) {
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            v38.word3 = MEM[MEM[64]];
                                        } else {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    }
                                    0x14e6(v38.word3, stor_c_0_19, v38.word1);
                                    require(bool(stor_c_0_19.code.size));
                                    v40 = stor_c_0_19.approve(address(v38.word1), stor_b_0_19, uint160.max, uint48.max).gas(msg.gas);
                                    if (bool(v40)) {
                                        MEM[MEM[64]] = 0x750283bc00000000000000000000000000000000000000000000000000000000;
                                        MEM[4 + MEM[64]] = address(v38.word0);
                                        MEM[4 + MEM[64] + 32] = address(v38.word1);
                                        MEM[4 + MEM[64] + 64] = address(v38.word2);
                                        MEM[4 + MEM[64] + 96] = v38.word3;
                                        MEM[4 + MEM[64] + 128] = 0;
                                        MEM[4 + MEM[64] + 160] = block.timestamp;
                                        MEM[4 + MEM[64] + 192] = False;
                                        MEM[4 + MEM[64] + 224] = uint8.max + 1;
                                        MEM[4 + MEM[64] + (uint8.max + 1)] = 0;
                                        v41 = v42 = 0;
                                        while (v41 < 0) {
                                            MEM[v41 + (4 + MEM[64] + (uint8.max + 1) + 32)] = MEM[v41 + (MEM[64] + 32)];
                                            v41 += 32;
                                        }
                                        MEM[4 + MEM[64] + (uint8.max + 1) + 32] = 0;
                                        v43 = stor_b_0_19.call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + uint8.max + 1 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                        if (bool(v43)) {
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            v0 = v44 = v38.word2;
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
                                require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(32 + varg0[v2] + MEM[varg0[v2]] - (32 + varg0[v2]) >= 128);
                                v45 = 0x45d8();
                                v45.word0 = MEM[32 + varg0[v2]];
                                require(MEM[32 + varg0[v2] + 32] == address(MEM[32 + varg0[v2] + 32]));
                                v45.word1 = MEM[32 + varg0[v2] + 32];
                                require(MEM[32 + varg0[v2] + 64] == address(MEM[32 + varg0[v2] + 64]));
                                v45.word2 = MEM[32 + varg0[v2] + 64];
                                v45.word3 = MEM[128 + varg0[v2]];
                                if (!(0 - v45.word3)) {
                                    v46 = address(v45.word1).balanceOf(this).gas(msg.gas);
                                    if (bool(v46)) {
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        v45.word3 = MEM[MEM[64]];
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                v47 = new struct(6);
                                v47.word0 = v45.word0;
                                v47.word1 = 0;
                                v47.word2 = address(v45.word1);
                                v47.word3 = address(v45.word2);
                                v47.word4 = v45.word3;
                                v48 = new struct(1);
                                v48.word0 = 0;
                                v47.word5 = v48;
                                v49 = address(v45.word1).approve(stor_a_0_19, v45.word3).gas(msg.gas);
                                if (bool(v49)) {
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(MEM[MEM[64]] == bool(MEM[MEM[64]]));
                                    v50 = _SafeAdd(10000, block.timestamp);
                                    MEM[MEM[64]] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = 224;
                                    MEM[4 + MEM[64] + 224] = v47.word0;
                                    require(v47.word1 < 2, Panic(33)); // failed convertion to enum type
                                    MEM[4 + MEM[64] + (uint8.max + 1)] = v47.word1;
                                    MEM[4 + MEM[64] + 288] = address(v47.word2);
                                    MEM[4 + MEM[64] + 320] = address(v47.word3);
                                    MEM[4 + MEM[64] + 352] = v47.word4;
                                    MEM[4 + MEM[64] + 384] = 192;
                                    MEM[4 + MEM[64] + 416] = MEM[v47.word5];
                                    v51 = v52 = 0;
                                    while (v51 < MEM[v47.word5]) {
                                        MEM[v51 + (4 + MEM[64] + 416 + 32)] = MEM[v51 + (v47.word5 + 32)];
                                        v51 += 32;
                                    }
                                    MEM[MEM[v47.word5] + (4 + MEM[64] + 416 + 32)] = 0;
                                    MEM[4 + MEM[64] + 32] = address(this);
                                    MEM[4 + MEM[64] + 32 + 32] = False;
                                    MEM[4 + MEM[64] + 32 + 64] = address(this);
                                    MEM[4 + MEM[64] + 32 + 96] = False;
                                    MEM[4 + MEM[64] + 160] = 0;
                                    MEM[196 + MEM[64]] = v50;
                                    v53 = stor_a_0_19.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v21cc.word5] + 4 + MEM[64] + 416 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v53)) {
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        v0 = v54 = v45.word2;
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
                            require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v55 = 0x4fb7(32 + varg0[v2], 32 + varg0[v2] + MEM[varg0[v2]]);
                            require(address(v55.word0), Error('native not supported'));
                            if (!address(v55.word1)) {
                                v55.word1 = this;
                            }
                            if (!(address(v55.word1) - address(0x1))) {
                                v55.word1 = msg.sender;
                            }
                            if (!address(v55.word2)) {
                                v55.word2 = this;
                            }
                            if (!(address(v55.word2) - address(0x1))) {
                                v55.word2 = msg.sender;
                            }
                            v56 = v57 = address(v55.word1) == address(v55.word2);
                            if (v57) {
                                v56 = v58 = v55.word3 > 0;
                            }
                            if (!v56) {
                                if (!(0 - v55.word3)) {
                                    v59 = address(v55.word0).balanceOf(address(v55.word1)).gas(msg.gas);
                                    if (bool(v59)) {
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        v55.word3 = MEM[MEM[64]];
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                if (address(v55.word1) - address(this)) {
                                    0x4255(v55.word3, v55.word2, v55.word1, v55.word0);
                                } else {
                                    0xc6a(v55.word3, v55.word2, v55.word0);
                                }
                                v0 = v60 = v55.word0;
                            } else {
                                v61 = address(v55.word0).balanceOf(address(v55.word1)).gas(msg.gas);
                                if (bool(v61)) {
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(MEM[MEM[64]] >= v55.word3, Error('low balance'));
                                    v0 = v62 = v55.word0;
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            }
                        }
                    } else {
                        require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v63, v0 = v64 = 0x1ccf(varg0[v2]);
                    }
                } else {
                    require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v65 = 0x4fb7(32 + varg0[v2], 32 + varg0[v2] + MEM[varg0[v2]]);
                    if (!(0 - v65.word3)) {
                        v66 = address(v65.word1).balanceOf(this).gas(msg.gas);
                        if (bool(v66)) {
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            v65.word3 = MEM[MEM[64]];
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                    stor_5_0_19 = v65.word0;
                    v67 = new struct(3);
                    v67.word0 = address(v65.word1);
                    v67.word1 = address(v65.word0);
                    v67.word2 = v65.word3;
                    v68 = 0x40aa(this, v65.word0, v67);
                    stor_5_0_19 = 0;
                    v0 = v69 = v65.word2;
                }
            } else {
                require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v70 = 0x4d9a(32 + varg0[v2], 32 + varg0[v2] + MEM[varg0[v2]]);
                v71, v72 = 0x3e2e(v70.word2, v70.word1);
                if (!(0 - v70.word3)) {
                    v73 = address(v70.word1).balanceOf(this).gas(msg.gas);
                    if (bool(v73)) {
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        v70.word3 = MEM[MEM[64]];
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
                if (!(0 - v70.word4)) {
                    v74 = address(v70.word0).getReserves().gas(msg.gas);
                    if (bool(v74)) {
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
                        require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                        require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                        require(MEM[MEM[64] + 64] == uint32(MEM[MEM[64] + 64]));
                        v75 = v76 = uint112(MEM[MEM[64] + 32]);
                        v75 = v77 = uint112(MEM[MEM[64]]);
                        if (address(v70.word1) != address(v72)) {
                        }
                        if (v70.word5) {
                            v78 = _SafeMul(v70.word4, v70.word5);
                            v79 = _SafeDiv(v78, 10 ** 18);
                        }
                        v80 = 0x3f17(v70.word8, v70.word7, v75, v75, v70.word3);
                        v70.word4 = v80;
                        if (v70.word6) {
                            v81 = _SafeMul(v70.word4, v70.word6);
                            v82 = _SafeDiv(v81, 10 ** 18);
                            v70.word4 = v82;
                        }
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
                0xc6a(v70.word3, v70.word0, v70.word1);
                if (address(v70.word1) == address(v72)) {
                    v83 = v84 = 0;
                    v85 = v86 = v70.word4;
                } else {
                    v83 = v87 = v70.word4;
                    v85 = v88 = 0;
                }
                v89 = address(v70.word2).balanceOf(this).gas(msg.gas);
                if (bool(v89)) {
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    v90 = address(v70.word0).factory().gas(msg.gas);
                    if (bool(v90)) {
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(MEM[MEM[64]] == address(MEM[MEM[64]]));
                        if (address(MEM[MEM[64]]) - stor_4_0_19) {
                            v91 = new bytes[](0);
                            if (0) {
                                CALLDATACOPY(v91.data, msg.data.length, 0);
                                v92 = v91.data;
                            }
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = v83;
                            MEM[4 + MEM[64] + 32] = v85;
                            MEM[4 + MEM[64] + 64] = address(this);
                            MEM[4 + MEM[64] + 96] = 128;
                            MEM[4 + MEM[64] + 128] = v91.length;
                            v93 = v94 = 0;
                            while (v93 < v91.length) {
                                MEM[v93 + (4 + MEM[64] + 128 + 32)] = v91[v93];
                                v93 += 32;
                            }
                            MEM[v91.length + (4 + MEM[64] + 128 + 32)] = 0;
                            require(bool((address(v70.word0)).code.size));
                            v95 = address(v70.word0).call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!bool(v95)) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            require(bool((address(v70.word0)).code.size));
                            v96 = address(v70.word0).swap(v83, v85, this).gas(msg.gas);
                            if (!bool(v96)) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                        v97 = address(v70.word2).balanceOf(this).gas(msg.gas);
                        if (bool(v97)) {
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(MEM[MEM[64]] > MEM[MEM[64]], Error('#423525'));
                            v98 = _SafeSub(MEM[MEM[64]], MEM[MEM[64]]);
                            v70.word4 = v98;
                            v0 = v99 = v70.word2;
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
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
            v2 += 1;
        }
    }
}

function 0xc6a(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.transfer(varg1, 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);
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
    require(v2, Error('TransferHelper: TRANSFER_FAILED'));
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (msg.data.length) {
            exit;
        } else {
            receive();
        }
    } else {
        if (0x84645f79 > function_selector >> 224) {
            if (0x3d5fba6c > function_selector >> 224) {
                if (0x7d3513a != function_selector >> 224) {
                    if (0x10d1e85c != function_selector >> 224) {
                        if (0x13371337 == function_selector >> 224) {
                            0x13371337();
                        } else if (0x23a69e75 != function_selector >> 224) {
                            exit;
                        }
                    }
                }
            } else if (0x3d5fba6c == function_selector >> 224) {
                0x3d5fba6c();
            } else if (0x44ad77d6 == function_selector >> 224) {
                0x44ad77d6();
            } else if (0x48639c9d != function_selector >> 224) {
                if (0x78b94ae6 != function_selector >> 224) {
                    exit;
                }
            }
        } else if (0xc4e21d86 > function_selector >> 224) {
            if (0x84645f79 != function_selector >> 224) {
                if (0x84800812 != function_selector >> 224) {
                    if (0x91dd7346 == function_selector >> 224) {
                        unlockCallback(bytes);
                    } else if (0xb9635481 == function_selector >> 224) {
                        0xb9635481();
                    } else {
                        exit;
                    }
                }
            }
        } else if (0xdf6864bf > function_selector >> 224) {
            if (0xc4e21d86 != function_selector >> 224) {
                if (0xc634e060 == function_selector >> 224) {
                    0xc634e060();
                } else {
                    exit;
                }
            }
        } else if (0xdf6864bf == function_selector >> 224) {
            0xdf6864bf();
        } else if (0xfa461e33 != function_selector >> 224) {
            if (0xfe1b3a66 != function_selector >> 224) {
                exit;
            }
        }
        squadV3SwapCallback(int256,int256,bytes);
        0xfe1b3a66();
    }
}
