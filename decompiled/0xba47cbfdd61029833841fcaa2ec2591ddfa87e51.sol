// Decompiled by library.dedaub.com
// 2025.12.07 18:06 UTC
// Compiled using the solidity compiler version 0.8.24


// Data structures and variables inferred from the use of storage instructions
uint8 stor_0_0_0; // STORAGE[0x0] bytes 0 to 0
mapping (address => bool) _unwrapEth; // STORAGE[0x1]
mapping (address => bool) mapping_2; // STORAGE[0x2]
mapping (address => bool) _uniswapV3SwapCallback; // STORAGE[0x3]
mapping (address => bool) mapping_4; // STORAGE[0x4]
mapping (address => bool) mapping_5; // STORAGE[0x5]
mapping (address => bool) _pancakeV3SwapCallback; // STORAGE[0x6]
mapping (address => bool) _dexCallback; // STORAGE[0x7]
mapping (address => bool) mapping_8; // STORAGE[0x8]
mapping (address => struct_1621) _unlockCallback; // STORAGE[0x9]

struct struct_1621 { uint160 field0; uint160 field1_0_19; uint24 field1_20_22; int24 field1_23_25; address field2; };


function 0xfcdcb2b8() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x622d50c9d1afdd7ad6c6cbe0b763297de13286df7f1c00abbb47851ddfbd58a9;
}

function receive() public payable { 
}

function 0xfb034fb2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(!(address(varg1) - varg1));
    require(_unwrapEth[msg.sender], Error(21301));
    require(mapping_5[address(varg1)], Error(21299));
    v0, /* uint256 */ v1 = address(varg1).exchange_extended(varg2, varg3, varg4, varg5, 0, address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), 0xc4da52dc00000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v2 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v2 = v3 = MEM[64] + 32;
        }
        require(v2 - MEM[64] >= 32);
        0x3481(varg0);
        exit;
    } else {
        0x3481(varg0);
        exit;
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    require(_uniswapV3SwapCallback[msg.sender], Error(21299));
    if (0 != amount0Delta > 0) {
    }
    v1 = new bytes[](100);
    MEM[v1.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v1 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
    MEM[v1 + 68] = msg.sender;
    MEM[v1 + 100] = v2;
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v1.length;
    v4, /* uint256 */ v5 = data.length.transferFrom(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), msg.sender, v2).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v5 = v7.data;
        RETURNDATACOPY(v5, 0, RETURNDATASIZE());
    }
}

function 0xe2f48005(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(int24(varg1) - varg1));
    require(!(int24(varg2) - varg2));
    require(!(uint128(varg3) - varg3));
    require(_unwrapEth[msg.sender], Error(21301));
    require(_uniswapV3SwapCallback[address(varg0)], Error(21299));
    require(varg6 >= block.timestamp, Error(21300));
    v0, /* uint256 */ v1, /* uint256 */ v2 = address(varg0).mint(this, int24(varg1), int24(varg2), uint128(varg3), 160, 0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v3 = 0;
    v2 = v4 = 0;
    if (v0) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v5 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v5 = v6 = MEM[64] + 64;
        }
        require(v5 - MEM[64] >= 64);
    }
    v7 = v8 = v1 >= varg4;
    if (v8) {
        v7 = v9 = v2 >= varg5;
    }
    require(v7, Error(0x533135));
    return v1, v2;
}

function 0xd9e301b7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, bytes varg5) public payable { 
    v0 = v1 = 0;
    require(msg.data.length - 4 >= 192);
    require(!(address(varg1) - varg1));
    require(!(bool(varg4) - varg4));
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < msg.data.length);
    require(varg5.length <= uint64.max);
    require(4 + varg5 + varg5.length + 32 <= msg.data.length);
    v2 = v3 = address(varg1);
    v4 = v5 = 64;
    require(_pancakeV3SwapCallback[v3], Error(0x533137));
    require(_unwrapEth[msg.sender], Error(21301));
    if (v1 == varg4) {
        v6 = MEM[v5];
        MEM[v6] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v6 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        MEM[v6 + 4 + 32] = bool(varg4);
        MEM[v6 + 4 + 64] = varg2;
        MEM[v6 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        MEM[v6 + 4 + 128] = 160;
        MEM[v6 + 4 + 160] = varg5.length;
        CALLDATACOPY(v6 + 4 + 192, varg5.data, varg5.length);
        MEM[192 + (varg5.length + (v6 + 4))] = 0;
        v7 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + (v6 + 4) + 192;
        // Unknown jump to Block 0x63f0x24b. Refer to 3-address code (TAC);
    } else {
        v6 = v8 = MEM[v5];
        MEM[v8] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        MEM[v8 + 4 + 32] = bool(varg4);
        MEM[v8 + 4 + 64] = varg2;
        MEM[v8 + 4 + 96] = address(0x1000276a4);
        MEM[v8 + 4 + 128] = 160;
        MEM[v8 + 4 + 160] = varg5.length;
        CALLDATACOPY(v8 + 4 + 192, varg5.data, varg5.length);
        MEM[192 + (varg5.length + (v8 + 4))] = 0;
        v7 = v9 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + (v8 + 4) + 192;
    }
    v10 = v2.call(MEM[v604V0x6bb0x24b:v604V0x6bb0x24b + v2a08V0x6bb0x24b - v604V0x6bb0x24b], MEM[v604V0x6bb0x24b:v604V0x6bb0x24b + v24b0x6b6]).value(v0).gas(msg.gas);
    require(v10, MEM[64], RETURNDATASIZE());
    v11 = 0;
    v12 = 0;
    if (v10) {
        if (RETURNDATASIZE() < v5) {
            v4 = RETURNDATASIZE();
        }
        require(!((v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v6 + v4 - v6 >= 64);
        v11 = v13 = MEM[v6];
        v12 = v14 = MEM[v6 + 32];
    }
    if (v11 <= 0) {
        v15 = 0x2a0b(v11);
        v16 = v17 = v15 >= v18;
    } else {
        v19 = 0x2a0b(v12);
        v16 = v19 >= v18;
    }
    require(v16, Error(0x533133));
    if (varg0) {
        require(mapping_4[block.coinbase], Error(0x533134));
        v20, /* uint256 */ v21 = block.coinbase.call().value(varg0);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v22 = v23 = new bytes[](RETURNDATASIZE());
            require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
            v21 = v23.data;
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
        }
    }
}

function 0xd44db9b6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, bytes varg6) public payable { 
    v0 = v1 = 0;
    require(msg.data.length - 4 >= 224);
    require(!(address(varg1) - varg1));
    require(!(bool(varg4) - varg4));
    require(varg6 <= uint64.max);
    require(4 + varg6 + 31 < msg.data.length);
    require(varg6.length <= uint64.max);
    require(4 + varg6 + varg6.length + 32 <= msg.data.length);
    require(block.timestamp <= varg5, Error(21300));
    v2 = v3 = address(varg1);
    v4 = v5 = 64;
    require(_pancakeV3SwapCallback[v3], Error(0x533137));
    require(_unwrapEth[msg.sender], Error(21301));
    if (v1 == varg4) {
        v6 = MEM[v5];
        MEM[v6] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v6 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        MEM[v6 + 4 + 32] = bool(varg4);
        MEM[v6 + 4 + 64] = varg2;
        MEM[v6 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        MEM[v6 + 4 + 128] = 160;
        MEM[v6 + 4 + 160] = varg6.length;
        CALLDATACOPY(v6 + 4 + 192, varg6.data, varg6.length);
        MEM[192 + (varg6.length + (v6 + 4))] = 0;
        v7 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg6.length) + (v6 + 4) + 192;
        // Unknown jump to Block 0x63f0x250. Refer to 3-address code (TAC);
    } else {
        v6 = v8 = MEM[v5];
        MEM[v8] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        MEM[v8 + 4 + 32] = bool(varg4);
        MEM[v8 + 4 + 64] = varg2;
        MEM[v8 + 4 + 96] = address(0x1000276a4);
        MEM[v8 + 4 + 128] = 160;
        MEM[v8 + 4 + 160] = varg6.length;
        CALLDATACOPY(v8 + 4 + 192, varg6.data, varg6.length);
        MEM[192 + (varg6.length + (v8 + 4))] = 0;
        v7 = v9 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg6.length) + (v8 + 4) + 192;
    }
    v10 = v2.call(MEM[v604V0x6bb0x250:v604V0x6bb0x250 + v2a08V0x6bb0x250 - v604V0x6bb0x250], MEM[v604V0x6bb0x250:v604V0x6bb0x250 + v2500x6b6]).value(v0).gas(msg.gas);
    require(v10, MEM[64], RETURNDATASIZE());
    v11 = 0;
    v12 = 0;
    if (v10) {
        if (RETURNDATASIZE() < v5) {
            v4 = RETURNDATASIZE();
        }
        require(!((v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v6 + v4 - v6 >= 64);
        v11 = v13 = MEM[v6];
        v12 = v14 = MEM[v6 + 32];
    }
    if (v11 <= 0) {
        v15 = 0x2a0b(v11);
        v16 = v17 = v15 >= v18;
    } else {
        v19 = 0x2a0b(v12);
        v16 = v19 >= v18;
    }
    require(v16, Error(0x533133));
    if (varg0) {
        require(mapping_4[block.coinbase], Error(0x533134));
        v20, /* uint256 */ v21 = block.coinbase.call().value(varg0);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v22 = v23 = new bytes[](RETURNDATASIZE());
            require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
            v21 = v23.data;
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
        }
    }
}

function uniswapV3MintCallback(uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = v2 = 32;
    require(_uniswapV3SwapCallback[msg.sender], Error(21299));
    if (amount0) {
        v3 = v4 = MEM[64];
        v5 = msg.sender.token0().gas(msg.gas);
        if (v5) {
            v6 = v7 = 0;
            if (v5) {
                v8 = v9 = 8353;
                if (v2 <= RETURNDATASIZE()) {
                    require(!((v4 + 32 > uint64.max) | (v4 + 32 < v4)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v4 + 32;
                    v10 = v11 = v4 + v2;
                }
            }
        }
    }
    if (amount1) {
        v3 = v12 = MEM[64];
        v13 = msg.sender.token1().gas(msg.gas);
        if (v13) {
            v6 = v14 = 0;
            if (v13) {
                v15 = v16 = 0x136e5;
                v8 = v17 = 8161;
                v6 = v18 = 0x13711;
                if (v2 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x1fea0x255. Refer to 3-address code (TAC);
                }
            }
        }
    } else {
        exit;
    }
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    revert(MEM[64], RETURNDATASIZE());
    v19 = new bytes[](100);
    MEM[v19.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v19 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
    MEM[v19 + 68] = msg.sender;
    MEM[v19 + 100] = amount1;
    require(!((v19 + 160 > uint64.max) | (v19 + 160 < v19)), Panic(65)); // failed memory allocation (too much memory)
    v20 = v19.length;
    v21, /* uint256 */ v22 = v6.transferFrom(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), msg.sender, amount1).value(v14).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v23 = v24 = new bytes[](RETURNDATASIZE());
        require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
        v22 = v24.data;
        RETURNDATACOPY(v22, 0, RETURNDATASIZE());
    }
    exit;
    require(!((v3 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v3 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v10 = v3 + v1;
    require(v10 - v3 >= 32);
    v6 = MEM[v3];
    require(!(address(v6) - v6));
    // Unknown jump to Block ['0x1fe1', '0x20a1']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1f59. Refer to 3-address code (TAC);
    v1 = RETURNDATASIZE();
    // Unknown jump to Block 0x1fcf0x255. Refer to 3-address code (TAC);
    v25 = new bytes[](100);
    MEM[v25.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v25 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
    MEM[v25 + 68] = msg.sender;
    MEM[v25 + 100] = v15;
    require(!((v25 + 160 > uint64.max) | (v25 + 160 < v25)), Panic(65)); // failed memory allocation (too much memory)
    v26 = v25.length;
    v27 = v6.transferFrom(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), msg.sender, v15).value(v6).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v28 = v29 = new bytes[](RETURNDATASIZE());
        require(!((v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
        RETURNDATACOPY(v29.data, 0, RETURNDATASIZE());
    }
}

function 0xcf1346bc(uint256 varg0, uint256 varg1, bytes varg2) public nonPayable { 
    v0 = v1 = 0x1366b;
    require(msg.data.length - 4 >= 96);
    require(!(address(varg1) - varg1));
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](varg2.length);
    require(!((v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, varg2.data, varg2.length);
    v2[varg2.length] = 0;
    require(address(0x7ff4ed8ab94c849b812622eb462682208be06b93) == msg.sender, Error(21302));
    if (varg0 - 0xfc3d2819116ffd6122bbb345de905d2ce2c966aa4de219bd81a07a0ebbd4fe58) {
        if (varg0 - 0xd90055c7d9a803f632ff7c5631dc4531cd807f491645eafd0b18178626f4b176) {
            if (varg0 - 0x32fab6701df6eb949e1ac6981d708e4c7737948708d03104430a384b88f86725) {
                if (varg0 - 0x687e080e197abbfe25a74ad0237d2e3e416dee9319e7c1440a93b96b1717f61b) {
                    if (varg0 - 0x622d50c9d1afdd7ad6c6cbe0b763297de13286df7f1c00abbb47851ddfbd58a9) {
                        if (varg0 - 0xa5b9465222eb17ef89e48f92375a6985f45859627104956e385f45f4fa546c9c) {
                            if (varg0 - 0xa9419d72935e79fd4f93cc9128c7739e1513bfd40b1a7879a61cfd8ea137cfd3) {
                                require(0xfb5024b09d708961cbaf11aba4fe316d9d4657cde750a279dcad9d3cf51726e5 == varg0, Error('UNKNOWN ROLE'));
                                v3 = 0x34db(v2);
                                v4 = new struct(6);
                                v4.word1 = address(v3.word0);
                                v4.word2 = address(v3.word1);
                                v4.word3 = uint24(v3.word2);
                                v4.word4 = int24(v3.word3);
                                v4.word5 = address(v3.word4);
                                v4.word0 = 160;
                                require(!((v4 + 192 > uint64.max) | (v4 + 192 < v4)), Panic(65)); // failed memory allocation (too much memory)
                                v5 = v4.word0.length;
                                require(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)) >> 96 == address(varg1), Error(0x533235));
                                v6 = new struct(3);
                                v7 = v6.data;
                                v6.word1 = keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4));
                                v6.word2 = 6;
                                v6.word0 = 64;
                                require(!((v6 + 96 > uint64.max) | (v6 + 96 < v6)), Panic(65)); // failed memory allocation (too much memory)
                                v8 = v6.word0.length;
                                MEM[MEM[64]] = 0x1e2eaeaf00000000000000000000000000000000000000000000000000000000;
                                MEM[MEM[64] + 4] = keccak256(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)), 6);
                                v9, v10 = address(0x4444c5dc75cb358380d2e3de08a90).extsload(keccak256(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)), 6)).gas(msg.gas);
                                if (v9) {
                                    v10 = v11 = 0;
                                    if (v9) {
                                        if (32 > RETURNDATASIZE()) {
                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            v12 = v13 = MEM[64] + RETURNDATASIZE();
                                        } else {
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + 32;
                                            v12 = v14 = MEM[64] + 32;
                                        }
                                        require(v12 - MEM[64] >= 32);
                                    }
                                    require(!bool(!address(v10)), Error(0x41523536));
                                    _unlockCallback[address(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)) >> 96)].field0_0_19 = v3.word0;
                                    _unlockCallback[address(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)) >> 96)].field1_0_19 = v3.word1;
                                    _unlockCallback[address(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)) >> 96)].field1_20_22 = v3.word2;
                                    _unlockCallback[address(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)) >> 96)].field1_23_25 = v3.word3;
                                    _unlockCallback[address(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)) >> 96)].field2_0_19 = v3.word4;
                                    require(!mapping_8[address(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)) >> 96)], Error(0x533130));
                                    mapping_8[address(keccak256(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4)) >> 96)] = 1;
                                }
                            } else {
                                v15, v16 = address(varg2.length).isDex(address(varg1)).gas(msg.gas);
                                if (v15) {
                                    v16 = v17 = 0;
                                    if (v15) {
                                        v18 = v19 = 32;
                                        if (32 > RETURNDATASIZE()) {
                                            v18 = v20 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v18 - MEM[64] >= 32);
                                        require(!0xc3ee1ed600000000000000000000000000000000000000000000000000000001);
                                    }
                                    require(v16, Error(0x533230));
                                    require(!_dexCallback[address(varg1)], Error(0x533130));
                                    _dexCallback[address(varg1)] = 1;
                                }
                            }
                        } else {
                            require(!mapping_5[address(varg1)], Error(0x533130));
                            mapping_5[address(varg1)] = 1;
                        }
                    } else {
                        require(!mapping_4[address(varg1)], Error(0x533130));
                        mapping_4[address(varg1)] = 1;
                    }
                } else {
                    v0 = v21 = address(varg2.length);
                    v22 = v23 = MEM[64];
                    v0 = v24 = 32;
                    v0 = v25 = uint160.max;
                    v0 = v26 = address(varg1);
                    v27 = v26.token0().gas(msg.gas);
                    if (v27) {
                        v0 = v28 = 0;
                        if (v27) {
                            v29 = v30 = 12662;
                            if (v24 <= RETURNDATASIZE()) {
                                require(!((v23 + 32 > uint64.max) | (v23 + 32 < v23)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v23 + 32;
                                v31 = v32 = v23 + v24;
                            }
                        }
                    }
                }
            } else {
                v0 = v33 = address(varg2.length);
                v22 = v34 = MEM[64];
                v0 = v35 = 32;
                v0 = v36 = uint160.max;
                v0 = v37 = address(varg1);
                v38 = v37.token0().gas(msg.gas);
                if (v38) {
                    v0 = v39 = 0;
                    if (v38) {
                        v29 = v40 = 12275;
                        if (v35 <= RETURNDATASIZE()) {
                            require(!((v34 + 32 > uint64.max) | (v34 + 32 < v34)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v34 + 32;
                            v31 = v41 = v34 + v35;
                        }
                    }
                }
            }
        } else {
            v0 = v42 = address(varg2.length);
            v22 = v43 = MEM[64];
            v0 = v44 = 32;
            v0 = v45 = uint160.max;
            v0 = v46 = address(varg1);
            v47 = v46.token0().gas(msg.gas);
            if (v47) {
                v0 = v48 = 0;
                if (v47) {
                    v29 = v49 = 11840;
                    if (v44 <= RETURNDATASIZE()) {
                        require(!((v43 + 32 > uint64.max) | (v43 + 32 < v43)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v43 + 32;
                        v31 = v50 = v43 + v44;
                    }
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
        v22 = v51 = MEM[64];
        v52 = v0.token1().gas(msg.gas);
        if (v52) {
            v0 = v53 = 11717;
            v0 = v54 = 0;
            if (v52) {
                v29 = v55 = 11809;
                if (v0 <= RETURNDATASIZE()) {
                    v56 = v51 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!((v56 > uint64.max) | (v56 < v51)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v56;
                    v31 = v57 = v51 + v0;
                }
            }
        }
        v22 = v58 = MEM[64];
        v59 = v0.getPair(address(v0), address(v0)).gas(msg.gas);
        if (v59) {
            v0 = v60 = 0x13c4d;
            v0 = v61 = 11751;
            v0 = v62 = 0;
            if (v59) {
                v29 = v63 = 11778;
                if (RETURNDATASIZE() >= v0) {
                    v64 = v58 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!((v64 > uint64.max) | (v64 < v58)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v64;
                    v31 = v65 = v58 + v0;
                }
            }
        }
        require(v0 & v0 == v0, Error(21304));
        require(!mapping_2[address(v0)], Error(0x533130));
        mapping_2[address(v0)] = 1;
        // Unknown jump to Block 0x1366b. Refer to 3-address code (TAC);
        require(!((v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v22)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v31 = v66 = v22 + RETURNDATASIZE();
        require(v31 - v22 >= 32);
        v0 = v67 = MEM[v22];
        require(!(address(v67) - v67));
        // Unknown jump to Block ['0x2e02B0x1ecd', '0x2e21B0x1ecd', '0x2e40B0x1ecd', '0x2f88B0x1ecd', '0x2fd5B0x1ecd', '0x2ff3B0x1ecd', '0x313aB0x1ecd', '0x3158B0x1ecd', '0x3176B0x1ecd']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2ddeB0x1ecd. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2d90B0x1ecd. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2d65B0x1ecd. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2f64B0x1ecd. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2edfB0x1ecd. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2ebbB0x1ecd. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x3092B0x1ecd. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x306eB0x1ecd. Refer to 3-address code (TAC);
        v22 = v68 = MEM[64];
        v69 = v0.token1().gas(msg.gas);
        if (v69) {
            v0 = v70 = 0;
            if (v69) {
                v29 = v71 = 12245;
                if (v0 <= RETURNDATASIZE()) {
                    v72 = v68 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!((v72 > uint64.max) | (v72 < v68)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v72;
                    v31 = v73 = v68 + v0;
                }
            }
        }
        v74 = v75 = MEM[64];
        v76 = v0.fee().gas(msg.gas);
        if (v76) {
            v77 = v78 = 12107;
            v79 = v80 = 0;
            if (v76) {
                // Unknown jump to Block 0x2f8fB0x1ecd. Refer to 3-address code (TAC);
            }
        }
        v22 = v81 = MEM[64];
        v82 = v83 = v81 + 100;
        // Unknown jump to Block ['0x2f4bB0x1ecd', '0x30fdB0x1ecd']. Refer to 3-address code (TAC);
        v84 = v0.getPool(address(v0), address(v0), uint24(v79)).gas(msg.gas);
        if (v84) {
            v0 = v85 = 0x13d0e;
            v0 = v86 = 12141;
            v0 = v87 = 0;
            if (v84) {
                v29 = v88 = 12168;
                if (RETURNDATASIZE() >= v0) {
                    v89 = v81 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!((v89 > uint64.max) | (v89 < v81)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v89;
                    v31 = v90 = v81 + v0;
                }
            }
        }
        require(v0 & v0 == v0, Error(21305));
        require(!_uniswapV3SwapCallback[address(v0)], Error(0x533130));
        _uniswapV3SwapCallback[address(v0)] = 1;
        // Unknown jump to Block 0x1366b. Refer to 3-address code (TAC);
        v91 = v0.staticcall(MEM[v1fcf0x2cbf_0x1V0x1ecd:v1fcf0x2cbf_0x1V0x1ecd + v30faV0x1ecd - v1fcf0x2cbf_0x1V0x1ecd], MEM[v1fcf0x2cbf_0x1V0x1ecd:v1fcf0x2cbf_0x1V0x1ecd + v30bd_0x2V0x1ecd]).gas(msg.gas);
        if (v91) {
            v0 = v92 = 0x13dcf;
            v0 = v93 = 12575;
            v0 = v94 = 0;
            if (v91) {
                v29 = v95 = 12602;
                if (RETURNDATASIZE() >= v0) {
                    v96 = v22 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!((v96 > uint64.max) | (v96 < v22)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v96;
                    v31 = v97 = v22 + v0;
                }
            }
        }
        require(v0 & v0 == v0, Error(0x533138));
        require(!_pancakeV3SwapCallback[address(v0)], Error(0x533130));
        _pancakeV3SwapCallback[address(v0)] = 1;
        // Unknown jump to Block 0x1366b. Refer to 3-address code (TAC);
        if (v0 > RETURNDATASIZE()) {
            v0 = v98 = RETURNDATASIZE();
        }
        v99 = v74 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(!((v99 > uint64.max) | (v99 < v74)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v99;
        require(v74 + v0 - v74 >= 32);
        v79 = MEM[v74];
        require(!(v79 - uint24(v79)));
        v22 = v100 = MEM[64];
        v101 = v0.token1().gas(msg.gas);
        if (v101) {
            v0 = v102 = 0;
            if (v101) {
                v29 = v103 = 12632;
                if (v0 <= RETURNDATASIZE()) {
                    v104 = v100 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!((v104 > uint64.max) | (v104 < v100)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v104;
                    v31 = v105 = v100 + v0;
                }
            }
        }
        v74 = MEM[64];
        v106 = v0.fee().gas(msg.gas);
        if (v106) {
            v77 = v107 = 12541;
            if (!v106) {
                v22 = v108 = MEM[64];
                MEM[v108] = 0x1698ee8200000000000000000000000000000000000000000000000000000000;
                MEM[v108 + 4] = address(v0);
                MEM[v108 + 36] = address(v0);
                MEM[v108 + 68] = uint24(0);
                v82 = v108 + 100;
            }
        }
    } else {
        require(!_unwrapEth[address(varg1)], Error(0x533130));
        _unwrapEth[address(varg1)] = 1;
    }
}

function 0xc9827183() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xce466fc694c971b95bb1193e494942e22197f759);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function contractWallet() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
}

function 0xc4da52dc(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(mapping_5[msg.sender], Error(21299));
    require(_unwrapEth[tx.origin], Error(0x533136));
    v0 = new bytes[](100);
    MEM[v0.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
    MEM[v0 + 68] = msg.sender;
    MEM[v0 + 100] = varg3;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg2.transferFrom(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), msg.sender, varg3).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v5.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
}

function 0x26d4() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    return v0;
}

function 0xc45055c3(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return _unlockCallback[address(varg0)].field0_0_19, _unlockCallback[address(varg0)].field1_0_19, _unlockCallback[address(varg0)].field1_20_22, _unlockCallback[address(varg0)].field1_23_25, _unlockCallback[address(varg0)].field2_0_19;
}

function 0xbf64ae96(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return mapping_8[address(varg0)];
}

function 0xbb25faea(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return mapping_5[address(varg0)];
}

function 0xb87d3b28(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    require(!(address(varg1) - varg1));
    require(!(int24(varg2) - varg2));
    require(!(int24(varg3) - varg3));
    require(!(uint128(varg4) - varg4));
    v0 = v1 = 64;
    require(_unwrapEth[msg.sender], Error(21301));
    require(_uniswapV3SwapCallback[address(varg1)], Error(21299));
    require(varg7 >= block.timestamp, Error(21300));
    v2, /* uint256 */ v3, /* uint256 */ v4 = address(varg1).burn(int24(varg2), int24(varg3), uint128(varg4)).gas(msg.gas);
    if (v2) {
        v3 = v5 = 0;
        v4 = v6 = 0;
        if (v2) {
            if (v1 > RETURNDATASIZE()) {
                require(!((MEM[v1] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v1] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v1])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v1] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v7 = MEM[v1] + RETURNDATASIZE();
            } else {
                require(!((MEM[v1] + 64 > uint64.max) | (MEM[v1] + 64 < MEM[v1])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v1] + 64;
                v7 = v8 = MEM[v1] + v1;
            }
            require(v7 - MEM[v1] >= 64);
        }
        v9 = v10 = varg5 <= v3;
        if (v10) {
            v9 = v11 = varg6 <= v4;
        }
        require(v9, Error(0x533135));
        v12, /* uint256 */ v13, v14 = address(varg1).collect(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), int24(varg2), int24(varg3), uint128.max, uint128.max).gas(msg.gas);
        if (v12) {
            if (v12) {
                if (RETURNDATASIZE() < v1) {
                    v0 = v15 = RETURNDATASIZE();
                }
                require(!((MEM[v1] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v1] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v1])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v1] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[v1] + v0 - MEM[v1] >= 64);
                require(!(uint128(v14) - v14));
                0x3481(varg0);
                exit;
            } else {
                0x3481(varg0);
                exit;
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0xb32ed312() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xfc3d2819116ffd6122bbb345de905d2ce2c966aa4de219bd81a07a0ebbd4fe58;
}

function 0xa632fd63(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg1) - varg1));
    require(!(bool(varg4) - varg4));
    require(mapping_8[address(varg1)], Error(0x533234));
    require(_unwrapEth[msg.sender], Error(21301));
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = address(varg1);
    v0.word2 = varg2;
    v2 = new uint256[](varg3);
    v0.word3 = varg3;
    v3 = v2.data;
    v0.word4 = bool(varg4);
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](v0.word0.length);
    v5 = 0;
    while (v5 < v0.word0.length) {
        v4[v5] = v0[v5];
        v5 += 32;
    }
    v4[v0.word0.length] = 0;
    v6 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(v4, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, v2, address(varg1), varg2).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
        require(v7.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v8 = new bytes[](v7.length);
        require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v7.length + 32 <= MEM[64] + RETURNDATASIZE());
        v9 = 0;
        while (v9 < v7.length) {
            v8[v9] = MEM[v9 + v7.data];
            v9 += 32;
        }
        v8[v7.length] = 0;
    }
    0x3481(varg0);
}

function 0xa1c20303(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(mapping_2[address(varg1)], Error(21298));
    require(_unwrapEth[msg.sender], Error(21301));
    v0 = new bytes[](100);
    MEM[v0.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
    MEM[v0 + 68] = address(varg1);
    MEM[v0 + 100] = varg3;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg2.transferFrom(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), address(varg1), varg3).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v5.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    require((address(varg1)).code.size);
    v6 = address(varg1).swap(varg4, varg5, address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), 128, 0).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        0x3481(varg0);
        exit;
    } else {
        0x3481(varg0);
        exit;
    }
}

function 0x95012fa1(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return _pancakeV3SwapCallback[address(varg0)];
}

function dexCallback(address token_, uint256 amount_) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_dexCallback[msg.sender], Error(0x533139));
    require(!(stor_0_0_0 - 1), Error(0x533231));
    require(_unwrapEth[tx.origin], Error(0x533232));
    stor_0_0_0 = 2;
    v0 = new bytes[](100);
    MEM[v0.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
    MEM[v0 + 68] = address(0x52aa899454998be5b000ad077a46bbe360f4e497);
    MEM[v0 + 100] = amount_;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = token_.transferFrom(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), address(0x52aa899454998be5b000ad077a46bbe360f4e497), amount_).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v5.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(0x4444c5dc75cb358380d2e3de08a90)));
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 128);
    require(!(address(rawData.word1) - rawData.word1));
    v1 = v2 = rawData.word4;
    require(!(bool(v2) - v2));
    v1 = v3 = rawData.word3;
    v4 = new struct(5);
    require(!((v4 + 160 > uint64.max) | (v4 + 160 < v4)), Panic(65)); // failed memory allocation (too much memory)
    v4.word0 = _unlockCallback[address(rawData.word1)].field0_0_19;
    v4.word1 = _unlockCallback[address(rawData.word1)].field1_0_19;
    v4.word2 = _unlockCallback[address(rawData.word1)].field1_20_22;
    v4.word3 = _unlockCallback[address(rawData.word1)].field1_23_25;
    v4.word4 = _unlockCallback[address(rawData.word1)].field2_0_19;
    if (0 == v2) {
        v1 = v5 = address(v4.word1);
    } else {
        v1 = address(v4.word0);
    }
    if (!v2) {
        v1 = v6 = address(v4.word0);
    } else {
        v1 = v7 = address(v4.word1);
    }
    require(rawData.word2 > 0, Error(0x41523630));
    v8 = 0x3723(rawData.word2);
    if (!v2) {
        v9 = v10 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v9 = v11 = 0x1000276a4;
    }
    v12 = 0x8cd();
    v12.word0 = bool(v2);
    v1 = v13 = 32;
    v12.word1 = v8;
    v12.word2 = address(v9);
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v14 = v15 = MEM[64];
    v16 = new uint256[](0);
    v17 = 0;
    while (v17 < 0) {
        MEM[v17 + v16.data] = MEM[v17 + (MEM[64] + 32)];
        v17 += 32;
    }
    MEM[v16.data] = 0;
    v18 = address(0x4444c5dc75cb358380d2e3de08a90).swap(address(v4.word0), address(v4.word1), uint24(v4.word2), int24(v4.word3), address(v4.word4), bool(v12.word0), v12.word1, address(v12.word2), v16).gas(msg.gas);
    if (v18) {
        v1 = v19 = 14575;
        v1 = v20 = 14567;
        v21 = v22 = 0;
        if (v18) {
            v23 = v24 = 15850;
            if (v13 <= RETURNDATASIZE()) {
                require(!((v15 + 32 > uint64.max) | (v15 + 32 < v15)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v15 + 32;
                v25 = v26 = v15 + v13;
            }
        }
        v1 = v27 = int128(v21);
        v1 = v28 = int128(v21 >> 128);
        if (!v1) {
            require(v27 < 0, Error(0x533133));
        } else {
            require(v28 < 0, Error(0x533133));
        }
        if (!v1) {
            v1 = v29 = 0x3723(v27);
        } else {
            v1 = v30 = 0x3723(v28);
        }
        if (v1) {
        }
        v31 = v32 = v1 <= rawData.word2;
        while (v31) {
            // Unknown jump to Block ['0x38e7B0x182f', '0x38efB0x182f']. Refer to 3-address code (TAC);
            v31 = v33 = v1 >= v1;
        }
        v1 = v34 = 0;
        if (!address(v1)) {
            MEM[MEM[64] + v1] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
            MEM[MEM[64] + 68] = this;
            MEM[MEM[64] + 100] = v1;
            require(!((MEM[64] + 160 > uint64.max) | (MEM[64] + 160 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v35 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64] + v37daV0x182f:MEM[64] + v37daV0x182f + 100], MEM[0:0]).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v36 = new bytes[](RETURNDATASIZE());
                require(!((v36 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v36 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v36)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v36.data, 0, RETURNDATASIZE());
            }
            MEM[MEM[64] + v1] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 36] = v1;
            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v37 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64] + v37daV0x182f:MEM[64] + v37daV0x182f + 36], MEM[0:0]).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v38 = new bytes[](RETURNDATASIZE());
                require(!((v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v38.data, 0, RETURNDATASIZE());
            }
            require(v37, Error(0x41523438));
        }
        v1 = v39 = !address(v1);
        if (bool(address(v1))) {
            v40 = 0x51c72848c68a965f66fa7a88855f9f7784502a7f;
        } else {
            v40 = v41 = this;
        }
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
        v42 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(v1), address(v40), v1).gas(msg.gas);
        if (v42) {
            if (v42) {
                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
            v43 = address(0x4444c5dc75cb358380d2e3de08a90).sync(address(v1)).gas(msg.gas);
            if (v43) {
                if (v43) {
                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                if (bool(address(v1))) {
                    MEM[MEM[64] + v1] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
                    MEM[MEM[64] + 68] = address(0x4444c5dc75cb358380d2e3de08a90);
                    MEM[MEM[64] + 100] = v1;
                    require(!((MEM[64] + 160 > uint64.max) | (MEM[64] + 160 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    v44 = v1.call(MEM[MEM[64] + v37daV0x182f:MEM[64] + v37daV0x182f + 100], MEM[0:0]).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v45 = new bytes[](RETURNDATASIZE());
                        require(!((v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v45.data, 0, RETURNDATASIZE());
                    }
                }
                v14 = v46 = MEM[64];
                v47 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v1).gas(msg.gas);
                if (v47) {
                    if (v47) {
                        v23 = 15288;
                        if (v1 <= RETURNDATASIZE()) {
                            require(!((v46 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v46 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v46)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v46 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v25 = v48 = v46 + v1;
                        }
                    }
                }
            }
        }
        revert(Error(0x533133));
        require(!((v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v25 = v49 = v14 + RETURNDATASIZE();
        require(v25 - v14 >= 32);
        v21 = v50 = MEM[v14];
        // Unknown jump to Block ['0x3bb8B0x182f', '0x3deaB0x182f']. Refer to 3-address code (TAC);
        if (v1) {
            MEM[MEM[64] + v1] = 0xd0e30db000000000000000000000000000000000000000000000000000000000;
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v51, /* uint256 */ v52 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64] + v37daV0x182f:MEM[64] + v37daV0x182f + 4], MEM[0:0]).value(v1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v53 = new bytes[](RETURNDATASIZE());
                require(!((v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v53)), Panic(65)); // failed memory allocation (too much memory)
                v52 = v53.data;
                RETURNDATACOPY(v52, 0, RETURNDATASIZE());
            }
            MEM[MEM[64] + v1] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
            MEM[MEM[64] + 68] = v1;
            require(!((MEM[64] + 128 > uint64.max) | (MEM[64] + 128 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v54, /* uint256 */ v55 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64] + v37daV0x182f:MEM[64] + v37daV0x182f + 68], MEM[0:0]).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v56 = new bytes[](RETURNDATASIZE());
                require(!((v56 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v56 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v56)), Panic(65)); // failed memory allocation (too much memory)
                v55 = v56.data;
                RETURNDATACOPY(v55, 0, RETURNDATASIZE());
            }
            require(v54, Error(0x41523538));
        }
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + 32;
        v57 = new uint256[](0);
        v58 = 0;
        while (v58 < 0) {
            MEM[v58 + v57.data] = MEM[v58 + (MEM[64] + 32)];
            v58 += 32;
        }
        MEM[v57.data] = 0;
        return v57;
    }
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    revert(MEM[64], RETURNDATASIZE());
}

function 0x8f05e71b(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(address(varg1) - varg1));
    require(address(0xce466fc694c971b95bb1193e494942e22197f759) == msg.sender, Error(21303));
    v0, /* uint256 */ v1 = address(varg1).call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v3.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
}

function 0x2a0b(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x8790fc2c(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return mapping_4[address(varg0)];
}

function 0x86769f3e(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return _unwrapEth[address(varg0)];
}

function 0x84c2341e(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return _dexCallback[address(varg0)];
}

function 0x7a99c4a2() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xfb5024b09d708961cbaf11aba4fe316d9d4657cde750a279dcad9d3cf51726e5;
}

function 0x771d503f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, bytes varg5) public payable { 
    v0 = v1 = 0;
    require(msg.data.length - 4 >= 192);
    require(!(address(varg1) - varg1));
    require(!(bool(varg4) - varg4));
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < msg.data.length);
    require(varg5.length <= uint64.max);
    require(4 + varg5 + varg5.length + 32 <= msg.data.length);
    v2 = v3 = address(varg1);
    v4 = v5 = 64;
    require(_uniswapV3SwapCallback[v3], Error(21299));
    require(_unwrapEth[msg.sender], Error(21301));
    if (v1 == varg4) {
        v6 = MEM[v5];
        MEM[v6] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v6 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        MEM[v6 + 4 + 32] = bool(varg4);
        MEM[v6 + 4 + 64] = varg2;
        MEM[v6 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        MEM[v6 + 4 + 128] = 160;
        MEM[v6 + 4 + 160] = varg5.length;
        CALLDATACOPY(v6 + 4 + 192, varg5.data, varg5.length);
        MEM[192 + (varg5.length + (v6 + 4))] = 0;
        v7 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + (v6 + 4) + 192;
        // Unknown jump to Block 0x63f0x2b9. Refer to 3-address code (TAC);
    } else {
        v6 = v8 = MEM[v5];
        MEM[v8] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        MEM[v8 + 4 + 32] = bool(varg4);
        MEM[v8 + 4 + 64] = varg2;
        MEM[v8 + 4 + 96] = address(0x1000276a4);
        MEM[v8 + 4 + 128] = 160;
        MEM[v8 + 4 + 160] = varg5.length;
        CALLDATACOPY(v8 + 4 + 192, varg5.data, varg5.length);
        MEM[192 + (varg5.length + (v8 + 4))] = 0;
        v7 = v9 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + (v8 + 4) + 192;
    }
    v10 = v2.call(MEM[v604V0x6bb0x2b9:v604V0x6bb0x2b9 + v2a08V0x6bb0x2b9 - v604V0x6bb0x2b9], MEM[v604V0x6bb0x2b9:v604V0x6bb0x2b9 + v2b90x6b6]).value(v0).gas(msg.gas);
    require(v10, MEM[64], RETURNDATASIZE());
    v11 = 0;
    v12 = 0;
    if (v10) {
        if (RETURNDATASIZE() < v5) {
            v4 = RETURNDATASIZE();
        }
        require(!((v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v6 + v4 - v6 >= 64);
        v11 = v13 = MEM[v6];
        v12 = v14 = MEM[v6 + 32];
    }
    if (v11 <= 0) {
        v15 = 0x2a0b(v11);
        v16 = v17 = v15 >= v18;
    } else {
        v19 = 0x2a0b(v12);
        v16 = v19 >= v18;
    }
    require(v16, Error(0x533133));
    if (varg0) {
        require(mapping_4[block.coinbase], Error(0x533134));
        v20, /* uint256 */ v21 = block.coinbase.call().value(varg0);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v22 = v23 = new bytes[](RETURNDATASIZE());
            require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
            v21 = v23.data;
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
        }
    }
}

function 0x6650eb1e(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return mapping_2[address(varg0)];
}

function 0x5bc6665d(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    return _uniswapV3SwapCallback[address(varg0)];
}

function 0x59733e7f(uint256 varg0, uint256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg1) - varg1));
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg2.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    v0[varg2.length] = 0;
    require(address(0x7ff4ed8ab94c849b812622eb462682208be06b93) == msg.sender, Error(21302));
    if (varg0 - 0xfc3d2819116ffd6122bbb345de905d2ce2c966aa4de219bd81a07a0ebbd4fe58) {
        if (varg0 - 0xd90055c7d9a803f632ff7c5631dc4531cd807f491645eafd0b18178626f4b176) {
            if (varg0 - 0x32fab6701df6eb949e1ac6981d708e4c7737948708d03104430a384b88f86725) {
                if (varg0 - 0x622d50c9d1afdd7ad6c6cbe0b763297de13286df7f1c00abbb47851ddfbd58a9) {
                    if (varg0 - 0xa5b9465222eb17ef89e48f92375a6985f45859627104956e385f45f4fa546c9c) {
                        if (varg0 - 0x687e080e197abbfe25a74ad0237d2e3e416dee9319e7c1440a93b96b1717f61b) {
                            require(varg0 == 0xfb5024b09d708961cbaf11aba4fe316d9d4657cde750a279dcad9d3cf51726e5, Error('UNKNOWN ROLE'));
                            v1 = 0x34db(v0);
                            v2 = new struct(6);
                            v2.word1 = address(v1.word0);
                            v2.word2 = address(v1.word1);
                            v2.word3 = uint24(v1.word2);
                            v2.word4 = int24(v1.word3);
                            v2.word5 = address(v1.word4);
                            v2.word0 = 160;
                            require(!((v2 + 192 > uint64.max) | (v2 + 192 < v2)), Panic(65)); // failed memory allocation (too much memory)
                            v3 = v2.word0.length;
                            v4 = 0x26d4();
                            _unlockCallback[address(bytes20(keccak256(address(v1.word0), address(v1.word1), uint24(v1.word2), int24(v1.word3), address(v1.word4))) >> 96)].field0_0_19 = v4.word0;
                            _unlockCallback[address(bytes20(keccak256(address(v1.word0), address(v1.word1), uint24(v1.word2), int24(v1.word3), address(v1.word4))) >> 96)].field1_0_19 = v4.word1;
                            _unlockCallback[address(bytes20(keccak256(address(v1.word0), address(v1.word1), uint24(v1.word2), int24(v1.word3), address(v1.word4))) >> 96)].field1_20_22 = v4.word2;
                            _unlockCallback[address(bytes20(keccak256(address(v1.word0), address(v1.word1), uint24(v1.word2), int24(v1.word3), address(v1.word4))) >> 96)].field1_23_25 = v4.word3;
                            _unlockCallback[address(bytes20(keccak256(address(v1.word0), address(v1.word1), uint24(v1.word2), int24(v1.word3), address(v1.word4))) >> 96)].field2_0_19 = v4.word4;
                            require(mapping_8[address(bytes20(keccak256(address(v1.word0), address(v1.word1), uint24(v1.word2), int24(v1.word3), address(v1.word4))) >> 96)], Error(0x533131));
                            mapping_8[address(bytes20(keccak256(address(v1.word0), address(v1.word1), uint24(v1.word2), int24(v1.word3), address(v1.word4))) >> 96)] = 0;
                        } else {
                            require(_pancakeV3SwapCallback[address(varg1)], Error(0x533131));
                            _pancakeV3SwapCallback[address(varg1)] = 0;
                        }
                    } else {
                        require(mapping_5[address(varg1)], Error(0x533131));
                        mapping_5[address(varg1)] = 0;
                    }
                } else {
                    require(mapping_4[address(varg1)], Error(0x533131));
                    mapping_4[address(varg1)] = 0;
                }
            } else {
                require(_uniswapV3SwapCallback[address(varg1)], Error(0x533131));
                _uniswapV3SwapCallback[address(varg1)] = 0;
            }
        } else {
            require(mapping_2[address(varg1)], Error(0x533131));
            mapping_2[address(varg1)] = 0;
        }
    } else {
        require(_unwrapEth[address(varg1)], Error(0x533131));
        _unwrapEth[address(varg1)] = 0;
    }
}

function 0x51337d44(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg4) - varg4));
    require(!(bool(varg6) - varg6));
    v0 = v1 = uint160.max;
    v0 = v2 = 64;
    require(_dexCallback[address(varg1)], Error(0x533139));
    require(_unwrapEth[msg.sender], Error(21301));
    v3 = v4 = MEM[v2];
    v5 = address(varg2).balanceOf(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f)).gas(msg.gas);
    if (v5) {
        v0 = v6 = 0;
        if (v5) {
            v7 = v8 = 5174;
            if (32 <= RETURNDATASIZE()) {
                require(!((v4 + 32 > uint64.max) | (v4 + 32 < v4)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v4 + 32;
                v9 = v10 = v4 + 32;
            }
        }
        v3 = v11 = MEM[v0];
        MEM[v11] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[v11 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        v12 = (v0 & v0).staticcall(MEM[vf48:vf48 + 36], MEM[vf48:vf48 + 32]).gas(msg.gas);
        if (v12) {
            v0 = v13 = 0;
            if (v12) {
                v7 = v14 = 5141;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v11 + 32 > uint64.max) | (v11 + 32 < v11)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v11 + 32;
                    v9 = v15 = v11 + 32;
                }
            }
        }
        v0 = v0 & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        v16 = v17 = 0x51c72848c68a965f66fa7a88855f9f7784502a7f;
        v18 = v19 = 0;
        if (v0 == v0 & v0) {
            v20 = MEM[v0];
            MEM[v20 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
            MEM[v20 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
            MEM[v20 + 68] = this;
            MEM[v20 + 100] = varg3;
            MEM[v20] = 100;
            require(!((v20 + 160 > uint64.max) | (v20 + 160 < v20)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v20 + 160;
            v21 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[v12bd + 32:v12bd + 32 + 100], MEM[0:0]).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v22 = v23 = new bytes[](RETURNDATASIZE());
                require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v23.data, 0, RETURNDATASIZE());
            }
            v24 = MEM[v0];
            MEM[v24 + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
            MEM[v24 + 36] = varg3;
            MEM[v24] = v24 + 68 - v24 - 32;
            require(!((v24 + (v24 + 68 - v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (v24 + 68 - v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v24 + (v24 + 68 - v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[v135c + 32:v135c + 32 + MEM[v135c]], MEM[0:0]).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v26 = v27 = new bytes[](RETURNDATASIZE());
                require(!((v27 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v27 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v27)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v27.data, 0, RETURNDATASIZE());
            }
            if (!v25) {
                v28 = MEM[v0];
                MEM[v28] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                MEM[v28 + 4] = 32;
                MEM[v28 + 36] = 3;
                MEM[v28 + 68] = 0x5332330000000000000000000000000000000000000000000000000000000000;
                revert(v28, 100);
            }
        }
        if (v0 & v0 == v0) {
            v16 = v29 = this;
        }
        v3 = v30 = MEM[v0];
        MEM[v30] = 0xbe17c79c00000000000000000000000000000000000000000000000000000000;
        MEM[v30 + 4] = bool(varg6);
        MEM[v30 + 36] = varg3;
        MEM[v30 + 68] = varg5;
        MEM[v30 + 100] = address(v16);
        v31 = (v0 & v0).call(MEM[v1003:v1003 + v1003 + 132 - v1003], MEM[v1003:v1003 + 32]).value(v18).gas(msg.gas);
        if (v31) {
            v0 = v32 = 0;
            if (v31) {
                v7 = v33 = 4778;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v30 + 32 > uint64.max) | (v30 + 32 < v30)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v30 + 32;
                    v9 = v34 = v30 + 32;
                }
            }
        }
        if (v0 & v0 == v0) {
            v35 = MEM[v0];
            MEM[v35 + 32] = 0xd0e30db000000000000000000000000000000000000000000000000000000000;
            MEM[v35] = 4;
            require(!((v35 + 64 > uint64.max) | (v35 + 64 < v35)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v35 + 64;
            v36 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[v11b9 + 32:v11b9 + 32 + 4], MEM[0:0]).value(v0).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v37 = v38 = new bytes[](RETURNDATASIZE());
                require(!((v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v38.data, 0, RETURNDATASIZE());
            }
            v39 = MEM[v0];
            MEM[v39 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v39 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
            MEM[v39 + 68] = v0;
            MEM[v39] = v39 + 100 - v39 - 32;
            require(!((v39 + (v39 + 100 - v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (v39 + 100 - v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v39 + (v39 + 100 - v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v40 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[v1207 + 32:v1207 + 32 + MEM[v1207]], MEM[0:0]).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v41 = v42 = new bytes[](RETURNDATASIZE());
                require(!((v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v42)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v42.data, 0, RETURNDATASIZE());
            }
        }
        v3 = v43 = MEM[v0];
        MEM[v43] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[v43 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        v44 = (v0 & v0).staticcall(MEM[v106b:v106b + 36], MEM[v106b:v106b + 32]).gas(msg.gas);
        if (v44) {
            v0 = v45 = 0;
            if (v44) {
                v0 = v46 = 32;
                v7 = v47 = 4522;
                if (v46 <= RETURNDATASIZE()) {
                    require(!((v43 + 32 > uint64.max) | (v43 + 32 < v43)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v43 + 32;
                    v9 = v48 = v43 + v46;
                }
            }
        }
        v49 = RETURNDATASIZE();
        require(!((v3 + (v49 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (v49 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v3 + (v49 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v9 = v3 + v49;
        require(v9 - v3 >= 32);
        v0 = MEM[v3];
        // Unknown jump to Block ['0x117e', '0x11aa', '0x12aa', '0x1415', '0x1436']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x105e. Refer to 3-address code (TAC);
        // Unknown jump to Block 0xf9b. Refer to 3-address code (TAC);
        v50 = _SafeSub(v0, v0);
        require(v50 == varg3, Error(0x533133));
        v51 = _SafeSub(v0, v0);
        require(v51 >= varg5, Error(0x533133));
        stor_0_0_0 = 1;
        0x3481(varg0);
        exit;
        v3 = v52 = MEM[v0];
        MEM[v52] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[v52 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        v53 = (v0 & v0).staticcall(MEM[v10c3:v10c3 + 36], MEM[v10c3:v10c3 + 32]).gas(msg.gas);
        if (v53) {
            v0 = v54 = 4417;
            v0 = v55 = 0;
            if (v53) {
                v0 = v56 = 0x1330c;
                v0 = v57 = 0x13332;
                v7 = v58 = 4478;
                v0 = v59 = 0x13357;
                v49 = v60 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x11870x2cd. Refer to 3-address code (TAC);
                }
            }
        }
    }
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    revert(MEM[64], RETURNDATASIZE());
}

function 0x48ea3731() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xa5b9465222eb17ef89e48f92375a6985f45859627104956e385f45f4fa546c9c;
}

function 0x481c42a2() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x15180;
}

function 0x47ca5a42() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x4444c5dc75cb358380d2e3de08a90);
}

function 0x46b5a86a() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x687e080e197abbfe25a74ad0237d2e3e416dee9319e7c1440a93b96b1717f61b;
}

function 0x40b61f12() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xa9419d72935e79fd4f93cc9128c7739e1513bfd40b1a7879a61cfd8ea137cfd3;
}

function 0x3c54863c() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xd90055c7d9a803f632ff7c5631dc4531cd807f491645eafd0b18178626f4b176;
}

function 0x3bb6ea1e() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x32fab6701df6eb949e1ac6981d708e4c7737948708d03104430a384b88f86725;
}

function 0x30a28ffc(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(varg6 >= block.timestamp, Error(21300));
    require(mapping_2[address(varg1)], Error(21298));
    require(_unwrapEth[msg.sender], Error(21301));
    v0 = new bytes[](100);
    MEM[v0.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
    MEM[v0 + 68] = address(varg1);
    MEM[v0 + 100] = varg3;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg2.transferFrom(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), address(varg1), varg3).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v5.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    require((address(varg1)).code.size);
    v6 = address(varg1).swap(varg4, varg5, address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), 128, 0).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        0x3481(varg0);
        exit;
    } else {
        0x3481(varg0);
        exit;
    }
}

function 0x2c88026b(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(varg0 + (varg0.length << 5) + 36 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < varg0 + (varg0.length << 5) + 36) {
        require(!(address(msg.data[v3]) - msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](varg1.length);
    require(!((v5 + (32 + (varg1.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (varg1.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);
    v8 = v9 = varg1.data;
    while (v8 < 4 + varg1 + (varg1.length << 5) + 32) {
        MEM[v6] = msg.data[v8];
        v8 += 32;
        v6 += 32;
    }
    require(!(address(varg2) - varg2));
    require(address(0xce466fc694c971b95bb1193e494942e22197f759) == msg.sender, Error(21303));
    require(!(v5.length - v0.length), Error(0x533939));
    v10 = v11 = 0;
    while (1) {
        if (v10 >= v0.length) {
            exit;
        } else {
            require(v10 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v10 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v12 = new bytes[](68);
            MEM[v12.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v12 + 36] = address(varg2);
            MEM[v12 + 68] = v5[v10];
            require(!((v12 + 128 > uint64.max) | (v12 + 128 < v12)), Panic(65)); // failed memory allocation (too much memory)
            require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
            require((address(v0[v10])).code.size, Error('Address: call to non-contract'));
            v13 = v12.length;
            v14, /* uint256 */ v15 = address(v0[v10]).transfer(address(varg2), v5[v10]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v16 = v17 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v16 = new bytes[](RETURNDATASIZE());
                require(!((v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
                v15 = v16.data;
                RETURNDATACOPY(v15, 0, RETURNDATASIZE());
            }
            if (!v14) {
                require(!MEM[v16], 32 + v16, MEM[v16]);
                v18 = new bytes[](v19.length);
                v20 = 0;
                while (v20 < v19.length) {
                    v18[v20] = v19[v20];
                    v20 += 32;
                }
                v18[32][v19.length] = 0;
                revert(Error(v18, v21, 'SafeERC20: low-level call failed'));
            } else {
                if (MEM[v16]) {
                    require(v16 + MEM[v16] + 32 - (v16 + 32) >= 32);
                    require(!(bool(MEM[v16 + 32]) - MEM[v16 + 32]));
                    require(MEM[v16 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
                }
                v10 = v10 + 1;
            }
        }
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    require(_pancakeV3SwapCallback[msg.sender], Error(0x533137));
    if (0 != amount0Delta > 0) {
    }
    v1 = new bytes[](100);
    MEM[v1.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v1 + 36] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
    MEM[v1 + 68] = msg.sender;
    MEM[v1 + 100] = v2;
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v1.length;
    v4, /* uint256 */ v5 = data.length.transferFrom(address(0x51c72848c68a965f66fa7a88855f9f7784502a7f), msg.sender, v2).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v5 = v7.data;
        RETURNDATACOPY(v5, 0, RETURNDATASIZE());
    }
}

function unwrapEth(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_unwrapEth[msg.sender], Error(21301));
    v0 = new bytes[](36);
    MEM[v0.data] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = _amount;
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(_amount).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v5.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    require(v2, Error(0x533132));
}

function 0x20ed82e4() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 6;
}

function 0x1e6934b6() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function accessControlRegistry() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x7ff4ed8ab94c849b812622eb462682208be06b93);
}

function 0x122067ed(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, bytes varg6) public payable { 
    v0 = v1 = 0;
    require(msg.data.length - 4 >= 224);
    require(!(address(varg1) - varg1));
    require(!(bool(varg4) - varg4));
    require(varg6 <= uint64.max);
    require(4 + varg6 + 31 < msg.data.length);
    require(varg6.length <= uint64.max);
    require(4 + varg6 + varg6.length + 32 <= msg.data.length);
    require(block.timestamp <= varg5, Error(21300));
    v2 = v3 = address(varg1);
    v4 = v5 = 64;
    require(_uniswapV3SwapCallback[v3], Error(21299));
    require(_unwrapEth[msg.sender], Error(21301));
    if (v1 == varg4) {
        v6 = MEM[v5];
        MEM[v6] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v6 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        MEM[v6 + 4 + 32] = bool(varg4);
        MEM[v6 + 4 + 64] = varg2;
        MEM[v6 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        MEM[v6 + 4 + 128] = 160;
        MEM[v6 + 4 + 160] = varg6.length;
        CALLDATACOPY(v6 + 4 + 192, varg6.data, varg6.length);
        MEM[192 + (varg6.length + (v6 + 4))] = 0;
        v7 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg6.length) + (v6 + 4) + 192;
        // Unknown jump to Block 0x63f0x318. Refer to 3-address code (TAC);
    } else {
        v6 = v8 = MEM[v5];
        MEM[v8] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = address(0x51c72848c68a965f66fa7a88855f9f7784502a7f);
        MEM[v8 + 4 + 32] = bool(varg4);
        MEM[v8 + 4 + 64] = varg2;
        MEM[v8 + 4 + 96] = address(0x1000276a4);
        MEM[v8 + 4 + 128] = 160;
        MEM[v8 + 4 + 160] = varg6.length;
        CALLDATACOPY(v8 + 4 + 192, varg6.data, varg6.length);
        MEM[192 + (varg6.length + (v8 + 4))] = 0;
        v7 = v9 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg6.length) + (v8 + 4) + 192;
    }
    v10 = v2.call(MEM[v604V0x6bb0x318:v604V0x6bb0x318 + v2a08V0x6bb0x318 - v604V0x6bb0x318], MEM[v604V0x6bb0x318:v604V0x6bb0x318 + v3180x6b6]).value(v0).gas(msg.gas);
    require(v10, MEM[64], RETURNDATASIZE());
    v11 = 0;
    v12 = 0;
    if (v10) {
        if (RETURNDATASIZE() < v5) {
            v4 = RETURNDATASIZE();
        }
        require(!((v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v6 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v6 + v4 - v6 >= 64);
        v11 = v13 = MEM[v6];
        v12 = v14 = MEM[v6 + 32];
    }
    if (v11 <= 0) {
        v15 = 0x2a0b(v11);
        v16 = v17 = v15 >= v18;
    } else {
        v19 = 0x2a0b(v12);
        v16 = v19 >= v18;
    }
    require(v16, Error(0x533133));
    if (varg0) {
        require(mapping_4[block.coinbase], Error(0x533134));
        v20, /* uint256 */ v21 = block.coinbase.call().value(varg0);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v22 = v23 = new bytes[](RETURNDATASIZE());
            require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
            v21 = v23.data;
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
        }
    }
}

function 0x10a43720() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xc4da52dc00000000000000000000000000000000000000000000000000000000;
}

function 0x0e59f586() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x52aa899454998be5b000ad077a46bbe360f4e497);
}

function 0x020bf14f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(!(address(varg1) - varg1));
    require(!(bool(varg4) - varg4));
    require(varg5 >= block.timestamp, Error(21300));
    require(mapping_8[address(varg1)], Error(0x533234));
    require(_unwrapEth[msg.sender], Error(21301));
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = address(varg1);
    v0.word2 = varg2;
    v2 = new uint256[](varg3);
    v0.word3 = varg3;
    v3 = v2.data;
    v0.word4 = bool(varg4);
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](v0.word0.length);
    v5 = 0;
    while (v5 < v0.word0.length) {
        v4[v5] = v0[v5];
        v5 += 32;
    }
    v4[v0.word0.length] = 0;
    v6 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(v4, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, v2, address(varg1), varg2).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
        require(v7.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v8 = new bytes[](v7.length);
        require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v7.length + 32 <= MEM[64] + RETURNDATASIZE());
        v9 = 0;
        while (v9 < v7.length) {
            v8[v9] = MEM[v9 + v7.data];
            v9 += 32;
        }
        v8[v7.length] = 0;
    }
    0x3481(varg0);
}

function 0x3481(uint256 varg0) private { 
    if (!varg0) {
        return ;
    } else {
        require(mapping_4[block.coinbase], Error(0x533134));
        v0, /* uint256 */ v1 = block.coinbase.call().value(varg0);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v2 = v3 = new bytes[](RETURNDATASIZE());
            require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
            v1 = v3.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        return ;
    }
}

function 0x34db(bytes varg0) private { 
    v0 = 0x26d4();
    require(varg0 + varg0.length - varg0 >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0.data]) - MEM[varg0.data]));
    v1.word0 = MEM[varg0.data];
    require(!(address(MEM[varg0 + 64]) - MEM[varg0 + 64]));
    v1.word1 = MEM[varg0 + 64];
    require(!(MEM[varg0 + 96] - uint24(MEM[varg0 + 96])));
    v1.word2 = MEM[varg0 + 96];
    require(!(int24(MEM[varg0 + 128]) - MEM[varg0 + 128]));
    v1.word3 = MEM[varg0 + 128];
    require(!(address(MEM[varg0 + 160]) - MEM[varg0 + 160]));
    v1.word4 = MEM[varg0 + 160];
    return v1;
}

function 0x3723(uint256 varg0) private { 
    if (!(0x1 & (varg0 == int256.min))) {
        if (!((0 - varg0) / uint256.max - varg0)) {
            return 0 - varg0;
        }
    }
    revert(Panic(17));
}

function 0x8cd() private { 
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
        if (0x20bf14f == v0) {
            0x020bf14f();
        } else if (0xe59f586 == v0) {
            0x0e59f586();
        } else if (0x10a43720 == v0) {
            0x10a43720();
        } else if (0x122067ed == v0) {
            0x122067ed();
        } else if (0x1ce9ae07 == v0) {
            accessControlRegistry();
        } else if (0x1e6934b6 == v0) {
            0x1e6934b6();
        } else if (0x20ed82e4 == v0) {
            0x20ed82e4();
        } else if (0x2197159c == v0) {
            unwrapEth(uint256);
        } else if (0x23a69e75 == v0) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x2c88026b == v0) {
            0x2c88026b();
        } else if (0x30a28ffc == v0) {
            0x30a28ffc();
        } else if (0x3bb6ea1e == v0) {
            0x3bb6ea1e();
        } else if (0x3c54863c == v0) {
            0x3c54863c();
        } else if (0x40b61f12 == v0) {
            0x40b61f12();
        } else if (0x46b5a86a == v0) {
            0x46b5a86a();
        } else if (0x47ca5a42 == v0) {
            0x47ca5a42();
        } else if (0x481c42a2 == v0) {
            0x481c42a2();
        } else if (0x48ea3731 == v0) {
            0x48ea3731();
        } else if (0x51337d44 == v0) {
            0x51337d44();
        } else if (0x59733e7f == v0) {
            0x59733e7f();
        } else if (0x5bc6665d == v0) {
            0x5bc6665d();
        } else if (0x6650eb1e == v0) {
            0x6650eb1e();
        } else if (0x771d503f == v0) {
            0x771d503f();
        } else if (0x7a99c4a2 == v0) {
            0x7a99c4a2();
        } else if (0x84c2341e == v0) {
            0x84c2341e();
        } else if (0x86769f3e == v0) {
            0x86769f3e();
        } else if (0x8790fc2c == v0) {
            0x8790fc2c();
        } else if (0x8f05e71b == v0) {
            0x8f05e71b();
        } else if (0x91dd7346 == v0) {
            unlockCallback(bytes);
        } else if (0x9410ae88 == v0) {
            dexCallback(address,uint256);
        } else if (0x95012fa1 == v0) {
            0x95012fa1();
        } else if (0xa1c20303 == v0) {
            0xa1c20303();
        } else if (0xa632fd63 == v0) {
            0xa632fd63();
        } else if (0xb32ed312 == v0) {
            0xb32ed312();
        } else if (0xb87d3b28 == v0) {
            0xb87d3b28();
        } else if (0xbb25faea == v0) {
            0xbb25faea();
        } else if (0xbf64ae96 == v0) {
            0xbf64ae96();
        } else if (0xc45055c3 == v0) {
            0xc45055c3();
        } else if (0xc4da52dc == v0) {
            0xc4da52dc();
        } else if (0xc8e706e2 == v0) {
            contractWallet();
        } else if (0xc9827183 == v0) {
            0xc9827183();
        } else if (0xcf1346bc == v0) {
            0xcf1346bc();
        } else if (0xd3487997 == v0) {
            uniswapV3MintCallback(uint256,uint256,bytes);
        } else if (0xd44db9b6 == v0) {
            0xd44db9b6();
        } else if (0xd9e301b7 == v0) {
            0xd9e301b7();
        } else if (0xe2f48005 == v0) {
            0xe2f48005();
        } else if (0xfa461e33 == v0) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else if (0xfb034fb2 == v0) {
            0xfb034fb2();
        } else if (!(0xfcdcb2b8 - v0)) {
            0xfcdcb2b8();
        }
    }
    if (!msg.data.length) {
        receive();
    } else {
        exit;
    }
}
