// Decompiled by library.dedaub.com
// 2025.12.09 04:35 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 _allow; // TRANSIENT_STORAGE[0x0]



function 0x1128(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = _allow;
    require(msg.sender == address(v1), InvalidCaller(msg.sender, address(v1)));
    _allow = 0;
    if (msg.data[4 + data]) {
        v2 = new struct(3);
        v2.word0 = 64;
        v3 = v2.data;
        v2.word1 = amount0Delta;
        v2.word2 = amount1Delta;
        MEM[v2 + 96 + 32] = v2;
        v4 = v5 = v2 + 96 + 64;
        v6 = v7 = 4 + data + 32 + 1;
        while (v6 < 4 + data + 32 + msg.data[4 + data]) {
            v8 = v9 = v6 + 6;
            if (0 == (msg.data[v6 + 4] >> 248 & 0x1f == 31)) {
                if (msg.data[v6 + 4] >> 248 & 0x1f >= 3) {
                    if ((msg.data[v6 + 4] >> 248 & 0x1f) - 3) {
                        if (4 - (msg.data[v6 + 4] >> 248 & 0x1f)) {
                            v10 = v11 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                        } else {
                            v10 = v12 = 0x4444c5dc75cb358380d2e3de08a90;
                        }
                    } else {
                        v10 = 0x111111125421ca6dc452d289314280a0f8842a65;
                    }
                } else if (msg.data[v6 + 4] >> 248 & 0x1f) {
                    if (1 - (msg.data[v6 + 4] >> 248 & 0x1f)) {
                        v10 = v13 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else {
                        v10 = v14 = msg.sender;
                    }
                } else {
                    v10 = v15 = this;
                }
            } else {
                v10 = v16 = msg.data[v9] >> 96;
                v8 = v6 + 26;
            }
            v17 = v18 = 0;
            if (msg.data[v6 + 4] >> 254 == 1) {
                v17 = v19 = msg.data[v8] >> 96;
                v8 = v20 = v8 + 20;
                v21 = this.balance;
                v22 = this.balance;
                require(v21 >= v19, InsufficientBalance(v22, v19));
                break;
            } else {
                break;
            }
            MEM[v23] = (msg.data[v6] >> 224) + v6 - (v8 + uint8(msg.data[v6 + 4] >> 240) * 10) + 4;
            MEM[64] = v23 + ((msg.data[v6] >> 224) + v6 - (v8 + uint8(msg.data[v6 + 4] >> 240) * 10) + 4) + 32;
            CALLDATACOPY(v23 + 32, v8 + uint8(msg.data[v6 + 4] >> 240) * 10, (msg.data[v6] >> 224) + v6 - (v8 + uint8(msg.data[v6 + 4] >> 240) * 10) + 4);
            while (v8 < v8 + uint8(msg.data[v6 + 4] >> 240) * 10) {
                require(msg.data[v8] >> 248 < (data.word1 >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v24 = v25 = MEM[(msg.data[v8] >> 248 << 5) + (v2 + 96) + 32];
                if (0 == bool(msg.data[v8] & 0x8000000000000000000000000000000000000000000000000000)) {
                    v26 = v27 = 10;
                    MCOPY(v23 + (msg.data[v8] >> 176 & 0x3fffffff) + 32, v25 + (msg.data[v8] >> 208 & 0xfffff) + 32, msg.data[v8] >> 228 & 0xfffff);
                } else if (!(msg.data[v8] & 0x4000000000000000000000000000000000000000000000000000)) {
                    if (msg.data[v8] >> 228 & 0xfffff) {
                        v26 = v28 = 10;
                        v24 = v29 = v25 + (msg.data[v8] >> 228 & 0xfffff);
                        MEM[v29] = MEM[v25] - (msg.data[v8] >> 228 & 0xfffff);
                        MEM[(msg.data[v8] >> 243 & 0x1fe0) + (v2 + 96) + 32] = v29;
                    } else {
                        v26 = 10;
                    }
                    if (msg.data[v8] >> 208 & 0xfffff) {
                        MEM[v24] = MEM[v24] - (msg.data[v8] >> 208 & 0xfffff);
                        break;
                    } else {
                        break;
                    }
                } else {
                    v17 = MEM[32 + (v25 + (msg.data[v8] >> 208 & 0xfffff))] >> (msg.data[v8] >> 228 & 0xfffff);
                    v26 = v30 = 10;
                }
                v8 = v8 + v26;
            }
            if (0 == msg.data[v6 + 4] >> 254 < 2) {
                if (0 == (msg.data[v6 + 4] >> 254 == 2)) {
                    v31 = v10.staticcall(MEM[v17f7_0x3V0x138bV0x113ea + 32:v17f7_0x3V0x138bV0x113ea + 32 + MEM[v17f7_0x3V0x138bV0x113ea]], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v32 = v33 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v32 = v34 = new bytes[](RETURNDATASIZE());
                        require(!((v34 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v34 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v34)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v34.data, 0, RETURNDATASIZE());
                    }
                    v35 = v36 = bool(v31);
                } else {
                    v35 = v37 = v10.delegatecall(MEM[v17f7_0x3V0x138bV0x113ea + 32:v17f7_0x3V0x138bV0x113ea + 32 + MEM[v17f7_0x3V0x138bV0x113ea]], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v32 = v38 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v32 = v39 = new bytes[](RETURNDATASIZE());
                        require(!((v39 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v39.data, 0, RETURNDATASIZE());
                    }
                }
                v40 = v41 = bool(v35);
            } else {
                v40 = v10.call(MEM[v17f7_0x3V0x138bV0x113ea + 32:v17f7_0x3V0x138bV0x113ea + 32 + MEM[v17f7_0x3V0x138bV0x113ea]], MEM[0:0]).value(v17).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v32 = v42 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v32 = new bytes[](RETURNDATASIZE());
                    require(!((v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v32.data, 0, RETURNDATASIZE());
                }
            }
            v43 = !v40;
            if (v43) {
                v43 = v44 = !(msg.data[v6 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                break;
            } else {
                break;
            }
            if (v43) {
                require(!MEM[v32], v32 + 32, MEM[v32]);
                revert(FailedCall());
            } else {
                MEM[v4] = v32;
                v4 = v4 + 32;
                v6 = (msg.data[v6] >> 224) + v6 + 4;
            }
        }
    }
    if (amount0Delta <= 0) {
        require(0 != amount1Delta > 0, address(v1), amount0Delta, amount1Delta);
        v45 = v46 = MEM[64];
        v47 = msg.sender.token1().gas(msg.gas);
        require(v47, MEM[64], RETURNDATASIZE());
        v48 = v49 = 0x11502;
        v50 = v51 = uint160.max + 1;
        v52 = v53 = 0;
        if (v47) {
            v54 = v55 = 4945;
            if (32 <= RETURNDATASIZE()) {
                require(!((v46 + 32 > uint64.max) | (v46 + 32 < v46)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v46 + 32;
                v56 = v57 = v46 + 32;
            }
        }
    } else {
        v45 = v58 = MEM[64];
        v59 = msg.sender.token0().gas(msg.gas);
        require(v59, MEM[64], RETURNDATASIZE());
        v48 = v60 = 0x114ba;
        v50 = v61 = uint160.max + 1;
        v52 = v62 = 0;
        if (v59) {
            v54 = v63 = 4797;
            v64 = v65 = 32;
            if (32 > RETURNDATASIZE()) {
                // Unknown jump to Block 0x12c30x11c1B0x113ea. Refer to 3-address code (TAC);
            }
        }
    }
    if (v1 & v50) {
        0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v66);
    }
    v67 = new bytes[](68);
    MEM[v67.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v67 + 36] = msg.sender;
    MEM[v67 + 68] = v66;
    require(!((v67 + 128 > uint64.max) | (v67 + 128 < v67)), Panic(65)); // failed memory allocation (too much memory)
    v68 = v67.length;
    v69 = address(v52).transfer(msg.sender, v66).gas(msg.gas);
    require(v69, v67 + 128, RETURNDATASIZE());
    if (RETURNDATASIZE()) {
        v70 = v71 = 1 != MEM[0];
    } else {
        v70 = !(address(v52)).code.size;
    }
    require(!v70, SafeERC20FailedOperation(address(v52)));
    // Unknown jump to Block ['0x114baB0x113ea', '0x11502B0x113ea']. Refer to 3-address code (TAC);
    exit;
    // Unknown jump to Block 0x11415. Refer to 3-address code (TAC);
    require(!((v45 + (v64 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (v64 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v45 + (v64 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v56 = v72 = v45 + v64;
    require(v56 - v45 >= 32);
    v52 = v73 = MEM[v45];
    require(!(v73 - address(v73)));
    // Unknown jump to Block ['0x12bdB0x113ea', '0x1351B0x113ea']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1330B0x113ea. Refer to 3-address code (TAC);
    v64 = v74 = RETURNDATASIZE();
    // Unknown jump to Block 0x12ab0x11c1B0x113ea. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x125dB0x113ea. Refer to 3-address code (TAC);
}

function receive() public payable { 
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x1a4b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = msg.data[varg0];
    v1 = v2 = varg0 + 32;
    v3 = v4 = (v0 >> 243 & 0x1fe0) + varg0 + 32;
    v5 = v6 = uint256.max;
    if (v0 & 0x1000000000000000000000000000000000000000000000000) {
        v5 = v7 = msg.data[(v0 >> 243 & 0x1fe0) + varg0 + 36] >> uint8.max + 1 - (msg.data[v4] >> 221 & 0x7fffffff8);
        v3 = v8 = (msg.data[v4] >> 224) + ((v0 >> 243 & 0x1fe0) + varg0) + 32 + 4;
    }
    v9 = v10 = 0;
    if (v0 & 0x800000000000000000000000000000000000000000000000) {
        v9 = v11 = msg.data[v3 + 4] >> uint8.max + 1 - (msg.data[v3] >> 221 & 0x7fffffff8);
        v3 = v12 = (msg.data[v3] >> 224) + v3 + 4;
    }
    if (v0 & 0x400000000000000000000000000000000000000000000000) {
        require(block.number <= msg.data[v3 + 4] >> uint8.max + 1 - (msg.data[v3] >> 221 & 0x7fffffff8), block.number, msg.data[v3 + 4] >> uint8.max + 1 - (msg.data[v3] >> 221 & 0x7fffffff8));
        v3 = v13 = 4 + ((msg.data[v3] >> 224) + v3);
    }
    if (v0 & 0x200000000000000000000000000000000000000000000000) {
        require(block.number >= msg.data[v3 + 4] >> uint8.max + 1 - (msg.data[v3] >> 221 & 0x7fffffff8), block.number, msg.data[v3 + 4] >> uint8.max + 1 - (msg.data[v3] >> 221 & 0x7fffffff8));
        v3 = v14 = 4 + ((msg.data[v3] >> 224) + v3);
    }
    require(uint8(v0 >> 240) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = v15 = new uint256[](uint8(v0 >> 240));
    require(!((v15 + (32 + (uint8(v0 >> 240) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + (32 + (uint8(v0 >> 240) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
    require(uint8(v0 >> 240) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v15.data, msg.data.length, 32 + (uint8(v0 >> 240) << 5) - 32);
    require(v15.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[v15.data] = varg2;
    while (v1 < v3) {
        v16 = v17 = msg.data[v1];
        if (!(v17 & 0x800000000000000000000000000000000000000000000000)) {
            v3 = v18 = 32;
            v3 = v19 = 0x116ea;
            v20 = v21 = 0;
            v22 = v23 = 0;
            v3 = v24 = uint8(v17 >> 208);
            v3 = v25 = uint8(v17 >> 216);
            if (0 == bool(v17 & 0x100000000000000000000000000000000000000000)) {
                require(v24 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v26 = _SafeMul(MEM[(v24 << 5) + v3 + 32], v17 >> 192 & 0x3fff);
                v27 = v28 = v26 / 10000;
                v27 = v29 = 0;
                if (0 == v17 >> 161 & 0x7 < 4) {
                    if (v17 >> 161 & 0x7 >= 6) {
                        if (6 - (v17 >> 161 & 0x7)) {
                            v30 = v31 = 0;
                            v32 = new struct(2);
                            v32.word0 = 32;
                            v33 = v32.data;
                            v32.word1 = v28;
                            v34 = 0;
                            v35 = 0;
                            if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                v34 = v36 = msg.data[v21] >> 96;
                                v35 = v37 = 0x3c16(v36);
                                v20 = v38 = v21 + 20;
                                v22 = v39 = v23 - 20;
                            }
                            v40 = 0;
                            if (bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                v40 = v41 = address(v17);
                                v30 = v42 = 0x3c16(v41);
                            }
                            MEM[64] = MEM[64] + ((msg.data[v20] >> 248) + 1 << 5) + 32;
                            MEM[MEM[64] + 32] = v32;
                            v43 = v44 = MEM[64] + 64;
                            v45 = v46 = v20 + 1;
                            while (v45 < v20 + v22) {
                                v47 = v48 = v45 + 6;
                                if (0 == (msg.data[v45 + 4] >> 248 & 0x1f == 31)) {
                                    if (msg.data[v45 + 4] >> 248 & 0x1f >= 3) {
                                        if ((msg.data[v45 + 4] >> 248 & 0x1f) - 3) {
                                            if (4 - (msg.data[v45 + 4] >> 248 & 0x1f)) {
                                                v49 = v50 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                            } else {
                                                v49 = v51 = 0x4444c5dc75cb358380d2e3de08a90;
                                            }
                                        } else {
                                            v49 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                        }
                                    } else if (msg.data[v45 + 4] >> 248 & 0x1f) {
                                        if (1 - (msg.data[v45 + 4] >> 248 & 0x1f)) {
                                            v49 = v52 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                        } else {
                                            v49 = v53 = msg.sender;
                                        }
                                    } else {
                                        v49 = v54 = this;
                                    }
                                } else {
                                    v49 = v55 = msg.data[v48] >> 96;
                                    v47 = v45 + 26;
                                }
                                v56 = v57 = 0;
                                if (msg.data[v45 + 4] >> 254 == 1) {
                                    v56 = v58 = msg.data[v47] >> 96;
                                    v47 = v59 = v47 + 20;
                                    v60 = this.balance;
                                    v61 = this.balance;
                                    require(v60 >= v58, InsufficientBalance(v61, v58));
                                }
                                v62 = v63 = MEM[64];
                                MEM[v63] = (msg.data[v45] >> 224) + v45 - (v47 + uint8(msg.data[v45 + 4] >> 240) * 10) + 4;
                                MEM[64] = v63 + ((msg.data[v45] >> 224) + v45 - (v47 + uint8(msg.data[v45 + 4] >> 240) * 10) + 4) + 32;
                                CALLDATACOPY(v63 + 32, v47 + uint8(msg.data[v45 + 4] >> 240) * 10, (msg.data[v45] >> 224) + v45 - (v47 + uint8(msg.data[v45 + 4] >> 240) * 10) + 4);
                                while (v47 < v47 + uint8(msg.data[v45 + 4] >> 240) * 10) {
                                    require(msg.data[v47] >> 248 < (msg.data[v20] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v62 = v64 = MEM[(msg.data[v47] >> 248 << 5) + MEM[64] + 32];
                                    if (0 == bool(msg.data[v47] & 0x8000000000000000000000000000000000000000000000000000)) {
                                        v65 = v66 = 10;
                                        MCOPY(v63 + (msg.data[v47] >> 176 & 0x3fffffff) + 32, v64 + (msg.data[v47] >> 208 & 0xfffff) + 32, msg.data[v47] >> 228 & 0xfffff);
                                    } else if (!(msg.data[v47] & 0x4000000000000000000000000000000000000000000000000000)) {
                                        if (msg.data[v47] >> 228 & 0xfffff) {
                                            v65 = v67 = 10;
                                            v62 = v68 = v64 + (msg.data[v47] >> 228 & 0xfffff);
                                            MEM[v68] = MEM[v64] - (msg.data[v47] >> 228 & 0xfffff);
                                            MEM[(msg.data[v47] >> 243 & 0x1fe0) + MEM[64] + 32] = v68;
                                        } else {
                                            v65 = 10;
                                        }
                                        if (msg.data[v47] >> 208 & 0xfffff) {
                                            MEM[v62] = MEM[v62] - (msg.data[v47] >> 208 & 0xfffff);
                                        }
                                    } else {
                                        v56 = MEM[32 + (v64 + (msg.data[v47] >> 208 & 0xfffff))] >> (msg.data[v47] >> 228 & 0xfffff);
                                        v65 = v69 = 10;
                                    }
                                    v47 = v47 + v65;
                                }
                                if (0 == msg.data[v45 + 4] >> 254 < 2) {
                                    if (0 == (msg.data[v45 + 4] >> 254 == 2)) {
                                        v70 = v49.staticcall(MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d + 32:v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d]], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v71 = v72 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v71 = v73 = new bytes[](RETURNDATASIZE());
                                            require(!((v73 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v73 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v73)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v73.data, 0, RETURNDATASIZE());
                                        }
                                        v74 = v75 = bool(v70);
                                    } else {
                                        v74 = v76 = v49.delegatecall(MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d + 32:v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d]], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v71 = v77 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v71 = v78 = new bytes[](RETURNDATASIZE());
                                            require(!((v78 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v78 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v78)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v78.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v79 = v80 = bool(v74);
                                } else {
                                    v79 = v49.call(MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d + 32:v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1e4d]], MEM[0:0]).value(v56).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v71 = v81 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v71 = new bytes[](RETURNDATASIZE());
                                        require(!((v71 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v71 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v71)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v71.data, 0, RETURNDATASIZE());
                                    }
                                }
                                v82 = !v79;
                                if (v82) {
                                    v82 = v83 = !(msg.data[v45 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                }
                                if (v82) {
                                    require(!MEM[v71], v71 + 32, MEM[v71]);
                                    revert(FailedCall());
                                } else {
                                    MEM[v43] = v71;
                                    v43 = v43 + 32;
                                    v45 = (msg.data[v45] >> 224) + v45 + 4;
                                }
                            }
                            if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                v84 = 0x3c16(v34);
                                if (v35 <= v84) {
                                    v85 = v86 = 0;
                                } else {
                                    v85 = v87 = v35 - v84;
                                }
                                require(v85 <= v28, v85, v28);
                            }
                            if (0 == bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                require(uint8(v17 >> 232) < (msg.data[v20] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v27 = v88 = MEM[MEM[(uint8(v17 >> 232) << 5) + MEM[64] + 32] + 32];
                            } else {
                                v89 = 0x3c16(v40);
                                require(v89 >= v30, InsufficientAmountOut(v89, v30));
                                v27 = v90 = v89 - v30;
                            }
                        } else {
                            MEM[64] = MEM[64] + v23 + 69;
                            CALLDATACOPY(MEM[64] + 69, v21, v23);
                            v91 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v28, uint8(v17 >> 232)).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v92 = v93 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v92 = new bytes[](RETURNDATASIZE());
                                require(!((v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v92)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v92.data, 0, RETURNDATASIZE());
                            }
                            if (!v91) {
                                require(!MEM[v92], v92 + 32, MEM[v92]);
                                revert(FailedCall());
                            } else {
                                v27 = v94 = MEM[32 + v92];
                            }
                        }
                    } else {
                        if (4 - (v17 >> 161 & 0x7)) {
                            if (0 == bool(v17 & 0x10000000000000000000000000000000000000000)) {
                                v95 = v96 = MEM[64];
                                require(!(msg.data[v21 + 96] - address(msg.data[v21 + 96])));
                                MEM[v96 + 4 + 128] = msg.data[v21 + 128];
                                MEM[v96 + 4 + 160] = msg.data[v21 + 160];
                                MEM[v96 + 4 + 192] = msg.data[v21 + 192];
                                require(msg.data[v21 + 224] < 2);
                                MEM[v96 + 4 + 224] = msg.data[v21 + 224];
                                MEM[v96 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v21];
                                MEM[v96 + 292] = 384;
                                MEM[v96 + 388] = v23 - 288;
                                CALLDATACOPY(v96 + 388 + 32, v21 + 288, v23 - 288);
                                MEM[v96 + 388 + (v23 - 288) + 32] = 0;
                                MEM[v96 + 324] = address(v17);
                                MEM[v96 + 356] = 0;
                                v97 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v21], msg.data[v21 + 32], msg.data[v21 + 64], address(msg.data[v21 + 96])).gas(msg.gas);
                                if (!v97) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v27 = v98 = 0;
                                    if (!v97) {
                                    }
                                }
                            } else {
                                v95 = v99 = MEM[64];
                                require(!(msg.data[v21 + 96] - address(msg.data[v21 + 96])));
                                MEM[v99 + 4 + 128] = msg.data[v21 + 128];
                                MEM[v99 + 4 + 160] = msg.data[v21 + 160];
                                MEM[v99 + 4 + 192] = msg.data[v21 + 192];
                                require(msg.data[v21 + 224] < 2);
                                MEM[v99 + 4 + 224] = msg.data[v21 + 224];
                                MEM[v99 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v21];
                                MEM[v99 + 292] = 384;
                                MEM[v99 + 388] = v23 - 288;
                                CALLDATACOPY(v99 + 388 + 32, v21 + 288, v23 - 288);
                                MEM[v99 + 388 + (v23 - 288) + 32] = 0;
                                MEM[v99 + 324] = address(v17);
                                MEM[v99 + 356] = v28;
                                v100 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v21], msg.data[v21 + 32], msg.data[v21 + 64], address(msg.data[v21 + 96])).gas(msg.gas);
                                if (!v100) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v27 = v101 = 0;
                                    if (!v100) {
                                    }
                                }
                            }
                        } else if (!(0x10000000000000000000000000000000000000000 & v17)) {
                            v95 = v102 = MEM[64];
                            v103 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(v28, address(v17), 0).gas(msg.gas);
                            if (!v103) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v27 = v104 = 0;
                                if (!v103) {
                                }
                            }
                        } else {
                            v95 = v105 = MEM[64];
                            v106 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v17), v28, 0).gas(msg.gas);
                            if (!v106) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v27 = v107 = 0;
                                if (!v106) {
                                }
                            }
                        }
                        v108 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v108 = v109 = RETURNDATASIZE();
                        }
                        require(!((v95 + (v108 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v95 + (v108 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v95)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v95 + (v108 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v95 + v108 - v95 >= 32);
                        v27 = v110 = MEM[v95];
                    }
                } else if (v17 >> 161 & 0x7 >= 2) {
                    if (2 - (v17 >> 161 & 0x7)) {
                        CALLDATACOPY(MEM[64] + 65, v21, v23);
                        MEM[MEM[64] + 33] = uint8(v17 >> 232);
                        MEM[MEM[64] + 32] = v28;
                        v111 = new uint256[](33 + v23);
                        MCOPY(v111.data, MEM[64] + 32, 33 + v23);
                        MEM[MEM[64] + 4 + (33 + v23) + 64] = 0;
                        v112 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, v111).gas(msg.gas);
                        if (!v112) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v113 = v114 = 0;
                            if (v112) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                require(v115.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v113 = v116 = new bytes[](v115.length);
                                require(!((v116 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v115.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v116 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v115.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v116)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v115.length + 32 <= MEM[64] + RETURNDATASIZE());
                                MCOPY(v116.data, v115.data, v115.length);
                                v116[v115.length] = 0;
                            }
                            v27 = v117 = MEM[v113 + 32];
                        }
                    } else {
                        v118 = v119 = address(v17);
                        if (!uint8(v17 >> 224)) {
                            v120 = this;
                        } else {
                            v120 = v121 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                        }
                        if (bool(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v28);
                            }
                        } else {
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                v118 = v122 = v119 | 0x10000000000000000000000000000000000000000;
                                if (!bool(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v118 = v119 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v118;
                        }
                        if (!(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                            v123, /* uint112 */ v27 = v119.swapInWithCallback(bool(v17 & 0x10000000000000000000000000000000000000000), v28, 0, address(v120)).gas(msg.gas);
                            if (!v123) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v27 = v124 = 0;
                                if (v123) {
                                    v125 = v126 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v125 = v127 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v125 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v125 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v125 - MEM[64] >= 32);
                                }
                            }
                        } else {
                            v128, /* uint112 */ v27 = v119.swapIn(bool(v17 & 0x10000000000000000000000000000000000000000), v28, 0, address(v120)).value(v28).gas(msg.gas);
                            if (!v128) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v27 = v129 = 0;
                                if (v128) {
                                    v130 = v131 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v130 = v132 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v130 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v130 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v130 - MEM[64] >= 32);
                                }
                            }
                        }
                        if (uint8(v17 >> 232)) {
                            require(uint8(v17 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                            v133 = _SafeDiv(v27, 10 ** uint8(v17 >> 232));
                            v27 = v134 = _SafeMul(v133, 10 ** uint8(v17 >> 232));
                        }
                        if (v17 & 0x200000000000000000000000000000000000000000) {
                            if (!(0x800000000000000000000000000000000000000000 & v17)) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v27);
                            } else {
                                0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v27);
                            }
                        }
                    }
                } else if (v17 >> 161 & 0x7) {
                    v135 = v136 = address(v17);
                    v137, /* uint112 */ v27, /* uint112 */ v27, v138 = v136.getReserves().gas(msg.gas);
                    if (!v137) {
                        RETURNDATACOPY(MEM[64], v29, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v137) {
                            v139 = v140 = 96;
                            if (96 > RETURNDATASIZE()) {
                                v139 = v141 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v139 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v139 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v139 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v139 - MEM[64] >= 96, v29, v29);
                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                            require(!(v27 - uint112(v27)));
                            require(!(uint32(v138) - v138), v29, v29);
                        }
                        v142 = v143 = uint112(v27);
                        v142 = v144 = uint112(v27);
                        if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                        }
                        if (!v29) {
                            require(10 ** 6 - (v17 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v145 = _SafeMul(v28, 10 ** 6 - (v17 >> 168 & 0xfffff));
                            v146 = _SafeMul(v145, v142);
                            require(!v142 | (10 ** 6 == v142 * 10 ** 6 / v142), Panic(17)); // arithmetic overflow or underflow
                            v147 = _SafeAdd(v142 * 10 ** 6, v145);
                            v27 = v148 = _SafeDiv(v146, v147);
                        } else {
                            v149 = _SafeMul(v142, v28);
                            require(!v149 | (10 ** 6 == v149 * 10 ** 6 / v149), Panic(17)); // arithmetic overflow or underflow
                            v150 = _SafeSub(v142, v28);
                            require(10 ** 6 - (v17 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v151 = _SafeMul(v150, 10 ** 6 - (v17 >> 168 & 0xfffff));
                            v152 = _SafeDiv(v149 * 10 ** 6, v151);
                            v27 = v153 = v152 + 1;
                            require(v152 <= v153, Panic(17)); // arithmetic overflow or underflow
                        }
                        if (v17 & 0x400000000000000000000000000000000000000000) {
                            0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v27);
                        }
                        if (!(v17 & 0x8000000000000000000000000000000000000000000000000000)) {
                            if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                v154 = v155 = MEM[64];
                                v156 = v136.token1().gas(msg.gas);
                                if (!v156) {
                                    RETURNDATACOPY(MEM[64], v29, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v157 = v158 = 0x11833;
                                    if (!v156) {
                                    }
                                }
                            } else {
                                v154 = v159 = MEM[64];
                                v160 = v136.token0().gas(msg.gas);
                                if (!v160) {
                                    RETURNDATACOPY(MEM[64], v29, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v157 = v161 = 0x117e7;
                                    if (v160) {
                                        // Unknown jump to Block 0x26300x2126B0x1e3fB0x1e4d. Refer to 3-address code (TAC);
                                    }
                                }
                            }
                            v162 = new bytes[](68);
                            MEM[v162.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            MEM[v162 + 36] = address(v136);
                            MEM[v162 + 68] = v27;
                            require(!((v162 + 128 > uint64.max) | (v162 + 128 < v162)), Panic(65)); // failed memory allocation (too much memory)
                            v163 = v162.length;
                            v164 = address(v27).transfer(address(v136), v27).gas(msg.gas);
                            if (!v164) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (RETURNDATASIZE()) {
                                    v165 = v166 = 1 != MEM[0];
                                } else {
                                    v165 = !(address(v27)).code.size;
                                }
                                require(!v165, SafeERC20FailedOperation(address(v27)));
                                // Unknown jump to Block ['0x117e7B0x1e3fB0x1e4d', '0x11833B0x1e3fB0x1e4d']. Refer to 3-address code (TAC);
                            }
                            if (32 > RETURNDATASIZE()) {
                                require(!((v154 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v154 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v154)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v154 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v167 = v168 = v154 + RETURNDATASIZE();
                            } else {
                                require(!((v154 + 32 > uint64.max) | (v154 + 32 < v154)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v154 + 32;
                                v167 = v169 = v154 + 32;
                            }
                            require(v167 - v154 >= 32);
                            v27 = v170 = MEM[v154];
                            require(!(v170 - address(v170)));
                        }
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            if (!uint8(v17 >> 224)) {
                                v171 = v172 = this;
                                // Unknown jump to Block 0x24d4B0x1e3fB0x1e4d. Refer to 3-address code (TAC);
                            } else {
                                v171 = v173 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                                // Unknown jump to Block 0x24d4B0x1e3fB0x1e4d. Refer to 3-address code (TAC);
                            }
                        } else if (!uint8(v17 >> 224)) {
                            v171 = this;
                            // Unknown jump to Block 0x24d4B0x1e3fB0x1e4d. Refer to 3-address code (TAC);
                        } else {
                            v171 = v174 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                        }
                        require(v135.code.size, v27, v27);
                        v175 = new uint256[](v22);
                        CALLDATACOPY(v175.data, v20, v22);
                        MEM[v175.data] = 0;
                        v176 = v135.swap(v27, v27, address(v171), v175).value(v27).gas(msg.gas);
                        if (!v176) {
                            RETURNDATACOPY(MEM[64], v27, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v176) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= v27, v27, v27);
                            }
                            if (0x200000000000000000000000000000000000000000 & v16) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v27);
                            }
                        }
                    }
                } else {
                    v177 = v178 = 64;
                    v179 = v180 = address(v17);
                    v181 = v182 = v17 & 0x10000000000000000000000000000000000000000;
                    if (v17 & 0x400000000000000000000000000000000000000000) {
                        v179 = v183 = v180 | 0x10000000000000000000000000000000000000000;
                    }
                    _allow = v179;
                    if (!uint8(v17 >> 224)) {
                        v184 = this;
                    } else {
                        v184 = v185 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                    }
                    if (!v29) {
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            v186 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v186 = v187 = 0x1000276a4;
                        }
                        v188 = MEM[v178];
                        MEM[v188] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v188 + 4] = address(v184);
                        MEM[v188 + 36] = v182;
                        MEM[v188 + 68] = v28;
                        MEM[v188 + 100] = address(v186);
                        MEM[v188 + 132] = 160;
                        MEM[v188 + 164] = v23;
                        CALLDATACOPY(v188 + 164 + 32, v21, v23);
                        MEM[v188 + 164 + v23 + 32] = 0;
                        v189 = (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v188 + 164) + 32;
                        // Unknown jump to Block 0x2235B0x1e3fB0x1e4d. Refer to 3-address code (TAC);
                    } else {
                        v190 = 0x1128(v28);
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            v191 = v192 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v191 = v193 = 0x1000276a4;
                        }
                        v188 = v194 = MEM[v178];
                        MEM[v194] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v194 + 4] = address(v184);
                        MEM[v194 + 36] = v182;
                        MEM[v194 + 68] = v190;
                        MEM[v194 + 100] = address(v191);
                        MEM[v194 + 132] = 160;
                        MEM[v194 + 164] = v23;
                        CALLDATACOPY(v194 + 164 + 32, v21, v23);
                        MEM[v194 + 164 + v23 + 32] = 0;
                        v189 = v195 = (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v194 + 164) + 32;
                    }
                    v196 = v179.call(MEM[v21d20x21e3V0x2355V0x1e3fV0x1e4d:v21d20x21e3V0x2355V0x1e3fV0x1e4d + v21d20x13f2V0x2355V0x1e3fV0x1e4d - v21d20x21e3V0x2355V0x1e3fV0x1e4d], MEM[v21d20x21e3V0x2355V0x1e3fV0x1e4d:v21d20x21e3V0x2355V0x1e3fV0x1e4d + v2235_0x6V0x1e3fV0x1e4d]).value(v27).gas(msg.gas);
                    if (!v196) {
                        RETURNDATACOPY(MEM[64], v29, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v196) {
                            v197 = v198 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v197 = v199 = RETURNDATASIZE();
                            }
                            require(!((v188 + (v197 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v188 + (v197 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v188)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v188 + (v197 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v188 + v197 - v188 >= 64, v29, v29);
                            v27 = v200 = MEM[v188];
                            v27 = v201 = MEM[v188 + 32];
                        }
                        if (!v29) {
                            if (v181) {
                            }
                            require(v27 != int256.min, Panic(17)); // arithmetic overflow or underflow
                            v27 = v202 = 0 - v27;
                        } else if (v181) {
                        }
                        if (v17 & 0x200000000000000000000000000000000000000000) {
                            if (!v29) {
                                0x2283(v27);
                            } else {
                                0x2283(v28);
                            }
                        }
                    }
                }
                require(v25 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v203 = _SafeAdd(MEM[(v25 << 5) + v3 + 32], v27);
                require(v25 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[(v25 << 5) + v3 + 32] = v203;
                require(v24 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v28 <= MEM[(v24 << 5) + v3 + 32], v28, MEM[(v24 << 5) + v3 + 32]);
                v204 = v205 = MEM[(v24 << 5) + v3 + 32] - v28;
            } else {
                v3 = v206 = 0x11591;
                if (!(v17 & 0x400000000000000000000000000000000000000000000000)) {
                    varg3 = v207 = msg.data[v21];
                    v208 = v209 = v21 + v18;
                    v210 = v211 = v23 - 32;
                    v1 = v212 = 0;
                    if (0 == v17 >> 161 & 0x7 < 4) {
                        if (v17 >> 161 & 0x7 >= 6) {
                            if (6 - (v17 >> 161 & 0x7)) {
                                v213 = v214 = 0;
                                v215 = new struct(2);
                                v215.word0 = 32;
                                v216 = v215.data;
                                v215.word1 = v207;
                                v217 = 0;
                                v218 = 0;
                                if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                    v217 = v219 = msg.data[v209] >> 96;
                                    v218 = v220 = 0x3c16(v219);
                                    v208 = v209 + 20;
                                    v210 = v211 - 20;
                                }
                                v221 = 0;
                                if (bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                    v221 = v222 = address(v17);
                                    v213 = v223 = 0x3c16(v222);
                                }
                                MEM[64] = MEM[64] + ((msg.data[v208] >> 248) + 1 << 5) + 32;
                                MEM[MEM[64] + 32] = v215;
                                v224 = v225 = MEM[64] + 64;
                                v226 = v227 = v208 + 1;
                                while (v226 < v208 + v210) {
                                    v228 = v229 = v226 + 6;
                                    if (0 == (msg.data[v226 + 4] >> 248 & 0x1f == 31)) {
                                        if (msg.data[v226 + 4] >> 248 & 0x1f >= 3) {
                                            if ((msg.data[v226 + 4] >> 248 & 0x1f) - 3) {
                                                if (4 - (msg.data[v226 + 4] >> 248 & 0x1f)) {
                                                    v230 = v231 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                } else {
                                                    v230 = v232 = 0x4444c5dc75cb358380d2e3de08a90;
                                                }
                                            } else {
                                                v230 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                            }
                                        } else if (msg.data[v226 + 4] >> 248 & 0x1f) {
                                            if (1 - (msg.data[v226 + 4] >> 248 & 0x1f)) {
                                                v230 = v233 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else {
                                                v230 = v234 = msg.sender;
                                            }
                                        } else {
                                            v230 = v235 = this;
                                        }
                                    } else {
                                        v230 = v236 = msg.data[v229] >> 96;
                                        v228 = v226 + 26;
                                    }
                                    v237 = v238 = 0;
                                    if (msg.data[v226 + 4] >> 254 == 1) {
                                        v237 = v239 = msg.data[v228] >> 96;
                                        v228 = v240 = v228 + 20;
                                        v241 = this.balance;
                                        v242 = this.balance;
                                        require(v241 >= v239, InsufficientBalance(v242, v239));
                                    }
                                    v243 = v244 = MEM[64];
                                    MEM[v244] = (msg.data[v226] >> 224) + v226 - (v228 + uint8(msg.data[v226 + 4] >> 240) * 10) + 4;
                                    MEM[64] = v244 + ((msg.data[v226] >> 224) + v226 - (v228 + uint8(msg.data[v226 + 4] >> 240) * 10) + 4) + 32;
                                    CALLDATACOPY(v244 + 32, v228 + uint8(msg.data[v226 + 4] >> 240) * 10, (msg.data[v226] >> 224) + v226 - (v228 + uint8(msg.data[v226 + 4] >> 240) * 10) + 4);
                                    while (v228 < v228 + uint8(msg.data[v226 + 4] >> 240) * 10) {
                                        require(msg.data[v228] >> 248 < (msg.data[v208] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v243 = v245 = MEM[(msg.data[v228] >> 248 << 5) + MEM[64] + 32];
                                        if (0 == bool(msg.data[v228] & 0x8000000000000000000000000000000000000000000000000000)) {
                                            v246 = v247 = 10;
                                            MCOPY(v244 + (msg.data[v228] >> 176 & 0x3fffffff) + 32, v245 + (msg.data[v228] >> 208 & 0xfffff) + 32, msg.data[v228] >> 228 & 0xfffff);
                                        } else if (!(msg.data[v228] & 0x4000000000000000000000000000000000000000000000000000)) {
                                            if (msg.data[v228] >> 228 & 0xfffff) {
                                                v246 = v248 = 10;
                                                v243 = v249 = v245 + (msg.data[v228] >> 228 & 0xfffff);
                                                MEM[v249] = MEM[v245] - (msg.data[v228] >> 228 & 0xfffff);
                                                MEM[(msg.data[v228] >> 243 & 0x1fe0) + MEM[64] + 32] = v249;
                                            } else {
                                                v246 = 10;
                                            }
                                            if (msg.data[v228] >> 208 & 0xfffff) {
                                                MEM[v243] = MEM[v243] - (msg.data[v228] >> 208 & 0xfffff);
                                            }
                                        } else {
                                            v237 = MEM[32 + (v245 + (msg.data[v228] >> 208 & 0xfffff))] >> (msg.data[v228] >> 228 & 0xfffff);
                                            v246 = v250 = 10;
                                        }
                                        v228 = v228 + v246;
                                    }
                                    if (0 == msg.data[v226 + 4] >> 254 < 2) {
                                        if (0 == (msg.data[v226 + 4] >> 254 == 2)) {
                                            v251 = v230.staticcall(MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d + 32:v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v252 = v253 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v252 = v254 = new bytes[](RETURNDATASIZE());
                                                require(!((v254 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v254 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v254)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v254.data, 0, RETURNDATASIZE());
                                            }
                                            v255 = v256 = bool(v251);
                                        } else {
                                            v255 = v257 = v230.delegatecall(MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d + 32:v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v252 = v258 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v252 = v259 = new bytes[](RETURNDATASIZE());
                                                require(!((v259 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v259 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v259)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v259.data, 0, RETURNDATASIZE());
                                            }
                                        }
                                        v260 = v261 = bool(v255);
                                    } else {
                                        v260 = v230.call(MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d + 32:v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1e4d]], MEM[0:0]).value(v237).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v252 = v262 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v252 = new bytes[](RETURNDATASIZE());
                                            require(!((v252 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v252 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v252)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v252.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v263 = !v260;
                                    if (v263) {
                                        v263 = v264 = !(msg.data[v226 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (v263) {
                                        require(!MEM[v252], v252 + 32, MEM[v252]);
                                        revert(FailedCall());
                                    } else {
                                        MEM[v224] = v252;
                                        v224 = v224 + 32;
                                        v226 = (msg.data[v226] >> 224) + v226 + 4;
                                    }
                                }
                                if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                    v265 = 0x3c16(v217);
                                    if (v218 <= v265) {
                                        v266 = v267 = 0;
                                    } else {
                                        v266 = v268 = v218 - v265;
                                    }
                                    require(v266 <= v207, v266, v207);
                                }
                                if (0 == bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                    require(uint8(v17 >> 232) < (msg.data[v208] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v1 = v269 = MEM[MEM[(uint8(v17 >> 232) << 5) + MEM[64] + 32] + 32];
                                } else {
                                    v270 = 0x3c16(v221);
                                    require(v270 >= v213, InsufficientAmountOut(v270, v213));
                                    v1 = v271 = v270 - v213;
                                }
                            } else {
                                MEM[64] = MEM[64] + v211 + 69;
                                CALLDATACOPY(MEM[64] + 69, v209, v211);
                                MEM[MEM[64] + 37] = uint8(v17 >> 232);
                                v272 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v207).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v273 = v274 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v273 = new bytes[](RETURNDATASIZE());
                                    require(!((v273 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v273 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v273)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v273.data, 0, RETURNDATASIZE());
                                }
                                if (!v272) {
                                    require(!MEM[v273], v273 + 32, MEM[v273]);
                                    revert(FailedCall());
                                } else {
                                    v1 = v275 = MEM[32 + v273];
                                }
                            }
                        } else {
                            if (4 - (v17 >> 161 & 0x7)) {
                                if (0 == bool(v17 & 0x10000000000000000000000000000000000000000)) {
                                    v276 = v277 = MEM[64];
                                    require(!(msg.data[v209 + 96] - address(msg.data[v209 + 96])));
                                    MEM[v277 + 4 + 96] = address(msg.data[v209 + 96]);
                                    MEM[v277 + 4 + 128] = msg.data[v209 + 128];
                                    MEM[v277 + 4 + 160] = msg.data[v209 + 160];
                                    MEM[v277 + 4 + 192] = msg.data[v209 + 192];
                                    require(msg.data[v209 + 224] < 2);
                                    MEM[v277 + 4 + 224] = msg.data[v209 + 224];
                                    MEM[v277 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v209];
                                    MEM[v277 + 292] = 384;
                                    MEM[v277 + 388] = v211 - 288;
                                    CALLDATACOPY(v277 + 388 + 32, v209 + 288, v211 - 288);
                                    MEM[v277 + 388 + (v211 - 288) + 32] = 0;
                                    MEM[v277 + 324] = address(v17);
                                    MEM[v277 + 356] = 0;
                                    v278 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v209], msg.data[v209 + 32], msg.data[v209 + 64]).gas(msg.gas);
                                    if (!v278) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v279 = 0;
                                        if (!v278) {
                                        }
                                    }
                                } else {
                                    v276 = v280 = MEM[64];
                                    require(!(msg.data[v209 + 96] - address(msg.data[v209 + 96])));
                                    MEM[v280 + 4 + 96] = address(msg.data[v209 + 96]);
                                    MEM[v280 + 4 + 128] = msg.data[v209 + 128];
                                    MEM[v280 + 4 + 160] = msg.data[v209 + 160];
                                    MEM[v280 + 4 + 192] = msg.data[v209 + 192];
                                    require(msg.data[v209 + 224] < 2);
                                    MEM[v280 + 4 + 224] = msg.data[v209 + 224];
                                    MEM[v280 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v209];
                                    MEM[v280 + 292] = 384;
                                    MEM[v280 + 388] = v211 - 288;
                                    CALLDATACOPY(v280 + 388 + 32, v209 + 288, v211 - 288);
                                    MEM[v280 + 388 + (v211 - 288) + 32] = 0;
                                    MEM[v280 + 324] = address(v17);
                                    MEM[v280 + 356] = v207;
                                    v281 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v209], msg.data[v209 + 32], msg.data[v209 + 64]).gas(msg.gas);
                                    if (!v281) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v282 = 0;
                                        if (!v281) {
                                        }
                                    }
                                }
                            } else if (!(0x10000000000000000000000000000000000000000 & v17)) {
                                v276 = v283 = MEM[64];
                                v284 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(v207, address(v17), 0).gas(msg.gas);
                                if (!v284) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v285 = 0;
                                    if (!v284) {
                                    }
                                }
                            } else {
                                v276 = v286 = MEM[64];
                                v287 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v17), v207, 0).gas(msg.gas);
                                if (!v287) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v288 = 0;
                                    if (!v287) {
                                    }
                                }
                            }
                            v289 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v289 = v290 = RETURNDATASIZE();
                            }
                            require(!((v276 + (v289 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v276 + (v289 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v276)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v276 + (v289 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v276 + v289 - v276 >= 32);
                            v1 = v291 = MEM[v276];
                        }
                    } else if (v17 >> 161 & 0x7 >= 2) {
                        if (2 - (v17 >> 161 & 0x7)) {
                            CALLDATACOPY(MEM[64] + 65, v209, v211);
                            MEM[MEM[64] + 33] = uint8(v17 >> 232);
                            MEM[MEM[64] + 32] = v207;
                            v292 = new uint256[](33 + v211);
                            MCOPY(v292.data, MEM[64] + 32, 33 + v211);
                            MEM[MEM[64] + 4 + (33 + v211) + 64] = 0;
                            v293 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, v292).gas(msg.gas);
                            if (!v293) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v294 = v295 = 0;
                                if (v293) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                    require(v296.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v294 = v297 = new bytes[](v296.length);
                                    require(!((v297 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v296.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v297 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v296.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v297)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v296.length + 32 <= MEM[64] + RETURNDATASIZE());
                                    MCOPY(v297.data, v296.data, v296.length);
                                    v297[v296.length] = 0;
                                }
                                v1 = v298 = MEM[v294 + 32];
                            }
                        } else {
                            v299 = v300 = address(v17);
                            if (!uint8(v17 >> 224)) {
                                v301 = this;
                            } else {
                                v301 = v302 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                            }
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                v299 = v303 = v300 | 0x10000000000000000000000000000000000000000;
                                if (!(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v299 = v300 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v299;
                            v304, v1 = v300.swapOutWithCallback(bool(v17 & 0x10000000000000000000000000000000000000000), v207, uint256.max, address(v301)).gas(msg.gas);
                            if (!v304) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v1 = v305 = 0;
                                if (v304) {
                                    v306 = v307 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v306 = v308 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v306 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v306 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v306 - MEM[64] >= 32);
                                }
                                if (uint8(v17 >> 232)) {
                                    require(uint8(v17 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                                    v309 = _SafeDiv(v1, 10 ** uint8(v17 >> 232));
                                    v1 = v310 = _SafeMul(v309, 10 ** uint8(v17 >> 232));
                                }
                                if (v17 & 0x200000000000000000000000000000000000000000) {
                                    if (!(0x800000000000000000000000000000000000000000 & v17)) {
                                        0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v207);
                                    } else {
                                        0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v207);
                                    }
                                }
                            }
                        }
                    } else if (v17 >> 161 & 0x7) {
                        v311 = v312 = address(v17);
                        v313, /* uint112 */ v314, /* uint112 */ v315, v316 = v312.getReserves().gas(msg.gas);
                        if (!v313) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v314 = v317 = 0;
                            v315 = v318 = 0;
                            if (v313) {
                                v319 = v320 = 96;
                                if (96 > RETURNDATASIZE()) {
                                    v319 = v321 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v319 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v319 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v319 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v319 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v315 - uint112(v315)));
                                require(!(uint32(v316) - v316));
                            }
                            v322 = v323 = uint112(v315);
                            v322 = v324 = uint112(v314);
                            if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            }
                            v325 = _SafeMul(v322, v207);
                            require(!v325 | (10 ** 6 == v325 * 10 ** 6 / v325), Panic(17)); // arithmetic overflow or underflow
                            v326 = _SafeSub(v322, v207);
                            require(10 ** 6 - (v17 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v327 = _SafeMul(v326, 10 ** 6 - (v17 >> 168 & 0xfffff));
                            v328 = _SafeDiv(v325 * 10 ** 6, v327);
                            v1 = v329 = v328 + 1;
                            require(v328 <= v329, Panic(17)); // arithmetic overflow or underflow
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v329);
                            }
                            if (!(v17 & 0x8000000000000000000000000000000000000000000000000000)) {
                                if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                    v330 = v331 = MEM[64];
                                    v332 = v312.token1().gas(msg.gas);
                                    if (!v332) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v333 = v334 = 0x11950;
                                        v335 = v336 = 0;
                                        if (!v332) {
                                        }
                                    }
                                } else {
                                    v330 = v337 = MEM[64];
                                    v338 = v312.token0().gas(msg.gas);
                                    if (!v338) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v333 = v339 = 0x1192c;
                                        v335 = v340 = 0;
                                        if (!v338) {
                                        }
                                    }
                                }
                                if (32 > RETURNDATASIZE()) {
                                    require(!((v330 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v330 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v330)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v330 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v341 = v342 = v330 + RETURNDATASIZE();
                                } else {
                                    require(!((v330 + 32 > uint64.max) | (v330 + 32 < v330)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v330 + 32;
                                    v341 = v343 = v330 + 32;
                                }
                                require(v341 - v330 >= 32);
                                v335 = v344 = MEM[v330];
                                require(!(v344 - address(v344)));
                                v345 = new bytes[](68);
                                MEM[v345.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v345 + 36] = address(v312);
                                MEM[v345 + 68] = v329;
                                require(!((v345 + 128 > uint64.max) | (v345 + 128 < v345)), Panic(65)); // failed memory allocation (too much memory)
                                v346 = v345.length;
                                v347 = address(v335).transfer(address(v312), v329).gas(msg.gas);
                                if (!v347) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (RETURNDATASIZE()) {
                                        v348 = v349 = 1 != MEM[0];
                                    } else {
                                        v348 = !(address(v335)).code.size;
                                    }
                                    require(!v348, SafeERC20FailedOperation(address(v335)));
                                    // Unknown jump to Block ['0x1192cB0x1dcfB0x1e4d', '0x11950B0x1dcfB0x1e4d']. Refer to 3-address code (TAC);
                                }
                            }
                            varg3 = v350 = 0;
                            if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                if (!uint8(v17 >> 224)) {
                                    v351 = v352 = this;
                                    // Unknown jump to Block 0x3480B0x1dcfB0x1e4d. Refer to 3-address code (TAC);
                                } else {
                                    v351 = v353 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                                    // Unknown jump to Block 0x3480B0x1dcfB0x1e4d. Refer to 3-address code (TAC);
                                }
                            } else if (!uint8(v17 >> 224)) {
                                v351 = this;
                                // Unknown jump to Block 0x3480B0x1dcfB0x1e4d. Refer to 3-address code (TAC);
                            } else {
                                v351 = v354 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                            }
                            require(v311.code.size);
                            MEM[MEM[64] + 132] = v210;
                            CALLDATACOPY(MEM[64] + 132 + 32, v208, v210);
                            MEM[MEM[64] + 132 + v210 + 32] = 0;
                            v355 = v311.swap(varg3, varg3, address(v351), 128).gas(msg.gas);
                            if (!v355) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v355) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                if (v16 & 0x200000000000000000000000000000000000000000) {
                                    0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v207);
                                }
                            }
                        }
                    } else {
                        if (v17 & 0x400000000000000000000000000000000000000000) {
                            _allow = address(v17) | 0x10000000000000000000000000000000000000000;
                        } else {
                            _allow = address(v17);
                        }
                        if (!uint8(v17 >> 224)) {
                            v356 = this;
                        } else {
                            v356 = v357 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                        }
                        v358 = 0x1128(v207);
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            v359 = v360 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v359 = v361 = 0x1000276a4;
                        }
                        MEM[MEM[64] + 164] = v211;
                        CALLDATACOPY(MEM[64] + 164 + 32, v209, v211);
                        MEM[MEM[64] + 164 + v211 + 32] = 0;
                        v362, v1, v1 = address(v17).swap(address(v356), v17 & 0x10000000000000000000000000000000000000000, v358, address(v359), 160).value(v212).gas(msg.gas);
                        if (!v362) {
                            RETURNDATACOPY(MEM[64], v212, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v362) {
                                v363 = v364 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v363 = v365 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v363 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v363 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v363 - MEM[64] >= 64, v212, v212);
                            }
                            if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            }
                            if (v17 & 0x200000000000000000000000000000000000000000) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v207);
                            }
                        }
                    }
                    require(v25 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v366 = v367 = MEM[(v25 << 5) + v3 + 32];
                } else {
                    v1 = v368 = 0;
                    if (0 == v17 >> 161 & 0x7 < 4) {
                        if (v17 >> 161 & 0x7 >= 6) {
                            if (6 - (v17 >> 161 & 0x7)) {
                                v369 = v370 = 0;
                                v371 = new struct(2);
                                v371.word0 = 32;
                                v372 = v371.data;
                                v371.word1 = varg3;
                                v373 = 0;
                                v374 = 0;
                                if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                    v373 = v375 = msg.data[v21] >> 96;
                                    v374 = v376 = 0x3c16(v375);
                                    v20 = v21 + 20;
                                    v22 = v23 - 20;
                                }
                                v377 = 0;
                                if (bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                    v377 = v378 = address(v17);
                                    v369 = v379 = 0x3c16(v378);
                                }
                                MEM[64] = MEM[64] + ((msg.data[v20] >> 248) + 1 << 5) + 32;
                                MEM[MEM[64] + 32] = v371;
                                v380 = v381 = MEM[64] + 64;
                                v382 = v383 = v20 + 1;
                                while (v382 < v20 + v22) {
                                    v384 = v385 = v382 + 6;
                                    if (0 == (msg.data[v382 + 4] >> 248 & 0x1f == 31)) {
                                        if (msg.data[v382 + 4] >> 248 & 0x1f >= 3) {
                                            if ((msg.data[v382 + 4] >> 248 & 0x1f) - 3) {
                                                if (4 - (msg.data[v382 + 4] >> 248 & 0x1f)) {
                                                    v386 = v387 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                } else {
                                                    v386 = v388 = 0x4444c5dc75cb358380d2e3de08a90;
                                                }
                                            } else {
                                                v386 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                            }
                                        } else if (msg.data[v382 + 4] >> 248 & 0x1f) {
                                            if (1 - (msg.data[v382 + 4] >> 248 & 0x1f)) {
                                                v386 = v389 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else {
                                                v386 = v390 = msg.sender;
                                            }
                                        } else {
                                            v386 = v391 = this;
                                        }
                                    } else {
                                        v386 = v392 = msg.data[v385] >> 96;
                                        v384 = v382 + 26;
                                    }
                                    v393 = v394 = 0;
                                    if (msg.data[v382 + 4] >> 254 == 1) {
                                        v393 = v395 = msg.data[v384] >> 96;
                                        v384 = v396 = v384 + 20;
                                        v397 = this.balance;
                                        v398 = this.balance;
                                        require(v397 >= v395, InsufficientBalance(v398, v395));
                                    }
                                    v399 = v400 = MEM[64];
                                    MEM[v400] = (msg.data[v382] >> 224) + v382 - (v384 + uint8(msg.data[v382 + 4] >> 240) * 10) + 4;
                                    MEM[64] = v400 + ((msg.data[v382] >> 224) + v382 - (v384 + uint8(msg.data[v382 + 4] >> 240) * 10) + 4) + 32;
                                    CALLDATACOPY(v400 + 32, v384 + uint8(msg.data[v382 + 4] >> 240) * 10, (msg.data[v382] >> 224) + v382 - (v384 + uint8(msg.data[v382 + 4] >> 240) * 10) + 4);
                                    while (v384 < v384 + uint8(msg.data[v382 + 4] >> 240) * 10) {
                                        require(msg.data[v384] >> 248 < (msg.data[v20] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v399 = v401 = MEM[(msg.data[v384] >> 248 << 5) + MEM[64] + 32];
                                        if (0 == bool(msg.data[v384] & 0x8000000000000000000000000000000000000000000000000000)) {
                                            v402 = v403 = 10;
                                            MCOPY(v400 + (msg.data[v384] >> 176 & 0x3fffffff) + 32, v401 + (msg.data[v384] >> 208 & 0xfffff) + 32, msg.data[v384] >> 228 & 0xfffff);
                                        } else if (!(msg.data[v384] & 0x4000000000000000000000000000000000000000000000000000)) {
                                            if (msg.data[v384] >> 228 & 0xfffff) {
                                                v402 = v404 = 10;
                                                v399 = v405 = v401 + (msg.data[v384] >> 228 & 0xfffff);
                                                MEM[v405] = MEM[v401] - (msg.data[v384] >> 228 & 0xfffff);
                                                MEM[(msg.data[v384] >> 243 & 0x1fe0) + MEM[64] + 32] = v405;
                                            } else {
                                                v402 = 10;
                                            }
                                            if (msg.data[v384] >> 208 & 0xfffff) {
                                                MEM[v399] = MEM[v399] - (msg.data[v384] >> 208 & 0xfffff);
                                            }
                                        } else {
                                            v393 = MEM[32 + (v401 + (msg.data[v384] >> 208 & 0xfffff))] >> (msg.data[v384] >> 228 & 0xfffff);
                                            v402 = v406 = 10;
                                        }
                                        v384 = v384 + v402;
                                    }
                                    if (0 == msg.data[v382 + 4] >> 254 < 2) {
                                        if (0 == (msg.data[v382 + 4] >> 254 == 2)) {
                                            v407 = v386.staticcall(MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d + 32:v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v408 = v409 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v408 = v410 = new bytes[](RETURNDATASIZE());
                                                require(!((v410 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v410 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v410)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v410.data, 0, RETURNDATASIZE());
                                            }
                                            v411 = v412 = bool(v407);
                                        } else {
                                            v411 = v413 = v386.delegatecall(MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d + 32:v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v408 = v414 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v408 = v415 = new bytes[](RETURNDATASIZE());
                                                require(!((v415 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v415 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v415)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v415.data, 0, RETURNDATASIZE());
                                            }
                                        }
                                        v416 = v417 = bool(v411);
                                    } else {
                                        v416 = v386.call(MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d + 32:v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1e4d]], MEM[0:0]).value(v393).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v408 = v418 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v408 = new bytes[](RETURNDATASIZE());
                                            require(!((v408 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v408 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v408)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v408.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v419 = !v416;
                                    if (v419) {
                                        v419 = v420 = !(msg.data[v382 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (v419) {
                                        require(!MEM[v408], v408 + 32, MEM[v408]);
                                        revert(FailedCall());
                                    } else {
                                        MEM[v380] = v408;
                                        v380 = v380 + 32;
                                        v382 = (msg.data[v382] >> 224) + v382 + 4;
                                    }
                                }
                                if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                    v421 = 0x3c16(v373);
                                    if (v374 <= v421) {
                                        v422 = v423 = 0;
                                    } else {
                                        v422 = v424 = v374 - v421;
                                    }
                                    require(v422 <= varg3, v422, varg3);
                                }
                                if (0 == bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                    require(uint8(v17 >> 232) < (msg.data[v20] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v1 = v425 = MEM[MEM[(uint8(v17 >> 232) << 5) + MEM[64] + 32] + 32];
                                } else {
                                    v426 = 0x3c16(v377);
                                    require(v426 >= v369, InsufficientAmountOut(v426, v369));
                                    v1 = v427 = v426 - v369;
                                }
                            } else {
                                MEM[64] = MEM[64] + v23 + 69;
                                CALLDATACOPY(MEM[64] + 69, v21, v23);
                                v428 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(uint8(v17 >> 232), varg3).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v429 = v430 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v429 = new bytes[](RETURNDATASIZE());
                                    require(!((v429 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v429 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v429)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v429.data, 0, RETURNDATASIZE());
                                }
                                if (!v428) {
                                    require(!MEM[v429], v429 + 32, MEM[v429]);
                                    revert(FailedCall());
                                } else {
                                    v1 = v431 = MEM[32 + v429];
                                }
                            }
                        } else {
                            if (4 - (v17 >> 161 & 0x7)) {
                                if (0 == bool(v17 & 0x10000000000000000000000000000000000000000)) {
                                    v432 = v433 = MEM[64];
                                    require(!(msg.data[v21 + 96] - address(msg.data[v21 + 96])));
                                    MEM[v433 + 4 + 128] = msg.data[v21 + 128];
                                    MEM[v433 + 4 + 160] = msg.data[v21 + 160];
                                    MEM[v433 + 4 + 192] = msg.data[v21 + 192];
                                    require(msg.data[v21 + 224] < 2);
                                    MEM[v433 + 4 + 224] = msg.data[v21 + 224];
                                    MEM[v433 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v21];
                                    MEM[v433 + 292] = 384;
                                    MEM[v433 + 388] = v23 - 288;
                                    CALLDATACOPY(v433 + 388 + 32, v21 + 288, v23 - 288);
                                    MEM[v433 + 388 + (v23 - 288) + 32] = 0;
                                    MEM[v433 + 324] = address(v17);
                                    MEM[v433 + 356] = 0;
                                    v434 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v21], msg.data[v21 + 32], msg.data[v21 + 64], address(msg.data[v21 + 96])).gas(msg.gas);
                                    if (!v434) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v435 = 0;
                                        if (!v434) {
                                        }
                                    }
                                } else {
                                    v432 = v436 = MEM[64];
                                    require(!(msg.data[v21 + 96] - address(msg.data[v21 + 96])));
                                    MEM[v436 + 4 + 128] = msg.data[v21 + 128];
                                    MEM[v436 + 4 + 160] = msg.data[v21 + 160];
                                    MEM[v436 + 4 + 192] = msg.data[v21 + 192];
                                    require(msg.data[v21 + 224] < 2);
                                    MEM[v436 + 4 + 224] = msg.data[v21 + 224];
                                    MEM[v436 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v21];
                                    MEM[v436 + 292] = 384;
                                    MEM[v436 + 388] = v23 - 288;
                                    CALLDATACOPY(v436 + 388 + 32, v21 + 288, v23 - 288);
                                    MEM[v436 + 388 + (v23 - 288) + 32] = 0;
                                    MEM[v436 + 324] = address(v17);
                                    MEM[v436 + 356] = varg3;
                                    v437 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v21], msg.data[v21 + 32], msg.data[v21 + 64], address(msg.data[v21 + 96])).gas(msg.gas);
                                    if (!v437) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v438 = 0;
                                        if (!v437) {
                                        }
                                    }
                                }
                            } else if (!(0x10000000000000000000000000000000000000000 & v17)) {
                                v432 = v439 = MEM[64];
                                v440 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(varg3, address(v17), 0).gas(msg.gas);
                                if (!v440) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v441 = 0;
                                    if (!v440) {
                                    }
                                }
                            } else {
                                v432 = v442 = MEM[64];
                                v443 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v17), varg3, 0).gas(msg.gas);
                                if (!v443) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v444 = 0;
                                    if (!v443) {
                                    }
                                }
                            }
                            v445 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v445 = v446 = RETURNDATASIZE();
                            }
                            require(!((v432 + (v445 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v432 + (v445 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v432)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v432 + (v445 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v432 + v445 - v432 >= 32);
                            v1 = v447 = MEM[v432];
                        }
                    } else if (v17 >> 161 & 0x7 >= 2) {
                        if (2 - (v17 >> 161 & 0x7)) {
                            CALLDATACOPY(MEM[64] + 65, v21, v23);
                            MEM[MEM[64] + 33] = uint8(v17 >> 232);
                            MEM[MEM[64] + 32] = varg3;
                            v448 = new uint256[](33 + v23);
                            MCOPY(v448.data, MEM[64] + 32, 33 + v23);
                            MEM[MEM[64] + 4 + (33 + v23) + 64] = 0;
                            v449 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, v448).gas(msg.gas);
                            if (!v449) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v450 = v451 = 0;
                                if (v449) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                    require(v452.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v450 = v453 = new bytes[](v452.length);
                                    require(!((v453 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v452.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v453 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v452.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v453)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v452.length + 32 <= MEM[64] + RETURNDATASIZE());
                                    MCOPY(v453.data, v452.data, v452.length);
                                    v453[v452.length] = 0;
                                }
                                v1 = v454 = MEM[v450 + 32];
                            }
                        } else {
                            v455 = v456 = address(v17);
                            if (!uint8(v17 >> 224)) {
                                v457 = this;
                            } else {
                                v457 = v458 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                            }
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                v455 = v459 = v456 | 0x10000000000000000000000000000000000000000;
                                if (!(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v455 = v456 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v455;
                            v460, v1 = v456.swapOutWithCallback(bool(v17 & 0x10000000000000000000000000000000000000000), varg3, uint256.max, address(v457)).gas(msg.gas);
                            if (!v460) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v1 = v461 = 0;
                                if (v460) {
                                    v462 = v463 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v462 = v464 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v462 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v462 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v462 - MEM[64] >= 32);
                                }
                                if (uint8(v17 >> 232)) {
                                    require(uint8(v17 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                                    v465 = _SafeDiv(v1, 10 ** uint8(v17 >> 232));
                                    v1 = v466 = _SafeMul(v465, 10 ** uint8(v17 >> 232));
                                }
                                if (v17 & 0x200000000000000000000000000000000000000000) {
                                    if (!(0x800000000000000000000000000000000000000000 & v17)) {
                                        0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                    } else {
                                        0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                    }
                                }
                            }
                        }
                    } else if (v17 >> 161 & 0x7) {
                        v467 = v468 = address(v17);
                        v469, /* uint112 */ v470, /* uint112 */ v471, v472 = v468.getReserves().gas(msg.gas);
                        if (!v469) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v470 = v473 = 0;
                            v471 = v474 = 0;
                            if (v469) {
                                v475 = v476 = 96;
                                if (96 > RETURNDATASIZE()) {
                                    v475 = v477 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v475 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v475 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v475 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v475 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v471 - uint112(v471)));
                                require(!(uint32(v472) - v472));
                            }
                            v478 = v479 = uint112(v471);
                            v478 = v480 = uint112(v470);
                            if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            }
                            v481 = _SafeMul(v478, varg3);
                            require(!v481 | (10 ** 6 == v481 * 10 ** 6 / v481), Panic(17)); // arithmetic overflow or underflow
                            v482 = _SafeSub(v478, varg3);
                            require(10 ** 6 - (v17 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v483 = _SafeMul(v482, 10 ** 6 - (v17 >> 168 & 0xfffff));
                            v484 = _SafeDiv(v481 * 10 ** 6, v483);
                            v1 = v485 = v484 + 1;
                            require(v484 <= v485, Panic(17)); // arithmetic overflow or underflow
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v485);
                            }
                            if (!(v17 & 0x8000000000000000000000000000000000000000000000000000)) {
                                if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                    v486 = v487 = MEM[64];
                                    v488 = v468.token1().gas(msg.gas);
                                    if (!v488) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v489 = v490 = 0x11950;
                                        v491 = v492 = 0;
                                        if (!v488) {
                                        }
                                    }
                                } else {
                                    v486 = v493 = MEM[64];
                                    v494 = v468.token0().gas(msg.gas);
                                    if (!v494) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v489 = v495 = 0x1192c;
                                        v491 = v496 = 0;
                                        if (!v494) {
                                        }
                                    }
                                }
                                if (32 > RETURNDATASIZE()) {
                                    require(!((v486 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v486 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v486)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v486 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v497 = v498 = v486 + RETURNDATASIZE();
                                } else {
                                    require(!((v486 + 32 > uint64.max) | (v486 + 32 < v486)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v486 + 32;
                                    v497 = v499 = v486 + 32;
                                }
                                require(v497 - v486 >= 32);
                                v491 = v500 = MEM[v486];
                                require(!(v500 - address(v500)));
                                v501 = new bytes[](68);
                                MEM[v501.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v501 + 36] = address(v468);
                                MEM[v501 + 68] = v485;
                                require(!((v501 + 128 > uint64.max) | (v501 + 128 < v501)), Panic(65)); // failed memory allocation (too much memory)
                                v502 = v501.length;
                                v503 = address(v491).transfer(address(v468), v485).gas(msg.gas);
                                if (!v503) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (RETURNDATASIZE()) {
                                        v504 = v505 = 1 != MEM[0];
                                    } else {
                                        v504 = !(address(v491)).code.size;
                                    }
                                    require(!v504, SafeERC20FailedOperation(address(v491)));
                                    // Unknown jump to Block ['0x1192cB0x1d82B0x1e4d', '0x11950B0x1d82B0x1e4d']. Refer to 3-address code (TAC);
                                }
                            }
                            varg3 = v506 = 0;
                            if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                if (!uint8(v17 >> 224)) {
                                    v507 = v508 = this;
                                    // Unknown jump to Block 0x3480B0x1d82B0x1e4d. Refer to 3-address code (TAC);
                                } else {
                                    v507 = v509 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                                    // Unknown jump to Block 0x3480B0x1d82B0x1e4d. Refer to 3-address code (TAC);
                                }
                            } else if (!uint8(v17 >> 224)) {
                                v507 = this;
                                // Unknown jump to Block 0x3480B0x1d82B0x1e4d. Refer to 3-address code (TAC);
                            } else {
                                v507 = v510 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                            }
                            require(v467.code.size);
                            v511 = new uint256[](v22);
                            CALLDATACOPY(v511.data, v20, v22);
                            MEM[v511.data] = 0;
                            v512 = v467.swap(varg3, varg3, address(v507), v511).gas(msg.gas);
                            if (!v512) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v512) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                if (v16 & 0x200000000000000000000000000000000000000000) {
                                    0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                }
                            }
                        }
                    } else {
                        if (v17 & 0x400000000000000000000000000000000000000000) {
                            _allow = address(v17) | 0x10000000000000000000000000000000000000000;
                        } else {
                            _allow = address(v17);
                        }
                        if (!uint8(v17 >> 224)) {
                            v513 = this;
                        } else {
                            v513 = v514 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                        }
                        v515 = 0x1128(varg3);
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            v516 = v517 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v516 = v518 = 0x1000276a4;
                        }
                        v519 = new uint256[](v23);
                        CALLDATACOPY(v519.data, v21, v23);
                        MEM[v519.data] = 0;
                        v520, v1, v1 = address(v17).swap(address(v513), v17 & 0x10000000000000000000000000000000000000000, v515, address(v516), v519).value(v368).gas(msg.gas);
                        if (!v520) {
                            RETURNDATACOPY(MEM[64], v368, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v520) {
                                v521 = v522 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v521 = v523 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v521 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v521 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v521 - MEM[64] >= 64, v368, v368);
                            }
                            if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            }
                            if (v17 & 0x200000000000000000000000000000000000000000) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                            }
                        }
                    }
                    require(v25 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v366 = v524 = MEM[(v25 << 5) + v3 + 32];
                }
                v204 = v366 + varg3;
                require(v366 <= v204, Panic(17)); // arithmetic overflow or underflow
            }
            require(v3 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[(v3 << 5) + v3 + 32] = v204;
            v1 = v1 + v3;
        } else {
            v3 = v525 = 0x1156b;
            v3 = v526 = 32;
            v527 = v528 = msg.data[v3] >> 224;
            v529 = v530 = v3 + 4;
            v3 = v3 + v528 + 4;
            v3 = v531 = uint8(v17 >> 208);
            v3 = v532 = uint8(v17 >> 216);
            if (0 == bool(v17 & 0x100000000000000000000000000000000000000000)) {
                require(v531 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v533 = _SafeMul(MEM[(v531 << 5) + v3 + 32], v17 >> 192 & 0x3fff);
                v534 = v535 = v533 / 10000;
                v534 = v536 = 0;
                if (0 == v17 >> 161 & 0x7 < 4) {
                    if (v17 >> 161 & 0x7 >= 6) {
                        if (6 - (v17 >> 161 & 0x7)) {
                            v537 = v538 = 0;
                            v539 = new struct(2);
                            v539.word0 = 32;
                            v540 = v539.data;
                            v539.word1 = v535;
                            v541 = 0;
                            v542 = 0;
                            if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                v541 = v543 = msg.data[v530] >> 96;
                                v542 = v544 = 0x3c16(v543);
                                v529 = v545 = v530 + 20;
                                v527 = v546 = v528 - 20;
                            }
                            v547 = 0;
                            if (bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                v547 = v548 = address(v17);
                                v537 = v549 = 0x3c16(v548);
                            }
                            MEM[64] = MEM[64] + ((msg.data[v529] >> 248) + 1 << 5) + 32;
                            MEM[MEM[64] + 32] = v539;
                            v550 = v551 = MEM[64] + 64;
                            v552 = v553 = v529 + 1;
                            while (v552 < v529 + v527) {
                                v554 = v555 = v552 + 6;
                                if (0 == (msg.data[v552 + 4] >> 248 & 0x1f == 31)) {
                                    if (msg.data[v552 + 4] >> 248 & 0x1f >= 3) {
                                        if ((msg.data[v552 + 4] >> 248 & 0x1f) - 3) {
                                            if (4 - (msg.data[v552 + 4] >> 248 & 0x1f)) {
                                                v556 = v557 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                            } else {
                                                v556 = v558 = 0x4444c5dc75cb358380d2e3de08a90;
                                            }
                                        } else {
                                            v556 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                        }
                                    } else if (msg.data[v552 + 4] >> 248 & 0x1f) {
                                        if (1 - (msg.data[v552 + 4] >> 248 & 0x1f)) {
                                            v556 = v559 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                        } else {
                                            v556 = v560 = msg.sender;
                                        }
                                    } else {
                                        v556 = v561 = this;
                                    }
                                } else {
                                    v556 = v562 = msg.data[v555] >> 96;
                                    v554 = v552 + 26;
                                }
                                v563 = v564 = 0;
                                if (msg.data[v552 + 4] >> 254 == 1) {
                                    v563 = v565 = msg.data[v554] >> 96;
                                    v554 = v566 = v554 + 20;
                                    v567 = this.balance;
                                    v568 = this.balance;
                                    require(v567 >= v565, InsufficientBalance(v568, v565));
                                }
                                v569 = v570 = MEM[64];
                                MEM[v570] = (msg.data[v552] >> 224) + v552 - (v554 + uint8(msg.data[v552 + 4] >> 240) * 10) + 4;
                                MEM[64] = v570 + ((msg.data[v552] >> 224) + v552 - (v554 + uint8(msg.data[v552 + 4] >> 240) * 10) + 4) + 32;
                                CALLDATACOPY(v570 + 32, v554 + uint8(msg.data[v552 + 4] >> 240) * 10, (msg.data[v552] >> 224) + v552 - (v554 + uint8(msg.data[v552 + 4] >> 240) * 10) + 4);
                                while (v554 < v554 + uint8(msg.data[v552 + 4] >> 240) * 10) {
                                    require(msg.data[v554] >> 248 < (msg.data[v529] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v569 = v571 = MEM[(msg.data[v554] >> 248 << 5) + MEM[64] + 32];
                                    if (0 == bool(msg.data[v554] & 0x8000000000000000000000000000000000000000000000000000)) {
                                        v572 = v573 = 10;
                                        MCOPY(v570 + (msg.data[v554] >> 176 & 0x3fffffff) + 32, v571 + (msg.data[v554] >> 208 & 0xfffff) + 32, msg.data[v554] >> 228 & 0xfffff);
                                    } else if (!(msg.data[v554] & 0x4000000000000000000000000000000000000000000000000000)) {
                                        if (msg.data[v554] >> 228 & 0xfffff) {
                                            v572 = v574 = 10;
                                            v569 = v575 = v571 + (msg.data[v554] >> 228 & 0xfffff);
                                            MEM[v575] = MEM[v571] - (msg.data[v554] >> 228 & 0xfffff);
                                            MEM[(msg.data[v554] >> 243 & 0x1fe0) + MEM[64] + 32] = v575;
                                        } else {
                                            v572 = 10;
                                        }
                                        if (msg.data[v554] >> 208 & 0xfffff) {
                                            MEM[v569] = MEM[v569] - (msg.data[v554] >> 208 & 0xfffff);
                                        }
                                    } else {
                                        v563 = MEM[32 + (v571 + (msg.data[v554] >> 208 & 0xfffff))] >> (msg.data[v554] >> 228 & 0xfffff);
                                        v572 = v576 = 10;
                                    }
                                    v554 = v554 + v572;
                                }
                                if (0 == msg.data[v552 + 4] >> 254 < 2) {
                                    if (0 == (msg.data[v552 + 4] >> 254 == 2)) {
                                        v577 = v556.staticcall(MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06 + 32:v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06]], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v578 = v579 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v578 = v580 = new bytes[](RETURNDATASIZE());
                                            require(!((v580 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v580 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v580)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v580.data, 0, RETURNDATASIZE());
                                        }
                                        v581 = v582 = bool(v577);
                                    } else {
                                        v581 = v583 = v556.delegatecall(MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06 + 32:v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06]], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v578 = v584 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v578 = v585 = new bytes[](RETURNDATASIZE());
                                            require(!((v585 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v585 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v585)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v585.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v586 = v587 = bool(v581);
                                } else {
                                    v586 = v556.call(MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06 + 32:v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x2126V0x1e3fV0x1d06]], MEM[0:0]).value(v563).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v578 = v588 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v578 = new bytes[](RETURNDATASIZE());
                                        require(!((v578 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v578 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v578)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v578.data, 0, RETURNDATASIZE());
                                    }
                                }
                                v589 = !v586;
                                if (v589) {
                                    v589 = v590 = !(msg.data[v552 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                }
                                if (v589) {
                                    require(!MEM[v578], v578 + 32, MEM[v578]);
                                    revert(FailedCall());
                                } else {
                                    MEM[v550] = v578;
                                    v550 = v550 + 32;
                                    v552 = (msg.data[v552] >> 224) + v552 + 4;
                                }
                            }
                            if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                v591 = 0x3c16(v541);
                                if (v542 <= v591) {
                                    v592 = v593 = 0;
                                } else {
                                    v592 = v594 = v542 - v591;
                                }
                                require(v592 <= v535, v592, v535);
                            }
                            if (0 == bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                require(uint8(v17 >> 232) < (msg.data[v529] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v534 = v595 = MEM[MEM[(uint8(v17 >> 232) << 5) + MEM[64] + 32] + 32];
                            } else {
                                v596 = 0x3c16(v547);
                                require(v596 >= v537, InsufficientAmountOut(v596, v537));
                                v534 = v597 = v596 - v537;
                            }
                        } else {
                            MEM[64] = MEM[64] + v528 + 69;
                            CALLDATACOPY(MEM[64] + 69, v530, v528);
                            v598 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v535, uint8(v17 >> 232)).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v599 = v600 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v599 = new bytes[](RETURNDATASIZE());
                                require(!((v599 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v599 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v599)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v599.data, 0, RETURNDATASIZE());
                            }
                            if (!v598) {
                                require(!MEM[v599], v599 + 32, MEM[v599]);
                                revert(FailedCall());
                            } else {
                                v534 = v601 = MEM[32 + v599];
                            }
                        }
                    } else {
                        if (4 - (v17 >> 161 & 0x7)) {
                            if (0 == bool(v17 & 0x10000000000000000000000000000000000000000)) {
                                v602 = v603 = MEM[64];
                                require(!(msg.data[v530 + 96] - address(msg.data[v530 + 96])));
                                require(msg.data[v530 + 224] < 2);
                                v604 = new uint256[](v528 - 288);
                                CALLDATACOPY(v604.data, v530 + 288, v528 - 288);
                                MEM[v604 + (v528 - 288) + 32] = 0;
                                v605 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v530], msg.data[v530 + 32], msg.data[v530 + 64], address(msg.data[v530 + 96]), msg.data[v530 + 128], msg.data[v530 + 160], msg.data[v530 + 192], msg.data[v530 + 224], msg.data[uint8.max + 1 + v530], v604, address(v17), 0).gas(msg.gas);
                                if (!v605) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v534 = v606 = 0;
                                    if (!v605) {
                                    }
                                }
                            } else {
                                v602 = v607 = MEM[64];
                                require(!(msg.data[v530 + 96] - address(msg.data[v530 + 96])));
                                require(msg.data[v530 + 224] < 2);
                                v608 = new uint256[](v528 - 288);
                                CALLDATACOPY(v608.data, v530 + 288, v528 - 288);
                                MEM[v608 + (v528 - 288) + 32] = 0;
                                v609 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v530], msg.data[v530 + 32], msg.data[v530 + 64], address(msg.data[v530 + 96]), msg.data[v530 + 128], msg.data[v530 + 160], msg.data[v530 + 192], msg.data[v530 + 224], msg.data[uint8.max + 1 + v530], v608, address(v17), v535).gas(msg.gas);
                                if (!v609) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v534 = v610 = 0;
                                    if (!v609) {
                                    }
                                }
                            }
                        } else if (!(0x10000000000000000000000000000000000000000 & v17)) {
                            v602 = v611 = MEM[64];
                            v612 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(v535, address(v17), 0).gas(msg.gas);
                            if (!v612) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v534 = v613 = 0;
                                if (!v612) {
                                }
                            }
                        } else {
                            v602 = v614 = MEM[64];
                            v615 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v17), v535, 0).gas(msg.gas);
                            if (!v615) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v534 = v616 = 0;
                                if (!v615) {
                                }
                            }
                        }
                        v617 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v617 = v618 = RETURNDATASIZE();
                        }
                        require(!((v602 + (v617 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v602 + (v617 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v602)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v602 + (v617 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v602 + v617 - v602 >= 32);
                        v534 = v619 = MEM[v602];
                    }
                } else if (v17 >> 161 & 0x7 >= 2) {
                    if (2 - (v17 >> 161 & 0x7)) {
                        CALLDATACOPY(MEM[64] + 65, v530, v528);
                        MEM[MEM[64] + 33] = uint8(v17 >> 232);
                        MEM[MEM[64] + 32] = v535;
                        MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = 32;
                        MEM[MEM[64] + 4 + 32] = 33 + v528;
                        MCOPY(MEM[64] + 4 + 64, MEM[64] + 32, 33 + v528);
                        MEM[MEM[64] + 4 + (33 + v528) + 64] = 0;
                        v620 = address(0x4444c5dc75cb358380d2e3de08a90).call(v621, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                        if (!v620) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v622 = v623 = 0;
                            if (v620) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                require(v624.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v622 = v625 = new bytes[](v624.length);
                                require(!((v625 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v624.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v625 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v624.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v625)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v624.length + 32 <= MEM[64] + RETURNDATASIZE());
                                MCOPY(v625.data, v624.data, v624.length);
                                v625[v624.length] = 0;
                            }
                            v534 = v626 = MEM[v622 + 32];
                        }
                    } else {
                        v627 = v628 = address(v17);
                        if (!uint8(v17 >> 224)) {
                            v629 = this;
                        } else {
                            v629 = v630 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                        }
                        if (bool(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v535);
                            }
                        } else {
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                v627 = v631 = v628 | 0x10000000000000000000000000000000000000000;
                                if (!bool(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v627 = v628 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v627;
                        }
                        if (!(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                            v632, /* uint112 */ v534 = v628.swapInWithCallback(bool(v17 & 0x10000000000000000000000000000000000000000), v535, 0, address(v629)).gas(msg.gas);
                            if (!v632) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v534 = v633 = 0;
                                if (v632) {
                                    v634 = v635 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v634 = v636 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v634 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v634 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v634 - MEM[64] >= 32);
                                }
                            }
                        } else {
                            v637, /* uint112 */ v534 = v628.swapIn(bool(v17 & 0x10000000000000000000000000000000000000000), v535, 0, address(v629)).value(v535).gas(msg.gas);
                            if (!v637) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v534 = v638 = 0;
                                if (v637) {
                                    v639 = v640 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v639 = v641 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v639 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v639 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v639 - MEM[64] >= 32);
                                }
                            }
                        }
                        if (uint8(v17 >> 232)) {
                            require(uint8(v17 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                            v642 = _SafeDiv(v534, 10 ** uint8(v17 >> 232));
                            v534 = v643 = _SafeMul(v642, 10 ** uint8(v17 >> 232));
                        }
                        if (v17 & 0x200000000000000000000000000000000000000000) {
                            if (!(0x800000000000000000000000000000000000000000 & v17)) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v534);
                            } else {
                                0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v534);
                            }
                        }
                    }
                } else if (v17 >> 161 & 0x7) {
                    v644 = v645 = address(v17);
                    v646, /* uint112 */ v534, /* uint112 */ v534, v647 = v645.getReserves().gas(msg.gas);
                    if (!v646) {
                        RETURNDATACOPY(MEM[64], v536, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v646) {
                            v648 = v649 = 96;
                            if (96 > RETURNDATASIZE()) {
                                v648 = v650 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v648 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v648 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v648 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v648 - MEM[64] >= 96, v536, v536);
                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                            require(!(v534 - uint112(v534)));
                            require(!(uint32(v647) - v647), v536, v536);
                        }
                        v651 = v652 = uint112(v534);
                        v651 = v653 = uint112(v534);
                        if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                        }
                        if (!v536) {
                            require(10 ** 6 - (v17 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v654 = _SafeMul(v535, 10 ** 6 - (v17 >> 168 & 0xfffff));
                            v655 = _SafeMul(v654, v651);
                            require(!v651 | (10 ** 6 == v651 * 10 ** 6 / v651), Panic(17)); // arithmetic overflow or underflow
                            v656 = _SafeAdd(v651 * 10 ** 6, v654);
                            v534 = v657 = _SafeDiv(v655, v656);
                        } else {
                            v658 = _SafeMul(v651, v535);
                            require(!v658 | (10 ** 6 == v658 * 10 ** 6 / v658), Panic(17)); // arithmetic overflow or underflow
                            v659 = _SafeSub(v651, v535);
                            require(10 ** 6 - (v17 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v660 = _SafeMul(v659, 10 ** 6 - (v17 >> 168 & 0xfffff));
                            v661 = _SafeDiv(v658 * 10 ** 6, v660);
                            v534 = v662 = v661 + 1;
                            require(v661 <= v662, Panic(17)); // arithmetic overflow or underflow
                        }
                        if (v17 & 0x400000000000000000000000000000000000000000) {
                            0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v534);
                        }
                        if (!(v17 & 0x8000000000000000000000000000000000000000000000000000)) {
                            if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                v663 = v664 = MEM[64];
                                v665 = v645.token1().gas(msg.gas);
                                if (!v665) {
                                    RETURNDATACOPY(MEM[64], v536, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v666 = v667 = 0x11833;
                                    if (!v665) {
                                    }
                                }
                            } else {
                                v663 = v668 = MEM[64];
                                v669 = v645.token0().gas(msg.gas);
                                if (!v669) {
                                    RETURNDATACOPY(MEM[64], v536, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v666 = v670 = 0x117e7;
                                    if (v669) {
                                        // Unknown jump to Block 0x26300x2126B0x1e3fB0x1d06. Refer to 3-address code (TAC);
                                    }
                                }
                            }
                            v671 = new bytes[](68);
                            MEM[v671.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            MEM[v671 + 36] = address(v645);
                            MEM[v671 + 68] = v534;
                            require(!((v671 + 128 > uint64.max) | (v671 + 128 < v671)), Panic(65)); // failed memory allocation (too much memory)
                            v672 = v671.length;
                            v673 = address(v534).transfer(address(v645), v534).gas(msg.gas);
                            if (!v673) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (RETURNDATASIZE()) {
                                    v674 = v675 = 1 != MEM[0];
                                } else {
                                    v674 = !(address(v534)).code.size;
                                }
                                require(!v674, SafeERC20FailedOperation(address(v534)));
                                // Unknown jump to Block ['0x117e7B0x1e3fB0x1d06', '0x11833B0x1e3fB0x1d06']. Refer to 3-address code (TAC);
                            }
                            if (32 > RETURNDATASIZE()) {
                                require(!((v663 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v663 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v663)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v663 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v676 = v677 = v663 + RETURNDATASIZE();
                            } else {
                                require(!((v663 + 32 > uint64.max) | (v663 + 32 < v663)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v663 + 32;
                                v676 = v678 = v663 + 32;
                            }
                            require(v676 - v663 >= 32);
                            v534 = v679 = MEM[v663];
                            require(!(v679 - address(v679)));
                        }
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            if (!uint8(v17 >> 224)) {
                                v680 = v681 = this;
                                // Unknown jump to Block 0x24d4B0x1e3fB0x1d06. Refer to 3-address code (TAC);
                            } else {
                                v680 = v682 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                                // Unknown jump to Block 0x24d4B0x1e3fB0x1d06. Refer to 3-address code (TAC);
                            }
                        } else if (!uint8(v17 >> 224)) {
                            v680 = this;
                            // Unknown jump to Block 0x24d4B0x1e3fB0x1d06. Refer to 3-address code (TAC);
                        } else {
                            v680 = v683 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                        }
                        require(v644.code.size, v534, v534);
                        MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = v534;
                        MEM[MEM[64] + 36] = v534;
                        MEM[MEM[64] + 68] = address(v680);
                        MEM[MEM[64] + 100] = 128;
                        MEM[MEM[64] + 132] = v527;
                        CALLDATACOPY(MEM[64] + 132 + 32, v529, v527);
                        MEM[MEM[64] + 132 + v527 + 32] = 0;
                        v684 = v644.call(MEM[MEM[64]:MEM[64] + v31c50x31bdV0x1d82V0x1d06 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 132 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + v3cbeV0x27eaV0x1e3fV0x1d06]).value(v534).gas(msg.gas);
                        if (!v684) {
                            RETURNDATACOPY(MEM[64], v534, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v684) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= v534, v534, v534);
                            }
                            if (0x200000000000000000000000000000000000000000 & v16) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v534);
                            }
                        }
                    }
                } else {
                    v685 = v686 = 64;
                    v687 = v688 = address(v17);
                    v689 = v690 = v17 & 0x10000000000000000000000000000000000000000;
                    if (v17 & 0x400000000000000000000000000000000000000000) {
                        v687 = v691 = v688 | 0x10000000000000000000000000000000000000000;
                    }
                    _allow = v687;
                    if (!uint8(v17 >> 224)) {
                        v692 = this;
                    } else {
                        v692 = v693 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                    }
                    if (!v536) {
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            v694 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v694 = v695 = 0x1000276a4;
                        }
                        v696 = MEM[v686];
                        MEM[v696] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v696 + 4] = address(v692);
                        MEM[v696 + 36] = v690;
                        MEM[v696 + 68] = v535;
                        MEM[v696 + 100] = address(v694);
                        MEM[v696 + 132] = 160;
                        MEM[v696 + 164] = v528;
                        CALLDATACOPY(v696 + 164 + 32, v530, v528);
                        MEM[v696 + 164 + v528 + 32] = 0;
                        v697 = (v528 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v696 + 164) + 32;
                        // Unknown jump to Block 0x2235B0x1e3fB0x1d06. Refer to 3-address code (TAC);
                    } else {
                        v698 = 0x1128(v535);
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            v699 = v700 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v699 = v701 = 0x1000276a4;
                        }
                        v696 = v702 = MEM[v686];
                        MEM[v702] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v702 + 4] = address(v692);
                        MEM[v702 + 36] = v690;
                        MEM[v702 + 68] = v698;
                        MEM[v702 + 100] = address(v699);
                        MEM[v702 + 132] = 160;
                        MEM[v702 + 164] = v528;
                        CALLDATACOPY(v702 + 164 + 32, v530, v528);
                        MEM[v702 + 164 + v528 + 32] = 0;
                        v697 = v703 = (v528 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v702 + 164) + 32;
                    }
                    v704 = v687.call(MEM[v21d20x21e3V0x2355V0x1e3fV0x1d06:v21d20x21e3V0x2355V0x1e3fV0x1d06 + v21d20x13f2V0x2355V0x1e3fV0x1d06 - v21d20x21e3V0x2355V0x1e3fV0x1d06], MEM[v21d20x21e3V0x2355V0x1e3fV0x1d06:v21d20x21e3V0x2355V0x1e3fV0x1d06 + v2235_0x6V0x1e3fV0x1d06]).value(v534).gas(msg.gas);
                    if (!v704) {
                        RETURNDATACOPY(MEM[64], v536, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v704) {
                            v705 = v706 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v705 = v707 = RETURNDATASIZE();
                            }
                            require(!((v696 + (v705 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v696 + (v705 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v696)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v696 + (v705 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v696 + v705 - v696 >= 64, v536, v536);
                            v534 = v708 = MEM[v696];
                            v534 = v709 = MEM[v696 + 32];
                        }
                        if (!v536) {
                            if (v689) {
                            }
                            require(v534 != int256.min, Panic(17)); // arithmetic overflow or underflow
                            v534 = v710 = 0 - v534;
                        } else if (v689) {
                        }
                        if (v17 & 0x200000000000000000000000000000000000000000) {
                            if (!v536) {
                                0x2283(v534);
                            } else {
                                0x2283(v535);
                            }
                        }
                    }
                }
                require(v532 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v711 = _SafeAdd(MEM[(v532 << 5) + v3 + 32], v534);
                require(v532 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[(v532 << 5) + v3 + 32] = v711;
                require(v531 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v535 <= MEM[(v531 << 5) + v3 + 32], v535, MEM[(v531 << 5) + v3 + 32]);
                v712 = v713 = MEM[(v531 << 5) + v3 + 32] - v535;
            } else {
                v3 = v714 = 0x11591;
                if (!(v17 & 0x400000000000000000000000000000000000000000000000)) {
                    varg3 = v715 = msg.data[v530];
                    v716 = v717 = v530 + v526;
                    v718 = v719 = v528 - 32;
                    v1 = v720 = 0;
                    if (0 == v17 >> 161 & 0x7 < 4) {
                        if (v17 >> 161 & 0x7 >= 6) {
                            if (6 - (v17 >> 161 & 0x7)) {
                                v721 = v722 = 0;
                                v723 = new struct(2);
                                v723.word0 = 32;
                                v724 = v723.data;
                                v723.word1 = v715;
                                v725 = 0;
                                v726 = 0;
                                if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                    v725 = v727 = msg.data[v717] >> 96;
                                    v726 = v728 = 0x3c16(v727);
                                    v716 = v717 + 20;
                                    v718 = v719 - 20;
                                }
                                v729 = 0;
                                if (bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                    v729 = v730 = address(v17);
                                    v721 = v731 = 0x3c16(v730);
                                }
                                MEM[64] = MEM[64] + ((msg.data[v716] >> 248) + 1 << 5) + 32;
                                MEM[MEM[64] + 32] = v723;
                                v732 = v733 = MEM[64] + 64;
                                v734 = v735 = v716 + 1;
                                while (v734 < v716 + v718) {
                                    v736 = v737 = v734 + 6;
                                    if (0 == (msg.data[v734 + 4] >> 248 & 0x1f == 31)) {
                                        if (msg.data[v734 + 4] >> 248 & 0x1f >= 3) {
                                            if ((msg.data[v734 + 4] >> 248 & 0x1f) - 3) {
                                                if (4 - (msg.data[v734 + 4] >> 248 & 0x1f)) {
                                                    v738 = v739 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                } else {
                                                    v738 = v740 = 0x4444c5dc75cb358380d2e3de08a90;
                                                }
                                            } else {
                                                v738 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                            }
                                        } else if (msg.data[v734 + 4] >> 248 & 0x1f) {
                                            if (1 - (msg.data[v734 + 4] >> 248 & 0x1f)) {
                                                v738 = v741 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else {
                                                v738 = v742 = msg.sender;
                                            }
                                        } else {
                                            v738 = v743 = this;
                                        }
                                    } else {
                                        v738 = v744 = msg.data[v737] >> 96;
                                        v736 = v734 + 26;
                                    }
                                    v745 = v746 = 0;
                                    if (msg.data[v734 + 4] >> 254 == 1) {
                                        v745 = v747 = msg.data[v736] >> 96;
                                        v736 = v748 = v736 + 20;
                                        v749 = this.balance;
                                        v750 = this.balance;
                                        require(v749 >= v747, InsufficientBalance(v750, v747));
                                    }
                                    v751 = v752 = MEM[64];
                                    MEM[v752] = (msg.data[v734] >> 224) + v734 - (v736 + uint8(msg.data[v734 + 4] >> 240) * 10) + 4;
                                    MEM[64] = v752 + ((msg.data[v734] >> 224) + v734 - (v736 + uint8(msg.data[v734 + 4] >> 240) * 10) + 4) + 32;
                                    CALLDATACOPY(v752 + 32, v736 + uint8(msg.data[v734 + 4] >> 240) * 10, (msg.data[v734] >> 224) + v734 - (v736 + uint8(msg.data[v734 + 4] >> 240) * 10) + 4);
                                    while (v736 < v736 + uint8(msg.data[v734 + 4] >> 240) * 10) {
                                        require(msg.data[v736] >> 248 < (msg.data[v716] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v751 = v753 = MEM[(msg.data[v736] >> 248 << 5) + MEM[64] + 32];
                                        if (0 == bool(msg.data[v736] & 0x8000000000000000000000000000000000000000000000000000)) {
                                            v754 = v755 = 10;
                                            MCOPY(v752 + (msg.data[v736] >> 176 & 0x3fffffff) + 32, v753 + (msg.data[v736] >> 208 & 0xfffff) + 32, msg.data[v736] >> 228 & 0xfffff);
                                        } else if (!(msg.data[v736] & 0x4000000000000000000000000000000000000000000000000000)) {
                                            if (msg.data[v736] >> 228 & 0xfffff) {
                                                v754 = v756 = 10;
                                                v751 = v757 = v753 + (msg.data[v736] >> 228 & 0xfffff);
                                                MEM[v757] = MEM[v753] - (msg.data[v736] >> 228 & 0xfffff);
                                                MEM[(msg.data[v736] >> 243 & 0x1fe0) + MEM[64] + 32] = v757;
                                            } else {
                                                v754 = 10;
                                            }
                                            if (msg.data[v736] >> 208 & 0xfffff) {
                                                MEM[v751] = MEM[v751] - (msg.data[v736] >> 208 & 0xfffff);
                                            }
                                        } else {
                                            v745 = MEM[32 + (v753 + (msg.data[v736] >> 208 & 0xfffff))] >> (msg.data[v736] >> 228 & 0xfffff);
                                            v754 = v758 = 10;
                                        }
                                        v736 = v736 + v754;
                                    }
                                    if (0 == msg.data[v734 + 4] >> 254 < 2) {
                                        if (0 == (msg.data[v734 + 4] >> 254 == 2)) {
                                            v759 = v738.staticcall(MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06 + 32:v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v760 = v761 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v760 = v762 = new bytes[](RETURNDATASIZE());
                                                require(!((v762 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v762 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v762)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v762.data, 0, RETURNDATASIZE());
                                            }
                                            v763 = v764 = bool(v759);
                                        } else {
                                            v763 = v765 = v738.delegatecall(MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06 + 32:v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v760 = v766 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v760 = v767 = new bytes[](RETURNDATASIZE());
                                                require(!((v767 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v767 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v767)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v767.data, 0, RETURNDATASIZE());
                                            }
                                        }
                                        v768 = v769 = bool(v763);
                                    } else {
                                        v768 = v738.call(MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06 + 32:v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1dcfV0x1d06]], MEM[0:0]).value(v745).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v760 = v770 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v760 = new bytes[](RETURNDATASIZE());
                                            require(!((v760 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v760 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v760)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v760.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v771 = !v768;
                                    if (v771) {
                                        v771 = v772 = !(msg.data[v734 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (v771) {
                                        require(!MEM[v760], v760 + 32, MEM[v760]);
                                        revert(FailedCall());
                                    } else {
                                        MEM[v732] = v760;
                                        v732 = v732 + 32;
                                        v734 = (msg.data[v734] >> 224) + v734 + 4;
                                    }
                                }
                                if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                    v773 = 0x3c16(v725);
                                    if (v726 <= v773) {
                                        v774 = v775 = 0;
                                    } else {
                                        v774 = v776 = v726 - v773;
                                    }
                                    require(v774 <= v715, v774, v715);
                                }
                                if (0 == bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                    require(uint8(v17 >> 232) < (msg.data[v716] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v1 = v777 = MEM[MEM[(uint8(v17 >> 232) << 5) + MEM[64] + 32] + 32];
                                } else {
                                    v778 = 0x3c16(v729);
                                    require(v778 >= v721, InsufficientAmountOut(v778, v721));
                                    v1 = v779 = v778 - v721;
                                }
                            } else {
                                MEM[64] = MEM[64] + v719 + 69;
                                CALLDATACOPY(MEM[64] + 69, v717, v719);
                                v780 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v715, uint8(v17 >> 232)).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v781 = v782 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v781 = new bytes[](RETURNDATASIZE());
                                    require(!((v781 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v781 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v781)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v781.data, 0, RETURNDATASIZE());
                                }
                                if (!v780) {
                                    require(!MEM[v781], v781 + 32, MEM[v781]);
                                    revert(FailedCall());
                                } else {
                                    v1 = v783 = MEM[32 + v781];
                                }
                            }
                        } else {
                            if (4 - (v17 >> 161 & 0x7)) {
                                if (0 == bool(v17 & 0x10000000000000000000000000000000000000000)) {
                                    v784 = v785 = MEM[64];
                                    require(!(msg.data[v717 + 96] - address(msg.data[v717 + 96])));
                                    require(msg.data[v717 + 224] < 2);
                                    v786 = new uint256[](v719 - 288);
                                    CALLDATACOPY(v786.data, v717 + 288, v719 - 288);
                                    MEM[v786 + (v719 - 288) + 32] = 0;
                                    v787 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v717], msg.data[v717 + 32], msg.data[v717 + 64], address(msg.data[v717 + 96]), msg.data[v717 + 128], msg.data[v717 + 160], msg.data[v717 + 192], msg.data[v717 + 224], msg.data[uint8.max + 1 + v717], v786, address(v17), 0).gas(msg.gas);
                                    if (!v787) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v788 = 0;
                                        if (!v787) {
                                        }
                                    }
                                } else {
                                    v784 = v789 = MEM[64];
                                    require(!(msg.data[v717 + 96] - address(msg.data[v717 + 96])));
                                    require(msg.data[v717 + 224] < 2);
                                    v790 = new uint256[](v719 - 288);
                                    CALLDATACOPY(v790.data, v717 + 288, v719 - 288);
                                    MEM[v790 + (v719 - 288) + 32] = 0;
                                    v791 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v717], msg.data[v717 + 32], msg.data[v717 + 64], address(msg.data[v717 + 96]), msg.data[v717 + 128], msg.data[v717 + 160], msg.data[v717 + 192], msg.data[v717 + 224], msg.data[uint8.max + 1 + v717], v790, address(v17), v715).gas(msg.gas);
                                    if (!v791) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v792 = 0;
                                        if (!v791) {
                                        }
                                    }
                                }
                            } else if (!(0x10000000000000000000000000000000000000000 & v17)) {
                                v784 = v793 = MEM[64];
                                v794 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(v715, address(v17), 0).gas(msg.gas);
                                if (!v794) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v795 = 0;
                                    if (!v794) {
                                    }
                                }
                            } else {
                                v784 = v796 = MEM[64];
                                v797 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v17), v715, 0).gas(msg.gas);
                                if (!v797) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v798 = 0;
                                    if (!v797) {
                                    }
                                }
                            }
                            v799 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v799 = v800 = RETURNDATASIZE();
                            }
                            require(!((v784 + (v799 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v784 + (v799 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v784)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v784 + (v799 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v784 + v799 - v784 >= 32);
                            v1 = v801 = MEM[v784];
                        }
                    } else if (v17 >> 161 & 0x7 >= 2) {
                        if (2 - (v17 >> 161 & 0x7)) {
                            CALLDATACOPY(MEM[64] + 65, v717, v719);
                            MEM[MEM[64] + 33] = uint8(v17 >> 232);
                            MEM[MEM[64] + 32] = v715;
                            MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 32;
                            MEM[MEM[64] + 4 + 32] = 33 + v719;
                            MCOPY(MEM[64] + 4 + 64, MEM[64] + 32, 33 + v719);
                            MEM[MEM[64] + 4 + (33 + v719) + 64] = 0;
                            v802 = address(0x4444c5dc75cb358380d2e3de08a90).call(v621, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                            if (!v802) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v803 = v804 = 0;
                                if (v802) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                    require(v805.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v803 = v806 = new bytes[](v805.length);
                                    require(!((v806 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v805.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v806 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v805.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v806)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v805.length + 32 <= MEM[64] + RETURNDATASIZE());
                                    MCOPY(v806.data, v805.data, v805.length);
                                    v806[v805.length] = 0;
                                }
                                v1 = v807 = MEM[v803 + 32];
                            }
                        } else {
                            v808 = v809 = address(v17);
                            if (!uint8(v17 >> 224)) {
                                v810 = this;
                            } else {
                                v810 = v811 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                            }
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                v808 = v812 = v809 | 0x10000000000000000000000000000000000000000;
                                if (!(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v808 = v809 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v808;
                            v813, v1 = v809.swapOutWithCallback(bool(v17 & 0x10000000000000000000000000000000000000000), v715, uint256.max, address(v810)).gas(msg.gas);
                            if (!v813) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v1 = v814 = 0;
                                if (v813) {
                                    v815 = v816 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v815 = v817 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v815 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v815 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v815 - MEM[64] >= 32);
                                }
                                if (uint8(v17 >> 232)) {
                                    require(uint8(v17 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                                    v818 = _SafeDiv(v1, 10 ** uint8(v17 >> 232));
                                    v1 = v819 = _SafeMul(v818, 10 ** uint8(v17 >> 232));
                                }
                                if (v17 & 0x200000000000000000000000000000000000000000) {
                                    if (!(0x800000000000000000000000000000000000000000 & v17)) {
                                        0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v715);
                                    } else {
                                        0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v715);
                                    }
                                }
                            }
                        }
                    } else if (v17 >> 161 & 0x7) {
                        v820 = v821 = address(v17);
                        v822, /* uint112 */ v823, /* uint112 */ v824, v825 = v821.getReserves().gas(msg.gas);
                        if (!v822) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v823 = v826 = 0;
                            v824 = v827 = 0;
                            if (v822) {
                                v828 = v829 = 96;
                                if (96 > RETURNDATASIZE()) {
                                    v828 = v830 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v828 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v828 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v828 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v828 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v824 - uint112(v824)));
                                require(!(uint32(v825) - v825));
                            }
                            v831 = v832 = uint112(v824);
                            v831 = v833 = uint112(v823);
                            if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            }
                            v834 = _SafeMul(v831, v715);
                            require(!v834 | (10 ** 6 == v834 * 10 ** 6 / v834), Panic(17)); // arithmetic overflow or underflow
                            v835 = _SafeSub(v831, v715);
                            require(10 ** 6 - (v17 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v836 = _SafeMul(v835, 10 ** 6 - (v17 >> 168 & 0xfffff));
                            v837 = _SafeDiv(v834 * 10 ** 6, v836);
                            v1 = v838 = v837 + 1;
                            require(v837 <= v838, Panic(17)); // arithmetic overflow or underflow
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v838);
                            }
                            if (!(v17 & 0x8000000000000000000000000000000000000000000000000000)) {
                                if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                    v839 = v840 = MEM[64];
                                    v841 = v821.token1().gas(msg.gas);
                                    if (!v841) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v842 = v843 = 0x11950;
                                        v844 = v845 = 0;
                                        if (!v841) {
                                        }
                                    }
                                } else {
                                    v839 = v846 = MEM[64];
                                    v847 = v821.token0().gas(msg.gas);
                                    if (!v847) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v842 = v848 = 0x1192c;
                                        v844 = v849 = 0;
                                        if (!v847) {
                                        }
                                    }
                                }
                                if (32 > RETURNDATASIZE()) {
                                    require(!((v839 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v839 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v839)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v839 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v850 = v851 = v839 + RETURNDATASIZE();
                                } else {
                                    require(!((v839 + 32 > uint64.max) | (v839 + 32 < v839)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v839 + 32;
                                    v850 = v852 = v839 + 32;
                                }
                                require(v850 - v839 >= 32);
                                v844 = v853 = MEM[v839];
                                require(!(v853 - address(v853)));
                                v854 = new bytes[](68);
                                MEM[v854.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v854 + 36] = address(v821);
                                MEM[v854 + 68] = v838;
                                require(!((v854 + 128 > uint64.max) | (v854 + 128 < v854)), Panic(65)); // failed memory allocation (too much memory)
                                v855 = v854.length;
                                v856 = address(v844).transfer(address(v821), v838).gas(msg.gas);
                                if (!v856) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (RETURNDATASIZE()) {
                                        v857 = v858 = 1 != MEM[0];
                                    } else {
                                        v857 = !(address(v844)).code.size;
                                    }
                                    require(!v857, SafeERC20FailedOperation(address(v844)));
                                    // Unknown jump to Block ['0x1192cB0x1dcfB0x1d06', '0x11950B0x1dcfB0x1d06']. Refer to 3-address code (TAC);
                                }
                            }
                            varg3 = v859 = 0;
                            if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                if (!uint8(v17 >> 224)) {
                                    v860 = v861 = this;
                                    // Unknown jump to Block 0x3480B0x1dcfB0x1d06. Refer to 3-address code (TAC);
                                } else {
                                    v860 = v862 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                                    // Unknown jump to Block 0x3480B0x1dcfB0x1d06. Refer to 3-address code (TAC);
                                }
                            } else if (!uint8(v17 >> 224)) {
                                v860 = this;
                                // Unknown jump to Block 0x3480B0x1dcfB0x1d06. Refer to 3-address code (TAC);
                            } else {
                                v860 = v863 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                            }
                            require(v820.code.size);
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = varg3;
                            MEM[MEM[64] + 36] = varg3;
                            MEM[MEM[64] + 68] = address(v860);
                            MEM[MEM[64] + 100] = 128;
                            MEM[MEM[64] + 132] = v718;
                            CALLDATACOPY(MEM[64] + 132 + 32, v716, v718);
                            MEM[MEM[64] + 132 + v718 + 32] = 0;
                            v864 = v820.call(MEM[MEM[64]:MEM[64] + v31c50x31bdV0x1dcfV0x1d06 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 132 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!v864) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v864) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                if (v16 & 0x200000000000000000000000000000000000000000) {
                                    0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v715);
                                }
                            }
                        }
                    } else {
                        if (v17 & 0x400000000000000000000000000000000000000000) {
                            _allow = address(v17) | 0x10000000000000000000000000000000000000000;
                        } else {
                            _allow = address(v17);
                        }
                        if (!uint8(v17 >> 224)) {
                            v865 = this;
                        } else {
                            v865 = v866 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                        }
                        v867 = 0x1128(v715);
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            v868 = v869 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v868 = v870 = 0x1000276a4;
                        }
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = address(v865);
                        MEM[MEM[64] + 36] = v17 & 0x10000000000000000000000000000000000000000;
                        MEM[MEM[64] + 68] = v867;
                        MEM[MEM[64] + 100] = address(v868);
                        MEM[MEM[64] + 132] = 160;
                        MEM[MEM[64] + 164] = v719;
                        CALLDATACOPY(MEM[64] + 164 + 32, v717, v719);
                        MEM[MEM[64] + 164 + v719 + 32] = 0;
                        v871, v1, v1 = address(v17).call(MEM[MEM[64]:MEM[64] + v1e04V0x1d06 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 164 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).value(v720).gas(msg.gas);
                        if (!v871) {
                            RETURNDATACOPY(MEM[64], v720, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v871) {
                                v872 = v873 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v872 = v874 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v872 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v872 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v872 - MEM[64] >= 64, v720, v720);
                            }
                            if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            }
                            if (v17 & 0x200000000000000000000000000000000000000000) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v715);
                            }
                        }
                    }
                    require(v532 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v875 = v876 = MEM[(v532 << 5) + v3 + 32];
                } else {
                    v1 = v877 = 0;
                    if (0 == v17 >> 161 & 0x7 < 4) {
                        if (v17 >> 161 & 0x7 >= 6) {
                            if (6 - (v17 >> 161 & 0x7)) {
                                v878 = v879 = 0;
                                v880 = new struct(2);
                                v880.word0 = 32;
                                v881 = v880.data;
                                v880.word1 = varg3;
                                v882 = 0;
                                v883 = 0;
                                if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                    v882 = v884 = msg.data[v530] >> 96;
                                    v883 = v885 = 0x3c16(v884);
                                    v529 = v530 + 20;
                                    v527 = v528 - 20;
                                }
                                v886 = 0;
                                if (bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                    v886 = v887 = address(v17);
                                    v878 = v888 = 0x3c16(v887);
                                }
                                MEM[64] = MEM[64] + ((msg.data[v529] >> 248) + 1 << 5) + 32;
                                MEM[MEM[64] + 32] = v880;
                                v889 = v890 = MEM[64] + 64;
                                v891 = v892 = v529 + 1;
                                while (v891 < v529 + v527) {
                                    v893 = v894 = v891 + 6;
                                    if (0 == (msg.data[v891 + 4] >> 248 & 0x1f == 31)) {
                                        if (msg.data[v891 + 4] >> 248 & 0x1f >= 3) {
                                            if ((msg.data[v891 + 4] >> 248 & 0x1f) - 3) {
                                                if (4 - (msg.data[v891 + 4] >> 248 & 0x1f)) {
                                                    v895 = v896 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                } else {
                                                    v895 = v897 = 0x4444c5dc75cb358380d2e3de08a90;
                                                }
                                            } else {
                                                v895 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                            }
                                        } else if (msg.data[v891 + 4] >> 248 & 0x1f) {
                                            if (1 - (msg.data[v891 + 4] >> 248 & 0x1f)) {
                                                v895 = v898 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else {
                                                v895 = v899 = msg.sender;
                                            }
                                        } else {
                                            v895 = v900 = this;
                                        }
                                    } else {
                                        v895 = v901 = msg.data[v894] >> 96;
                                        v893 = v891 + 26;
                                    }
                                    v902 = v903 = 0;
                                    if (msg.data[v891 + 4] >> 254 == 1) {
                                        v902 = v904 = msg.data[v893] >> 96;
                                        v893 = v905 = v893 + 20;
                                        v906 = this.balance;
                                        v907 = this.balance;
                                        require(v906 >= v904, InsufficientBalance(v907, v904));
                                    }
                                    v908 = v909 = MEM[64];
                                    MEM[v909] = (msg.data[v891] >> 224) + v891 - (v893 + uint8(msg.data[v891 + 4] >> 240) * 10) + 4;
                                    MEM[64] = v909 + ((msg.data[v891] >> 224) + v891 - (v893 + uint8(msg.data[v891 + 4] >> 240) * 10) + 4) + 32;
                                    CALLDATACOPY(v909 + 32, v893 + uint8(msg.data[v891 + 4] >> 240) * 10, (msg.data[v891] >> 224) + v891 - (v893 + uint8(msg.data[v891 + 4] >> 240) * 10) + 4);
                                    while (v893 < v893 + uint8(msg.data[v891 + 4] >> 240) * 10) {
                                        require(msg.data[v893] >> 248 < (msg.data[v529] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v908 = v910 = MEM[(msg.data[v893] >> 248 << 5) + MEM[64] + 32];
                                        if (0 == bool(msg.data[v893] & 0x8000000000000000000000000000000000000000000000000000)) {
                                            v911 = v912 = 10;
                                            MCOPY(v909 + (msg.data[v893] >> 176 & 0x3fffffff) + 32, v910 + (msg.data[v893] >> 208 & 0xfffff) + 32, msg.data[v893] >> 228 & 0xfffff);
                                        } else if (!(msg.data[v893] & 0x4000000000000000000000000000000000000000000000000000)) {
                                            if (msg.data[v893] >> 228 & 0xfffff) {
                                                v911 = v913 = 10;
                                                v908 = v914 = v910 + (msg.data[v893] >> 228 & 0xfffff);
                                                MEM[v914] = MEM[v910] - (msg.data[v893] >> 228 & 0xfffff);
                                                MEM[(msg.data[v893] >> 243 & 0x1fe0) + MEM[64] + 32] = v914;
                                            } else {
                                                v911 = 10;
                                            }
                                            if (msg.data[v893] >> 208 & 0xfffff) {
                                                MEM[v908] = MEM[v908] - (msg.data[v893] >> 208 & 0xfffff);
                                            }
                                        } else {
                                            v902 = MEM[32 + (v910 + (msg.data[v893] >> 208 & 0xfffff))] >> (msg.data[v893] >> 228 & 0xfffff);
                                            v911 = v915 = 10;
                                        }
                                        v893 = v893 + v911;
                                    }
                                    if (0 == msg.data[v891 + 4] >> 254 < 2) {
                                        if (0 == (msg.data[v891 + 4] >> 254 == 2)) {
                                            v916 = v895.staticcall(MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06 + 32:v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v917 = v918 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v917 = v919 = new bytes[](RETURNDATASIZE());
                                                require(!((v919 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v919 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v919)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v919.data, 0, RETURNDATASIZE());
                                            }
                                            v920 = v921 = bool(v916);
                                        } else {
                                            v920 = v922 = v895.delegatecall(MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06 + 32:v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v917 = v923 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v917 = v924 = new bytes[](RETURNDATASIZE());
                                                require(!((v924 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v924 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v924)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v924.data, 0, RETURNDATASIZE());
                                            }
                                        }
                                        v925 = v926 = bool(v920);
                                    } else {
                                        v925 = v895.call(MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06 + 32:v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06 + 32 + MEM[v17f7_0x3V0x30cb0x31c5V0x1d82V0x1d06]], MEM[0:0]).value(v902).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v917 = v927 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v917 = new bytes[](RETURNDATASIZE());
                                            require(!((v917 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v917 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v917)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v917.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v928 = !v925;
                                    if (v928) {
                                        v928 = v929 = !(msg.data[v891 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (v928) {
                                        require(!MEM[v917], v917 + 32, MEM[v917]);
                                        revert(FailedCall());
                                    } else {
                                        MEM[v889] = v917;
                                        v889 = v889 + 32;
                                        v891 = (msg.data[v891] >> 224) + v891 + 4;
                                    }
                                }
                                if (bool(v17 & 0x400000000000000000000000000000000000000000)) {
                                    v930 = 0x3c16(v882);
                                    if (v883 <= v930) {
                                        v931 = v932 = 0;
                                    } else {
                                        v931 = v933 = v883 - v930;
                                    }
                                    require(v931 <= varg3, v931, varg3);
                                }
                                if (0 == bool(v17 & 0x200000000000000000000000000000000000000000)) {
                                    require(uint8(v17 >> 232) < (msg.data[v529] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v1 = MEM[MEM[(uint8(v17 >> 232) << 5) + MEM[64] + 32] + 32];
                                } else {
                                    v934 = 0x3c16(v886);
                                    require(v934 >= v878, InsufficientAmountOut(v934, v878));
                                    v1 = v935 = v934 - v878;
                                }
                            } else {
                                MEM[64] = MEM[64] + v528 + 69;
                                CALLDATACOPY(MEM[64] + 69, v530, v528);
                                v936 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(uint8(v17 >> 232), varg3).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v937 = v938 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v937 = new bytes[](RETURNDATASIZE());
                                    require(!((v937 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v937 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v937)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v937.data, 0, RETURNDATASIZE());
                                }
                                if (!v936) {
                                    require(!MEM[v937], v937 + 32, MEM[v937]);
                                    revert(FailedCall());
                                } else {
                                    v1 = v939 = MEM[32 + v937];
                                }
                            }
                        } else {
                            if (4 - (v17 >> 161 & 0x7)) {
                                if (0 == bool(v17 & 0x10000000000000000000000000000000000000000)) {
                                    v940 = v941 = MEM[64];
                                    require(!(msg.data[v530 + 96] - address(msg.data[v530 + 96])));
                                    require(msg.data[v530 + 224] < 2);
                                    v942 = new uint256[](v528 - 288);
                                    CALLDATACOPY(v942.data, v530 + 288, v528 - 288);
                                    MEM[v942 + (v528 - 288) + 32] = 0;
                                    v943 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v530], msg.data[v530 + 32], msg.data[v530 + 64], address(msg.data[v530 + 96]), msg.data[v530 + 128], msg.data[v530 + 160], msg.data[v530 + 192], msg.data[v530 + 224], msg.data[uint8.max + 1 + v530], v942, address(v17), 0).gas(msg.gas);
                                    if (!v943) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v944 = 0;
                                        if (!v943) {
                                        }
                                    }
                                } else {
                                    v940 = v945 = MEM[64];
                                    require(!(msg.data[v530 + 96] - address(msg.data[v530 + 96])));
                                    require(msg.data[v530 + 224] < 2);
                                    v946 = new uint256[](v528 - 288);
                                    CALLDATACOPY(v946.data, v530 + 288, v528 - 288);
                                    MEM[v946 + (v528 - 288) + 32] = 0;
                                    v947 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v530], msg.data[v530 + 32], msg.data[v530 + 64], address(msg.data[v530 + 96]), msg.data[v530 + 128], msg.data[v530 + 160], msg.data[v530 + 192], msg.data[v530 + 224], msg.data[uint8.max + 1 + v530], v946, address(v17), varg3).gas(msg.gas);
                                    if (!v947) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v948 = 0;
                                        if (!v947) {
                                        }
                                    }
                                }
                            } else if (!(0x10000000000000000000000000000000000000000 & v17)) {
                                v940 = v949 = MEM[64];
                                v950 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(varg3, address(v17), 0).gas(msg.gas);
                                if (!v950) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v951 = 0;
                                    if (!v950) {
                                    }
                                }
                            } else {
                                v940 = v952 = MEM[64];
                                v953 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v17), varg3, 0).gas(msg.gas);
                                if (!v953) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v954 = 0;
                                    if (!v953) {
                                    }
                                }
                            }
                            v955 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v955 = v956 = RETURNDATASIZE();
                            }
                            require(!((v940 + (v955 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v940 + (v955 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v940)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v940 + (v955 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v940 + v955 - v940 >= 32);
                            v1 = v957 = MEM[v940];
                        }
                    } else if (v17 >> 161 & 0x7 >= 2) {
                        if (2 - (v17 >> 161 & 0x7)) {
                            CALLDATACOPY(MEM[64] + 65, v530, v528);
                            MEM[MEM[64] + 33] = uint8(v17 >> 232);
                            MEM[MEM[64] + 32] = varg3;
                            MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 32;
                            MEM[MEM[64] + 4 + 32] = 33 + v528;
                            MCOPY(MEM[64] + 4 + 64, MEM[64] + 32, 33 + v528);
                            MEM[MEM[64] + 4 + (33 + v528) + 64] = 0;
                            v958 = address(0x4444c5dc75cb358380d2e3de08a90).call(v621, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                            if (!v958) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v959 = v960 = 0;
                                if (v958) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                    require(v961.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v959 = v962 = new bytes[](v961.length);
                                    require(!((v962 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v961.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v962 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v961.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v962)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v961.length + 32 <= MEM[64] + RETURNDATASIZE());
                                    MCOPY(v962.data, v961.data, v961.length);
                                    v962[v961.length] = 0;
                                }
                                v1 = v963 = MEM[v959 + 32];
                            }
                        } else {
                            v964 = v965 = address(v17);
                            if (!uint8(v17 >> 224)) {
                                v966 = this;
                            } else {
                                v966 = v967 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                            }
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                v964 = v968 = v965 | 0x10000000000000000000000000000000000000000;
                                if (!(v17 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v964 = v965 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v964;
                            v969, v1 = v965.swapOutWithCallback(bool(v17 & 0x10000000000000000000000000000000000000000), varg3, uint256.max, address(v966)).gas(msg.gas);
                            if (!v969) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v1 = v970 = 0;
                                if (v969) {
                                    v971 = v972 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v971 = v973 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v971 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v971 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v971 - MEM[64] >= 32);
                                }
                                if (uint8(v17 >> 232)) {
                                    require(uint8(v17 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                                    v974 = _SafeDiv(v1, 10 ** uint8(v17 >> 232));
                                    v1 = v975 = _SafeMul(v974, 10 ** uint8(v17 >> 232));
                                }
                                if (v17 & 0x200000000000000000000000000000000000000000) {
                                    if (!(0x800000000000000000000000000000000000000000 & v17)) {
                                        0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                    } else {
                                        0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                    }
                                }
                            }
                        }
                    } else if (v17 >> 161 & 0x7) {
                        v976 = v977 = address(v17);
                        v978, /* uint112 */ v979, /* uint112 */ v980, v981 = v977.getReserves().gas(msg.gas);
                        if (!v978) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v979 = v982 = 0;
                            v980 = v983 = 0;
                            if (v978) {
                                v984 = v985 = 96;
                                if (96 > RETURNDATASIZE()) {
                                    v984 = v986 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v984 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v984 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v984 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v984 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v980 - uint112(v980)));
                                require(!(uint32(v981) - v981));
                            }
                            v987 = v988 = uint112(v980);
                            v987 = v989 = uint112(v979);
                            if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            }
                            v990 = _SafeMul(v987, varg3);
                            require(!v990 | (10 ** 6 == v990 * 10 ** 6 / v990), Panic(17)); // arithmetic overflow or underflow
                            v991 = _SafeSub(v987, varg3);
                            require(10 ** 6 - (v17 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v992 = _SafeMul(v991, 10 ** 6 - (v17 >> 168 & 0xfffff));
                            v993 = _SafeDiv(v990 * 10 ** 6, v992);
                            v1 = v994 = v993 + 1;
                            require(v993 <= v994, Panic(17)); // arithmetic overflow or underflow
                            if (v17 & 0x400000000000000000000000000000000000000000) {
                                0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v994);
                            }
                            if (!(v17 & 0x8000000000000000000000000000000000000000000000000000)) {
                                if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                    v995 = v996 = MEM[64];
                                    v997 = v977.token1().gas(msg.gas);
                                    if (!v997) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v998 = v999 = 0x11950;
                                        v1000 = v1001 = 0;
                                        if (!v997) {
                                        }
                                    }
                                } else {
                                    v995 = v1002 = MEM[64];
                                    v1003 = v977.token0().gas(msg.gas);
                                    if (!v1003) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v998 = v1004 = 0x1192c;
                                        v1000 = v1005 = 0;
                                        if (!v1003) {
                                        }
                                    }
                                }
                                if (32 > RETURNDATASIZE()) {
                                    require(!((v995 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v995 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v995)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v995 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v1006 = v1007 = v995 + RETURNDATASIZE();
                                } else {
                                    require(!((v995 + 32 > uint64.max) | (v995 + 32 < v995)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v995 + 32;
                                    v1006 = v1008 = v995 + 32;
                                }
                                require(v1006 - v995 >= 32);
                                v1000 = v1009 = MEM[v995];
                                require(!(v1009 - address(v1009)));
                                v1010 = new bytes[](68);
                                MEM[v1010.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v1010 + 36] = address(v977);
                                MEM[v1010 + 68] = v994;
                                require(!((v1010 + 128 > uint64.max) | (v1010 + 128 < v1010)), Panic(65)); // failed memory allocation (too much memory)
                                v1011 = v1010.length;
                                v1012 = address(v1000).transfer(address(v977), v994).gas(msg.gas);
                                if (!v1012) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (RETURNDATASIZE()) {
                                        v1013 = v1014 = 1 != MEM[0];
                                    } else {
                                        v1013 = !(address(v1000)).code.size;
                                    }
                                    require(!v1013, SafeERC20FailedOperation(address(v1000)));
                                    // Unknown jump to Block ['0x1192cB0x1d82B0x1d06', '0x11950B0x1d82B0x1d06']. Refer to 3-address code (TAC);
                                }
                            }
                            varg3 = v1015 = 0;
                            if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                                if (!uint8(v17 >> 224)) {
                                    v1016 = v1017 = this;
                                    // Unknown jump to Block 0x3480B0x1d82B0x1d06. Refer to 3-address code (TAC);
                                } else {
                                    v1016 = v1018 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                                    // Unknown jump to Block 0x3480B0x1d82B0x1d06. Refer to 3-address code (TAC);
                                }
                            } else if (!uint8(v17 >> 224)) {
                                v1016 = this;
                                // Unknown jump to Block 0x3480B0x1d82B0x1d06. Refer to 3-address code (TAC);
                            } else {
                                v1016 = v1019 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                            }
                            require(v976.code.size);
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = varg3;
                            MEM[MEM[64] + 36] = varg3;
                            MEM[MEM[64] + 68] = address(v1016);
                            MEM[MEM[64] + 100] = 128;
                            MEM[MEM[64] + 132] = v527;
                            CALLDATACOPY(MEM[64] + 132 + 32, v529, v527);
                            MEM[MEM[64] + 132 + v527 + 32] = 0;
                            v1020 = v976.call(MEM[MEM[64]:MEM[64] + v31c50x31bdV0x1d82V0x1d06 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 132 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!v1020) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v1020) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                if (v16 & 0x200000000000000000000000000000000000000000) {
                                    0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                }
                            }
                        }
                    } else {
                        if (v17 & 0x400000000000000000000000000000000000000000) {
                            _allow = address(v17) | 0x10000000000000000000000000000000000000000;
                        } else {
                            _allow = address(v17);
                        }
                        if (!uint8(v17 >> 224)) {
                            v1021 = this;
                        } else {
                            v1021 = v1022 = address(msg.data[(v17 >> 219 & 0x1fe0) + v1]);
                        }
                        v1023 = 0x1128(varg3);
                        if (bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            v1024 = v1025 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v1024 = v1026 = 0x1000276a4;
                        }
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = address(v1021);
                        MEM[MEM[64] + 36] = v17 & 0x10000000000000000000000000000000000000000;
                        MEM[MEM[64] + 68] = v1023;
                        MEM[MEM[64] + 100] = address(v1024);
                        MEM[MEM[64] + 132] = 160;
                        MEM[MEM[64] + 164] = v528;
                        CALLDATACOPY(MEM[64] + 164 + 32, v530, v528);
                        MEM[MEM[64] + 164 + v528 + 32] = 0;
                        v1027, v1, v1 = address(v17).call(MEM[MEM[64]:MEM[64] + v1d13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 164 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).value(v877).gas(msg.gas);
                        if (!v1027) {
                            RETURNDATACOPY(MEM[64], v877, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v1027) {
                                v1028 = v1029 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v1028 = v1030 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v1028 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v1028 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v1028 - MEM[64] >= 64, v877, v877);
                            }
                            if (!bool(!(v17 & 0x10000000000000000000000000000000000000000))) {
                            }
                            if (v17 & 0x200000000000000000000000000000000000000000) {
                                0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                            }
                        }
                    }
                    require(v532 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v875 = v1031 = MEM[(v532 << 5) + v3 + 32];
                }
                v712 = v875 + varg3;
                require(v875 <= v712, Panic(17)); // arithmetic overflow or underflow
            }
            require(v3 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[(v3 << 5) + v3 + 32] = v712;
            v1 = v1 + v3;
        }
    }
    require(uint8(v0 >> 232) < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1032 = MEM[(uint8(v0 >> 232) << 5) + v3 + 32];
    if (!(v0 & 0x2000000000000000000000000000000000000000000000000)) {
        require(v1032 >= varg3, InsufficientAmountOut(v1032, varg3));
        v1033 = v1034, v1035 = v1036, v1037 = v1038 = 0x1bbc(v1032 - varg3, 7133, 10 ** 24);
    } else {
        v1033 = v1039, v1035 = v1040, v1037 = v1041 = 0x1bbc(v1032, 7133, 10 ** 24);
    }
    require(msg.gas <= uint24(v1037 >> 208), msg.gas, uint24(v1037 >> 208));
    require(v1033 / v1035 >= (uint24(v1037 >> 208) - msg.gas) * msg.gas, InsufficientProfit(v1033 / v1035, (uint24(v1037 >> 208) - msg.gas) * msg.gas));
    v1042 = _SafeMul(v1033 / v1035 - (uint24(v1037 >> 208) - msg.gas) * msg.gas, v1037 >> 194 & 0x3fff);
    v5 = v1043 = v1042 / 10000;
    if (v1043 <= v5) {
    }
    if (v5 > v9) {
        v5 = v1044 = this.balance;
        if (v5 <= v1044) {
        }
        if (v5 > v9) {
            v1045, /* uint256 */ v1046 = block.coinbase.call().value(v5).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v1047 = v1048 = new bytes[](RETURNDATASIZE());
                require(!((v1048 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1048 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1048)), Panic(65)); // failed memory allocation (too much memory)
                v1046 = v1048.data;
                RETURNDATACOPY(v1046, 0, RETURNDATASIZE());
            }
            return v1032;
        } else {
            return v1032;
        }
    } else {
        return v1032;
    }
}

function 0x1bbc(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require((varg0 * (v0 & 0x1fffffffffffffffffffffffffffffffffffffffffffffff) / varg0 == v0 & 0x1fffffffffffffffffffffffffffffffffffffffffffffff) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * (v0 & 0x1fffffffffffffffffffffffffffffffffffffffffffffff), varg2, v0;
}

function 0x1f65(address varg0, uint256 varg1) private { 
    require(varg0.code.size);
    v0, /* uint256 */ v1 = varg0.deposit().value(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x1fc9(address varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = varg0.transfer(varg1, varg2).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    if (RETURNDATASIZE()) {
        v3 = v4 = 1 != MEM[0];
    } else {
        v3 = !varg0.code.size;
    }
    require(!v3, SafeERC20FailedOperation(varg0));
    return ;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x2283(uint256 varg0) private { 
    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
    v0, /* uint256 */ v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg0).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x39bf(address varg0, uint256 varg1) private { 
    require(varg0.code.size);
    v0, /* uint256 */ v1 = varg0.withdraw(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x3a22(address varg0) private { 
    if (bool(varg0)) {
        return varg0 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
    } else {
        return !varg0;
    }
}

function 0x3c16(uint256 varg0) private { 
    v0 = 0x3a22(varg0);
    if (!v0) {
        v1, /* uint256 */ v2 = address(varg0).balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        if (v1) {
            v3 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = v4 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v3 - MEM[64] >= 32);
            return v2;
        } else {
            return 0;
        }
    } else {
        return this.balance;
    }
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function allow( varg0) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = msg.sender == address(0xd3ff34fbe635e294eb29810a9edbef0bbae52a63);
    if (msg.sender != address(0xd3ff34fbe635e294eb29810a9edbef0bbae52a63)) {
        v0 = v2 = msg.sender == address(0xd3f172e54bac86b49806be55bdd79ac0e6be9c56);
    }
    if (!v0) {
        v0 = v3 = msg.sender == address(0xd3f2431ec18abfa59c26da1a7bd686fa1d135866);
    }
    if (!v0) {
        v0 = v4 = address(0xd3f314c24dfa8723b23d979ec5e4b96c15353366) == msg.sender;
    }
    require(v0, InvalidCaller(msg.sender, 4));
    _allow = varg0;
}

function takerInteraction((uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256) varg0, bytes varg1, bytes32 varg2, address varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 480);
    require(uint8.max + 1 <= msg.data.length - 4);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = varg0.data;
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(!(varg1 - address(varg1)));
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max);
    require(4 + varg4 + varg4.length + 32 <= msg.data.length);
    require(msg.sender == address(0x111111125421ca6dc452d289314280a0f8842a65), InvalidCaller(msg.sender, address(0x111111125421ca6dc452d289314280a0f8842a65)));
    require(!(address(varg1) - this), kkwlMint(address(varg1), this));
    v1 = 0x1a4b(varg4.data, varg4.length, varg2, varg3);
}

function dexCallback(address token_, uint256 amount_) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0 = _allow;
    require(msg.sender == address(v0), InvalidCaller(msg.sender, address(v0)));
    _allow = 0;
    if (v0 & 0x10000000000000000000000000000000000000000) {
        if (!(0x20000000000000000000000000000000000000000 & v0)) {
            0x39bf(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, amount_);
        } else {
            0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, amount_);
        }
    }
    v1 = 0x3a22(token_);
    if (!v1) {
        0x1fc9(token_, 0x52aa899454998be5b000ad077a46bbe360f4e497, amount_);
        exit;
    } else {
        require(this.balance >= amount_, InsufficientBalance(this.balance, amount_));
        v2, /* uint256 */ v3 = address(0x52aa899454998be5b000ad077a46bbe360f4e497).call().value(amount_).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v4 = v5 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v4 = v6 = new bytes[](RETURNDATASIZE());
            require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
            v3 = v6.data;
            RETURNDATACOPY(v3, 0, RETURNDATASIZE());
        }
        if (!v2) {
            require(!MEM[v4], v4 + 32, MEM[v4]);
            revert(FailedCall());
        } else {
            exit;
        }
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.sender == address(0x4444c5dc75cb358380d2e3de08a90), InvalidCaller(msg.sender, address(0x4444c5dc75cb358380d2e3de08a90)));
    v1 = new struct(2);
    v1.word0 = 32;
    v2 = v1.data;
    v1.word1 = rawData.word1;
    MEM[MEM[64] + 32] = v1;
    v3 = v4 = MEM[64] + 64;
    v5 = v6 = 4 + rawData + 32 + 33 + 1;
    while (v5 < 4 + rawData + 32 + 33 + (msg.data[4 + rawData] - 33)) {
        v7 = v8 = v5 + 6;
        if (0 == (msg.data[v5 + 4] >> 248 & 0x1f == 31)) {
            if (msg.data[v5 + 4] >> 248 & 0x1f >= 3) {
                if ((msg.data[v5 + 4] >> 248 & 0x1f) - 3) {
                    if (4 - (msg.data[v5 + 4] >> 248 & 0x1f)) {
                        v9 = v10 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                    } else {
                        v9 = v11 = 0x4444c5dc75cb358380d2e3de08a90;
                    }
                } else {
                    v9 = 0x111111125421ca6dc452d289314280a0f8842a65;
                }
            } else if (msg.data[v5 + 4] >> 248 & 0x1f) {
                if (1 - (msg.data[v5 + 4] >> 248 & 0x1f)) {
                    v9 = v12 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else {
                    v9 = v13 = msg.sender;
                }
            } else {
                v9 = v14 = this;
            }
        } else {
            v9 = v15 = msg.data[v8] >> 96;
            v7 = v5 + 26;
        }
        v16 = v17 = 0;
        if (msg.data[v5 + 4] >> 254 == 1) {
            v16 = v18 = msg.data[v7] >> 96;
            v7 = v19 = v7 + 20;
            v20 = this.balance;
            v21 = this.balance;
            require(v20 >= v18, InsufficientBalance(v21, v18));
        }
        v22 = v23 = MEM[64];
        MEM[v23] = (msg.data[v5] >> 224) + v5 - (v7 + uint8(msg.data[v5 + 4] >> 240) * 10) + 4;
        MEM[64] = v23 + ((msg.data[v5] >> 224) + v5 - (v7 + uint8(msg.data[v5 + 4] >> 240) * 10) + 4) + 32;
        CALLDATACOPY(v23 + 32, v7 + uint8(msg.data[v5 + 4] >> 240) * 10, (msg.data[v5] >> 224) + v5 - (v7 + uint8(msg.data[v5 + 4] >> 240) * 10) + 4);
        while (v7 < v7 + uint8(msg.data[v5 + 4] >> 240) * 10) {
            require(msg.data[v7] >> 248 < (msg.data[4 + rawData + 32 + 33] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v22 = v24 = MEM[(msg.data[v7] >> 248 << 5) + MEM[64] + 32];
            if (0 == bool(msg.data[v7] & 0x8000000000000000000000000000000000000000000000000000)) {
                v25 = v26 = 10;
                MCOPY(v23 + (msg.data[v7] >> 176 & 0x3fffffff) + 32, v24 + (msg.data[v7] >> 208 & 0xfffff) + 32, msg.data[v7] >> 228 & 0xfffff);
            } else if (!(msg.data[v7] & 0x4000000000000000000000000000000000000000000000000000)) {
                if (msg.data[v7] >> 228 & 0xfffff) {
                    v25 = v27 = 10;
                    v22 = v28 = v24 + (msg.data[v7] >> 228 & 0xfffff);
                    MEM[v28] = MEM[v24] - (msg.data[v7] >> 228 & 0xfffff);
                    MEM[(msg.data[v7] >> 243 & 0x1fe0) + MEM[64] + 32] = v28;
                } else {
                    v25 = 10;
                }
                if (msg.data[v7] >> 208 & 0xfffff) {
                    MEM[v22] = MEM[v22] - (msg.data[v7] >> 208 & 0xfffff);
                }
            } else {
                v16 = MEM[32 + (v24 + (msg.data[v7] >> 208 & 0xfffff))] >> (msg.data[v7] >> 228 & 0xfffff);
                v25 = v29 = 10;
            }
            v7 = v7 + v25;
        }
        if (0 == msg.data[v5 + 4] >> 254 < 2) {
            if (0 == (msg.data[v5 + 4] >> 254 == 2)) {
                v30 = v9.staticcall(MEM[v17f7_0x3V0x8ee + 32:v17f7_0x3V0x8ee + 32 + MEM[v17f7_0x3V0x8ee]], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v31 = v32 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v31 = v33 = new bytes[](RETURNDATASIZE());
                    require(!((v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v33)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v33.data, 0, RETURNDATASIZE());
                }
                v34 = v35 = bool(v30);
            } else {
                v34 = v36 = v9.delegatecall(MEM[v17f7_0x3V0x8ee + 32:v17f7_0x3V0x8ee + 32 + MEM[v17f7_0x3V0x8ee]], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v31 = v37 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v31 = v38 = new bytes[](RETURNDATASIZE());
                    require(!((v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v38.data, 0, RETURNDATASIZE());
                }
            }
            v39 = v40 = bool(v34);
        } else {
            v39 = v9.call(MEM[v17f7_0x3V0x8ee + 32:v17f7_0x3V0x8ee + 32 + MEM[v17f7_0x3V0x8ee]], MEM[0:0]).value(v16).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v31 = v41 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v31 = new bytes[](RETURNDATASIZE());
                require(!((v31 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v31 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v31)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v31.data, 0, RETURNDATASIZE());
            }
        }
        v42 = !v39;
        if (v42) {
            v42 = v43 = !(msg.data[v5 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
        }
        if (v42) {
            require(!MEM[v31], v31 + 32, MEM[v31]);
            revert(FailedCall());
        } else {
            MEM[v3] = v31;
            v3 = v3 + 32;
            v5 = (msg.data[v5] >> 224) + v5 + 4;
        }
    }
    require(rawData.word2 >> 248 < (msg.data[4 + rawData + 32 + 33] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v44 = new uint256[](MEM[MEM[(rawData.word2 >> 248 << 5) + MEM[64] + 32]]);
    MCOPY(v44.data, MEM[(rawData.word2 >> 248 << 5) + MEM[64] + 32] + 32, MEM[MEM[(rawData.word2 >> 248 << 5) + MEM[64] + 32]]);
    MEM[MEM[64] + MEM[MEM[(rawData.word2 >> 248 << 5) + MEM[64] + 32]] + 64] = 0;
    return v44;
}

function convert(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (0 == varg0 >> 248 & 0x1f < 4) {
        if (0 == (varg0 >> 248 & 0x1f == 4)) {
            v0 = v1 = varg1 - varg2;
            require(!((varg2 >= 0) & (v1 > varg1) | (varg2 < 0) & (v1 < varg1)), Panic(17)); // arithmetic overflow or underflow
        } else {
            v0 = v2 = varg1 + varg2;
            require(!((varg1 >= 0) & (v2 < varg2) | (varg1 < 0) & (v2 >= varg2)), Panic(17)); // arithmetic overflow or underflow
        }
        v3 = v4 = bool(varg0 >> 248 & 0x40);
        v5 = v6 = !(varg0 >> 248 & 0x80);
    } else {
        if (varg0 >> 248 & 0x1f >= 2) {
            if (!(2 - (varg0 >> 248 & 0x1f))) {
            }
        } else {
            if (varg0 >> 248 & 0x1f) {
                v7 = v8 = int128(varg1);
            } else {
                v7 = v9 = varg1 >> 128;
            }
            v0 = v10 = int128(v7);
        }
        v3 = v11 = !(varg0 >> 248 & 0x40);
        v5 = v12 = bool(varg0 >> 248 & 0x80);
    }
    if (v0 < 0) {
        require(!v5, v0, varg0 >> 248);
        if (v3) {
            v0 = v13 = 0x1128(v0);
        }
    }
    if (0x20 & varg0 >> 248) {
        v0 = v14 = 0x1128(v0);
    }
    return v0;
}

function swap(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = msg.sender == address(0xd3ff34fbe635e294eb29810a9edbef0bbae52a63);
    if (msg.sender != address(0xd3ff34fbe635e294eb29810a9edbef0bbae52a63)) {
        v0 = v2 = msg.sender == address(0xd3f172e54bac86b49806be55bdd79ac0e6be9c56);
    }
    if (!v0) {
        v0 = v3 = msg.sender == address(0xd3f2431ec18abfa59c26da1a7bd686fa1d135866);
    }
    if (!v0) {
        v0 = v4 = address(0xd3f314c24dfa8723b23d979ec5e4b96c15353366) == msg.sender;
    }
    require(v0, InvalidCaller(msg.sender, 4));
    v5 = v6 = 0;
    if (varg0 & 0x8000000000000000000000000000000000000000000000000000000000000000) {
        v7 = v8 = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg0;
        v9 = v10 = 120;
        v11 = v12 = msg.data.length - 120;
    } else {
        v9 = v13 = 68;
        v11 = v14 = msg.data.length - 68;
    }
    if (v5) {
        v15, v16 = address(0x111111125421ca6dc452d289314280a0f8842a65).rawRemainingInvalidatorForOrder(address(v5), v5).gas(msg.gas);
        require(v15, MEM[64], RETURNDATASIZE());
        v16 = v17 = 0;
        if (v15) {
            v18 = v19 = 32;
            if (32 > RETURNDATASIZE()) {
                v18 = v20 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v18 - MEM[64] >= 32);
        }
        if (v16) {
            v7 = v21 = ~v16;
        }
    }
    v22 = 0x1a4b(v9, v11, v7, varg1);
}

function execute( varg0) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = msg.sender == address(0xd3ff34fbe635e294eb29810a9edbef0bbae52a63);
    if (msg.sender != address(0xd3ff34fbe635e294eb29810a9edbef0bbae52a63)) {
        v0 = v2 = msg.sender == address(0xd3f172e54bac86b49806be55bdd79ac0e6be9c56);
    }
    if (!v0) {
        v0 = v3 = msg.sender == address(0xd3f2431ec18abfa59c26da1a7bd686fa1d135866);
    }
    if (!v0) {
        v0 = v4 = address(0xd3f314c24dfa8723b23d979ec5e4b96c15353366) == msg.sender;
    }
    require(v0, InvalidCaller(msg.sender, 4));
    v5 = new struct(1);
    require(!((v5 + 32 > uint64.max) | (v5 + 32 < v5)), Panic(65)); // failed memory allocation (too much memory)
    v5.word0 = 0;
    MEM[MEM[64] + 32] = v5;
    v6 = v7 = MEM[64] + 64;
    v8 = v9 = 5;
    while (1) {
        if (v8 < 4 + (msg.data.length - 4)) {
            v10 = v11 = v8 + 6;
            if (0 == (msg.data[v8 + 4] >> 248 & 0x1f == 31)) {
                if (msg.data[v8 + 4] >> 248 & 0x1f >= 3) {
                    if ((msg.data[v8 + 4] >> 248 & 0x1f) - 3) {
                        if (4 - (msg.data[v8 + 4] >> 248 & 0x1f)) {
                            v12 = v13 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                        } else {
                            v12 = v14 = 0x4444c5dc75cb358380d2e3de08a90;
                        }
                    } else {
                        v12 = v15 = 0x111111125421ca6dc452d289314280a0f8842a65;
                    }
                } else if (msg.data[v8 + 4] >> 248 & 0x1f) {
                    if (1 - (msg.data[v8 + 4] >> 248 & 0x1f)) {
                        v12 = v16 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else {
                        v12 = v17 = msg.sender;
                    }
                } else {
                    v12 = v18 = this;
                }
            } else {
                v12 = v19 = msg.data[v11] >> 96;
                v10 = v20 = v8 + 26;
            }
            v21 = v22 = 0;
            if (msg.data[v8 + 4] >> 254 == 1) {
                v21 = v23 = msg.data[v10] >> 96;
                v10 = v24 = v10 + 20;
                v25 = this.balance;
                v26 = this.balance;
                require(v25 >= v23, InsufficientBalance(v26, v23));
            }
            v27 = (msg.data[v8] >> 224) + v8 - (v10 + uint8(msg.data[v8 + 4] >> 240) * 10) + 4;
            v28 = v29 = MEM[64];
            MEM[v29] = v27;
            MEM[64] = v29 + v27 + 32;
            CALLDATACOPY(v29 + 32, v10 + uint8(msg.data[v8 + 4] >> 240) * 10, v27);
            while (v10 < v10 + uint8(msg.data[v8 + 4] >> 240) * 10) {
                require(msg.data[v10] >> 248 < (varg0 >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v28 = v30 = MEM[(msg.data[v10] >> 248 << 5) + MEM[64] + 32];
                if (0 == bool(msg.data[v10] & 0x8000000000000000000000000000000000000000000000000000)) {
                    v31 = v32 = 10;
                    MCOPY(v29 + (msg.data[v10] >> 176 & 0x3fffffff) + 32, v30 + (msg.data[v10] >> 208 & 0xfffff) + 32, msg.data[v10] >> 228 & 0xfffff);
                } else if (!(msg.data[v10] & 0x4000000000000000000000000000000000000000000000000000)) {
                    if (msg.data[v10] >> 228 & 0xfffff) {
                        v31 = v33 = 10;
                        v28 = v34 = v30 + (msg.data[v10] >> 228 & 0xfffff);
                        MEM[v34] = MEM[v30] - (msg.data[v10] >> 228 & 0xfffff);
                        MEM[(msg.data[v10] >> 243 & 0x1fe0) + MEM[64] + 32] = v34;
                    } else {
                        v31 = v35 = 10;
                    }
                    if (msg.data[v10] >> 208 & 0xfffff) {
                        MEM[v28] = MEM[v28] - (msg.data[v10] >> 208 & 0xfffff);
                        break;
                    } else {
                        break;
                    }
                } else {
                    v21 = v36 = MEM[32 + (v30 + (msg.data[v10] >> 208 & 0xfffff))] >> (msg.data[v10] >> 228 & 0xfffff);
                    v31 = v37 = 10;
                }
                v10 = v10 + v31;
            }
            if (0 == msg.data[v8 + 4] >> 254 < 2) {
                if (0 == (msg.data[v8 + 4] >> 254 == 2)) {
                    v38 = v12.staticcall(MEM[v1685_0x8 + 32:v1685_0x8 + 32 + MEM[v1685_0x8]], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v39 = v40 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v39 = v41 = new bytes[](RETURNDATASIZE());
                        require(!((v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v41)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v41.data, 0, RETURNDATASIZE());
                    }
                    v42 = v43 = bool(v38);
                } else {
                    v42 = v44 = v12.delegatecall(MEM[v1685_0x8 + 32:v1685_0x8 + 32 + MEM[v1685_0x8]], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v39 = v45 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v39 = v46 = new bytes[](RETURNDATASIZE());
                        require(!((v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v46)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v46.data, 0, RETURNDATASIZE());
                    }
                }
                v47 = v48 = bool(v42);
            } else {
                v47 = v49 = v12.call(MEM[v1685_0x8 + 32:v1685_0x8 + 32 + MEM[v1685_0x8]], MEM[0:0]).value(v21).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v39 = v50 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v39 = v51 = new bytes[](RETURNDATASIZE());
                    require(!((v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v51.data, 0, RETURNDATASIZE());
                }
            }
            v52 = v53 = !v47;
            if (v53) {
                v52 = v54 = !(msg.data[v8 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
            }
            if (v52) {
                require(!MEM[v39], v39 + 32, MEM[v39]);
                revert(FailedCall());
            } else {
                MEM[v6] = v39;
                v6 = v6 + 32;
                v8 = (msg.data[v8] >> 224) + v8 + 4;
            }
        } else {
            exit;
        }
    }
}

function locked(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == address(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444), InvalidCaller(msg.sender, address(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444)));
    v0 = new struct(3);
    v0.word0 = 64;
    v1 = v0.data;
    v0.word1 = varg1;
    v0.word2 = varg0;
    MEM[64] = MEM[64] + ((varg3 >> 248) + 1 << 5) + 32;
    MEM[MEM[64] + 32] = v0;
    v2 = v3 = MEM[64] + 64;
    v4 = v5 = 70;
    while (v4 < msg.data.length) {
        v6 = v7 = v4 + 6;
        if (0 == (msg.data[v4 + 4] >> 248 & 0x1f == 31)) {
            if (msg.data[v4 + 4] >> 248 & 0x1f >= 3) {
                if ((msg.data[v4 + 4] >> 248 & 0x1f) - 3) {
                    if (4 - (msg.data[v4 + 4] >> 248 & 0x1f)) {
                        v8 = v9 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                    } else {
                        v8 = v10 = 0x4444c5dc75cb358380d2e3de08a90;
                    }
                } else {
                    v8 = v11 = 0x111111125421ca6dc452d289314280a0f8842a65;
                }
            } else if (msg.data[v4 + 4] >> 248 & 0x1f) {
                if (1 - (msg.data[v4 + 4] >> 248 & 0x1f)) {
                    v8 = v12 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else {
                    v8 = v13 = msg.sender;
                }
            } else {
                v8 = v14 = this;
            }
        } else {
            v8 = v15 = msg.data[v7] >> 96;
            v6 = v16 = v4 + 26;
        }
        v17 = v18 = 0;
        if (msg.data[v4 + 4] >> 254 == 1) {
            v17 = v19 = msg.data[v6] >> 96;
            v6 = v20 = v6 + 20;
            v21 = this.balance;
            v22 = this.balance;
            require(v21 >= v19, InsufficientBalance(v22, v19));
        }
        v23 = (msg.data[v4] >> 224) + v4 - (v6 + uint8(msg.data[v4 + 4] >> 240) * 10) + 4;
        v24 = v25 = MEM[64];
        MEM[v25] = v23;
        MEM[64] = v25 + v23 + 32;
        CALLDATACOPY(v25 + 32, v6 + uint8(msg.data[v4 + 4] >> 240) * 10, v23);
        while (v6 < v6 + uint8(msg.data[v4 + 4] >> 240) * 10) {
            require(msg.data[v6] >> 248 < (varg3 >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v24 = v26 = MEM[(msg.data[v6] >> 248 << 5) + MEM[64] + 32];
            if (0 == bool(msg.data[v6] & 0x8000000000000000000000000000000000000000000000000000)) {
                v27 = v28 = 10;
                MCOPY(v25 + (msg.data[v6] >> 176 & 0x3fffffff) + 32, v26 + (msg.data[v6] >> 208 & 0xfffff) + 32, msg.data[v6] >> 228 & 0xfffff);
            } else if (!(msg.data[v6] & 0x4000000000000000000000000000000000000000000000000000)) {
                if (msg.data[v6] >> 228 & 0xfffff) {
                    v27 = v29 = 10;
                    v24 = v30 = v26 + (msg.data[v6] >> 228 & 0xfffff);
                    MEM[v30] = MEM[v26] - (msg.data[v6] >> 228 & 0xfffff);
                    MEM[MEM[64] + (msg.data[v6] >> 243 & 0x1fe0) + 32] = v30;
                } else {
                    v27 = v31 = 10;
                }
                if (msg.data[v6] >> 208 & 0xfffff) {
                    MEM[v24] = MEM[v24] - (msg.data[v6] >> 208 & 0xfffff);
                }
            } else {
                v17 = v32 = MEM[32 + (v26 + (msg.data[v6] >> 208 & 0xfffff))] >> (msg.data[v6] >> 228 & 0xfffff);
                v27 = v33 = 10;
            }
            v6 = v6 + v27;
        }
        if (0 == msg.data[v4 + 4] >> 254 < 2) {
            if (0 == (msg.data[v4 + 4] >> 254 == 2)) {
                v34 = v8.staticcall(MEM[v399_0x9 + 32:v399_0x9 + 32 + MEM[v399_0x9]], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v35 = v36 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v37 = new bytes[](RETURNDATASIZE());
                    require(!((v37 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v37 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v37)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v37.data, 0, RETURNDATASIZE());
                }
                v38 = v39 = bool(v34);
            } else {
                v38 = v40 = v8.delegatecall(MEM[v399_0x9 + 32:v399_0x9 + 32 + MEM[v399_0x9]], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v35 = v41 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v42 = new bytes[](RETURNDATASIZE());
                    require(!((v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v42)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v42.data, 0, RETURNDATASIZE());
                }
            }
            v43 = v44 = bool(v38);
        } else {
            v43 = v45 = v8.call(MEM[v399_0x9 + 32:v399_0x9 + 32 + MEM[v399_0x9]], MEM[0:0]).value(v17).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v35 = v46 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v35 = v47 = new bytes[](RETURNDATASIZE());
                require(!((v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v47)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v47.data, 0, RETURNDATASIZE());
            }
        }
        v48 = v49 = !v43;
        if (v49) {
            v48 = v50 = !(msg.data[v4 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
        }
        if (v48) {
            require(!MEM[v35], v35 + 32, MEM[v35]);
            revert(FailedCall());
        } else {
            MEM[v2] = v35;
            v2 = v2 + 32;
            v4 = (msg.data[v4] >> 224) + v4 + 4;
        }
    }
    require(varg2 >> 248 < (varg3 >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return MEM[MEM[varg2 >> 248 << 5 + MEM[64] + 32] + 32:MEM[varg2 >> 248 << 5 + MEM[64] + 32] + 32 + MEM[MEM[varg2 >> 248 << 5 + MEM[64] + 32]]];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    if (msg.data.length >= 4) {
        if (0x61461954 == function_selector >> 224) {
            execute();
        } else if (0x8119c065 == function_selector >> 224) {
            swap();
        } else if (0x91bbdcc7 == function_selector >> 224) {
            convert();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x9410ae88 == function_selector >> 224) {
            dexCallback(address,uint256);
        } else if (0xadf38ba1 == function_selector >> 224) {
            takerInteraction((uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256),bytes,bytes32,address,uint256,uint256,uint256,bytes);
        } else if (0xb1b3d3f6 == function_selector >> 224) {
            allow();
        } else if (0xb45a3c0e == function_selector >> 224) {
            locked(uint256);
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    if (!msg.data.length) {
        receive();
    } else {
        if (msg.data.length < 68) {
            v0 = v1 = 0;
        } else {
            if (msg.data.length < 132) {
                v2 = v3 = 0;
                v2 = v4 = 0;
            } else if (varg3 > uint32.max) {
                v2 = v5 = 0;
            } else {
                v2 = v6 = varg3.length;
                if (v6 > uint32.max) {
                    v2 = 0;
                } else {
                    v2 = v7 = varg3.data;
                }
            }
            v8 = _allow;
            require(msg.sender == address(v8), InvalidCaller(msg.sender, address(v8)));
            _allow = 0;
            if (v2) {
                v9 = new struct(3);
                v9.word0 = 64;
                v10 = v9.data;
                v9.word1 = varg1;
                v9.word2 = varg2;
                MEM[v9 + 96 + 32] = v9;
                v11 = v12 = v9 + 96 + 64;
                v13 = v14 = v2 + 1;
                while (v13 < v2 + v2) {
                    v15 = v16 = v13 + 6;
                    if (0 == (msg.data[v13 + 4] >> 248 & 0x1f == 31)) {
                        if (msg.data[v13 + 4] >> 248 & 0x1f >= 3) {
                            if ((msg.data[v13 + 4] >> 248 & 0x1f) - 3) {
                                if (4 - (msg.data[v13 + 4] >> 248 & 0x1f)) {
                                    v17 = v18 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                } else {
                                    v17 = v19 = 0x4444c5dc75cb358380d2e3de08a90;
                                }
                            } else {
                                v17 = 0x111111125421ca6dc452d289314280a0f8842a65;
                            }
                        } else if (msg.data[v13 + 4] >> 248 & 0x1f) {
                            if (1 - (msg.data[v13 + 4] >> 248 & 0x1f)) {
                                v17 = v20 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                            } else {
                                v17 = v21 = msg.sender;
                            }
                        } else {
                            v17 = v22 = this;
                        }
                    } else {
                        v17 = v23 = msg.data[v16] >> 96;
                        v15 = v13 + 26;
                    }
                    v24 = v25 = 0;
                    if (msg.data[v13 + 4] >> 254 == 1) {
                        v24 = v26 = msg.data[v15] >> 96;
                        v15 = v27 = v15 + 20;
                        v28 = this.balance;
                        v29 = this.balance;
                        require(v28 >= v26, InsufficientBalance(v29, v26));
                        break;
                    } else {
                        break;
                    }
                    MEM[v30] = (msg.data[v13] >> 224) + v13 - (v15 + uint8(msg.data[v13 + 4] >> 240) * 10) + 4;
                    MEM[64] = v30 + ((msg.data[v13] >> 224) + v13 - (v15 + uint8(msg.data[v13 + 4] >> 240) * 10) + 4) + 32;
                    CALLDATACOPY(v30 + 32, v15 + uint8(msg.data[v13 + 4] >> 240) * 10, (msg.data[v13] >> 224) + v13 - (v15 + uint8(msg.data[v13 + 4] >> 240) * 10) + 4);
                    while (v15 < v15 + uint8(msg.data[v13 + 4] >> 240) * 10) {
                        require(msg.data[v15] >> 248 < (msg.data[v2] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v31 = v32 = MEM[(msg.data[v15] >> 248 << 5) + (v9 + 96) + 32];
                        if (0 == bool(msg.data[v15] & 0x8000000000000000000000000000000000000000000000000000)) {
                            v33 = v34 = 10;
                            MCOPY(v30 + (msg.data[v15] >> 176 & 0x3fffffff) + 32, v32 + (msg.data[v15] >> 208 & 0xfffff) + 32, msg.data[v15] >> 228 & 0xfffff);
                        } else if (!(msg.data[v15] & 0x4000000000000000000000000000000000000000000000000000)) {
                            if (msg.data[v15] >> 228 & 0xfffff) {
                                v33 = v35 = 10;
                                v31 = v36 = v32 + (msg.data[v15] >> 228 & 0xfffff);
                                MEM[v36] = MEM[v32] - (msg.data[v15] >> 228 & 0xfffff);
                                MEM[(msg.data[v15] >> 243 & 0x1fe0) + (v9 + 96) + 32] = v36;
                            } else {
                                v33 = 10;
                            }
                            if (msg.data[v15] >> 208 & 0xfffff) {
                                MEM[v31] = MEM[v31] - (msg.data[v15] >> 208 & 0xfffff);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            v24 = MEM[32 + (v32 + (msg.data[v15] >> 208 & 0xfffff))] >> (msg.data[v15] >> 228 & 0xfffff);
                            v33 = v37 = 10;
                        }
                        v15 = v15 + v33;
                    }
                    if (0 == msg.data[v13 + 4] >> 254 < 2) {
                        if (0 == (msg.data[v13 + 4] >> 254 == 2)) {
                            v38 = v17.staticcall(MEM[v17f7_0x3V0x138bV0x11731B0x15 + 32:v17f7_0x3V0x138bV0x11731B0x15 + 32 + MEM[v17f7_0x3V0x138bV0x11731B0x15]], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v39 = v40 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v39 = v41 = new bytes[](RETURNDATASIZE());
                                require(!((v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v41)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v41.data, 0, RETURNDATASIZE());
                            }
                            v42 = v43 = bool(v38);
                        } else {
                            v42 = v44 = v17.delegatecall(MEM[v17f7_0x3V0x138bV0x11731B0x15 + 32:v17f7_0x3V0x138bV0x11731B0x15 + 32 + MEM[v17f7_0x3V0x138bV0x11731B0x15]], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v39 = v45 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v39 = v46 = new bytes[](RETURNDATASIZE());
                                require(!((v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v46)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v46.data, 0, RETURNDATASIZE());
                            }
                        }
                        v47 = v48 = bool(v42);
                    } else {
                        v47 = v17.call(MEM[v17f7_0x3V0x138bV0x11731B0x15 + 32:v17f7_0x3V0x138bV0x11731B0x15 + 32 + MEM[v17f7_0x3V0x138bV0x11731B0x15]], MEM[0:0]).value(v24).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v39 = v49 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v39 = new bytes[](RETURNDATASIZE());
                            require(!((v39 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v39.data, 0, RETURNDATASIZE());
                        }
                    }
                    v50 = !v47;
                    if (v50) {
                        v50 = v51 = !(msg.data[v13 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                        break;
                    } else {
                        break;
                    }
                    if (v50) {
                        require(!MEM[v39], v39 + 32, MEM[v39]);
                        revert(FailedCall());
                    } else {
                        MEM[v11] = v39;
                        v11 = v11 + 32;
                        v13 = (msg.data[v13] >> 224) + v13 + 4;
                    }
                }
            }
            if (varg1 <= 0) {
                require(0 != varg2 > 0, address(v8), varg1, varg2);
                v52 = v53 = MEM[64];
                v54 = msg.sender.token1().gas(msg.gas);
                require(v54, MEM[64], RETURNDATASIZE());
                v55 = v56 = 0x11502;
                v57 = v58 = uint160.max + 1;
                v59 = v60 = 0;
                if (v54) {
                    v61 = v62 = 4945;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v53 + 32 > uint64.max) | (v53 + 32 < v53)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v53 + 32;
                        v63 = v64 = v53 + 32;
                    }
                }
            } else {
                v52 = v65 = MEM[64];
                v66 = msg.sender.token0().gas(msg.gas);
                require(v66, MEM[64], RETURNDATASIZE());
                v55 = v67 = 0x114ba;
                v57 = v68 = uint160.max + 1;
                v59 = v69 = 0;
                if (v66) {
                    v61 = v70 = 4797;
                    v71 = v72 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x12c30x11c1B0x11731B0x15. Refer to 3-address code (TAC);
                    }
                }
            }
            if (v8 & v57) {
                0x1f65(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v73);
            }
            v74 = new bytes[](68);
            MEM[v74.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v74 + 36] = msg.sender;
            MEM[v74 + 68] = v73;
            require(!((v74 + 128 > uint64.max) | (v74 + 128 < v74)), Panic(65)); // failed memory allocation (too much memory)
            v75 = v74.length;
            v76 = address(v59).transfer(msg.sender, v73).gas(msg.gas);
            require(v76, v74 + 128, RETURNDATASIZE());
            if (RETURNDATASIZE()) {
                v77 = v78 = 1 != MEM[0];
            } else {
                v77 = !(address(v59)).code.size;
            }
            require(!v77, SafeERC20FailedOperation(address(v59)));
            // Unknown jump to Block ['0x114baB0x11731B0x15', '0x11502B0x11731B0x15']. Refer to 3-address code (TAC);
            v0 = 1;
            // Unknown jump to Block 0x20a4B0x15. Refer to 3-address code (TAC);
            require(!((v52 + (v71 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (v71 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v52 + (v71 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v63 = v79 = v52 + v71;
            require(v63 - v52 >= 32);
            v59 = v80 = MEM[v52];
            require(!(v80 - address(v80)));
            // Unknown jump to Block ['0x12bdB0x11731B0x15', '0x1351B0x11731B0x15']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x1330B0x11731B0x15. Refer to 3-address code (TAC);
            v71 = v81 = RETURNDATASIZE();
            // Unknown jump to Block 0x12ab0x11c1B0x11731B0x15. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x125dB0x11731B0x15. Refer to 3-address code (TAC);
        }
        if (v0) {
            exit;
        } else {
            v82 = new uint256[](msg.data.length);
            CALLDATACOPY(v82.data, 0, msg.data.length);
            MEM[MEM[64] + msg.data.length + 36 + 32] = 0;
            revert(v82);
        }
    }
}
