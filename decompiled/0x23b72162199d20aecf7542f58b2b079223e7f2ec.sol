// Decompiled by library.dedaub.com
// 2025.12.17 12:06 UTC

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
                    v31 = v10.staticcall(MEM[v17f7_0x3V0x138bV0x11582 + 32:v17f7_0x3V0x138bV0x11582 + 32 + MEM[v17f7_0x3V0x138bV0x11582]], MEM[0:0]).gas(msg.gas);
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
                    v35 = v37 = v10.delegatecall(MEM[v17f7_0x3V0x138bV0x11582 + 32:v17f7_0x3V0x138bV0x11582 + 32 + MEM[v17f7_0x3V0x138bV0x11582]], MEM[0:0]).gas(msg.gas);
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
                v40 = v10.call(MEM[v17f7_0x3V0x138bV0x11582 + 32:v17f7_0x3V0x138bV0x11582 + 32 + MEM[v17f7_0x3V0x138bV0x11582]], MEM[0:0]).value(v17).gas(msg.gas);
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
        v48 = v49 = 0x1169a;
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
        v48 = v60 = 0x11652;
        v50 = v61 = uint160.max + 1;
        v52 = v62 = 0;
        if (v59) {
            v54 = v63 = 4797;
            v64 = v65 = 32;
            if (32 > RETURNDATASIZE()) {
                // Unknown jump to Block 0x12c30x11c1B0x11582. Refer to 3-address code (TAC);
            }
        }
    }
    if (v1 & v50) {
        0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v66);
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
    // Unknown jump to Block ['0x11652B0x11582', '0x1169aB0x11582']. Refer to 3-address code (TAC);
    exit;
    // Unknown jump to Block 0x115ad. Refer to 3-address code (TAC);
    require(!((v45 + (v64 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (v64 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v45 + (v64 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v56 = v72 = v45 + v64;
    require(v56 - v45 >= 32);
    v52 = v73 = MEM[v45];
    require(!(v73 - address(v73)));
    // Unknown jump to Block ['0x12bdB0x11582', '0x1351B0x11582']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1330B0x11582. Refer to 3-address code (TAC);
    v64 = v74 = RETURNDATASIZE();
    // Unknown jump to Block 0x12ab0x11c1B0x11582. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x125dB0x11582. Refer to 3-address code (TAC);
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
    v15 = v16 = block.coinbase;
    if (v0 & 0x100000000000000000000000000000000000000000000000) {
        v15 = v17 = msg.data[v3 + 4] >> 96;
        v3 = v18 = (msg.data[v3] >> 224) + v3 + 4;
    }
    require(uint8(v0 >> 240) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = v19 = new uint256[](uint8(v0 >> 240));
    require(!((v19 + (32 + (uint8(v0 >> 240) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v19 + (32 + (uint8(v0 >> 240) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v19)), Panic(65)); // failed memory allocation (too much memory)
    require(uint8(v0 >> 240) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v19.data, msg.data.length, 32 + (uint8(v0 >> 240) << 5) - 32);
    require(v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[v19.data] = varg2;
    while (v1 < v3) {
        v20 = v21 = msg.data[v1];
        if (!(v21 & 0x800000000000000000000000000000000000000000000000)) {
            v3 = v22 = 32;
            v3 = v23 = 0x11882;
            v24 = v25 = 0;
            v26 = v27 = 0;
            v3 = v28 = uint8(v21 >> 208);
            v3 = v29 = uint8(v21 >> 216);
            if (0 == bool(v21 & 0x100000000000000000000000000000000000000000)) {
                require(v28 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v30 = _SafeMul(MEM[(v28 << 5) + v3 + 32], v21 >> 192 & 0x3fff);
                v31 = v32 = v30 / 10000;
                v31 = v33 = 0;
                if (0 == v21 >> 161 & 0x7 < 4) {
                    if (v21 >> 161 & 0x7 >= 6) {
                        if (6 - (v21 >> 161 & 0x7)) {
                            v34 = v35 = 0;
                            v36 = new struct(2);
                            v36.word0 = 32;
                            v37 = v36.data;
                            v36.word1 = v32;
                            v38 = 0;
                            v39 = 0;
                            if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                v38 = v40 = msg.data[v25] >> 96;
                                v39 = v41 = 0x3c6d(v40);
                                v24 = v42 = v25 + 20;
                                v26 = v43 = v27 - 20;
                            }
                            v44 = 0;
                            if (bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                v44 = v45 = address(v21);
                                v34 = v46 = 0x3c6d(v45);
                            }
                            MEM[64] = MEM[64] + ((msg.data[v24] >> 248) + 1 << 5) + 32;
                            MEM[MEM[64] + 32] = v36;
                            v47 = v48 = MEM[64] + 64;
                            v49 = v50 = v24 + 1;
                            while (v49 < v24 + v26) {
                                v51 = v52 = v49 + 6;
                                if (0 == (msg.data[v49 + 4] >> 248 & 0x1f == 31)) {
                                    if (msg.data[v49 + 4] >> 248 & 0x1f >= 3) {
                                        if ((msg.data[v49 + 4] >> 248 & 0x1f) - 3) {
                                            if (4 - (msg.data[v49 + 4] >> 248 & 0x1f)) {
                                                v53 = v54 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                            } else {
                                                v53 = v55 = 0x4444c5dc75cb358380d2e3de08a90;
                                            }
                                        } else {
                                            v53 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                        }
                                    } else if (msg.data[v49 + 4] >> 248 & 0x1f) {
                                        if (1 - (msg.data[v49 + 4] >> 248 & 0x1f)) {
                                            v53 = v56 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                        } else {
                                            v53 = v57 = msg.sender;
                                        }
                                    } else {
                                        v53 = v58 = this;
                                    }
                                } else {
                                    v53 = v59 = msg.data[v52] >> 96;
                                    v51 = v49 + 26;
                                }
                                v60 = v61 = 0;
                                if (msg.data[v49 + 4] >> 254 == 1) {
                                    v60 = v62 = msg.data[v51] >> 96;
                                    v51 = v63 = v51 + 20;
                                    v64 = this.balance;
                                    v65 = this.balance;
                                    require(v64 >= v62, InsufficientBalance(v65, v62));
                                }
                                v66 = v67 = MEM[64];
                                MEM[v67] = (msg.data[v49] >> 224) + v49 - (v51 + uint8(msg.data[v49 + 4] >> 240) * 10) + 4;
                                MEM[64] = v67 + ((msg.data[v49] >> 224) + v49 - (v51 + uint8(msg.data[v49 + 4] >> 240) * 10) + 4) + 32;
                                CALLDATACOPY(v67 + 32, v51 + uint8(msg.data[v49 + 4] >> 240) * 10, (msg.data[v49] >> 224) + v49 - (v51 + uint8(msg.data[v49 + 4] >> 240) * 10) + 4);
                                while (v51 < v51 + uint8(msg.data[v49 + 4] >> 240) * 10) {
                                    require(msg.data[v51] >> 248 < (msg.data[v24] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v66 = v68 = MEM[(msg.data[v51] >> 248 << 5) + MEM[64] + 32];
                                    if (0 == bool(msg.data[v51] & 0x8000000000000000000000000000000000000000000000000000)) {
                                        v69 = v70 = 10;
                                        MCOPY(v67 + (msg.data[v51] >> 176 & 0x3fffffff) + 32, v68 + (msg.data[v51] >> 208 & 0xfffff) + 32, msg.data[v51] >> 228 & 0xfffff);
                                    } else if (!(msg.data[v51] & 0x4000000000000000000000000000000000000000000000000000)) {
                                        if (msg.data[v51] >> 228 & 0xfffff) {
                                            v69 = v71 = 10;
                                            v66 = v72 = v68 + (msg.data[v51] >> 228 & 0xfffff);
                                            MEM[v72] = MEM[v68] - (msg.data[v51] >> 228 & 0xfffff);
                                            MEM[(msg.data[v51] >> 243 & 0x1fe0) + MEM[64] + 32] = v72;
                                        } else {
                                            v69 = 10;
                                        }
                                        if (msg.data[v51] >> 208 & 0xfffff) {
                                            MEM[v66] = MEM[v66] - (msg.data[v51] >> 208 & 0xfffff);
                                        }
                                    } else {
                                        v60 = MEM[32 + (v68 + (msg.data[v51] >> 208 & 0xfffff))] >> (msg.data[v51] >> 228 & 0xfffff);
                                        v69 = v73 = 10;
                                    }
                                    v51 = v51 + v69;
                                }
                                if (0 == msg.data[v49 + 4] >> 254 < 2) {
                                    if (0 == (msg.data[v49 + 4] >> 254 == 2)) {
                                        v74 = v53.staticcall(MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1e74 + 32:v17f7_0x3V0x31100x216bV0x1e66V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1e74]], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v75 = v76 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v75 = v77 = new bytes[](RETURNDATASIZE());
                                            require(!((v77 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v77 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v77)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v77.data, 0, RETURNDATASIZE());
                                        }
                                        v78 = v79 = bool(v74);
                                    } else {
                                        v78 = v80 = v53.delegatecall(MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1e74 + 32:v17f7_0x3V0x31100x216bV0x1e66V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1e74]], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v75 = v81 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v75 = v82 = new bytes[](RETURNDATASIZE());
                                            require(!((v82 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v82 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v82)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v82.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v83 = v84 = bool(v78);
                                } else {
                                    v83 = v53.call(MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1e74 + 32:v17f7_0x3V0x31100x216bV0x1e66V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1e74]], MEM[0:0]).value(v60).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v75 = v85 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v75 = new bytes[](RETURNDATASIZE());
                                        require(!((v75 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v75 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v75)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v75.data, 0, RETURNDATASIZE());
                                    }
                                }
                                v86 = !v83;
                                if (v86) {
                                    v86 = v87 = !(msg.data[v49 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                }
                                if (v86) {
                                    require(!MEM[v75], v75 + 32, MEM[v75]);
                                    revert(FailedCall());
                                } else {
                                    MEM[v47] = v75;
                                    v47 = v47 + 32;
                                    v49 = (msg.data[v49] >> 224) + v49 + 4;
                                }
                            }
                            if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                v88 = 0x3c6d(v38);
                                if (0 == v39 > (v21 >> 178 & 0x3ff) + v88) {
                                    v89 = v90 = 0;
                                } else {
                                    v89 = v91 = v39 - ((v21 >> 178 & 0x3ff) + v88);
                                }
                                require(v89 <= v32, v89, v32);
                            }
                            if (0 == bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                require(uint8(v21 >> 232) < (msg.data[v24] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v31 = v92 = MEM[MEM[(uint8(v21 >> 232) << 5) + MEM[64] + 32] + 32];
                            } else {
                                v93 = 0x3c6d(v44);
                                require((v21 >> 168 & 0x3ff) + v93 >= v34, InsufficientAmountOut((v21 >> 168 & 0x3ff) + v93, v34));
                                v31 = v94 = (v21 >> 168 & 0x3ff) + v93 - v34;
                            }
                        } else {
                            MEM[64] = MEM[64] + v27 + 69;
                            CALLDATACOPY(MEM[64] + 69, v25, v27);
                            v95 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v32, uint8(v21 >> 232)).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v96 = v97 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v96 = new bytes[](RETURNDATASIZE());
                                require(!((v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v96)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v96.data, 0, RETURNDATASIZE());
                            }
                            if (!v95) {
                                require(!MEM[v96], v96 + 32, MEM[v96]);
                                revert(FailedCall());
                            } else {
                                v31 = v98 = MEM[32 + v96];
                            }
                        }
                    } else {
                        if (4 - (v21 >> 161 & 0x7)) {
                            if (0 == bool(v21 & 0x10000000000000000000000000000000000000000)) {
                                v99 = v100 = MEM[64];
                                require(!(msg.data[v25 + 96] - address(msg.data[v25 + 96])));
                                MEM[v100 + 4 + 128] = msg.data[v25 + 128];
                                MEM[v100 + 4 + 160] = msg.data[v25 + 160];
                                MEM[v100 + 4 + 192] = msg.data[v25 + 192];
                                require(msg.data[v25 + 224] < 2);
                                MEM[v100 + 4 + 224] = msg.data[v25 + 224];
                                MEM[v100 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v25];
                                MEM[v100 + 292] = 384;
                                MEM[v100 + 388] = v27 - 288;
                                CALLDATACOPY(v100 + 388 + 32, v25 + 288, v27 - 288);
                                MEM[v100 + 388 + (v27 - 288) + 32] = 0;
                                MEM[v100 + 324] = address(v21);
                                MEM[v100 + 356] = 0;
                                v101 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v25], msg.data[v25 + 32], msg.data[v25 + 64], address(msg.data[v25 + 96])).gas(msg.gas);
                                if (!v101) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v31 = v102 = 0;
                                    if (!v101) {
                                    }
                                }
                            } else {
                                v99 = v103 = MEM[64];
                                require(!(msg.data[v25 + 96] - address(msg.data[v25 + 96])));
                                MEM[v103 + 4 + 128] = msg.data[v25 + 128];
                                MEM[v103 + 4 + 160] = msg.data[v25 + 160];
                                MEM[v103 + 4 + 192] = msg.data[v25 + 192];
                                require(msg.data[v25 + 224] < 2);
                                MEM[v103 + 4 + 224] = msg.data[v25 + 224];
                                MEM[v103 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v25];
                                MEM[v103 + 292] = 384;
                                MEM[v103 + 388] = v27 - 288;
                                CALLDATACOPY(v103 + 388 + 32, v25 + 288, v27 - 288);
                                MEM[v103 + 388 + (v27 - 288) + 32] = 0;
                                MEM[v103 + 324] = address(v21);
                                MEM[v103 + 356] = v32;
                                v104 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v25], msg.data[v25 + 32], msg.data[v25 + 64], address(msg.data[v25 + 96])).gas(msg.gas);
                                if (!v104) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v31 = v105 = 0;
                                    if (!v104) {
                                    }
                                }
                            }
                        } else if (!(0x10000000000000000000000000000000000000000 & v21)) {
                            v99 = v106 = MEM[64];
                            v107 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(v32, address(v21), 0).gas(msg.gas);
                            if (!v107) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v31 = v108 = 0;
                                if (!v107) {
                                }
                            }
                        } else {
                            v99 = v109 = MEM[64];
                            v110 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v21), v32, 0).gas(msg.gas);
                            if (!v110) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v31 = v111 = 0;
                                if (!v110) {
                                }
                            }
                        }
                        v112 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v112 = v113 = RETURNDATASIZE();
                        }
                        require(!((v99 + (v112 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v99 + (v112 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v99)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v99 + (v112 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v99 + v112 - v99 >= 32);
                        v31 = v114 = MEM[v99];
                    }
                } else if (v21 >> 161 & 0x7 >= 2) {
                    if (2 - (v21 >> 161 & 0x7)) {
                        CALLDATACOPY(MEM[64] + 65, v25, v27);
                        MEM[MEM[64] + 33] = uint8(v21 >> 232);
                        MEM[MEM[64] + 32] = v32;
                        v115 = new uint256[](33 + v27);
                        MCOPY(v115.data, MEM[64] + 32, 33 + v27);
                        MEM[MEM[64] + 4 + (33 + v27) + 64] = 0;
                        v116 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, v115).gas(msg.gas);
                        if (!v116) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v117 = v118 = 0;
                            if (v116) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                require(v119.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v117 = v120 = new bytes[](v119.length);
                                require(!((v120 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v119.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v120 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v119.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v120)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v119.length + 32 <= MEM[64] + RETURNDATASIZE());
                                MCOPY(v120.data, v119.data, v119.length);
                                v120[v119.length] = 0;
                            }
                            v31 = v121 = MEM[v117 + 32];
                        }
                    } else {
                        v122 = v123 = address(v21);
                        if (!uint8(v21 >> 224)) {
                            v124 = this;
                        } else {
                            v124 = v125 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                        }
                        if (bool(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v32);
                            }
                        } else {
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                v122 = v126 = v123 | 0x10000000000000000000000000000000000000000;
                                if (!bool(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v122 = v123 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v122;
                        }
                        if (!(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                            v127, /* uint112 */ v31 = v123.swapInWithCallback(bool(v21 & 0x10000000000000000000000000000000000000000), v32, 0, address(v124)).gas(msg.gas);
                            if (!v127) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v31 = v128 = 0;
                                if (v127) {
                                    v129 = v130 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v129 = v131 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v129 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v129 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v129 - MEM[64] >= 32);
                                }
                            }
                        } else {
                            v132, /* uint112 */ v31 = v123.swapIn(bool(v21 & 0x10000000000000000000000000000000000000000), v32, 0, address(v124)).value(v32).gas(msg.gas);
                            if (!v132) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v31 = v133 = 0;
                                if (v132) {
                                    v134 = v135 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v134 = v136 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v134 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v134 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v134 - MEM[64] >= 32);
                                }
                            }
                        }
                        if (uint8(v21 >> 232)) {
                            require(uint8(v21 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                            v137 = _SafeDiv(v31, 10 ** uint8(v21 >> 232));
                            v31 = v138 = _SafeMul(v137, 10 ** uint8(v21 >> 232));
                        }
                        if (v21 & 0x200000000000000000000000000000000000000000) {
                            if (!(0x800000000000000000000000000000000000000000 & v21)) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v31);
                            } else {
                                0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v31);
                            }
                        }
                    }
                } else if (v21 >> 161 & 0x7) {
                    v139 = v140 = address(v21);
                    v141, /* uint112 */ v31, /* uint112 */ v31, v142 = v140.getReserves().gas(msg.gas);
                    if (!v141) {
                        RETURNDATACOPY(MEM[64], v33, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v141) {
                            v143 = v144 = 96;
                            if (96 > RETURNDATASIZE()) {
                                v143 = v145 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v143 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v143 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v143 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v143 - MEM[64] >= 96, v33, v33);
                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                            require(!(v31 - uint112(v31)));
                            require(!(uint32(v142) - v142), v33, v33);
                        }
                        v146 = v147 = uint112(v31);
                        v146 = v148 = uint112(v31);
                        if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                        }
                        if (!v33) {
                            require(10 ** 6 - (v21 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v149 = _SafeMul(v32, 10 ** 6 - (v21 >> 168 & 0xfffff));
                            v150 = _SafeMul(v149, v146);
                            require(!v146 | (10 ** 6 == v146 * 10 ** 6 / v146), Panic(17)); // arithmetic overflow or underflow
                            v151 = _SafeAdd(v146 * 10 ** 6, v149);
                            v31 = v152 = _SafeDiv(v150, v151);
                        } else {
                            v153 = _SafeMul(v146, v32);
                            require(!v153 | (10 ** 6 == v153 * 10 ** 6 / v153), Panic(17)); // arithmetic overflow or underflow
                            v154 = _SafeSub(v146, v32);
                            require(10 ** 6 - (v21 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v155 = _SafeMul(v154, 10 ** 6 - (v21 >> 168 & 0xfffff));
                            v156 = _SafeDiv(v153 * 10 ** 6, v155);
                            v31 = v157 = v156 + 1;
                            require(v156 <= v157, Panic(17)); // arithmetic overflow or underflow
                        }
                        if (v21 & 0x400000000000000000000000000000000000000000) {
                            0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v31);
                        }
                        if (!(v21 & 0x8000000000000000000000000000000000000000000000000000)) {
                            if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                v158 = v159 = MEM[64];
                                v160 = v140.token1().gas(msg.gas);
                                if (!v160) {
                                    RETURNDATACOPY(MEM[64], v33, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v161 = v162 = 0x119cb;
                                    if (!v160) {
                                    }
                                }
                            } else {
                                v158 = v163 = MEM[64];
                                v164 = v140.token0().gas(msg.gas);
                                if (!v164) {
                                    RETURNDATACOPY(MEM[64], v33, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v161 = v165 = 0x1197f;
                                    if (v164) {
                                        // Unknown jump to Block 0x26750x216bB0x1e66B0x1e74. Refer to 3-address code (TAC);
                                    }
                                }
                            }
                            v166 = new bytes[](68);
                            MEM[v166.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            MEM[v166 + 36] = address(v140);
                            MEM[v166 + 68] = v31;
                            require(!((v166 + 128 > uint64.max) | (v166 + 128 < v166)), Panic(65)); // failed memory allocation (too much memory)
                            v167 = v166.length;
                            v168 = address(v31).transfer(address(v140), v31).gas(msg.gas);
                            if (!v168) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (RETURNDATASIZE()) {
                                    v169 = v170 = 1 != MEM[0];
                                } else {
                                    v169 = !(address(v31)).code.size;
                                }
                                require(!v169, SafeERC20FailedOperation(address(v31)));
                                // Unknown jump to Block ['0x1197fB0x1e66B0x1e74', '0x119cbB0x1e66B0x1e74']. Refer to 3-address code (TAC);
                            }
                            if (32 > RETURNDATASIZE()) {
                                require(!((v158 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v158 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v158)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v158 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v171 = v172 = v158 + RETURNDATASIZE();
                            } else {
                                require(!((v158 + 32 > uint64.max) | (v158 + 32 < v158)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v158 + 32;
                                v171 = v173 = v158 + 32;
                            }
                            require(v171 - v158 >= 32);
                            v31 = v174 = MEM[v158];
                            require(!(v174 - address(v174)));
                        }
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            if (!uint8(v21 >> 224)) {
                                v175 = v176 = this;
                                // Unknown jump to Block 0x2519B0x1e66B0x1e74. Refer to 3-address code (TAC);
                            } else {
                                v175 = v177 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                                // Unknown jump to Block 0x2519B0x1e66B0x1e74. Refer to 3-address code (TAC);
                            }
                        } else if (!uint8(v21 >> 224)) {
                            v175 = this;
                            // Unknown jump to Block 0x2519B0x1e66B0x1e74. Refer to 3-address code (TAC);
                        } else {
                            v175 = v178 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                        }
                        require(v139.code.size, v31, v31);
                        v179 = new uint256[](v26);
                        CALLDATACOPY(v179.data, v24, v26);
                        MEM[v179.data] = 0;
                        v180 = v139.swap(v31, v31, address(v175), v179).value(v31).gas(msg.gas);
                        if (!v180) {
                            RETURNDATACOPY(MEM[64], v31, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v180) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= v31, v31, v31);
                            }
                            if (0x200000000000000000000000000000000000000000 & v20) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v31);
                            }
                        }
                    }
                } else {
                    v181 = v182 = 64;
                    v183 = v184 = address(v21);
                    v185 = v186 = v21 & 0x10000000000000000000000000000000000000000;
                    if (v21 & 0x400000000000000000000000000000000000000000) {
                        v183 = v187 = v184 | 0x10000000000000000000000000000000000000000;
                    }
                    _allow = v183;
                    if (!uint8(v21 >> 224)) {
                        v188 = this;
                    } else {
                        v188 = v189 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                    }
                    if (!v33) {
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            v190 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v190 = v191 = 0x1000276a4;
                        }
                        v192 = MEM[v182];
                        MEM[v192] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v192 + 4] = address(v188);
                        MEM[v192 + 36] = v186;
                        MEM[v192 + 68] = v32;
                        MEM[v192 + 100] = address(v190);
                        MEM[v192 + 132] = 160;
                        MEM[v192 + 164] = v27;
                        CALLDATACOPY(v192 + 164 + 32, v25, v27);
                        MEM[v192 + 164 + v27 + 32] = 0;
                        v193 = (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v192 + 164) + 32;
                        // Unknown jump to Block 0x227aB0x1e66B0x1e74. Refer to 3-address code (TAC);
                    } else {
                        v194 = 0x1128(v32);
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            v195 = v196 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v195 = v197 = 0x1000276a4;
                        }
                        v192 = v198 = MEM[v182];
                        MEM[v198] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v198 + 4] = address(v188);
                        MEM[v198 + 36] = v186;
                        MEM[v198 + 68] = v194;
                        MEM[v198 + 100] = address(v195);
                        MEM[v198 + 132] = 160;
                        MEM[v198 + 164] = v27;
                        CALLDATACOPY(v198 + 164 + 32, v25, v27);
                        MEM[v198 + 164 + v27 + 32] = 0;
                        v193 = v199 = (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v198 + 164) + 32;
                    }
                    v200 = v183.call(MEM[v22170x2228V0x239aV0x1e66V0x1e74:v22170x2228V0x239aV0x1e66V0x1e74 + v22170x13f2V0x239aV0x1e66V0x1e74 - v22170x2228V0x239aV0x1e66V0x1e74], MEM[v22170x2228V0x239aV0x1e66V0x1e74:v22170x2228V0x239aV0x1e66V0x1e74 + v227a_0x6V0x1e66V0x1e74]).value(v31).gas(msg.gas);
                    if (!v200) {
                        RETURNDATACOPY(MEM[64], v33, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v200) {
                            v201 = v202 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v201 = v203 = RETURNDATASIZE();
                            }
                            require(!((v192 + (v201 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v192 + (v201 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v192)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v192 + (v201 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v192 + v201 - v192 >= 64, v33, v33);
                            v31 = v204 = MEM[v192];
                            v31 = v205 = MEM[v192 + 32];
                        }
                        if (!v33) {
                            if (v185) {
                            }
                            require(v31 != int256.min, Panic(17)); // arithmetic overflow or underflow
                            v31 = v206 = 0 - v31;
                        } else if (v185) {
                        }
                        if (v21 & 0x200000000000000000000000000000000000000000) {
                            if (!v33) {
                                0x22c8(v31);
                            } else {
                                0x22c8(v32);
                            }
                        }
                    }
                }
                require(v29 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v207 = _SafeAdd(MEM[(v29 << 5) + v3 + 32], v31);
                require(v29 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[(v29 << 5) + v3 + 32] = v207;
                require(v28 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v32 <= MEM[(v28 << 5) + v3 + 32], v32, MEM[(v28 << 5) + v3 + 32]);
                v208 = v209 = MEM[(v28 << 5) + v3 + 32] - v32;
            } else {
                v3 = v210 = 0x11729;
                if (!(v21 & 0x400000000000000000000000000000000000000000000000)) {
                    varg3 = v211 = msg.data[v25];
                    v212 = v213 = v25 + v22;
                    v214 = v215 = v27 - 32;
                    v1 = v216 = 0;
                    if (0 == v21 >> 161 & 0x7 < 4) {
                        if (v21 >> 161 & 0x7 >= 6) {
                            if (6 - (v21 >> 161 & 0x7)) {
                                v217 = v218 = 0;
                                v219 = new struct(2);
                                v219.word0 = 32;
                                v220 = v219.data;
                                v219.word1 = v211;
                                v221 = 0;
                                v222 = 0;
                                if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                    v221 = v223 = msg.data[v213] >> 96;
                                    v222 = v224 = 0x3c6d(v223);
                                    v212 = v213 + 20;
                                    v214 = v215 - 20;
                                }
                                v225 = 0;
                                if (bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                    v225 = v226 = address(v21);
                                    v217 = v227 = 0x3c6d(v226);
                                }
                                MEM[64] = MEM[64] + ((msg.data[v212] >> 248) + 1 << 5) + 32;
                                MEM[MEM[64] + 32] = v219;
                                v228 = v229 = MEM[64] + 64;
                                v230 = v231 = v212 + 1;
                                while (v230 < v212 + v214) {
                                    v232 = v233 = v230 + 6;
                                    if (0 == (msg.data[v230 + 4] >> 248 & 0x1f == 31)) {
                                        if (msg.data[v230 + 4] >> 248 & 0x1f >= 3) {
                                            if ((msg.data[v230 + 4] >> 248 & 0x1f) - 3) {
                                                if (4 - (msg.data[v230 + 4] >> 248 & 0x1f)) {
                                                    v234 = v235 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                } else {
                                                    v234 = v236 = 0x4444c5dc75cb358380d2e3de08a90;
                                                }
                                            } else {
                                                v234 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                            }
                                        } else if (msg.data[v230 + 4] >> 248 & 0x1f) {
                                            if (1 - (msg.data[v230 + 4] >> 248 & 0x1f)) {
                                                v234 = v237 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else {
                                                v234 = v238 = msg.sender;
                                            }
                                        } else {
                                            v234 = v239 = this;
                                        }
                                    } else {
                                        v234 = v240 = msg.data[v233] >> 96;
                                        v232 = v230 + 26;
                                    }
                                    v241 = v242 = 0;
                                    if (msg.data[v230 + 4] >> 254 == 1) {
                                        v241 = v243 = msg.data[v232] >> 96;
                                        v232 = v244 = v232 + 20;
                                        v245 = this.balance;
                                        v246 = this.balance;
                                        require(v245 >= v243, InsufficientBalance(v246, v243));
                                    }
                                    v247 = v248 = MEM[64];
                                    MEM[v248] = (msg.data[v230] >> 224) + v230 - (v232 + uint8(msg.data[v230 + 4] >> 240) * 10) + 4;
                                    MEM[64] = v248 + ((msg.data[v230] >> 224) + v230 - (v232 + uint8(msg.data[v230 + 4] >> 240) * 10) + 4) + 32;
                                    CALLDATACOPY(v248 + 32, v232 + uint8(msg.data[v230 + 4] >> 240) * 10, (msg.data[v230] >> 224) + v230 - (v232 + uint8(msg.data[v230 + 4] >> 240) * 10) + 4);
                                    while (v232 < v232 + uint8(msg.data[v230 + 4] >> 240) * 10) {
                                        require(msg.data[v232] >> 248 < (msg.data[v212] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v247 = v249 = MEM[(msg.data[v232] >> 248 << 5) + MEM[64] + 32];
                                        if (0 == bool(msg.data[v232] & 0x8000000000000000000000000000000000000000000000000000)) {
                                            v250 = v251 = 10;
                                            MCOPY(v248 + (msg.data[v232] >> 176 & 0x3fffffff) + 32, v249 + (msg.data[v232] >> 208 & 0xfffff) + 32, msg.data[v232] >> 228 & 0xfffff);
                                        } else if (!(msg.data[v232] & 0x4000000000000000000000000000000000000000000000000000)) {
                                            if (msg.data[v232] >> 228 & 0xfffff) {
                                                v250 = v252 = 10;
                                                v247 = v253 = v249 + (msg.data[v232] >> 228 & 0xfffff);
                                                MEM[v253] = MEM[v249] - (msg.data[v232] >> 228 & 0xfffff);
                                                MEM[(msg.data[v232] >> 243 & 0x1fe0) + MEM[64] + 32] = v253;
                                            } else {
                                                v250 = 10;
                                            }
                                            if (msg.data[v232] >> 208 & 0xfffff) {
                                                MEM[v247] = MEM[v247] - (msg.data[v232] >> 208 & 0xfffff);
                                            }
                                        } else {
                                            v241 = MEM[32 + (v249 + (msg.data[v232] >> 208 & 0xfffff))] >> (msg.data[v232] >> 228 & 0xfffff);
                                            v250 = v254 = 10;
                                        }
                                        v232 = v232 + v250;
                                    }
                                    if (0 == msg.data[v230 + 4] >> 254 < 2) {
                                        if (0 == (msg.data[v230 + 4] >> 254 == 2)) {
                                            v255 = v234.staticcall(MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1e74 + 32:v17f7_0x3V0x31100x321cV0x1df6V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1e74]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v256 = v257 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v256 = v258 = new bytes[](RETURNDATASIZE());
                                                require(!((v258 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v258 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v258)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v258.data, 0, RETURNDATASIZE());
                                            }
                                            v259 = v260 = bool(v255);
                                        } else {
                                            v259 = v261 = v234.delegatecall(MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1e74 + 32:v17f7_0x3V0x31100x321cV0x1df6V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1e74]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v256 = v262 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v256 = v263 = new bytes[](RETURNDATASIZE());
                                                require(!((v263 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v263 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v263)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v263.data, 0, RETURNDATASIZE());
                                            }
                                        }
                                        v264 = v265 = bool(v259);
                                    } else {
                                        v264 = v234.call(MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1e74 + 32:v17f7_0x3V0x31100x321cV0x1df6V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1e74]], MEM[0:0]).value(v241).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v256 = v266 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v256 = new bytes[](RETURNDATASIZE());
                                            require(!((v256 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v256 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v256)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v256.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v267 = !v264;
                                    if (v267) {
                                        v267 = v268 = !(msg.data[v230 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (v267) {
                                        require(!MEM[v256], v256 + 32, MEM[v256]);
                                        revert(FailedCall());
                                    } else {
                                        MEM[v228] = v256;
                                        v228 = v228 + 32;
                                        v230 = (msg.data[v230] >> 224) + v230 + 4;
                                    }
                                }
                                if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                    v269 = 0x3c6d(v221);
                                    if (0 == v222 > (v21 >> 178 & 0x3ff) + v269) {
                                        v270 = v271 = 0;
                                    } else {
                                        v270 = v272 = v222 - ((v21 >> 178 & 0x3ff) + v269);
                                    }
                                    require(v270 <= v211, v270, v211);
                                }
                                if (0 == bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                    require(uint8(v21 >> 232) < (msg.data[v212] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v1 = v273 = MEM[MEM[(uint8(v21 >> 232) << 5) + MEM[64] + 32] + 32];
                                } else {
                                    v274 = 0x3c6d(v225);
                                    require((v21 >> 168 & 0x3ff) + v274 >= v217, InsufficientAmountOut((v21 >> 168 & 0x3ff) + v274, v217));
                                    v1 = v275 = (v21 >> 168 & 0x3ff) + v274 - v217;
                                }
                            } else {
                                MEM[64] = MEM[64] + v215 + 69;
                                CALLDATACOPY(MEM[64] + 69, v213, v215);
                                MEM[MEM[64] + 37] = uint8(v21 >> 232);
                                v276 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v211).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v277 = v278 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v277 = new bytes[](RETURNDATASIZE());
                                    require(!((v277 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v277 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v277)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v277.data, 0, RETURNDATASIZE());
                                }
                                if (!v276) {
                                    require(!MEM[v277], v277 + 32, MEM[v277]);
                                    revert(FailedCall());
                                } else {
                                    v1 = v279 = MEM[32 + v277];
                                }
                            }
                        } else {
                            if (4 - (v21 >> 161 & 0x7)) {
                                if (0 == bool(v21 & 0x10000000000000000000000000000000000000000)) {
                                    v280 = v281 = MEM[64];
                                    require(!(msg.data[v213 + 96] - address(msg.data[v213 + 96])));
                                    MEM[v281 + 4 + 96] = address(msg.data[v213 + 96]);
                                    MEM[v281 + 4 + 128] = msg.data[v213 + 128];
                                    MEM[v281 + 4 + 160] = msg.data[v213 + 160];
                                    MEM[v281 + 4 + 192] = msg.data[v213 + 192];
                                    require(msg.data[v213 + 224] < 2);
                                    MEM[v281 + 4 + 224] = msg.data[v213 + 224];
                                    MEM[v281 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v213];
                                    MEM[v281 + 292] = 384;
                                    MEM[v281 + 388] = v215 - 288;
                                    CALLDATACOPY(v281 + 388 + 32, v213 + 288, v215 - 288);
                                    MEM[v281 + 388 + (v215 - 288) + 32] = 0;
                                    MEM[v281 + 324] = address(v21);
                                    MEM[v281 + 356] = 0;
                                    v282 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v213], msg.data[v213 + 32], msg.data[v213 + 64]).gas(msg.gas);
                                    if (!v282) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v283 = 0;
                                        if (!v282) {
                                        }
                                    }
                                } else {
                                    v280 = v284 = MEM[64];
                                    require(!(msg.data[v213 + 96] - address(msg.data[v213 + 96])));
                                    MEM[v284 + 4 + 96] = address(msg.data[v213 + 96]);
                                    MEM[v284 + 4 + 128] = msg.data[v213 + 128];
                                    MEM[v284 + 4 + 160] = msg.data[v213 + 160];
                                    MEM[v284 + 4 + 192] = msg.data[v213 + 192];
                                    require(msg.data[v213 + 224] < 2);
                                    MEM[v284 + 4 + 224] = msg.data[v213 + 224];
                                    MEM[v284 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v213];
                                    MEM[v284 + 292] = 384;
                                    MEM[v284 + 388] = v215 - 288;
                                    CALLDATACOPY(v284 + 388 + 32, v213 + 288, v215 - 288);
                                    MEM[v284 + 388 + (v215 - 288) + 32] = 0;
                                    MEM[v284 + 324] = address(v21);
                                    MEM[v284 + 356] = v211;
                                    v285 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v213], msg.data[v213 + 32], msg.data[v213 + 64]).gas(msg.gas);
                                    if (!v285) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v286 = 0;
                                        if (!v285) {
                                        }
                                    }
                                }
                            } else if (!(0x10000000000000000000000000000000000000000 & v21)) {
                                v280 = v287 = MEM[64];
                                v288 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(v211, address(v21), 0).gas(msg.gas);
                                if (!v288) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v289 = 0;
                                    if (!v288) {
                                    }
                                }
                            } else {
                                v280 = v290 = MEM[64];
                                v291 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v21), v211, 0).gas(msg.gas);
                                if (!v291) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v292 = 0;
                                    if (!v291) {
                                    }
                                }
                            }
                            v293 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v293 = v294 = RETURNDATASIZE();
                            }
                            require(!((v280 + (v293 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v280 + (v293 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v280)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v280 + (v293 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v280 + v293 - v280 >= 32);
                            v1 = v295 = MEM[v280];
                        }
                    } else if (v21 >> 161 & 0x7 >= 2) {
                        if (2 - (v21 >> 161 & 0x7)) {
                            CALLDATACOPY(MEM[64] + 65, v213, v215);
                            MEM[MEM[64] + 33] = uint8(v21 >> 232);
                            MEM[MEM[64] + 32] = v211;
                            v296 = new uint256[](33 + v215);
                            MCOPY(v296.data, MEM[64] + 32, 33 + v215);
                            MEM[MEM[64] + 4 + (33 + v215) + 64] = 0;
                            v297 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, v296).gas(msg.gas);
                            if (!v297) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v298 = v299 = 0;
                                if (v297) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                    require(v300.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v298 = v301 = new bytes[](v300.length);
                                    require(!((v301 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v300.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v301 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v300.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v301)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v300.length + 32 <= MEM[64] + RETURNDATASIZE());
                                    MCOPY(v301.data, v300.data, v300.length);
                                    v301[v300.length] = 0;
                                }
                                v1 = v302 = MEM[v298 + 32];
                            }
                        } else {
                            v303 = v304 = address(v21);
                            if (!uint8(v21 >> 224)) {
                                v305 = this;
                            } else {
                                v305 = v306 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                            }
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                v303 = v307 = v304 | 0x10000000000000000000000000000000000000000;
                                if (!(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v303 = v304 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v303;
                            v308, v1 = v304.swapOutWithCallback(bool(v21 & 0x10000000000000000000000000000000000000000), v211, uint256.max, address(v305)).gas(msg.gas);
                            if (!v308) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v1 = v309 = 0;
                                if (v308) {
                                    v310 = v311 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v310 = v312 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v310 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v310 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v310 - MEM[64] >= 32);
                                }
                                if (uint8(v21 >> 232)) {
                                    require(uint8(v21 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                                    v313 = _SafeDiv(v1, 10 ** uint8(v21 >> 232));
                                    v1 = v314 = _SafeMul(v313, 10 ** uint8(v21 >> 232));
                                }
                                if (v21 & 0x200000000000000000000000000000000000000000) {
                                    if (!(0x800000000000000000000000000000000000000000 & v21)) {
                                        0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v211);
                                    } else {
                                        0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v211);
                                    }
                                }
                            }
                        }
                    } else if (v21 >> 161 & 0x7) {
                        v315 = v316 = address(v21);
                        v317, /* uint112 */ v318, /* uint112 */ v319, v320 = v316.getReserves().gas(msg.gas);
                        if (!v317) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v318 = v321 = 0;
                            v319 = v322 = 0;
                            if (v317) {
                                v323 = v324 = 96;
                                if (96 > RETURNDATASIZE()) {
                                    v323 = v325 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v323 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v323 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v323 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v323 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v319 - uint112(v319)));
                                require(!(uint32(v320) - v320));
                            }
                            v326 = v327 = uint112(v319);
                            v326 = v328 = uint112(v318);
                            if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            }
                            v329 = _SafeMul(v326, v211);
                            require(!v329 | (10 ** 6 == v329 * 10 ** 6 / v329), Panic(17)); // arithmetic overflow or underflow
                            v330 = _SafeSub(v326, v211);
                            require(10 ** 6 - (v21 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v331 = _SafeMul(v330, 10 ** 6 - (v21 >> 168 & 0xfffff));
                            v332 = _SafeDiv(v329 * 10 ** 6, v331);
                            v1 = v333 = v332 + 1;
                            require(v332 <= v333, Panic(17)); // arithmetic overflow or underflow
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v333);
                            }
                            if (!(v21 & 0x8000000000000000000000000000000000000000000000000000)) {
                                if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                    v334 = v335 = MEM[64];
                                    v336 = v316.token1().gas(msg.gas);
                                    if (!v336) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v337 = v338 = 0x11ae8;
                                        v339 = v340 = 0;
                                        if (!v336) {
                                        }
                                    }
                                } else {
                                    v334 = v341 = MEM[64];
                                    v342 = v316.token0().gas(msg.gas);
                                    if (!v342) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v337 = v343 = 0x11ac4;
                                        v339 = v344 = 0;
                                        if (!v342) {
                                        }
                                    }
                                }
                                if (32 > RETURNDATASIZE()) {
                                    require(!((v334 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v334 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v334)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v334 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v345 = v346 = v334 + RETURNDATASIZE();
                                } else {
                                    require(!((v334 + 32 > uint64.max) | (v334 + 32 < v334)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v334 + 32;
                                    v345 = v347 = v334 + 32;
                                }
                                require(v345 - v334 >= 32);
                                v339 = v348 = MEM[v334];
                                require(!(v348 - address(v348)));
                                v349 = new bytes[](68);
                                MEM[v349.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v349 + 36] = address(v316);
                                MEM[v349 + 68] = v333;
                                require(!((v349 + 128 > uint64.max) | (v349 + 128 < v349)), Panic(65)); // failed memory allocation (too much memory)
                                v350 = v349.length;
                                v351 = address(v339).transfer(address(v316), v333).gas(msg.gas);
                                if (!v351) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (RETURNDATASIZE()) {
                                        v352 = v353 = 1 != MEM[0];
                                    } else {
                                        v352 = !(address(v339)).code.size;
                                    }
                                    require(!v352, SafeERC20FailedOperation(address(v339)));
                                    // Unknown jump to Block ['0x11ac4B0x1df6B0x1e74', '0x11ae8B0x1df6B0x1e74']. Refer to 3-address code (TAC);
                                }
                            }
                            varg3 = v354 = 0;
                            if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                if (!uint8(v21 >> 224)) {
                                    v355 = v356 = this;
                                    // Unknown jump to Block 0x34d7B0x1df6B0x1e74. Refer to 3-address code (TAC);
                                } else {
                                    v355 = v357 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                                    // Unknown jump to Block 0x34d7B0x1df6B0x1e74. Refer to 3-address code (TAC);
                                }
                            } else if (!uint8(v21 >> 224)) {
                                v355 = this;
                                // Unknown jump to Block 0x34d7B0x1df6B0x1e74. Refer to 3-address code (TAC);
                            } else {
                                v355 = v358 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                            }
                            require(v315.code.size);
                            MEM[MEM[64] + 132] = v214;
                            CALLDATACOPY(MEM[64] + 132 + 32, v212, v214);
                            MEM[MEM[64] + 132 + v214 + 32] = 0;
                            v359 = v315.swap(varg3, varg3, address(v355), 128).gas(msg.gas);
                            if (!v359) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v359) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                if (v20 & 0x200000000000000000000000000000000000000000) {
                                    0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v211);
                                }
                            }
                        }
                    } else {
                        if (v21 & 0x400000000000000000000000000000000000000000) {
                            _allow = address(v21) | 0x10000000000000000000000000000000000000000;
                        } else {
                            _allow = address(v21);
                        }
                        if (!uint8(v21 >> 224)) {
                            v360 = this;
                        } else {
                            v360 = v361 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                        }
                        v362 = 0x1128(v211);
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            v363 = v364 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v363 = v365 = 0x1000276a4;
                        }
                        MEM[MEM[64] + 164] = v215;
                        CALLDATACOPY(MEM[64] + 164 + 32, v213, v215);
                        MEM[MEM[64] + 164 + v215 + 32] = 0;
                        v366, v1, v1 = address(v21).swap(address(v360), v21 & 0x10000000000000000000000000000000000000000, v362, address(v363), 160).value(v216).gas(msg.gas);
                        if (!v366) {
                            RETURNDATACOPY(MEM[64], v216, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v366) {
                                v367 = v368 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v367 = v369 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v367 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v367 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v367 - MEM[64] >= 64, v216, v216);
                            }
                            if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            }
                            if (v21 & 0x200000000000000000000000000000000000000000) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v211);
                            }
                        }
                    }
                    require(v29 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v370 = v371 = MEM[(v29 << 5) + v3 + 32];
                } else {
                    v1 = v372 = 0;
                    if (0 == v21 >> 161 & 0x7 < 4) {
                        if (v21 >> 161 & 0x7 >= 6) {
                            if (6 - (v21 >> 161 & 0x7)) {
                                v373 = v374 = 0;
                                v375 = new struct(2);
                                v375.word0 = 32;
                                v376 = v375.data;
                                v375.word1 = varg3;
                                v377 = 0;
                                v378 = 0;
                                if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                    v377 = v379 = msg.data[v25] >> 96;
                                    v378 = v380 = 0x3c6d(v379);
                                    v24 = v25 + 20;
                                    v26 = v27 - 20;
                                }
                                v381 = 0;
                                if (bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                    v381 = v382 = address(v21);
                                    v373 = v383 = 0x3c6d(v382);
                                }
                                MEM[64] = MEM[64] + ((msg.data[v24] >> 248) + 1 << 5) + 32;
                                MEM[MEM[64] + 32] = v375;
                                v384 = v385 = MEM[64] + 64;
                                v386 = v387 = v24 + 1;
                                while (v386 < v24 + v26) {
                                    v388 = v389 = v386 + 6;
                                    if (0 == (msg.data[v386 + 4] >> 248 & 0x1f == 31)) {
                                        if (msg.data[v386 + 4] >> 248 & 0x1f >= 3) {
                                            if ((msg.data[v386 + 4] >> 248 & 0x1f) - 3) {
                                                if (4 - (msg.data[v386 + 4] >> 248 & 0x1f)) {
                                                    v390 = v391 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                } else {
                                                    v390 = v392 = 0x4444c5dc75cb358380d2e3de08a90;
                                                }
                                            } else {
                                                v390 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                            }
                                        } else if (msg.data[v386 + 4] >> 248 & 0x1f) {
                                            if (1 - (msg.data[v386 + 4] >> 248 & 0x1f)) {
                                                v390 = v393 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else {
                                                v390 = v394 = msg.sender;
                                            }
                                        } else {
                                            v390 = v395 = this;
                                        }
                                    } else {
                                        v390 = v396 = msg.data[v389] >> 96;
                                        v388 = v386 + 26;
                                    }
                                    v397 = v398 = 0;
                                    if (msg.data[v386 + 4] >> 254 == 1) {
                                        v397 = v399 = msg.data[v388] >> 96;
                                        v388 = v400 = v388 + 20;
                                        v401 = this.balance;
                                        v402 = this.balance;
                                        require(v401 >= v399, InsufficientBalance(v402, v399));
                                    }
                                    v403 = v404 = MEM[64];
                                    MEM[v404] = (msg.data[v386] >> 224) + v386 - (v388 + uint8(msg.data[v386 + 4] >> 240) * 10) + 4;
                                    MEM[64] = v404 + ((msg.data[v386] >> 224) + v386 - (v388 + uint8(msg.data[v386 + 4] >> 240) * 10) + 4) + 32;
                                    CALLDATACOPY(v404 + 32, v388 + uint8(msg.data[v386 + 4] >> 240) * 10, (msg.data[v386] >> 224) + v386 - (v388 + uint8(msg.data[v386 + 4] >> 240) * 10) + 4);
                                    while (v388 < v388 + uint8(msg.data[v386 + 4] >> 240) * 10) {
                                        require(msg.data[v388] >> 248 < (msg.data[v24] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v403 = v405 = MEM[(msg.data[v388] >> 248 << 5) + MEM[64] + 32];
                                        if (0 == bool(msg.data[v388] & 0x8000000000000000000000000000000000000000000000000000)) {
                                            v406 = v407 = 10;
                                            MCOPY(v404 + (msg.data[v388] >> 176 & 0x3fffffff) + 32, v405 + (msg.data[v388] >> 208 & 0xfffff) + 32, msg.data[v388] >> 228 & 0xfffff);
                                        } else if (!(msg.data[v388] & 0x4000000000000000000000000000000000000000000000000000)) {
                                            if (msg.data[v388] >> 228 & 0xfffff) {
                                                v406 = v408 = 10;
                                                v403 = v409 = v405 + (msg.data[v388] >> 228 & 0xfffff);
                                                MEM[v409] = MEM[v405] - (msg.data[v388] >> 228 & 0xfffff);
                                                MEM[(msg.data[v388] >> 243 & 0x1fe0) + MEM[64] + 32] = v409;
                                            } else {
                                                v406 = 10;
                                            }
                                            if (msg.data[v388] >> 208 & 0xfffff) {
                                                MEM[v403] = MEM[v403] - (msg.data[v388] >> 208 & 0xfffff);
                                            }
                                        } else {
                                            v397 = MEM[32 + (v405 + (msg.data[v388] >> 208 & 0xfffff))] >> (msg.data[v388] >> 228 & 0xfffff);
                                            v406 = v410 = 10;
                                        }
                                        v388 = v388 + v406;
                                    }
                                    if (0 == msg.data[v386 + 4] >> 254 < 2) {
                                        if (0 == (msg.data[v386 + 4] >> 254 == 2)) {
                                            v411 = v390.staticcall(MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1e74 + 32:v17f7_0x3V0x31100x321cV0x1da9V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1e74]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v412 = v413 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v412 = v414 = new bytes[](RETURNDATASIZE());
                                                require(!((v414 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v414 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v414)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v414.data, 0, RETURNDATASIZE());
                                            }
                                            v415 = v416 = bool(v411);
                                        } else {
                                            v415 = v417 = v390.delegatecall(MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1e74 + 32:v17f7_0x3V0x31100x321cV0x1da9V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1e74]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v412 = v418 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v412 = v419 = new bytes[](RETURNDATASIZE());
                                                require(!((v419 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v419 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v419)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v419.data, 0, RETURNDATASIZE());
                                            }
                                        }
                                        v420 = v421 = bool(v415);
                                    } else {
                                        v420 = v390.call(MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1e74 + 32:v17f7_0x3V0x31100x321cV0x1da9V0x1e74 + 32 + MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1e74]], MEM[0:0]).value(v397).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v412 = v422 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v412 = new bytes[](RETURNDATASIZE());
                                            require(!((v412 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v412 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v412)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v412.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v423 = !v420;
                                    if (v423) {
                                        v423 = v424 = !(msg.data[v386 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (v423) {
                                        require(!MEM[v412], v412 + 32, MEM[v412]);
                                        revert(FailedCall());
                                    } else {
                                        MEM[v384] = v412;
                                        v384 = v384 + 32;
                                        v386 = (msg.data[v386] >> 224) + v386 + 4;
                                    }
                                }
                                if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                    v425 = 0x3c6d(v377);
                                    if (0 == v378 > (v21 >> 178 & 0x3ff) + v425) {
                                        v426 = v427 = 0;
                                    } else {
                                        v426 = v428 = v378 - ((v21 >> 178 & 0x3ff) + v425);
                                    }
                                    require(v426 <= varg3, v426, varg3);
                                }
                                if (0 == bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                    require(uint8(v21 >> 232) < (msg.data[v24] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v1 = v429 = MEM[MEM[(uint8(v21 >> 232) << 5) + MEM[64] + 32] + 32];
                                } else {
                                    v430 = 0x3c6d(v381);
                                    require((v21 >> 168 & 0x3ff) + v430 >= v373, InsufficientAmountOut((v21 >> 168 & 0x3ff) + v430, v373));
                                    v1 = v431 = (v21 >> 168 & 0x3ff) + v430 - v373;
                                }
                            } else {
                                MEM[64] = MEM[64] + v27 + 69;
                                CALLDATACOPY(MEM[64] + 69, v25, v27);
                                v432 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(uint8(v21 >> 232), varg3).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v433 = v434 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v433 = new bytes[](RETURNDATASIZE());
                                    require(!((v433 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v433 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v433)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v433.data, 0, RETURNDATASIZE());
                                }
                                if (!v432) {
                                    require(!MEM[v433], v433 + 32, MEM[v433]);
                                    revert(FailedCall());
                                } else {
                                    v1 = v435 = MEM[32 + v433];
                                }
                            }
                        } else {
                            if (4 - (v21 >> 161 & 0x7)) {
                                if (0 == bool(v21 & 0x10000000000000000000000000000000000000000)) {
                                    v436 = v437 = MEM[64];
                                    require(!(msg.data[v25 + 96] - address(msg.data[v25 + 96])));
                                    MEM[v437 + 4 + 128] = msg.data[v25 + 128];
                                    MEM[v437 + 4 + 160] = msg.data[v25 + 160];
                                    MEM[v437 + 4 + 192] = msg.data[v25 + 192];
                                    require(msg.data[v25 + 224] < 2);
                                    MEM[v437 + 4 + 224] = msg.data[v25 + 224];
                                    MEM[v437 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v25];
                                    MEM[v437 + 292] = 384;
                                    MEM[v437 + 388] = v27 - 288;
                                    CALLDATACOPY(v437 + 388 + 32, v25 + 288, v27 - 288);
                                    MEM[v437 + 388 + (v27 - 288) + 32] = 0;
                                    MEM[v437 + 324] = address(v21);
                                    MEM[v437 + 356] = 0;
                                    v438 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v25], msg.data[v25 + 32], msg.data[v25 + 64], address(msg.data[v25 + 96])).gas(msg.gas);
                                    if (!v438) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v439 = 0;
                                        if (!v438) {
                                        }
                                    }
                                } else {
                                    v436 = v440 = MEM[64];
                                    require(!(msg.data[v25 + 96] - address(msg.data[v25 + 96])));
                                    MEM[v440 + 4 + 128] = msg.data[v25 + 128];
                                    MEM[v440 + 4 + 160] = msg.data[v25 + 160];
                                    MEM[v440 + 4 + 192] = msg.data[v25 + 192];
                                    require(msg.data[v25 + 224] < 2);
                                    MEM[v440 + 4 + 224] = msg.data[v25 + 224];
                                    MEM[v440 + 4 + (uint8.max + 1)] = msg.data[uint8.max + 1 + v25];
                                    MEM[v440 + 292] = 384;
                                    MEM[v440 + 388] = v27 - 288;
                                    CALLDATACOPY(v440 + 388 + 32, v25 + 288, v27 - 288);
                                    MEM[v440 + 388 + (v27 - 288) + 32] = 0;
                                    MEM[v440 + 324] = address(v21);
                                    MEM[v440 + 356] = varg3;
                                    v441 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v25], msg.data[v25 + 32], msg.data[v25 + 64], address(msg.data[v25 + 96])).gas(msg.gas);
                                    if (!v441) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v442 = 0;
                                        if (!v441) {
                                        }
                                    }
                                }
                            } else if (!(0x10000000000000000000000000000000000000000 & v21)) {
                                v436 = v443 = MEM[64];
                                v444 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(varg3, address(v21), 0).gas(msg.gas);
                                if (!v444) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v445 = 0;
                                    if (!v444) {
                                    }
                                }
                            } else {
                                v436 = v446 = MEM[64];
                                v447 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v21), varg3, 0).gas(msg.gas);
                                if (!v447) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v448 = 0;
                                    if (!v447) {
                                    }
                                }
                            }
                            v449 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v449 = v450 = RETURNDATASIZE();
                            }
                            require(!((v436 + (v449 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v436 + (v449 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v436)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v436 + (v449 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v436 + v449 - v436 >= 32);
                            v1 = v451 = MEM[v436];
                        }
                    } else if (v21 >> 161 & 0x7 >= 2) {
                        if (2 - (v21 >> 161 & 0x7)) {
                            CALLDATACOPY(MEM[64] + 65, v25, v27);
                            MEM[MEM[64] + 33] = uint8(v21 >> 232);
                            MEM[MEM[64] + 32] = varg3;
                            v452 = new uint256[](33 + v27);
                            MCOPY(v452.data, MEM[64] + 32, 33 + v27);
                            MEM[MEM[64] + 4 + (33 + v27) + 64] = 0;
                            v453 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, v452).gas(msg.gas);
                            if (!v453) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v454 = v455 = 0;
                                if (v453) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                    require(v456.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v454 = v457 = new bytes[](v456.length);
                                    require(!((v457 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v456.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v457 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v456.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v457)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v456.length + 32 <= MEM[64] + RETURNDATASIZE());
                                    MCOPY(v457.data, v456.data, v456.length);
                                    v457[v456.length] = 0;
                                }
                                v1 = v458 = MEM[v454 + 32];
                            }
                        } else {
                            v459 = v460 = address(v21);
                            if (!uint8(v21 >> 224)) {
                                v461 = this;
                            } else {
                                v461 = v462 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                            }
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                v459 = v463 = v460 | 0x10000000000000000000000000000000000000000;
                                if (!(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v459 = v460 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v459;
                            v464, v1 = v460.swapOutWithCallback(bool(v21 & 0x10000000000000000000000000000000000000000), varg3, uint256.max, address(v461)).gas(msg.gas);
                            if (!v464) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v1 = v465 = 0;
                                if (v464) {
                                    v466 = v467 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v466 = v468 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v466 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v466 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v466 - MEM[64] >= 32);
                                }
                                if (uint8(v21 >> 232)) {
                                    require(uint8(v21 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                                    v469 = _SafeDiv(v1, 10 ** uint8(v21 >> 232));
                                    v1 = v470 = _SafeMul(v469, 10 ** uint8(v21 >> 232));
                                }
                                if (v21 & 0x200000000000000000000000000000000000000000) {
                                    if (!(0x800000000000000000000000000000000000000000 & v21)) {
                                        0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                    } else {
                                        0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                    }
                                }
                            }
                        }
                    } else if (v21 >> 161 & 0x7) {
                        v471 = v472 = address(v21);
                        v473, /* uint112 */ v474, /* uint112 */ v475, v476 = v472.getReserves().gas(msg.gas);
                        if (!v473) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v474 = v477 = 0;
                            v475 = v478 = 0;
                            if (v473) {
                                v479 = v480 = 96;
                                if (96 > RETURNDATASIZE()) {
                                    v479 = v481 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v479 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v479 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v479 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v479 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v475 - uint112(v475)));
                                require(!(uint32(v476) - v476));
                            }
                            v482 = v483 = uint112(v475);
                            v482 = v484 = uint112(v474);
                            if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            }
                            v485 = _SafeMul(v482, varg3);
                            require(!v485 | (10 ** 6 == v485 * 10 ** 6 / v485), Panic(17)); // arithmetic overflow or underflow
                            v486 = _SafeSub(v482, varg3);
                            require(10 ** 6 - (v21 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v487 = _SafeMul(v486, 10 ** 6 - (v21 >> 168 & 0xfffff));
                            v488 = _SafeDiv(v485 * 10 ** 6, v487);
                            v1 = v489 = v488 + 1;
                            require(v488 <= v489, Panic(17)); // arithmetic overflow or underflow
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v489);
                            }
                            if (!(v21 & 0x8000000000000000000000000000000000000000000000000000)) {
                                if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                    v490 = v491 = MEM[64];
                                    v492 = v472.token1().gas(msg.gas);
                                    if (!v492) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v493 = v494 = 0x11ae8;
                                        v495 = v496 = 0;
                                        if (!v492) {
                                        }
                                    }
                                } else {
                                    v490 = v497 = MEM[64];
                                    v498 = v472.token0().gas(msg.gas);
                                    if (!v498) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v493 = v499 = 0x11ac4;
                                        v495 = v500 = 0;
                                        if (!v498) {
                                        }
                                    }
                                }
                                if (32 > RETURNDATASIZE()) {
                                    require(!((v490 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v490 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v490)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v490 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v501 = v502 = v490 + RETURNDATASIZE();
                                } else {
                                    require(!((v490 + 32 > uint64.max) | (v490 + 32 < v490)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v490 + 32;
                                    v501 = v503 = v490 + 32;
                                }
                                require(v501 - v490 >= 32);
                                v495 = v504 = MEM[v490];
                                require(!(v504 - address(v504)));
                                v505 = new bytes[](68);
                                MEM[v505.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v505 + 36] = address(v472);
                                MEM[v505 + 68] = v489;
                                require(!((v505 + 128 > uint64.max) | (v505 + 128 < v505)), Panic(65)); // failed memory allocation (too much memory)
                                v506 = v505.length;
                                v507 = address(v495).transfer(address(v472), v489).gas(msg.gas);
                                if (!v507) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (RETURNDATASIZE()) {
                                        v508 = v509 = 1 != MEM[0];
                                    } else {
                                        v508 = !(address(v495)).code.size;
                                    }
                                    require(!v508, SafeERC20FailedOperation(address(v495)));
                                    // Unknown jump to Block ['0x11ac4B0x1da9B0x1e74', '0x11ae8B0x1da9B0x1e74']. Refer to 3-address code (TAC);
                                }
                            }
                            varg3 = v510 = 0;
                            if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                if (!uint8(v21 >> 224)) {
                                    v511 = v512 = this;
                                    // Unknown jump to Block 0x34d7B0x1da9B0x1e74. Refer to 3-address code (TAC);
                                } else {
                                    v511 = v513 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                                    // Unknown jump to Block 0x34d7B0x1da9B0x1e74. Refer to 3-address code (TAC);
                                }
                            } else if (!uint8(v21 >> 224)) {
                                v511 = this;
                                // Unknown jump to Block 0x34d7B0x1da9B0x1e74. Refer to 3-address code (TAC);
                            } else {
                                v511 = v514 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                            }
                            require(v471.code.size);
                            v515 = new uint256[](v26);
                            CALLDATACOPY(v515.data, v24, v26);
                            MEM[v515.data] = 0;
                            v516 = v471.swap(varg3, varg3, address(v511), v515).gas(msg.gas);
                            if (!v516) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v516) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                if (v20 & 0x200000000000000000000000000000000000000000) {
                                    0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                }
                            }
                        }
                    } else {
                        if (v21 & 0x400000000000000000000000000000000000000000) {
                            _allow = address(v21) | 0x10000000000000000000000000000000000000000;
                        } else {
                            _allow = address(v21);
                        }
                        if (!uint8(v21 >> 224)) {
                            v517 = this;
                        } else {
                            v517 = v518 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                        }
                        v519 = 0x1128(varg3);
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            v520 = v521 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v520 = v522 = 0x1000276a4;
                        }
                        v523 = new uint256[](v27);
                        CALLDATACOPY(v523.data, v25, v27);
                        MEM[v523.data] = 0;
                        v524, v1, v1 = address(v21).swap(address(v517), v21 & 0x10000000000000000000000000000000000000000, v519, address(v520), v523).value(v372).gas(msg.gas);
                        if (!v524) {
                            RETURNDATACOPY(MEM[64], v372, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v524) {
                                v525 = v526 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v525 = v527 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v525 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v525 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v525 - MEM[64] >= 64, v372, v372);
                            }
                            if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            }
                            if (v21 & 0x200000000000000000000000000000000000000000) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                            }
                        }
                    }
                    require(v29 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v370 = v528 = MEM[(v29 << 5) + v3 + 32];
                }
                v208 = v370 + varg3;
                require(v370 <= v208, Panic(17)); // arithmetic overflow or underflow
            }
            require(v3 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[(v3 << 5) + v3 + 32] = v208;
            v1 = v1 + v3;
        } else {
            v3 = v529 = 0x11703;
            v3 = v530 = 32;
            v531 = v532 = msg.data[v3] >> 224;
            v533 = v534 = v3 + 4;
            v3 = v3 + v532 + 4;
            v3 = v535 = uint8(v21 >> 208);
            v3 = v536 = uint8(v21 >> 216);
            if (0 == bool(v21 & 0x100000000000000000000000000000000000000000)) {
                require(v535 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v537 = _SafeMul(MEM[(v535 << 5) + v3 + 32], v21 >> 192 & 0x3fff);
                v538 = v539 = v537 / 10000;
                v538 = v540 = 0;
                if (0 == v21 >> 161 & 0x7 < 4) {
                    if (v21 >> 161 & 0x7 >= 6) {
                        if (6 - (v21 >> 161 & 0x7)) {
                            v541 = v542 = 0;
                            v543 = new struct(2);
                            v543.word0 = 32;
                            v544 = v543.data;
                            v543.word1 = v539;
                            v545 = 0;
                            v546 = 0;
                            if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                v545 = v547 = msg.data[v534] >> 96;
                                v546 = v548 = 0x3c6d(v547);
                                v533 = v549 = v534 + 20;
                                v531 = v550 = v532 - 20;
                            }
                            v551 = 0;
                            if (bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                v551 = v552 = address(v21);
                                v541 = v553 = 0x3c6d(v552);
                            }
                            MEM[64] = MEM[64] + ((msg.data[v533] >> 248) + 1 << 5) + 32;
                            MEM[MEM[64] + 32] = v543;
                            v554 = v555 = MEM[64] + 64;
                            v556 = v557 = v533 + 1;
                            while (v556 < v533 + v531) {
                                v558 = v559 = v556 + 6;
                                if (0 == (msg.data[v556 + 4] >> 248 & 0x1f == 31)) {
                                    if (msg.data[v556 + 4] >> 248 & 0x1f >= 3) {
                                        if ((msg.data[v556 + 4] >> 248 & 0x1f) - 3) {
                                            if (4 - (msg.data[v556 + 4] >> 248 & 0x1f)) {
                                                v560 = v561 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                            } else {
                                                v560 = v562 = 0x4444c5dc75cb358380d2e3de08a90;
                                            }
                                        } else {
                                            v560 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                        }
                                    } else if (msg.data[v556 + 4] >> 248 & 0x1f) {
                                        if (1 - (msg.data[v556 + 4] >> 248 & 0x1f)) {
                                            v560 = v563 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                        } else {
                                            v560 = v564 = msg.sender;
                                        }
                                    } else {
                                        v560 = v565 = this;
                                    }
                                } else {
                                    v560 = v566 = msg.data[v559] >> 96;
                                    v558 = v556 + 26;
                                }
                                v567 = v568 = 0;
                                if (msg.data[v556 + 4] >> 254 == 1) {
                                    v567 = v569 = msg.data[v558] >> 96;
                                    v558 = v570 = v558 + 20;
                                    v571 = this.balance;
                                    v572 = this.balance;
                                    require(v571 >= v569, InsufficientBalance(v572, v569));
                                }
                                v573 = v574 = MEM[64];
                                MEM[v574] = (msg.data[v556] >> 224) + v556 - (v558 + uint8(msg.data[v556 + 4] >> 240) * 10) + 4;
                                MEM[64] = v574 + ((msg.data[v556] >> 224) + v556 - (v558 + uint8(msg.data[v556 + 4] >> 240) * 10) + 4) + 32;
                                CALLDATACOPY(v574 + 32, v558 + uint8(msg.data[v556 + 4] >> 240) * 10, (msg.data[v556] >> 224) + v556 - (v558 + uint8(msg.data[v556 + 4] >> 240) * 10) + 4);
                                while (v558 < v558 + uint8(msg.data[v556 + 4] >> 240) * 10) {
                                    require(msg.data[v558] >> 248 < (msg.data[v533] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v573 = v575 = MEM[(msg.data[v558] >> 248 << 5) + MEM[64] + 32];
                                    if (0 == bool(msg.data[v558] & 0x8000000000000000000000000000000000000000000000000000)) {
                                        v576 = v577 = 10;
                                        MCOPY(v574 + (msg.data[v558] >> 176 & 0x3fffffff) + 32, v575 + (msg.data[v558] >> 208 & 0xfffff) + 32, msg.data[v558] >> 228 & 0xfffff);
                                    } else if (!(msg.data[v558] & 0x4000000000000000000000000000000000000000000000000000)) {
                                        if (msg.data[v558] >> 228 & 0xfffff) {
                                            v576 = v578 = 10;
                                            v573 = v579 = v575 + (msg.data[v558] >> 228 & 0xfffff);
                                            MEM[v579] = MEM[v575] - (msg.data[v558] >> 228 & 0xfffff);
                                            MEM[(msg.data[v558] >> 243 & 0x1fe0) + MEM[64] + 32] = v579;
                                        } else {
                                            v576 = 10;
                                        }
                                        if (msg.data[v558] >> 208 & 0xfffff) {
                                            MEM[v573] = MEM[v573] - (msg.data[v558] >> 208 & 0xfffff);
                                        }
                                    } else {
                                        v567 = MEM[32 + (v575 + (msg.data[v558] >> 208 & 0xfffff))] >> (msg.data[v558] >> 228 & 0xfffff);
                                        v576 = v580 = 10;
                                    }
                                    v558 = v558 + v576;
                                }
                                if (0 == msg.data[v556 + 4] >> 254 < 2) {
                                    if (0 == (msg.data[v556 + 4] >> 254 == 2)) {
                                        v581 = v560.staticcall(MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1d2d + 32:v17f7_0x3V0x31100x216bV0x1e66V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1d2d]], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v582 = v583 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v582 = v584 = new bytes[](RETURNDATASIZE());
                                            require(!((v584 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v584 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v584)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v584.data, 0, RETURNDATASIZE());
                                        }
                                        v585 = v586 = bool(v581);
                                    } else {
                                        v585 = v587 = v560.delegatecall(MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1d2d + 32:v17f7_0x3V0x31100x216bV0x1e66V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1d2d]], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v582 = v588 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v582 = v589 = new bytes[](RETURNDATASIZE());
                                            require(!((v589 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v589 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v589)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v589.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v590 = v591 = bool(v585);
                                } else {
                                    v590 = v560.call(MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1d2d + 32:v17f7_0x3V0x31100x216bV0x1e66V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x216bV0x1e66V0x1d2d]], MEM[0:0]).value(v567).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v582 = v592 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v582 = new bytes[](RETURNDATASIZE());
                                        require(!((v582 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v582 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v582)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v582.data, 0, RETURNDATASIZE());
                                    }
                                }
                                v593 = !v590;
                                if (v593) {
                                    v593 = v594 = !(msg.data[v556 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                }
                                if (v593) {
                                    require(!MEM[v582], v582 + 32, MEM[v582]);
                                    revert(FailedCall());
                                } else {
                                    MEM[v554] = v582;
                                    v554 = v554 + 32;
                                    v556 = (msg.data[v556] >> 224) + v556 + 4;
                                }
                            }
                            if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                v595 = 0x3c6d(v545);
                                if (0 == v546 > (v21 >> 178 & 0x3ff) + v595) {
                                    v596 = v597 = 0;
                                } else {
                                    v596 = v598 = v546 - ((v21 >> 178 & 0x3ff) + v595);
                                }
                                require(v596 <= v539, v596, v539);
                            }
                            if (0 == bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                require(uint8(v21 >> 232) < (msg.data[v533] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v538 = v599 = MEM[MEM[(uint8(v21 >> 232) << 5) + MEM[64] + 32] + 32];
                            } else {
                                v600 = 0x3c6d(v551);
                                require((v21 >> 168 & 0x3ff) + v600 >= v541, InsufficientAmountOut((v21 >> 168 & 0x3ff) + v600, v541));
                                v538 = v601 = (v21 >> 168 & 0x3ff) + v600 - v541;
                            }
                        } else {
                            MEM[64] = MEM[64] + v532 + 69;
                            CALLDATACOPY(MEM[64] + 69, v534, v532);
                            v602 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v539, uint8(v21 >> 232)).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v603 = v604 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v603 = new bytes[](RETURNDATASIZE());
                                require(!((v603 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v603 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v603)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v603.data, 0, RETURNDATASIZE());
                            }
                            if (!v602) {
                                require(!MEM[v603], v603 + 32, MEM[v603]);
                                revert(FailedCall());
                            } else {
                                v538 = v605 = MEM[32 + v603];
                            }
                        }
                    } else {
                        if (4 - (v21 >> 161 & 0x7)) {
                            if (0 == bool(v21 & 0x10000000000000000000000000000000000000000)) {
                                v606 = v607 = MEM[64];
                                require(!(msg.data[v534 + 96] - address(msg.data[v534 + 96])));
                                require(msg.data[v534 + 224] < 2);
                                v608 = new uint256[](v532 - 288);
                                CALLDATACOPY(v608.data, v534 + 288, v532 - 288);
                                MEM[v608 + (v532 - 288) + 32] = 0;
                                v609 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v534], msg.data[v534 + 32], msg.data[v534 + 64], address(msg.data[v534 + 96]), msg.data[v534 + 128], msg.data[v534 + 160], msg.data[v534 + 192], msg.data[v534 + 224], msg.data[uint8.max + 1 + v534], v608, address(v21), 0).gas(msg.gas);
                                if (!v609) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v538 = v610 = 0;
                                    if (!v609) {
                                    }
                                }
                            } else {
                                v606 = v611 = MEM[64];
                                require(!(msg.data[v534 + 96] - address(msg.data[v534 + 96])));
                                require(msg.data[v534 + 224] < 2);
                                v612 = new uint256[](v532 - 288);
                                CALLDATACOPY(v612.data, v534 + 288, v532 - 288);
                                MEM[v612 + (v532 - 288) + 32] = 0;
                                v613 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v534], msg.data[v534 + 32], msg.data[v534 + 64], address(msg.data[v534 + 96]), msg.data[v534 + 128], msg.data[v534 + 160], msg.data[v534 + 192], msg.data[v534 + 224], msg.data[uint8.max + 1 + v534], v612, address(v21), v539).gas(msg.gas);
                                if (!v613) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v538 = v614 = 0;
                                    if (!v613) {
                                    }
                                }
                            }
                        } else if (!(0x10000000000000000000000000000000000000000 & v21)) {
                            v606 = v615 = MEM[64];
                            v616 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(v539, address(v21), 0).gas(msg.gas);
                            if (!v616) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v538 = v617 = 0;
                                if (!v616) {
                                }
                            }
                        } else {
                            v606 = v618 = MEM[64];
                            v619 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v21), v539, 0).gas(msg.gas);
                            if (!v619) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v538 = v620 = 0;
                                if (!v619) {
                                }
                            }
                        }
                        v621 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v621 = v622 = RETURNDATASIZE();
                        }
                        require(!((v606 + (v621 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v606 + (v621 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v606)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v606 + (v621 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v606 + v621 - v606 >= 32);
                        v538 = v623 = MEM[v606];
                    }
                } else if (v21 >> 161 & 0x7 >= 2) {
                    if (2 - (v21 >> 161 & 0x7)) {
                        CALLDATACOPY(MEM[64] + 65, v534, v532);
                        MEM[MEM[64] + 33] = uint8(v21 >> 232);
                        MEM[MEM[64] + 32] = v539;
                        MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = 32;
                        MEM[MEM[64] + 4 + 32] = 33 + v532;
                        MCOPY(MEM[64] + 4 + 64, MEM[64] + 32, 33 + v532);
                        MEM[MEM[64] + 4 + (33 + v532) + 64] = 0;
                        v624 = address(0x4444c5dc75cb358380d2e3de08a90).call(v625, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                        if (!v624) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v626 = v627 = 0;
                            if (v624) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                require(v628.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v626 = v629 = new bytes[](v628.length);
                                require(!((v629 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v628.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v629 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v628.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v629)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v628.length + 32 <= MEM[64] + RETURNDATASIZE());
                                MCOPY(v629.data, v628.data, v628.length);
                                v629[v628.length] = 0;
                            }
                            v538 = v630 = MEM[v626 + 32];
                        }
                    } else {
                        v631 = v632 = address(v21);
                        if (!uint8(v21 >> 224)) {
                            v633 = this;
                        } else {
                            v633 = v634 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                        }
                        if (bool(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v539);
                            }
                        } else {
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                v631 = v635 = v632 | 0x10000000000000000000000000000000000000000;
                                if (!bool(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v631 = v632 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v631;
                        }
                        if (!(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                            v636, /* uint112 */ v538 = v632.swapInWithCallback(bool(v21 & 0x10000000000000000000000000000000000000000), v539, 0, address(v633)).gas(msg.gas);
                            if (!v636) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v538 = v637 = 0;
                                if (v636) {
                                    v638 = v639 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v638 = v640 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v638 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v638 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v638 - MEM[64] >= 32);
                                }
                            }
                        } else {
                            v641, /* uint112 */ v538 = v632.swapIn(bool(v21 & 0x10000000000000000000000000000000000000000), v539, 0, address(v633)).value(v539).gas(msg.gas);
                            if (!v641) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v538 = v642 = 0;
                                if (v641) {
                                    v643 = v644 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v643 = v645 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v643 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v643 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v643 - MEM[64] >= 32);
                                }
                            }
                        }
                        if (uint8(v21 >> 232)) {
                            require(uint8(v21 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                            v646 = _SafeDiv(v538, 10 ** uint8(v21 >> 232));
                            v538 = v647 = _SafeMul(v646, 10 ** uint8(v21 >> 232));
                        }
                        if (v21 & 0x200000000000000000000000000000000000000000) {
                            if (!(0x800000000000000000000000000000000000000000 & v21)) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v538);
                            } else {
                                0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v538);
                            }
                        }
                    }
                } else if (v21 >> 161 & 0x7) {
                    v648 = v649 = address(v21);
                    v650, /* uint112 */ v538, /* uint112 */ v538, v651 = v649.getReserves().gas(msg.gas);
                    if (!v650) {
                        RETURNDATACOPY(MEM[64], v540, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v650) {
                            v652 = v653 = 96;
                            if (96 > RETURNDATASIZE()) {
                                v652 = v654 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v652 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v652 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v652 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v652 - MEM[64] >= 96, v540, v540);
                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                            require(!(v538 - uint112(v538)));
                            require(!(uint32(v651) - v651), v540, v540);
                        }
                        v655 = v656 = uint112(v538);
                        v655 = v657 = uint112(v538);
                        if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                        }
                        if (!v540) {
                            require(10 ** 6 - (v21 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v658 = _SafeMul(v539, 10 ** 6 - (v21 >> 168 & 0xfffff));
                            v659 = _SafeMul(v658, v655);
                            require(!v655 | (10 ** 6 == v655 * 10 ** 6 / v655), Panic(17)); // arithmetic overflow or underflow
                            v660 = _SafeAdd(v655 * 10 ** 6, v658);
                            v538 = v661 = _SafeDiv(v659, v660);
                        } else {
                            v662 = _SafeMul(v655, v539);
                            require(!v662 | (10 ** 6 == v662 * 10 ** 6 / v662), Panic(17)); // arithmetic overflow or underflow
                            v663 = _SafeSub(v655, v539);
                            require(10 ** 6 - (v21 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v664 = _SafeMul(v663, 10 ** 6 - (v21 >> 168 & 0xfffff));
                            v665 = _SafeDiv(v662 * 10 ** 6, v664);
                            v538 = v666 = v665 + 1;
                            require(v665 <= v666, Panic(17)); // arithmetic overflow or underflow
                        }
                        if (v21 & 0x400000000000000000000000000000000000000000) {
                            0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v538);
                        }
                        if (!(v21 & 0x8000000000000000000000000000000000000000000000000000)) {
                            if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                v667 = v668 = MEM[64];
                                v669 = v649.token1().gas(msg.gas);
                                if (!v669) {
                                    RETURNDATACOPY(MEM[64], v540, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v670 = v671 = 0x119cb;
                                    if (!v669) {
                                    }
                                }
                            } else {
                                v667 = v672 = MEM[64];
                                v673 = v649.token0().gas(msg.gas);
                                if (!v673) {
                                    RETURNDATACOPY(MEM[64], v540, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v670 = v674 = 0x1197f;
                                    if (v673) {
                                        // Unknown jump to Block 0x26750x216bB0x1e66B0x1d2d. Refer to 3-address code (TAC);
                                    }
                                }
                            }
                            v675 = new bytes[](68);
                            MEM[v675.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            MEM[v675 + 36] = address(v649);
                            MEM[v675 + 68] = v538;
                            require(!((v675 + 128 > uint64.max) | (v675 + 128 < v675)), Panic(65)); // failed memory allocation (too much memory)
                            v676 = v675.length;
                            v677 = address(v538).transfer(address(v649), v538).gas(msg.gas);
                            if (!v677) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (RETURNDATASIZE()) {
                                    v678 = v679 = 1 != MEM[0];
                                } else {
                                    v678 = !(address(v538)).code.size;
                                }
                                require(!v678, SafeERC20FailedOperation(address(v538)));
                                // Unknown jump to Block ['0x1197fB0x1e66B0x1d2d', '0x119cbB0x1e66B0x1d2d']. Refer to 3-address code (TAC);
                            }
                            if (32 > RETURNDATASIZE()) {
                                require(!((v667 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v667 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v667)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v667 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v680 = v681 = v667 + RETURNDATASIZE();
                            } else {
                                require(!((v667 + 32 > uint64.max) | (v667 + 32 < v667)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v667 + 32;
                                v680 = v682 = v667 + 32;
                            }
                            require(v680 - v667 >= 32);
                            v538 = v683 = MEM[v667];
                            require(!(v683 - address(v683)));
                        }
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            if (!uint8(v21 >> 224)) {
                                v684 = v685 = this;
                                // Unknown jump to Block 0x2519B0x1e66B0x1d2d. Refer to 3-address code (TAC);
                            } else {
                                v684 = v686 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                                // Unknown jump to Block 0x2519B0x1e66B0x1d2d. Refer to 3-address code (TAC);
                            }
                        } else if (!uint8(v21 >> 224)) {
                            v684 = this;
                            // Unknown jump to Block 0x2519B0x1e66B0x1d2d. Refer to 3-address code (TAC);
                        } else {
                            v684 = v687 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                        }
                        require(v648.code.size, v538, v538);
                        MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = v538;
                        MEM[MEM[64] + 36] = v538;
                        MEM[MEM[64] + 68] = address(v684);
                        MEM[MEM[64] + 100] = 128;
                        MEM[MEM[64] + 132] = v531;
                        CALLDATACOPY(MEM[64] + 132 + 32, v533, v531);
                        MEM[MEM[64] + 132 + v531 + 32] = 0;
                        v688 = v648.call(MEM[MEM[64]:MEM[64] + v321c0x3214V0x1da9V0x1d2d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 132 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + v3d15V0x282fV0x1e66V0x1d2d]).value(v538).gas(msg.gas);
                        if (!v688) {
                            RETURNDATACOPY(MEM[64], v538, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v688) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= v538, v538, v538);
                            }
                            if (0x200000000000000000000000000000000000000000 & v20) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v538);
                            }
                        }
                    }
                } else {
                    v689 = v690 = 64;
                    v691 = v692 = address(v21);
                    v693 = v694 = v21 & 0x10000000000000000000000000000000000000000;
                    if (v21 & 0x400000000000000000000000000000000000000000) {
                        v691 = v695 = v692 | 0x10000000000000000000000000000000000000000;
                    }
                    _allow = v691;
                    if (!uint8(v21 >> 224)) {
                        v696 = this;
                    } else {
                        v696 = v697 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                    }
                    if (!v540) {
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            v698 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v698 = v699 = 0x1000276a4;
                        }
                        v700 = MEM[v690];
                        MEM[v700] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v700 + 4] = address(v696);
                        MEM[v700 + 36] = v694;
                        MEM[v700 + 68] = v539;
                        MEM[v700 + 100] = address(v698);
                        MEM[v700 + 132] = 160;
                        MEM[v700 + 164] = v532;
                        CALLDATACOPY(v700 + 164 + 32, v534, v532);
                        MEM[v700 + 164 + v532 + 32] = 0;
                        v701 = (v532 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v700 + 164) + 32;
                        // Unknown jump to Block 0x227aB0x1e66B0x1d2d. Refer to 3-address code (TAC);
                    } else {
                        v702 = 0x1128(v539);
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            v703 = v704 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v703 = v705 = 0x1000276a4;
                        }
                        v700 = v706 = MEM[v690];
                        MEM[v706] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v706 + 4] = address(v696);
                        MEM[v706 + 36] = v694;
                        MEM[v706 + 68] = v702;
                        MEM[v706 + 100] = address(v703);
                        MEM[v706 + 132] = 160;
                        MEM[v706 + 164] = v532;
                        CALLDATACOPY(v706 + 164 + 32, v534, v532);
                        MEM[v706 + 164 + v532 + 32] = 0;
                        v701 = v707 = (v532 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v706 + 164) + 32;
                    }
                    v708 = v691.call(MEM[v22170x2228V0x239aV0x1e66V0x1d2d:v22170x2228V0x239aV0x1e66V0x1d2d + v22170x13f2V0x239aV0x1e66V0x1d2d - v22170x2228V0x239aV0x1e66V0x1d2d], MEM[v22170x2228V0x239aV0x1e66V0x1d2d:v22170x2228V0x239aV0x1e66V0x1d2d + v227a_0x6V0x1e66V0x1d2d]).value(v538).gas(msg.gas);
                    if (!v708) {
                        RETURNDATACOPY(MEM[64], v540, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v708) {
                            v709 = v710 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v709 = v711 = RETURNDATASIZE();
                            }
                            require(!((v700 + (v709 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v700 + (v709 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v700)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v700 + (v709 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v700 + v709 - v700 >= 64, v540, v540);
                            v538 = v712 = MEM[v700];
                            v538 = v713 = MEM[v700 + 32];
                        }
                        if (!v540) {
                            if (v693) {
                            }
                            require(v538 != int256.min, Panic(17)); // arithmetic overflow or underflow
                            v538 = v714 = 0 - v538;
                        } else if (v693) {
                        }
                        if (v21 & 0x200000000000000000000000000000000000000000) {
                            if (!v540) {
                                0x22c8(v538);
                            } else {
                                0x22c8(v539);
                            }
                        }
                    }
                }
                require(v536 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v715 = _SafeAdd(MEM[(v536 << 5) + v3 + 32], v538);
                require(v536 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[(v536 << 5) + v3 + 32] = v715;
                require(v535 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v539 <= MEM[(v535 << 5) + v3 + 32], v539, MEM[(v535 << 5) + v3 + 32]);
                v716 = v717 = MEM[(v535 << 5) + v3 + 32] - v539;
            } else {
                v3 = v718 = 0x11729;
                if (!(v21 & 0x400000000000000000000000000000000000000000000000)) {
                    varg3 = v719 = msg.data[v534];
                    v720 = v721 = v534 + v530;
                    v722 = v723 = v532 - 32;
                    v1 = v724 = 0;
                    if (0 == v21 >> 161 & 0x7 < 4) {
                        if (v21 >> 161 & 0x7 >= 6) {
                            if (6 - (v21 >> 161 & 0x7)) {
                                v725 = v726 = 0;
                                v727 = new struct(2);
                                v727.word0 = 32;
                                v728 = v727.data;
                                v727.word1 = v719;
                                v729 = 0;
                                v730 = 0;
                                if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                    v729 = v731 = msg.data[v721] >> 96;
                                    v730 = v732 = 0x3c6d(v731);
                                    v720 = v721 + 20;
                                    v722 = v723 - 20;
                                }
                                v733 = 0;
                                if (bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                    v733 = v734 = address(v21);
                                    v725 = v735 = 0x3c6d(v734);
                                }
                                MEM[64] = MEM[64] + ((msg.data[v720] >> 248) + 1 << 5) + 32;
                                MEM[MEM[64] + 32] = v727;
                                v736 = v737 = MEM[64] + 64;
                                v738 = v739 = v720 + 1;
                                while (v738 < v720 + v722) {
                                    v740 = v741 = v738 + 6;
                                    if (0 == (msg.data[v738 + 4] >> 248 & 0x1f == 31)) {
                                        if (msg.data[v738 + 4] >> 248 & 0x1f >= 3) {
                                            if ((msg.data[v738 + 4] >> 248 & 0x1f) - 3) {
                                                if (4 - (msg.data[v738 + 4] >> 248 & 0x1f)) {
                                                    v742 = v743 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                } else {
                                                    v742 = v744 = 0x4444c5dc75cb358380d2e3de08a90;
                                                }
                                            } else {
                                                v742 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                            }
                                        } else if (msg.data[v738 + 4] >> 248 & 0x1f) {
                                            if (1 - (msg.data[v738 + 4] >> 248 & 0x1f)) {
                                                v742 = v745 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else {
                                                v742 = v746 = msg.sender;
                                            }
                                        } else {
                                            v742 = v747 = this;
                                        }
                                    } else {
                                        v742 = v748 = msg.data[v741] >> 96;
                                        v740 = v738 + 26;
                                    }
                                    v749 = v750 = 0;
                                    if (msg.data[v738 + 4] >> 254 == 1) {
                                        v749 = v751 = msg.data[v740] >> 96;
                                        v740 = v752 = v740 + 20;
                                        v753 = this.balance;
                                        v754 = this.balance;
                                        require(v753 >= v751, InsufficientBalance(v754, v751));
                                    }
                                    v755 = v756 = MEM[64];
                                    MEM[v756] = (msg.data[v738] >> 224) + v738 - (v740 + uint8(msg.data[v738 + 4] >> 240) * 10) + 4;
                                    MEM[64] = v756 + ((msg.data[v738] >> 224) + v738 - (v740 + uint8(msg.data[v738 + 4] >> 240) * 10) + 4) + 32;
                                    CALLDATACOPY(v756 + 32, v740 + uint8(msg.data[v738 + 4] >> 240) * 10, (msg.data[v738] >> 224) + v738 - (v740 + uint8(msg.data[v738 + 4] >> 240) * 10) + 4);
                                    while (v740 < v740 + uint8(msg.data[v738 + 4] >> 240) * 10) {
                                        require(msg.data[v740] >> 248 < (msg.data[v720] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v755 = v757 = MEM[(msg.data[v740] >> 248 << 5) + MEM[64] + 32];
                                        if (0 == bool(msg.data[v740] & 0x8000000000000000000000000000000000000000000000000000)) {
                                            v758 = v759 = 10;
                                            MCOPY(v756 + (msg.data[v740] >> 176 & 0x3fffffff) + 32, v757 + (msg.data[v740] >> 208 & 0xfffff) + 32, msg.data[v740] >> 228 & 0xfffff);
                                        } else if (!(msg.data[v740] & 0x4000000000000000000000000000000000000000000000000000)) {
                                            if (msg.data[v740] >> 228 & 0xfffff) {
                                                v758 = v760 = 10;
                                                v755 = v761 = v757 + (msg.data[v740] >> 228 & 0xfffff);
                                                MEM[v761] = MEM[v757] - (msg.data[v740] >> 228 & 0xfffff);
                                                MEM[(msg.data[v740] >> 243 & 0x1fe0) + MEM[64] + 32] = v761;
                                            } else {
                                                v758 = 10;
                                            }
                                            if (msg.data[v740] >> 208 & 0xfffff) {
                                                MEM[v755] = MEM[v755] - (msg.data[v740] >> 208 & 0xfffff);
                                            }
                                        } else {
                                            v749 = MEM[32 + (v757 + (msg.data[v740] >> 208 & 0xfffff))] >> (msg.data[v740] >> 228 & 0xfffff);
                                            v758 = v762 = 10;
                                        }
                                        v740 = v740 + v758;
                                    }
                                    if (0 == msg.data[v738 + 4] >> 254 < 2) {
                                        if (0 == (msg.data[v738 + 4] >> 254 == 2)) {
                                            v763 = v742.staticcall(MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1d2d + 32:v17f7_0x3V0x31100x321cV0x1df6V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1d2d]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v764 = v765 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v764 = v766 = new bytes[](RETURNDATASIZE());
                                                require(!((v766 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v766 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v766)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v766.data, 0, RETURNDATASIZE());
                                            }
                                            v767 = v768 = bool(v763);
                                        } else {
                                            v767 = v769 = v742.delegatecall(MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1d2d + 32:v17f7_0x3V0x31100x321cV0x1df6V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1d2d]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v764 = v770 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v764 = v771 = new bytes[](RETURNDATASIZE());
                                                require(!((v771 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v771 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v771)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v771.data, 0, RETURNDATASIZE());
                                            }
                                        }
                                        v772 = v773 = bool(v767);
                                    } else {
                                        v772 = v742.call(MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1d2d + 32:v17f7_0x3V0x31100x321cV0x1df6V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x321cV0x1df6V0x1d2d]], MEM[0:0]).value(v749).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v764 = v774 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v764 = new bytes[](RETURNDATASIZE());
                                            require(!((v764 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v764 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v764)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v764.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v775 = !v772;
                                    if (v775) {
                                        v775 = v776 = !(msg.data[v738 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (v775) {
                                        require(!MEM[v764], v764 + 32, MEM[v764]);
                                        revert(FailedCall());
                                    } else {
                                        MEM[v736] = v764;
                                        v736 = v736 + 32;
                                        v738 = (msg.data[v738] >> 224) + v738 + 4;
                                    }
                                }
                                if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                    v777 = 0x3c6d(v729);
                                    if (0 == v730 > (v21 >> 178 & 0x3ff) + v777) {
                                        v778 = v779 = 0;
                                    } else {
                                        v778 = v780 = v730 - ((v21 >> 178 & 0x3ff) + v777);
                                    }
                                    require(v778 <= v719, v778, v719);
                                }
                                if (0 == bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                    require(uint8(v21 >> 232) < (msg.data[v720] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v1 = v781 = MEM[MEM[(uint8(v21 >> 232) << 5) + MEM[64] + 32] + 32];
                                } else {
                                    v782 = 0x3c6d(v733);
                                    require((v21 >> 168 & 0x3ff) + v782 >= v725, InsufficientAmountOut((v21 >> 168 & 0x3ff) + v782, v725));
                                    v1 = v783 = (v21 >> 168 & 0x3ff) + v782 - v725;
                                }
                            } else {
                                MEM[64] = MEM[64] + v723 + 69;
                                CALLDATACOPY(MEM[64] + 69, v721, v723);
                                v784 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v719, uint8(v21 >> 232)).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v785 = v786 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v785 = new bytes[](RETURNDATASIZE());
                                    require(!((v785 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v785 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v785)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v785.data, 0, RETURNDATASIZE());
                                }
                                if (!v784) {
                                    require(!MEM[v785], v785 + 32, MEM[v785]);
                                    revert(FailedCall());
                                } else {
                                    v1 = v787 = MEM[32 + v785];
                                }
                            }
                        } else {
                            if (4 - (v21 >> 161 & 0x7)) {
                                if (0 == bool(v21 & 0x10000000000000000000000000000000000000000)) {
                                    v788 = v789 = MEM[64];
                                    require(!(msg.data[v721 + 96] - address(msg.data[v721 + 96])));
                                    require(msg.data[v721 + 224] < 2);
                                    v790 = new uint256[](v723 - 288);
                                    CALLDATACOPY(v790.data, v721 + 288, v723 - 288);
                                    MEM[v790 + (v723 - 288) + 32] = 0;
                                    v791 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v721], msg.data[v721 + 32], msg.data[v721 + 64], address(msg.data[v721 + 96]), msg.data[v721 + 128], msg.data[v721 + 160], msg.data[v721 + 192], msg.data[v721 + 224], msg.data[uint8.max + 1 + v721], v790, address(v21), 0).gas(msg.gas);
                                    if (!v791) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v792 = 0;
                                        if (!v791) {
                                        }
                                    }
                                } else {
                                    v788 = v793 = MEM[64];
                                    require(!(msg.data[v721 + 96] - address(msg.data[v721 + 96])));
                                    require(msg.data[v721 + 224] < 2);
                                    v794 = new uint256[](v723 - 288);
                                    CALLDATACOPY(v794.data, v721 + 288, v723 - 288);
                                    MEM[v794 + (v723 - 288) + 32] = 0;
                                    v795 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v721], msg.data[v721 + 32], msg.data[v721 + 64], address(msg.data[v721 + 96]), msg.data[v721 + 128], msg.data[v721 + 160], msg.data[v721 + 192], msg.data[v721 + 224], msg.data[uint8.max + 1 + v721], v794, address(v21), v719).gas(msg.gas);
                                    if (!v795) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v796 = 0;
                                        if (!v795) {
                                        }
                                    }
                                }
                            } else if (!(0x10000000000000000000000000000000000000000 & v21)) {
                                v788 = v797 = MEM[64];
                                v798 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(v719, address(v21), 0).gas(msg.gas);
                                if (!v798) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v799 = 0;
                                    if (!v798) {
                                    }
                                }
                            } else {
                                v788 = v800 = MEM[64];
                                v801 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v21), v719, 0).gas(msg.gas);
                                if (!v801) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v802 = 0;
                                    if (!v801) {
                                    }
                                }
                            }
                            v803 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v803 = v804 = RETURNDATASIZE();
                            }
                            require(!((v788 + (v803 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v788 + (v803 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v788)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v788 + (v803 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v788 + v803 - v788 >= 32);
                            v1 = v805 = MEM[v788];
                        }
                    } else if (v21 >> 161 & 0x7 >= 2) {
                        if (2 - (v21 >> 161 & 0x7)) {
                            CALLDATACOPY(MEM[64] + 65, v721, v723);
                            MEM[MEM[64] + 33] = uint8(v21 >> 232);
                            MEM[MEM[64] + 32] = v719;
                            MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 32;
                            MEM[MEM[64] + 4 + 32] = 33 + v723;
                            MCOPY(MEM[64] + 4 + 64, MEM[64] + 32, 33 + v723);
                            MEM[MEM[64] + 4 + (33 + v723) + 64] = 0;
                            v806 = address(0x4444c5dc75cb358380d2e3de08a90).call(v625, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                            if (!v806) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v807 = v808 = 0;
                                if (v806) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                    require(v809.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v807 = v810 = new bytes[](v809.length);
                                    require(!((v810 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v809.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v810 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v809.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v810)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v809.length + 32 <= MEM[64] + RETURNDATASIZE());
                                    MCOPY(v810.data, v809.data, v809.length);
                                    v810[v809.length] = 0;
                                }
                                v1 = v811 = MEM[v807 + 32];
                            }
                        } else {
                            v812 = v813 = address(v21);
                            if (!uint8(v21 >> 224)) {
                                v814 = this;
                            } else {
                                v814 = v815 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                            }
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                v812 = v816 = v813 | 0x10000000000000000000000000000000000000000;
                                if (!(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v812 = v813 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v812;
                            v817, v1 = v813.swapOutWithCallback(bool(v21 & 0x10000000000000000000000000000000000000000), v719, uint256.max, address(v814)).gas(msg.gas);
                            if (!v817) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v1 = v818 = 0;
                                if (v817) {
                                    v819 = v820 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v819 = v821 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v819 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v819 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v819 - MEM[64] >= 32);
                                }
                                if (uint8(v21 >> 232)) {
                                    require(uint8(v21 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                                    v822 = _SafeDiv(v1, 10 ** uint8(v21 >> 232));
                                    v1 = v823 = _SafeMul(v822, 10 ** uint8(v21 >> 232));
                                }
                                if (v21 & 0x200000000000000000000000000000000000000000) {
                                    if (!(0x800000000000000000000000000000000000000000 & v21)) {
                                        0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v719);
                                    } else {
                                        0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v719);
                                    }
                                }
                            }
                        }
                    } else if (v21 >> 161 & 0x7) {
                        v824 = v825 = address(v21);
                        v826, /* uint112 */ v827, /* uint112 */ v828, v829 = v825.getReserves().gas(msg.gas);
                        if (!v826) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v827 = v830 = 0;
                            v828 = v831 = 0;
                            if (v826) {
                                v832 = v833 = 96;
                                if (96 > RETURNDATASIZE()) {
                                    v832 = v834 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v832 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v832 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v832 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v832 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v828 - uint112(v828)));
                                require(!(uint32(v829) - v829));
                            }
                            v835 = v836 = uint112(v828);
                            v835 = v837 = uint112(v827);
                            if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            }
                            v838 = _SafeMul(v835, v719);
                            require(!v838 | (10 ** 6 == v838 * 10 ** 6 / v838), Panic(17)); // arithmetic overflow or underflow
                            v839 = _SafeSub(v835, v719);
                            require(10 ** 6 - (v21 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v840 = _SafeMul(v839, 10 ** 6 - (v21 >> 168 & 0xfffff));
                            v841 = _SafeDiv(v838 * 10 ** 6, v840);
                            v1 = v842 = v841 + 1;
                            require(v841 <= v842, Panic(17)); // arithmetic overflow or underflow
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v842);
                            }
                            if (!(v21 & 0x8000000000000000000000000000000000000000000000000000)) {
                                if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                    v843 = v844 = MEM[64];
                                    v845 = v825.token1().gas(msg.gas);
                                    if (!v845) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v846 = v847 = 0x11ae8;
                                        v848 = v849 = 0;
                                        if (!v845) {
                                        }
                                    }
                                } else {
                                    v843 = v850 = MEM[64];
                                    v851 = v825.token0().gas(msg.gas);
                                    if (!v851) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v846 = v852 = 0x11ac4;
                                        v848 = v853 = 0;
                                        if (!v851) {
                                        }
                                    }
                                }
                                if (32 > RETURNDATASIZE()) {
                                    require(!((v843 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v843 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v843)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v843 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v854 = v855 = v843 + RETURNDATASIZE();
                                } else {
                                    require(!((v843 + 32 > uint64.max) | (v843 + 32 < v843)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v843 + 32;
                                    v854 = v856 = v843 + 32;
                                }
                                require(v854 - v843 >= 32);
                                v848 = v857 = MEM[v843];
                                require(!(v857 - address(v857)));
                                v858 = new bytes[](68);
                                MEM[v858.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v858 + 36] = address(v825);
                                MEM[v858 + 68] = v842;
                                require(!((v858 + 128 > uint64.max) | (v858 + 128 < v858)), Panic(65)); // failed memory allocation (too much memory)
                                v859 = v858.length;
                                v860 = address(v848).transfer(address(v825), v842).gas(msg.gas);
                                if (!v860) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (RETURNDATASIZE()) {
                                        v861 = v862 = 1 != MEM[0];
                                    } else {
                                        v861 = !(address(v848)).code.size;
                                    }
                                    require(!v861, SafeERC20FailedOperation(address(v848)));
                                    // Unknown jump to Block ['0x11ac4B0x1df6B0x1d2d', '0x11ae8B0x1df6B0x1d2d']. Refer to 3-address code (TAC);
                                }
                            }
                            varg3 = v863 = 0;
                            if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                if (!uint8(v21 >> 224)) {
                                    v864 = v865 = this;
                                    // Unknown jump to Block 0x34d7B0x1df6B0x1d2d. Refer to 3-address code (TAC);
                                } else {
                                    v864 = v866 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                                    // Unknown jump to Block 0x34d7B0x1df6B0x1d2d. Refer to 3-address code (TAC);
                                }
                            } else if (!uint8(v21 >> 224)) {
                                v864 = this;
                                // Unknown jump to Block 0x34d7B0x1df6B0x1d2d. Refer to 3-address code (TAC);
                            } else {
                                v864 = v867 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                            }
                            require(v824.code.size);
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = varg3;
                            MEM[MEM[64] + 36] = varg3;
                            MEM[MEM[64] + 68] = address(v864);
                            MEM[MEM[64] + 100] = 128;
                            MEM[MEM[64] + 132] = v722;
                            CALLDATACOPY(MEM[64] + 132 + 32, v720, v722);
                            MEM[MEM[64] + 132 + v722 + 32] = 0;
                            v868 = v824.call(MEM[MEM[64]:MEM[64] + v321c0x3214V0x1df6V0x1d2d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 132 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!v868) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v868) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                if (v20 & 0x200000000000000000000000000000000000000000) {
                                    0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v719);
                                }
                            }
                        }
                    } else {
                        if (v21 & 0x400000000000000000000000000000000000000000) {
                            _allow = address(v21) | 0x10000000000000000000000000000000000000000;
                        } else {
                            _allow = address(v21);
                        }
                        if (!uint8(v21 >> 224)) {
                            v869 = this;
                        } else {
                            v869 = v870 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                        }
                        v871 = 0x1128(v719);
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            v872 = v873 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v872 = v874 = 0x1000276a4;
                        }
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = address(v869);
                        MEM[MEM[64] + 36] = v21 & 0x10000000000000000000000000000000000000000;
                        MEM[MEM[64] + 68] = v871;
                        MEM[MEM[64] + 100] = address(v872);
                        MEM[MEM[64] + 132] = 160;
                        MEM[MEM[64] + 164] = v723;
                        CALLDATACOPY(MEM[64] + 164 + 32, v721, v723);
                        MEM[MEM[64] + 164 + v723 + 32] = 0;
                        v875, v1, v1 = address(v21).call(MEM[MEM[64]:MEM[64] + v1e2bV0x1d2d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 164 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).value(v724).gas(msg.gas);
                        if (!v875) {
                            RETURNDATACOPY(MEM[64], v724, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v875) {
                                v876 = v877 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v876 = v878 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v876 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v876 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v876 - MEM[64] >= 64, v724, v724);
                            }
                            if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            }
                            if (v21 & 0x200000000000000000000000000000000000000000) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v719);
                            }
                        }
                    }
                    require(v536 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v879 = v880 = MEM[(v536 << 5) + v3 + 32];
                } else {
                    v1 = v881 = 0;
                    if (0 == v21 >> 161 & 0x7 < 4) {
                        if (v21 >> 161 & 0x7 >= 6) {
                            if (6 - (v21 >> 161 & 0x7)) {
                                v882 = v883 = 0;
                                v884 = new struct(2);
                                v884.word0 = 32;
                                v885 = v884.data;
                                v884.word1 = varg3;
                                v886 = 0;
                                v887 = 0;
                                if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                    v886 = v888 = msg.data[v534] >> 96;
                                    v887 = v889 = 0x3c6d(v888);
                                    v533 = v534 + 20;
                                    v531 = v532 - 20;
                                }
                                v890 = 0;
                                if (bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                    v890 = v891 = address(v21);
                                    v882 = v892 = 0x3c6d(v891);
                                }
                                MEM[64] = MEM[64] + ((msg.data[v533] >> 248) + 1 << 5) + 32;
                                MEM[MEM[64] + 32] = v884;
                                v893 = v894 = MEM[64] + 64;
                                v895 = v896 = v533 + 1;
                                while (v895 < v533 + v531) {
                                    v897 = v898 = v895 + 6;
                                    if (0 == (msg.data[v895 + 4] >> 248 & 0x1f == 31)) {
                                        if (msg.data[v895 + 4] >> 248 & 0x1f >= 3) {
                                            if ((msg.data[v895 + 4] >> 248 & 0x1f) - 3) {
                                                if (4 - (msg.data[v895 + 4] >> 248 & 0x1f)) {
                                                    v899 = v900 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                } else {
                                                    v899 = v901 = 0x4444c5dc75cb358380d2e3de08a90;
                                                }
                                            } else {
                                                v899 = 0x111111125421ca6dc452d289314280a0f8842a65;
                                            }
                                        } else if (msg.data[v895 + 4] >> 248 & 0x1f) {
                                            if (1 - (msg.data[v895 + 4] >> 248 & 0x1f)) {
                                                v899 = v902 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else {
                                                v899 = v903 = msg.sender;
                                            }
                                        } else {
                                            v899 = v904 = this;
                                        }
                                    } else {
                                        v899 = v905 = msg.data[v898] >> 96;
                                        v897 = v895 + 26;
                                    }
                                    v906 = v907 = 0;
                                    if (msg.data[v895 + 4] >> 254 == 1) {
                                        v906 = v908 = msg.data[v897] >> 96;
                                        v897 = v909 = v897 + 20;
                                        v910 = this.balance;
                                        v911 = this.balance;
                                        require(v910 >= v908, InsufficientBalance(v911, v908));
                                    }
                                    v912 = v913 = MEM[64];
                                    MEM[v913] = (msg.data[v895] >> 224) + v895 - (v897 + uint8(msg.data[v895 + 4] >> 240) * 10) + 4;
                                    MEM[64] = v913 + ((msg.data[v895] >> 224) + v895 - (v897 + uint8(msg.data[v895 + 4] >> 240) * 10) + 4) + 32;
                                    CALLDATACOPY(v913 + 32, v897 + uint8(msg.data[v895 + 4] >> 240) * 10, (msg.data[v895] >> 224) + v895 - (v897 + uint8(msg.data[v895 + 4] >> 240) * 10) + 4);
                                    while (v897 < v897 + uint8(msg.data[v895 + 4] >> 240) * 10) {
                                        require(msg.data[v897] >> 248 < (msg.data[v533] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v912 = v914 = MEM[(msg.data[v897] >> 248 << 5) + MEM[64] + 32];
                                        if (0 == bool(msg.data[v897] & 0x8000000000000000000000000000000000000000000000000000)) {
                                            v915 = v916 = 10;
                                            MCOPY(v913 + (msg.data[v897] >> 176 & 0x3fffffff) + 32, v914 + (msg.data[v897] >> 208 & 0xfffff) + 32, msg.data[v897] >> 228 & 0xfffff);
                                        } else if (!(msg.data[v897] & 0x4000000000000000000000000000000000000000000000000000)) {
                                            if (msg.data[v897] >> 228 & 0xfffff) {
                                                v915 = v917 = 10;
                                                v912 = v918 = v914 + (msg.data[v897] >> 228 & 0xfffff);
                                                MEM[v918] = MEM[v914] - (msg.data[v897] >> 228 & 0xfffff);
                                                MEM[(msg.data[v897] >> 243 & 0x1fe0) + MEM[64] + 32] = v918;
                                            } else {
                                                v915 = 10;
                                            }
                                            if (msg.data[v897] >> 208 & 0xfffff) {
                                                MEM[v912] = MEM[v912] - (msg.data[v897] >> 208 & 0xfffff);
                                            }
                                        } else {
                                            v906 = MEM[32 + (v914 + (msg.data[v897] >> 208 & 0xfffff))] >> (msg.data[v897] >> 228 & 0xfffff);
                                            v915 = v919 = 10;
                                        }
                                        v897 = v897 + v915;
                                    }
                                    if (0 == msg.data[v895 + 4] >> 254 < 2) {
                                        if (0 == (msg.data[v895 + 4] >> 254 == 2)) {
                                            v920 = v899.staticcall(MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1d2d + 32:v17f7_0x3V0x31100x321cV0x1da9V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1d2d]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v921 = v922 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v921 = v923 = new bytes[](RETURNDATASIZE());
                                                require(!((v923 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v923 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v923)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v923.data, 0, RETURNDATASIZE());
                                            }
                                            v924 = v925 = bool(v920);
                                        } else {
                                            v924 = v926 = v899.delegatecall(MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1d2d + 32:v17f7_0x3V0x31100x321cV0x1da9V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1d2d]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v921 = v927 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v921 = v928 = new bytes[](RETURNDATASIZE());
                                                require(!((v928 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v928 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v928)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v928.data, 0, RETURNDATASIZE());
                                            }
                                        }
                                        v929 = v930 = bool(v924);
                                    } else {
                                        v929 = v899.call(MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1d2d + 32:v17f7_0x3V0x31100x321cV0x1da9V0x1d2d + 32 + MEM[v17f7_0x3V0x31100x321cV0x1da9V0x1d2d]], MEM[0:0]).value(v906).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v921 = v931 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v921 = new bytes[](RETURNDATASIZE());
                                            require(!((v921 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v921 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v921)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v921.data, 0, RETURNDATASIZE());
                                        }
                                    }
                                    v932 = !v929;
                                    if (v932) {
                                        v932 = v933 = !(msg.data[v895 + 4] & 0x2000000000000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (v932) {
                                        require(!MEM[v921], v921 + 32, MEM[v921]);
                                        revert(FailedCall());
                                    } else {
                                        MEM[v893] = v921;
                                        v893 = v893 + 32;
                                        v895 = (msg.data[v895] >> 224) + v895 + 4;
                                    }
                                }
                                if (bool(v21 & 0x400000000000000000000000000000000000000000)) {
                                    v934 = 0x3c6d(v886);
                                    if (0 == v887 > (v21 >> 178 & 0x3ff) + v934) {
                                        v935 = v936 = 0;
                                    } else {
                                        v935 = v937 = v887 - ((v21 >> 178 & 0x3ff) + v934);
                                    }
                                    require(v935 <= varg3, v935, varg3);
                                }
                                if (0 == bool(v21 & 0x200000000000000000000000000000000000000000)) {
                                    require(uint8(v21 >> 232) < (msg.data[v533] >> 248) + 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v1 = MEM[MEM[(uint8(v21 >> 232) << 5) + MEM[64] + 32] + 32];
                                } else {
                                    v938 = 0x3c6d(v890);
                                    require((v21 >> 168 & 0x3ff) + v938 >= v882, InsufficientAmountOut((v21 >> 168 & 0x3ff) + v938, v882));
                                    v1 = v939 = (v21 >> 168 & 0x3ff) + v938 - v882;
                                }
                            } else {
                                MEM[64] = MEM[64] + v532 + 69;
                                CALLDATACOPY(MEM[64] + 69, v534, v532);
                                v940 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(uint8(v21 >> 232), varg3).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v941 = v942 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v941 = new bytes[](RETURNDATASIZE());
                                    require(!((v941 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v941 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v941)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v941.data, 0, RETURNDATASIZE());
                                }
                                if (!v940) {
                                    require(!MEM[v941], v941 + 32, MEM[v941]);
                                    revert(FailedCall());
                                } else {
                                    v1 = v943 = MEM[32 + v941];
                                }
                            }
                        } else {
                            if (4 - (v21 >> 161 & 0x7)) {
                                if (0 == bool(v21 & 0x10000000000000000000000000000000000000000)) {
                                    v944 = v945 = MEM[64];
                                    require(!(msg.data[v534 + 96] - address(msg.data[v534 + 96])));
                                    require(msg.data[v534 + 224] < 2);
                                    v946 = new uint256[](v532 - 288);
                                    CALLDATACOPY(v946.data, v534 + 288, v532 - 288);
                                    MEM[v946 + (v532 - 288) + 32] = 0;
                                    v947 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x6eefea4900000000000000000000000000000000000000000000000000000000, msg.data[v534], msg.data[v534 + 32], msg.data[v534 + 64], address(msg.data[v534 + 96]), msg.data[v534 + 128], msg.data[v534 + 160], msg.data[v534 + 192], msg.data[v534 + 224], msg.data[uint8.max + 1 + v534], v946, address(v21), 0).gas(msg.gas);
                                    if (!v947) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v948 = 0;
                                        if (!v947) {
                                        }
                                    }
                                } else {
                                    v944 = v949 = MEM[64];
                                    require(!(msg.data[v534 + 96] - address(msg.data[v534 + 96])));
                                    require(msg.data[v534 + 224] < 2);
                                    v950 = new uint256[](v532 - 288);
                                    CALLDATACOPY(v950.data, v534 + 288, v532 - 288);
                                    MEM[v950 + (v532 - 288) + 32] = 0;
                                    v951 = address(0x2c158bc456e027b2affccadf1bdbd9f5fc4c5c8c).call(0x445df08b00000000000000000000000000000000000000000000000000000000, msg.data[v534], msg.data[v534 + 32], msg.data[v534 + 64], address(msg.data[v534 + 96]), msg.data[v534 + 128], msg.data[v534 + 160], msg.data[v534 + 192], msg.data[v534 + 224], msg.data[uint8.max + 1 + v534], v950, address(v21), varg3).gas(msg.gas);
                                    if (!v951) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1 = v952 = 0;
                                        if (!v951) {
                                        }
                                    }
                                }
                            } else if (!(0x10000000000000000000000000000000000000000 & v21)) {
                                v944 = v953 = MEM[64];
                                v954 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).redeem(varg3, address(v21), 0).gas(msg.gas);
                                if (!v954) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v955 = 0;
                                    if (!v954) {
                                    }
                                }
                            } else {
                                v944 = v956 = MEM[64];
                                v957 = address(0x5ccbb4b74854f8a067b83475e8c34f5a413d7e1).subscribe(address(v21), varg3, 0).gas(msg.gas);
                                if (!v957) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v1 = v958 = 0;
                                    if (!v957) {
                                    }
                                }
                            }
                            v959 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v959 = v960 = RETURNDATASIZE();
                            }
                            require(!((v944 + (v959 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v944 + (v959 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v944)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v944 + (v959 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v944 + v959 - v944 >= 32);
                            v1 = v961 = MEM[v944];
                        }
                    } else if (v21 >> 161 & 0x7 >= 2) {
                        if (2 - (v21 >> 161 & 0x7)) {
                            CALLDATACOPY(MEM[64] + 65, v534, v532);
                            MEM[MEM[64] + 33] = uint8(v21 >> 232);
                            MEM[MEM[64] + 32] = varg3;
                            MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 32;
                            MEM[MEM[64] + 4 + 32] = 33 + v532;
                            MCOPY(MEM[64] + 4 + 64, MEM[64] + 32, 33 + v532);
                            MEM[MEM[64] + 4 + (33 + v532) + 64] = 0;
                            v962 = address(0x4444c5dc75cb358380d2e3de08a90).call(v625, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                            if (!v962) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v963 = v964 = 0;
                                if (v962) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                    require(v965.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v963 = v966 = new bytes[](v965.length);
                                    require(!((v966 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v965.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v966 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v965.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v966)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v965.length + 32 <= MEM[64] + RETURNDATASIZE());
                                    MCOPY(v966.data, v965.data, v965.length);
                                    v966[v965.length] = 0;
                                }
                                v1 = v967 = MEM[v963 + 32];
                            }
                        } else {
                            v968 = v969 = address(v21);
                            if (!uint8(v21 >> 224)) {
                                v970 = this;
                            } else {
                                v970 = v971 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                            }
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                v968 = v972 = v969 | 0x10000000000000000000000000000000000000000;
                                if (!(v21 & 0x4000000000000000000000000000000000000000000000000000)) {
                                    v968 = v969 | 0x30000000000000000000000000000000000000000;
                                }
                            }
                            _allow = v968;
                            v973, v1 = v969.swapOutWithCallback(bool(v21 & 0x10000000000000000000000000000000000000000), varg3, uint256.max, address(v970)).gas(msg.gas);
                            if (!v973) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v1 = v974 = 0;
                                if (v973) {
                                    v975 = v976 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v975 = v977 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v975 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v975 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v975 - MEM[64] >= 32);
                                }
                                if (uint8(v21 >> 232)) {
                                    require(uint8(v21 >> 232) <= 77, Panic(17)); // arithmetic overflow or underflow
                                    v978 = _SafeDiv(v1, 10 ** uint8(v21 >> 232));
                                    v1 = v979 = _SafeMul(v978, 10 ** uint8(v21 >> 232));
                                }
                                if (v21 & 0x200000000000000000000000000000000000000000) {
                                    if (!(0x800000000000000000000000000000000000000000 & v21)) {
                                        0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                    } else {
                                        0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                    }
                                }
                            }
                        }
                    } else if (v21 >> 161 & 0x7) {
                        v980 = v981 = address(v21);
                        v982, /* uint112 */ v983, /* uint112 */ v984, v985 = v981.getReserves().gas(msg.gas);
                        if (!v982) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v983 = v986 = 0;
                            v984 = v987 = 0;
                            if (v982) {
                                v988 = v989 = 96;
                                if (96 > RETURNDATASIZE()) {
                                    v988 = v990 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v988 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v988 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v988 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v988 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v984 - uint112(v984)));
                                require(!(uint32(v985) - v985));
                            }
                            v991 = v992 = uint112(v984);
                            v991 = v993 = uint112(v983);
                            if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            }
                            v994 = _SafeMul(v991, varg3);
                            require(!v994 | (10 ** 6 == v994 * 10 ** 6 / v994), Panic(17)); // arithmetic overflow or underflow
                            v995 = _SafeSub(v991, varg3);
                            require(10 ** 6 - (v21 >> 168 & 0xfffff) <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
                            v996 = _SafeMul(v995, 10 ** 6 - (v21 >> 168 & 0xfffff));
                            v997 = _SafeDiv(v994 * 10 ** 6, v996);
                            v1 = v998 = v997 + 1;
                            require(v997 <= v998, Panic(17)); // arithmetic overflow or underflow
                            if (v21 & 0x400000000000000000000000000000000000000000) {
                                0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v998);
                            }
                            if (!(v21 & 0x8000000000000000000000000000000000000000000000000000)) {
                                if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                    v999 = v1000 = MEM[64];
                                    v1001 = v981.token1().gas(msg.gas);
                                    if (!v1001) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1002 = v1003 = 0x11ae8;
                                        v1004 = v1005 = 0;
                                        if (!v1001) {
                                        }
                                    }
                                } else {
                                    v999 = v1006 = MEM[64];
                                    v1007 = v981.token0().gas(msg.gas);
                                    if (!v1007) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v1002 = v1008 = 0x11ac4;
                                        v1004 = v1009 = 0;
                                        if (!v1007) {
                                        }
                                    }
                                }
                                if (32 > RETURNDATASIZE()) {
                                    require(!((v999 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v999 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v999)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v999 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v1010 = v1011 = v999 + RETURNDATASIZE();
                                } else {
                                    require(!((v999 + 32 > uint64.max) | (v999 + 32 < v999)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v999 + 32;
                                    v1010 = v1012 = v999 + 32;
                                }
                                require(v1010 - v999 >= 32);
                                v1004 = v1013 = MEM[v999];
                                require(!(v1013 - address(v1013)));
                                v1014 = new bytes[](68);
                                MEM[v1014.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v1014 + 36] = address(v981);
                                MEM[v1014 + 68] = v998;
                                require(!((v1014 + 128 > uint64.max) | (v1014 + 128 < v1014)), Panic(65)); // failed memory allocation (too much memory)
                                v1015 = v1014.length;
                                v1016 = address(v1004).transfer(address(v981), v998).gas(msg.gas);
                                if (!v1016) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (RETURNDATASIZE()) {
                                        v1017 = v1018 = 1 != MEM[0];
                                    } else {
                                        v1017 = !(address(v1004)).code.size;
                                    }
                                    require(!v1017, SafeERC20FailedOperation(address(v1004)));
                                    // Unknown jump to Block ['0x11ac4B0x1da9B0x1d2d', '0x11ae8B0x1da9B0x1d2d']. Refer to 3-address code (TAC);
                                }
                            }
                            varg3 = v1019 = 0;
                            if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                                if (!uint8(v21 >> 224)) {
                                    v1020 = v1021 = this;
                                    // Unknown jump to Block 0x34d7B0x1da9B0x1d2d. Refer to 3-address code (TAC);
                                } else {
                                    v1020 = v1022 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                                    // Unknown jump to Block 0x34d7B0x1da9B0x1d2d. Refer to 3-address code (TAC);
                                }
                            } else if (!uint8(v21 >> 224)) {
                                v1020 = this;
                                // Unknown jump to Block 0x34d7B0x1da9B0x1d2d. Refer to 3-address code (TAC);
                            } else {
                                v1020 = v1023 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                            }
                            require(v980.code.size);
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = varg3;
                            MEM[MEM[64] + 36] = varg3;
                            MEM[MEM[64] + 68] = address(v1020);
                            MEM[MEM[64] + 100] = 128;
                            MEM[MEM[64] + 132] = v531;
                            CALLDATACOPY(MEM[64] + 132 + 32, v533, v531);
                            MEM[MEM[64] + 132 + v531 + 32] = 0;
                            v1024 = v980.call(MEM[MEM[64]:MEM[64] + v321c0x3214V0x1da9V0x1d2d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 132 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!v1024) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v1024) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                if (v20 & 0x200000000000000000000000000000000000000000) {
                                    0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                                }
                            }
                        }
                    } else {
                        if (v21 & 0x400000000000000000000000000000000000000000) {
                            _allow = address(v21) | 0x10000000000000000000000000000000000000000;
                        } else {
                            _allow = address(v21);
                        }
                        if (!uint8(v21 >> 224)) {
                            v1025 = this;
                        } else {
                            v1025 = v1026 = address(msg.data[(v21 >> 219 & 0x1fe0) + v1]);
                        }
                        v1027 = 0x1128(varg3);
                        if (bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            v1028 = v1029 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v1028 = v1030 = 0x1000276a4;
                        }
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = address(v1025);
                        MEM[MEM[64] + 36] = v21 & 0x10000000000000000000000000000000000000000;
                        MEM[MEM[64] + 68] = v1027;
                        MEM[MEM[64] + 100] = address(v1028);
                        MEM[MEM[64] + 132] = 160;
                        MEM[MEM[64] + 164] = v532;
                        CALLDATACOPY(MEM[64] + 164 + 32, v534, v532);
                        MEM[MEM[64] + 164 + v532 + 32] = 0;
                        v1031, v1, v1 = address(v21).call(MEM[MEM[64]:MEM[64] + v1d3a + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 164 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).value(v881).gas(msg.gas);
                        if (!v1031) {
                            RETURNDATACOPY(MEM[64], v881, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v1031) {
                                v1032 = v1033 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v1032 = v1034 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v1032 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v1032 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v1032 - MEM[64] >= 64, v881, v881);
                            }
                            if (!bool(!(v21 & 0x10000000000000000000000000000000000000000))) {
                            }
                            if (v21 & 0x200000000000000000000000000000000000000000) {
                                0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg3);
                            }
                        }
                    }
                    require(v536 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v879 = v1035 = MEM[(v536 << 5) + v3 + 32];
                }
                v716 = v879 + varg3;
                require(v879 <= v716, Panic(17)); // arithmetic overflow or underflow
            }
            require(v3 < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[(v3 << 5) + v3 + 32] = v716;
            v1 = v1 + v3;
        }
    }
    require(uint8(v0 >> 232) < MEM[v3], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1036 = MEM[(uint8(v0 >> 232) << 5) + v3 + 32];
    if (!(v0 & 0x2000000000000000000000000000000000000000000000000)) {
        require(v1036 >= varg3, InsufficientAmountOut(v1036, varg3));
        v1037 = v1038, v1039 = v1040, v1041 = v1042 = 0x1bdf(v1036 - varg3, 7168, 10 ** 24);
    } else {
        v1037 = v1043, v1039 = v1044, v1041 = v1045 = 0x1bdf(v1036, 7168, 10 ** 24);
    }
    require(msg.gas <= uint24(v1041 >> 208), msg.gas, uint24(v1041 >> 208));
    require(v1037 / v1039 >= (uint24(v1041 >> 208) - msg.gas) * msg.gas, InsufficientProfit(v1037 / v1039, (uint24(v1041 >> 208) - msg.gas) * msg.gas));
    v1046 = _SafeMul(v1037 / v1039 - (uint24(v1041 >> 208) - msg.gas) * msg.gas, v1041 >> 194 & 0x3fff);
    v5 = v1047 = v1046 / 10000;
    if (v1047 <= v5) {
    }
    if (v5 > v9) {
        v5 = v1048 = this.balance;
        if (v5 <= v1048) {
        }
        if (v5 > v9) {
            v1049, /* uint256 */ v1050 = v15.call().value(v5).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v1051 = v1052 = new bytes[](RETURNDATASIZE());
                require(!((v1052 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1052 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1052)), Panic(65)); // failed memory allocation (too much memory)
                v1050 = v1052.data;
                RETURNDATACOPY(v1050, 0, RETURNDATASIZE());
            }
            return v1036;
        } else {
            return v1036;
        }
    } else {
        return v1036;
    }
}

function 0x1bdf(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require((varg0 * (v0 & 0xfffffffffffffffffffffffffffffffffffffffffffffff) / varg0 == v0 & 0xfffffffffffffffffffffffffffffffffffffffffffffff) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * (v0 & 0xfffffffffffffffffffffffffffffffffffffffffffffff), varg2, v0;
}

function 0x1faa(address varg0, uint256 varg1) private { 
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

function 0x200e(address varg0, address varg1, uint256 varg2) private { 
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

function 0x22c8(uint256 varg0) private { 
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

function 0x3a16(address varg0, uint256 varg1) private { 
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

function 0x3a79(address varg0) private { 
    if (bool(varg0)) {
        return varg0 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
    } else {
        return !varg0;
    }
}

function 0x3c6d(uint256 varg0) private { 
    v0 = 0x3a79(varg0);
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
            0x3a16(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, amount_);
        } else {
            0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, amount_);
        }
    }
    v1 = 0x3a79(token_);
    if (!v1) {
        0x200e(token_, 0x52aa899454998be5b000ad077a46bbe360f4e497, amount_);
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
                            v38 = v17.staticcall(MEM[v17f7_0x3V0x138bV0x118c9B0x15 + 32:v17f7_0x3V0x138bV0x118c9B0x15 + 32 + MEM[v17f7_0x3V0x138bV0x118c9B0x15]], MEM[0:0]).gas(msg.gas);
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
                            v42 = v44 = v17.delegatecall(MEM[v17f7_0x3V0x138bV0x118c9B0x15 + 32:v17f7_0x3V0x138bV0x118c9B0x15 + 32 + MEM[v17f7_0x3V0x138bV0x118c9B0x15]], MEM[0:0]).gas(msg.gas);
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
                        v47 = v17.call(MEM[v17f7_0x3V0x138bV0x118c9B0x15 + 32:v17f7_0x3V0x138bV0x118c9B0x15 + 32 + MEM[v17f7_0x3V0x138bV0x118c9B0x15]], MEM[0:0]).value(v24).gas(msg.gas);
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
                v55 = v56 = 0x1169a;
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
                v55 = v67 = 0x11652;
                v57 = v68 = uint160.max + 1;
                v59 = v69 = 0;
                if (v66) {
                    v61 = v70 = 4797;
                    v71 = v72 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x12c30x11c1B0x118c9B0x15. Refer to 3-address code (TAC);
                    }
                }
            }
            if (v8 & v57) {
                0x1faa(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v73);
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
            // Unknown jump to Block ['0x11652B0x118c9B0x15', '0x1169aB0x118c9B0x15']. Refer to 3-address code (TAC);
            v0 = 1;
            // Unknown jump to Block 0x20e9B0x15. Refer to 3-address code (TAC);
            require(!((v52 + (v71 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (v71 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v52 + (v71 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v63 = v79 = v52 + v71;
            require(v63 - v52 >= 32);
            v59 = v80 = MEM[v52];
            require(!(v80 - address(v80)));
            // Unknown jump to Block ['0x12bdB0x118c9B0x15', '0x1351B0x118c9B0x15']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x1330B0x118c9B0x15. Refer to 3-address code (TAC);
            v71 = v81 = RETURNDATASIZE();
            // Unknown jump to Block 0x12ab0x11c1B0x118c9B0x15. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x125dB0x118c9B0x15. Refer to 3-address code (TAC);
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
