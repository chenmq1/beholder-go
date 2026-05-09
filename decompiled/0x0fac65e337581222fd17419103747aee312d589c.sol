// Decompiled by library.dedaub.com
// 2025.12.13 12:02 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 _unlockCallback; // TRANSIENT_STORAGE[0x0]



function receive() public payable { 
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_unlockCallback);
    if (msg.data[4 + data]) {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
        require(!(data.word1 - uint8(data.word1)));
        require(uint8(data.word1));
        require(uint8(data.word1) - 1);
        require(uint8(data.word1) - 2);
        require(uint8(data.word1) - 3);
        require(uint8(data.word1) - 4);
        require(uint8(data.word1) - 5);
        require(uint8(data.word1) - 6);
        require(uint8(data.word1) - 7);
        require(uint8(data.word1) - 8);
        require(uint8(data.word1) - 9);
        require(uint8(data.word1) - 10);
        if (uint8(data.word1) - 11) {
            require(uint8(data.word1) - 12);
            if (uint8(data.word1) - 13) {
                if (uint8(data.word1) - 14) {
                    require(uint8(data.word1) - 15);
                    require(uint8(data.word1) - 16);
                    require(uint8(data.word1) - 17);
                    require(uint8(data.word1) - 18);
                    require(uint8(data.word1) - 19);
                    require(uint8(data.word1) - 20);
                    require(uint8(data.word1) - 21);
                    if (uint8(data.word1) - 22) {
                        require(23 - uint8(data.word1));
                        revert(Error(0x3f3f3f));
                    } else {
                        v1 = v2 = 2156;
                        v3 = v4 = 0;
                        v5 = v6 = 0x16a19;
                        v7, v8 = 0x36a9(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                        require(v8 + v7 - v8 >= 352);
                        require(!(address(msg.data[v8]) - msg.data[v8]));
                        require(!(msg.data[v8 + 96] - uint24(msg.data[v8 + 96])));
                        require(!(bool(msg.data[v8 + 128]) - msg.data[v8 + 128]));
                        require(v8 + v7 - (v8 + 160) >= 160);
                        v9 = new struct(5);
                        require(!((v9 + 160 > uint64.max) | (v9 + 160 < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(address(msg.data[v8 + 160]) - msg.data[v8 + 160]));
                        v9.word0 = msg.data[v8 + 160];
                        require(!(address(msg.data[v8 + 160 + 32]) - msg.data[v8 + 160 + 32]));
                        v9.word1 = msg.data[v8 + 160 + 32];
                        require(!(msg.data[v8 + 160 + 64] - uint24(msg.data[v8 + 160 + 64])));
                        v9.word2 = msg.data[v8 + 160 + 64];
                        require(!(msg.data[v8 + 160 + 96] - int24(msg.data[v8 + 160 + 96])));
                        v9.word3 = msg.data[v8 + 160 + 96];
                        require(!(address(msg.data[v8 + 160 + 128]) - msg.data[v8 + 160 + 128]));
                        v9.word4 = msg.data[v8 + 160 + 128];
                        require(!(bool(msg.data[v8 + 320]) - msg.data[v8 + 320]));
                        if (v4 != amount0Delta > v4) {
                        }
                        v10 = _SafeDiv(msg.data[v8 + 32] * v11 * 10000, (msg.data[v8 + 64] - v11) * (10000 - uint24(msg.data[v8 + 96])));
                        v12 = v13 = MEM[64];
                        MEM[v13 + 32] = 17;
                        MEM[v13 + 32 + 32] = msg.sender;
                        MEM[v13 + 32 + 64] = v10 + 1;
                        MEM[v13 + 32 + 96] = v11;
                        MEM[v13 + 32 + 128] = address(msg.data[v8]);
                        MEM[v13 + 32 + 160] = bool(msg.data[v8 + 128]);
                        MEM[v13 + 32 + 192] = address(v9.word0);
                        MEM[v13 + 32 + 192 + 32] = address(v9.word1);
                        MEM[v13 + 32 + 192 + 64] = uint24(v9.word2);
                        MEM[v13 + 32 + 192 + 96] = int24(v9.word3);
                        MEM[v13 + 32 + 192 + 128] = address(v9.word4);
                        MEM[v13 + 32 + 352] = bool(msg.data[v8 + 320]);
                        v14 = v15 = 416;
                        MEM[v13] = 384;
                    }
                } else {
                    if (0 != amount0Delta > 0) {
                    }
                    v16 = new bytes[](68);
                    MEM[v16.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v16 + 36] = msg.sender;
                    MEM[v16 + 68] = v11;
                    require(!((v16 + 128 > uint64.max) | (v16 + 128 < v16)), Panic(65)); // failed memory allocation (too much memory)
                    v17 = v16.length;
                    MEM[0] = MEM[0];
                    v18 = v19, /* uint256 */ v20 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v11).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v21 = v22 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v21 = v23 = new bytes[](RETURNDATASIZE());
                        require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
                        v20 = v23.data;
                        RETURNDATACOPY(v20, 0, RETURNDATASIZE());
                    }
                    if (v19) {
                        v18 = !MEM[v21];
                        if (bool(MEM[v21])) {
                            require(v21 + MEM[v21] - v21 >= 32);
                            v18 = v24 = MEM[v21 + 32];
                            require(!(bool(v24) - v24));
                        }
                    }
                    require(v18, Error(21574));
                    v25 = v26 = MEM[64];
                    v27 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                    if (v27) {
                        if (v27) {
                            v28 = v29 = 0x169a4;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v26 + 32 > uint64.max) | (v26 + 32 < v26)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v26 + 32;
                                v30 = v31 = v26 + 32;
                            }
                        } else {
                            exit;
                        }
                    }
                }
            } else {
                v3 = v32 = 0;
                v1 = v33 = 2156;
                v5 = v34 = 0x16923;
                v35, v36 = 0x36a9(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                require(v36 + v35 - v36 >= 352);
                require(v36 + v35 - v36 >= 160);
                v37 = new struct(5);
                require(!((v37 + 160 > uint64.max) | (v37 + 160 < v37)), Panic(65)); // failed memory allocation (too much memory)
                require(!(address(msg.data[v36]) - msg.data[v36]));
                v37.word0 = msg.data[v36];
                require(!(address(msg.data[v36 + 32]) - msg.data[v36 + 32]));
                v37.word1 = msg.data[v36 + 32];
                require(!(msg.data[v36 + 64] - uint24(msg.data[v36 + 64])));
                v37.word2 = msg.data[v36 + 64];
                require(!(msg.data[v36 + 96] - int24(msg.data[v36 + 96])));
                v37.word3 = msg.data[v36 + 96];
                require(!(address(msg.data[v36 + 128]) - msg.data[v36 + 128]));
                v37.word4 = msg.data[v36 + 128];
                require(!(bool(msg.data[v36 + 160]) - msg.data[v36 + 160]));
                require(!(address(msg.data[v36 + 192]) - msg.data[v36 + 192]));
                require(!(msg.data[v36 + 288] - uint24(msg.data[v36 + 288])));
                require(!(bool(msg.data[v36 + 320]) - msg.data[v36 + 320]));
                if (v32 != amount0Delta > v32) {
                }
                v12 = v38 = MEM[64];
                MEM[v38 + 32] = 9;
                MEM[v38 + 32 + 32] = msg.sender;
                MEM[v38 + 32 + 64] = v11;
                MEM[v38 + 32 + 96] = address(v37.word0);
                MEM[v38 + 32 + 96 + 32] = address(v37.word1);
                MEM[v38 + 32 + 96 + 64] = uint24(v37.word2);
                MEM[v38 + 32 + 96 + 96] = int24(v37.word3);
                MEM[v38 + 32 + 96 + 128] = address(v37.word4);
                MEM[v38 + 32 + (uint8.max + 1)] = bool(msg.data[v36 + 160]);
                MEM[v38 + 32 + 288] = address(msg.data[v36 + 192]);
                MEM[v38 + 32 + 320] = msg.data[v36 + 224];
                MEM[v38 + 32 + 352] = msg.data[v36 + (uint8.max + 1)];
                MEM[v38 + 32 + 384] = uint24(msg.data[v36 + 288]);
                MEM[v38 + 32 + 416] = bool(msg.data[v36 + 320]);
                v14 = v39 = 480;
                MEM[v38] = 448;
            }
            require(!((v12 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v12 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            // Unknown jump to Block ['0x16923', '0x16a19']. Refer to 3-address code (TAC);
            v40 = v41 = MEM[64];
            MEM[v41] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
            v42 = v43 = v41 + 4;
            MEM[v42] = 32;
            MEM[v42 + 32] = MEM[v12];
            MCOPY(v42 + 32 + 32, 32 + v12, MEM[v12]);
            MEM[32 + (MEM[v12] + (v42 + 32))] = 0;
            v44 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v1697d_0x1:v1697d_0x1 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v34ff0x1d1_0x0] + v1e960x1d1_0x0 + 32 + 32 - v1697d_0x1], MEM[v1697d_0x1:v1697d_0x1 + v86c_0x3]).value(v3).gas(msg.gas);
            if (v44) {
                if (v44) {
                    RETURNDATACOPY(v40, 0, RETURNDATASIZE());
                    require(!((v40 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v40 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v40)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v40 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v45 = 0x3dcd(v40, v40 + RETURNDATASIZE());
                    exit;
                } else {
                    exit;
                }
            }
            v40 = v46 = MEM[64];
            MEM[v46] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
            v42 = v47 = v46 + 4;
            // Unknown jump to Block 0x1e960x1d1. Refer to 3-address code (TAC);
        } else {
            v48, v49 = 0x36a9(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
            require(v49 + v48 - v49 >= 128);
            require(!(address(msg.data[v49]) - msg.data[v49]));
            require(!(bool(msg.data[v49 + 32]) - msg.data[v49 + 32]));
            v50 = msg.data[v49 + 64];
            require(!(bool(msg.data[v49 + 96]) - msg.data[v49 + 96]));
            if (msg.data[v49 + 32]) {
                v50 = v51 = 0;
            }
            if (!msg.data[v49 + 32]) {
                v50 = v52 = 0;
            }
            require((address(msg.data[v49])).code.size);
            v53 = address(msg.data[v49]).swap(v50, v50, 0x4444c5dc75cb358380d2e3de08a90, 128, 0).gas(msg.gas);
            if (v53) {
                if (v53) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v25 = v54 = MEM[64];
                v55 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                if (v55) {
                    if (v55) {
                        v28 = v56 = 1967;
                        v57 = v58 = 32;
                        if (32 > RETURNDATASIZE()) {
                            // Unknown jump to Block 0x7b40x1d1. Refer to 3-address code (TAC);
                        }
                    }
                }
            }
        }
        if (amount0Delta > 0) {
        }
        if (msg.data[v49 + 96]) {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            MEM[0] = MEM[0];
            v59 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v11).gas(msg.gas);
            if (v59) {
                if (v59) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        0x4791(msg.sender, v11);
        exit;
        require(!((v25 + (v57 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v25 + (v57 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v25)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v25 + (v57 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v30 = v25 + v57;
        require(v30 - v25 >= 32);
        // Unknown jump to Block ['0x169a4', '0x7af']. Refer to 3-address code (TAC);
        exit;
        revert(MEM[64], RETURNDATASIZE());
        v57 = RETURNDATASIZE();
        // Unknown jump to Block 0x79d0x1d1. Refer to 3-address code (TAC);
    } else if (0 == amount0Delta > 0) {
        0x4791(msg.sender, amount1Delta);
        exit;
    } else {
        0x4791(msg.sender, amount0Delta);
        exit;
    }
}

function 0xf73dfdb2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    _unlockCallback = 1;
    revert();
}

function 0xcf7d4f69(uint256 varg0, uint256 varg1, uint256 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint256 varg6, int24 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
    require(msg.data.length - 4 >= 416);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    require(!(address(varg8) - varg8));
    require(!(bool(varg9) - varg9));
    _unlockCallback = 1;
    revert();
}

function 0xcafecc44(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, bool varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(bool(varg0) - varg0));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    v0 = 0x3a99(varg9);
    if (!v0) {
        v1 = v2 = 0xfffff & varg9 >> 88;
        if (!varg5) {
            v3 = v4 = MEM[64];
            v5 = address(varg4).token1().gas(msg.gas);
            if (v5) {
                v6 = v7 = 0;
                if (v5) {
                    v8 = v9 = 13534;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v4 + 32 > uint64.max) | (v4 + 32 < v4)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v4 + 32;
                        v10 = v11 = v4 + 32;
                    }
                }
            }
        } else {
            v3 = v12 = MEM[64];
            v13 = address(varg4).token0().gas(msg.gas);
            if (v13) {
                v6 = v14 = 0;
                if (v13) {
                    v8 = v15 = 13450;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v12 + 32 > uint64.max) | (v12 + 32 < v12)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v12 + 32;
                        v10 = v16 = v12 + 32;
                    }
                }
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        if (!varg0) {
            if (address(v6) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v6 = v17 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v6 = v18 = 0;
        }
        if (!varg0) {
            if (address(v6) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v6 = v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        }
        v20 = 0x3587(v2);
        v21 = 0x3535();
        v21.word0 = address(v6);
        v21.word1 = address(v6);
        v21.word2 = uint24(v20);
        v21.word3 = varg1;
        v21.word4 = address(varg2);
        v22 = v23 = 0x3526();
        v23.word0 = 0;
        v23.word1 = 0;
        v23.word2 = v21;
        v24 = v25 = v23 + 96;
        v23.word3 = bool(varg3);
        v26 = v27 = 12727;
        v28 = new struct(3);
        v28.word1 = keccak256(MEM[v318c_0x0.word2:v318c_0x0.word2 + 160]);
        v28.word2 = 6;
        v28.word0 = 64;
        require(!((v28 + 96 > uint64.max) | (v28 + 96 < v28)), Panic(65)); // failed memory allocation (too much memory)
        v29 = v28.word0.length;
        v30 = v31 = keccak256(keccak256(MEM[v318c_0x0.word2:v318c_0x0.word2 + 160]), 6);
        v32 = v33 = MEM[64];
        v34 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v31).gas(msg.gas);
        if (v34) {
            v22 = v35 = 32;
            v36 = v37 = 15668;
            v38 = v39 = 0;
            if (v34) {
                v40 = v41 = 15815;
                if (v35 <= RETURNDATASIZE()) {
                    require(!((v33 + 32 > uint64.max) | (v33 + 32 < v33)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v33 + 32;
                    v42 = v43 = v33 + v35;
                }
            }
            MEM[v22] = address(v38);
            require(v30 <= v30 + 3, Panic(17)); // arithmetic overflow or underflow
            v32 = v44 = MEM[64];
            v45 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v30 + 3).gas(msg.gas);
            if (v45) {
                v30 = v46 = uint128.max;
                v36 = v47 = 32;
                v22 = v48 = 0x18f6a;
                v38 = v49 = 0;
                if (v45) {
                    v40 = 15786;
                    if (v47 <= RETURNDATASIZE()) {
                        require(!((v44 + 32 > uint64.max) | (v44 + 32 < v44)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v44 + 32;
                        v42 = v50 = v44 + v47;
                    }
                }
            }
            MEM[v22 + v36] = uint128(v38 & v30);
            v51 = v52 = 0xfffff & varg6 >> 108;
            v53, v54 = 0x3e44(v23);
            v51 = v55 = 0x3526();
            v55.word0 = v54;
            v55.word1 = v53;
            v55.word2 = address(v23);
            v51 = v56 = v55 + 96;
            v55.word3 = varg10;
            v51 = v57 = 0x3526();
            v57.word0 = 0;
            v57.word1 = 0;
            v57.word2 = address(varg4);
            v57.word3 = bool(v2);
            0x3c63(v57);
            v58 = 0x3c81(address(v57.word2));
            v57.word1 = uint128(v58);
            v59 = v60 = MEM[64];
            v61 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v61) {
                v51 = v62 = 12951;
                v63 = v64 = 0x1880e;
                v65 = v66 = 0;
                if (v61) {
                    v67 = v68 = 4274;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v60 + 32 > uint64.max) | (v60 + 32 < v60)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v60 + 32;
                        v69 = v70 = v60 + 32;
                    }
                } else {
                    v71 = v72 = this.balance;
                }
                require(!((v59 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v59 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v59)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v59 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v69 = v59 + RETURNDATASIZE();
                require(v69 - v59 >= 32);
                v65 = MEM[v59];
                // Unknown jump to Block ['0x10b20x1e0', '0x4cdc0x1e0']. Refer to 3-address code (TAC);
                v71 = this.balance;
                v73 = _SafeAdd(v65, this.balance);
                v74 = _SafeSub(v73, v51);
                if (!v26) {
                    v75 = _SafeSub(v51, msg.gas);
                    v76 = 0x35e1(v75);
                    v77 = _SafeMul(v1, v76);
                    require(v77 < v74, Error(52));
                    v78 = 0x35e1(msg.gas);
                    require(v78 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x191c10x1e0', '0x192b60x1e0']. Refer to 3-address code (TAC);
                } else {
                    v79 = _SafeSub(v51, msg.gas);
                    v80 = 0x35f0(v79);
                    v81 = _SafeMul(v1, v80);
                    require(v81 < v74, Error(52));
                    v82 = _SafeSub(v74, v81);
                    require(v26 <= 1000);
                    v83 = _SafeMul(v82, v26);
                    v84 = _SafeSub(v82, v83 / 1000);
                    if (this.balance <= v83 / 1000) {
                        MEM[0] = MEM[0];
                        v85 = 0x35a9(v65);
                        0x5150(v85, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v83 / 1000) {
                        v86 = block.coinbase.call().value(v83 / 1000).gas(10000);
                    }
                    v87 = 0x35f0(msg.gas);
                    require(v87 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x191c10x1e0', '0x192b60x1e0']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
                v51 = v88 = v65 + v71;
                require(v65 <= v88, Panic(17)); // arithmetic overflow or underflow
                v51 = v89 = 0x192fe;
                v51 = v90 = 0x19321;
                v91 = v92 = 0x4d15(address(MEM[v51]) * address(MEM[v51]), address(MEM[v51]) * address(MEM[v51]) % uint256.max - address(MEM[v51]) * address(MEM[v51]) - (address(MEM[v51]) * address(MEM[v51]) % uint256.max < address(MEM[v51]) * address(MEM[v51])));
                if (!v26) {
                    v91 = v93 = _SafeDiv(uint192.max + 1, v92);
                }
                if (!v24) {
                    v51 = v94 = 0x4a3f(MEM[v51], MEM[v51 + 32]);
                    v95 = address(MEM[v51]);
                } else {
                    v51 = v96 = 0x4a3f(MEM[v51 + 32], MEM[v51]);
                    v95 = v97 = address(MEM[v51]);
                }
                v98 = v95 * v95 % uint256.max - v95 * v95 - (v95 * v95 % uint256.max < v95 * v95);
                v51 = v99 = v95 * v95 - ((v98 * uint256.max % (uint96.max + 1) + v98) % (uint96.max + 1) + v95 * v95) % (uint96.max + 1) >> 96 | v98 - (v95 * v95 < ((v98 * uint256.max % (uint96.max + 1) + v98) % (uint96.max + 1) + v95 * v95) % (uint96.max + 1)) << 160;
                if (v98 != v95 * v95 < ((v98 * uint256.max % (uint96.max + 1) + v98) % (uint96.max + 1) + v95 * v95) % (uint96.max + 1)) {
                }
                if (!v1) {
                    v51 = v100 = _SafeDiv(uint192.max + 1, v99);
                }
                v51 = v101 = uint96.max + 1;
                while (1) {
                    v102 = v91 * v51;
                    v103 = v91 * v51 % uint256.max - v102 - (v91 * v51 % uint256.max < v102);
                    if (uint96.max + 1 <= v103) {
                        break;
                    } else {
                        if (v91 * v51 % uint256.max - v102 == v91 * v51 % uint256.max < v102) {
                            v91 = v102 >> 96;
                            // Unknown jump to Block ['0x192fe0x1e0', '0x193210x1e0']. Refer to 3-address code (TAC);
                        } else {
                            v91 = v102 - v91 * v51 % (uint96.max + 1) >> 96 | v103 - (v91 * v51 % (uint96.max + 1) > v102) << 160;
                            // Unknown jump to Block ['0x192fe0x1e0', '0x193210x1e0']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v91 <= v51) {
                    v51 = v104 = 0x18a40;
                    MEM[v51] = bool(!MEM[v51]);
                    if (bool(MEM[v51])) {
                        MEM[v51] = address(address(MEM[v51]) >> 48);
                        MEM[v51] = bool(!MEM[v51]);
                        v105 = v106 = bool(MEM[v51]);
                    } else {
                        v107 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v108 = _SafeDiv(v107, address(MEM[v51]) >> 48);
                        MEM[v51] = address(v108);
                        MEM[v51] = bool(!MEM[v51]);
                        v105 = bool(MEM[v51]);
                    }
                    if (!v105) {
                        MEM[v51] = MEM[v51 + 32];
                        MEM[v51 + 32] = MEM[v51];
                    }
                    MEM[v51 + 96] = bool(!MEM[v51 + 96]);
                    if (bool(MEM[v51 + 96])) {
                        MEM[v51] = address(address(MEM[v51]) >> 48);
                    } else {
                        v109 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v110 = _SafeDiv(v109, address(MEM[v51]) >> 48);
                        MEM[v51] = address(v110);
                    }
                    v111 = 0x517c(MEM[v51 + 32] * MEM[v51]);
                    v112 = v51 * address(MEM[v51]) * MEM[v51 + 32] + (uint128(10 ** 6 * uint128(MEM[v51 + 32])) << 48);
                    v113 = 0x510a((address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51]) % uint256.max - (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51]) - ((address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51]) % uint256.max < (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51])) + ((address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) % uint256.max - (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) - ((address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) % uint256.max < (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32])) + ((address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) % uint256.max - (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) - ((address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) % uint256.max < (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32])) + (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) % uint256.max - address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) % uint256.max < address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51]))) - (10 ** 8 * (v111 * v51) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v111 * v51) << 96) - (10 ** 8 * (v111 * v51) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v111 * v51) << 96)) - (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) < 10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32])) * uint128(MEM[v51 + 32])) * address(MEM[v51]), (address(MEM[v51]) * (v51 * (v51 * v51)) * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v111 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51]), (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48) % uint256.max - (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48) - ((uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48) % uint256.max < (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48)) + (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 % uint256.max - uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 - (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 % uint256.max < uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112) + (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) % uint256.max - uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) - (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) % uint256.max < uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]))) * v112 + (uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96) % uint256.max - uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96) - (uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96) % uint256.max < uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96))) + (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96) < uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112)) * (v51 << 48), (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v112 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48));
                    v114 = MEM[v51 + 64];
                    v115 = 0x3599(v51);
                    v116 = new struct(16);
                    v116.word1 = 2;
                    v116.word2 = v113;
                    v116.word3 = address(MEM[v114]);
                    v116.word4 = address(MEM[v114 + 32]);
                    v116.word5 = uint24(MEM[v114 + 64]);
                    v116.word6 = int24(MEM[v114 + 96]);
                    v116.word7 = address(MEM[128 + v114]);
                    v116.word8 = bool(MEM[v51 + 96]);
                    v116.word9 = address(MEM[v51 + 64]);
                    v116.word10 = MEM[v51];
                    v116.word11 = MEM[v51 + 32];
                    v116.word12 = v115;
                    v116.word13 = bool(MEM[v51 + 96]);
                    v116.word14 = address(MEM[v51 + 64]);
                    v116.word15 = bool(MEM[v51 + 96]);
                    v116.word0 = 480;
                    require(!((v116 + 512 > uint64.max) | (v116 + 512 < v116)), Panic(65)); // failed memory allocation (too much memory)
                    v117 = new bytes[](v116.word0.length);
                    MCOPY(v117.data, v116.data, v116.word0.length);
                    v117[v116.word0.length] = 0;
                    v118 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v117).gas(msg.gas);
                    if (v118) {
                        v24 = v119 = 0x191c1;
                        if (v118) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v120 = 0x3dcd(MEM[64], MEM[64] + RETURNDATASIZE());
                        }
                    }
                } else {
                    v51 = v121 = 0x1887a;
                    if (bool(MEM[v51])) {
                        v122 = v123 = 0x189f8;
                        v124 = address(MEM[v51]) >> 48;
                    } else {
                        v122 = v125 = 0x188be;
                        v126 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        require(address(MEM[v51]) >> 48, Panic(18)); // division by zero
                        v124 = v127 = v126 / (address(MEM[v51]) >> 48);
                    }
                    MEM[v51] = address(v124);
                    // Unknown jump to Block ['0x188be', '0x189f8']. Refer to 3-address code (TAC);
                    v128 = v129 = bool(MEM[v51]);
                    if (!v128) {
                        MEM[v51] = MEM[v51 + 32];
                        MEM[v51 + 32] = MEM[v51];
                    }
                    if (bool(MEM[v51 + 96])) {
                        MEM[v51] = address(address(MEM[v51]) >> 48);
                    } else {
                        v130 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v131 = _SafeDiv(v130, address(MEM[v51]) >> 48);
                        MEM[v51] = address(v131);
                    }
                    v132 = address(MEM[v51]) * (v51 * (v51 * v51));
                    v133 = 0x517c(MEM[v51 + 32] * MEM[v51]);
                    v134 = v51 * address(MEM[v51]) * MEM[v51 + 32] + (uint128(10 ** 6 * uint128(MEM[v51 + 32])) << 48);
                    v135 = 0x510a((v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51]) % uint256.max - (v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51]) - ((v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51]) % uint256.max < (v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51])) + ((v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) % uint256.max - (v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) - ((v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) % uint256.max < (v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32])) + ((v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) % uint256.max - (v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) - ((v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) % uint256.max < (v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32])) + (v132 * (MEM[v51 + 32] * address(MEM[v51])) % uint256.max - v132 * (MEM[v51 + 32] * address(MEM[v51])) - (v132 * (MEM[v51 + 32] * address(MEM[v51])) % uint256.max < v132 * (MEM[v51 + 32] * address(MEM[v51]))) - (10 ** 8 * (v133 * v51) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v133 * v51) << 96) - (10 ** 8 * (v133 * v51) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v133 * v51) << 96)) - (v132 * (MEM[v51 + 32] * address(MEM[v51])) < 10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32])) * uint128(MEM[v51 + 32])) * address(MEM[v51]), (v132 * (MEM[v51 + 32] * address(MEM[v51])) - (10 ** 8 * (v133 * v51) << 96)) * uint128(MEM[v51 + 32]) * uint128(MEM[v51 + 32]) * address(MEM[v51]), (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48) % uint256.max - (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48) - ((uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48) % uint256.max < (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48)) + (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 % uint256.max - uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 - (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 % uint256.max < uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134) + (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) % uint256.max - uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) - (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) % uint256.max < uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]))) * v134 + (uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96) % uint256.max - uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96) - (uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96) % uint256.max < uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96))) + (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96) < uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134)) * (v51 << 48), (uint128(MEM[v51 + 32]) * v51 * address(MEM[v51]) * v134 + uint128(10 ** 10 * uint128(MEM[v51 + 32])) * (MEM[v51] << 96)) * (v51 << 48));
                    v136, v137, v138, v139, v140 = 0x4397(bool(MEM[v51 + 96]), 0x19455, 17850, v51, v51 + 32);
                    if (bool(!MEM[v51 + 96])) {
                        v141 = v142 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v141 = 0x1000276a4;
                    }
                    v143 = 0x3599(v51);
                    v144 = new struct(13);
                    v144.word1 = 22;
                    v144.word2 = address(MEM[v51 + 64]);
                    v144.word3 = MEM[v51];
                    v144.word4 = MEM[v139];
                    v144.word5 = v143;
                    v144.word6 = bool(MEM[v51 + 96]);
                    v144.word7 = address(MEM[MEM[v138 + 64]]);
                    v144.word8 = address(MEM[MEM[v138 + 64] + 32]);
                    v144.word9 = uint24(MEM[MEM[v138 + 64] + 64]);
                    v144.word10 = int24(MEM[MEM[v138 + 64] + 96]);
                    v144.word11 = address(MEM[128 + MEM[v138 + 64]]);
                    v144.word12 = bool(MEM[v138 + 96]);
                    v144.word0 = 384;
                    require(!((v144 + 416 > uint64.max) | (v144 + 416 < v144)), Panic(65)); // failed memory allocation (too much memory)
                    v145 = new bytes[](v144.word0.length);
                    MCOPY(v145.data, v144.data, v144.word0.length);
                    v145[v144.word0.length] = 0;
                    v146, /* uint256 */ v147, /* uint256 */ v148 = address(MEM[v51 + 64]).swap(address(this), bool(v140), v136, address(v141), v145).gas(msg.gas);
                    if (v146) {
                        v24 = v149 = 0x192b6;
                        if (v146) {
                            if (64 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v150 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 64;
                                v150 = v151 = MEM[64] + 64;
                            }
                            require(v150 - MEM[64] >= 64);
                        }
                    }
                    v128 = v152 = bool(MEM[v51]);
                    // Unknown jump to Block 0x18857. Refer to 3-address code (TAC);
                }
                v26 = 0x3ff & v51 >> 50;
                v51 = v153 = uint24(v51 >> 60);
                v1 = 0x3ffffffffffff & v51;
                v59 = MEM[64];
                MEM[0] = MEM[0];
                v154 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v154) {
                    v65 = v155 = 0;
                    if (v154) {
                        v63 = v156 = 19360;
                        v67 = v157 = 19676;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v59 + 32 > uint64.max) | (v59 + 32 < v59)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v59 + 32;
                            v69 = v158 = v59 + 32;
                        }
                    }
                }
                // Unknown jump to Block 0x4b2e0x1e0. Refer to 3-address code (TAC);
                revert();
            }
            require(!((v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v42 = v159 = v32 + RETURNDATASIZE();
            require(v42 - v32 >= 32);
            v38 = v160 = MEM[v32];
            // Unknown jump to Block ['0x3daaB0x31ae', '0x3dc7B0x31ae']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3d83B0x31ae. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        require(!((v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v10 = v3 + RETURNDATASIZE();
        require(v10 - v3 >= 32);
        v6 = MEM[v3];
        require(!(address(v6) - v6));
        // Unknown jump to Block ['0x348a', '0x34de']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x3122. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x3124. Refer to 3-address code (TAC);
    } else {
        exit;
    }
}

function 0xc18c82cc(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(!(address(varg0) - varg0));
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    v0 = varg1.data;
    require(4 + varg1 + varg1.length + 32 > msg.data.length);
    revert();
}

function 0xb9087966(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(bool(varg0) - varg0));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    revert();
}

function 0xb7754fdd(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, int24 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
    require(msg.data.length - 4 >= 416);
    require(!(bool(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    require(!(address(varg8) - varg8));
    require(!(bool(varg9) - varg9));
    _unlockCallback = 1;
    revert();
}

function 0xa31de730(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, int24 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
    require(msg.data.length - 4 >= 416);
    require(!(bool(varg0) - varg0));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    require(!(address(varg8) - varg8));
    require(!(bool(varg9) - varg9));
    _unlockCallback = 1;
    revert();
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_unlockCallback);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 32);
    require(!(rawData.word1 - uint8(rawData.word1)));
    require(uint8(rawData.word1));
    require(uint8(rawData.word1) - 1);
    if (uint8(rawData.word1) - 2) {
        require(uint8(rawData.word1) - 3);
        require(uint8(rawData.word1) - 4);
        require(uint8(rawData.word1) - 5);
        require(uint8(rawData.word1) - 6);
        require(uint8(rawData.word1) - 7);
        require(uint8(rawData.word1) - 8);
        if (uint8(rawData.word1) - 9) {
            if (uint8(rawData.word1) - 10) {
                require(uint8(rawData.word1) - 11);
                require(uint8(rawData.word1) - 12);
                require(uint8(rawData.word1) - 13);
                require(uint8(rawData.word1) - 14);
                require(uint8(rawData.word1) - 15);
                require(uint8(rawData.word1) - 16);
                if (uint8(rawData.word1) - 17) {
                    require(18 - uint8(rawData.word1));
                    revert(Error(0x3f3f3f75));
                } else {
                    v1 = v2 = 11301;
                    v3 = v4 = 32;
                    v5, v6 = 0x36a9(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
                    require(v6 + v5 - v6 >= 352);
                    v7 = v8 = msg.data[v6];
                    require(!(address(v8) - v8));
                    v9 = msg.data[v6 + 32];
                    v7 = v10 = msg.data[v6 + 64];
                    require(!(address(msg.data[v6 + 96]) - msg.data[v6 + 96]));
                    v7 = v11 = msg.data[v6 + 128];
                    require(!(bool(v11) - v11));
                    require(v6 + v5 - (v6 + 160) >= 160);
                    v7 = new struct(5);
                    require(!((v7 + 160 > uint64.max) | (v7 + 160 < v7)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(address(msg.data[v6 + 160]) - msg.data[v6 + 160]));
                    v7.word0 = msg.data[v6 + 160];
                    require(!(address(msg.data[v6 + 160 + 32]) - msg.data[v6 + 160 + 32]));
                    v7.word1 = msg.data[v6 + 160 + 32];
                    require(!(msg.data[v6 + 160 + 64] - uint24(msg.data[v6 + 160 + 64])));
                    v7.word2 = msg.data[v6 + 160 + 64];
                    require(!(msg.data[v6 + 160 + 96] - int24(msg.data[v6 + 160 + 96])));
                    v7.word3 = msg.data[v6 + 160 + 96];
                    require(!(address(msg.data[v6 + 160 + 128]) - msg.data[v6 + 160 + 128]));
                    v7.word4 = msg.data[v6 + 160 + 128];
                    v7 = v12 = msg.data[v6 + 320];
                    require(!(bool(v12) - v12));
                    v7 = v13 = address(msg.data[v6 + 96]);
                    if (v12) {
                        v14 = v15 = 0x3544();
                        v15.word0 = bool(v12);
                        v15.word1 = v9;
                        v15.word2 = address(0x1000276a4);
                        v7 = v16 = MEM[64];
                        MEM[v16] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                        v17 = v18 = v16 + 4;
                    }
                }
            } else {
                v1 = v19 = 10259;
                v3 = v20 = 32;
                v21, v22 = 0x36a9(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
                require(v22 + v21 - v22 >= 384);
                v9 = v23 = msg.data[v22];
                require(v22 + v21 - (v22 + 32) >= 160);
                v7 = v24 = new struct(5);
                require(!((v24 + 160 > uint64.max) | (v24 + 160 < v24)), Panic(65)); // failed memory allocation (too much memory)
                require(!(address(msg.data[v22 + 32]) - msg.data[v22 + 32]));
                v24.word0 = msg.data[v22 + 32];
                require(!(address(msg.data[v22 + 32 + 32]) - msg.data[v22 + 32 + 32]));
                v24.word1 = msg.data[v22 + 32 + 32];
                require(!(msg.data[v22 + 32 + 64] - uint24(msg.data[v22 + 32 + 64])));
                v24.word2 = msg.data[v22 + 32 + 64];
                require(!(msg.data[v22 + 32 + 96] - int24(msg.data[v22 + 32 + 96])));
                v24.word3 = msg.data[v22 + 32 + 96];
                require(!(address(msg.data[v22 + 32 + 128]) - msg.data[v22 + 32 + 128]));
                v24.word4 = msg.data[v22 + 32 + 128];
                v7 = v25 = msg.data[v22 + 192];
                require(!(bool(v25) - v25));
                v7 = v26 = msg.data[v22 + 224];
                require(!(address(msg.data[v22 + (uint8.max + 1)]) - msg.data[v22 + (uint8.max + 1)]));
                v7 = v27 = msg.data[v22 + 288];
                require(!(bool(v27) - v27));
                v7 = v28 = msg.data[v22 + 320];
                require(!(address(v28) - v28));
                v7 = v29 = msg.data[v22 + 352];
                require(!(bool(v29) - v29));
                v7 = v30 = address(msg.data[v22 + (uint8.max + 1)]);
                if (v25) {
                    v14 = v31 = 0x3544();
                    v31.word0 = bool(v25);
                    v31.word1 = v23;
                    v31.word2 = address(0x1000276a4);
                    v7 = v32 = MEM[64];
                    MEM[v32] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    v17 = v33 = v32 + 4;
                }
            }
            v14 = 0x3544();
            v14.word0 = bool(v34);
            v14.word1 = v9;
            v14.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
            v7 = v35 = MEM[64];
            MEM[v35] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v17 = v36 = v35 + 4;
        } else {
            v3 = v37 = 32;
            v1 = v38 = 9232;
            v39, v40 = 0x36a9(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
            require(v40 + v39 - v40 >= 416);
            require(!(address(msg.data[v40]) - msg.data[v40]));
            require(v40 + v39 - (v40 + 64) >= 160);
            v7 = v41 = new struct(5);
            require(!((v41 + 160 > uint64.max) | (v41 + 160 < v41)), Panic(65)); // failed memory allocation (too much memory)
            require(!(address(msg.data[v40 + 64]) - msg.data[v40 + 64]));
            v41.word0 = msg.data[v40 + 64];
            require(!(address(msg.data[v40 + 64 + 32]) - msg.data[v40 + 64 + 32]));
            v41.word1 = msg.data[v40 + 64 + 32];
            require(!(msg.data[v40 + 64 + 64] - uint24(msg.data[v40 + 64 + 64])));
            v41.word2 = msg.data[v40 + 64 + 64];
            require(!(msg.data[v40 + 64 + 96] - int24(msg.data[v40 + 64 + 96])));
            v41.word3 = msg.data[v40 + 64 + 96];
            require(!(address(msg.data[v40 + 64 + 128]) - msg.data[v40 + 64 + 128]));
            v41.word4 = msg.data[v40 + 64 + 128];
            v7 = v42 = msg.data[v40 + 224];
            require(!(bool(v42) - v42));
            require(!(address(msg.data[v40 + (uint8.max + 1)]) - msg.data[v40 + (uint8.max + 1)]));
            v7 = v43 = msg.data[v40 + 288];
            v7 = v44 = msg.data[v40 + 320];
            v7 = v45 = msg.data[v40 + 352];
            require(!(v45 - uint24(v45)));
            v7 = v46 = msg.data[v40 + 384];
            require(!(bool(v46) - v46));
            v7 = v47 = address(msg.data[v40 + (uint8.max + 1)]);
            v7 = v48 = address(msg.data[v40]);
            if (!v42) {
                v14 = v49 = 0x3544();
                v49.word0 = bool(v42);
                v49.word1 = msg.data[v40 + 32];
                v49.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                v7 = v50 = MEM[64];
                MEM[v50] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                v17 = v51 = v50 + 4;
            } else {
                v14 = v52 = 0x3544();
                v52.word0 = bool(v42);
                v52.word1 = msg.data[v40 + 32];
                v52.word2 = address(0x1000276a4);
                v7 = v53 = MEM[64];
                MEM[v53] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                v17 = v54 = v53 + 4;
            }
        }
    } else {
        v3 = v55 = 32;
        v1 = v56 = 8080;
        v57, v58 = 0x36a9(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
        require(v58 + v57 - v58 >= 448);
        require(v58 + v57 - (v58 + 32) >= 160);
        v7 = v59 = new struct(5);
        require(!((v59 + 160 > uint64.max) | (v59 + 160 < v59)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v58 + 32]) - msg.data[v58 + 32]));
        v59.word0 = msg.data[v58 + 32];
        require(!(address(msg.data[v58 + 32 + 32]) - msg.data[v58 + 32 + 32]));
        v59.word1 = msg.data[v58 + 32 + 32];
        require(!(msg.data[v58 + 32 + 64] - uint24(msg.data[v58 + 32 + 64])));
        v59.word2 = msg.data[v58 + 32 + 64];
        require(!(msg.data[v58 + 32 + 96] - int24(msg.data[v58 + 32 + 96])));
        v59.word3 = msg.data[v58 + 32 + 96];
        require(!(address(msg.data[v58 + 32 + 128]) - msg.data[v58 + 32 + 128]));
        v59.word4 = msg.data[v58 + 32 + 128];
        v7 = v60 = msg.data[v58 + 192];
        require(!(bool(v60) - v60));
        require(!(address(msg.data[v58 + 224]) - msg.data[v58 + 224]));
        v7 = v61 = msg.data[v58 + (uint8.max + 1)];
        v7 = v62 = msg.data[v58 + 288];
        v7 = v63 = msg.data[v58 + 320];
        require(!(v63 - uint24(v63)));
        v7 = v64 = msg.data[v58 + 352];
        require(!(bool(v64) - v64));
        v7 = v65 = msg.data[v58 + 384];
        require(!(address(v65) - v65));
        v7 = v66 = msg.data[v58 + 416];
        require(!(bool(v66) - v66));
        v7 = v67 = address(msg.data[v58 + 224]);
        if (!v60) {
            v14 = v68 = 0x3544();
            v68.word0 = bool(v60);
            v68.word1 = msg.data[v58];
            v68.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
            v7 = v69 = MEM[64];
            MEM[v69] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v17 = v70 = v69 + 4;
        } else {
            v14 = v71 = 0x3544();
            v71.word0 = bool(v60);
            v71.word1 = msg.data[v58];
            v71.word2 = address(0x1000276a4);
            v7 = v72 = MEM[64];
            MEM[v72] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v17 = v73 = v72 + 4;
        }
    }
    MEM[v17] = address(MEM[v7]);
    MEM[v17 + 32] = address(MEM[v7 + 32]);
    MEM[v17 + 64] = uint24(MEM[v7 + 64]);
    MEM[v17 + 96] = int24(MEM[v7 + 96]);
    MEM[v17 + 128] = address(MEM[128 + v7]);
    MEM[v17 + 160] = bool(MEM[v14]);
    MEM[v17 + 192] = MEM[v14 + 32];
    MEM[v17 + 224] = address(MEM[64 + v14]);
    MEM[v17 + (uint8.max + 1)] = 288;
    MEM[v17 + 288] = 0;
    // Unknown jump to Block ['0x1f90', '0x2410', '0x2813', '0x2c25']. Refer to 3-address code (TAC);
    v74 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v36e5V0x38690x3823V0x2bef:v36e5V0x38690x3823V0x2bef + v37a8_0x1 + 320 - v36e5V0x38690x3823V0x2bef], MEM[v36e5V0x38690x3823V0x2bef:v36e5V0x38690x3823V0x2bef + v2c25_0x3]).gas(msg.gas);
    if (v74) {
        v75 = v76 = 0;
        if (v74) {
            v77 = v78 = 9010;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v79 = v80 = v7 + 32;
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    if (!v7) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v81 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v59.word0), address(this), int128(v75 >> 128)).gas(msg.gas);
        if (v81) {
            if (v81) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v82 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(MEM[v59 + 32])).gas(msg.gas);
            if (v82) {
                if (v82) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v83 = v84 = int128(v75);
                v85 = v86 = 0x180b0;
                v87 = v88 = 64;
                v89 = v90 = 0;
                v91 = v92 = 8531;
                v93 = 0x3803(v84);
                v94 = _SafeDiv(v7 * int128(v93) * 10000, (v7 - int128(v93)) * (10000 - uint24(v7)));
                v95 = v96 = 0x38d9(v94 + 1);
            }
        }
    } else {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v97 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v59 + 32]), address(this), int128(v75)).gas(msg.gas);
        if (v97) {
            if (v97) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v98 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v59.word0)).gas(msg.gas);
            if (v98) {
                if (v98) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v83 = v99 = v75 >> 128;
                v85 = v100 = 0x17ef0;
                v87 = v101 = 64;
                v89 = v102 = 0;
                v91 = v103 = 8531;
                v104 = 0x3803(v99);
                v105 = _SafeDiv(v7 * int128(v104) * 10000, (v7 - int128(v104)) * (10000 - uint24(v7)));
                v95 = v106 = 0x38d9(v105 + 1);
            }
        }
    }
    if (v89 == v7) {
        v107 = v108 = 0x18014;
        v109 = v110 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        v111 = 0x3803(v83);
        v112 = v113 = int128(v111);
    } else {
        v107 = v114 = 0x17f9b;
        v109 = v115 = 0x1000276a4;
        v116 = 0x3803(v83);
        v112 = v117 = int128(v116);
    }
    v118 = new struct(6);
    v119 = v118.data;
    v118.word1 = 11;
    v118.word2 = address(v7);
    v118.word3 = bool(v7);
    v118.word4 = v112;
    v118.word5 = !address(v59.word0);
    // Unknown jump to Block ['0x17f9b', '0x18014']. Refer to 3-address code (TAC);
    v120 = v121 = 192;
    v118.word0 = 160;
    require(!((v118 + 192 > uint64.max) | (v118 + 192 < v118)), Panic(65)); // failed memory allocation (too much memory)
    // Unknown jump to Block ['0x17ef0', '0x180b0']. Refer to 3-address code (TAC);
    v122 = v123 = MEM[v87];
    MEM[v123] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    v124 = v125 = v123 + 4;
    MEM[v124] = address(v7);
    MEM[v124 + 32] = bool(v7);
    MEM[v124 + 64] = v95;
    MEM[v124 + 96] = address(v109);
    MEM[v124 + 128] = 160;
    MEM[v124 + 160] = v118.word0.length;
    MCOPY(v124 + 160 + 32, v118.data, v118.word0.length);
    MEM[32 + (v118.word0.length + (v124 + 160))] = 0;
    v126 = address(v7).call(MEM[v17fed0x1f9_0x1:v17fed0x1f9_0x1 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v20fe.word0.length + v3a300x1f9_0x0 + 160 + 32 - v17fed0x1f9_0x1], MEM[v17fed0x1f9_0x1:v17fed0x1f9_0x1 + v180b0_0x7]).value(v89).gas(msg.gas);
    if (v126) {
        if (v126) {
            v127 = v128 = 8607;
            v129 = v130 = 64;
            if (64 > RETURNDATASIZE()) {
                // Unknown jump to Block 0x21a50x1f9. Refer to 3-address code (TAC);
            }
        }
    }
    v122 = v131 = MEM[v87];
    MEM[v131] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    v124 = v132 = v131 + 4;
    // Unknown jump to Block 0x3a300x1f9. Refer to 3-address code (TAC);
    require(!((v122 + (v129 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v122 + (v129 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v122)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v122 + (v129 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v133 = v122 + v129;
    require(v133 - v122 >= 64);
    // Unknown jump to Block ['0x219f', '0x29fd']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x25dd. Refer to 3-address code (TAC);
    v129 = RETURNDATASIZE();
    // Unknown jump to Block 0x218d0x1f9. Refer to 3-address code (TAC);
    v120 = v134 = 192;
    v118.word0 = 160;
    // Unknown jump to Block 0x34ff0x1f9. Refer to 3-address code (TAC);
    require(!((v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v79 = v7 + RETURNDATASIZE();
    require(v79 - v7 >= 32);
    v75 = MEM[v7];
    // Unknown jump to Block ['0x2332', '0x25fb', '0x2784', '0x2b67', '0x3004']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1fb3. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2433. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2836. Refer to 3-address code (TAC);
    v135 = new uint256[](MEM[96]);
    MCOPY(v135.data, 128, MEM[96]);
    MEM[32 + (MEM[96] + v135)] = 0;
    return v135, MEM[96], address(v136), 160;
    v137 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v36e5V0x38690x3823V0x2bef:v36e5V0x38690x3823V0x2bef + v37a8_0x1 + 320 - v36e5V0x38690x3823V0x2bef], MEM[v36e5V0x38690x3823V0x2bef:v36e5V0x38690x3823V0x2bef + v2c25_0x3]).gas(msg.gas);
    if (v137) {
        v75 = v138 = 0;
        if (v137) {
            v77 = v139 = 10116;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v79 = v140 = v7 + 32;
            }
        }
    }
    if (!v7) {
        v7 = v141 = int128(v75);
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v142 = v143 = MEM[64];
        v144 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v7]), address(v7), int128(v75 >> 128)).gas(msg.gas);
        if (v144) {
            v145 = v146 = 9939;
            v147 = v148 = 32;
            if (v144) {
                // Unknown jump to Block 0x2756. Refer to 3-address code (TAC);
            }
        }
    } else {
        v7 = v149 = v75 >> 128;
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v150 = v151 = MEM[64];
        v152 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v7 + 32]), address(v7), int128(v75)).gas(msg.gas);
        if (v152) {
            v153 = v154 = 9404;
            if (v152) {
                // Unknown jump to Block 0x2638. Refer to 3-address code (TAC);
            }
        }
    }
    v155 = v156 = address(MEM[v7]);
    // Unknown jump to Block ['0x24bc', '0x28bf']. Refer to 3-address code (TAC);
    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
    v157 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v156)).gas(msg.gas);
    if (v157) {
        v158 = v159 = 0x1827b;
        v160 = v161 = 9535;
        v162 = v163 = 0x182a4;
        if (v157) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
    }
    if (int128(v7) != int256.min) {
        v164 = 0 - int128(v7);
        // Unknown jump to Block ['0x1827b', '0x1835f']. Refer to 3-address code (TAC);
        v165 = v166 = uint24(v7);
        v167 = _SafeDiv(v7 * v164 * 10000, (v7 - v164) * (10000 - v165));
        // Unknown jump to Block ['0x182a4', '0x18388']. Refer to 3-address code (TAC);
        v168 = new bytes[](68);
        MEM[v168.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v168 + 36] = address(v7);
        MEM[v168 + 68] = v167 + 1;
        require(!((v168 + 128 > uint64.max) | (v168 + 128 < v168)), Panic(65)); // failed memory allocation (too much memory)
        v169 = v168.length;
        MEM[0] = MEM[0];
        v170 = v171 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(v7), v167 + 1).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v172 = v173 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v172 = v174 = new bytes[](RETURNDATASIZE());
            require(!((v174 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v174 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v174)), Panic(65)); // failed memory allocation (too much memory)
            RETURNDATACOPY(v174.data, 0, RETURNDATASIZE());
        }
        if (v171) {
            v170 = !MEM[v172];
            if (bool(MEM[v172])) {
                require(v172 + MEM[v172] - v172 >= 32);
                v170 = v175 = MEM[v172 + 32];
                require(!(bool(v175) - v175));
            }
        }
        require(v170, Error(21574));
        if (v7) {
            v164 = v176 = 0;
        }
        if (!v7) {
            v164 = v177 = 0;
        }
        require(v7.code.size);
        v178 = v7.swap(v164, v164, 0x4444c5dc75cb358380d2e3de08a90, 128, 0).gas(msg.gas);
        if (v178) {
            if (v178) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            v7 = v179 = MEM[64];
            v180 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            if (v180) {
                if (v180) {
                    // Unknown jump to Block 0x25e3. Refer to 3-address code (TAC);
                }
            }
        }
        // Unknown jump to Block 0x47910x1f9. Refer to 3-address code (TAC);
        v165 = v181 = uint24(v7);
        // Unknown jump to Block 0x495a0x1f9. Refer to 3-address code (TAC);
    }
    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
    v182 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v155)).gas(msg.gas);
    if (v182) {
        if (v182) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
    }
    if (v7) {
        v7 = v183 = 0;
    }
    if (!v7) {
        v7 = v184 = 0;
    }
    require(v7.code.size);
    v185 = v7.swap(v7, v7, this, 128, 0).gas(msg.gas);
    if (v185) {
        if (v185) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        if (!v7) {
            v136 = v186 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            v136 = v187 = 0x1000276a4;
        }
        require(!0, Panic(65)); // failed memory allocation (too much memory)
        v122 = v188 = MEM[64];
        MEM[v188] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v188 + 4] = 0x4444c5dc75cb358380d2e3de08a90;
        v189 = new bytes[](v190.length);
        MCOPY(v189.data, v190.data, v190.length);
        v189[v190.length][32] = 0;
        v191 = address(v7).swap(0x4444c5dc75cb358380d2e3de08a90, bool(v7), int128(v7), address(v136), v189).gas(msg.gas);
        if (v191) {
            if (v191) {
                v127 = v192 = 10749;
                if (64 <= RETURNDATASIZE()) {
                    require(!((v188 + 64 > uint64.max) | (v188 + 64 < v188)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v188 + 64;
                    v133 = v193 = v188 + 64;
                }
            } else {
                // Unknown jump to Block 0x216d. Refer to 3-address code (TAC);
            }
        }
    }
    require(!((v150 > uint64.max) | (v150 < v150)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v150;
    require(v150 - v150 >= 0);
    v194 = v195 = address(MEM[v7 + v147]);
    // Unknown jump to Block ['0x26d3', '0x2adc']. Refer to 3-address code (TAC);
    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
    v196 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v195)).gas(msg.gas);
    if (v196) {
        v158 = v197 = 0x1835f;
        v160 = v198 = 9535;
        v162 = v199 = 0x18388;
        if (v196) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
    }
    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
    v200 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v194)).gas(msg.gas);
    if (v200) {
        if (v200) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
    }
    require(!((v142 > uint64.max) | (v142 < v142)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v142;
    require(v142 - v142 >= 0);
    v201 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v36e5V0x38690x3823V0x2bef:v36e5V0x38690x3823V0x2bef + v37a8_0x1 + 320 - v36e5V0x38690x3823V0x2bef], MEM[v36e5V0x38690x3823V0x2bef:v36e5V0x38690x3823V0x2bef + v2c25_0x3]).gas(msg.gas);
    if (v201) {
        v75 = v202 = 0;
        if (v201) {
            v77 = v203 = 11111;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v79 = v204 = v7 + 32;
            }
        }
    }
    if (!v7) {
        v7 = v205 = int128(v75);
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v142 = v206 = MEM[64];
        v207 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v7]), address(v7), int128(v75 >> 128)).gas(msg.gas);
        if (v207) {
            v145 = v208 = 10972;
            v147 = v209 = 32;
            if (!v207) {
                v194 = v210 = address(MEM[v7 + v209]);
            }
        }
    } else {
        v7 = v211 = v75 >> 128;
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v150 = v212 = MEM[64];
        v213 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v7 + 32]), address(v7), int128(v75)).gas(msg.gas);
        if (v213) {
            v153 = v214 = 10431;
            if (!v213) {
                v155 = v215 = address(MEM[v7]);
            }
        }
    }
    v216 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v36e5V0x38690x3823V0x2bef:v36e5V0x38690x3823V0x2bef + v37a8_0x1 + 320 - v36e5V0x38690x3823V0x2bef], MEM[v36e5V0x38690x3823V0x2bef:v36e5V0x38690x3823V0x2bef + v2c25_0x3]).gas(msg.gas);
    if (v216) {
        v75 = v217 = 0;
        if (v216) {
            v77 = v218 = 12292;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v79 = v219 = v7 + 32;
            }
        }
    }
    if (!v7) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v220 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v7]), address(v7), int128(v75 >> 128)).gas(msg.gas);
        if (v220) {
            if (v220) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v221 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7 + 32])).gas(msg.gas);
            if (v221) {
                v222 = v223 = 12220;
                v224 = v225 = 0x18719;
                if (v221) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v226 = v227 = int128(v75);
            }
        }
    } else {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v228 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v7 + 32]), address(v7), int128(v75)).gas(msg.gas);
        if (v228) {
            if (v228) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v229 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7])).gas(msg.gas);
            if (v229) {
                v222 = v230 = 11565;
                v224 = v231 = 0x18635;
                if (v229) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v226 = v232 = v75 >> 128;
            }
        }
    }
    if (int128(v226) != int128.min) {
        // Unknown jump to Block ['0x18635', '0x18719']. Refer to 3-address code (TAC);
        v233 = v234 = int128(0 - int128(v226));
        if (v7) {
            v7 = v235 = 0;
        }
        if (!v7) {
            v7 = v236 = 0;
        }
        require(v7.code.size);
        v237 = v7.swap(v7, v7, address(v7), 128, 0).gas(msg.gas);
        if (v237) {
            if (v237) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            if (address(MEM[v7])) {
                0x4838(v233);
                v7 = v238 = MEM[64];
                v239 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                if (v239) {
                    if (!v239) {
                    }
                }
            } else {
                MEM[0] = MEM[0];
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                MEM[0] = MEM[0];
                v240 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v233).gas(msg.gas);
                if (v240) {
                    if (v240) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v7 = v241 = MEM[64];
                    v242 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v233).gas(msg.gas);
                    if (v242) {
                        if (!v242) {
                        }
                    }
                }
            }
        }
        v233 = v243 = int128(0 - int128(v226));
        // Unknown jump to Block 0x2d2f. Refer to 3-address code (TAC);
    }
    revert(Panic(17));
    v77 = v244 = 9723;
    if (32 <= RETURNDATASIZE()) {
        require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v7 + 32;
        v79 = v245 = v7 + 32;
    }
}

function 0x6fe055ca(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    _unlockCallback = 1;
    v0 = 0x3a99(varg8);
    if (!v0) {
        v1 = v2 = 0xfffff & varg8 >> 88;
        v1 = v3 = 0x3526();
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = address(varg0);
        v1 = v4 = v3 + 96;
        v3.word3 = bool(varg1);
        0x3c63(v3);
        v5 = 0x3c81(address(v3.word2));
        v3.word1 = uint128(v5);
        v6 = v7 = 0xfffff & varg8 >> 108;
        if (!varg4) {
            if (!varg6) {
                v8 = v9 = MEM[64];
                v10 = address(varg5).token1().gas(msg.gas);
                if (v10) {
                    v11 = v12 = 0;
                    if (v10) {
                        v13 = v14 = 7681;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v9 + 32 > uint64.max) | (v9 + 32 < v9)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v9 + 32;
                            v15 = v16 = v9 + 32;
                        }
                    }
                }
            } else {
                v8 = v17 = MEM[64];
                v18 = address(varg5).token0().gas(msg.gas);
                if (v18) {
                    v11 = v19 = 0;
                    if (v18) {
                        v13 = v20 = 7599;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v17 + 32 > uint64.max) | (v17 + 32 < v17)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v17 + 32;
                            v15 = v21 = v17 + 32;
                        }
                    }
                }
            }
        } else if (!varg1) {
            v8 = v22 = MEM[64];
            v23 = address(varg0).token0().gas(msg.gas);
            if (v23) {
                v11 = v24 = 0;
                if (v23) {
                    v13 = v25 = 7509;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v22 + 32 > uint64.max) | (v22 + 32 < v22)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v22 + 32;
                        v15 = v26 = v22 + 32;
                    }
                }
            }
        } else {
            v8 = v27 = MEM[64];
            v28 = address(varg0).token1().gas(msg.gas);
            if (v28) {
                v11 = v29 = 0;
                if (v28) {
                    v13 = v30 = 7427;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v27 + 32 > uint64.max) | (v27 + 32 < v27)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v27 + 32;
                        v15 = v31 = v27 + 32;
                    }
                }
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        if (!varg4) {
            if (0 == varg1) {
                v8 = v32 = MEM[64];
                v33 = address(v11).token0().gas(msg.gas);
                if (v33) {
                    v11 = v34 = 0;
                    if (!v33) {
                    }
                }
            } else {
                v8 = v35 = MEM[64];
                v36 = address(v11).token1().gas(msg.gas);
                if (v36) {
                    v11 = v37 = 0;
                    if (!v36) {
                    }
                }
            }
        } else if (!varg6) {
            v8 = v38 = MEM[64];
            v39 = address(varg5).token1().gas(msg.gas);
            if (v39) {
                v11 = v40 = 0;
                if (v39) {
                    // Unknown jump to Block 0x1c5f. Refer to 3-address code (TAC);
                }
            }
        } else {
            v8 = v41 = MEM[64];
            v42 = address(varg5).token0().gas(msg.gas);
            if (v42) {
                v11 = v43 = 0;
                if (v42) {
                    v13 = v44 = 7206;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v41 + 32 > uint64.max) | (v41 + 32 < v41)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v41 + 32;
                        v15 = v45 = v41 + 32;
                    }
                }
            }
        }
        v46 = 0x3587(v7);
        v47 = 0x3535();
        v47.word0 = address(v11);
        v47.word1 = address(v11);
        v47.word2 = uint24(v46);
        v47.word3 = varg2;
        v47.word4 = address(varg3);
        v48 = v49 = 0x3526();
        v49.word0 = 0;
        v49.word1 = 0;
        v49.word2 = v47;
        v50 = v51 = v49 + 96;
        v49.word3 = bool(varg4);
        v6 = v52 = 6555;
        v53 = new struct(3);
        v53.word1 = keccak256(MEM[v1970_0x0.word2:v1970_0x0.word2 + 160]);
        v53.word2 = 6;
        v53.word0 = 64;
        require(!((v53 + 96 > uint64.max) | (v53 + 96 < v53)), Panic(65)); // failed memory allocation (too much memory)
        v54 = v53.word0.length;
        v55 = v56 = keccak256(keccak256(MEM[v1970_0x0.word2:v1970_0x0.word2 + 160]), 6);
        v57 = v58 = MEM[64];
        v59 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v56).gas(msg.gas);
        if (v59) {
            v48 = v60 = 32;
            v61 = v62 = 15668;
            v63 = v64 = 0;
            if (v59) {
                v65 = v66 = 15815;
                if (v60 <= RETURNDATASIZE()) {
                    require(!((v58 + 32 > uint64.max) | (v58 + 32 < v58)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v58 + 32;
                    v67 = v68 = v58 + v60;
                }
            }
            MEM[v48] = address(v63);
            require(v55 <= v55 + 3, Panic(17)); // arithmetic overflow or underflow
            v57 = v69 = MEM[64];
            v70 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v55 + 3).gas(msg.gas);
            if (v70) {
                v55 = v71 = uint128.max;
                v61 = v72 = 32;
                v48 = v73 = 0x18f6a;
                v63 = v74 = 0;
                if (v70) {
                    v65 = 15786;
                    if (v72 <= RETURNDATASIZE()) {
                        require(!((v69 + 32 > uint64.max) | (v69 + 32 < v69)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v69 + 32;
                        v67 = v75 = v69 + v72;
                    }
                }
            }
            MEM[v48 + v61] = uint128(v63 & v55);
            v76, v77 = 0x3e44(v49);
            v6 = v78 = 0x3526();
            v78.word0 = v77;
            v6 = v79 = v78 + 32;
            v78.word1 = v76;
            v78.word2 = address(v49);
            v6 = v80 = v78 + 96;
            v78.word3 = bool(varg9);
            v81 = v82 = MEM[64];
            v83 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v83) {
                v1 = v84 = 6726;
                v85 = v86 = 6687;
                v87 = v88 = 0;
                if (v83) {
                    v89 = v90 = 4274;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v82 + 32 > uint64.max) | (v82 + 32 < v82)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v82 + 32;
                        v91 = v92 = v82 + 32;
                    }
                } else {
                    v93 = v94 = this.balance;
                }
                require(!((v81 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v81 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v81)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v81 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v91 = v81 + RETURNDATASIZE();
                require(v91 - v81 >= 32);
                v87 = MEM[v81];
                // Unknown jump to Block ['0x10b20x1fe', '0x4cdc0x1fe']. Refer to 3-address code (TAC);
                v93 = this.balance;
                v95 = _SafeAdd(v87, this.balance);
                v96 = _SafeSub(v95, v1);
                if (!v50) {
                    v97 = _SafeSub(v6, msg.gas);
                    v98 = 0x35e1(v97);
                    v99 = _SafeMul(v100, v98);
                    require(v99 < v96, Error(52));
                    v101 = 0x35e1(msg.gas);
                    require(v101 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x191c10x1fe', '0x192b60x1fe']. Refer to 3-address code (TAC);
                } else {
                    v102 = _SafeSub(v6, msg.gas);
                    v103 = 0x35f0(v102);
                    v104 = _SafeMul(v100, v103);
                    require(v104 < v96, Error(52));
                    v105 = _SafeSub(v96, v104);
                    require(v50 <= 1000);
                    v106 = _SafeMul(v105, v50);
                    v107 = _SafeSub(v105, v106 / 1000);
                    if (this.balance <= v106 / 1000) {
                        MEM[0] = MEM[0];
                        v108 = 0x35a9(v87);
                        0x5150(v108, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v106 / 1000) {
                        v109 = block.coinbase.call().value(v106 / 1000).gas(10000);
                    }
                    v110 = 0x35f0(msg.gas);
                    require(v110 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x191c10x1fe', '0x192b60x1fe']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
                v1 = v111 = v87 + v93;
                require(v87 <= v111, Panic(17)); // arithmetic overflow or underflow
                v1 = v112 = 0x19633;
                v1 = v113 = 0x1967b;
                v114 = v115 = 0x4d15(address(MEM[v6]) * address(MEM[v6]), address(MEM[v6]) * address(MEM[v6]) % uint256.max - address(MEM[v6]) * address(MEM[v6]) - (address(MEM[v6]) * address(MEM[v6]) % uint256.max < address(MEM[v6]) * address(MEM[v6])));
                if (!v1) {
                    v114 = v116 = _SafeDiv(uint192.max + 1, v115);
                    v117 = address(MEM[v1]);
                } else {
                    v117 = v118 = address(MEM[v1]);
                }
                v119 = v117 * v117 % uint256.max - v117 * v117 - (v117 * v117 % uint256.max < v117 * v117);
                v6 = v120 = v117 * v117 - ((v119 * uint256.max % (uint96.max + 1) + v119) % (uint96.max + 1) + v117 * v117) % (uint96.max + 1) >> 96 | v119 - (v117 * v117 < ((v119 * uint256.max % (uint96.max + 1) + v119) % (uint96.max + 1) + v117 * v117) % (uint96.max + 1)) << 160;
                if (v119 != v117 * v117 < ((v119 * uint256.max % (uint96.max + 1) + v119) % (uint96.max + 1) + v117 * v117) % (uint96.max + 1)) {
                }
                if (!v50) {
                    v6 = v121 = _SafeDiv(uint192.max + 1, v120);
                }
                if (!v100) {
                    v6 = v122 = 0x4a3f(v78.word0, MEM[v6]);
                    v6 = v123 = uint96.max + 1;
                } else {
                    v6 = v124 = 0x4a3f(MEM[v6], v78.word0);
                    v6 = v125 = uint96.max + 1;
                }
                while (1) {
                    v126 = v114 * v6;
                    v127 = v114 * v6 % uint256.max - v126 - (v114 * v6 % uint256.max < v126);
                    if (uint96.max + 1 <= v127) {
                        break;
                    } else {
                        if (v114 * v6 % uint256.max - v126 == v114 * v6 % uint256.max < v126) {
                            v114 = v126 >> 96;
                            // Unknown jump to Block ['0x19633', '0x1967b']. Refer to 3-address code (TAC);
                        } else {
                            v114 = v126 - v114 * v6 % (uint96.max + 1) >> 96 | v127 - (v114 * v6 % (uint96.max + 1) > v126) << 160;
                            // Unknown jump to Block ['0x19633', '0x1967b']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v114 <= v6) {
                    v6 = v128 = 0x17a92;
                    v129 = v130 = 7074;
                    v131 = v132 = 0x17ab3;
                    v133 = v134 = 7099;
                    v135 = v136 = 0x17b66;
                    MEM[v6] = bool(!MEM[v6]);
                    if (bool(MEM[v6])) {
                        v137 = v138 = 0x17cc0;
                        v139 = address(MEM[v6]) >> 48;
                        // Unknown jump to Block 0x1b95. Refer to 3-address code (TAC);
                    } else {
                        v137 = v140 = 0x17b89;
                        v141 = v142 = 7061;
                        v143 = v144 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v145 = address(MEM[v6]) >> 48;
                    }
                } else {
                    v6 = v146 = 0x17879;
                    v129 = v147 = 6821;
                    v131 = v148 = 0x1789a;
                    v133 = v149 = 6881;
                    v135 = v150 = 0x178e0;
                    if (bool(MEM[v6])) {
                        v137 = v151 = 0x17a6d;
                        v139 = v152 = address(MEM[v6]) >> 48;
                    } else {
                        v137 = v153 = 0x17903;
                        v141 = v154 = 6808;
                        v143 = v155 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v145 = v156 = address(MEM[v6]) >> 48;
                    }
                }
                require(v145, Panic(18)); // division by zero
                v139 = v157 = v143 / v145;
                // Unknown jump to Block ['0x1a98', '0x1b95']. Refer to 3-address code (TAC);
                MEM[v6] = address(v139);
                // Unknown jump to Block ['0x17b89', '0x17cc0']. Refer to 3-address code (TAC);
                MEM[v1] = bool(!MEM[v1]);
                v158 = v159 = bool(MEM[v1]);
                if (bool(v158)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    MEM[v6] = bool(!MEM[v6]);
                    v160 = v161 = bool(MEM[v6]);
                    // Unknown jump to Block 0x17b66. Refer to 3-address code (TAC);
                } else {
                    v162 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v163 = _SafeDiv(v162, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v163);
                    MEM[v6] = bool(!MEM[v6]);
                    v160 = bool(MEM[v6]);
                }
                if (!v160) {
                    MEM[v6] = MEM[v6];
                    MEM[v6] = MEM[v6];
                }
                v164 = v6 * v1 * v6 * address(MEM[v1]) * (address(MEM[v6]) * MEM[v6 + 32]);
                v165 = 0x517c(MEM[v6] * MEM[v6 + 32]);
                v166 = uint128(MEM[v1 + 32]) * v1 * v6 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v6])) * MEM[v6 + 32]);
                v167 = 0x510a((v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) * address(address(MEM[v1]) * address(MEM[v6])) % uint256.max - (v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) * address(address(MEM[v1]) * address(MEM[v6])) - ((v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) * address(address(MEM[v1]) * address(MEM[v6])) % uint256.max < (v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) * address(address(MEM[v1]) * address(MEM[v6]))) + ((v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) % uint256.max - (v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) - ((v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) % uint256.max < (v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]))) + (v6 * v1 * v6 * address(MEM[v1]) * (address(MEM[v6]) * MEM[v6 + 32]) % uint256.max - v164 - (v6 * v1 * v6 * address(MEM[v1]) * (address(MEM[v6]) * MEM[v6 + 32]) % uint256.max < v164) - (v165 * v1 * 0x5f5e100000000000000000000000000 % uint256.max - v165 * v1 * 0x5f5e100000000000000000000000000 - (v165 * v1 * 0x5f5e100000000000000000000000000 % uint256.max < v165 * v1 * 0x5f5e100000000000000000000000000) + (v165 * v1 % uint256.max - v165 * v1 - (v165 * v1 % uint256.max < v165 * v1)) * 0x5f5e100000000000000000000000000) - (v164 < v165 * v1 * 0x5f5e100000000000000000000000000)) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]))) * address(address(MEM[v1]) * address(MEM[v6])), (v164 - v165 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) * address(address(MEM[v1]) * address(MEM[v6])), (v166 + uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) << 144)) * (v6 << 48) % uint256.max - (v166 + uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) << 144)) * (v6 << 48) - ((v166 + uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) << 144)) * (v6 << 48) % uint256.max < (v166 + uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) << 144)) * (v6 << 48)) + (uint128(MEM[v1 + 32]) * v1 * v6 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v6])) * MEM[v6 + 32]) % uint256.max - v166 - (uint128(MEM[v1 + 32]) * v1 * v6 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v6])) * MEM[v6 + 32]) % uint256.max < v166) + (uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) % uint256.max - uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) - (uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) % uint256.max < uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96))) + (v166 + uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) < v166) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) * (uint144.max + 1) % uint256.max - (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) << 144) - (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) * (uint144.max + 1) % uint256.max < 10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) << 144) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) % uint256.max - 10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) - (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) % uint256.max < 10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]))) << 144)) + (v166 + uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) << 144) < v166 + uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96))) * (v6 << 48), (v166 + uint128(10 ** 6 * uint128(MEM[v6 + 32])) * v1 * (address(MEM[v1]) * MEM[v6 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) << 144)) * (v6 << 48));
                v168, v169, v170, v171, v172 = 0x4397(bool(MEM[v6 + 96]), 0x1925f, 17316, v1, v6);
                if (bool(!MEM[v6 + 96])) {
                    v173 = v174 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v173 = 0x1000276a4;
                }
                v175 = 0x3599(v6);
                v176 = new struct(13);
                v176.word1 = 13;
                v176.word2 = address(MEM[MEM[v170 + 64]]);
                v176.word3 = address(MEM[MEM[v170 + 64] + 32]);
                v176.word4 = uint24(MEM[MEM[v170 + 64] + 64]);
                v176.word5 = int24(MEM[MEM[v170 + 64] + 96]);
                v176.word6 = address(MEM[128 + MEM[v170 + 64]]);
                v176.word7 = bool(MEM[v170 + 96]);
                v176.word8 = address(MEM[v171 + 64]);
                v176.word9 = MEM[v171];
                v176.word10 = MEM[v6 + 32];
                v176.word11 = v175;
                v176.word12 = bool(MEM[v171 + 96]);
                v176.word0 = 384;
                require(!((v176 + 416 > uint64.max) | (v176 + 416 < v176)), Panic(65)); // failed memory allocation (too much memory)
                v177 = new bytes[](v176.word0.length);
                MCOPY(v177.data, v176.data, v176.word0.length);
                v177[v176.word0.length] = 0;
                v178, /* uint256 */ v179, /* uint256 */ v180 = address(MEM[v6 + 64]).swap(address(this), bool(v172), v168, address(v173), v177).gas(msg.gas);
                if (v178) {
                    v1 = v181 = 0x192b6;
                    if (v178) {
                        if (64 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v182 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 64;
                            v182 = v183 = MEM[64] + 64;
                        }
                        require(v182 - MEM[64] >= 64);
                    }
                }
                MEM[v1] = bool(!MEM[v1]);
                v158 = v184 = bool(MEM[v1]);
                // Unknown jump to Block 0x17ab3. Refer to 3-address code (TAC);
                MEM[v6] = address(v139);
                // Unknown jump to Block ['0x17903', '0x17a6d']. Refer to 3-address code (TAC);
                v185 = v186 = bool(MEM[v1]);
                if (bool(v185)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    v187 = v188 = bool(MEM[v6]);
                    // Unknown jump to Block 0x178e0. Refer to 3-address code (TAC);
                } else {
                    v189 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v190 = _SafeDiv(v189, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v190);
                    v187 = v191 = bool(MEM[v6]);
                }
                if (!v187) {
                    MEM[v6] = MEM[v6];
                    MEM[v6] = MEM[v6];
                }
                v192 = v6 * (v6 * v1) * address(MEM[v6]) * (MEM[v6 + 32] * address(MEM[v1]));
                v193 = 0x517c(MEM[v6] * MEM[v6 + 32]);
                v194 = uint128(MEM[v1 + 32]) * v6 * address(MEM[v1]) + 10000 * (MEM[v6] << 48);
                v195 = 0x510a((v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) % uint256.max - (v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) - ((v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) % uint256.max < (v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1])) + ((v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]) - ((v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32])) + ((v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) % uint256.max - (v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) - ((v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) % uint256.max < (v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32])) + (v6 * (v6 * v1) * address(MEM[v6]) * (MEM[v6 + 32] * address(MEM[v1])) % uint256.max - v192 - (v6 * (v6 * v1) * address(MEM[v6]) * (MEM[v6 + 32] * address(MEM[v1])) % uint256.max < v192) - (10 ** 8 * (v1 * v193) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v1 * v193) << 96) - (10 ** 8 * (v1 * v193) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v1 * v193) << 96)) - (v192 < 10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32])) * uint128(MEM[v1 + 32])) * address(MEM[v1]), (v192 - (10 ** 8 * (v1 * v193) << 96)) * uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]), (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144)) * v6 % uint256.max - (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144)) * v6 - ((v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144)) * v6 % uint256.max < (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144)) * v6) + (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 % uint256.max - v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 - (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 % uint256.max < v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194) + (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) % uint256.max - v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) - (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) % uint256.max < v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])))) * v194 + (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144) % uint256.max - uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144) - (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144) % uint256.max < uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144))) + (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144) < v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194)) * v6, (v1 * uint128(MEM[v6 + 32]) * address(address(MEM[v6]) * address(MEM[v1])) * v194 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v6] << 144)) * v6);
                v196 = 0x3599(v6);
                v197 = _SafeDiv(MEM[v6] * v195 * 10000, (MEM[v6 + 32] - v195) * (10000 - v196));
                v198 = new struct(14);
                v198.word1 = 10;
                v198.word2 = v197 + 1;
                v198.word3 = address(MEM[MEM[v1 + 64]]);
                v198.word4 = address(MEM[MEM[v1 + 64] + 32]);
                v198.word5 = uint24(MEM[MEM[v1 + 64] + 64]);
                v198.word6 = int24(MEM[MEM[v1 + 64] + 96]);
                v198.word7 = address(MEM[128 + MEM[v1 + 64]]);
                v198.word8 = bool(MEM[v1 + 96]);
                v198.word9 = v195;
                v198.word10 = address(MEM[v6 + 64]);
                v198.word11 = bool(MEM[v6 + 96]);
                v198.word12 = address(MEM[v6 + 64]);
                v198.word13 = bool(MEM[v6 + 96]);
                v198.word0 = 416;
                require(!((v198 + 448 > uint64.max) | (v198 + 448 < v198)), Panic(65)); // failed memory allocation (too much memory)
                v199 = new bytes[](v198.word0.length);
                MCOPY(v199.data, v198.data, v198.word0.length);
                v199[v198.word0.length] = 0;
                v200 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v199).gas(msg.gas);
                if (v200) {
                    v1 = v201 = 0x191c1;
                    if (v200) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v202 = 0x3dcd(MEM[64], MEM[64] + RETURNDATASIZE());
                    }
                }
                v50 = 0x3ff & v1 >> 50;
                v6 = v203 = uint24(v1 >> 60);
                v100 = v204 = 0x3ffffffffffff & v1;
                v81 = MEM[64];
                MEM[0] = MEM[0];
                v205 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v205) {
                    v87 = v206 = 0;
                    if (v205) {
                        v85 = v207 = 19360;
                        v89 = v208 = 19676;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v81 + 32 > uint64.max) | (v81 + 32 < v81)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v81 + 32;
                            v91 = v209 = v81 + 32;
                        }
                    }
                }
                v185 = v210 = bool(MEM[v1]);
                // Unknown jump to Block 0x1789a. Refer to 3-address code (TAC);
                revert();
            }
            require(!((v57 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v57 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v57)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v57 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v67 = v211 = v57 + RETURNDATASIZE();
            require(v67 - v57 >= 32);
            v63 = v212 = MEM[v57];
            // Unknown jump to Block ['0x3daaB0x1992', '0x3dc7B0x1992']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3d83B0x1992. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        // Unknown jump to Block 0x1917. Refer to 3-address code (TAC);
        v13 = v213 = 7288;
        if (32 <= RETURNDATASIZE()) {
            require(!((v8 + 32 > uint64.max) | (v8 + 32 < v8)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v8 + 32;
            v15 = v214 = v8 + 32;
        }
        require(!((v8 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v8 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v15 = v8 + RETURNDATASIZE();
        require(v15 - v8 >= 32);
        v11 = v215 = MEM[v8];
        require(!(address(v215) - v215));
        // Unknown jump to Block ['0x1c26', '0x1c78', '0x1d03', '0x1d55', '0x1daf', '0x1e01']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1915. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1c59. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x18d7. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1d36. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1d8e. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x18d9. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x18db. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1d90. Refer to 3-address code (TAC);
    } else {
        exit;
    }
}

function 0x6f5aeea3(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    v0, /* uint256 */ v1 = address(varg0).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v3 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v3 = v4 = MEM[64] + 32;
        }
        require(v3 - MEM[64] >= 32);
    }
    require(v1 - 1 <= v1, Panic(17)); // arithmetic overflow or underflow
    v5 = new bytes[](68);
    MEM[v5.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v5 + 36] = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54;
    MEM[v5 + 68] = v1 - 1;
    require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v5.length;
    v7 = v8, /* uint256 */ v9 = varg0.transfer(0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54, v1 - 1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v10 = v11 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v10 = new bytes[](RETURNDATASIZE());
        require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
        v9 = v10.data;
        RETURNDATACOPY(v9, 0, RETURNDATASIZE());
    }
    if (v8) {
        v7 = v12 = !MEM[v10];
        if (bool(MEM[v10])) {
            require(v10 + MEM[v10] - v10 >= 32);
            v7 = v13 = MEM[v10 + 32];
            require(!(bool(v13) - v13));
        }
    }
    require(v7, Error(21574));
}

function 0x6e3aab9b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, int24 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    v0 = 0x3a99(varg9);
    if (!v0) {
        v1 = v2 = 0xfffff & varg9 >> 88;
        v1 = v3 = 0x3526();
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = address(varg0);
        v3.word3 = bool(varg1);
        0x3c63(v3);
        v4 = 0x3c81(address(v3.word2));
        v3.word1 = uint128(v4);
        v5 = v6 = 0xfffff & varg9 >> 108;
        v7, v8 = 0x3e44(varg2);
        v5 = v9 = 0x3526();
        v9.word0 = v8;
        v9.word1 = v7;
        v9.word2 = address(varg2);
        v10 = v11 = v9 + 96;
        v9.word3 = bool(varg3);
        if (!varg3) {
            v12 = v13 = MEM[64];
            v14 = address(varg2).token0().gas(msg.gas);
            if (v14) {
                v15 = v16 = 0;
                if (v14) {
                    v17 = v18 = 6026;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v13 + 32 > uint64.max) | (v13 + 32 < v13)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v13 + 32;
                        v19 = v20 = v13 + 32;
                    }
                }
            }
        } else {
            v12 = v21 = MEM[64];
            v22 = address(varg2).token1().gas(msg.gas);
            if (v22) {
                v15 = v23 = 0;
                if (v22) {
                    v17 = v24 = 5946;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v21 + 32 > uint64.max) | (v21 + 32 < v21)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v21 + 32;
                        v19 = v25 = v21 + 32;
                    }
                }
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        if (!varg4) {
            if (address(v15) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v15 = v26 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v15 = v27 = 0;
        }
        if (!varg4) {
            if (address(v15) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v15 = v28 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        }
        v29 = 0x3587(varg8);
        v30 = 0x3535();
        v30.word0 = address(v15);
        v30.word1 = address(v15);
        v30.word2 = uint24(v29);
        v30.word3 = varg5;
        v30.word4 = address(varg6);
        v1 = v31 = 0x3526();
        v31.word0 = 0;
        v31.word1 = 0;
        v31.word2 = v30;
        v1 = v32 = v31 + 96;
        v31.word3 = bool(varg7);
        v33 = v34 = 5234;
        v35 = new struct(3);
        v35.word1 = keccak256(MEM[v144c_0x0.word2:v144c_0x0.word2 + 160]);
        v35.word2 = 6;
        v35.word0 = 64;
        require(!((v35 + 96 > uint64.max) | (v35 + 96 < v35)), Panic(65)); // failed memory allocation (too much memory)
        v36 = v35.word0.length;
        v37 = v38 = keccak256(keccak256(MEM[v144c_0x0.word2:v144c_0x0.word2 + 160]), 6);
        v39 = v40 = MEM[64];
        v41 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v38).gas(msg.gas);
        if (v41) {
            v1 = v42 = 32;
            v43 = v44 = 15668;
            v45 = v46 = 0;
            if (v41) {
                v47 = v48 = 15815;
                if (v42 <= RETURNDATASIZE()) {
                    require(!((v40 + 32 > uint64.max) | (v40 + 32 < v40)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v40 + 32;
                    v49 = v50 = v40 + v42;
                }
            }
            MEM[v1] = address(v45);
            require(v37 <= v37 + 3, Panic(17)); // arithmetic overflow or underflow
            v39 = v51 = MEM[64];
            v52 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v37 + 3).gas(msg.gas);
            if (v52) {
                v37 = v53 = uint128.max;
                v43 = v54 = 32;
                v1 = v55 = 0x18f6a;
                v45 = v56 = 0;
                if (v52) {
                    v47 = 15786;
                    if (v54 <= RETURNDATASIZE()) {
                        require(!((v51 + 32 > uint64.max) | (v51 + 32 < v51)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v51 + 32;
                        v49 = v57 = v51 + v54;
                    }
                }
            }
            MEM[v1 + v43] = uint128(v45 & v37);
            v58 = v59 = MEM[64];
            v60 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v60) {
                v1 = v61 = 5349;
                v62 = v63 = 0x1726f;
                v64 = v65 = 0;
                if (v60) {
                    v66 = v67 = 4274;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v59 + 32 > uint64.max) | (v59 + 32 < v59)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v59 + 32;
                        v68 = v69 = v59 + 32;
                    }
                } else {
                    v70 = v71 = this.balance;
                }
                require(!((v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v58)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v68 = v58 + RETURNDATASIZE();
                require(v68 - v58 >= 32);
                v64 = MEM[v58];
                // Unknown jump to Block ['0x10b20x208', '0x4cdc0x208']. Refer to 3-address code (TAC);
                v70 = this.balance;
                v72 = _SafeAdd(v64, this.balance);
                v73 = _SafeSub(v72, v1);
                if (!v74) {
                    v75 = _SafeSub(v5, msg.gas);
                    v76 = 0x35e1(v75);
                    v77 = _SafeMul(v33, v76);
                    require(v77 < v73, Error(52));
                    v78 = 0x35e1(msg.gas);
                    require(v78 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x191c10x208', '0x192b60x208']. Refer to 3-address code (TAC);
                } else {
                    v79 = _SafeSub(v5, msg.gas);
                    v80 = 0x35f0(v79);
                    v81 = _SafeMul(v33, v80);
                    require(v81 < v73, Error(52));
                    v82 = _SafeSub(v73, v81);
                    require(v74 <= 1000);
                    v83 = _SafeMul(v82, v74);
                    v84 = _SafeSub(v82, v83 / 1000);
                    if (this.balance <= v83 / 1000) {
                        MEM[0] = MEM[0];
                        v85 = 0x35a9(v64);
                        0x5150(v85, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v83 / 1000) {
                        v86 = block.coinbase.call().value(v83 / 1000).gas(10000);
                    }
                    v87 = 0x35f0(msg.gas);
                    require(v87 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x191c10x208', '0x192b60x208']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
                v1 = v88 = v64 + v70;
                require(v64 <= v88, Panic(17)); // arithmetic overflow or underflow
                v1 = v89 = 0x192fe;
                v1 = v90 = 0x19321;
                v91 = v92 = 0x4d15(address(MEM[v5]) * address(MEM[v5]), address(MEM[v5]) * address(MEM[v5]) % uint256.max - address(MEM[v5]) * address(MEM[v5]) - (address(MEM[v5]) * address(MEM[v5]) % uint256.max < address(MEM[v5]) * address(MEM[v5])));
                if (!v74) {
                    v91 = v93 = _SafeDiv(uint192.max + 1, v92);
                }
                if (!v10) {
                    v5 = v94 = 0x4a3f(MEM[v1], MEM[v1 + 32]);
                    v95 = address(MEM[v5]);
                } else {
                    v5 = v96 = 0x4a3f(MEM[v1 + 32], MEM[v1]);
                    v95 = v97 = address(MEM[v5]);
                }
                v98 = v95 * v95 % uint256.max - v95 * v95 - (v95 * v95 % uint256.max < v95 * v95);
                v5 = v99 = v95 * v95 - ((v98 * uint256.max % (uint96.max + 1) + v98) % (uint96.max + 1) + v95 * v95) % (uint96.max + 1) >> 96 | v98 - (v95 * v95 < ((v98 * uint256.max % (uint96.max + 1) + v98) % (uint96.max + 1) + v95 * v95) % (uint96.max + 1)) << 160;
                if (v98 != v95 * v95 < ((v98 * uint256.max % (uint96.max + 1) + v98) % (uint96.max + 1) + v95 * v95) % (uint96.max + 1)) {
                }
                if (!v33) {
                    v5 = v100 = _SafeDiv(uint192.max + 1, v99);
                }
                v5 = v101 = uint96.max + 1;
                while (1) {
                    v102 = v91 * v5;
                    v103 = v91 * v5 % uint256.max - v102 - (v91 * v5 % uint256.max < v102);
                    if (uint96.max + 1 <= v103) {
                        break;
                    } else {
                        if (v91 * v5 % uint256.max - v102 == v91 * v5 % uint256.max < v102) {
                            v91 = v102 >> 96;
                            // Unknown jump to Block ['0x192fe0x208', '0x193210x208']. Refer to 3-address code (TAC);
                        } else {
                            v91 = v102 - v91 * v5 % (uint96.max + 1) >> 96 | v103 - (v91 * v5 % (uint96.max + 1) > v102) << 160;
                            // Unknown jump to Block ['0x192fe0x208', '0x193210x208']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v91 <= v5) {
                    v104 = v105 = 0x174a3;
                    v5 = v106 = 0x174c6;
                    v107 = v108 = 5686;
                    v109 = v110 = 0x174e7;
                    v111 = v112 = 5706;
                    MEM[v5 + 96] = bool(!MEM[v5 + 96]);
                    if (bool(MEM[v5 + 96])) {
                        v113 = v114 = 0x1770d;
                        v115 = address(MEM[v5]) >> 48;
                        // Unknown jump to Block 0x1629. Refer to 3-address code (TAC);
                    } else {
                        v113 = v116 = 0x17550;
                        v117 = v118 = 5673;
                        v119 = v120 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v121 = address(MEM[v5]) >> 48;
                    }
                } else {
                    v104 = v122 = 0x172b8;
                    v5 = v123 = 0x172db;
                    v107 = v124 = 5447;
                    v109 = v125 = 0x172fc;
                    v111 = v126 = 5457;
                    if (bool(MEM[v5 + 96])) {
                        v113 = v127 = 0x1747e;
                        v115 = v128 = address(MEM[v5]) >> 48;
                    } else {
                        v113 = v129 = 0x17342;
                        v117 = v130 = 5434;
                        v119 = v131 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v121 = v132 = address(MEM[v5]) >> 48;
                    }
                }
                require(v121, Panic(18)); // division by zero
                v115 = v133 = v119 / v121;
                // Unknown jump to Block ['0x153a', '0x1629']. Refer to 3-address code (TAC);
                MEM[v5] = address(v115);
                // Unknown jump to Block ['0x17550', '0x1770d']. Refer to 3-address code (TAC);
                MEM[v5] = bool(!MEM[v5]);
                v134 = v135 = bool(MEM[v5]);
                if (!v134) {
                    MEM[v1] = MEM[v1 + 32];
                    MEM[v1 + 32] = MEM[v1];
                    MEM[v5] = bool(!MEM[v5]);
                    v136 = v137 = bool(MEM[v5]);
                    // Unknown jump to Block 0x174a3. Refer to 3-address code (TAC);
                } else {
                    MEM[v5] = bool(!MEM[v5]);
                    v136 = v138 = bool(MEM[v5]);
                }
                if (bool(v136)) {
                    MEM[v5] = address(address(MEM[v5]) >> 48);
                } else {
                    v139 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v140 = _SafeDiv(v139, address(MEM[v5]) >> 48);
                    MEM[v5] = address(v140);
                }
                v141 = address(MEM[v5]) * (v5 * (v5 * v1));
                v142 = 0x517c(MEM[v1 + 32] * MEM[v1]);
                v143 = v5 * address(MEM[v5]) * MEM[v1 + 32] + (uint128(10 ** 6 * uint128(MEM[v5 + 32])) << 48);
                v144 = 0x510a((v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5]) % uint256.max - (v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5]) - ((v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5]) % uint256.max < (v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5])) + ((v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max - (v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) - ((v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max < (v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32])) + ((v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) % uint256.max - (v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) - ((v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) % uint256.max < (v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32])) + (v141 * (MEM[v1 + 32] * address(MEM[v5])) % uint256.max - v141 * (MEM[v1 + 32] * address(MEM[v5])) - (v141 * (MEM[v1 + 32] * address(MEM[v5])) % uint256.max < v141 * (MEM[v1 + 32] * address(MEM[v5]))) - (10 ** 8 * (v142 * v1) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v142 * v1) << 96) - (10 ** 8 * (v142 * v1) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v142 * v1) << 96)) - (v141 * (MEM[v1 + 32] * address(MEM[v5])) < 10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32])) * uint128(MEM[v5 + 32])) * address(MEM[v5]), (v141 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v142 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5]), (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48) % uint256.max - (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48) - ((uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48) % uint256.max < (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48)) + (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 % uint256.max - uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 - (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 % uint256.max < uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143) + (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) % uint256.max - uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) - (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) % uint256.max < uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]))) * v143 + (uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96) % uint256.max - uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96) - (uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96) % uint256.max < uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96))) + (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96) < uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143)) * (v5 << 48), (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v143 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48));
                v145, v146, v147, v148, v149 = 0x4397(bool(MEM[v5 + 96]), 0x19455, 17850, v5, v1 + 32);
                if (bool(!MEM[v5 + 96])) {
                    v150 = v151 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v150 = 0x1000276a4;
                }
                v152 = 0x3599(v1);
                v153 = new struct(13);
                v153.word1 = 22;
                v153.word2 = address(MEM[v1 + 64]);
                v153.word3 = MEM[v1];
                v153.word4 = MEM[v148];
                v153.word5 = v152;
                v153.word6 = bool(MEM[v1 + 96]);
                v153.word7 = address(MEM[MEM[v147 + 64]]);
                v153.word8 = address(MEM[MEM[v147 + 64] + 32]);
                v153.word9 = uint24(MEM[MEM[v147 + 64] + 64]);
                v153.word10 = int24(MEM[MEM[v147 + 64] + 96]);
                v153.word11 = address(MEM[128 + MEM[v147 + 64]]);
                v153.word12 = bool(MEM[v147 + 96]);
                v153.word0 = 384;
                require(!((v153 + 416 > uint64.max) | (v153 + 416 < v153)), Panic(65)); // failed memory allocation (too much memory)
                v154 = new bytes[](v153.word0.length);
                MCOPY(v154.data, v153.data, v153.word0.length);
                v154[v153.word0.length] = 0;
                v155, /* uint256 */ v156, /* uint256 */ v157 = address(MEM[v5 + 64]).swap(address(this), bool(v149), v145, address(v150), v154).gas(msg.gas);
                if (v155) {
                    v10 = v158 = 0x192b6;
                    if (v155) {
                        if (64 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v159 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 64;
                            v159 = v160 = MEM[64] + 64;
                        }
                        require(v159 - MEM[64] >= 64);
                    }
                }
                MEM[v5] = bool(!MEM[v5]);
                v134 = v161 = bool(MEM[v5]);
                // Unknown jump to Block 0x174e7. Refer to 3-address code (TAC);
                MEM[v5] = address(v115);
                // Unknown jump to Block ['0x17342', '0x1747e']. Refer to 3-address code (TAC);
                v162 = v163 = bool(MEM[v5]);
                if (!v162) {
                    MEM[v1] = MEM[v1 + 32];
                    MEM[v1 + 32] = MEM[v1];
                    v164 = v165 = bool(MEM[v5]);
                    // Unknown jump to Block 0x172b8. Refer to 3-address code (TAC);
                } else {
                    v164 = v166 = bool(MEM[v5]);
                }
                if (bool(v164)) {
                    MEM[v5] = address(address(MEM[v5]) >> 48);
                } else {
                    v167 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v168 = _SafeDiv(v167, address(MEM[v5]) >> 48);
                    MEM[v5] = address(v168);
                }
                v169 = address(MEM[v5]) * (v5 * (v5 * v1));
                v170 = 0x517c(MEM[v1 + 32] * MEM[v1]);
                v171 = v5 * address(MEM[v5]) * MEM[v1 + 32] + (uint128(10 ** 6 * uint128(MEM[v5 + 32])) << 48);
                v172 = 0x510a((v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5]) % uint256.max - (v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5]) - ((v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5]) % uint256.max < (v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5])) + ((v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max - (v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) - ((v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max < (v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32])) + ((v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) % uint256.max - (v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) - ((v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) % uint256.max < (v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32])) + (v169 * (MEM[v1 + 32] * address(MEM[v5])) % uint256.max - v169 * (MEM[v1 + 32] * address(MEM[v5])) - (v169 * (MEM[v1 + 32] * address(MEM[v5])) % uint256.max < v169 * (MEM[v1 + 32] * address(MEM[v5]))) - (10 ** 8 * (v170 * v1) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v170 * v1) << 96) - (10 ** 8 * (v170 * v1) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v170 * v1) << 96)) - (v169 * (MEM[v1 + 32] * address(MEM[v5])) < 10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32])) * uint128(MEM[v5 + 32])) * address(MEM[v5]), (v169 * (MEM[v1 + 32] * address(MEM[v5])) - (10 ** 8 * (v170 * v1) << 96)) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * address(MEM[v5]), (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48) % uint256.max - (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48) - ((uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48) % uint256.max < (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48)) + (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 % uint256.max - uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 - (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 % uint256.max < uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171) + (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) % uint256.max - uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) - (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) % uint256.max < uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]))) * v171 + (uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96) % uint256.max - uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96) - (uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96) % uint256.max < uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96))) + (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96) < uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171)) * (v5 << 48), (uint128(MEM[v5 + 32]) * v1 * address(MEM[v5]) * v171 + uint128(10 ** 10 * uint128(MEM[v5 + 32])) * (MEM[v1] << 96)) * (v5 << 48));
                v173 = MEM[v5 + 64];
                v174 = 0x3599(v1);
                v175 = new struct(16);
                v175.word1 = 2;
                v175.word2 = v172;
                v175.word3 = address(MEM[v173]);
                v175.word4 = address(MEM[v173 + 32]);
                v175.word5 = uint24(MEM[v173 + 64]);
                v175.word6 = int24(MEM[v173 + 96]);
                v175.word7 = address(MEM[128 + v173]);
                v175.word8 = bool(MEM[v5 + 96]);
                v175.word9 = address(MEM[v1 + 64]);
                v175.word10 = MEM[v1];
                v175.word11 = MEM[v1 + 32];
                v175.word12 = v174;
                v175.word13 = bool(MEM[v1 + 96]);
                v175.word14 = address(MEM[v5 + 64]);
                v175.word15 = bool(MEM[v5 + 96]);
                v175.word0 = 480;
                require(!((v175 + 512 > uint64.max) | (v175 + 512 < v175)), Panic(65)); // failed memory allocation (too much memory)
                v176 = new bytes[](v175.word0.length);
                MCOPY(v176.data, v175.data, v175.word0.length);
                v176[v175.word0.length] = 0;
                v177 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v176).gas(msg.gas);
                if (v177) {
                    v10 = v178 = 0x191c1;
                    if (v177) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v179 = 0x3dcd(MEM[64], MEM[64] + RETURNDATASIZE());
                    }
                }
                v74 = v180 = 0x3ff & v1 >> 50;
                v5 = v181 = uint24(v1 >> 60);
                v33 = 0x3ffffffffffff & v1;
                v58 = MEM[64];
                MEM[0] = MEM[0];
                v182 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v182) {
                    v64 = v183 = 0;
                    if (v182) {
                        v62 = v184 = 19360;
                        v66 = v185 = 19676;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v58 + 32 > uint64.max) | (v58 + 32 < v58)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v58 + 32;
                            v68 = v186 = v58 + 32;
                        }
                    }
                }
                v162 = v187 = bool(MEM[v5]);
                // Unknown jump to Block 0x172fc. Refer to 3-address code (TAC);
                revert();
            }
            require(!((v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v49 = v188 = v39 + RETURNDATASIZE();
            require(v49 - v39 >= 32);
            v45 = v189 = MEM[v39];
            // Unknown jump to Block ['0x3daaB0x144d', '0x3dc7B0x144d']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3d83B0x144d. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        require(!((v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v19 = v12 + RETURNDATASIZE();
        require(v19 - v12 >= 32);
        v15 = MEM[v12];
        require(!(address(v15) - v15));
        // Unknown jump to Block ['0x173a', '0x178a']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x13e2. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x13e4. Refer to 3-address code (TAC);
    } else {
        exit;
    }
}

function 0x4d7c481f(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    _unlockCallback = 1;
    revert();
}

function 0x427a2f1c(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, bool varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    _unlockCallback = 1;
    v0 = 0x3a99(varg8);
    if (!v0) {
        v1 = v2 = 0xfffff & varg8 >> 88;
        v3, v4 = 0x3e44(varg0);
        v1 = v5 = 0x3526();
        v5.word0 = v4;
        v1 = v6 = v5 + 32;
        v5.word1 = v3;
        v5.word2 = address(varg0);
        v5.word3 = bool(varg1);
        v1 = v7 = 0xfffff & varg8 >> 108;
        if (!varg4) {
            if (!varg6) {
                v8 = v9 = MEM[64];
                v10 = address(varg5).token1().gas(msg.gas);
                if (v10) {
                    v11 = v12 = 0;
                    if (v10) {
                        v13 = v14 = 4796;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v9 + 32 > uint64.max) | (v9 + 32 < v9)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v9 + 32;
                            v15 = v16 = v9 + 32;
                        }
                    }
                }
            } else {
                v8 = v17 = MEM[64];
                v18 = address(varg5).token0().gas(msg.gas);
                if (v18) {
                    v11 = v19 = 0;
                    if (v18) {
                        v13 = v20 = 4714;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v17 + 32 > uint64.max) | (v17 + 32 < v17)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v17 + 32;
                            v15 = v21 = v17 + 32;
                        }
                    }
                }
            }
        } else if (!varg1) {
            v8 = v22 = MEM[64];
            v23 = address(varg0).token0().gas(msg.gas);
            if (v23) {
                v11 = v24 = 0;
                if (v23) {
                    v13 = v25 = 4624;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v22 + 32 > uint64.max) | (v22 + 32 < v22)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v22 + 32;
                        v15 = v26 = v22 + 32;
                    }
                }
            }
        } else {
            v8 = v27 = MEM[64];
            v28 = address(varg0).token1().gas(msg.gas);
            if (v28) {
                v11 = v29 = 0;
                if (v28) {
                    v13 = v30 = 4542;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v27 + 32 > uint64.max) | (v27 + 32 < v27)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v27 + 32;
                        v15 = v31 = v27 + 32;
                    }
                }
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        if (!varg4) {
            if (0 == varg1) {
                v8 = v32 = MEM[64];
                v33 = address(v11).token0().gas(msg.gas);
                if (v33) {
                    v11 = v34 = 0;
                    if (!v33) {
                    }
                }
            } else {
                v8 = v35 = MEM[64];
                v36 = address(v11).token1().gas(msg.gas);
                if (v36) {
                    v11 = v37 = 0;
                    if (!v36) {
                    }
                }
            }
        } else if (!varg6) {
            v8 = v38 = MEM[64];
            v39 = address(varg5).token1().gas(msg.gas);
            if (v39) {
                v11 = v40 = 0;
                if (v39) {
                    // Unknown jump to Block 0x111a. Refer to 3-address code (TAC);
                }
            }
        } else {
            v8 = v41 = MEM[64];
            v42 = address(varg5).token0().gas(msg.gas);
            if (v42) {
                v11 = v43 = 0;
                if (v42) {
                    v13 = v44 = 4314;
                    v45 = v46 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x10e00x212. Refer to 3-address code (TAC);
                    }
                }
            }
        }
        v47 = 0x3587(v7);
        v48 = 0x3535();
        v48.word0 = address(v11);
        v48.word1 = address(v11);
        v48.word2 = uint24(v47);
        v48.word3 = varg2;
        v48.word4 = address(varg3);
        v49 = v50 = 0x3526();
        v50.word0 = 0;
        v50.word1 = 0;
        v50.word2 = v48;
        v51 = v52 = v50 + 96;
        v50.word3 = bool(varg4);
        v1 = v53 = 3474;
        v54 = new struct(3);
        v54.word1 = keccak256(MEM[vd67_0x0.word2:vd67_0x0.word2 + 160]);
        v54.word2 = 6;
        v54.word0 = 64;
        require(!((v54 + 96 > uint64.max) | (v54 + 96 < v54)), Panic(65)); // failed memory allocation (too much memory)
        v55 = v54.word0.length;
        v56 = v57 = keccak256(keccak256(MEM[vd67_0x0.word2:vd67_0x0.word2 + 160]), 6);
        v58 = v59 = MEM[64];
        v60 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v57).gas(msg.gas);
        if (v60) {
            v49 = v61 = 32;
            v62 = v63 = 15668;
            v64 = v65 = 0;
            if (v60) {
                v66 = v67 = 15815;
                if (v61 <= RETURNDATASIZE()) {
                    require(!((v59 + 32 > uint64.max) | (v59 + 32 < v59)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v59 + 32;
                    v68 = v69 = v59 + v61;
                }
            }
            MEM[v49] = address(v64);
            require(v56 <= v56 + 3, Panic(17)); // arithmetic overflow or underflow
            v58 = v70 = MEM[64];
            v71 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v56 + 3).gas(msg.gas);
            if (v71) {
                v56 = v72 = uint128.max;
                v62 = v73 = 32;
                v49 = v74 = 0x18f6a;
                v64 = v75 = 0;
                if (v71) {
                    v66 = 15786;
                    if (v73 <= RETURNDATASIZE()) {
                        require(!((v70 + 32 > uint64.max) | (v70 + 32 < v70)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v70 + 32;
                        v68 = v76 = v70 + v73;
                    }
                }
            }
            MEM[v49 + v62] = uint128(v64 & v56);
            v1 = v77 = 0x3526();
            v77.word0 = 0;
            v77.word1 = 0;
            v77.word2 = address(v50);
            v1 = v78 = v77 + 96;
            v77.word3 = varg9;
            0x3c63(v77);
            v79 = 0x3c81(address(v77.word2));
            v77.word1 = uint128(v79);
            v80 = v81 = MEM[64];
            v82 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v82) {
                v1 = v83 = 3706;
                v84 = v85 = 3637;
                v86 = v87 = 0;
                if (v82) {
                    v88 = v89 = 4274;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v81 + 32 > uint64.max) | (v81 + 32 < v81)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v81 + 32;
                        v90 = v91 = v81 + 32;
                    }
                }
                v92 = this.balance;
                v1 = v93 = v86 + v92;
                require(v86 <= v93, Panic(17)); // arithmetic overflow or underflow
                v1 = v94 = address(MEM[v1]);
                v1 = v95 = bool(MEM[v1]);
                v1 = v96 = address(MEM[v1]);
                v1 = v97 = bool(v77.word3);
                v1 = v98 = 0x19080;
                v1 = v99 = 16548;
                v1 = v100 = 0x190a3;
                v1 = v101 = 0x190c8;
                v1 = v102 = 16570;
                v1 = v103 = 0x190ed;
                if (0 == v51) {
                    v1 = v104 = 0x4a3f(MEM[v1], MEM[v1]);
                } else {
                    v1 = v105 = 0x4a3f(MEM[v1], MEM[v1]);
                }
                while (1) {
                    v106 = address(v1);
                    while (1) {
                        v107 = v106 * v106 % uint256.max - v106 * v106 - (v106 * v106 % uint256.max < v106 * v106);
                        // Unknown jump to Block ['0x190a3', '0x190c8']. Refer to 3-address code (TAC);
                        v1 = v108 = v106 * v106 - ((v107 * uint256.max % (uint96.max + 1) + v107) % (uint96.max + 1) + v106 * v106) % (uint96.max + 1) >> 96 | v107 - (v106 * v106 < ((v107 * uint256.max % (uint96.max + 1) + v107) % (uint96.max + 1) + v106 * v106) % (uint96.max + 1)) << 160;
                        if (v107 == v106 * v106 < ((v107 * uint256.max % (uint96.max + 1) + v107) % (uint96.max + 1) + v106 * v106) % (uint96.max + 1)) {
                            // Unknown jump to Block ['0x40a4', '0x40ba0x212']. Refer to 3-address code (TAC);
                        } else {
                            // Unknown jump to Block ['0x40a4', '0x40ba0x212']. Refer to 3-address code (TAC);
                        }
                        if (!v1) {
                            v1 = v109 = _SafeDiv(uint192.max + 1, v108);
                            continue;
                        } else {
                            v106 = v110 = address(v1);
                        }
                        // Unknown jump to Block 0x4d150x212. Refer to 3-address code (TAC);
                    }
                }
                if (!v1) {
                    v1 = v111 = _SafeDiv(uint192.max + 1, v108);
                }
                v1 = v112 = uint96.max + 1;
                while (1) {
                    v113 = v1 * v1;
                    v114 = v1 * v1 % uint256.max;
                    if (uint96.max + 1 <= v114 - v113 - (v114 < v113)) {
                        break;
                    } else {
                        if (v114 - v113 == v114 < v113) {
                            v1 = v113 >> 96;
                            // Unknown jump to Block ['0x19080', '0x190ed']. Refer to 3-address code (TAC);
                        } else {
                            v115 = v1 * v1 % (uint96.max + 1);
                            v1 = v113 - v115 >> 96 | v114 - v113 - (v114 < v113) - (v115 > v113) << 160;
                            // Unknown jump to Block ['0x19080', '0x190ed']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v1 <= v1) {
                    v1 = v116 = 0x16d64;
                    v117 = v118 = 4113;
                    v119 = v120 = 0x16da8;
                    v121 = !MEM[v1 + 96];
                    MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                    if (bool(!MEM[v1 + 96])) {
                        MEM[v1] = MEM[v1];
                        MEM[v1] = MEM[v1];
                    }
                    v122 = !MEM[v1];
                    MEM[v1] = bool(!MEM[v1]);
                    if (bool(MEM[v1])) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                        MEM[v1] = bool(!MEM[v1]);
                        v123 = v124 = bool(MEM[v1]);
                    } else {
                        v125 = v126 = 0x16e7e;
                        v127 = v128 = 0x16ead;
                        v129 = v130 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    }
                } else {
                    v1 = v131 = 0x16ad1;
                    v117 = v132 = 3836;
                    v119 = v133 = 0x16b15;
                    if (bool(!MEM[v1 + 96])) {
                        MEM[v1] = MEM[v1];
                        MEM[v1] = MEM[v1];
                    }
                    if (bool(MEM[v1])) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                        v134 = v135 = bool(MEM[v1]);
                    } else {
                        v125 = v136 = 0x16b5b;
                        v127 = v137 = 0x16b80;
                        v129 = v138 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    }
                }
                v139 = _SafeDiv(v129, address(MEM[v1]) >> 48);
                MEM[v1] = address(v139);
                v134 = v140 = bool(MEM[v1]);
                if (bool(v134)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v141 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v142 = _SafeDiv(v141, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v142);
                }
                v143 = v1 * v1 * v1 * address(MEM[v1]) * (address(MEM[v1]) * MEM[v1 + 32]);
                v144 = 0x517c(MEM[v1] * MEM[v1 + 32]);
                v145 = uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]);
                v146 = 0x510a((v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max - (v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) * address(address(MEM[v1]) * address(MEM[v1])) - ((v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max < (v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) * address(address(MEM[v1]) * address(MEM[v1]))) + ((v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) % uint256.max - (v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) - ((v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) % uint256.max < (v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]))) + (v1 * v1 * v1 * address(MEM[v1]) * (address(MEM[v1]) * MEM[v1 + 32]) % uint256.max - v143 - (v1 * v1 * v1 * address(MEM[v1]) * (address(MEM[v1]) * MEM[v1 + 32]) % uint256.max < v143) - (v144 * v1 * 0x5f5e100000000000000000000000000 % uint256.max - v144 * v1 * 0x5f5e100000000000000000000000000 - (v144 * v1 * 0x5f5e100000000000000000000000000 % uint256.max < v144 * v1 * 0x5f5e100000000000000000000000000) + (v144 * v1 % uint256.max - v144 * v1 - (v144 * v1 % uint256.max < v144 * v1)) * 0x5f5e100000000000000000000000000) - (v143 < v144 * v1 * 0x5f5e100000000000000000000000000)) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]))) * address(address(MEM[v1]) * address(MEM[v1])), (v143 - v144 * v1 * 0x5f5e100000000000000000000000000) * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) * address(address(MEM[v1]) * address(MEM[v1])), (v145 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) << 144)) * (v1 << 48) % uint256.max - (v145 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) << 144)) * (v1 << 48) - ((v145 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) << 144)) * (v1 << 48) % uint256.max < (v145 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) << 144)) * (v1 << 48)) + (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) % uint256.max - v145 - (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) % uint256.max < v145) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) % uint256.max - uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) - (uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) % uint256.max < uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96))) + (v145 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) < v145) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) * (uint144.max + 1) % uint256.max - (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) << 144) - (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) * (uint144.max + 1) % uint256.max < 10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) << 144) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) % uint256.max - 10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) - (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) % uint256.max < 10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]))) << 144)) + (v145 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) << 144) < v145 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96))) * (v1 << 48), (v145 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) << 144)) * (v1 << 48));
                v147, v148, v149, v150, v151 = 0x4397(bool(MEM[v1 + 96]), 0x1925f, 17316, v1, v1);
                if (bool(!MEM[v1 + 96])) {
                    v152 = v153 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v152 = 0x1000276a4;
                }
                v154 = 0x3599(v1);
                v155 = new struct(13);
                v155.word1 = 13;
                v155.word2 = address(MEM[MEM[v149 + 64]]);
                v155.word3 = address(MEM[MEM[v149 + 64] + 32]);
                v155.word4 = uint24(MEM[MEM[v149 + 64] + 64]);
                v155.word5 = int24(MEM[MEM[v149 + 64] + 96]);
                v155.word6 = address(MEM[128 + MEM[v149 + 64]]);
                v155.word7 = bool(MEM[v149 + 96]);
                v155.word8 = address(MEM[v150 + 64]);
                v155.word9 = MEM[v150];
                v155.word10 = MEM[v1 + 32];
                v155.word11 = v154;
                v155.word12 = bool(MEM[v150 + 96]);
                v155.word0 = 384;
                require(!((v155 + 416 > uint64.max) | (v155 + 416 < v155)), Panic(65)); // failed memory allocation (too much memory)
                v156 = new bytes[](v155.word0.length);
                MCOPY(v156.data, v155.data, v155.word0.length);
                v156[v155.word0.length] = 0;
                v157, /* uint256 */ v158, /* uint256 */ v159 = address(MEM[v1 + 64]).swap(address(this), bool(v151), v147, address(v152), v156).gas(msg.gas);
                if (v157) {
                    v1 = v160 = 0x192b6;
                    if (v157) {
                        if (64 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v161 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 64;
                            v161 = v162 = MEM[64] + 64;
                        }
                        require(v161 - MEM[64] >= 64);
                    }
                }
                v1 = 0x3ff & v1 >> 50;
                v51 = uint24(v1 >> 60);
                v1 = 0x3ffffffffffff & v1;
                v80 = MEM[64];
                MEM[0] = MEM[0];
                v163 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v163) {
                    v86 = v164 = 0;
                    if (v163) {
                        v84 = v165 = 19360;
                        v88 = v166 = 19676;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v80 + 32 > uint64.max) | (v80 + 32 < v80)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v80 + 32;
                            v90 = v167 = v80 + 32;
                        }
                    }
                }
                MEM[v1] = address(v139);
                MEM[v1] = bool(!MEM[v1]);
                v123 = v168 = bool(MEM[v1]);
                if (bool(v123)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v169 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v170 = _SafeDiv(v169, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v170);
                }
                v171 = v1 * (v1 * v1) * address(MEM[v1]) * (MEM[v1 + 32] * address(MEM[v1]));
                v172 = 0x517c(MEM[v1] * MEM[v1 + 32]);
                v173 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) + 10000 * (MEM[v1] << 48);
                v174 = 0x510a((v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) % uint256.max - (v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) - ((v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) % uint256.max < (v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1])) + ((v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) % uint256.max - (v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) - ((v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) % uint256.max < (v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32])) + (v1 * (v1 * v1) * address(MEM[v1]) * (MEM[v1 + 32] * address(MEM[v1])) % uint256.max - v171 - (v1 * (v1 * v1) * address(MEM[v1]) * (MEM[v1 + 32] * address(MEM[v1])) % uint256.max < v171) - (10 ** 8 * (v1 * v172) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v1 * v172) << 96) - (10 ** 8 * (v1 * v172) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v1 * v172) << 96)) - (v171 < 10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * address(MEM[v1]), (v171 - (10 ** 8 * (v1 * v172) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]), (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1 % uint256.max - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1 - ((v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1 % uint256.max < (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 % uint256.max - v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 % uint256.max < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max - v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])))) * v173 + (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144) % uint256.max - uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144) - (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144) % uint256.max < uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144))) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144) < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173)) * v1, (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v173 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1);
                v175 = 0x3599(v1);
                v176 = _SafeDiv(MEM[v1] * v174 * 10000, (MEM[v1 + 32] - v174) * (10000 - v175));
                v177 = new struct(14);
                v177.word1 = 10;
                v177.word2 = v176 + 1;
                v177.word3 = address(MEM[MEM[v1 + 64]]);
                v177.word4 = address(MEM[MEM[v1 + 64] + 32]);
                v177.word5 = uint24(MEM[MEM[v1 + 64] + 64]);
                v177.word6 = int24(MEM[MEM[v1 + 64] + 96]);
                v177.word7 = address(MEM[128 + MEM[v1 + 64]]);
                v177.word8 = bool(MEM[v1 + 96]);
                v177.word9 = v174;
                v177.word10 = address(MEM[v1 + 64]);
                v177.word11 = bool(MEM[v1 + 96]);
                v177.word12 = address(MEM[v1 + 64]);
                v177.word13 = bool(MEM[v1 + 96]);
                v177.word0 = 416;
                require(!((v177 + 448 > uint64.max) | (v177 + 448 < v177)), Panic(65)); // failed memory allocation (too much memory)
                v178 = new bytes[](v177.word0.length);
                MCOPY(v178.data, v177.data, v177.word0.length);
                v178[v177.word0.length] = 0;
                v179 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v178).gas(msg.gas);
                if (v179) {
                    v1 = v180 = 0x191c1;
                    if (v179) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v181 = 0x3dcd(MEM[64], MEM[64] + RETURNDATASIZE());
                    }
                }
                // Unknown jump to Block 0x4b2e0x212. Refer to 3-address code (TAC);
                revert();
                require(!((v80 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v80 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v80)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v80 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v90 = v80 + RETURNDATASIZE();
                require(v90 - v80 >= 32);
                v86 = MEM[v80];
                // Unknown jump to Block ['0x10b20x212', '0x4cdc0x212']. Refer to 3-address code (TAC);
                v182 = _SafeAdd(v86, this.balance);
                v183 = _SafeSub(v182, v1);
                if (!v1) {
                    v184 = _SafeSub(v51, msg.gas);
                    v185 = 0x35e1(v184);
                    v186 = _SafeMul(v1, v185);
                    require(v186 < v183, Error(52));
                    v187 = 0x35e1(msg.gas);
                    require(v187 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x191c10x212', '0x192b60x212']. Refer to 3-address code (TAC);
                } else {
                    v188 = _SafeSub(v51, msg.gas);
                    v189 = 0x35f0(v188);
                    v190 = _SafeMul(v1, v189);
                    require(v190 < v183, Error(52));
                    v191 = _SafeSub(v183, v190);
                    require(v1 <= 1000);
                    v192 = _SafeMul(v191, v1);
                    v193 = _SafeSub(v191, v192 / 1000);
                    if (this.balance <= v192 / 1000) {
                        MEM[0] = MEM[0];
                        v194 = 0x35a9(v86);
                        0x5150(v194, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v192 / 1000) {
                        v195 = block.coinbase.call().value(v192 / 1000).gas(10000);
                    }
                    v196 = 0x35f0(msg.gas);
                    require(v196 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x191c10x212', '0x192b60x212']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
            }
            require(!((v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v58)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v68 = v197 = v58 + RETURNDATASIZE();
            require(v68 - v58 >= 32);
            v64 = v198 = MEM[v58];
            // Unknown jump to Block ['0x3daaB0xd89', '0x3dc7B0xd89']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3d83B0xd89. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        // Unknown jump to Block 0xd0e. Refer to 3-address code (TAC);
        v13 = v199 = 4403;
        if (32 <= RETURNDATASIZE()) {
            require(!((v8 + 32 > uint64.max) | (v8 + 32 < v8)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v8 + 32;
            v15 = v200 = v8 + 32;
        }
        v45 = RETURNDATASIZE();
        require(!((v8 + (v45 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (v45 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v8 + (v45 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v15 = v8 + v45;
        require(v15 - v8 >= 32);
        v11 = v201 = MEM[v8];
        require(!(address(v201) - v201));
        // Unknown jump to Block ['0x10da', '0x1133', '0x11be', '0x1210', '0x126a', '0x12bc']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0xd0c. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1114. Refer to 3-address code (TAC);
        // Unknown jump to Block 0xcce. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x11f1. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1249. Refer to 3-address code (TAC);
        // Unknown jump to Block 0xcd0. Refer to 3-address code (TAC);
        // Unknown jump to Block 0xcd2. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x124b. Refer to 3-address code (TAC);
    } else {
        exit;
    }
}

function 0x3a2daf8d(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, uint256 varg5, int24 varg6, uint256 varg7, uint256 varg8, uint256 varg9, int24 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15) public payable { 
    require(msg.data.length - 4 >= 512);
    require(!(bool(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(address(varg7) - varg7));
    require(!(bool(varg8) - varg8));
    require(!(bool(varg9) - varg9));
    require(!(address(varg11) - varg11));
    require(!(bool(varg12) - varg12));
    _unlockCallback = 1;
    revert();
}

function 0x2c2f9ced() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0;
}

function 0x25edf1c2() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
    v0, /* uint256 */ v1 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v3.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
}

function 0x3526() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3535() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3544() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3587(uint256 varg0) private { 
    require(10 ** 6 - varg0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - varg0;
}

function 0x3599(uint256 varg0) private { 
    require(10000 - varg0 <= 10000, Panic(17)); // arithmetic overflow or underflow
    return 10000 - varg0;
}

function 0x35a9(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x35e1(uint256 varg0) private { 
    require(varg0 <= varg0 + 1000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1000;
}

function 0x35f0(uint256 varg0) private { 
    require(varg0 <= varg0 + 25000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 25000;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x36a9(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(32 <= varg2);
    require(varg2 <= varg1);
    return varg2 - 32, 32 + varg0;
}

function 0x3803(int128 varg0) private { 
    require(varg0 != int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x38d9(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x3a99(uint256 varg0) private { 
    v0 = varg0 >> 224;
    v1 = bool(varg0 >> 148);
    if (v1 - 1) {
        if (v1 - 4) {
            if (v1 - 2) {
                if (v1 - 5) {
                    if (v1 - 3) {
                        if (v1) {
                            require(CHAINID() != 1);
                            v2 = v3 = !v0;
                            if (bool(v0)) {
                                v2 = v4 = block.timestamp == v0;
                            }
                            if (v2) {
                                v2 = v5 = address(block.coinbase) == block.coinbase;
                                if (address(block.coinbase) != block.coinbase) {
                                    v2 = v6 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                    if (v6) {
                                        v2 = v7 = address(block.coinbase) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                    }
                                }
                            }
                            require(v2, Error(50));
                            v8 = v9 = uint72(varg0 >> 152);
                        } else {
                            require(block.timestamp == v0, Error(50));
                        }
                    } else {
                        v10 = v11 = !v0;
                        if (bool(v0)) {
                            v10 = v12 = block.timestamp == v0;
                        }
                        if (v10) {
                            v10 = v13 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == block.coinbase;
                            if (address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) != block.coinbase) {
                                v10 = v14 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                if (v14) {
                                    v10 = v15 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                }
                            }
                        }
                        require(v10, Error(50));
                        v8 = v16 = uint72(varg0 >> 152);
                    }
                } else {
                    v17 = v18 = !v0;
                    if (bool(v0)) {
                        v17 = v19 = block.timestamp == v0;
                    }
                    if (v17) {
                        v17 = v20 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == block.coinbase;
                        if (address(0x396343362be2a4da1ce0c1c210945346fb82aa49) != block.coinbase) {
                            v17 = v21 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                            if (v21) {
                                v17 = v22 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                            }
                        }
                    }
                    require(v17, Error(50));
                    v8 = v23 = uint72(varg0 >> 152);
                }
            } else {
                v24 = v25 = !v0;
                if (bool(v0)) {
                    v24 = v26 = block.timestamp == v0;
                }
                if (v24) {
                    v24 = v27 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == block.coinbase;
                    if (address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) != block.coinbase) {
                        v24 = v28 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                        if (v28) {
                            v24 = v29 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                        }
                    }
                }
                require(v24, Error(50));
                v8 = v30 = uint72(varg0 >> 152);
            }
        } else {
            v31 = v32 = !v0;
            if (bool(v0)) {
                v31 = v33 = block.timestamp == v0;
            }
            if (v31) {
                v31 = v34 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == block.coinbase;
                if (address(0xdadb0d80178819f2319190d340ce9a924f783711) != block.coinbase) {
                    v31 = v35 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                    if (v35) {
                        v31 = v36 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                    }
                }
            }
            require(v31, Error(50));
            v8 = v37 = uint72(varg0 >> 152);
        }
    } else {
        v38 = v39 = !v0;
        if (bool(v0)) {
            v38 = v40 = block.timestamp == v0;
        }
        if (v38) {
            v38 = v41 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == block.coinbase;
            if (address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) != block.coinbase) {
                v38 = v42 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                if (v42) {
                    v38 = v43 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                }
            }
        }
        require(v38, Error(50));
        v8 = v44 = uint72(varg0 >> 152);
    }
    if (!(block.coinbase.balance - v8)) {
        if (this.balance) {
            v45, /* uint256 */ v46 = block.coinbase.call().value(1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v47 = v48 = new bytes[](RETURNDATASIZE());
                require(!((v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
                v46 = v48.data;
                RETURNDATACOPY(v46, 0, RETURNDATASIZE());
            }
            return 1;
        } else {
            return 1;
        }
    }
    return 0;
}

function 0x3c63(struct(4) varg0) private { 
    v0 = varg0.word2.slot0().gas(msg.gas);
    require(v0);
    return ;
}

function 0x3c81(uint256 varg0) private { 
    v0, /* uint128 */ v1 = varg0.liquidity().gas(msg.gas);
    require((RETURNDATASIZE() > 15) & v0);
    return uint128(v1);
}

function 0x3dcd(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(v0 + 31 < varg1);
    require(MEM[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](MEM[v0]);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v0]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v0]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(v0 + MEM[v0] + 32 <= varg1);
    MCOPY(v1.data, v0 + 32, MEM[v0]);
    v1[MEM[v0]] = 0;
    return v1;
}

function 0x3e44(struct(4) varg0) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, v3 = address(varg0).getReserves().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v4 = 0;
    v2 = v5 = 0;
    if (v0) {
        v6 = v7 = 96;
        if (96 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v6 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v2 - uint112(v2)));
        require(!(uint32(v3) - v3));
    }
    return uint112(v2), uint112(v1);
}

function 0x4397(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v0, varg2, varg3, varg4, varg0;
}

function 0x4791(address varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg0;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    MEM[0] = MEM[0];
    v2 = v3, /* uint256 */ v4 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = v8 = MEM[v5 + 32];
            require(!(bool(v8) - v8));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x4838(uint256 varg0) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v0 + 68] = varg0;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    MEM[0] = MEM[0];
    v2 = v3, /* uint256 */ v4 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(0x4444c5dc75cb358380d2e3de08a90, varg0).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = v8 = MEM[v5 + 32];
            require(!(bool(v8) - v8));
        }
    }
    require(v2, Error(21574));
    return ;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * 1 % uint256.max - varg0 - (varg0 * 1 % uint256.max < varg0);
    require(varg1 > v0);
    if (varg0 * 1 % uint256.max - varg0 == varg0 * 1 % uint256.max < varg0) {
        return varg0 / varg1;
    } else {
        v1 = 0 - varg1 & varg1;
        v2 = varg1 / v1;
        v3 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return ((varg0 - varg0 * 1 % varg1) / v1 | (v0 - (varg0 * 1 % varg1 > varg0)) * ((0 - v1) / v1 + 1)) * ((2 - v2 * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3))) * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3)));
    }
}

function 0x4a3f(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * (uint96.max + 1) % uint256.max - (varg0 << 96) - (varg0 * (uint96.max + 1) % uint256.max < varg0 << 96);
    require(varg1 > v0);
    if (varg0 * (uint96.max + 1) % uint256.max - (varg0 << 96) == varg0 * (uint96.max + 1) % uint256.max < varg0 << 96) {
        return (varg0 << 96) / varg1;
    } else {
        v1 = 0 - varg1 & varg1;
        v2 = varg1 / v1;
        v3 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return (((varg0 << 96) - varg0 * (uint96.max + 1) % varg1) / v1 | (v0 - (varg0 * (uint96.max + 1) % varg1 > varg0 << 96)) * ((0 - v1) / v1 + 1)) * ((2 - v2 * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3))) * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3)));
    }
}

function 0x4d15(uint256 varg0, uint256 varg1) private { 
    v0 = ((varg1 * uint256.max % (uint96.max + 1) + varg1) % (uint96.max + 1) + varg0) % (uint96.max + 1);
    v1 = varg0 - v0 >> 96 | varg1 - (varg0 < v0) << 160;
    if (varg1 == varg0 < v0) {
        return v1;
    } else {
        return v1;
    }
}

function 0x4d3e(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = ((varg1 * uint256.max % varg2 + varg1) % varg2 + varg0) % varg2;
    v1 = 0 - varg2 & varg2;
    v2 = varg2 / v1;
    v3 = (varg0 - v0) / v1 | (varg1 - (varg0 < v0)) * ((0 - v1) / v1 + 1);
    if (varg1 == varg0 < v0) {
        v4 = _SafeDiv(v3, v2);
        return v4;
    } else {
        v5 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return (2 - v2 * ((2 - v2 * ((2 - v2 * v5) * v5)) * ((2 - v2 * v5) * v5))) * ((2 - v2 * ((2 - v2 * v5) * v5)) * ((2 - v2 * v5) * v5)) * v3;
    }
}

function 0x510a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = varg2 > varg0;
    if (varg2 <= varg0) {
        v0 = v2 = varg2 == varg0;
        if (v2) {
            v0 = v3 = varg3 > varg1;
        }
    }
    if (v0) {
        return 0;
    } else if (!varg2) {
        v4 = 0x4d3e(varg1, varg0, varg3);
        return v4;
    } else {
        v5 = _SafeDiv(varg0, varg2);
        return v5;
    }
}

function 0x5150(uint256 varg0, uint256 varg1) private { 
    v0 = varg1.withdraw(varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x517c(uint256 varg0) private { 
    if (!varg0) {
        return 0;
    } else {
        v0 = varg0 >> (((varg0 > uint128.max + 1) | (varg0 == uint128.max + 1)) << 7);
        v1 = v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) >> (((v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) > uint32.max + 1) | (v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) == uint32.max + 1)) << 5);
        v2 = v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) >> (((v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) > uint8.max + 1) | (v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) == uint8.max + 1)) << 3);
        v3 = 1 << (((varg0 > uint128.max + 1) | (varg0 == uint128.max + 1)) << 6) << (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 5) << (((v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) > uint32.max + 1) | (v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) == uint32.max + 1)) << 4) << (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 3) << (((v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) > uint8.max + 1) | (v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) == uint8.max + 1)) << 2) << (((v2 > 16) | (v2 == 16)) << 1) << (((v2 >> (((v2 > 16) | (v2 == 16)) << 2) > 8) | (v2 >> (((v2 > 16) | (v2 == 16)) << 2) == 8)) << 1);
        v4 = _SafeDiv(varg0, v3);
        v5 = _SafeDiv(varg0, v4 + v3 >> 1);
        v6 = _SafeDiv(varg0, v5 + (v4 + v3 >> 1) >> 1);
        v7 = _SafeDiv(varg0, v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1);
        v8 = _SafeDiv(varg0, v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1);
        v9 = _SafeDiv(varg0, v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1);
        v10 = _SafeDiv(varg0, v9 + (v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1);
        v11 = v10 + (v9 + (v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1) >> 1;
        require(v11, Panic(18)); // division by zero
        if (v11 < varg0 / v11) {
            return v11;
        } else {
            return varg0 / v11;
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x60cc4b2 != v0) {
            if (0xa58f8e0 != v0) {
                if (0x10d1e85c != v0) {
                    if (0x1c422bb7 != v0) {
                        if (0x23a69e75 != v0) {
                            if (0x2561aca1 != v0) {
                                if (0x25edf1c2 == v0) {
                                    0x25edf1c2();
                                } else if (0x29bec0f6 != v0) {
                                    if (0x2c2f9ced == v0) {
                                        0x2c2f9ced();
                                    } else if (0x30f76ad9 != v0) {
                                        if (0x3a1c453c != v0) {
                                            if (0x3a2daf8d == v0) {
                                                0x3a2daf8d();
                                            } else if (0x427a2f1c == v0) {
                                                0x427a2f1c();
                                            } else if (0x4d7c481f != v0) {
                                                if (0x58c16b82 != v0) {
                                                    if (0x6b40136c != v0) {
                                                        if (0x6e3aab9b == v0) {
                                                            0x6e3aab9b();
                                                        } else if (0x6f5aeea3 == v0) {
                                                            0x6f5aeea3();
                                                        } else if (0x6fe055ca == v0) {
                                                            0x6fe055ca();
                                                        } else if (0x749d3c3b != v0) {
                                                            if (0x7a436efe != v0) {
                                                                if (0x84800812 != v0) {
                                                                    if (0x871bba25 != v0) {
                                                                        if (0x91dd7346 == v0) {
                                                                            unlockCallback(bytes);
                                                                        } else if (0x9f3d4ab8 != v0) {
                                                                            if (0xa0bd0131 != v0) {
                                                                                if (0xa31de730 != v0) {
                                                                                    if (0xaf4cf912 != v0) {
                                                                                        if (0xb6d35a66 != v0) {
                                                                                            if (0xb7754fdd != v0) {
                                                                                                if (0xb9087966 != v0) {
                                                                                                    if (0xbf5fad43 != v0) {
                                                                                                        if (0xc18c82cc != v0) {
                                                                                                            if (0xcafecc44 == v0) {
                                                                                                                0xcafecc44();
                                                                                                            } else if (0xcbf02c23 != v0) {
                                                                                                                if (0xcf7d4f69 != v0) {
                                                                                                                    if (0xf73dfdb2 != v0) {
                                                                                                                        if (0xfa461e33 != v0) {
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    0xb7754fdd();
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    0xa31de730();
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            0xf73dfdb2();
                        }
                        0xa0bd0131();
                    }
                    0x4d7c481f();
                }
                0xc18c82cc();
            }
            0x0a58f8e0();
        }
        0x060cc4b2();
    }
    require(!msg.data.length);
    receive();
}
