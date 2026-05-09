// Decompiled by library.dedaub.com
// 2026.04.12 20:26 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
address[2] array_a; // STORAGE[0xa]
mapping (address => bool) _uniswapV3SwapCallback; // STORAGE[0xc]
mapping (address => bool) _setPools; // STORAGE[0xd]
mapping (address => bool) mapping_e; // STORAGE[0xe]



function 0x1295530b(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(0xd0efcbec312871695d0aa17fcb0e80167a3fb474 == msg.sender, Error('caller is not the main owner'));
    return _setPools[varg0];
}

function receive() public payable { 
}

function 0x14d8(uint8 varg0) private { 
    require(varg0 <= 2, Error('Invalid recipient index'));
    if (2 - varg0) {
        require(varg0 < 2, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        return array_a[varg0];
    } else {
        return this;
    }
}

function withdraw(address _address, uint256 _value, uint8 currency) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(0xd0efcbec312871695d0aa17fcb0e80167a3fb474 == msg.sender, Error('caller is not the main owner'));
    v0 = 0x14d8(currency);
    if (_address) {
        MEM[MEM[64] + 68] = _value;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v0));
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v1, /* uint256 */ v2 = _address.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v3 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v3.data, 0, RETURNDATASIZE());
        }
        require(v1);
    } else {
        v4, /* uint256 */ v5 = address(v0).call().value(_value).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v6 = new bytes[](RETURNDATASIZE());
            v5 = v6.data;
            RETURNDATACOPY(v5, 0, RETURNDATASIZE());
        }
        require(v4);
    }
}

function 0x1700(uint256 varg0, uint128 varg1, uint128 varg2, uint256 varg3, struct(5) varg4) private { 
    v0 = 0x3318(varg2);
    if (varg3) {
        v1 = v2 = 0x1000276a4;
    } else {
        v1 = v3 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    MEM[36 + MEM[64] + 32] = address(varg4.word1);
    MEM[36 + MEM[64] + 64] = uint24(varg4.word2);
    MEM[36 + MEM[64] + 96] = int24(varg4.word3);
    MEM[36 + MEM[64] + 128] = address(varg4.word4);
    MEM[36 + MEM[64] + 160] = bool(varg3);
    MEM[36 + MEM[64] + 192] = v0;
    MEM[36 + MEM[64] + 224] = address(v1);
    MEM[36 + MEM[64] + (uint8.max + 1)] = 288;
    MEM[36 + MEM[64] + 288] = 0;
    MCOPY(36 + MEM[64] + 288 + 32, MEM[64] + 32, 0);
    MEM[MEM[64] + 32] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000 | uint224(address(varg4.word0));
    MCOPY(MEM[64], MEM[64] + 32, 324);
    MEM[MEM[64] + 324] = 0;
    v4, /* uint256 */ v5, /* uint256 */ v6 = address(0x4444c5dc75cb358380d2e3de08a90).call(0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v7 = v8 = 96;
    } else {
        v7 = v9 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v9.data, 0, RETURNDATASIZE());
    }
    require(v4, Error('v4 swap failed'));
    require(v6 + MEM[v7] - v6 >= 32);
    if (v0 < 0 == bool(varg3)) {
        v10 = v11 = int128(MEM[v6]);
    } else {
        v10 = v12 = MEM[v6] >> 128;
    }
    require(uint128(v10) >= varg1, Error('v4swap:Too little received'));
    0x20c6(varg4.word1, varg4.word0, uint128(v10), varg2, varg0, varg3);
    return ;
}

function 0x17b7(uint256 varg0, uint128 varg1, uint128 varg2, uint256 varg3, struct(5) varg4) private { 
    if (varg3) {
        v0 = v1 = 0x1000276a4;
    } else {
        v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    MEM[36 + MEM[64] + 32] = address(varg4.word1);
    MEM[36 + MEM[64] + 64] = uint24(varg4.word2);
    MEM[36 + MEM[64] + 96] = int24(varg4.word3);
    MEM[36 + MEM[64] + 128] = address(varg4.word4);
    MEM[36 + MEM[64] + 160] = bool(varg3);
    MEM[36 + MEM[64] + 192] = varg2;
    MEM[36 + MEM[64] + 224] = address(v0);
    MEM[36 + MEM[64] + (uint8.max + 1)] = 288;
    MEM[36 + MEM[64] + 288] = 0;
    MCOPY(36 + MEM[64] + 288 + 32, MEM[64] + 32, 0);
    MEM[MEM[64] + 32] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000 | uint224(address(varg4.word0));
    MCOPY(MEM[64], MEM[64] + 32, 324);
    MEM[MEM[64] + 324] = 0;
    v3, /* uint256 */ v4, /* uint256 */ v5 = address(0x4444c5dc75cb358380d2e3de08a90).call(0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    require(v3, Error('v4 swap failed'));
    require(v5 + MEM[v6] - v5 >= 32);
    if (varg2 < 0 == bool(varg3)) {
        v9 = v10 = int128(MEM[v5]);
    } else {
        v9 = v11 = MEM[v5] >> 128;
    }
    v12 = 0x3318(int128(v9));
    require(uint128(v12) <= varg1, Error('v4swap:Too much requested'));
    0x20c6(varg4.word1, varg4.word0, varg2, uint128(v12), varg0, varg3);
    return ;
}

function 0x3198a42d(uint256 varg0, uint8 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(0xd0efcbec312871695d0aa17fcb0e80167a3fb474 == msg.sender, Error('caller is not the main owner'));
    MEM[MEM[64] + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 | uint224(this);
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v0, /* uint256 */ v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v3 = v4 = 96;
    } else {
        v3 = v5 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
    }
    require(v0, Error('WETH balanceOf call failed'));
    require(v2 + MEM[v3] - v2 >= 32);
    require(MEM[v2] >= varg0, Error('Insufficient WETH balance'));
    MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(varg0);
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v6, /* uint256 */ v7 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    require(v6, Error('WETH withdraw failed'));
    v9 = 0x14d8(varg1);
    v10, /* uint256 */ v11 = address(v9).call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v12 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
    }
    require(v10, Error('ETH transfer failed'));
    MEM[MEM[64] + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 | uint224(this);
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v13, /* uint256 */ v14, /* uint256 */ v15 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v16 = v17 = 96;
    } else {
        v16 = v18 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
    }
    require(v13, Error('WETH balanceOf call failed'));
    require(v15 + MEM[v16] - v15 >= 32);
    v19 = _SafeSub(MEM[v2], MEM[v15]);
    require(v19 == varg0, Error('WETH balance change mismatch'));
}

function unwrapNative(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(0xd0efcbec312871695d0aa17fcb0e80167a3fb474 == msg.sender, Error('caller is not the main owner'));
    MEM[MEM[64] + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 | uint224(this);
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v0, /* uint256 */ v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v3 = v4 = 96;
    } else {
        v3 = v5 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
    }
    require(v0, Error('WETH balanceOf call failed'));
    require(v2 + MEM[v3] - v2 >= 32);
    require(MEM[v2] >= _amount, Error('Insufficient WETH balance'));
    MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(_amount);
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v6, /* uint256 */ v7 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    require(v6, Error('WETH withdraw failed'));
}

function 0x1bec(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 > 0, Error('in:INSUFFICIENT_OUTPUT_AMOUNT'));
    v0 = v1 = varg1 > 0;
    if (v1) {
        v0 = v2 = varg0 > 0;
    }
    require(v0, Error('in:INSUFFICIENT_LIQUIDITY'));
    v3 = _SafeMul(varg1, varg2);
    v4 = _SafeMul(1000, v3);
    v5 = _SafeSub(varg0, varg2);
    v6 = _SafeMul(997, v5);
    v7 = _SafeDiv(v4, v6);
    v8 = _SafeAdd(1, v7);
    return v8;
}

function 0x3802acc2(bytes varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(_uniswapV3SwapCallback[msg.sender], Error('caller is not an owner'));
    MEM[36 + MEM[64] + 32] = varg0.length;
    CALLDATACOPY(36 + MEM[64] + 64, varg0.data, varg0.length);
    MEM[64 + (varg0.length + (36 + MEM[64]))] = 0;
    MEM[MEM[64] + 32] = 0x48c8949100000000000000000000000000000000000000000000000000000000 | uint224(32);
    MCOPY(MEM[64], MEM[64] + 32, (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0.length + 31) + (36 + MEM[64]) + 64 - MEM[64] - 32);
    MEM[MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0.length + 31) + (36 + MEM[64]) + 64 - MEM[64] - 32)] = 0;
    v0, /* uint256 */ v1 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0.length + 31 + 36 + MEM[64] + 64 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v2 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v2.data, 0, RETURNDATASIZE());
    }
    require(v0, Error('Unlock failed'));
}

function 0x3ea790fb(address[] varg0, address[] varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg0.length << 5) + 32 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg0.length << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 32 + (4 + varg0 + (varg0.length << 5))) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v3 += 32;
        v1 = v1 + 32;
    }
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new address[](varg1.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg1.length << 5) + 32 + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg1.length << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(32 + (4 + varg1 + (varg1.length << 5)) <= msg.data.length);
    v8 = v9 = varg1.data;
    while (v8 < 32 + (4 + varg1 + (varg1.length << 5))) {
        require(msg.data[v8] == address(msg.data[v8]));
        MEM[v6] = msg.data[v8];
        v8 += 32;
        v6 = v6 + 32;
    }
    require(0xd0efcbec312871695d0aa17fcb0e80167a3fb474 == msg.sender, Error('caller is not the main owner'));
    v10 = v11 = 0;
    while (v10 < v0.length) {
        require(v10 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        _setPools[address(v0[v10])] = 0;
        v10 += 1;
    }
    v12 = v13 = 0;
    while (v12 < v5.length) {
        require(v12 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        mapping_e[address(v5[v12])] = 0;
        v12 += 1;
    }
    exit;
}

function 0x4bb6c306(struct(6) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 192);
    require(_uniswapV3SwapCallback[msg.sender], Error('caller is not an owner'));
    require(msg.data.length - (4 + varg0) >= 192);
    v0 = new struct(6);
    require(!((v0 + 192 < v0) | (v0 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word0 == address(varg0.word0));
    v0.word0 = varg0.word0;
    require(varg0.word1 == uint8(varg0.word1));
    v0.word1 = varg0.word1;
    require(varg0.word2 == bool(varg0.word2));
    v0.word2 = varg0.word2;
    v0.word3 = varg0.word3;
    v0.word4 = varg0.word4;
    require(msg.data[4 + varg0 + 160] <= uint64.max);
    v1 = varg0.word5;
    require(varg0.word5 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word5 + v1.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v0.word5 = v2;
    v3 = v4 = 0x14d8(v0.word1);
    if (!address(v4)) {
        v3 = v5 = this;
    }
    require(_setPools[address(v0.word0)], Error(0x76336e6c));
    if (v0.word2) {
        v6 = v7 = 0x1000276a4;
    } else {
        v6 = v8 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    MEM[36 + MEM[64] + 32] = bool(v0.word2);
    MEM[36 + MEM[64] + 64] = v0.word3;
    MEM[36 + MEM[64] + 96] = address(v6);
    MEM[36 + MEM[64] + 128] = 160;
    MEM[36 + MEM[64] + 160] = v9.length;
    MCOPY(36 + MEM[64] + 160 + 32, v9.data, v9.length);
    MEM[36 + MEM[64] + 160 + v9.length + 32] = 0;
    MEM[MEM[64] + 32] = 0x128acb0800000000000000000000000000000000000000000000000000000000 | uint224(address(v3));
    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v9.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MEM[MEM[64] + (36 + MEM[64] + 160 + (v9.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
    v10, /* uint256 */ v11, /* uint256 */ v12 = address(v0.word0).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v158fV0xe06V0x21a.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v13 = v14 = 96;
    } else {
        v13 = v15 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
    }
    require(v10, Error('v3 swap failed'));
    require(v12 + MEM[v13] - v12 >= 64);
    v16 = v17 = MEM[v12];
    v16 = MEM[v12 + 32];
    if (!v0.word2) {
    }
    require(v16 == v0.word3, Error('amountOutReceived no equel with amountOut'));
    require(v16 <= v0.word4, Error('Too much requested'));
}

function 0x20c6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4, uint256 varg5) private { 
    MEM[96 + MEM[64] + 36] = keccak256(address(this), address(varg1));
    MEM[MEM[64] + 32] = 0xf135baaa00000000000000000000000000000000000000000000000000000000 | uint224(MEM[MEM[64] + 32]);
    MCOPY(MEM[64], MEM[64] + 32, 164 + MEM[64] - MEM[64] - 32);
    MEM[MEM[64] + (164 + MEM[64] - MEM[64] - 32)] = 0;
    v0, /* uint256 */ v1, /* uint256 */ v2 = address(0x4444c5dc75cb358380d2e3de08a90).staticcall(MEM[MEM[64]:MEM[64] + MEM[64] + 164 + MEM[64] - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v3 = v4 = 96;
    } else {
        v3 = v5 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
    }
    require(v0, Error('exttload failed'));
    require(v2 + MEM[v3] - v2 >= 32);
    MEM[MEM[64] + 32] = 0xf135baaa00000000000000000000000000000000000000000000000000000000 | uint224(keccak256(address(this), address(varg0)));
    MCOPY(MEM[64], MEM[64] + 32, 164 + MEM[64] - MEM[64] - 32);
    MEM[MEM[64] + (164 + MEM[64] - MEM[64] - 32)] = 0;
    v6, /* uint256 */ v7, /* uint256 */ v8 = address(0x4444c5dc75cb358380d2e3de08a90).staticcall(MEM[MEM[64]:MEM[64] + MEM[64] + 164 + MEM[64] - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v9 = v10 = 96;
    } else {
        v9 = v11 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
    }
    require(v6, Error('exttload failed'));
    require(v8 + MEM[v9] - v8 >= 32);
    if (!varg5) {
        require(MEM[v8] < 0, Error('deltaAfter1>=0'));
        v12 = 0x3318(MEM[v8]);
        require(MEM[v2] > 0, Error('deltaAfter0<=0'));
        require(MEM[v2] >= varg2, Error('credit < amountOut'));
        MEM[MEM[64] + 68] = varg4;
        MEM[MEM[64] + 100] = MEM[v2];
        MEM[MEM[64] + 32] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000 | uint224(address(varg1));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v13, /* uint256 */ v14 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v15 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
        }
        require(v13, Error('take failed'));
        require(v12 <= varg3, Error('debt > amountIn'));
        0x265d(varg0, v12);
        return ;
    } else {
        require(MEM[v2] < 0, Error('deltaAfter0>=0'));
        v16 = 0x3318(MEM[v2]);
        require(MEM[v8] > 0, Error('deltaAfter1<=0'));
        require(MEM[v8] >= varg2, Error('credit < amountOut'));
        MEM[MEM[64] + 68] = varg4;
        MEM[MEM[64] + 100] = MEM[v8];
        MEM[MEM[64] + 32] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000 | uint224(address(varg0));
        MCOPY(MEM[64], MEM[64] + 32, 100);
        MEM[MEM[64] + 100] = 0;
        v17, /* uint256 */ v18 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v19 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v19.data, 0, RETURNDATASIZE());
        }
        require(v17, Error('take failed'));
        require(v16 <= varg3, Error('debt > amountIn'));
        0x265d(varg1, v16);
        return ;
    }
}

function setPools(address[] tokens, address[] pools) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(tokens <= uint64.max);
    require(4 + tokens + 31 < msg.data.length);
    require(tokens.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](tokens.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (tokens.length << 5) + 32 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (tokens.length << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + tokens + (tokens.length << 5)) <= msg.data.length);
    v3 = v4 = tokens.data;
    while (v3 < 32 + (4 + tokens + (tokens.length << 5))) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v3 += 32;
        v1 = v1 + 32;
    }
    require(pools <= uint64.max);
    require(4 + pools + 31 < msg.data.length);
    require(pools.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new address[](pools.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (pools.length << 5) + 32 + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (pools.length << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(32 + (4 + pools + (pools.length << 5)) <= msg.data.length);
    v8 = v9 = pools.data;
    while (v8 < 32 + (4 + pools + (pools.length << 5))) {
        require(msg.data[v8] == address(msg.data[v8]));
        MEM[v6] = msg.data[v8];
        v8 += 32;
        v6 = v6 + 32;
    }
    require(0xd0efcbec312871695d0aa17fcb0e80167a3fb474 == msg.sender, Error('caller is not the main owner'));
    v10 = v11 = 0;
    while (v10 < v0.length) {
        require(v10 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        _setPools[address(v0[v10])] = 1;
        v10 += 1;
    }
    v12 = v13 = 0;
    while (v12 < v5.length) {
        require(v12 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        mapping_e[address(v5[v12])] = 1;
        v12 += 1;
    }
    exit;
}

function 0x234c(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 > 0, Error('out:INSUFFICIENT_INPUT_AMOUNT'));
    v0 = v1 = varg1 > 0;
    if (v1) {
        v0 = v2 = varg0 > 0;
    }
    require(v0, Error('out:INSUFFICIENT_LIQUIDITY'));
    v3 = _SafeMul(997, varg2);
    v4 = _SafeMul(v3, varg0);
    v5 = _SafeMul(1000, varg1);
    v6 = _SafeAdd(v5, v3);
    v7 = _SafeDiv(v4, v6);
    return v7;
}

function 0x7ee3a2d4(struct(6) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 192);
    require(_uniswapV3SwapCallback[msg.sender], Error('caller is not an owner'));
    require(msg.data.length - (4 + varg0) >= 192);
    v0 = new struct(6);
    require(!((v0 + 192 < v0) | (v0 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word0 == address(varg0.word0));
    v0.word0 = varg0.word0;
    require(varg0.word1 == uint8(varg0.word1));
    v0.word1 = varg0.word1;
    require(varg0.word2 == bool(varg0.word2));
    v0.word2 = varg0.word2;
    v0.word3 = varg0.word3;
    v0.word4 = varg0.word4;
    require(msg.data[4 + varg0 + 160] <= uint64.max);
    v1 = varg0.word5;
    require(varg0.word5 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word5 + v1.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v0.word5 = v2;
    v3 = v4 = 0x14d8(v0.word1);
    if (!address(v4)) {
        v3 = v5 = this;
    }
    require(_setPools[address(v0.word0)], Error(0x76336e6c));
    if (v0.word2) {
        v6 = v7 = 0x1000276a4;
    } else {
        v6 = v8 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    MEM[36 + MEM[64] + 32] = bool(v0.word2);
    MEM[36 + MEM[64] + 64] = v0.word3;
    MEM[36 + MEM[64] + 96] = address(v6);
    MEM[36 + MEM[64] + 128] = 160;
    MEM[36 + MEM[64] + 160] = v9.length;
    MCOPY(36 + MEM[64] + 160 + 32, v9.data, v9.length);
    MEM[36 + MEM[64] + 160 + v9.length + 32] = 0;
    MEM[MEM[64] + 32] = 0x128acb0800000000000000000000000000000000000000000000000000000000 | uint224(address(v3));
    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v9.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MEM[MEM[64] + (36 + MEM[64] + 160 + (v9.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
    v10, /* uint256 */ v11, /* uint256 */ v12 = address(v0.word0).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v1689V0xf2fV0x258.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v13 = v14 = 96;
    } else {
        v13 = v15 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
    }
    require(v10, Error('v3 swap failed'));
    require(v12 + MEM[v13] - v12 >= 64);
    v16 = v17 = MEM[v12];
    v16 = MEM[v12 + 32];
    if (!v0.word2) {
    }
    v18 = 0x3318(v16);
    require(v18 >= v0.word4, Error('Too little received'));
    return v18;
}

function 0x265d(address varg0, uint256 varg1) private { 
    if (varg0) {
        MEM[MEM[64] + 32] = 0xa584119400000000000000000000000000000000000000000000000000000000 | uint224(varg0);
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v0, /* uint256 */ v1 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v2 = new bytes[](RETURNDATASIZE());
            v1 = v2.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        require(v0, Error('sync failed'));
        MEM[MEM[64] + 68] = varg1;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(0x4444c5dc75cb358380d2e3de08a90);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v3, /* uint256 */ v4 = varg0.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v5 = new bytes[](RETURNDATASIZE());
            v4 = v5.data;
            RETURNDATACOPY(v4, 0, RETURNDATASIZE());
        }
        require(v3, Error('transfer failed'));
        v6 = new bytes[](4);
        MEM[v6.data] = 0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(MEM[v6.data]);
        v7 = v8 = 0x4444c5dc75cb358380d2e3de08a90;
        varg1 = v9 = 0;
        MCOPY(MEM[64], v6.data, v6.length);
        v10 = MEM[64] + v6.length;
        MEM[v10] = 0;
    } else {
        MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(varg1);
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v11, /* uint256 */ v12 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v13 = new bytes[](RETURNDATASIZE());
            v12 = v13.data;
            RETURNDATACOPY(v12, 0, RETURNDATASIZE());
        }
        require(v11, Error('unwrap failed'));
        v14 = new bytes[](4);
        MEM[v14.data] = 0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(MEM[v14.data]);
        v7 = v15 = 0x4444c5dc75cb358380d2e3de08a90;
        MCOPY(MEM[64], v14.data, v14.length);
        v10 = v16 = MEM[64] + v14.length;
        MEM[v16] = 0;
    }
    v17, /* uint256 */ v18 = v7.settle(0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(MEM[v6.data]), 0, 0).value(varg1).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v19 = new bytes[](RETURNDATASIZE());
        v18 = v19.data;
        RETURNDATACOPY(v18, 0, RETURNDATASIZE());
    }
    require(v17, Error('settle failed'));
    return ;
}

function wrapNative(uint256 _amount) public payable { 
    require(msg.data.length - 4 >= 32);
    require(0xd0efcbec312871695d0aa17fcb0e80167a3fb474 == msg.sender, Error('caller is not the main owner'));
    require(this.balance >= _amount, Error('Insufficient ETH balance'));
    v0 = new bytes[](4);
    MEM[v0.data] = 0xd0e30db000000000000000000000000000000000000000000000000000000000 | uint224(MEM[v0.data]);
    MCOPY(MEM[64], v0.data, v0.length);
    MEM[MEM[64] + v0.length] = 0;
    v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).value(_amount).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v3 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v3.data, 0, RETURNDATASIZE());
    }
    require(v1);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    v0 = 4 + rawData + 32;
    require(v1.data <= msg.data.length);
    require(0x4444c5dc75cb358380d2e3de08a90 == msg.sender, Error(0x4e6f7420706d));
    require(_uniswapV3SwapCallback[tx.origin], Error('origin not owner'));
    require(v0 + msg.data[4 + rawData] - v0 >= 32);
    require(rawData.word1 == uint8(rawData.word1));
    if (0 - uint8(rawData.word1)) {
        if (!(1 - uint8(rawData.word1))) {
            require(v0 + msg.data[4 + rawData] - v0 >= 320);
            require(rawData.word1 == uint8(rawData.word1));
            require(v0 + msg.data[4 + rawData] - v0 - 32 >= 160);
            v2 = new struct(5);
            require(!((v2 + 160 < v2) | (v2 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(rawData.word2 == address(rawData.word2));
            v2.word0 = rawData.word2;
            require(rawData.word3 == address(rawData.word3));
            v2.word1 = rawData.word3;
            require(rawData.word4 == uint24(rawData.word4));
            v2.word2 = rawData.word4;
            require(rawData.word5 == int24(rawData.word5));
            v2.word3 = rawData.word5;
            require(rawData.word6 == address(rawData.word6));
            v2.word4 = rawData.word6;
            require(rawData.word7 == bool(rawData.word7));
            require(rawData.word8 == uint128(rawData.word8));
            require(rawData.word9 == uint128(rawData.word9));
            require(rawData.word10 == uint8(rawData.word10));
            v3 = v4 = 0x14d8(rawData.word10);
            if (!address(v4)) {
                v3 = v5 = this;
            }
            0x17b7(v3, rawData.word9, rawData.word8, rawData.word7, v2);
        }
    } else {
        require(v0 + msg.data[4 + rawData] - v0 >= 320);
        require(rawData.word1 == uint8(rawData.word1));
        require(v0 + msg.data[4 + rawData] - v0 - 32 >= 160);
        v6 = new struct(5);
        require(!((v6 + 160 < v6) | (v6 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(rawData.word2 == address(rawData.word2));
        v6.word0 = rawData.word2;
        require(rawData.word3 == address(rawData.word3));
        v6.word1 = rawData.word3;
        require(rawData.word4 == uint24(rawData.word4));
        v6.word2 = rawData.word4;
        require(rawData.word5 == int24(rawData.word5));
        v6.word3 = rawData.word5;
        require(rawData.word6 == address(rawData.word6));
        v6.word4 = rawData.word6;
        require(rawData.word7 == bool(rawData.word7));
        require(rawData.word8 == uint128(rawData.word8));
        require(rawData.word9 == uint128(rawData.word9));
        require(rawData.word10 == uint8(rawData.word10));
        v7 = v8 = 0x14d8(rawData.word10);
        if (!address(v8)) {
            v7 = v9 = this;
        }
        0x1700(v7, rawData.word9, rawData.word8, rawData.word7, v6);
    }
    v10 = new uint256[](0);
    MCOPY(v10.data, MEM[64] + 32, 0);
    MEM[v10.data] = 0;
    return v10;
}

function 0xba8a32f6() public nonPayable { 
    v0 = 0x2e3f(4, msg.data.length);
    require(_uniswapV3SwapCallback[msg.sender], Error('caller is not an owner'));
    require(v0 + (msg.data.length - v0) - v0 >= 224);
    v1 = new struct(7);
    require(!((v1 + 224 < v1) | (v1 + 224 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1.word0 = msg.data[v0];
    v1.word1 = msg.data[v0 + 32];
    require(msg.data[v0 + 64] == address(msg.data[v0 + 64]));
    v1.word2 = msg.data[v0 + 64];
    require(msg.data[v0 + 96] == address(msg.data[v0 + 96]));
    v1.word3 = msg.data[v0 + 96];
    require(msg.data[v0 + 128] == address(msg.data[v0 + 128]));
    v1.word4 = msg.data[v0 + 128];
    require(msg.data[v0 + 160] == bool(msg.data[v0 + 160]));
    v1.word5 = msg.data[v0 + 160];
    require(msg.data[v0 + 192] == uint8(msg.data[v0 + 192]));
    v1.word6 = msg.data[v0 + 192];
    require(mapping_e[address(v1.word2)], Error(0x76326e6c));
    v2 = v3 = v1.word3;
    v2 = v4 = v1.word4;
    if (address(v3) >= address(v4)) {
    }
    v5 = new bytes[](4);
    MEM[v5.data] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 | uint224(MEM[v5.data]);
    MCOPY(MEM[64], v5.data, v5.length);
    MEM[MEM[64] + v5.length] = 0;
    v6, /* uint256 */ v7, /* uint256 */ v8 = address(v1.word2).getReserves().gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v9 = v10 = 96;
    } else {
        v9 = v11 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
    }
    require(v6, Error('getReserves failed'));
    require(v8 + MEM[v9] - v8 >= 64);
    v12 = v13 = MEM[v8];
    require(v13 == uint112(v13));
    v12 = MEM[v8 + 32];
    require(v12 == uint112(v12));
    if (address(v3) != address(v2)) {
    }
    v14 = v15 = 0x234c(uint112(v12), uint112(v12), v1.word0);
    require(v15 >= v1.word1, Error('INSUFFICIENT_OUTPUT_AMOUNT'));
    MEM[MEM[64] + 68] = v1.word0;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v1.word2));
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v16, /* uint256 */ v17 = address(v1.word3).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v18 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
    }
    require(v16, Error('transfer failed'));
    v14 = v19 = 0;
    if (v1.word5) {
    }
    v20 = v21 = 0x14d8(v1.word6);
    if (!address(v21)) {
        v20 = this;
    }
    MEM[MEM[64] + 68] = v14;
    MEM[MEM[64] + 100] = address(v20);
    MEM[MEM[64] + 132] = 128;
    MEM[MEM[64] + 164] = 0;
    MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000 | uint224(v14);
    MCOPY(MEM[64], MEM[64] + 32, 164);
    MEM[MEM[64] + 164] = 0;
    v22, /* uint256 */ v23 = address(v1.word2).call(MEM[MEM[64]:MEM[64] + 164], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v24 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v24.data, 0, RETURNDATASIZE());
    }
    require(v22, Error('v2 exactInput swap failed'));
    return v15;
}

function 0xc6961584(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(0xd0efcbec312871695d0aa17fcb0e80167a3fb474 == msg.sender, Error('caller is not the main owner'));
    return mapping_e[varg0];
}

function 0x2e3f(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 224);
    return varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x3318(uint256 varg0) private { 
    require(varg0 + int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_setPools[msg.sender], Error('v3msnl'));
    require(_uniswapV3SwapCallback[tx.origin], Error('tx.origin is not owner'));
    if (amount0Delta <= 0) {
        require(amount1Delta > 0);
    }
    require(!(32 - msg.data[4 + data]));
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 == address(data.word1));
    MEM[MEM[64] + 68] = v1;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v2, /* uint256 */ v3 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v4 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v4.data, 0, RETURNDATASIZE());
    }
    require(v2, Error('transfer failed'));
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_setPools[msg.sender], Error('v3msnl'));
    require(_uniswapV3SwapCallback[tx.origin], Error('tx.origin is not owner'));
    if (amount0Delta <= 0) {
        require(amount1Delta > 0);
    }
    require(!(32 - msg.data[4 + data]));
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 == address(data.word1));
    MEM[MEM[64] + 68] = v1;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v2, /* uint256 */ v3 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v4 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v4.data, 0, RETURNDATASIZE());
    }
    require(v2, Error('transfer failed'));
}

function 0x0b313e62(struct(8) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= uint8.max + 1);
    require(_uniswapV3SwapCallback[msg.sender], Error('caller is not an owner'));
    require(msg.data.length - (4 + varg0) >= uint8.max + 1);
    v0 = new struct(8);
    require(!((v0 + (uint8.max + 1) < v0) | (v0 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0.word0;
    v0.word1 = varg0.word1;
    require(varg0.word2 == address(varg0.word2));
    v0.word2 = varg0.word2;
    require(varg0.word3 == address(varg0.word3));
    v0.word3 = varg0.word3;
    require(varg0.word4 == address(varg0.word4));
    v0.word4 = varg0.word4;
    require(varg0.word5 == bool(varg0.word5));
    v0.word5 = varg0.word5;
    require(varg0.word6 == uint8(varg0.word6));
    v0.word6 = varg0.word6;
    require(msg.data[4 + varg0 + 224] <= uint64.max);
    v1 = varg0.word7;
    require(varg0.word7 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word7 + v1.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v0.word7 = v2;
    require(mapping_e[address(v0.word2)], Error(0x76326e6c));
    v3 = v4 = v0.word3;
    v3 = v5 = v0.word4;
    if (address(v4) >= address(v5)) {
    }
    v6 = new bytes[](4);
    MEM[v6.data] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 | uint224(MEM[v6.data]);
    MCOPY(MEM[64], v6.data, v6.length);
    MEM[MEM[64] + v6.length] = 0;
    v7, /* uint256 */ v8, /* uint256 */ v9 = address(v0.word2).getReserves().gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v10 = v11 = 96;
    } else {
        v10 = v12 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
    }
    require(v7, Error('getReserves failed'));
    require(v9 + MEM[v10] - v9 >= 64);
    v13 = v14 = MEM[v9];
    require(v14 == uint112(v14));
    v13 = MEM[v9 + 32];
    require(v13 == uint112(v13));
    if (address(v4) != address(v3)) {
    }
    v15 = 0x1bec(uint112(v13), uint112(v13), v0.word0);
    require(v15 <= v0.word1, Error('EXCESSIVE_INPUT_AMOUNT'));
    require(!(0 - v16.length));
    MEM[MEM[64] + 68] = v15;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v0.word2));
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v17, /* uint256 */ v18 = address(v0.word3).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v19 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v19.data, 0, RETURNDATASIZE());
    }
    require(v17, Error('transfer failed'));
    v20 = v21 = 0;
    if (!v0.word5) {
        v20 = v22 = v0.word0;
    } else {
        v20 = v0.word0;
    }
    v23 = v24 = 0x14d8(v0.word6);
    if (!address(v24)) {
        v23 = this;
    }
    MEM[36 + MEM[64] + 32] = v20;
    MEM[36 + MEM[64] + 64] = address(v23);
    MEM[36 + MEM[64] + 96] = 128;
    MEM[36 + MEM[64] + 128] = v25.length;
    MCOPY(36 + MEM[64] + 128 + 32, v25.data, v25.length);
    MEM[36 + MEM[64] + 128 + v25.length + 32] = 0;
    MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000 | uint224(v20);
    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 128 + (v25.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MEM[MEM[64] + (36 + MEM[64] + 128 + (v25.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
    v26, /* uint256 */ v27 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 128 + v13acV0x32bV0x10d.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v28 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v28.data, 0, RETURNDATASIZE());
    }
    require(v26, Error('v2 exactOutput swap failed'));
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
    } else if (0x4bb6c306 > function_selector >> 224) {
        if (0x3198a42d > function_selector >> 224) {
            if (0xb313e62 == function_selector >> 224) {
                0x0b313e62();
            } else if (0x1295530b == function_selector >> 224) {
                0x1295530b();
            } else if (0x23a69e75 == function_selector >> 224) {
                pancakeV3SwapCallback(int256,int256,bytes);
            } else if (0x2892a977 == function_selector >> 224) {
                withdraw(address,uint256,uint8);
            } else {
                exit;
            }
        } else if (0x3198a42d == function_selector >> 224) {
            0x3198a42d();
        } else if (0x34b10a6d == function_selector >> 224) {
            unwrapNative(uint256);
        } else if (0x3802acc2 == function_selector >> 224) {
            0x3802acc2();
        } else if (0x3ea790fb == function_selector >> 224) {
            0x3ea790fb();
        } else {
            exit;
        }
    } else if (0x91dd7346 > function_selector >> 224) {
        if (0x4bb6c306 == function_selector >> 224) {
            0x4bb6c306();
        } else if (0x6f601217 == function_selector >> 224) {
            setPools(address[],address[]);
        } else if (0x7ee3a2d4 == function_selector >> 224) {
            0x7ee3a2d4();
        } else if (0x9169d833 == function_selector >> 224) {
            wrapNative(uint256);
        } else {
            exit;
        }
    } else if (0x91dd7346 == function_selector >> 224) {
        unlockCallback(bytes);
    } else if (0xba8a32f6 == function_selector >> 224) {
        0xba8a32f6();
    } else if (0xc6961584 == function_selector >> 224) {
        0xc6961584();
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else {
        exit;
    }
}
