// Decompiled by library.dedaub.com
// 2025.09.29 20:22 UTC
// Compiled using the solidity compiler version 0.8.20





function unlockCallback(bytes rawData) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < 4 + (msg.data.length - 4));
    require(rawData.length <= uint64.max);
    require(rawData.data + rawData.length <= 4 + (msg.data.length - 4));
    v0 = 0x278(rawData.length, rawData.data);
    v1 = new uint256[](MEM[v0]);
    v2 = v3 = 0;
    while (v2 < MEM[v0]) {
        MEM[v1.data + v2] = MEM[v0 + 32 + v2];
        v2 = v2 + 32;
    }
    MEM[v1.data + MEM[v0]] = 0;
    return v1;
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    0x33e8(amountToPay, msg.sender, address(data.word1));
}

function smardexSwapCallback(int256 _amount0Delta, int256 _amount1Delta, bytes _data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.word0 <= uint64.max);
    require(4 + _data + 32 + _data.word0 <= 4 + (msg.data.length - 4));
    if (_amount0Delta <= 0) {
    }
    0x33e8(v0, msg.sender, address(_data.word1));
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
    0x322(msgSender, v2, bytecode.length);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x33e8(v0, msg.sender, address(data.word1));
}

function receive() public payable { 
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.word0 <= uint64.max);
    require(4 + _data + 32 + _data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x33e8(v0, msg.sender, address(_data.word1));
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

function 0x268(uint256 varg0, uint256 varg1) private { 
    0x431(varg0, varg1);
    return ;
}

function 0x278(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](msg.data.length);
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v0[msg.data.length] = 0;
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[v3.data + v1] = v0[v1];
        v1 = v1 + 32;
    }
    MEM[v3.data + v0.length] = 0;
    v4, /* uint256 */ v5, /* uint256 */ v6 = address(0x38e9fc5905c59338e37b9ef528e05e04391aa9ef).delegatecall(v3.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v7 = 96;
    } else {
        v7 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (v4) {
        v9 = v10 = MEM[v7] == 0;
        if (v10) {
            v9 = (address(0x38e9fc5905c59338e37b9ef528e05e04391aa9ef)).code.size == 0;
        }
        require(!v9, AddressEmptyCode(address(0x38e9fc5905c59338e37b9ef528e05e04391aa9ef)));
        return v7;
    } else {
        require(MEM[v7] <= 0, v6, MEM[v7]);
        revert(FailedInnerCall());
    }
}

function 0x322(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    0x431(varg1, varg2);
    return ;
}

function 0x33e8(uint256 varg0, address varg1, uint256 varg2) private { 
    MEM[36 + MEM[64] + 32] = varg0;
    MEM[MEM[64]] = 68;
    MEM[64] = 36 + MEM[64] + 64;
    MEM[MEM[64] + 32] = uint224(varg1) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    0x38d1(MEM[64], varg2);
    return ;
}

function 0x34b4(uint256 varg0, address varg1) private { 
    v0, /* uint256 */ v1 = varg1.allowance(address(this), address(varg0)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (!(v1 - 0)) {
        0x3968(uint256.max, varg0, varg1);
    }
    return ;
}

function 0x3587(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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

function 0x38d1(uint256 varg0, address varg1) private { 
    v0 = 0x3a49(varg0, varg1);
    v1 = v2 = MEM[v0] != 0;
    if (MEM[v0] != 0) {
        require(32 + v0 + MEM[v0] - (32 + v0) >= 32);
        require(MEM[32 + v0] == bool(MEM[32 + v0]));
        v1 = v3 = !MEM[32 + v0];
    }
    require(!v1, SafeERC20FailedOperation(varg1));
    return ;
}

function 0x3968(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, /* uint256 */ v1 = address(varg2).allowance(address(this), address(varg1)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 <= v1 + varg0, Panic(17)); // arithmetic overflow or underflow
    0x3a5f(v1 + varg0, varg1, varg2);
    return ;
}

function 0x3a49(uint256 varg0, address varg1) private { 
    require(this.balance >= 0, AddressInsufficientBalance(address(this)));
    v0 = v1 = 0;
    while (v0 < MEM[varg0]) {
        MEM[MEM[64] + v0] = MEM[varg0 + 32 + v0];
        v0 = v0 + 32;
    }
    MEM[MEM[64] + MEM[varg0]] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4 = varg1.call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[v3a49arg0x0] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
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

function 0x3a5f(uint256 varg0, address varg1, uint256 varg2) private { 
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
        0x38d1(MEM[64], varg2);
        0x38d1(MEM[64], varg2);
    }
    return ;
}

function 0x3f8f() private { 
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

function 0x431(uint256 varg0, uint256 varg1) private { 
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
        v13 = 0x4716(v13);
    }
    v15 = v16 = 3;
    while (1) {
        if (v15 < varg0) {
            // Unknown jump to Block 0x67d. Refer to 3-address code (TAC);
        }
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
                                                    if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 18) {
                                                        require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        require(!(uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) - 19), Error('Odos: Bad Path 0'));
                                                        require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 2 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v25 = uint8(msg.data[varg0 + 2 + varg0] >> 248 << 248 >> 248);
                                                        require(v25 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v26 = MEM[32 + (v25 << 5) + varg0];
                                                        require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v27 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                                        require(v27 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        0x34b4(0xead050515e10fdb3540ccd6f8236c46790508a76, v26);
                                                        v28 = new struct(3);
                                                        v28.word0 = address(0x0);
                                                        v28.word1 = address(0x0);
                                                        v28.word2 = 0;
                                                        v29 = varg0 + 5 + varg0;
                                                        v28.word0 = msg.data[v29] >> 96;
                                                        v28.word1 = msg.data[v29 + 20] >> 96;
                                                        v28.word2 = msg.data[v29 + 40] >> 128;
                                                        require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        if (uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248) - 0) {
                                                            v30 = new struct(17);
                                                            v30.word0 = address(0x0);
                                                            v30.word1 = address(0x0);
                                                            v30.word2 = address(this);
                                                            v30.word3 = address(v26);
                                                            v30.word4 = address(MEM[32 + (v27 << 5) + varg0]);
                                                            v30.word5 = varg0;
                                                            v30.word6 = 0;
                                                            v30.word7 = 0;
                                                            v30.word8 = 0;
                                                            v30.word9 = 0;
                                                            require(varg0 <= varg0 + 191, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 <= varg0 + 207, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 + 191 <= varg0 + 207);
                                                            require(varg0 + 207 <= varg0);
                                                            v31 = bytes16(msg.data[varg0 + (varg0 + 191)]);
                                                            if (varg0 + 207 - (varg0 + 191) < 16) {
                                                                v31 = v32 = v31 & 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000 << (16 - (varg0 + 207 - (varg0 + 191)) << 3);
                                                            }
                                                            v30.word10 = bytes16(v31);
                                                            v30.word11 = False;
                                                            require(varg0 <= varg0 + 126, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 <= varg0 + 191, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 + 126 <= varg0 + 191);
                                                            require(varg0 + 191 <= varg0);
                                                            v33 = new bytes[](varg0 + 191 - (varg0 + 126));
                                                            CALLDATACOPY(v33.data, varg0 + (varg0 + 126), varg0 + 191 - (varg0 + 126));
                                                            v33[varg0 + 191 - (varg0 + 126)] = 0;
                                                            v30.word12 = v33;
                                                            v30.word13 = v28;
                                                            require(varg0 <= varg0 + 61, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 <= varg0 + 126, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 + 61 <= varg0 + 126);
                                                            require(varg0 + 126 <= varg0);
                                                            v34 = new bytes[](varg0 + 126 - (varg0 + 61));
                                                            CALLDATACOPY(v34.data, varg0 + (varg0 + 61), varg0 + 126 - (varg0 + 61));
                                                            v34[varg0 + 126 - (varg0 + 61)] = 0;
                                                            v30.word14 = v34;
                                                            v35 = new struct(1);
                                                            v35.word0 = 0;
                                                            v30.word15 = v35;
                                                            v30.word16 = 0;
                                                            v36 = varg0 + 207 + varg0;
                                                            v30.word0 = msg.data[v36] >> 96;
                                                            v30.word1 = msg.data[v36 + 20] >> 96;
                                                            v30.word6 = msg.data[v36 + 40] >> 128;
                                                            v30.word7 = msg.data[v36 + 56] >> 128;
                                                            v30.word8 = msg.data[v36 + 72] >> 192;
                                                            v30.word9 = msg.data[v36 + 80] >> 192;
                                                            if (v30.word5 > v30.word6) {
                                                                v30.word5 = v30.word6;
                                                            }
                                                            MEM[MEM[64]] = 0xe525b10b00000000000000000000000000000000000000000000000000000000;
                                                            MEM[4 + MEM[64]] = 4 + MEM[64] + 32 - (4 + MEM[64]);
                                                            MEM[4 + MEM[64] + 32] = address(v30.word0);
                                                            MEM[4 + MEM[64] + 32 + 32] = address(v30.word1);
                                                            MEM[4 + MEM[64] + 32 + 64] = address(v30.word2);
                                                            MEM[4 + MEM[64] + 32 + 96] = address(v30.word3);
                                                            MEM[4 + MEM[64] + 32 + 128] = address(v30.word4);
                                                            MEM[4 + MEM[64] + 32 + 160] = v30.word5;
                                                            MEM[4 + MEM[64] + 32 + 192] = v30.word6;
                                                            MEM[4 + MEM[64] + 32 + 224] = v30.word7;
                                                            MEM[4 + MEM[64] + 32 + (uint8.max + 1)] = v30.word8;
                                                            MEM[4 + MEM[64] + 32 + 288] = v30.word9;
                                                            MEM[4 + MEM[64] + 32 + 320] = bytes16(v30.word10);
                                                            MEM[4 + MEM[64] + 32 + 352] = bool(v30.word11);
                                                            MEM[4 + MEM[64] + 32 + 384] = 4 + MEM[64] + 32 + 608 - (4 + MEM[64] + 32);
                                                            MEM[4 + MEM[64] + 32 + 608] = v37.length;
                                                            v38 = v39 = 0;
                                                            while (v38 < v37.length) {
                                                                MEM[4 + MEM[64] + 32 + 608 + 32 + v38] = v37[v38];
                                                                v38 = v38 + 32;
                                                            }
                                                            MEM[4 + MEM[64] + 32 + 608 + 32 + v37.length] = 0;
                                                            MEM[4 + MEM[64] + 32 + 416] = address(MEM[v30.word13]);
                                                            MEM[4 + MEM[64] + 32 + 416 + 32] = address(MEM[v30.word13 + 32]);
                                                            MEM[4 + MEM[64] + 32 + 416 + 64] = MEM[v30.word13 + 64];
                                                            MEM[4 + MEM[64] + 32 + 512] = 4 + MEM[64] + 32 + 608 + 32 + (v37.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - (4 + MEM[64] + 32);
                                                            MEM[4 + MEM[64] + 32 + 608 + 32 + (v37.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)] = v40.length;
                                                            v41 = v42 = 0;
                                                            while (v41 < v40.length) {
                                                                MEM[4 + MEM[64] + 32 + 608 + 32 + (v37.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + v41] = v40[v41];
                                                                v41 = v41 + 32;
                                                            }
                                                            MEM[4 + MEM[64] + 32 + 608 + 32 + (v37.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + v40.length] = 0;
                                                            MEM[4 + MEM[64] + 32 + 544] = 4 + MEM[64] + 32 + 608 + 32 + (v37.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v40.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - (4 + MEM[64] + 32);
                                                            MEM[4 + MEM[64] + 32 + 608 + 32 + (v37.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v40.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)] = MEM[v30.word15];
                                                            v43 = v44 = 0;
                                                            while (v43 < MEM[v30.word15]) {
                                                                MEM[4 + MEM[64] + 32 + 608 + 32 + (v37.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v40.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + v43] = MEM[v30.word15 + 32 + v43];
                                                                v43 = v43 + 32;
                                                            }
                                                            MEM[4 + MEM[64] + 32 + 608 + 32 + (v37.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v40.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + MEM[v30.word15]] = 0;
                                                            MEM[4 + MEM[64] + 32 + 576] = v30.word16;
                                                            require(bool((address(0xead050515e10fdb3540ccd6f8236c46790508a76)).code.size));
                                                            v45 = address(0xead050515e10fdb3540ccd6f8236c46790508a76).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 + 608 + 32 + v5c67V0x5ce9V0x31d2.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + v5c98V0x5ce9V0x31d2.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + MEM[v2f4d.word15] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                            if (bool(v45)) {
                                                                v46 = _SafeMul(v30.word7, v30.word5);
                                                                v47 = _SafeDiv(v46, v30.word6);
                                                                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                v48 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                                require(v48 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                v49 = 32 + (v48 << 5) + varg0;
                                                                require(MEM[v49] <= MEM[v49] + v47, Panic(17)); // arithmetic overflow or underflow
                                                                MEM[v49] = MEM[v49] + v47;
                                                            } else {
                                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                revert(0, RETURNDATASIZE());
                                                            }
                                                        } else {
                                                            v50 = new struct(7);
                                                            require(varg0 <= varg0 + 126, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 <= varg0 + 455, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 + 126 <= varg0 + 455);
                                                            require(varg0 + 455 <= varg0);
                                                            v51 = new bytes[](varg0 + 455 - (varg0 + 126));
                                                            CALLDATACOPY(v51.data, varg0 + (varg0 + 126), varg0 + 455 - (varg0 + 126));
                                                            v51[varg0 + 455 - (varg0 + 126)] = 0;
                                                            v50.word0 = v51;
                                                            v50.word1 = address(this);
                                                            v50.word2 = varg0;
                                                            v50.word3 = 1;
                                                            v50.word4 = v28;
                                                            require(varg0 <= varg0 + 61, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 <= varg0 + 126, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 + 61 <= varg0 + 126);
                                                            require(varg0 + 126 <= varg0);
                                                            v52 = new bytes[](varg0 + 126 - (varg0 + 61));
                                                            CALLDATACOPY(v52.data, varg0 + (varg0 + 61), varg0 + 126 - (varg0 + 61));
                                                            v52[varg0 + 126 - (varg0 + 61)] = 0;
                                                            v50.word5 = v52;
                                                            v53 = v54 = 0;
                                                            require(v54 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                            v55 = new struct(1);
                                                            v55.word0 = v54;
                                                            if (v54) {
                                                                v56 = v57 = v55.data;
                                                                do {
                                                                    MEM[v56] = 96;
                                                                    v56 += 32;
                                                                    v53 = v53 - 1;
                                                                } while (v53);
                                                            }
                                                            v50.word6 = v55;
                                                            MEM[MEM[64]] = 0xc7cd974800000000000000000000000000000000000000000000000000000000;
                                                            MEM[4 + MEM[64]] = 4 + MEM[64] + 32 - (4 + MEM[64]);
                                                            MEM[4 + MEM[64] + 32] = 4 + MEM[64] + 32 + 288 - (4 + MEM[64] + 32);
                                                            MEM[4 + MEM[64] + 32 + 288] = v58.length;
                                                            v59 = v60 = 0;
                                                            while (v59 < v58.length) {
                                                                MEM[4 + MEM[64] + 32 + 288 + 32 + v59] = v58[v59];
                                                                v59 = v59 + 32;
                                                            }
                                                            MEM[4 + MEM[64] + 32 + 288 + 32 + v58.length] = 0;
                                                            MEM[4 + MEM[64] + 32 + 32] = address(v50.word1);
                                                            MEM[4 + MEM[64] + 32 + 64] = v50.word2;
                                                            MEM[4 + MEM[64] + 32 + 96] = v50.word3;
                                                            MEM[4 + MEM[64] + 32 + 128] = address(MEM[v50.word4]);
                                                            MEM[4 + MEM[64] + 32 + 128 + 32] = address(MEM[v50.word4 + 32]);
                                                            MEM[4 + MEM[64] + 32 + 128 + 64] = MEM[v50.word4 + 64];
                                                            MEM[4 + MEM[64] + 32 + 224] = 4 + MEM[64] + 32 + 288 + 32 + (v58.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - (4 + MEM[64] + 32);
                                                            MEM[4 + MEM[64] + 32 + 288 + 32 + (v58.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)] = v61.length;
                                                            v62 = v63 = 0;
                                                            while (v62 < v61.length) {
                                                                MEM[4 + MEM[64] + 32 + 288 + 32 + (v58.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + v62] = v61[v62];
                                                                v62 = v62 + 32;
                                                            }
                                                            MEM[4 + MEM[64] + 32 + 288 + 32 + (v58.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + v61.length] = 0;
                                                            MEM[4 + MEM[64] + 32 + (uint8.max + 1)] = 4 + MEM[64] + 32 + 288 + 32 + (v58.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v61.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - (4 + MEM[64] + 32);
                                                            MEM[4 + MEM[64] + 32 + 288 + 32 + (v58.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v61.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)] = v64.length;
                                                            v65 = v66 = 4 + MEM[64] + 32 + 288 + 32 + (v58.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v61.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                                            v67 = v68 = v66 + (v64.length << 5);
                                                            v69 = v70 = v64.data;
                                                            v71 = v72 = 0;
                                                            while (v71 < v64.length) {
                                                                MEM[v65] = v67 - v66;
                                                                MEM[v67] = MEM[MEM[v69]];
                                                                v73 = v74 = 0;
                                                                while (v73 < MEM[MEM[v69]]) {
                                                                    MEM[v67 + 32 + v73] = MEM[MEM[v69] + 32 + v73];
                                                                    v73 = v73 + 32;
                                                                }
                                                                MEM[v67 + 32 + MEM[MEM[v69]]] = 0;
                                                                v67 = v67 + 32 + (MEM[MEM[v69]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                v69 = v69 + 32;
                                                                v65 = v65 + 32;
                                                                v71 = v71 + 1;
                                                            }
                                                            v75 = address(0xead050515e10fdb3540ccd6f8236c46790508a76).call(MEM[MEM[64]:MEM[64] + v4d97V0x5970V0x59c5V0x5a8aV0x5ab2V0x2e50 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                                            if (bool(v75)) {
                                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                                require(MEM[MEM[64]] == MEM[MEM[64]]);
                                                                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                v76 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                                require(v76 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                v77 = 32 + (v76 << 5) + varg0;
                                                                require(MEM[v77] <= MEM[v77] + MEM[MEM[64]], Panic(17)); // arithmetic overflow or underflow
                                                                MEM[v77] = MEM[v77] + MEM[MEM[64]];
                                                            } else {
                                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                revert(0, RETURNDATASIZE());
                                                            }
                                                        }
                                                        v15 = varg0 + 455;
                                                        require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                                    } else {
                                                        require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v78 = v79 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                                        require(v79 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v80 = new uint256[](v79);
                                                        if (v79) {
                                                            v81 = v82 = v80.data;
                                                            do {
                                                                v83 = new struct(2);
                                                                v83.word0 = 0;
                                                                v83.word1 = uint128(0);
                                                                MEM[v81] = v83;
                                                                v81 += 32;
                                                                v78 = v78 - 1;
                                                            } while (v78);
                                                        }
                                                        v84 = msg.data[varg0 + varg0 + 5] >> 224 << 128;
                                                        v85 = v86 = 0;
                                                        while (v85 < v80.length) {
                                                            if (msg.data[varg0 + varg0 + ((v85 << 3) + 13)] >> 224 <= 0) {
                                                                varg0 = v87 = 0;
                                                            } else {
                                                                v88 = _SafeMul(varg0, msg.data[varg0 + varg0 + ((v85 << 3) + 13)] >> 224);
                                                                varg0 = v89 = v88 >> 32;
                                                                varg0 = _SafeSub(varg0, v89);
                                                            }
                                                            v90 = new struct(2);
                                                            require(v84 <= v84 + (msg.data[varg0 + varg0 + ((v85 << 3) + 9)] >> 224), Panic(17)); // arithmetic overflow or underflow
                                                            v90.word0 = v84 + (msg.data[varg0 + varg0 + ((v85 << 3) + 9)] >> 224);
                                                            v90.word1 = uint128(varg0);
                                                            require(v85 < v80.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            v80[v85] = v90;
                                                            v85 = 0x4716(v85);
                                                        }
                                                        require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 2 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v91 = uint8(msg.data[varg0 + 2 + varg0] >> 248 << 248 >> 248);
                                                        require(v91 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v92 = v93 = MEM[32 + (v91 << 5) + varg0];
                                                        require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v94 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                                        require(v94 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v95 = v96 = MEM[32 + (v94 << 5) + varg0];
                                                        varg0 = v97 = 0;
                                                        if (address(v93) - address(v97)) {
                                                            0x34b4(0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1, v93);
                                                        } else {
                                                            v92 = v98 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                                                        }
                                                        if (!(address(v96) - address(0x0))) {
                                                            v95 = v99 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                                                        }
                                                        MEM[MEM[64]] = 0;
                                                        MEM[32 + MEM[64]] = address(0x0);
                                                        v100 = new struct(2);
                                                        CALLDATACOPY(v100, msg.data.length, 64);
                                                        MEM[64 + MEM[64]] = v100;
                                                        v101 = 0x3f8f();
                                                        MEM[96 + MEM[64]] = v101;
                                                        MEM[MEM[64]] = uint128(0);
                                                        MEM[32 + MEM[64]] = uint128(0);
                                                        MEM[64 + MEM[64]] = uint64(0);
                                                        MEM[96 + MEM[64]] = uint64(0);
                                                        v102 = v103 = 0;
                                                        while (v102 < v80.length) {
                                                            require(v102 < v80.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            MEM[MEM[64]] = 0xbc88d7e400000000000000000000000000000000000000000000000000000000;
                                                            MEM[4 + MEM[64]] = MEM[v80[v102]];
                                                            v104 = address(0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 384]).gas(msg.gas);
                                                            if (bool(v104)) {
                                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 384);
                                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 384);
                                                                v105 = new struct(4);
                                                                require(!((v105 + 128 > uint64.max) | (v105 + 128 < v105)), Panic(65)); // failed memory allocation (too much memory)
                                                                require(MEM[MEM[64]] == MEM[MEM[64]]);
                                                                v105.word0 = MEM[MEM[64]];
                                                                require(MEM[MEM[64] + 32] == address(MEM[MEM[64] + 32]));
                                                                v105.word1 = MEM[MEM[64] + 32];
                                                                v106 = 0x54da(MEM[64] + 64, MEM[64] + RETURNDATASIZE());
                                                                v105.word2 = v106;
                                                                v107 = 0x568b(MEM[64] + 128, MEM[64] + RETURNDATASIZE());
                                                                v105.word3 = v107;
                                                                require(0 < 2, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                if (address(MEM[v105.word2]) == address(v92)) {
                                                                    v108 = v109 = 1;
                                                                } else {
                                                                    v108 = v110 = 0;
                                                                }
                                                                require(uint8(v108) < 2, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                v111 = 0x3587(uint64(MEM[96 + MEM[(uint8(v108) << 5) + v105.word3]]), uint64(MEM[64 + MEM[(uint8(v108) << 5) + v105.word3]]), uint128(MEM[32 + MEM[(uint8(v108) << 5) + v105.word3]]), uint128(MEM[MEM[(uint8(v108) << 5) + v105.word3]]));
                                                                require(v102 < v80.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                if (uint128(MEM[32 + v80[v102]]) > v111) {
                                                                    require(v102 < v80.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                    MEM[32 + v80[v102]] = uint128(v111);
                                                                }
                                                                v102 = 0x4716(v102);
                                                            } else {
                                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                revert(0, RETURNDATASIZE());
                                                            }
                                                        }
                                                        MEM[MEM[64]] = 0xf1c5e01400000000000000000000000000000000000000000000000000000000;
                                                        MEM[4 + MEM[64]] = address(v92);
                                                        MEM[4 + MEM[64] + 32] = address(v95);
                                                        MEM[4 + MEM[64] + 64] = 160;
                                                        MEM[4 + MEM[64] + 160] = v80.length;
                                                        v112 = v113 = 4 + MEM[64] + 160 + 32;
                                                        v114 = v115 = v80.data;
                                                        v116 = v117 = 0;
                                                        while (v116 < v80.length) {
                                                            MEM[v112] = MEM[MEM[v114]];
                                                            MEM[v112 + 32] = uint128(MEM[MEM[v114] + 32]);
                                                            v112 = v112 + 64;
                                                            v114 = v114 + 32;
                                                            v116 = v116 + 1;
                                                        }
                                                        MEM[4 + MEM[64] + 96] = block.timestamp;
                                                        MEM[4 + MEM[64] + 128] = uint128(1);
                                                        v118 = address(0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1).call(MEM[MEM[64]:MEM[64] + v57c7_0x1V0x589dV0x2a58 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).value(varg0).gas(msg.gas);
                                                        if (bool(v118)) {
                                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                            require(MEM[MEM[64]] == uint128(MEM[MEM[64]]));
                                                            require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                            require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            v119 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                            require(v119 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            v120 = 32 + (v119 << 5) + varg0;
                                                            require(MEM[v120] <= MEM[v120] + uint128(MEM[MEM[64]]), Panic(17)); // arithmetic overflow or underflow
                                                            MEM[v120] = MEM[v120] + uint128(MEM[MEM[64]]);
                                                            v121 = _SafeMul(8, v80.length);
                                                            require(9 <= 9 + v121, Panic(17)); // arithmetic overflow or underflow
                                                            v15 = varg0 + (9 + v121);
                                                            require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                                        } else {
                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                            revert(0, RETURNDATASIZE());
                                                        }
                                                    }
                                                } else {
                                                    require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v122 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                                    require(v122 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v123 = MEM[32 + (v122 << 5) + varg0];
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
                                                    v124 = new struct(6);
                                                    require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 <= varg0 + 37, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 5 <= varg0 + 37);
                                                    require(varg0 + 37 <= varg0);
                                                    v125 = v126 = msg.data[varg0 + (varg0 + 5)];
                                                    if (varg0 + 37 - (varg0 + 5) < 32) {
                                                        v125 = v126 & uint256.max << (32 - (varg0 + 37 - (varg0 + 5)) << 3);
                                                    }
                                                    v124.word0 = v125;
                                                    require(0 <= 1, Panic(33)); // failed convertion to enum type
                                                    v124.word1 = 0;
                                                    v124.word2 = address(v123);
                                                    require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v127 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                                    require(v127 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v124.word3 = address(MEM[32 + (v127 << 5) + varg0]);
                                                    v124.word4 = varg0;
                                                    require(varg0 <= varg0 + 37, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 <= varg0 + 549, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 37 <= varg0 + 549);
                                                    require(varg0 + 549 <= varg0);
                                                    v128 = new bytes[](varg0 + 549 - (varg0 + 37));
                                                    CALLDATACOPY(v128.data, varg0 + (varg0 + 37), varg0 + 549 - (varg0 + 37));
                                                    v128[varg0 + 549 - (varg0 + 37)] = 0;
                                                    v124.word5 = v128;
                                                    v129 = new struct(4);
                                                    v129.word0 = address(this);
                                                    v129.word1 = False;
                                                    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                                    v130 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                                    if (v130 > 0) {
                                                        v131 = _SafeSub(v130, 1);
                                                        require(v131 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v132 = v133 = MEM[32 + (v131 << 5) + varg0];
                                                    } else {
                                                        v132 = v134 = this;
                                                    }
                                                    v129.word2 = address(v132);
                                                    v129.word3 = False;
                                                    varg0 = v135 = 0;
                                                    if (address(v123) - address(v135)) {
                                                        0x34b4(0xd315a9c38ec871068fec378e4ce78af528c76293, v123);
                                                    }
                                                    MEM[MEM[64]] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                                    v136 = 0x53ee(4 + MEM[64], block.timestamp, 0, v129, v124);
                                                    v137 = address(0xd315a9c38ec871068fec378e4ce78af528c76293).call(MEM[MEM[64]:MEM[64] + v246a_0x0 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).value(varg0).gas(msg.gas);
                                                    if (bool(v137)) {
                                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                        require(MEM[MEM[64]] == MEM[MEM[64]]);
                                                        require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                        require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v138 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                        require(v138 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v139 = 32 + (v138 << 5) + varg0;
                                                        require(MEM[v139] <= MEM[v139] + MEM[MEM[64]], Panic(17)); // arithmetic overflow or underflow
                                                        MEM[v139] = MEM[v139] + MEM[MEM[64]];
                                                        v15 = varg0 + 549;
                                                        require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                                    } else {
                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                        revert(0, RETURNDATASIZE());
                                                    }
                                                }
                                            } else {
                                                v140 = new struct(13);
                                                v140.word0 = address(0x0);
                                                v140.word1 = address(0x0);
                                                require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                                v141 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                                if (v141 > 0) {
                                                    v142 = _SafeSub(v141, 1);
                                                    require(v142 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v143 = v144 = MEM[32 + (v142 << 5) + varg0];
                                                } else {
                                                    v143 = v145 = this;
                                                }
                                                v140.word2 = address(v143);
                                                v140.word3 = address(tx.origin);
                                                require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v146 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                                require(v146 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v140.word4 = address(MEM[32 + (v146 << 5) + varg0]);
                                                require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v147 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                                require(v147 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v140.word5 = address(MEM[32 + (v147 << 5) + varg0]);
                                                v140.word6 = varg0;
                                                v140.word7 = 0;
                                                v140.word8 = 0;
                                                v140.word9 = 0;
                                                v140.word10 = 0;
                                                require(varg0 <= varg0 + 93, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 <= varg0 + 125, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 93 <= varg0 + 125);
                                                require(varg0 + 125 <= varg0);
                                                v148 = v149 = msg.data[varg0 + (varg0 + 93)];
                                                if (varg0 + 125 - (varg0 + 93) < 32) {
                                                    v148 = v149 & uint256.max << (32 - (varg0 + 125 - (varg0 + 93)) << 3);
                                                }
                                                v140.word11 = v148;
                                                require(varg0 <= varg0 + 125, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 <= varg0 + 190, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 125 <= varg0 + 190);
                                                require(varg0 + 190 <= varg0);
                                                v150 = new bytes[](varg0 + 190 - (varg0 + 125));
                                                CALLDATACOPY(v150.data, varg0 + (varg0 + 125), varg0 + 190 - (varg0 + 125));
                                                v150[varg0 + 190 - (varg0 + 125)] = 0;
                                                v140.word12 = v150;
                                                v151 = varg0 + 5 + varg0;
                                                v140.word0 = msg.data[v151] >> 96;
                                                v140.word1 = msg.data[v151 + 20] >> 96;
                                                v140.word7 = msg.data[v151 + 40] >> 128;
                                                v140.word8 = msg.data[v151 + 56] >> 128;
                                                v140.word9 = msg.data[v151 + 72] >> 192;
                                                v140.word10 = msg.data[v151 + 80] >> 192;
                                                if (v140.word6 > v140.word7) {
                                                    v140.word6 = v140.word7;
                                                }
                                                v152 = v153 = 0;
                                                if (address(v140.word4) - address(v153)) {
                                                    0x34b4(0x55084ee0fef03f14a305cd24286359a35d735151, v140.word4);
                                                } else {
                                                    v152 = v154 = v140.word6;
                                                }
                                                MEM[MEM[64]] = 0xc52ac72000000000000000000000000000000000000000000000000000000000;
                                                MEM[4 + MEM[64]] = 32;
                                                MEM[4 + MEM[64] + 32] = address(v140.word0);
                                                MEM[4 + MEM[64] + 32 + 32] = address(v140.word1);
                                                MEM[4 + MEM[64] + 32 + 64] = address(v140.word2);
                                                MEM[4 + MEM[64] + 32 + 96] = address(v140.word3);
                                                MEM[4 + MEM[64] + 32 + 128] = address(v140.word4);
                                                MEM[4 + MEM[64] + 32 + 160] = address(v140.word5);
                                                MEM[4 + MEM[64] + 32 + 192] = v140.word6;
                                                MEM[4 + MEM[64] + 32 + 224] = v140.word7;
                                                MEM[4 + MEM[64] + 32 + (uint8.max + 1)] = v140.word8;
                                                MEM[4 + MEM[64] + 32 + 288] = v140.word9;
                                                MEM[4 + MEM[64] + 32 + 320] = v140.word10;
                                                MEM[4 + MEM[64] + 32 + 352] = v140.word11;
                                                MEM[4 + MEM[64] + 32 + 384] = 416;
                                                MEM[4 + MEM[64] + 32 + 416] = v155.length;
                                                v156 = v157 = 0;
                                                while (v156 < v155.length) {
                                                    MEM[4 + MEM[64] + 32 + 416 + 32 + v156] = v155[v156];
                                                    v156 = v156 + 32;
                                                }
                                                MEM[4 + MEM[64] + 32 + 416 + 32 + v155.length] = 0;
                                                require(bool((address(0x55084ee0fef03f14a305cd24286359a35d735151)).code.size));
                                                v158 = address(0x55084ee0fef03f14a305cd24286359a35d735151).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 + 416 + 32 + v5371V0x5391V0x205a.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v152).gas(msg.gas);
                                                if (bool(v158)) {
                                                    v159 = _SafeMul(v140.word8, v140.word6);
                                                    v160 = _SafeDiv(v159, v140.word7);
                                                    require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                    require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v161 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                    require(v161 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v162 = 32 + (v161 << 5) + varg0;
                                                    require(MEM[v162] <= MEM[v162] + v160, Panic(17)); // arithmetic overflow or underflow
                                                    MEM[v162] = MEM[v162] + v160;
                                                    v15 = varg0 + 190;
                                                    require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                                } else {
                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                    revert(0, RETURNDATASIZE());
                                                }
                                            }
                                        } else {
                                            v163 = v164 = 13;
                                            require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                            v165 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                            if (v165 > 0) {
                                                v166 = _SafeSub(v165, 1);
                                                require(v166 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v167 = v168 = MEM[32 + (v166 << 5) + varg0];
                                            } else {
                                                v167 = v169 = this;
                                            }
                                            require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                            require(varg0 + 5 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v170 = uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248) == 1;
                                            MEM[64] += 160;
                                            MEM[MEM[64]] = address(0x0);
                                            MEM[32 + MEM[64]] = address(0x0);
                                            MEM[64 + MEM[64]] = uint24(0);
                                            MEM[96 + MEM[64]] = int24(0);
                                            MEM[128 + MEM[64]] = address(0x0);
                                            require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                            require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v171 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                            require(v171 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v172 = v173 = MEM[32 + (v171 << 5) + varg0];
                                            require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                            require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v174 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                            require(v174 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v172 = v175 = MEM[32 + (v174 << 5) + varg0];
                                            if (uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248) != 1) {
                                            }
                                            if (uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248) != 1) {
                                            }
                                            v176 = varg0 + 6 + varg0;
                                            if (msg.data[v176 + 6] >> 248) {
                                                MEM[MEM[64] + 128] = msg.data[v176 + 7] >> 96;
                                                v163 = v177 = 33;
                                            }
                                            MEM[32 + MEM[64]] = address(v172);
                                            MEM[32 + MEM[64] + 32] = address(v172);
                                            MEM[32 + MEM[64] + 64] = uint24(msg.data[v176] >> 232);
                                            MEM[32 + MEM[64] + 96] = int24(msg.data[v176 + 3] >> 232);
                                            MEM[32 + MEM[64] + 128] = address(MEM[MEM[64] + 128]);
                                            MEM[32 + MEM[64] + 160] = varg0;
                                            MEM[32 + MEM[64] + 192] = bool(v170);
                                            MEM[32 + MEM[64] + 224] = address(v167);
                                            MEM[64] = 32 + MEM[64] + (uint8.max + 1);
                                            MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                            MEM[4 + MEM[64]] = 32;
                                            MEM[4 + MEM[64] + 32] = 32 + MEM[64] + (uint8.max + 1) - MEM[64] - 32;
                                            v178 = v179 = 0;
                                            while (v178 < 32 + MEM[64] + (uint8.max + 1) - MEM[64] - 32) {
                                                MEM[4 + MEM[64] + 32 + 32 + v178] = MEM[MEM[64] + 32 + v178];
                                                v178 = v178 + 32;
                                            }
                                            MEM[4 + MEM[64] + 32 + 32 + (32 + MEM[64] + (uint8.max + 1) - MEM[64] - 32)] = 0;
                                            v180 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 + 32 + 32 + MEM[64] + uint8.max + 1 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                            if (bool(v180)) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                require(MEM[MEM[64]] <= uint64.max);
                                                require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
                                                v181 = MEM[MEM[64] + MEM[MEM[64]]];
                                                require(v181 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v182 = new bytes[](v181);
                                                require(!((v182 + ((v181 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v182 + ((v181 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v182)), Panic(65)); // failed memory allocation (too much memory)
                                                require(MEM[64] + MEM[MEM[64]] + 32 + v181 <= MEM[64] + RETURNDATASIZE());
                                                v183 = v184 = 0;
                                                while (v183 < v181) {
                                                    v182[v183] = MEM[MEM[64] + MEM[MEM[64]] + 32 + v183];
                                                    v183 = v183 + 32;
                                                }
                                                v182[v181] = 0;
                                                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v185 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                                require(v185 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                v186 = 32 + (v185 << 5) + varg0;
                                                require(MEM[v186] <= MEM[v186] + MEM[v182 + 96], Panic(17)); // arithmetic overflow or underflow
                                                MEM[v186] = MEM[v186] + MEM[v182 + 96];
                                                v15 = varg0 + v163;
                                                require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                                            } else {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        }
                                    } else {
                                        require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                        require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v187 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                        require(v187 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v188 = MEM[32 + (v187 << 5) + varg0];
                                        require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                                        require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v189 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                        require(v189 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                        require(varg0 + 5 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v190 = uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248) == 1;
                                        require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                        v191 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                        if (v191 > 0) {
                                            v192 = _SafeSub(v191, 1);
                                            require(v192 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v193 = v194 = MEM[32 + (v192 << 5) + varg0];
                                        } else {
                                            v193 = v195 = this;
                                        }
                                        if (v190) {
                                            v196 = v197 = 0x1000276a4;
                                        } else {
                                            v196 = v198 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                        }
                                        MEM[32 + MEM[64]] = address(v188);
                                        MEM[64] = 32 + MEM[64] + 32;
                                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                        MEM[4 + MEM[64]] = address(v193);
                                        MEM[4 + MEM[64] + 32] = bool(v190);
                                        MEM[4 + MEM[64] + 64] = varg0;
                                        MEM[4 + MEM[64] + 96] = address(v196);
                                        MEM[4 + MEM[64] + 128] = 160;
                                        MEM[4 + MEM[64] + 160] = 32 + MEM[64] + 32 - MEM[64] - 32;
                                        v199 = v200 = 0;
                                        while (v199 < 32 + MEM[64] + 32 - MEM[64] - 32) {
                                            MEM[4 + MEM[64] + 160 + 32 + v199] = MEM[MEM[64] + 32 + v199];
                                            v199 = v199 + 32;
                                        }
                                        MEM[4 + MEM[64] + 160 + 32 + (32 + MEM[64] + 32 - MEM[64] - 32)] = 0;
                                        v201 = address(MEM[32 + (v189 << 5) + varg0]).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 160 + 32 + 32 + MEM[64] + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                        if (bool(v201)) {
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                                            v202 = v203 = MEM[MEM[64]];
                                            v202 = MEM[MEM[64] + 32];
                                            if (v203 <= 0) {
                                            }
                                            if (v203 < 0) {
                                                v204 = v205 = 0x5059(v203);
                                            } else {
                                                v204 = v206 = 0x5059(v202);
                                            }
                                            if (v202 < varg0) {
                                                v207 = _SafeSub(varg0, v202);
                                                0x33e8(v207, tx.origin, address(v188));
                                            }
                                            require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                            require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v208 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                            require(v208 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v209 = 32 + (v208 << 5) + varg0;
                                            require(MEM[v209] <= MEM[v209] + v204, Panic(17)); // arithmetic overflow or underflow
                                            MEM[v209] = MEM[v209] + v204;
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
                                    v210 = uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248);
                                    require(v210 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v211 = MEM[32 + (v210 << 5) + varg0];
                                    0x34b4(0xba12222222228d8ba445958a75a0704d566bf2c8, v211);
                                    v212 = new struct(6);
                                    require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                    require(varg0 <= varg0 + 37, Panic(17)); // arithmetic overflow or underflow
                                    require(varg0 + 5 <= varg0 + 37);
                                    require(varg0 + 37 <= varg0);
                                    v213 = v214 = msg.data[varg0 + (varg0 + 5)];
                                    if (varg0 + 37 - (varg0 + 5) < 32) {
                                        v213 = v214 & uint256.max << (32 - (varg0 + 37 - (varg0 + 5)) << 3);
                                    }
                                    v212.word0 = v213;
                                    require(0 <= 1, Panic(33)); // failed convertion to enum type
                                    v212.word1 = 0;
                                    v212.word2 = address(v211);
                                    require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                                    require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v215 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                                    require(v215 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v212.word3 = address(MEM[32 + (v215 << 5) + varg0]);
                                    v212.word4 = varg0;
                                    v216 = new struct(1);
                                    v216.word0 = 0;
                                    v212.word5 = v216;
                                    v217 = new struct(4);
                                    v217.word0 = address(this);
                                    v217.word1 = False;
                                    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                                    v218 = msg.data[varg0 + (varg0 + 2)] >> 248;
                                    if (v218 > 0) {
                                        v219 = _SafeSub(v218, 1);
                                        require(v219 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v220 = v221 = MEM[32 + (v219 << 5) + varg0];
                                    } else {
                                        v220 = v222 = this;
                                    }
                                    v217.word2 = address(v220);
                                    v217.word3 = False;
                                    MEM[MEM[64]] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                    v223 = 0x4ee9(4 + MEM[64], block.timestamp, 1, v217, v212);
                                    v224 = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call(MEM[MEM[64]:MEM[64] + v167f_0x0 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v224)) {
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        require(MEM[MEM[64]] == MEM[MEM[64]]);
                                        require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                        require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v225 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                        require(v225 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v226 = 32 + (v225 << 5) + varg0;
                                        require(MEM[v226] <= MEM[v226] + MEM[MEM[64]], Panic(17)); // arithmetic overflow or underflow
                                        MEM[v226] = MEM[v226] + MEM[MEM[64]];
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
                                    v227 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (!bool(v227)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                } else {
                                    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                    v228 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
                                    if (!bool(v228)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v229 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                                require(v229 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v230 = 32 + (v229 << 5) + varg0;
                                require(MEM[v230] <= MEM[v230] + varg0, Panic(17)); // arithmetic overflow or underflow
                                MEM[v230] = MEM[v230] + varg0;
                                v15 = varg0 + 3;
                                require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                            }
                        } else {
                            require(varg0 <= varg0 + 4, Panic(17)); // arithmetic overflow or underflow
                            require(varg0 + 4 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v231 = uint8(msg.data[varg0 + 4 + varg0] >> 248 << 248 >> 248);
                            require(v231 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            varg0 = v232 = MEM[32 + (v231 << 5) + varg0];
                            require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
                            require(varg0 + 3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            if (!(uint8(msg.data[varg0 + 3 + varg0] >> 248 << 248 >> 248) - 1)) {
                                v233 = v234 = 3315;
                                require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
                                require(varg0 + 5 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v235 = uint8(msg.data[varg0 + 5 + varg0] >> 248 << 248 >> 248);
                                require(v235 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v236 = v237 = address(MEM[32 + (v235 << 5) + varg0]);
                            }
                        }
                    } else {
                        v233 = v238 = 3007;
                        varg0 = v239 = msg.sender;
                        require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                        require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v240 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                        require(v240 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v236 = v241 = address(MEM[32 + (v240 << 5) + varg0]);
                    }
                    MEM[36 + MEM[64]] = address(varg0);
                    MEM[36 + MEM[64] + 32] = varg0;
                    MEM[MEM[64]] = 36 + MEM[64] + 64 - MEM[64] - 32;
                    MEM[64] = 36 + MEM[64] + 64;
                    MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    0x38d1(MEM[64], v236);
                    // Unknown jump to Block ['0xbbf', '0xcf3']. Refer to 3-address code (TAC);
                    v15 = varg0 + 2;
                    require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                    v242 = v243 = 0;
                    require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) > 4) {
                        v244 = address(varg0).getTradeInfo().gas(msg.gas);
                        if (bool(v244)) {
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
                            require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                            require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                            require(MEM[MEM[64] + 64] == uint112(MEM[MEM[64] + 64]));
                            require(MEM[MEM[64] + 96] == uint112(MEM[MEM[64] + 96]));
                            require(MEM[MEM[64] + 128] == MEM[MEM[64] + 128]);
                            require(varg0 <= varg0 + 6, Panic(17)); // arithmetic overflow or underflow
                            require(varg0 + 6 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            if (uint8(msg.data[varg0 + 6 + varg0] >> 248 << 248 >> 248) - 0) {
                                v245 = _SafeSub(10 ** 18, MEM[MEM[64] + 128]);
                                v246 = _SafeMul(varg0, v245);
                                v247 = _SafeDiv(v246, 10 ** 18);
                                require(uint112(MEM[MEM[64] + 64]) <= uint112(MEM[MEM[64] + 64]) + v247, Panic(17)); // arithmetic overflow or underflow
                                v248 = _SafeMul(v247, uint112(MEM[MEM[64] + 96]));
                                v242 = v249 = _SafeDiv(v248, uint112(MEM[MEM[64] + 64]) + v247);
                                if (v249 >= uint112(MEM[MEM[64] + 32])) {
                                    v242 = v250 = _SafeSub(uint112(MEM[MEM[64] + 32]), 1);
                                }
                            } else {
                                v251 = _SafeSub(10 ** 18, MEM[MEM[64] + 128]);
                                v252 = _SafeMul(varg0, v251);
                                v253 = _SafeDiv(v252, 10 ** 18);
                                require(uint112(MEM[MEM[64] + 96]) <= uint112(MEM[MEM[64] + 96]) + v253, Panic(17)); // arithmetic overflow or underflow
                                v254 = _SafeMul(v253, uint112(MEM[MEM[64] + 64]));
                                v242 = v255 = _SafeDiv(v254, uint112(MEM[MEM[64] + 96]) + v253);
                                if (v255 >= uint112(MEM[MEM[64]])) {
                                    v242 = v256 = _SafeSub(uint112(MEM[MEM[64]]), 1);
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
                            v257 = address(varg0).staticcall(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 160]).gas(msg.gas);
                            if (bool(v257)) {
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
                                require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                                require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                                require(MEM[MEM[64] + 64] == MEM[MEM[64] + 64]);
                                require(MEM[MEM[64] + 96] == uint112(MEM[MEM[64] + 96]));
                                require(MEM[MEM[64] + 128] == uint112(MEM[MEM[64] + 128]));
                                v258 = v259 = uint112(MEM[MEM[64]]);
                                v260 = v261 = uint112(MEM[MEM[64] + 32]);
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            v262 = address(varg0).getReserves().gas(msg.gas);
                            if (bool(v262)) {
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
                                require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                                require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                                require(MEM[MEM[64] + 64] == uint32(MEM[MEM[64] + 64]));
                                v258 = v263 = uint112(MEM[MEM[64]]);
                                v260 = v264 = uint112(MEM[MEM[64] + 32]);
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                        v265 = _SafeSub(10000, msg.data[varg0 + varg0 + 7] >> 248);
                        v266 = _SafeMul(varg0, v265);
                        require(varg0 <= varg0 + 6, Panic(17)); // arithmetic overflow or underflow
                        require(varg0 + 6 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (uint8(msg.data[varg0 + 6 + varg0] >> 248 << 248 >> 248) - 0) {
                            v267 = _SafeMul(v258, 10000);
                            require(v267 <= v267 + v266, Panic(17)); // arithmetic overflow or underflow
                            v268 = _SafeMul(v266, v260);
                            v269 = _SafeDiv(v268, v267 + v266);
                            v242 = v270 = _SafeSub(v269, 1);
                        } else {
                            v271 = _SafeMul(v260, 10000);
                            require(v271 <= v271 + v266, Panic(17)); // arithmetic overflow or underflow
                            v272 = _SafeMul(v266, v258);
                            v273 = _SafeDiv(v272, v271 + v266);
                            v242 = v274 = _SafeSub(v273, 1);
                        }
                    }
                    require(v242 <= v242 + v242, Panic(17)); // arithmetic overflow or underflow
                    require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v275 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                    require(v275 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v276 = 32 + (v275 << 5) + varg0;
                    require(MEM[v276] <= MEM[v276] + (v242 + v242), Panic(17)); // arithmetic overflow or underflow
                    MEM[v276] = MEM[v276] + (v242 + v242);
                    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
                    v277 = msg.data[varg0 + (varg0 + 2)] >> 248;
                    if (v277 > 0) {
                        v278 = _SafeSub(v277, 1);
                        require(v278 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v279 = v280 = MEM[32 + (v278 << 5) + varg0];
                    } else {
                        v279 = v281 = this;
                    }
                    MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = v242;
                    MEM[4 + MEM[64] + 32] = v242;
                    MEM[4 + MEM[64] + 64] = address(v279);
                    MEM[4 + MEM[64] + 96] = 128;
                    MEM[4 + MEM[64] + 128] = 0;
                    require(bool((address(varg0)).code.size));
                    v282 = address(varg0).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (bool(v282)) {
                        v15 = varg0 + 8;
                        require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    v283 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
                    if (bool(v283)) {
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
                v284 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                require(v284 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v285 = 32 + (v284 << 5) + varg0;
                require(MEM[v285] <= MEM[v285] + varg0, Panic(17)); // arithmetic overflow or underflow
                MEM[v285] = MEM[v285] + varg0;
                v15 = varg0 + 2;
                require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
            }
        } else {
            require(varg0 <= varg0 + 32, Panic(17)); // arithmetic overflow or underflow
            require(varg0 <= varg0 + 32);
            require(varg0 + 32 <= varg0);
            v286 = v287 = msg.data[varg0 + varg0];
            if (varg0 + 32 - varg0 < 32) {
                v286 = v287 & uint256.max << (32 - (varg0 + 32 - varg0) << 3);
            }
            MEM[36 + MEM[64]] = varg0;
            MEM[36 + MEM[64] + 32] = v286;
            MEM[36 + MEM[64] + 64] = 96;
            MEM[36 + MEM[64] + 96] = MEM[varg0];
            v288 = v289 = 36 + MEM[64] + 96 + 32;
            v290 = v291 = varg0 + 32;
            v292 = v293 = 0;
            while (v292 < MEM[varg0]) {
                MEM[v288] = address(MEM[v290]);
                v288 = v288 + 32;
                v290 = v290 + 32;
                v292 = v292 + 1;
            }
            MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | bytes4(0x6982509000000000000000000000000000000000000000000000000000000000);
            require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) < 64) {
                v294 = v295 = 0xf052cee512c696e91625b07ecc9484fdb6d45629;
            } else {
                require(varg0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (uint8(msg.data[varg0 + varg0] >> 248 << 248 >> 248) < 96) {
                    v294 = v296 = 0x4d8285b6e0ca4bc2360bd2932caec45a10868cb2;
                } else {
                    v294 = v297 = 0x18a9d605b98b726725adaa2f53f83b5b7d4d0025;
                }
            }
            v298 = v299 = 0;
            while (v298 < v288 - MEM[64] - 32) {
                MEM[MEM[64] + v298] = MEM[MEM[64] + 32 + v298];
                v298 = v298 + 32;
            }
            MEM[MEM[64] + (v288 - MEM[64] - 32)] = 0;
            v300 = address(v294).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + v48d6_0x1V0x497bV0x81b - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v301 = v302 = 96;
            } else {
                v301 = MEM[64];
                MEM[64] = v301 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                MEM[v301] = RETURNDATASIZE();
                RETURNDATACOPY(v301 + 32, 0, RETURNDATASIZE());
            }
            if (v300) {
                v303 = v304 = MEM[v301] == 0;
                if (v304) {
                    v303 = (address(v294)).code.size == 0;
                }
                require(!v303, AddressEmptyCode(address(v294)));
                require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
                require(varg0 + 1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v305 = uint8(msg.data[varg0 + 1 + varg0] >> 248 << 248 >> 248);
                require(v305 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v306 = 32 + (v305 << 5) + varg0;
                require(MEM[v306] <= MEM[v306] + MEM[v301 + 32], Panic(17)); // arithmetic overflow or underflow
                MEM[v306] = MEM[v306] + MEM[v301 + 32];
                v15 = varg0 + MEM[v301 + 64];
                require(varg0 <= v15, Panic(17)); // arithmetic overflow or underflow
            } else {
                require(MEM[v301] <= 0, 32 + v301, MEM[v301]);
                revert(FailedInnerCall());
            }
        }
        require(v15 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (!(uint8(msg.data[v15 + varg0] >> 248 << 248 >> 248) - uint8.max)) {
            return ;
        }
    }
    revert(Panic(50));
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!varg0 | (varg1 == varg0 * varg1 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x4716(uint256 varg0) private { 
    require(varg0 - uint256.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x4da0(struct(6) varg0, uint256 varg1) private { 
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

function 0x4ee9(uint256 varg0, uint256 varg1, uint256 varg2, struct(4) varg3, struct(6) varg4) private { 
    MEM[varg0] = varg0 + 224 - varg0;
    v0 = 0x4da0(varg4, varg0 + 224);
    MEM[varg0 + 32] = address(varg3.word0);
    MEM[varg0 + 32 + 32] = bool(varg3.word1);
    MEM[varg0 + 32 + 64] = address(varg3.word2);
    MEM[varg0 + 32 + 96] = bool(varg3.word3);
    MEM[varg0 + 160] = varg2;
    MEM[varg0 + 192] = varg1;
    return v0;
}

function 0x5059(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x53ee(uint256 varg0, uint256 varg1, uint256 varg2, struct(4) varg3, struct(6) varg4) private { 
    MEM[varg0] = varg0 + 224 - varg0;
    v0 = 0x4da0(varg4, varg0 + 224);
    MEM[varg0 + 32] = address(varg3.word0);
    MEM[varg0 + 32 + 32] = bool(varg3.word1);
    MEM[varg0 + 32 + 64] = address(varg3.word2);
    MEM[varg0 + 32 + 96] = bool(varg3.word3);
    MEM[varg0 + 160] = varg2;
    MEM[varg0 + 192] = varg1;
    return v0;
}

function 0x54da(uint256 varg0, uint256 varg1) private { 
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

function 0x568b(uint256 varg0, uint256 varg1) private { 
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

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x33e8(v0, msg.sender, address(data.word1));
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x33e8(v0, msg.sender, address(data.word1));
}

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
    while (v0 < v1 + (varg1.length << 5)) {
        require(msg.data[v0] == msg.data[v0]);
        MEM[v3] = msg.data[v0];
        v3 = v3 + 32;
        v0 = v0 + 32;
    }
    0x268(v2, varg0.length);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0xa1dab4eb > function_selector >> 224) {
        if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x3a1c453c == function_selector >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x849df53d == function_selector >> 224) {
            0x849df53d();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else {
            require(0x923b8a2a == function_selector >> 224);
            swapCallback(uint256,uint256,bytes);
        }
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
