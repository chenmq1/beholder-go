// Decompiled by library.dedaub.com
// 2025.12.07 22:02 UTC
// Compiled using the solidity compiler version 0.8.24





function 0x849df53d(bytes varg0, uint256[] varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < 4 + (msg.data.length - 4));
    require(varg0.length <= uint64.max);
    require(varg0.data + varg0.length <= 4 + (msg.data.length - 4));
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < 4 + (msg.data.length - 4));
    v0 = v1 = varg1.data;
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](varg1.length);
    require(!((v2 + ((varg1.length << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + ((varg1.length << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(v1 + (varg1.length << 5) <= 4 + (msg.data.length - 4));
    while (1) {
        if (v0 >= v1 + (varg1.length << 5)) {
            0x32e(v2, varg0.length);
            exit;
        } else {
            require(msg.data[v0] == msg.data[v0]);
            MEM[v3] = msg.data[v0];
            v3 = v3 + 32;
            v0 = v0 + 32;
        }
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < 4 + (msg.data.length - 4));
    require(rawData.length <= uint64.max);
    require(rawData.data + rawData.length <= 4 + (msg.data.length - 4));
    v0 = new bytes[](msg.data.length);
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v0[msg.data.length] = 0;
    v1 = 0x4f7(v0, 0x1c4404a6401a02e61f153a7fed1aedddbd1476ff);
    v2 = new uint256[](MEM[v1]);
    v3 = v4 = 0;
    while (v3 < MEM[v1]) {
        MEM[v2.data + v3] = MEM[v1 + 32 + v3];
        v3 = v3 + 32;
    }
    MEM[v2.data + MEM[v1]] = 0;
    return v2;
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    0x2d4a(amountToPay, msg.sender, address(data.word1));
}

function receive() public payable { 
}

function smardexSwapCallback(int256 _amount0Delta, int256 _amount1Delta, bytes _data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.word0 <= uint64.max);
    require(4 + _data + 32 + _data.word0 <= 4 + (msg.data.length - 4));
    if (_amount0Delta <= 0) {
    }
    0x2d4a(v0, msg.sender, address(_data.word1));
}

function executePath(bytes bytecode, uint256[] inputAmounts, address msgSender) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(bytecode <= uint64.max);
    require(4 + bytecode + 31 < 4 + (msg.data.length - 4));
    require(bytecode.length <= uint64.max);
    require(bytecode.data + bytecode.length <= 4 + (msg.data.length - 4));
    require(inputAmounts <= uint64.max);
    require(4 + inputAmounts + 31 < 4 + (msg.data.length - 4));
    v0 = v1 = inputAmounts.data;
    require(inputAmounts.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](inputAmounts.length);
    require(!((v2 + ((inputAmounts.length << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + ((inputAmounts.length << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(v1 + (inputAmounts.length << 5) <= 4 + (msg.data.length - 4));
    while (v0 < v1 + (inputAmounts.length << 5)) {
        require(msg.data[v0] == msg.data[v0]);
        MEM[v3] = msg.data[v0];
        v3 = v3 + 32;
        v0 = v0 + 32;
    }
    0x3e8(msgSender, v2, bytecode.length);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x2d4a(v0, msg.sender, address(data.word1));
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.word0 <= uint64.max);
    require(4 + _data + 32 + _data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x2d4a(v0, msg.sender, address(_data.word1));
}

function cloberMarketSwapCallback(address inputToken, address varg1, uint256 inputAmount, uint256 outputAmount, bytes data) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 160);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    v0, /* bool */ v1 = inputToken.transfer(msg.sender, inputAmount).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == bool(v1));
}

function 0x2d4a(uint256 varg0, address varg1, uint256 varg2) private { 
    MEM[36 + MEM[64] + 32] = varg0;
    MEM[MEM[64]] = 68;
    MEM[64] = 36 + MEM[64] + 64;
    MEM[MEM[64] + 32] = uint224(varg1) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    0x3233(MEM[64], varg2);
    return ;
}

function 0x2ea5(uint256 varg0, address varg1) private { 
    v0, /* uint256 */ v1 = varg1.allowance(address(this), address(varg0)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (!(v1 - 0)) {
        0x330f(uint256.max, varg0, varg1);
    }
    return ;
}

function 0x2f78(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = _SafeDiv(varg1, uint48.max + 1);
    v1 = _SafeMod(varg1, uint48.max + 1);
    v2 = _SafeDiv(varg0, uint48.max + 1);
    v3 = _SafeMod(varg0, uint48.max + 1);
    v4 = _SafeMul(v3 << v2, v1 << v0);
    v5 = v6 = v4 < 0x40000000000000000000000000000000;
    if (v6) {
        v7 = _SafeMul(v3 << v2, v3 << v2);
        v5 = v8 = v7 < 0x40000000000000000000000000000000;
    }
    if (!v5) {
        v9 = _SafeMul(v3 << v2, varg2);
        v10 = _SafeMul(v1 << v0, varg3);
        require(v10 <= v10 + v9, Panic(17)); // arithmetic overflow or underflow
        v11 = _SafeDiv(v10 + v9, uint48.max + 1);
        v12 = _SafeMul(v3 << v2, v11);
        v13 = _SafeMul(varg3, varg2);
        if (v13 >= uint208.max + 1) {
            v14 = _SafeMul(varg3, varg2);
            v15 = _SafeDiv(v14, v12);
            v16 = _SafeMul(uint48.max + 1, v15);
            return v16;
        } else {
            v17 = _SafeMul(uint48.max + 1, varg3);
            v18 = _SafeMul(v17, varg2);
            v19 = _SafeDiv(v18, v12);
            return v19;
        }
    } else {
        v20 = _SafeMul(v3 << v2, varg2);
        v21 = _SafeMul(v1 << v0, varg3);
        require(v21 <= v21 + v20, Panic(17)); // arithmetic overflow or underflow
        v22 = _SafeMul(v3 << v2, v21 + v20);
        v23 = _SafeMul(varg3, varg2);
        if (v23 >= uint160.max + 1) {
            v24 = _SafeMul(varg3, varg2);
            if (v24 >= uint208.max + 1) {
                v25 = _SafeMul(varg3, varg2);
                v26 = _SafeDiv(v25, v22);
                v27 = _SafeMul(uint96.max + 1, v26);
                return v27;
            } else {
                v28 = _SafeMul(uint48.max + 1, varg3);
                v29 = _SafeMul(v28, varg2);
                v30 = _SafeDiv(v29, v22);
                v31 = _SafeMul(uint48.max + 1, v30);
                return v31;
            }
        } else {
            v32 = _SafeMul(uint96.max + 1, varg3);
            v33 = _SafeMul(v32, varg2);
            v34 = _SafeDiv(v33, v22);
            return v34;
        }
    }
}

function 0x3233(uint256 varg0, address varg1) private { 
    v0 = 0x33ab(varg0, varg1);
    v1 = v2 = MEM[v0] != 0;
    if (MEM[v0] != 0) {
        require(32 + v0 + MEM[v0] - (32 + v0) >= 32);
        require(MEM[32 + v0] == bool(MEM[32 + v0]));
        v1 = v3 = !MEM[32 + v0];
    }
    require(!v1, SafeERC20FailedOperation(varg1));
    return ;
}

function 0x32e(uint256 varg0, uint256 varg1) private { 
    0x57b(varg0, varg1);
    return ;
}

function 0x330f(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, /* uint256 */ v1 = address(varg2).allowance(address(this), address(varg1)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 <= v1 + varg0, Panic(17)); // arithmetic overflow or underflow
    0x33c1(v1 + varg0, varg1, varg2);
    return ;
}

function 0x33ab(uint256 varg0, address varg1) private { 
    require(this.balance >= 0, AddressInsufficientBalance(address(this)));
    v0 = v1 = 0;
    while (v0 < MEM[varg0]) {
        MEM[MEM[64] + v0] = MEM[varg0 + 32 + v0];
        v0 = v0 + 32;
    }
    MEM[MEM[64] + MEM[varg0]] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4 = varg1.call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[v33abarg0x0] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v5 = v6 = 96;
    } else {
        v5 = v7 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v7.data, 0, RETURNDATASIZE());
    }
    if (v2) {
        v8 = v9 = MEM[v5] == 0;
        if (v9) {
            v8 = varg1.code.size == 0;
        }
        require(!v8, AddressEmptyCode(varg1));
        return v5;
    } else {
        require(MEM[v5] <= 0, v4, MEM[v5]);
        revert(FailedInnerCall());
    }
}

function 0x33c1(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[MEM[64] + v0] = MEM[MEM[64] + 32 + v0];
        v0 = v0 + 32;
    }
    MEM[MEM[64] + 68] = 0;
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = address(varg2).approve(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v9 = MEM[v6] == 0;
        if (MEM[v6] != 0) {
            require(v5 + MEM[v6] - v5 >= 32);
            v2 = MEM[v5];
            require(v2 == bool(v2));
        }
    }
    if (v2) {
        v2 = v10 = (address(varg2)).code.size > 0;
    }
    if (!v2) {
        MEM[36 + MEM[64] + 32] = 0;
        MEM[MEM[64]] = 68;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(varg1) | 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        0x3233(MEM[64], varg2);
        0x3233(MEM[64], varg2);
    }
    return ;
}

function 0x38a4() private { 
    v0 = v1 = new struct(2);
    v2 = v3 = 2;
    while (1) {
        MEM[MEM[64]] = uint128(0);
        MEM[32 + MEM[64]] = uint128(0);
        MEM[64 + MEM[64]] = uint64(0);
        MEM[96 + MEM[64]] = uint64(0);
        MEM[v0] = MEM[64];
        v0 += 32;
        v2 = v2 - 1;
        if (!v2) {
            return v1;
        }
    }
}

function 0x3e8(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    0x57b(varg1, varg2);
    return ;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!varg0 | (varg1 == varg0 * varg1 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x4762(struct(6) varg0, uint256 varg1) private { 
    MEM[varg1] = varg0.word0;
    require(varg0.word1 < 2, Panic(33)); // failed convertion to enum type
    MEM[varg1 + 32] = varg0.word1;
    MEM[varg1 + 64] = address(varg0.word2);
    MEM[varg1 + 96] = address(varg0.word3);
    MEM[varg1 + 128] = varg0.word4;
    MEM[varg1 + 160] = varg1 + 192 - varg1;
    MEM[varg1 + 192] = v0.length;
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[varg1 + 192 + 32 + v1] = v0[v1];
        v1 = v1 + 32;
    }
    MEM[varg1 + 192 + 32 + v0.length] = 0;
    return varg1 + 192 + 32 + (v0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
}

function 0x48ab(uint256 varg0, uint256 varg1, uint256 varg2, struct(4) varg3, struct(6) varg4) private { 
    MEM[varg0] = varg0 + 224 - varg0;
    v0 = 0x4762(varg4, varg0 + 224);
    MEM[varg0 + 32] = address(varg3.word0);
    MEM[varg0 + 32 + 32] = bool(varg3.word1);
    MEM[varg0 + 32 + 64] = address(varg3.word2);
    MEM[varg0 + 32 + 96] = bool(varg3.word3);
    MEM[varg0 + 160] = varg2;
    MEM[varg0 + 192] = varg1;
    return v0;
}

function 0x4a1b(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x4db0(uint256 varg0, uint256 varg1, uint256 varg2, struct(4) varg3, struct(6) varg4) private { 
    MEM[varg0] = varg0 + 224 - varg0;
    v0 = 0x4762(varg4, varg0 + 224);
    MEM[varg0 + 32] = address(varg3.word0);
    MEM[varg0 + 32 + 32] = bool(varg3.word1);
    MEM[varg0 + 32 + 64] = address(varg3.word2);
    MEM[varg0 + 32 + 96] = bool(varg3.word3);
    MEM[varg0 + 160] = varg2;
    MEM[varg0 + 192] = varg1;
    return v0;
}

function 0x4e9c(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    require(2 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + 64 <= varg1);
    while (varg0 < varg0 + 64) {
        require(MEM[varg0] == address(MEM[varg0]));
        MEM[v0] = MEM[varg0];
        v0 = v0 + 32;
        varg0 = varg0 + 32;
    }
    return v0;
}

function 0x4f7(bytes varg0, address varg1) private { 
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        MEM[v2.data + v0] = varg0[v0];
        v0 = v0 + 32;
    }
    MEM[v2.data + varg0.length] = 0;
    v3, /* uint256 */ v4, /* uint256 */ v5 = varg1.delegatecall(v2.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v3) {
        v8 = v9 = MEM[v6] == 0;
        if (v9) {
            v8 = varg1.code.size == 0;
        }
        require(!v8, AddressEmptyCode(varg1));
        return v6;
    } else {
        require(MEM[v6] <= 0, v5, MEM[v6]);
        revert(FailedInnerCall());
    }
}

function 0x504d(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    require(2 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + (uint8.max + 1) <= varg1);
    while (varg0 < varg0 + (uint8.max + 1)) {
        require(varg1 - varg0 >= 128);
        v1 = new struct(4);
        require(!((v1 + 128 > uint64.max) | (v1 + 128 < v1)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[varg0] == uint128(MEM[varg0]));
        v1.word0 = MEM[varg0];
        require(MEM[varg0 + 32] == uint128(MEM[varg0 + 32]));
        v1.word1 = MEM[varg0 + 32];
        require(MEM[varg0 + 64] == uint64(MEM[varg0 + 64]));
        v1.word2 = MEM[varg0 + 64];
        require(MEM[varg0 + 96] == uint64(MEM[varg0 + 96]));
        v1.word3 = MEM[varg0 + 96];
        MEM[v0] = v1;
        v0 = v0 + 32;
        varg0 = varg0 + 128;
    }
    return v0;
}

function _SafeMod(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 % varg1;
}

function 0x57b(uint256 varg0, uint256 varg1) private { 
    require(2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = uint8(msg.data[2 + v1] >> 248 << 248 >> 248);
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    varg0 = v2 = new uint256[](v0);
    if (v0) {
        CALLDATACOPY(v2.data, msg.data.length, v0 << 5);
    }
    require(0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v3 = v2.data;
    v2[0] = msg.sender;
    require(0 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v4 = _SafeMul(uint8(msg.data[v1] >> 248 << 248 >> 248), 32);
    require(2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v5 = v6 = msg.data[2 + v1] >> 248 << 248 >> 248;
    v7 = v8 = v2 + 64;
    v9 = v10 = v1 + v4 - 12;
    while (v5 > 0) {
        MEM[v7] = address(msg.data[v9]);
        v5 = v5 - 1;
        v7 = v7 + 32;
        v9 = v9 + 20;
    }
    require(1 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v11 = uint8(msg.data[1 + v1] >> 248 << 248 >> 248);
    require(v11 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    varg0 = v12 = new uint256[](v11);
    if (v11) {
        CALLDATACOPY(v12.data, msg.data.length, v11 << 5);
    }
    v13 = v14 = 0;
    while (v13 < varg0.length) {
        require(v13 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v13 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v12[v13] = varg0[v13];
        v13 += 1;
    }
    v15 = v16 = 3;
    while (1) {
        require(v15 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v17 = uint8(uint8(msg.data[v15 + varg0] >> 248 << 248 >> 248) >> 1);
        require(v17 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        varg0 = v18 = MEM[32 + (v17 << 5) + varg0];
        require(v15 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (uint8(msg.data[v15 + varg0] >> 248 << 248 >> 248 & 0x1) - 1) {
            require(v15 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v19 = uint8(uint8(msg.data[v15 + varg0] >> 248 << 248 >> 248) >> 1);
            require(v19 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[32 + (v19 << 5) + varg0] = 0;
            varg0 = v15 + 1;
            require(v15 <= varg0, Panic(17)); // arithmetic overflow or underflow
        } else {
            v20 = _SafeMul(v18, msg.data[varg0 + v15 + 1] >> 224);
            varg0 = v21 = v20 >> 32;
            require(v15 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v22 = uint8(uint8(msg.data[v15 + varg0] >> 248 << 248 >> 248) >> 1);
            require(v22 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v23 = 32 + (v22 << 5) + varg0;
            v24 = _SafeSub(MEM[v23], v21);
            MEM[v23] = v24;
            varg0 = v15 + 5;
            require(v15 <= varg0, Panic(17)); // arithmetic overflow or underflow
        }
        require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) <= 23) {
            require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 0) {
                require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 1) {
                    require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 2) {
                        require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) > 5) {
                            require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 6) {
                                require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 7) {
                                    require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 13) {
                                        require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 14) {
                                            require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 15) {
                                                require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 17) {
                                                    require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    require(!(uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 18), Error('Odos: Bad Path 0'));
                                                    require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v25 = v26 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                                    require(v26 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v27 = new uint256[](v26);
                                                    if (v26) {
                                                        v28 = v29 = v27.data;
                                                        do {
                                                            v30 = new struct(2);
                                                            v30.word0 = 0;
                                                            v30.word1 = uint128(0);
                                                            MEM[v28] = v30;
                                                            v28 += 32;
                                                            v25 = v25 - 1;
                                                        } while (v25);
                                                    }
                                                    v31 = msg.data[varg0 + varg0 + 5] >> 224 << 128;
                                                    v32 = v33 = 0;
                                                    while (v32 < v27.length) {
                                                        if (msg.data[varg0 + varg0 + ((v32 << 3) + 13)] >> 224 <= 0) {
                                                            varg0 = v34 = 0;
                                                        } else {
                                                            v35 = _SafeMul(varg0, msg.data[varg0 + varg0 + ((v32 << 3) + 13)] >> 224);
                                                            varg0 = v36 = v35 >> 32;
                                                            varg0 = _SafeSub(varg0, v36);
                                                        }
                                                        v37 = new struct(2);
                                                        require(v31 <= v31 + (msg.data[varg0 + varg0 + ((v32 << 3) + 9)] >> 224), Panic(17)); // arithmetic overflow or underflow
                                                        v37.word0 = v31 + (msg.data[varg0 + varg0 + ((v32 << 3) + 9)] >> 224);
                                                        v37.word1 = uint128(varg0);
                                                        require(v32 < v27.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v27[v32] = v37;
                                                        v32 += 1;
                                                    }
                                                    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 2 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v38 = uint8(msg.data[varg0 + 2 + varg0] >> 248 << 248 >> 248);
                                                    require(v38 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v39 = v40 = MEM[32 + (v38 << 5) + varg0];
                                                    require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v41 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                                    require(v41 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v42 = v43 = MEM[32 + (v41 << 5) + varg0];
                                                    varg0 = v44 = 0;
                                                    if (address(v40) - address(v44)) {
                                                        0x2ea5(0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1, v40);
                                                    } else {
                                                        v39 = v45 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                                                    }
                                                    if (!(address(v43) - address(0x0))) {
                                                        v42 = v46 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                                                    }
                                                    MEM[MEM[64]] = 0;
                                                    MEM[32 + MEM[64]] = address(0x0);
                                                    v47 = new struct(2);
                                                    CALLDATACOPY(v47, msg.data.length, 64);
                                                    MEM[64 + MEM[64]] = v47;
                                                    v48 = 0x38a4();
                                                    MEM[96 + MEM[64]] = v48;
                                                    MEM[MEM[64]] = uint128(0);
                                                    MEM[32 + MEM[64]] = uint128(0);
                                                    MEM[64 + MEM[64]] = uint64(0);
                                                    MEM[96 + MEM[64]] = uint64(0);
                                                    v49 = v50 = 0;
                                                    while (v49 < v27.length) {
                                                        require(v49 < v27.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        MEM[MEM[64]] = 0xbc88d7e400000000000000000000000000000000000000000000000000000000;
                                                        MEM[4 + MEM[64]] = MEM[v27[v49]];
                                                        v51 = address(0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 384]).gas(msg.gas);
                                                        if (bool(v51)) {
                                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 384);
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 384);
                                                            v52 = new struct(4);
                                                            require(!((v52 + 128 > uint64.max) | (v52 + 128 < v52)), Panic(65)); // failed memory allocation (too much memory)
                                                            require(MEM[MEM[64]] == MEM[MEM[64]]);
                                                            v52.word0 = MEM[MEM[64]];
                                                            require(MEM[MEM[64] + 32] == address(MEM[MEM[64] + 32]));
                                                            v52.word1 = MEM[MEM[64] + 32];
                                                            v53 = 0x4e9c(MEM[64] + 64, MEM[64] + RETURNDATASIZE());
                                                            v52.word2 = v53;
                                                            v54 = 0x504d(MEM[64] + 128, MEM[64] + RETURNDATASIZE());
                                                            v52.word3 = v54;
                                                            require(0 < 2, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            if (address(MEM[v52.word2]) == address(v39)) {
                                                                v55 = v56 = 1;
                                                            } else {
                                                                v55 = v57 = 0;
                                                            }
                                                            require(uint8(v55) < 2, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            v58 = 0x2f78(uint64(MEM[96 + MEM[(uint8(v55) << 5) + v52.word3]]), uint64(MEM[64 + MEM[(uint8(v55) << 5) + v52.word3]]), uint128(MEM[32 + MEM[(uint8(v55) << 5) + v52.word3]]), uint128(MEM[MEM[(uint8(v55) << 5) + v52.word3]]));
                                                            require(v49 < v27.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            if (uint128(MEM[32 + v27[v49]]) > v58) {
                                                                require(v49 < v27.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                MEM[32 + v27[v49]] = uint128(v58);
                                                            }
                                                            v49 += 1;
                                                        } else {
                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                            revert(0, RETURNDATASIZE());
                                                        }
                                                    }
                                                    MEM[MEM[64]] = 0xf1c5e01400000000000000000000000000000000000000000000000000000000;
                                                    MEM[4 + MEM[64]] = address(v39);
                                                    MEM[4 + MEM[64] + 32] = address(v42);
                                                    MEM[4 + MEM[64] + 64] = 160;
                                                    MEM[4 + MEM[64] + 160] = v27.length;
                                                    v59 = v60 = 4 + MEM[64] + 160 + 32;
                                                    v61 = v62 = v27.data;
                                                    v63 = v64 = 0;
                                                    while (v63 < v27.length) {
                                                        MEM[v59] = MEM[MEM[v61]];
                                                        MEM[v59 + 32] = uint128(MEM[MEM[v61] + 32]);
                                                        v59 = v59 + 64;
                                                        v61 = v61 + 32;
                                                        v63 = v63 + 1;
                                                    }
                                                    MEM[4 + MEM[64] + 96] = block.timestamp;
                                                    MEM[4 + MEM[64] + 128] = uint128(1);
                                                    v65 = address(0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1).call(MEM[MEM[64]:MEM[64] + v5189_0x1V0x525fV0x2b90 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).value(varg0).gas(msg.gas);
                                                    if (bool(v65)) {
                                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                        require(MEM[MEM[64]] == uint128(MEM[MEM[64]]));
                                                        require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v66 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                        require(v66 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v67 = 32 + (v66 << 5) + varg0;
                                                        require(MEM[v67] <= MEM[v67] + uint128(MEM[MEM[64]]), Panic(17)); // arithmetic overflow or underflow
                                                        MEM[v67] = MEM[v67] + uint128(MEM[MEM[64]]);
                                                        v68 = _SafeMul(8, v27.length);
                                                        require(9 <= 9 + v68, Panic(17)); // arithmetic overflow or underflow
                                                        v15 = varg0 + (9 + v68);
                                                        require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                                    } else {
                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                        revert(0, RETURNDATASIZE());
                                                    }
                                                } else {
                                                    require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v69 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                                    require(v69 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v70 = MEM[32 + (v69 << 5) + varg0];
                                                    MEM[MEM[64]] = uint256(0);
                                                    require(0 <= 1, Panic(33)); // failed convertion to enum type
                                                    MEM[32 + MEM[64]] = 0;
                                                    MEM[64 + MEM[64]] = address(0x0);
                                                    MEM[96 + MEM[64]] = address(0x0);
                                                    MEM[128 + MEM[64]] = 0;
                                                    MEM[160 + MEM[64]] = 96;
                                                    MEM[MEM[64]] = address(0x0);
                                                    MEM[32 + MEM[64]] = False;
                                                    MEM[64 + MEM[64]] = address(0x0);
                                                    MEM[96 + MEM[64]] = False;
                                                    v71 = new struct(6);
                                                    require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 <= varg0 + 37, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 5 <= varg0 + 37);
                                                    require(varg0 + 37 <= varg0);
                                                    v72 = v73 = msg.data[varg0 + (varg0 + 5)];
                                                    if (varg0 + 37 - (varg0 + 5) < 32) {
                                                        v72 = v73 & uint256.max << (32 - (varg0 + 37 - (varg0 + 5)) << 3);
                                                    }
                                                    v71.word0 = v72;
                                                    require(0 <= 1, Panic(33)); // failed convertion to enum type
                                                    v71.word1 = 0;
                                                    v71.word2 = address(v70);
                                                    require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v74 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                                    require(v74 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v71.word3 = address(MEM[32 + (v74 << 5) + varg0]);
                                                    v71.word4 = varg0;
                                                    require(varg0 <= varg0 + 37, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 <= varg0 + 549, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 37 <= varg0 + 549);
                                                    require(varg0 + 549 <= varg0);
                                                    v75 = new bytes[](varg0 + 549 - (varg0 + 37));
                                                    CALLDATACOPY(v75.data, varg0 + (varg0 + 37), varg0 + 549 - (varg0 + 37));
                                                    v75[varg0 + 549 - (varg0 + 37)] = 0;
                                                    v71.word5 = v75;
                                                    v76 = new struct(4);
                                                    v76.word0 = address(this);
                                                    v76.word1 = False;
                                                    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                                    v77 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                                    if (v77 > 0) {
                                                        v78 = _SafeSub(v77, 1);
                                                        require(v78 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v79 = v80 = MEM[32 + (v78 << 5) + varg0];
                                                    } else {
                                                        v79 = v81 = this;
                                                    }
                                                    v76.word2 = address(v79);
                                                    v76.word3 = False;
                                                    varg0 = v82 = 0;
                                                    if (address(v70) - address(v82)) {
                                                        0x2ea5(0xd315a9c38ec871068fec378e4ce78af528c76293, v70);
                                                    }
                                                    MEM[MEM[64]] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                                    v83 = 0x4db0(4 + MEM[64], block.timestamp, 0, v76, v71);
                                                    v84 = address(0xd315a9c38ec871068fec378e4ce78af528c76293).call(MEM[MEM[64]:MEM[64] + v25ae_0x0 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).value(varg0).gas(msg.gas);
                                                    if (bool(v84)) {
                                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                        require(MEM[MEM[64]] == MEM[MEM[64]]);
                                                        require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v85 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                        require(v85 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v86 = 32 + (v85 << 5) + varg0;
                                                        require(MEM[v86] <= MEM[v86] + MEM[MEM[64]], Panic(17)); // arithmetic overflow or underflow
                                                        MEM[v86] = MEM[v86] + MEM[MEM[64]];
                                                        v15 = varg0 + 549;
                                                        require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                                    } else {
                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                        revert(0, RETURNDATASIZE());
                                                    }
                                                }
                                            } else {
                                                v87 = new struct(13);
                                                v87.word0 = address(0x0);
                                                v87.word1 = address(0x0);
                                                require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                                v88 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                                if (v88 > 0) {
                                                    v89 = _SafeSub(v88, 1);
                                                    require(v89 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v90 = v91 = MEM[32 + (v89 << 5) + varg0];
                                                } else {
                                                    v90 = v92 = this;
                                                }
                                                v87.word2 = address(v90);
                                                v87.word3 = address(tx.origin);
                                                require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v93 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                                require(v93 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v87.word4 = address(MEM[32 + (v93 << 5) + varg0]);
                                                require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v94 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                                require(v94 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v87.word5 = address(MEM[32 + (v94 << 5) + varg0]);
                                                v87.word6 = varg0;
                                                v87.word7 = 0;
                                                v87.word8 = 0;
                                                v87.word9 = 0;
                                                v87.word10 = 0;
                                                require(varg0 <= varg0 + 93, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 <= varg0 + 125, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 93 <= varg0 + 125);
                                                require(varg0 + 125 <= varg0);
                                                v95 = v96 = msg.data[varg0 + (varg0 + 93)];
                                                if (varg0 + 125 - (varg0 + 93) < 32) {
                                                    v95 = v96 & uint256.max << (32 - (varg0 + 125 - (varg0 + 93)) << 3);
                                                }
                                                v87.word11 = v95;
                                                require(varg0 <= varg0 + 125, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 <= varg0 + 190, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 125 <= varg0 + 190);
                                                require(varg0 + 190 <= varg0);
                                                v97 = new bytes[](varg0 + 190 - (varg0 + 125));
                                                CALLDATACOPY(v97.data, varg0 + (varg0 + 125), varg0 + 190 - (varg0 + 125));
                                                v97[varg0 + 190 - (varg0 + 125)] = 0;
                                                v87.word12 = v97;
                                                v98 = varg0 + 5 + varg0;
                                                v87.word0 = msg.data[v98] >> 96;
                                                v87.word1 = msg.data[v98 + 20] >> 96;
                                                v87.word7 = msg.data[v98 + 40] >> 128;
                                                v87.word8 = msg.data[v98 + 56] >> 128;
                                                v87.word9 = msg.data[v98 + 72] >> 192;
                                                v87.word10 = msg.data[v98 + 80] >> 192;
                                                if (v87.word6 > v87.word7) {
                                                    v87.word6 = v87.word7;
                                                }
                                                v99 = v100 = 0;
                                                if (address(v87.word4) - address(v100)) {
                                                    0x2ea5(0x55084ee0fef03f14a305cd24286359a35d735151, v87.word4);
                                                } else {
                                                    v99 = v101 = v87.word6;
                                                }
                                                MEM[MEM[64]] = 0xc52ac72000000000000000000000000000000000000000000000000000000000;
                                                MEM[4 + MEM[64]] = 32;
                                                MEM[4 + MEM[64] + 32] = address(v87.word0);
                                                MEM[4 + MEM[64] + 32 + 32] = address(v87.word1);
                                                MEM[4 + MEM[64] + 32 + 64] = address(v87.word2);
                                                MEM[4 + MEM[64] + 32 + 96] = address(v87.word3);
                                                MEM[4 + MEM[64] + 32 + 128] = address(v87.word4);
                                                MEM[4 + MEM[64] + 32 + 160] = address(v87.word5);
                                                MEM[4 + MEM[64] + 32 + 192] = v87.word6;
                                                MEM[4 + MEM[64] + 32 + 224] = v87.word7;
                                                MEM[4 + MEM[64] + 32 + (uint8.max + 1)] = v87.word8;
                                                MEM[4 + MEM[64] + 32 + 288] = v87.word9;
                                                MEM[4 + MEM[64] + 32 + 320] = v87.word10;
                                                MEM[4 + MEM[64] + 32 + 352] = v87.word11;
                                                MEM[4 + MEM[64] + 32 + 384] = 416;
                                                MEM[4 + MEM[64] + 32 + 416] = v102.length;
                                                v103 = v104 = 0;
                                                while (v103 < v102.length) {
                                                    MEM[4 + MEM[64] + 32 + 416 + 32 + v103] = v102[v103];
                                                    v103 = v103 + 32;
                                                }
                                                MEM[4 + MEM[64] + 32 + 416 + 32 + v102.length] = 0;
                                                require(bool((address(0x55084ee0fef03f14a305cd24286359a35d735151)).code.size));
                                                v105 = address(0x55084ee0fef03f14a305cd24286359a35d735151).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 + 416 + 32 + v4d33V0x4d53V0x219e.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v99).gas(msg.gas);
                                                if (bool(v105)) {
                                                    v106 = _SafeMul(v87.word8, v87.word6);
                                                    v107 = _SafeDiv(v106, v87.word7);
                                                    require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v108 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                    require(v108 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v109 = 32 + (v108 << 5) + varg0;
                                                    require(MEM[v109] <= MEM[v109] + v107, Panic(17)); // arithmetic overflow or underflow
                                                    MEM[v109] = MEM[v109] + v107;
                                                    v15 = varg0 + 190;
                                                    require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                                } else {
                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                    revert(0, RETURNDATASIZE());
                                                }
                                            }
                                        } else {
                                            v110 = v111 = 13;
                                            require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                            v112 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                            if (v112 > 0) {
                                                v113 = _SafeSub(v112, 1);
                                                require(v113 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v114 = v115 = MEM[32 + (v113 << 5) + varg0];
                                            } else {
                                                v114 = v116 = this;
                                            }
                                            require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                            require(varg0 + 5 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v117 = uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248) == 1;
                                            MEM[64] += 160;
                                            MEM[MEM[64]] = address(0x0);
                                            MEM[32 + MEM[64]] = address(0x0);
                                            MEM[64 + MEM[64]] = uint24(0);
                                            MEM[96 + MEM[64]] = int24(0);
                                            MEM[128 + MEM[64]] = address(0x0);
                                            require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                            require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v118 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                            require(v118 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v119 = v120 = MEM[32 + (v118 << 5) + varg0];
                                            require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                            require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v121 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                            require(v121 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v119 = v122 = MEM[32 + (v121 << 5) + varg0];
                                            if (uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248) != 1) {
                                            }
                                            if (uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248) != 1) {
                                            }
                                            v123 = varg0 + 6 + varg0;
                                            if (msg.data[v123 + 6] >> 248) {
                                                MEM[MEM[64] + 128] = msg.data[v123 + 7] >> 96;
                                                v110 = v124 = 33;
                                            }
                                            MEM[32 + MEM[64]] = address(v119);
                                            MEM[32 + MEM[64] + 32] = address(v119);
                                            MEM[32 + MEM[64] + 64] = uint24(msg.data[v123] >> 232);
                                            MEM[32 + MEM[64] + 96] = int24(msg.data[v123 + 3] >> 232);
                                            MEM[32 + MEM[64] + 128] = address(MEM[MEM[64] + 128]);
                                            MEM[32 + MEM[64] + 160] = varg0;
                                            MEM[32 + MEM[64] + 192] = bool(v117);
                                            MEM[32 + MEM[64] + 224] = address(v114);
                                            MEM[64] = 32 + MEM[64] + (uint8.max + 1);
                                            MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                            MEM[4 + MEM[64]] = 32;
                                            MEM[4 + MEM[64] + 32] = 32 + MEM[64] + (uint8.max + 1) - MEM[64] - 32;
                                            v125 = v126 = 0;
                                            while (v125 < 32 + MEM[64] + (uint8.max + 1) - MEM[64] - 32) {
                                                MEM[4 + MEM[64] + 32 + 32 + v125] = MEM[MEM[64] + 32 + v125];
                                                v125 = v125 + 32;
                                            }
                                            MEM[4 + MEM[64] + 32 + 32 + (32 + MEM[64] + (uint8.max + 1) - MEM[64] - 32)] = 0;
                                            v127 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 + 32 + 32 + MEM[64] + uint8.max + 1 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                            if (bool(v127)) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                require(MEM[MEM[64]] <= uint64.max);
                                                require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
                                                v128 = MEM[MEM[64] + MEM[MEM[64]]];
                                                require(v128 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v129 = new bytes[](v128);
                                                require(!((v129 + ((v128 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v129 + ((v128 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v129)), Panic(65)); // failed memory allocation (too much memory)
                                                require(MEM[64] + MEM[MEM[64]] + 32 + v128 <= MEM[64] + RETURNDATASIZE());
                                                v130 = v131 = 0;
                                                while (v130 < v128) {
                                                    v129[v130] = MEM[MEM[64] + MEM[MEM[64]] + 32 + v130];
                                                    v130 = v130 + 32;
                                                }
                                                v129[v128] = 0;
                                                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v132 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                require(v132 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v133 = 32 + (v132 << 5) + varg0;
                                                require(MEM[v133] <= MEM[v133] + MEM[v129 + 96], Panic(17)); // arithmetic overflow or underflow
                                                MEM[v133] = MEM[v133] + MEM[v129 + 96];
                                                v15 = varg0 + v110;
                                                require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                            } else {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        }
                                    } else {
                                        require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                        require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v134 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                        require(v134 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v135 = MEM[32 + (v134 << 5) + varg0];
                                        require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                        require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v136 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                        require(v136 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                        require(varg0 + 5 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v137 = uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248) == 1;
                                        require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                        v138 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                        if (v138 > 0) {
                                            v139 = _SafeSub(v138, 1);
                                            require(v139 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v140 = v141 = MEM[32 + (v139 << 5) + varg0];
                                        } else {
                                            v140 = v142 = this;
                                        }
                                        if (v137) {
                                            v143 = v144 = 0x1000276a4;
                                        } else {
                                            v143 = v145 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                        }
                                        MEM[32 + MEM[64]] = address(v135);
                                        MEM[64] = 32 + MEM[64] + 32;
                                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                        MEM[4 + MEM[64]] = address(v140);
                                        MEM[4 + MEM[64] + 32] = bool(v137);
                                        MEM[4 + MEM[64] + 64] = varg0;
                                        MEM[4 + MEM[64] + 96] = address(v143);
                                        MEM[4 + MEM[64] + 128] = 160;
                                        MEM[4 + MEM[64] + 160] = 32 + MEM[64] + 32 - MEM[64] - 32;
                                        v146 = v147 = 0;
                                        while (v146 < 32 + MEM[64] + 32 - MEM[64] - 32) {
                                            MEM[4 + MEM[64] + 160 + 32 + v146] = MEM[MEM[64] + 32 + v146];
                                            v146 = v146 + 32;
                                        }
                                        MEM[4 + MEM[64] + 160 + 32 + (32 + MEM[64] + 32 - MEM[64] - 32)] = 0;
                                        v148 = address(MEM[32 + (v136 << 5) + varg0]).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 160 + 32 + 32 + MEM[64] + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                        if (bool(v148)) {
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                                            v149 = v150 = MEM[MEM[64]];
                                            v149 = MEM[MEM[64] + 32];
                                            if (v150 <= 0) {
                                            }
                                            if (v150 < 0) {
                                                v151 = v152 = 0x4a1b(v150);
                                            } else {
                                                v151 = v153 = 0x4a1b(v149);
                                            }
                                            if (v149 < varg0) {
                                                v154 = _SafeSub(varg0, v149);
                                                0x2d4a(v154, tx.origin, address(v135));
                                            }
                                            require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                            require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v155 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                            require(v155 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v156 = 32 + (v155 << 5) + varg0;
                                            require(MEM[v156] <= MEM[v156] + v151, Panic(17)); // arithmetic overflow or underflow
                                            MEM[v156] = MEM[v156] + v151;
                                            v15 = varg0 + 6;
                                            require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                        } else {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    }
                                } else {
                                    require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                    require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v157 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                    require(v157 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v158 = MEM[32 + (v157 << 5) + varg0];
                                    0x2ea5(0xba12222222228d8ba445958a75a0704d566bf2c8, v158);
                                    v159 = new struct(6);
                                    require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                    require(varg0 <= varg0 + 37, Panic(17)); // arithmetic overflow or underflow
                                    require(varg0 + 5 <= varg0 + 37);
                                    require(varg0 + 37 <= varg0);
                                    v160 = v161 = msg.data[varg0 + (varg0 + 5)];
                                    if (varg0 + 37 - (varg0 + 5) < 32) {
                                        v160 = v161 & uint256.max << (32 - (varg0 + 37 - (varg0 + 5)) << 3);
                                    }
                                    v159.word0 = v160;
                                    require(0 <= 1, Panic(33)); // failed convertion to enum type
                                    v159.word1 = 0;
                                    v159.word2 = address(v158);
                                    require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                    require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v162 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                    require(v162 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v159.word3 = address(MEM[32 + (v162 << 5) + varg0]);
                                    v159.word4 = varg0;
                                    v163 = new struct(1);
                                    v163.word0 = 0;
                                    v159.word5 = v163;
                                    v164 = new struct(4);
                                    v164.word0 = address(this);
                                    v164.word1 = False;
                                    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                    v165 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                    if (v165 > 0) {
                                        v166 = _SafeSub(v165, 1);
                                        require(v166 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v167 = v168 = MEM[32 + (v166 << 5) + varg0];
                                    } else {
                                        v167 = v169 = this;
                                    }
                                    v164.word2 = address(v167);
                                    v164.word3 = False;
                                    MEM[MEM[64]] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                    v170 = 0x48ab(4 + MEM[64], block.timestamp, 1, v164, v159);
                                    v171 = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call(MEM[MEM[64]:MEM[64] + v17c3_0x0 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v171)) {
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        require(MEM[MEM[64]] == MEM[MEM[64]]);
                                        require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                        require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v172 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                        require(v172 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v173 = 32 + (v172 << 5) + varg0;
                                        require(MEM[v173] <= MEM[v173] + MEM[MEM[64]], Panic(17)); // arithmetic overflow or underflow
                                        MEM[v173] = MEM[v173] + MEM[MEM[64]];
                                        v15 = varg0 + 37;
                                        require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                            } else {
                                require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                require(varg0 + 2 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                if (uint8(msg.data[varg0 + 2 + varg0] >> 248 << 248 >> 248) - 1) {
                                    MEM[MEM[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = varg0;
                                    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                    v174 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (!bool(v174)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                } else {
                                    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                    v175 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
                                    if (!bool(v175)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v176 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                require(v176 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v177 = 32 + (v176 << 5) + varg0;
                                require(MEM[v177] <= MEM[v177] + varg0, Panic(17)); // arithmetic overflow or underflow
                                MEM[v177] = MEM[v177] + varg0;
                                v15 = varg0 + 3;
                                require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                            }
                        } else {
                            require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                            require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v178 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                            require(v178 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            varg0 = v179 = MEM[32 + (v178 << 5) + varg0];
                            require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                            require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            if (!(uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248) - 1)) {
                                v180 = v181 = 3639;
                                require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                require(varg0 + 5 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v182 = uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248);
                                require(v182 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v183 = v184 = address(MEM[32 + (v182 << 5) + varg0]);
                            }
                        }
                    } else {
                        v180 = v185 = 3331;
                        varg0 = v186 = msg.sender;
                        require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                        require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v187 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                        require(v187 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v183 = v188 = address(MEM[32 + (v187 << 5) + varg0]);
                    }
                    MEM[36 + MEM[64]] = address(varg0);
                    MEM[36 + MEM[64] + 32] = varg0;
                    MEM[MEM[64]] = 36 + MEM[64] + 64 - MEM[64] - 32;
                    MEM[64] = 36 + MEM[64] + 64;
                    MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    0x3233(MEM[64], v183);
                    // Unknown jump to Block ['0xd03', '0xe37']. Refer to 3-address code (TAC);
                    v15 = varg0 + 2;
                    require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                    v189 = v190 = 0;
                    require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) > 4) {
                        v191 = address(varg0).getTradeInfo().gas(msg.gas);
                        if (bool(v191)) {
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
                            require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                            require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                            require(MEM[MEM[64] + 64] == uint112(MEM[MEM[64] + 64]));
                            require(MEM[MEM[64] + 96] == uint112(MEM[MEM[64] + 96]));
                            require(MEM[MEM[64] + 128] == MEM[MEM[64] + 128]);
                            require(varg0 <= varg0 + 6, Panic(17)); // arithmetic overflow or underflow
                            require(varg0 + 6 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            if (uint8(msg.data[varg0 + 6 + varg0] >> 248 << 248 >> 248) - 0) {
                                v192 = _SafeSub(10 ** 18, MEM[MEM[64] + 128]);
                                v193 = _SafeMul(varg0, v192);
                                v194 = _SafeDiv(v193, 10 ** 18);
                                require(uint112(MEM[MEM[64] + 64]) <= uint112(MEM[MEM[64] + 64]) + v194, Panic(17)); // arithmetic overflow or underflow
                                v195 = _SafeMul(v194, uint112(MEM[MEM[64] + 96]));
                                v189 = v196 = _SafeDiv(v195, uint112(MEM[MEM[64] + 64]) + v194);
                                if (v196 >= uint112(MEM[MEM[64] + 32])) {
                                    v189 = v197 = _SafeSub(uint112(MEM[MEM[64] + 32]), 1);
                                }
                            } else {
                                v198 = _SafeSub(10 ** 18, MEM[MEM[64] + 128]);
                                v199 = _SafeMul(varg0, v198);
                                v200 = _SafeDiv(v199, 10 ** 18);
                                require(uint112(MEM[MEM[64] + 96]) <= uint112(MEM[MEM[64] + 96]) + v200, Panic(17)); // arithmetic overflow or underflow
                                v201 = _SafeMul(v200, uint112(MEM[MEM[64] + 64]));
                                v189 = v202 = _SafeDiv(v201, uint112(MEM[MEM[64] + 96]) + v200);
                                if (v202 >= uint112(MEM[MEM[64]])) {
                                    v189 = v203 = _SafeSub(uint112(MEM[MEM[64]]), 1);
                                }
                            }
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    } else {
                        require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 3) {
                            MEM[MEM[64]] = 0xbcaa64ea00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = block.timestamp;
                            v204 = address(varg0).staticcall(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 160]).gas(msg.gas);
                            if (bool(v204)) {
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
                                require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                                require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                                require(MEM[MEM[64] + 64] == MEM[MEM[64] + 64]);
                                require(MEM[MEM[64] + 96] == uint112(MEM[MEM[64] + 96]));
                                require(MEM[MEM[64] + 128] == uint112(MEM[MEM[64] + 128]));
                                v205 = v206 = uint112(MEM[MEM[64]]);
                                v207 = v208 = uint112(MEM[MEM[64] + 32]);
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            v209 = address(varg0).getReserves().gas(msg.gas);
                            if (bool(v209)) {
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
                                require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                                require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                                require(MEM[MEM[64] + 64] == uint32(MEM[MEM[64] + 64]));
                                v205 = v210 = uint112(MEM[MEM[64]]);
                                v207 = v211 = uint112(MEM[MEM[64] + 32]);
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                        v212 = _SafeSub(10000, msg.data[varg0 + varg0 + 7] >> 248);
                        v213 = _SafeMul(varg0, v212);
                        require(varg0 <= varg0 + 6, Panic(17)); // arithmetic overflow or underflow
                        require(varg0 + 6 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (uint8(msg.data[varg0 + 6 + varg0] >> 248 << 248 >> 248) - 0) {
                            v214 = _SafeMul(v205, 10000);
                            require(v214 <= v214 + v213, Panic(17)); // arithmetic overflow or underflow
                            v215 = _SafeMul(v213, v207);
                            v216 = _SafeDiv(v215, v214 + v213);
                            v189 = v217 = _SafeSub(v216, 1);
                        } else {
                            v218 = _SafeMul(v207, 10000);
                            require(v218 <= v218 + v213, Panic(17)); // arithmetic overflow or underflow
                            v219 = _SafeMul(v213, v205);
                            v220 = _SafeDiv(v219, v218 + v213);
                            v189 = v221 = _SafeSub(v220, 1);
                        }
                    }
                    require(v189 <= v189 + v189, Panic(17)); // arithmetic overflow or underflow
                    require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v222 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                    require(v222 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v223 = 32 + (v222 << 5) + varg0;
                    require(MEM[v223] <= MEM[v223] + (v189 + v189), Panic(17)); // arithmetic overflow or underflow
                    MEM[v223] = MEM[v223] + (v189 + v189);
                    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                    v224 = msg.data[varg0 + (varg0 + 2)] >> 248;
                    if (v224 > 0) {
                        v225 = _SafeSub(v224, 1);
                        require(v225 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v226 = v227 = MEM[32 + (v225 << 5) + varg0];
                    } else {
                        v226 = v228 = this;
                    }
                    MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = v189;
                    MEM[4 + MEM[64] + 32] = v189;
                    MEM[4 + MEM[64] + 64] = address(v226);
                    MEM[4 + MEM[64] + 96] = 128;
                    MEM[4 + MEM[64] + 128] = 0;
                    require(bool((address(varg0)).code.size));
                    v229 = address(varg0).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (bool(v229)) {
                        v15 = varg0 + 8;
                        require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    v230 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
                    if (bool(v230)) {
                        v15 = varg0 + 1;
                        require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
            } else {
                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v231 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                require(v231 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v232 = 32 + (v231 << 5) + varg0;
                require(MEM[v232] <= MEM[v232] + varg0, Panic(17)); // arithmetic overflow or underflow
                MEM[v232] = MEM[v232] + varg0;
                v15 = varg0 + 2;
                require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
            }
        } else {
            require(varg0 <= varg0 + 32, Panic(17)); // arithmetic overflow or underflow
            require(varg0 <= varg0 + 32);
            require(varg0 + 32 <= varg0);
            v233 = v234 = msg.data[varg0 + varg0];
            if (varg0 + 32 - varg0 < 32) {
                v233 = v234 & uint256.max << (32 - (varg0 + 32 - varg0) << 3);
            }
            MEM[36 + MEM[64]] = varg0;
            MEM[36 + MEM[64] + 32] = v233;
            MEM[36 + MEM[64] + 64] = 96;
            MEM[36 + MEM[64] + 96] = MEM[varg0];
            v235 = v236 = 36 + MEM[64] + 96 + 32;
            v237 = v238 = varg0 + 32;
            v239 = v240 = 0;
            while (v239 < MEM[varg0]) {
                MEM[v235] = address(MEM[v237]);
                v235 = v235 + 32;
                v237 = v237 + 32;
                v239 = v239 + 1;
            }
            MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | bytes4(0x6982509000000000000000000000000000000000000000000000000000000000);
            require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) < 64) {
                v241 = v242 = 0xebe9bfa5c0da3627a7f24cf20d6e5e3ef4a445fa;
            } else {
                require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) < 96) {
                    v241 = v243 = 0x107d4f2131fb64bbcdad1622ee1523e90797688b;
                } else {
                    v241 = v244 = 0xf3cf2d79a3db7fa0f0bfd8192603333ce2ce00e3;
                }
            }
            v245 = v246 = 0;
            while (v245 < v235 - MEM[64] - 32) {
                MEM[MEM[64] + v245] = MEM[MEM[64] + 32 + v245];
                v245 = v245 + 32;
            }
            MEM[MEM[64] + (v235 - MEM[64] - 32)] = 0;
            v247 = address(v241).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + v4298_0x1V0x433dV0x95f - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v248 = v249 = 96;
            } else {
                v248 = MEM[64];
                MEM[64] = v248 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                MEM[v248] = RETURNDATASIZE();
                RETURNDATACOPY(v248 + 32, 0, RETURNDATASIZE());
            }
            if (v247) {
                v250 = v251 = MEM[v248] == 0;
                if (v251) {
                    v250 = (address(v241)).code.size == 0;
                }
                require(!v250, AddressEmptyCode(address(v241)));
                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v252 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                require(v252 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v253 = 32 + (v252 << 5) + varg0;
                require(MEM[v253] <= MEM[v253] + MEM[v248 + 32], Panic(17)); // arithmetic overflow or underflow
                MEM[v253] = MEM[v253] + MEM[v248 + 32];
                v15 = varg0 + MEM[v248 + 64];
                require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
            } else {
                require(MEM[v248] <= 0, 32 + v248, MEM[v248]);
                revert(FailedInnerCall());
            }
        }
        require(v15 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (!(uint8(msg.data[v15 + varg0] >> 248 << 248 >> 248) - uint8.max)) {
            return ;
        }
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x2d4a(v0, msg.sender, address(data.word1));
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x2d4a(v0, msg.sender, address(data.word1));
}

function 0x3a4ecb24(uint256 varg0, address varg1, address varg2, address varg3, address varg4, address varg5, address varg6) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 224);
    v0 = new bytes[](msg.data.length);
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v0[msg.data.length] = 0;
    v1 = 0x4f7(v0, 0x1c4404a6401a02e61f153a7fed1aedddbd1476ff);
    v2 = new uint256[](MEM[v1]);
    v3 = v4 = 0;
    while (v3 < MEM[v1]) {
        MEM[v2.data + v3] = MEM[v1 + 32 + v3];
        v3 = v3 + 32;
    }
    MEM[v2.data + MEM[v1]] = 0;
    return v2;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0x923b8a2a > function_selector >> 224) {
        if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x3a1c453c == function_selector >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x3a4ecb24 == function_selector >> 224) {
            0x3a4ecb24();
        } else if (0x849df53d == function_selector >> 224) {
            0x849df53d();
        } else {
            require(0x91dd7346 == function_selector >> 224);
            unlockCallback(bytes);
        }
    } else if (0x923b8a2a == function_selector >> 224) {
        swapCallback(uint256,uint256,bytes);
    } else if (0xa1dab4eb == function_selector >> 224) {
        smardexSwapCallback(int256,int256,bytes);
    } else if (0xcb70e273 == function_selector >> 224) {
        executePath(bytes,uint256[],address);
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else if (0xfa483e72 == function_selector >> 224) {
        swapCallback(int256,int256,bytes);
    } else {
        require(0xfd235fda == function_selector >> 224);
        cloberMarketSwapCallback(address,address,uint256,uint256,bytes);
    }
}
