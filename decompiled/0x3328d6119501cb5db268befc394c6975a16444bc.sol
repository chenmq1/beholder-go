// Decompiled by library.dedaub.com
// 2025.12.08 13:40 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
address _delegate; // STORAGE[0x0] bytes 0 to 19
bool stor_3_0_0; // STORAGE[0x3] bytes 0 to 0
bool _locked; // STORAGE[0x3] bytes 1 to 1
address _maverickV2AddLiquidityCallback; // STORAGE[0x1] bytes 0 to 19
address stor_3_2_21; // STORAGE[0x3] bytes 2 to 21



function 0x1125(uint256 varg0, address varg1, address varg2) private { 
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
        v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v6];
        if (MEM[v6]) {
            require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
            v2 = MEM[32 + v6];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error(0x545246));
    return ;
}

function 0x12fd(uint256 varg0, address varg1, address varg2) private { 
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
        RETURNDATACOPY(v7.data, 0, RETURNDATASIZE());
    }
    if (v2) {
        v2 = v8 = !MEM[v5];
        if (MEM[v5]) {
            require(32 + v5 + MEM[v5] - (32 + v5) >= 32);
            v2 = v9 = MEM[32 + v5];
            require(v9 == bool(v9));
        }
    }
    require(v2, Error('TransferHelper::safeApprove: approve failed'));
    return ;
}

function 0x15e1(bytes varg0) private { 
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    require(32 + (varg0 + varg0.length) - varg0.data >= 32);
    require(MEM[varg0.data] <= uint64.max);
    require(32 + (varg0 + varg0.length) - (varg0.data + MEM[varg0.data]) >= 96);
    v0 = 0x1d93();
    require(varg0[MEM[varg0.data]] == address(varg0[MEM[varg0.data]]));
    v0.word0 = varg0[MEM[varg0.data]];
    require(MEM[varg0.data + MEM[varg0.data] + 32] <= uint64.max);
    v1 = 0x2218(varg0.data + MEM[varg0.data] + MEM[varg0.data + MEM[varg0.data] + 32], 32 + (varg0 + varg0.length));
    v0.word1 = v1;
    require(MEM[varg0.data + MEM[varg0.data] + 64] <= uint64.max);
    v2 = 0x2218(varg0.data + MEM[varg0.data] + MEM[varg0.data + MEM[varg0.data] + 64], 32 + (varg0 + varg0.length));
    v0.word2 = v2;
    v3 = v4 = 0;
    while (v3 < v5.length) {
        MEM[v3 + v6.data] = v5[v3];
        v3 += 32;
    }
    MEM[v5.length + v6.data] = 0;
    v7, /* uint256 */ v8, /* uint256 */ v9 = address(v0.word0).delegatecall(v6.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v10 = v11 = 96;
    } else {
        v10 = v12 = new bytes[](RETURNDATASIZE());
        v8 = v12.data;
        RETURNDATACOPY(v8, 0, RETURNDATASIZE());
    }
    require(v7, Error(0x554331));
    if (v13.length) {
        v14 = 0x225d(v15.data, v15.data + v15.length);
        0xf7b(v14);
    }
    v16 = 0x286c(v9, v9 + MEM[v10]);
    if (MEM[v16.word1]) {
        v17 = v18 = 0;
        while (v17 < MEM[v16.word1]) {
            MEM[v17 + MEM[64]] = MEM[v17 + (v16.word1 + 32)];
            v17 += 32;
        }
        MEM[MEM[v16.word1] + MEM[64]] = 0;
        v19, /* uint256 */ v20 = address(v0.word0).delegatecall(MEM[MEM[64]:MEM[64] + MEM[v1711_0x0.word1] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v21 = new bytes[](RETURNDATASIZE());
            v20 = v21.data;
            RETURNDATACOPY(v20, 0, RETURNDATASIZE());
        }
        require(v19, Error(21827));
    }
    return v16.word0;
}

function 0x17c2(struct(2) varg0) private { 
    if (0 - bytes1(varg0.word1)) {
        require(!(uint248.max + 1 - bytes1(varg0.word1)), Error(0x494653));
        v0 = 0x298d(v1.data, v1.data + v1.length);
        v2, /* uint256 */ v3 = address(v0.word0).balanceOf(this).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v3 > v0.word2) {
            v3 = v4 = _SafeSub(v3, v0.word2);
        }
        if (!v3) {
            return ;
        } else {
            0x1125(v3, v0.word1, v0.word0);
            return ;
        }
    } else {
        v5 = 0x298d(v6.data, v6.data + v6.length);
        0x1125(v5.word2, v5.word1, v5.word0);
        return ;
    }
}

function 0x1d49() private { 
    v0 = new struct(2);
    require(!((v0 + 64 < v0) | (v0 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x1d71() private { 
    v0 = new struct(1);
    require(!((v0 + 32 < v0) | (v0 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x1d93() private { 
    v0 = new struct(3);
    require(!((v0 + 96 < v0) | (v0 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x07a1018e(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    0x466(varg0.length, varg0.data);
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(this == sender, Error(0x57486f));
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 96);
    v1 = 0x1d93();
    v1.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] <= uint64.max);
    v2 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64];
    require(v2 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word2 = v3;
    if (v4.length) {
        v5 = 0x225d(v6.data, v6.data + v6.length);
        0xf7b(v5);
    }
    0x1125(v1.word0, msg.sender, v1.word1);
}

function 0x2218(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    v2 = v3 = 0;
    while (v2 < v0) {
        v1[v2] = MEM[v2 + (varg0 + 32)];
        v2 += 32;
    }
    v1[v0] = 0;
    return v1;
}

function 0x225d(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(varg1 > v0 + 31);
    require(MEM[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](MEM[v0]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (MEM[v0] << 5) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (MEM[v0] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(v0 + (MEM[v0] << 5) + 32 <= varg1);
    v4 = v5 = v0 + 32;
    while (v4 < v0 + (MEM[v0] << 5) + 32) {
        require(MEM[v4] <= uint64.max);
        require(varg1 - (v0 + MEM[v4]) - 32 >= 64);
        v6 = 0x1d49();
        require(MEM[v0 + MEM[v4] + 32] <= uint64.max);
        v7 = 0x2218(v0 + MEM[v4] + MEM[v0 + MEM[v4] + 32] + 32, varg1);
        v6.word0 = v7;
        require(MEM[v0 + MEM[v4] + 64] == address(MEM[v0 + MEM[v4] + 64]));
        v6.word1 = MEM[v0 + MEM[v4] + 64];
        MEM[v2] = v6;
        v2 += 32;
        v4 += 32;
    }
    return v1;
}

function maverickV2AddLiquidityCallback(address tokenA, address tokenB, uint256 amountA, uint256 amountB, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    if (amountA) {
        0x1125(amountA, msg.sender, tokenA);
    }
    if (amountB) {
        0x1125(amountB, msg.sender, tokenB);
    }
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 96);
    v1 = 0x1d93();
    require(msg.data[4 + data + 32 + data.word1] == address(msg.data[4 + data + 32 + data.word1]));
    v1.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == bool(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] <= uint64.max);
    require(4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64] + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64]]);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64]]) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64] + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64]] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v2.data, 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64] + 32, msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64]]);
    v2[msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 64]]] = 0;
    v1.word2 = v2;
    if (amount0Delta > 0) {
        v3 = v4 = v1.word1;
    } else {
        v3 = !v1.word1;
    }
    require(v3, Error(0x455841));
    if (v5.length) {
        v6 = 0x225d(v7.data, v7.data + v7.length);
        0xf7b(v6);
    }
    0x1125(v8, msg.sender, v1.word0);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function onFlashLoan(address initiator, address token, uint256 amount, uint256 fee, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 32);
    v1 = 0x1d71();
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    require(4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v2.data, 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + 32, msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]);
    v2[msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]] = 0;
    v1.word0 = v2;
    if (v3.length) {
        v4 = 0x225d(v5.data, v5.data + v5.length);
        0xf7b(v4);
    }
    v6 = _SafeAdd(amount, fee);
    0x12fd(v6, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa, 0x6b175474e89094c44da98b954eedeac495271d0f);
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9;
}

function 0x286c(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(varg1 - v0 >= 64);
    v1 = 0x1d49();
    require(MEM[v0] <= uint64.max);
    v2 = 0x2218(v0 + MEM[v0], varg1);
    v1.word0 = v2;
    require(MEM[v0 + 32] <= uint64.max);
    v3 = 0x2218(v0 + MEM[v0 + 32], varg1);
    v1.word1 = v3;
    return v1;
}

function 0x298d(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(varg1 - varg0 >= 96);
    v0 = 0x1d93();
    require(MEM[varg0] == address(MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(MEM[varg0 + 32] == address(MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    v0.word2 = MEM[64 + varg0];
    return v0;
}

function onMorphoFlashLoan(uint256 varg0, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 64);
    v1 = 0x1d49();
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    require(4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + 31 < 4 + data + 32 + msg.data[4 + data]);
    v2 = msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]];
    require(v2 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](v2);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v2) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v2) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + v2 + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + 32, v2);
    v3[v2] = 0;
    v1.word0 = v3;
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    if (v4.length) {
        v5 = 0x225d(v6.data, v6.data + v6.length);
        0xf7b(v5);
    }
    0x12fd(varg0, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, v1.word1);
}

function 0x348660a7(address varg0, bytes varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender == 0x3b3cc22af3ae1eac0440bcee416b40;
    if (msg.sender != 0x3b3cc22af3ae1eac0440bcee416b40) {
        v0 = v2 = msg.sender == 0xe2cd944360d75bf2c323e4ab8b64ea3bbc358181;
    }
    if (!v0) {
        v0 = msg.sender == _delegate;
    }
    require(v0, Error(0x535259));
    CALLDATACOPY(v3.data, varg1.data, varg1.length);
    MEM[varg1.length + v3.data] = 0;
    v4, /* uint256 */ v5, /* uint256 */ v6 = varg0.delegatecall(v3.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v7 = v8 = 96;
    } else {
        v7 = v9 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v9.data, 0, RETURNDATASIZE());
    }
    require(v4, Error(0x444346));
    v10 = new uint256[](MEM[v7]);
    v11 = v12 = 0;
    while (v11 < MEM[v7]) {
        MEM[v11 + v10.data] = MEM[v11 + (v7 + 32)];
        v11 += 32;
    }
    MEM[MEM[v7] + v10.data] = 0;
    return v10;
}

function 0x3703407d(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = msg.sender == 0x3b3cc22af3ae1eac0440bcee416b40;
    if (msg.sender != 0x3b3cc22af3ae1eac0440bcee416b40) {
        v0 = v2 = msg.sender == 0xe2cd944360d75bf2c323e4ab8b64ea3bbc358181;
    }
    if (!v0) {
        v0 = msg.sender == _delegate;
    }
    require(v0, Error(0x535259));
    stor_3_2_21 = varg0;
}

function 0x4ced80a3(uint256 varg0, uint256 varg1, struct(3) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 64);
    v1 = 0x1d49();
    require(varg2.word1 == address(varg2.word1));
    v1.word0 = varg2.word1;
    require(varg2.word2 == address(varg2.word2));
    v1.word1 = varg2.word2;
    if (varg0) {
        0x1125(varg0, msg.sender, v1.word0);
    }
    if (varg1) {
        0x1125(varg1, msg.sender, v1.word1);
    }
}

function 0x574b48d2(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    v1 = 4 + varg0 + 32 + msg.data[4 + varg0];
    require(v1 - (4 + varg0 + 32) >= 32);
    require(varg0.word1 <= uint64.max);
    require(v1 - (4 + varg0 + 32 + varg0.word1) >= 96);
    v2 = 0x1d93();
    require(msg.data[4 + varg0 + 32 + varg0.word1] == address(msg.data[4 + varg0 + 32 + varg0.word1]));
    v2.word0 = msg.data[4 + varg0 + 32 + varg0.word1];
    require(msg.data[4 + varg0 + 32 + varg0.word1 + 32] <= uint64.max);
    v3 = 4 + varg0 + 32 + varg0.word1 + msg.data[4 + varg0 + 32 + varg0.word1 + 32];
    require(v3 + 31 < v1);
    require(msg.data[v3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](msg.data[v3]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3]) + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v3 + msg.data[v3] + 32 <= v1);
    CALLDATACOPY(v4.data, v3 + 32, msg.data[v3]);
    v4[msg.data[v3]] = 0;
    v2.word1 = v4;
    require(msg.data[4 + varg0 + 32 + varg0.word1 + 64] <= uint64.max);
    v5 = 4 + varg0 + 32 + varg0.word1 + msg.data[4 + varg0 + 32 + varg0.word1 + 64];
    require(v5 + 31 < v1);
    require(msg.data[v5] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new bytes[](msg.data[v5]);
    require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v5]) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v5]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v5 + msg.data[v5] + 32 <= v1);
    CALLDATACOPY(v6.data, v5 + 32, msg.data[v5]);
    v6[msg.data[v5]] = 0;
    v2.word2 = v6;
    v7 = v8 = 0;
    while (v7 < v9.length) {
        MEM[v7 + v10.data] = v9[v7];
        v7 += 32;
    }
    MEM[v9.length + v10.data] = 0;
    v11, /* uint256 */ v12, /* uint256 */ v13 = address(v2.word0).delegatecall(v10.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v14 = v15 = 96;
    } else {
        v14 = v16 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v16.data, 0, RETURNDATASIZE());
    }
    require(v11, Error(0x554331));
    if (v17.length) {
        v18 = 0x225d(v19.data, v19.data + v19.length);
        0xf7b(v18);
    }
    v20 = 0x286c(v13, v13 + MEM[v14]);
    if (MEM[v20.word1]) {
        v21 = v22 = 0;
        while (v21 < MEM[v20.word1]) {
            MEM[v21 + MEM[64]] = MEM[v21 + (v20.word1 + 32)];
            v21 += 32;
        }
        MEM[MEM[v20.word1] + MEM[64]] = 0;
        v23, /* uint256 */ v24 = address(v2.word0).delegatecall(MEM[MEM[64]:MEM[64] + MEM[v152f_0x0V0x863V0x344.word1] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v25 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v25.data, 0, RETURNDATASIZE());
        }
        require(v23, Error(21827));
    }
    v26 = new uint256[](MEM[v20.word0]);
    v27 = v28 = 0;
    while (v27 < MEM[v20.word0]) {
        MEM[v27 + v26.data] = MEM[v27 + (v20.word0 + 32)];
        v27 += 32;
    }
    MEM[MEM[v20.word0] + v26.data] = 0;
    return v26;
}

function 0x599d0714(uint256 varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    0x1125(varg2, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, varg1);
}

function delegate(address delegatee) public payable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = msg.sender == 0x3b3cc22af3ae1eac0440bcee416b40;
    if (msg.sender != 0x3b3cc22af3ae1eac0440bcee416b40) {
        v0 = v2 = msg.sender == 0xe2cd944360d75bf2c323e4ab8b64ea3bbc358181;
    }
    if (!v0) {
        v0 = msg.sender == _delegate;
    }
    require(v0, Error(0x535259));
    CALLDATACOPY(MEM[64], 36, msg.data.length - 36);
    v3 = delegatee.delegatecall(MEM[MEM[64]:MEM[64] + msg.data.length - 36], MEM[0:0]).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    return MEM[MEM[64]:MEM[64] + RETURNDATASIZE()];
}

function maverickV2SwapCallback(address tokenIn, uint256 amountToPay, uint256 varg2, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(amountToPay > 0, Error(0x424239));
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    if (msg.data[4 + data] > 1) {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
        require(data.word1 <= uint64.max);
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 32);
        v1 = 0x1d71();
        require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
        require(4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + 31 < 4 + data + 32 + msg.data[4 + data]);
        require(msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = new bytes[](msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]);
        require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]] + 32 <= 4 + data + 32 + msg.data[4 + data]);
        CALLDATACOPY(v2.data, 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1] + 32, msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]);
        v2[msg.data[4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1]]] = 0;
        v1.word0 = v2;
        require(v3.length, Error(0x4d4144));
        v4 = 0x225d(v5.data, v5.data + v5.length);
        0xf7b(v4);
    }
    0x1125(amountToPay, msg.sender, tokenIn);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    stor_3_0_0 = 1;
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    v1 = 4 + rawData + 32 + msg.data[4 + rawData];
    require(v1 - (4 + rawData + 32) >= 32);
    require(rawData.word1 <= uint64.max);
    require(v1 - (4 + rawData + 32 + rawData.word1) >= 96);
    v2 = 0x1d93();
    require(msg.data[4 + rawData + 32 + rawData.word1] == address(msg.data[4 + rawData + 32 + rawData.word1]));
    v2.word0 = msg.data[4 + rawData + 32 + rawData.word1];
    require(msg.data[4 + rawData + 32 + rawData.word1 + 32] <= uint64.max);
    v3 = 4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 32];
    require(v3 + 31 < v1);
    require(msg.data[v3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](msg.data[v3]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3]) + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v3 + msg.data[v3] + 32 <= v1);
    CALLDATACOPY(v4.data, v3 + 32, msg.data[v3]);
    v4[msg.data[v3]] = 0;
    v2.word1 = v4;
    require(msg.data[4 + rawData + 32 + rawData.word1 + 64] <= uint64.max);
    v5 = 4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 64];
    require(v5 + 31 < v1);
    require(msg.data[v5] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new bytes[](msg.data[v5]);
    require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v5]) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v5]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v5 + msg.data[v5] + 32 <= v1);
    CALLDATACOPY(v6.data, v5 + 32, msg.data[v5]);
    v6[msg.data[v5]] = 0;
    v2.word2 = v6;
    v7 = v8 = 0;
    while (v7 < v9.length) {
        MEM[v7 + v10.data] = v9[v7];
        v7 += 32;
    }
    MEM[v9.length + v10.data] = 0;
    v11, /* uint256 */ v12, /* uint256 */ v13 = address(v2.word0).delegatecall(v10.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v14 = v15 = 96;
    } else {
        v14 = v16 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v16.data, 0, RETURNDATASIZE());
    }
    require(v11, Error(0x554331));
    if (v17.length) {
        v18 = 0x225d(v19.data, v19.data + v19.length);
        0xf7b(v18);
    }
    v20 = 0x286c(v13, v13 + MEM[v14]);
    if (MEM[v20.word1]) {
        v21 = v22 = 0;
        while (v21 < MEM[v20.word1]) {
            MEM[v21 + MEM[64]] = MEM[v21 + (v20.word1 + 32)];
            v21 += 32;
        }
        MEM[MEM[v20.word1] + MEM[64]] = 0;
        v23, /* uint256 */ v24 = address(v2.word0).delegatecall(MEM[MEM[64]:MEM[64] + MEM[v152f_0x0V0x9f7.word1] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v25 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v25.data, 0, RETURNDATASIZE());
        }
        require(v23, Error(21827));
    }
    stor_3_0_0 = 0;
    v26 = new uint256[](MEM[v20.word0]);
    v27 = v28 = 0;
    while (v27 < MEM[v20.word0]) {
        MEM[v27 + v26.data] = MEM[v27 + (v20.word0 + 32)];
        v27 += 32;
    }
    MEM[MEM[v20.word0] + v26.data] = 0;
    return v26;
}

function locked(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    _locked = 1;
    require(36 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    require(36 + (msg.data.length - 36) - 36 >= 32);
    require(varg1 <= uint64.max);
    require(36 + varg1 + 31 < 36 + (msg.data.length - 36));
    require(msg.data[36 + varg1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](msg.data[36 + varg1]);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[36 + varg1]) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[36 + varg1]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(36 + varg1 + msg.data[36 + varg1] + 32 <= 36 + (msg.data.length - 36));
    CALLDATACOPY(v0.data, 36 + varg1 + 32, msg.data[36 + varg1]);
    v0[msg.data[36 + varg1]] = 0;
    v1 = 0x15e1(v0);
    _locked = 0;
    return MEM[va58_0x0 + 32:va58_0x0 + 32 + MEM[va58_0x0]];
}

function 0xc5353dd3(bytes varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = 0x15e1(v0);
    v2 = new uint256[](MEM[v1]);
    v3 = v4 = 0;
    while (v3 < MEM[v1]) {
        MEM[v3 + v2.data] = MEM[v3 + (v1 + 32)];
        v3 += 32;
    }
    MEM[MEM[v1] + v2.data] = 0;
    return v2;
}

function 0xdcb698ab(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    0xab0(varg1.length, varg1.data, varg0.length, varg0.data);
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(tokens <= uint64.max);
    require(msg.data.length > 4 + tokens + 31);
    require(tokens.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](tokens.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (tokens.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (tokens.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + tokens + (tokens.length << 5) + 32 <= msg.data.length);
    v3 = v4 = tokens.data;
    while (v3 < 4 + tokens + (tokens.length << 5) + 32) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v3 += 32;
        v1 = v1 + 32;
    }
    require(amounts <= uint64.max);
    require(4 + amounts + 31 < msg.data.length);
    require(amounts.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](amounts.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (amounts.length << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (amounts.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + amounts + (amounts.length << 5) + 32 <= msg.data.length);
    v8 = v9 = amounts.data;
    while (v8 < 4 + amounts + (amounts.length << 5) + 32) {
        MEM[v6] = msg.data[v8];
        v6 += 32;
        v8 += 32;
    }
    require(feeAmounts <= uint64.max);
    require(4 + feeAmounts + 31 < msg.data.length);
    require(feeAmounts.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new uint256[](feeAmounts.length);
    require(!((v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (feeAmounts.length << 5) + 31) < v10) | (v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (feeAmounts.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v11 = v12 = v10.data;
    require(4 + feeAmounts + (feeAmounts.length << 5) + 32 <= msg.data.length);
    v13 = v14 = feeAmounts.data;
    while (v13 < 4 + feeAmounts + (feeAmounts.length << 5) + 32) {
        MEM[v11] = msg.data[v13];
        v11 += 32;
        v13 += 32;
    }
    require(userData <= uint64.max);
    require(4 + userData + 31 < msg.data.length);
    require(userData.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v15 = new bytes[](userData.length);
    require(!((v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + userData.length) + 31) < v15) | (v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + userData.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + userData + userData.length + 32 <= msg.data.length);
    CALLDATACOPY(v15.data, userData.data, userData.length);
    v15[userData.length] = 0;
    require(msg.sender == _maverickV2AddLiquidityCallback);
    _maverickV2AddLiquidityCallback = 1;
    require(32 + (v15 + v15.length) - v15.data >= 32);
    require(MEM[v15.data] <= uint64.max);
    require(32 + (v15 + v15.length) - (v15.data + MEM[v15.data]) >= 32);
    v16 = 0x1d71();
    require(v15[MEM[v15.data]] <= uint64.max);
    v17 = 0x2218(v15.data + MEM[v15.data] + v15[MEM[v15.data]], 32 + (v15 + v15.length));
    v16.word0 = v17;
    if (v18.length) {
        v19 = 0x225d(v20.data, v20.data + v20.length);
        0xf7b(v19);
    }
    v21 = v22 = 0;
    while (1) {
        if (v21 >= v0.length) {
            exit;
        } else {
            require(0 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v23 = v0.data;
            require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v24 = v10.data;
            require(0 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v25 = v5.data;
            v26 = _SafeAdd(v5[0], v10[0]);
            v27 = v28 = 0;
            while (v27 < 68) {
                MEM[v27 + MEM[64]] = MEM[v27 + (MEM[64] + 32)];
                v27 += 32;
            }
            MEM[68 + MEM[64]] = 0;
            v29 = v30, /* uint256 */ v31, /* uint256 */ v32 = address(v0[0x0]).transfer(address(0xba12222222228d8ba445958a75a0704d566bf2c8), v26).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v33 = 96;
            } else {
                v33 = v34 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v34.data, 0, RETURNDATASIZE());
            }
            if (v30) {
                v29 = v35 = !MEM[v33];
                if (MEM[v33]) {
                    require(32 + v33 + MEM[v33] - (32 + v33) >= 32);
                    v29 = MEM[32 + v33];
                    require(v29 == bool(v29));
                }
            }
            require(v29, Error(0x545246));
            v21 += 1;
        }
    }
}

function 0xf93b3d58() public nonPayable { 
    return stor_3_2_21;
}

function 0x466(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = msg.sender == 0x3b3cc22af3ae1eac0440bcee416b40;
    if (msg.sender != 0x3b3cc22af3ae1eac0440bcee416b40) {
        v0 = v2 = msg.sender == 0xe2cd944360d75bf2c323e4ab8b64ea3bbc358181;
    }
    if (!v0) {
        v0 = msg.sender == _delegate;
    }
    require(v0, Error(0x535259));
    require(!msg.value, Error(0x56414c));
    v3 = varg1 + varg0;
    require(v3 - varg1 >= 32);
    require(msg.data[varg1] <= uint64.max);
    v4 = varg1 + msg.data[varg1];
    require(v3 - v4 >= 32);
    v5 = 0x1d71();
    require(msg.data[v4] <= uint64.max);
    require(v4 + msg.data[v4] + 31 < v3);
    require(msg.data[v4 + msg.data[v4]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new uint256[](msg.data[v4 + msg.data[v4]]);
    require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v4 + msg.data[v4]] << 5) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v4 + msg.data[v4]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v7 = v8 = v6.data;
    require(v4 + msg.data[v4] + (msg.data[v4 + msg.data[v4]] << 5) + 32 <= v3);
    v9 = v10 = v4 + msg.data[v4] + 32;
    while (v9 < v4 + msg.data[v4] + (msg.data[v4 + msg.data[v4]] << 5) + 32) {
        require(msg.data[v9] <= uint64.max);
        require(v3 - (v4 + msg.data[v4] + msg.data[v9] + 32) >= 64);
        v11 = 0x1d49();
        require(msg.data[v4 + msg.data[v4] + msg.data[v9] + 32] <= uint64.max);
        v12 = v4 + msg.data[v4] + msg.data[v9] + 32 + msg.data[v4 + msg.data[v4] + msg.data[v9] + 32];
        require(v12 + 31 < v3);
        require(msg.data[v12] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v13 = new bytes[](msg.data[v12]);
        require(!((v13 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v12]) + 31) < v13) | (v13 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v12]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v12 + msg.data[v12] + 32 <= v3);
        CALLDATACOPY(v13.data, v12 + 32, msg.data[v12]);
        v13[msg.data[v12]] = 0;
        v11.word0 = v13;
        require(msg.data[v4 + msg.data[v4] + msg.data[v9] + 32 + 32] == address(msg.data[v4 + msg.data[v4] + msg.data[v9] + 32 + 32]));
        v11.word1 = msg.data[v4 + msg.data[v4] + msg.data[v9] + 32 + 32];
        MEM[v7] = v11;
        v7 += 32;
        v9 += 32;
    }
    v5.word0 = v6;
    v14 = v5.word0;
    0xf7b(v5.word0);
    return ;
}

function 0xab0(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = msg.sender == 0x3b3cc22af3ae1eac0440bcee416b40;
    if (msg.sender != 0x3b3cc22af3ae1eac0440bcee416b40) {
        v0 = v2 = msg.sender == 0xe2cd944360d75bf2c323e4ab8b64ea3bbc358181;
    }
    if (!v0) {
        v0 = msg.sender == _delegate;
    }
    require(v0, Error(0x535259));
    require(!msg.value, Error(0x56414c));
    v3 = varg3 + varg2;
    require(v3 - varg3 >= 32);
    require(msg.data[varg3] <= uint64.max);
    v4 = varg3 + msg.data[varg3];
    require(v3 - v4 >= 32);
    v5 = 0x1d71();
    require(msg.data[v4] <= uint64.max);
    require(v4 + msg.data[v4] + 31 < v3);
    require(msg.data[v4 + msg.data[v4]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new uint256[](msg.data[v4 + msg.data[v4]]);
    require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v4 + msg.data[v4]] << 5) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v4 + msg.data[v4]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v7 = v8 = v6.data;
    require(v4 + msg.data[v4] + (msg.data[v4 + msg.data[v4]] << 5) + 32 <= v3);
    v9 = v10 = v4 + msg.data[v4] + 32;
    while (v9 < v4 + msg.data[v4] + (msg.data[v4 + msg.data[v4]] << 5) + 32) {
        require(msg.data[v9] <= uint64.max);
        require(v3 - (v4 + msg.data[v4] + msg.data[v9] + 32) >= 64);
        v11 = 0x1d49();
        require(msg.data[v4 + msg.data[v4] + msg.data[v9] + 32] <= uint64.max);
        v12 = v4 + msg.data[v4] + msg.data[v9] + 32 + msg.data[v4 + msg.data[v4] + msg.data[v9] + 32];
        require(v12 + 31 < v3);
        require(msg.data[v12] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v13 = new bytes[](msg.data[v12]);
        require(!((v13 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v12]) + 31) < v13) | (v13 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v12]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v12 + msg.data[v12] + 32 <= v3);
        CALLDATACOPY(v13.data, v12 + 32, msg.data[v12]);
        v13[msg.data[v12]] = 0;
        v11.word0 = v13;
        require(msg.data[v4 + msg.data[v4] + msg.data[v9] + 32 + 32] == address(msg.data[v4 + msg.data[v4] + msg.data[v9] + 32 + 32]));
        v11.word1 = msg.data[v4 + msg.data[v4] + msg.data[v9] + 32 + 32];
        MEM[v7] = v11;
        v7 += 32;
        v9 += 32;
    }
    v5.word0 = v6;
    v14 = v5.word0;
    0xf7b(v5.word0);
    v15 = varg1 + varg0;
    require(v15 - varg1 >= 32);
    require(msg.data[varg1] <= uint64.max);
    v16 = varg1 + msg.data[varg1];
    require(v15 - v16 >= 128);
    v17 = new struct(4);
    require(!((v17 + 128 < v17) | (v17 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v16] == address(msg.data[v16]));
    v17.word0 = msg.data[v16];
    v17.word1 = msg.data[32 + v16];
    v17.word2 = msg.data[v16 + 64];
    require(msg.data[v16 + 96] <= uint64.max);
    require(v16 + msg.data[v16 + 96] + 31 < v15);
    require(msg.data[v16 + msg.data[v16 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v18 = new uint256[](msg.data[v16 + msg.data[v16 + 96]]);
    require(!((v18 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v16 + msg.data[v16 + 96]] << 5) + 31) < v18) | (v18 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v16 + msg.data[v16 + 96]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v19 = v20 = v18.data;
    require(v16 + msg.data[v16 + 96] + (msg.data[v16 + msg.data[v16 + 96]] << 5) + 32 <= v15);
    v21 = v22 = v16 + msg.data[v16 + 96] + 32;
    while (v21 < v16 + msg.data[v16 + 96] + (msg.data[v16 + msg.data[v16 + 96]] << 5) + 32) {
        require(msg.data[v21] <= uint64.max);
        require(v15 - (v16 + msg.data[v16 + 96] + msg.data[v21] + 32) >= 64);
        v23 = 0x1d49();
        require(msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32] <= uint64.max);
        require(v16 + msg.data[v16 + 96] + msg.data[v21] + 32 + msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32] + 31 < v15);
        v24 = msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32 + msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32]];
        require(v24 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v25 = new bytes[](v24);
        require(!((v25 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v24) + 31) < v25) | (v25 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v24) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v16 + msg.data[v16 + 96] + msg.data[v21] + 32 + msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32] + v24 + 32 <= v15);
        CALLDATACOPY(v25.data, v16 + msg.data[v16 + 96] + msg.data[v21] + 32 + msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32] + 32, v24);
        v25[v24] = 0;
        v23.word0 = v25;
        require(msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32 + 32] == address(msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32 + 32]));
        v23.word1 = msg.data[v16 + msg.data[v16 + 96] + msg.data[v21] + 32 + 32];
        MEM[v19] = v23;
        v19 += 32;
        v21 += 32;
    }
    v17.word3 = v18;
    v26, /* uint256 */ v27 = address(v17.word0).balanceOf(this).gas(msg.gas);
    require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v27 >= v17.word2, Error(0x465442));
    if (v28.length) {
        v29 = v17.word3;
        0xf7b(v17.word3);
        v30, /* uint256 */ v27 = address(v17.word0).balanceOf(this).gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    if (address(v17.word0) != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
        v31, /* uint256 */ v27 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    if (v17.word1) {
        if (v17.word1 <= v27) {
            v27 = v32 = v17.word1;
        }
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v33 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v27).gas(msg.gas);
        require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v34 = block.coinbase.call().value(v27).gas(2300 * !v27);
        require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v27 = v35 = _SafeSub(v27, v27);
    }
    if (v27) {
        0x1125(v27, msg.sender, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
    }
    v36 = v37 = address(v17.word0) != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    if (address(v17.word0) != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
        v36 = v38 = v27 > 0;
    }
    if (!v36) {
        return ;
    } else {
        0x1125(v27, msg.sender, v17.word0);
        return ;
    }
}

function receive() public payable { 
    v0 = v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 != msg.sender;
    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 != msg.sender) {
        v0 = v2 = 0x52aa899454998be5b000ad077a46bbe360f4e497 != msg.sender;
    }
    if (!v0) {
        exit;
    } else {
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        exit;
    }
}

function 0xf7b(uint256 varg0) private { 
    require(varg0.length > 0, Error(0x534d31));
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (address(MEM[32 + varg0[v0]]) - address(0x123456789abcdef123456789abcdef123456789a)) {
            require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v2 = v3 = 0;
            while (v2 < MEM[MEM[varg0[v0]]]) {
                MEM[v2 + MEM[64]] = MEM[v2 + (MEM[varg0[v0]] + 32)];
                v2 += 32;
            }
            MEM[MEM[MEM[varg0[v0]]] + MEM[64]] = 0;
            v4, /* uint256 */ v5 = address(MEM[32 + varg0[v0]]).delegatecall(MEM[MEM[64]:MEM[64] + MEM[MEM[vf7barg0x0[v1119_0x0]]] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v6 = new bytes[](RETURNDATASIZE());
                v5 = v6.data;
                RETURNDATACOPY(v5, 0, RETURNDATASIZE());
            }
            require(v4, Error(0x444346));
        } else {
            require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(32 + MEM[varg0[v0]] + MEM[MEM[varg0[v0]]] - (32 + MEM[varg0[v0]]) >= 32);
            require(MEM[32 + MEM[varg0[v0]]] <= uint64.max);
            v7 = 32 + MEM[varg0[v0]] + MEM[32 + MEM[varg0[v0]]];
            require(32 + MEM[varg0[v0]] + MEM[MEM[varg0[v0]]] - v7 >= 64);
            v8 = 0x1d49();
            require(MEM[v7] <= uint64.max);
            v9 = 0x2218(v7 + MEM[v7], 32 + MEM[varg0[v0]] + MEM[MEM[varg0[v0]]]);
            v8.word0 = v9;
            require(MEM[32 + v7] == bytes1(MEM[32 + v7]));
            v8.word1 = MEM[32 + v7];
            0x17c2(v8);
        }
        v0 += 1;
    }
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else {
        if (0x599d0714 > function_selector >> 224) {
            if (0x31f57072 > function_selector >> 224) {
                if (0x7a1018e == function_selector >> 224) {
                    0x07a1018e();
                } else if (0x10d1e85c == function_selector >> 224) {
                    uniswapV2Call(address,uint256,uint256,bytes);
                } else if (0x1f2c6101 == function_selector >> 224) {
                    maverickV2AddLiquidityCallback(address,address,uint256,uint256,bytes);
                } else if (0x23a69e75 != function_selector >> 224) {
                    require(0x23e30c8b == function_selector >> 224);
                    onFlashLoan(address,address,uint256,uint256,bytes);
                }
            } else if (0x31f57072 == function_selector >> 224) {
                onMorphoFlashLoan(uint256,bytes);
            } else if (0x348660a7 == function_selector >> 224) {
                0x348660a7();
            } else if (0x3703407d == function_selector >> 224) {
                0x3703407d();
            } else if (0x3a1c453c != function_selector >> 224) {
                if (0x4ced80a3 != function_selector >> 224) {
                    require(0x574b48d2 == function_selector >> 224);
                    0x574b48d2();
                }
            }
        } else if (0xc5353dd3 > function_selector >> 224) {
            if (0x599d0714 == function_selector >> 224) {
                0x599d0714();
            } else if (0x5c19a95c == function_selector >> 224) {
                delegate(address);
            } else if (0x67ca7c91 == function_selector >> 224) {
                maverickV2SwapCallback(address,uint256,uint256,bytes);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else if (0x99eee9d0 != function_selector >> 224) {
                require(0xb45a3c0e == function_selector >> 224);
                locked(uint256);
            }
        } else if (0xc5353dd3 == function_selector >> 224) {
            0xc5353dd3();
        } else if (0xd3487997 != function_selector >> 224) {
            if (0xdcb698ab == function_selector >> 224) {
                0xdcb698ab();
            } else if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0xf93b3d58 == function_selector >> 224) {
                0xf93b3d58();
            } else {
                require(0xfa461e33 == function_selector >> 224);
            }
        }
        0x4ced80a3();
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
