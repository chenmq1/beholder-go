// Decompiled by library.dedaub.com
// 2026.04.16 00:55 UTC
// Compiled using the solidity compiler version 0.8.33


// Data structures and variables inferred from the use of storage instructions
int256 stor_4; // STORAGE[0x4]
int256 stor_5; // STORAGE[0x5]
int256 stor_6; // STORAGE[0x6]
int256 stor_7; // STORAGE[0x7]
address _withdraw; // STORAGE[0x0] bytes 0 to 19
bool stor_2_0_0; // STORAGE[0x2] bytes 0 to 0
address stor_1_0_19; // STORAGE[0x1] bytes 0 to 19
address _uniswapV3SwapCallback; // STORAGE[0x2] bytes 1 to 20
address stor_3_0_19; // STORAGE[0x3] bytes 0 to 19



function 0x1103(bytes varg0, uint256 varg1, uint256 varg2) private { 
    require(MEM[varg2 + 32] < 25, Panic(33)); // failed convertion to enum type
    if (MEM[varg2 + 32] - 7) {
        require(MEM[varg2 + 32] >= 25, varg1, MEM[varg2 + 32]);
        revert(Panic(33));
    } else {
        v0 = v1 = !address(MEM[varg2]);
        if (bool(address(MEM[varg2]))) {
            v0 = v2 = !(address(MEM[varg2])).code.size;
        }
        if (v0) {
            v3 = new bytes[](varg0.length);
            MCOPY(v3.data, varg0.data, varg0.length);
            v3[varg0.length] = 0;
            revert(v3);
        } else {
            v4 = v5 = MEM[64];
            v6 = address(MEM[varg2]).token0().gas(msg.gas);
            require(v6, MEM[64], RETURNDATASIZE());
            v7 = v8 = 4;
            v7 = v9 = 0;
            if (v6) {
                v10 = v11 = 4721;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v5 + 32 > uint64.max) | (v5 + 32 < v5)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v5 + 32;
                    v12 = v13 = v5 + 32;
                }
            }
            v4 = v14 = MEM[64];
            v15 = address(MEM[varg2]).token1().gas(msg.gas);
            require(v15, MEM[64], RETURNDATASIZE());
            v7 = v16 = 0;
            if (v15) {
                v10 = v17 = 4682;
                v18 = v19 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x1251. Refer to 3-address code (TAC);
                }
            }
            v20 = v21 = address(v7) != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            if (address(v7) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v20 = v22 = 0xdac17f958d2ee523a2206206994597c13d831ec7 != address(v7);
            }
            require(!v20, fullExit(address(MEM[varg2]), address(v7), address(v7)));
            return ;
            require(!((v4 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v4 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v12 = v23 = v4 + v18;
            require(v12 - v4 >= 32);
            v7 = v24 = MEM[v4];
            require(!(v24 - address(v24)));
            // Unknown jump to Block ['0x124a', '0x1271']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x11a0. Refer to 3-address code (TAC);
            v18 = v25 = RETURNDATASIZE();
            // Unknown jump to Block 0x1238. Refer to 3-address code (TAC);
        }
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(stor_2_0_0, fullExit());
    require(data.data + data.length - data.data >= 32);
    require(msg.data[data.data] < 3);
    if (msg.data[data.data] == 1) {
        require(!(msg.sender - _uniswapV3SwapCallback), msg.sender);
        if (amount0Delta <= 0) {
            v0 = v1 = 0;
        }
        if (amount1Delta >= 0) {
            v2 = v3 = 0;
        } else {
            v2 = v4 = 0xc9f(amount1Delta);
        }
        stor_5 = v0;
        require(!0, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](v6.length);
        MCOPY(v5.data, v6.data, v6.length);
        v5[32][v6.length] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = stor_3_0_19.swap(this, 0, v2, 0xfffd8963efd1fc6a506488495d951d5263988d25, v5).gas(msg.gas);
        require(v7, MEM[64], RETURNDATASIZE());
        if (v7) {
            v10 = v11 = 64;
            if (64 > RETURNDATASIZE()) {
                v10 = v12 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v10 - MEM[64] >= 64);
        }
        require(!((stor_6 - stor_5 < stor_6) & (stor_5 < 0) | (stor_6 - stor_5 > stor_6) & (stor_5 >= 0)), Panic(17)); // arithmetic overflow or underflow
        stor_7 = stor_6 - stor_5;
        require(stor_6 - stor_5 >= stor_4, fullExit(stor_6 - stor_5, stor_4));
        v13 = new bytes[](68);
        MEM[v13.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = _uniswapV3SwapCallback;
        MEM[v13 + 68] = stor_5;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v16, /* uint256 */ v17 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(_uniswapV3SwapCallback, stor_5).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
    } else {
        require(msg.data[data.data] == 2, msg.sender);
        require(!(msg.sender - stor_3_0_19), msg.sender);
        v20 = v21 = 0;
        if (v21 != amount1Delta > v21) {
        }
        if (v21 != amount0Delta < v21) {
            v20 = v22 = 0xc9f(amount0Delta);
        }
        stor_6 = v20;
        v23 = new bytes[](68);
        MEM[v23.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v23 + 36] = stor_3_0_19;
        MEM[v23 + 68] = v20;
        require(!((v23 + 128 > uint64.max) | (v23 + 128 < v23)), Panic(65)); // failed memory allocation (too much memory)
        v24 = v23.length;
        v15 = v25, /* uint256 */ v26 = 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(stor_3_0_19, v20).value(v21).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v27 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = v28 = new bytes[](RETURNDATASIZE());
            require(!((v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
            v26 = v28.data;
            RETURNDATACOPY(v26, 0, RETURNDATASIZE());
        }
    }
    if (v15) {
        v15 = v29 = !MEM[v18];
        if (bool(MEM[v18])) {
            require(v18 + MEM[v18] - v18 >= 32);
            v15 = MEM[v18 + 32];
            require(!(v15 - bool(v15)));
        }
    }
    require(v15, Error('TRANSFER_FAILED'));
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(stor_2_0_0, fullExit());
    require(data.data + data.length - data.data >= 32);
    require(msg.data[data.data] < 3);
    if (msg.data[data.data] == 1) {
        require(!(msg.sender - _uniswapV3SwapCallback), msg.sender);
        if (amount0Delta <= 0) {
            v0 = v1 = 0;
        }
        if (amount1Delta >= 0) {
            v2 = v3 = 0;
        } else {
            v2 = v4 = 0xc9f(amount1Delta);
        }
        stor_5 = v0;
        require(!0, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](v6.length);
        MCOPY(v5.data, v6.data, v6.length);
        v5[32][v6.length] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = stor_3_0_19.swap(this, 0, v2, 0xfffd8963efd1fc6a506488495d951d5263988d25, v5).gas(msg.gas);
        require(v7, MEM[64], RETURNDATASIZE());
        if (v7) {
            v10 = v11 = 64;
            if (64 > RETURNDATASIZE()) {
                v10 = v12 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v10 - MEM[64] >= 64);
        }
        require(!((stor_6 - stor_5 < stor_6) & (stor_5 < 0) | (stor_6 - stor_5 > stor_6) & (stor_5 >= 0)), Panic(17)); // arithmetic overflow or underflow
        stor_7 = stor_6 - stor_5;
        require(stor_6 - stor_5 >= stor_4, fullExit(stor_6 - stor_5, stor_4));
        v13 = new bytes[](68);
        MEM[v13.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = _uniswapV3SwapCallback;
        MEM[v13 + 68] = stor_5;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v16, /* uint256 */ v17 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(_uniswapV3SwapCallback, stor_5).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
    } else {
        require(msg.data[data.data] == 2, msg.sender);
        require(!(msg.sender - stor_3_0_19), msg.sender);
        v20 = v21 = 0;
        if (v21 != amount1Delta > v21) {
        }
        if (v21 != amount0Delta < v21) {
            v20 = v22 = 0xc9f(amount0Delta);
        }
        stor_6 = v20;
        v23 = new bytes[](68);
        MEM[v23.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v23 + 36] = stor_3_0_19;
        MEM[v23 + 68] = v20;
        require(!((v23 + 128 > uint64.max) | (v23 + 128 < v23)), Panic(65)); // failed memory allocation (too much memory)
        v24 = v23.length;
        v15 = v25, /* uint256 */ v26 = 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(stor_3_0_19, v20).value(v21).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v27 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = v28 = new bytes[](RETURNDATASIZE());
            require(!((v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
            v26 = v28.data;
            RETURNDATACOPY(v26, 0, RETURNDATASIZE());
        }
    }
    if (v15) {
        v15 = v29 = !MEM[v18];
        if (bool(MEM[v18])) {
            require(v18 + MEM[v18] - v18 >= 32);
            v15 = MEM[v18 + 32];
            require(!(v15 - bool(v15)));
        }
    }
    require(v15, Error('TRANSFER_FAILED'));
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(stor_2_0_0, fullExit());
    require(data.data + data.length - data.data >= 32);
    require(msg.data[data.data] < 3);
    if (msg.data[data.data] == 1) {
        require(!(msg.sender - _uniswapV3SwapCallback), msg.sender);
        if (amount0Delta <= 0) {
            v0 = v1 = 0;
        }
        if (amount1Delta >= 0) {
            v2 = v3 = 0;
        } else {
            v2 = v4 = 0xc9f(amount1Delta);
        }
        stor_5 = v0;
        require(!0, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](v6.length);
        MCOPY(v5.data, v6.data, v6.length);
        v5[32][v6.length] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = stor_3_0_19.swap(this, 0, v2, 0xfffd8963efd1fc6a506488495d951d5263988d25, v5).gas(msg.gas);
        require(v7, MEM[64], RETURNDATASIZE());
        if (v7) {
            v10 = v11 = 64;
            if (64 > RETURNDATASIZE()) {
                v10 = v12 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v10 - MEM[64] >= 64);
        }
        require(!((stor_6 - stor_5 < stor_6) & (stor_5 < 0) | (stor_6 - stor_5 > stor_6) & (stor_5 >= 0)), Panic(17)); // arithmetic overflow or underflow
        stor_7 = stor_6 - stor_5;
        require(stor_6 - stor_5 >= stor_4, fullExit(stor_6 - stor_5, stor_4));
        v13 = new bytes[](68);
        MEM[v13.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = _uniswapV3SwapCallback;
        MEM[v13 + 68] = stor_5;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v16, /* uint256 */ v17 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(_uniswapV3SwapCallback, stor_5).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
    } else {
        require(msg.data[data.data] == 2, msg.sender);
        require(!(msg.sender - stor_3_0_19), msg.sender);
        v20 = v21 = 0;
        if (v21 != amount1Delta > v21) {
        }
        if (v21 != amount0Delta < v21) {
            v20 = v22 = 0xc9f(amount0Delta);
        }
        stor_6 = v20;
        v23 = new bytes[](68);
        MEM[v23.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v23 + 36] = stor_3_0_19;
        MEM[v23 + 68] = v20;
        require(!((v23 + 128 > uint64.max) | (v23 + 128 < v23)), Panic(65)); // failed memory allocation (too much memory)
        v24 = v23.length;
        v15 = v25, /* uint256 */ v26 = 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(stor_3_0_19, v20).value(v21).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v27 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = v28 = new bytes[](RETURNDATASIZE());
            require(!((v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
            v26 = v28.data;
            RETURNDATACOPY(v26, 0, RETURNDATASIZE());
        }
    }
    if (v15) {
        v15 = v29 = !MEM[v18];
        if (bool(MEM[v18])) {
            require(v18 + MEM[v18] - v18 >= 32);
            v15 = MEM[v18 + 32];
            require(!(v15 - bool(v15)));
        }
    }
    require(v15, Error('TRANSFER_FAILED'));
}

function omniV3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(varg2 + 35 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(varg2 + varg2.length + 36 <= msg.data.length);
    require(stor_2_0_0, fullExit());
    require(varg2.data + varg2.length - varg2.data >= 32);
    require(msg.data[varg2.data] < 3);
    if (msg.data[varg2.data] == 1) {
        require(!(msg.sender - _uniswapV3SwapCallback), msg.sender);
        if (varg0 <= 0) {
            v0 = v1 = 0;
        }
        if (varg1 >= 0) {
            v2 = v3 = 0;
        } else {
            v2 = v4 = 0xc9f(varg1);
        }
        stor_5 = v0;
        require(!0, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](v6.length);
        MCOPY(v5.data, v6.data, v6.length);
        v5[32][v6.length] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = stor_3_0_19.swap(this, 0, v2, 0xfffd8963efd1fc6a506488495d951d5263988d25, v5).gas(msg.gas);
        require(v7, MEM[64], RETURNDATASIZE());
        if (v7) {
            v10 = v11 = 64;
            if (64 > RETURNDATASIZE()) {
                v10 = v12 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v10 - MEM[64] >= 64);
        }
        require(!((stor_6 - stor_5 < stor_6) & (stor_5 < 0) | (stor_6 - stor_5 > stor_6) & (stor_5 >= 0)), Panic(17)); // arithmetic overflow or underflow
        stor_7 = stor_6 - stor_5;
        require(stor_6 - stor_5 >= stor_4, fullExit(stor_6 - stor_5, stor_4));
        v13 = new bytes[](68);
        MEM[v13.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = _uniswapV3SwapCallback;
        MEM[v13 + 68] = stor_5;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v16, /* uint256 */ v17 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(_uniswapV3SwapCallback, stor_5).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
    } else {
        require(msg.data[varg2.data] == 2, msg.sender);
        require(!(msg.sender - stor_3_0_19), msg.sender);
        v20 = v21 = 0;
        if (v21 != varg1 > v21) {
        }
        if (v21 != varg0 < v21) {
            v20 = v22 = 0xc9f(varg0);
        }
        stor_6 = v20;
        v23 = new bytes[](68);
        MEM[v23.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v23 + 36] = stor_3_0_19;
        MEM[v23 + 68] = v20;
        require(!((v23 + 128 > uint64.max) | (v23 + 128 < v23)), Panic(65)); // failed memory allocation (too much memory)
        v24 = v23.length;
        v15 = v25, /* uint256 */ v26 = 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(stor_3_0_19, v20).value(v21).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v27 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = v28 = new bytes[](RETURNDATASIZE());
            require(!((v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
            v26 = v28.data;
            RETURNDATACOPY(v26, 0, RETURNDATASIZE());
        }
    }
    if (v15) {
        v15 = v29 = !MEM[v18];
        if (bool(MEM[v18])) {
            require(v18 + MEM[v18] - v18 >= 32);
            v15 = MEM[v18 + 32];
            require(!(v15 - bool(v15)));
        }
    }
    require(v15, Error('TRANSFER_FAILED'));
}

function 0x97861b8b(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 160);
    require(!(msg.sender - _withdraw), fullExit(msg.sender));
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0.length;
    v0.word1 = msg.data[varg0.data];
    v0.word2 = msg.data[varg0 + 68];
    v0.word3 = msg.data[varg0 + 100];
    require(msg.data[varg0 + 132] <= uint64.max);
    require(varg0 + msg.data[varg0 + 132] + 35 < msg.data.length);
    require(msg.data[varg0 + msg.data[varg0 + 132] + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](msg.data[varg0 + msg.data[varg0 + 132] + 4]);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[varg0 + msg.data[varg0 + 132] + 4]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[varg0 + msg.data[varg0 + 132] + 4]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[varg0 + msg.data[varg0 + 132] + 4] + (varg0 + msg.data[varg0 + 132]) + 36 <= msg.data.length);
    CALLDATACOPY(v1.data, varg0 + msg.data[varg0 + 132] + 36, msg.data[varg0 + msg.data[varg0 + 132] + 4]);
    v1[msg.data[varg0 + msg.data[varg0 + 132] + 4]] = 0;
    v0.word4 = v1;
    v2 = 0xce9(v0);
    return v2;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(stor_2_0_0, fullExit());
    require(data.data + data.length - data.data >= 32);
    require(msg.data[data.data] < 3);
    if (msg.data[data.data] == 1) {
        require(!(msg.sender - _uniswapV3SwapCallback), msg.sender);
        if (amount0Delta <= 0) {
            v0 = v1 = 0;
        }
        if (amount1Delta >= 0) {
            v2 = v3 = 0;
        } else {
            v2 = v4 = 0xc9f(amount1Delta);
        }
        stor_5 = v0;
        require(!0, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](v6.length);
        MCOPY(v5.data, v6.data, v6.length);
        v5[32][v6.length] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = stor_3_0_19.swap(this, 0, v2, 0xfffd8963efd1fc6a506488495d951d5263988d25, v5).gas(msg.gas);
        require(v7, MEM[64], RETURNDATASIZE());
        if (v7) {
            v10 = v11 = 64;
            if (64 > RETURNDATASIZE()) {
                v10 = v12 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v10 - MEM[64] >= 64);
        }
        require(!((stor_6 - stor_5 < stor_6) & (stor_5 < 0) | (stor_6 - stor_5 > stor_6) & (stor_5 >= 0)), Panic(17)); // arithmetic overflow or underflow
        stor_7 = stor_6 - stor_5;
        require(stor_6 - stor_5 >= stor_4, fullExit(stor_6 - stor_5, stor_4));
        v13 = new bytes[](68);
        MEM[v13.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = _uniswapV3SwapCallback;
        MEM[v13 + 68] = stor_5;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v16, /* uint256 */ v17 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(_uniswapV3SwapCallback, stor_5).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
    } else {
        require(msg.data[data.data] == 2, msg.sender);
        require(!(msg.sender - stor_3_0_19), msg.sender);
        v20 = v21 = 0;
        if (v21 != amount1Delta > v21) {
        }
        if (v21 != amount0Delta < v21) {
            v20 = v22 = 0xc9f(amount0Delta);
        }
        stor_6 = v20;
        v23 = new bytes[](68);
        MEM[v23.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v23 + 36] = stor_3_0_19;
        MEM[v23 + 68] = v20;
        require(!((v23 + 128 > uint64.max) | (v23 + 128 < v23)), Panic(65)); // failed memory allocation (too much memory)
        v24 = v23.length;
        v15 = v25, /* uint256 */ v26 = 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(stor_3_0_19, v20).value(v21).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v27 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = v28 = new bytes[](RETURNDATASIZE());
            require(!((v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
            v26 = v28.data;
            RETURNDATACOPY(v26, 0, RETURNDATASIZE());
        }
    }
    if (v15) {
        v15 = v29 = !MEM[v18];
        if (bool(MEM[v18])) {
            require(v18 + MEM[v18] - v18 >= 32);
            v15 = MEM[v18 + 32];
            require(!(v15 - bool(v15)));
        }
    }
    require(v15, Error('TRANSFER_FAILED'));
}

function receive() public payable { 
}

function USDT_TOKEN() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xdac17f958d2ee523a2206206994597c13d831ec7;
}

function withdraw(address token) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    if (token) {
        v0, v1 = token.balanceOf(this).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        v1 = v2 = 0;
        if (v0) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v3 - MEM[64] >= 32);
        }
        v6, /* bool */ v7 = token.transfer(_withdraw, v1).gas(msg.gas);
        require(v6, MEM[64], RETURNDATASIZE());
        if (v6) {
            v8 = v9 = 32;
            if (32 > RETURNDATASIZE()) {
                v8 = v10 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v8 - MEM[64] >= 32);
            require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            exit;
        } else {
            exit;
        }
    } else {
        v11, /* uint256 */ v12 = _withdraw.call().value(this.balance).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v13 = v14 = new bytes[](RETURNDATASIZE());
            require(!((v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
            v12 = v14.data;
            RETURNDATACOPY(v12, 0, RETURNDATASIZE());
        }
        exit;
    }
}

function WETH_TOKEN() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
}

function 0x25994238() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return stor_1_0_19;
}

function 0x1c03885d(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _withdraw), fullExit(msg.sender));
    stor_1_0_19 = varg0;
    return ;
}

function 0x05c24e93(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = 0x699();
    v1 = 0x7be();
    require(v1.word0.length);
    require(varg0 < v1.word0.length, varg0);
    require(varg0 < v1.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(MEM[v1[varg0] + 32] < 25, Panic(33)); // failed convertion to enum type
    return address(MEM[v1[varg0]]), MEM[v1[varg0] + 32], uint24(MEM[v1[varg0] + 64]), int24(MEM[v1[varg0] + 96]);
}

function 0x699() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    return v0;
}

function 0x7be() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 4;
    v1 = v2 = 0;
    while (v1 < 128) {
        v3 = 0x699();
        MEM[v0 + v1 + 32] = v3;
        v1 = v1 + 32;
    }
    v4 = 0x699();
    v5 = new struct(4);
    require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
    v5.word0 = 0x6ca298d2983ab03aa1da7679389d955a4efee15c;
    v5.word1 = 7;
    v5.word2 = 500;
    v5.word3 = 10;
    require(v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v6 = v0.data;
    v0.word1 = v5;
    require(v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v7 = v0.data;
    v8 = 0x699();
    v9 = new struct(4);
    require(!((v9 + 128 > uint64.max) | (v9 + 128 < v9)), Panic(65)); // failed memory allocation (too much memory)
    v9.word0 = 0x11b815efb8f581194ae79006d24e0d814b7697f6;
    v9.word1 = 7;
    v9.word2 = 500;
    v9.word3 = 10;
    require(1 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0.word2 = v9;
    require(1 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v10 = 0x699();
    v11 = new struct(4);
    require(!((v11 + 128 > uint64.max) | (v11 + 128 < v11)), Panic(65)); // failed memory allocation (too much memory)
    v11.word0 = 0xc7bbec68d12a0d1830360f8ec58fa599ba1b0e9b;
    v11.word1 = 7;
    v11.word2 = 100;
    v11.word3 = 1;
    require(2 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0.word3 = v11;
    require(2 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v12 = 0x699();
    v13 = new struct(4);
    require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
    v13.word0 = 0x4e68ccd3e89f51c3074ca5072bbac773960dfa36;
    v13.word1 = 7;
    v13.word2 = 3000;
    v13.word3 = 60;
    require(3 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0.word4 = v13;
    require(3 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return v0;
}

function poolCount() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = 0x7be();
    return v0.word0.length;
}

function 0xc9f(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0xce9(struct(5) varg0) private { 
    require(!stor_2_0_0);
    require(varg0.word1, fullExit());
    require(varg0.word2 != varg0.word3, varg0.word2, varg0.word3);
    v0 = 0x699();
    v1 = 0x7be();
    require(v1.word0.length);
    require(varg0.word2 < v1.word0.length, varg0.word2);
    require(varg0.word2 < v1.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v2 = 0x699();
    v3 = 0x7be();
    require(v3.word0.length);
    require(varg0.word3 < v3.word0.length, varg0.word3);
    require(varg0.word3 < v3.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(!(('buyPool' + 64 > uint64.max) | ('buyPool' + 64 < 'buyPool')), Panic(65)); // failed memory allocation (too much memory)
    0x1103('buyPool', varg0.word2, v1[varg0.word2]);
    require(!(('sellPool' + 64 > uint64.max) | ('sellPool' + 64 < 'sellPool')), Panic(65)); // failed memory allocation (too much memory)
    0x1103('sellPool', varg0.word3, v3[varg0.word3]);
    v4, v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v5 = v6 = 0;
    if (v4) {
        v7 = v8 = 32;
        if (32 > RETURNDATASIZE()) {
            v7 = v9 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v7 - MEM[64] >= 32);
    }
    stor_2_0_0 = 1;
    _uniswapV3SwapCallback = MEM[v1[varg0.word2]];
    stor_3_0_19 = MEM[v3[varg0.word3]];
    stor_4 = varg0.word0;
    v10 = 0xc9f(varg0.word1);
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 4] = this;
    v11 = new bytes[](v12.length);
    MCOPY(v11.data, v12.data, v12.length);
    v11[v12.length][32] = 0;
    v13, /* uint256 */ v14, /* uint256 */ v15 = address(MEM[v1[varg0.word2]]).swap(this, 1, v10, 0x1000276a4, v11).gas(msg.gas);
    require(v13, MEM[64], RETURNDATASIZE());
    if (v13) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v16 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v16 = v17 = MEM[64] + 64;
        }
        require(v16 - MEM[64] >= 64);
    }
    stor_2_0_0 = 0;
    _uniswapV3SwapCallback = 0;
    stor_3_0_19 = 0;
    stor_4 = 0;
    stor_5 = 0;
    stor_6 = 0;
    stor_7 = 0;
    v18, v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(v18, MEM[64], RETURNDATASIZE());
    v19 = v20 = 0;
    if (v18) {
        v21 = v22 = 32;
        if (32 > RETURNDATASIZE()) {
            v21 = v23 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v21 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v21 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v21 - MEM[64] >= 32);
    }
    require(v19 >= v5, v5, v19);
    require(v19 - v5 <= v19, Panic(17)); // arithmetic overflow or underflow
    if (v19 - v5 > 0) {
        require((v19 == v5) | (95 == (v19 - v5) * 95 / (v19 - v5)), Panic(17)); // arithmetic overflow or underflow
        if ((v19 - v5) * 95 / 100) {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            v24, /* uint256 */ v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw((v19 - v5) * 95 / 100).gas(msg.gas);
            require(v24, v25, RETURNDATASIZE());
            if (v24) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
            }
            v26, /* uint256 */ v27 = block.coinbase.call().value((v19 - v5) * 95 / 100).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v28 = v29 = new bytes[](RETURNDATASIZE());
                require(!((v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
                v27 = v29.data;
                RETURNDATACOPY(v27, 0, RETURNDATASIZE());
            }
        }
    }
    emit 0xe806ddb8085df0a13873cb91b9e99bd346cd5117ae109c352243024c95b5f049(msg.sender, varg0.word2, varg0.word3, varg0.word1, varg0.word0, v19 - v5);
    return v19 - v5;
}

function autoExecute() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _withdraw), fullExit(msg.sender));
    v0, /* bool */ v1, /* uint256 */ v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5, /* uint256 */ v6 = stor_1_0_19.staticcall(0xf4cf516e00000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v7 = v8 = 0;
    if (v0) {
        v9 = v10 = 192;
        if (192 > RETURNDATASIZE()) {
            v9 = v11 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v9 - MEM[64] >= 192);
        v7 = v12 = new struct(6);
        require(!((v12 + 192 > uint64.max) | (v12 + 192 < v12)), Panic(65)); // failed memory allocation (too much memory)
        require(!0xf4cf516dffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        v12.word0 = v1;
        v12.word1 = v2;
        v12.word2 = v3;
        v12.word3 = v4;
        v12.word4 = v5;
        v12.word5 = v6;
    }
    v13 = v14 = !MEM[v7];
    if (bool(MEM[v7])) {
        v13 = v15 = MEM[v7 + 32] <= 10 ** 14;
    }
    require(!v13, fullExit(MEM[v7 + 32], 10 ** 14));
    v16 = new struct(1);
    require(!((v16 + 32 > uint64.max) | (v16 + 32 < v16)), Panic(65)); // failed memory allocation (too much memory)
    v16.word0 = 0;
    v17 = new struct(5);
    require(!((v17 + 160 > uint64.max) | (v17 + 160 < v17)), Panic(65)); // failed memory allocation (too much memory)
    v17.word0 = 10 ** 14;
    v17.word1 = MEM[v7 + 64];
    v17.word2 = MEM[v7 + 128];
    v17.word3 = MEM[v7 + 160];
    v17.word4 = v16;
    v18 = 0xce9(v17);
    return v18;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x5c24e93 == function_selector >> 224) {
            0x05c24e93();
        } else if (0x1c03885d == function_selector >> 224) {
            0x1c03885d();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x25994238 == function_selector >> 224) {
            0x25994238();
        } else if (0x2c8958f6 == function_selector >> 224) {
            algebraSwapCallback(int256,int256,bytes);
        } else if (0x37d277d4 == function_selector >> 224) {
            WETH_TOKEN();
        } else if (0x3a1c453c == function_selector >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x4b58a6e8 == function_selector >> 224) {
            omniV3SwapCallback(int256,int256,bytes);
        } else if (0x51cff8d9 == function_selector >> 224) {
            withdraw(address);
        } else if (0x77b330c9 == function_selector >> 224) {
            USDT_TOKEN();
        } else if (0x97861b8b == function_selector >> 224) {
            0x97861b8b();
        } else if (0xa911f736 == function_selector >> 224) {
            autoExecute();
        } else if (0xf525cb68 == function_selector >> 224) {
            poolCount();
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
