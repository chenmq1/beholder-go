// Decompiled by library.dedaub.com
// 2025.12.15 20:11 UTC
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
        if (uint8(data.word1)) {
            if (uint8(data.word1) - 1) {
                require(uint8(data.word1) - 2);
                require(uint8(data.word1) - 3);
                require(uint8(data.word1) - 4);
                if (uint8(data.word1) - 5) {
                    require(uint8(data.word1) - 6);
                    require(uint8(data.word1) - 7);
                    require(uint8(data.word1) - 8);
                    require(uint8(data.word1) - 9);
                    require(uint8(data.word1) - 10);
                    require(uint8(data.word1) - 11);
                    require(uint8(data.word1) - 12);
                    require(uint8(data.word1) - 13);
                    require(uint8(data.word1) - 14);
                    require(uint8(data.word1) - 15);
                    require(uint8(data.word1) - 16);
                    require(uint8(data.word1) - 17);
                    require(uint8(data.word1) - 18);
                    require(uint8(data.word1) - 19);
                    require(uint8(data.word1) - 20);
                    require(uint8(data.word1) - 21);
                    require(uint8(data.word1) - 22);
                    require(23 - uint8(data.word1));
                    revert(Error(0x3f3f3f));
                } else {
                    v1, v2 = 0x3076(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                    require(v2 + v1 - v2 >= 384);
                    require(v2 + v1 - v2 >= 160);
                    v3 = new struct(5);
                    require(!((v3 + 160 > uint64.max) | (v3 + 160 < v3)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(address(msg.data[v2]) - msg.data[v2]));
                    v3.word0 = msg.data[v2];
                    require(!(address(msg.data[v2 + 32]) - msg.data[v2 + 32]));
                    v3.word1 = msg.data[v2 + 32];
                    require(!(msg.data[v2 + 64] - uint24(msg.data[v2 + 64])));
                    v3.word2 = msg.data[v2 + 64];
                    require(!(msg.data[v2 + 96] - int24(msg.data[v2 + 96])));
                    v3.word3 = msg.data[v2 + 96];
                    require(!(address(msg.data[v2 + 128]) - msg.data[v2 + 128]));
                    v3.word4 = msg.data[v2 + 128];
                    require(!(bool(msg.data[v2 + 160]) - msg.data[v2 + 160]));
                    require(v2 + v1 - (v2 + 192) >= 160);
                    v4 = new struct(5);
                    require(!((v4 + 160 > uint64.max) | (v4 + 160 < v4)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(address(msg.data[v2 + 192]) - msg.data[v2 + 192]));
                    v4.word0 = msg.data[v2 + 192];
                    require(!(address(msg.data[v2 + 192 + 32]) - msg.data[v2 + 192 + 32]));
                    v4.word1 = msg.data[v2 + 192 + 32];
                    require(!(msg.data[v2 + 192 + 64] - uint24(msg.data[v2 + 192 + 64])));
                    v4.word2 = msg.data[v2 + 192 + 64];
                    require(!(msg.data[v2 + 192 + 96] - int24(msg.data[v2 + 192 + 96])));
                    v4.word3 = msg.data[v2 + 192 + 96];
                    require(!(address(msg.data[v2 + 192 + 128]) - msg.data[v2 + 192 + 128]));
                    v4.word4 = msg.data[v2 + 192 + 128];
                    require(!(bool(msg.data[v2 + 352]) - msg.data[v2 + 352]));
                    if (0 != amount0Delta > 0) {
                    }
                    v5 = new struct(16);
                    v5.word1 = 3;
                    v5.word2 = msg.sender;
                    v5.word3 = v6;
                    v5.word4 = address(v3.word0);
                    v5.word5 = address(v3.word1);
                    v5.word6 = uint24(v3.word2);
                    v5.word7 = int24(v3.word3);
                    v5.word8 = address(v3.word4);
                    v5.word9 = bool(msg.data[v2 + 160]);
                    v5.word10 = address(v4.word0);
                    v5.word11 = address(v4.word1);
                    v5.word12 = uint24(v4.word2);
                    v5.word13 = int24(v4.word3);
                    v5.word14 = address(v4.word4);
                    v5.word15 = bool(msg.data[v2 + 352]);
                    v5.word0 = 480;
                    require(!((v5 + 512 > uint64.max) | (v5 + 512 < v5)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = 32;
                    v7 = new bytes[](v5.word0.length);
                    MCOPY(v7.data, v5.data, v5.word0.length);
                    v7[v5.word0.length] = 0;
                    v8 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v7, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                    if (v8) {
                        if (v8) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                            require(v9.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v10 = new bytes[](v9.length);
                            require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v9.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v9.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v9.length + 32 <= MEM[64] + RETURNDATASIZE());
                            MCOPY(v10.data, v9.data, v9.length);
                            v10[v9.length] = 0;
                            exit;
                        } else {
                            exit;
                        }
                    }
                }
            } else {
                v11 = v12 = 0;
                v11 = v13 = 64;
                v14 = v15 = 3366;
                v16, v17 = 0x3076(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                require(v17 + v16 - v17 >= 128);
                v11 = msg.data[v17];
                require(!(address(v11) - v11));
                v18 = msg.data[v17 + 32];
                require(!(bool(v18) - v18));
                v19 = msg.data[v17 + 64];
                require(!(address(v19) - v19));
                require(!(bool(msg.data[v17 + 96]) - msg.data[v17 + 96]));
                if (v12 != amount0Delta > v12) {
                }
            }
        } else {
            v14 = v20 = 3120;
            v19 = v21 = 3212;
            v11 = v22 = 64;
            v23, v24 = 0x3076(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
            require(v24 + v23 - v24 >= 64);
            v11 = v25 = msg.data[v24];
            require(!(address(v25) - v25));
            v18 = v26 = msg.data[v24 + 32];
            require(!(bool(v26) - v26));
            if (amount0Delta > 0) {
            }
        }
        require(v6 != int256.min, Panic(17)); // arithmetic overflow or underflow
        // Unknown jump to Block ['0xc30', '0xd26']. Refer to 3-address code (TAC);
        if (!v18) {
            v11 = v27 = 0;
            MEM[0] = MEM[0];
            v28 = v29 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            v11 = v30 = 0;
            v28 = v31 = 0x1000276a4;
        }
        v32 = v33 = MEM[v11];
        MEM[v33] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v33 + 4] = msg.sender;
        MEM[v33 + 36] = bool(v18);
        MEM[v33 + 68] = 0 - v6;
        MEM[v33 + 100] = address(v28);
        MEM[v33 + 132] = 160;
        MEM[v33 + 164] = 0;
        v34 = v35 = v33 + 196;
        v36 = address(v11).call(MEM[v136a10x1d1_0x1:v136a10x1d1_0x1 + v164aV0x331cV0x13707 - v136a10x1d1_0x1], MEM[v136a10x1d1_0x1:v136a10x1d1_0x1 + v3b8cV0xd08]).value(v11).gas(msg.gas);
        if (v36) {
            if (v36) {
                v37 = v38 = 64;
                if (64 > RETURNDATASIZE()) {
                    v37 = RETURNDATASIZE();
                }
                require(!((v32 + (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v32 + (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(v32 + v37 - v32 >= 64);
                exit;
            } else {
                exit;
            }
        }
        if (v11 == v18) {
            MEM[0] = MEM[0];
            v39 = new struct(4);
            v40 = v39.data;
            v39.word1 = 0;
            v39.word2 = address(v19);
            v39.word3 = bool(msg.data[v17 + 96]);
            v39.word0 = 96;
            require(!((v39 + 128 > uint64.max) | (v39 + 128 < v39)), Panic(65)); // failed memory allocation (too much memory)
            v32 = v41 = MEM[v13];
            MEM[v41] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v41 + 4] = msg.sender;
            MEM[v41 + 4 + 32] = bool(v18);
            MEM[v41 + 4 + 64] = 0 - v6;
            MEM[v41 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
            MEM[v41 + 4 + 128] = 160;
            MEM[v41 + 4 + 160] = v39.word0.length;
            MCOPY(v41 + 4 + 160 + 32, v39.data, v39.word0.length);
            v34 = 96 + (v41 + 4 + 160) + 32;
        } else {
            v42 = new struct(4);
            v43 = v42.data;
            v42.word1 = 0;
            v42.word2 = address(v19);
            v42.word3 = bool(msg.data[v17 + 96]);
            v42.word0 = 96;
            require(!((v42 + 128 > uint64.max) | (v42 + 128 < v42)), Panic(65)); // failed memory allocation (too much memory)
            v32 = v44 = MEM[v13];
            MEM[v44] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v44 + 4] = msg.sender;
            MEM[v44 + 4 + 32] = bool(v18);
            MEM[v44 + 4 + 64] = 0 - v6;
            MEM[v44 + 4 + 96] = address(0x1000276a4);
            MEM[v44 + 4 + 128] = 160;
            MEM[v44 + 4 + 160] = v42.word0.length;
            MCOPY(v44 + 4 + 160 + 32, v42.data, v42.word0.length);
            v34 = v45 = 96 + (v44 + 4 + 160) + 32;
        }
        v46 = RETURNDATASIZE();
        revert(v47, v47, v47, v47, v47, v47, v47, v47, v47, 0, 0);
        // Unknown jump to Block 0x31e40x1d1. Refer to 3-address code (TAC);
    } else if (amount0Delta <= 0) {
        0x3eab(msg.sender, amount1Delta);
        exit;
    } else {
        0x3eab(msg.sender, amount0Delta);
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

function 0xcafecc44(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
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

function 0xaf4cf912(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, int24 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
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
    v0 = 0x3385(varg11);
    if (!v0) {
        v1 = v2 = 9774;
        v3 = v4 = 0x14918;
        v5 = v6 = 0xfffff & varg11 >> 88;
        if (!varg0) {
            if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v5 = v7 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v5 = v8 = 0;
        }
        if (!varg0) {
            if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v9 = v10 = 0x15513;
                v11, v12, v13 = v14, v5 = v15 = 0x2a0f(varg1, 0x15592, 0x15567, 0x1553c);
                v16 = v17 = uint24(v11);
                v18 = v19 = 9720;
                v20 = v21 = 0x2ac4();
            } else {
                v9 = v22 = 0x1546d;
                MEM[0] = MEM[0];
                v23, v24, v13 = v25, v5 = v26 = 0x2a0f(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x154ec, 0x154c1, 0x15496);
                v16 = v27 = uint24(v23);
                v18 = v28 = 9720;
                v20 = v29 = 0x2ac4();
            }
        } else {
            v9 = v30 = 0x14947;
            v13 = v31 = 0x14970;
            v32 = 0x2b16(v6);
            v16 = v33 = uint24(v32);
            v18 = v34 = 9720;
            v20 = v35 = 0x2ac4();
        }
        while (1) {
            MEM[v20] = address(v5);
            MEM[v20 + 32] = address(v5);
            // Unknown jump to Block ['0x14970', '0x14a16', '0x15373', '0x15496', '0x1553c']. Refer to 3-address code (TAC);
            MEM[v20 + 64] = uint24(v16);
            MEM[v20 + 96] = int24(v36);
            MEM[v20 + 128] = address(v5);
            v5 = v37 = 0x2ab5();
            v37.word0 = 0;
            v37.word1 = 0;
            v37.word2 = v20;
            v37.word3 = bool(varg4);
            v36 = v38 = 9821;
            v39 = new struct(3);
            v39.word1 = keccak256(MEM[v2635_0x0.word2:v2635_0x0.word2 + 160]);
            v39.word2 = 6;
            v39.word0 = 64;
            require(!((v39 + 96 > uint64.max) | (v39 + 96 < v39)), Panic(65)); // failed memory allocation (too much memory)
            v40 = v39.word0.length;
            v41 = v42 = keccak256(keccak256(MEM[v2635_0x0.word2:v2635_0x0.word2 + 160]), 6);
            v43 = v44 = MEM[64];
            v45 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v42).gas(msg.gas);
            if (!v45) {
                break;
            } else {
                v5 = v46 = 32;
                v47 = v48 = 13856;
                v49 = v50 = 0;
                if (v45) {
                    v51 = v52 = 14003;
                    if (v46 > RETURNDATASIZE()) {
                        break;
                    } else {
                        require(!((v44 + 32 > uint64.max) | (v44 + 32 < v44)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v44 + 32;
                        v53 = v54 = v44 + v46;
                    }
                } else {
                    break;
                }
                MEM[v5] = address(v49);
                require(v41 <= v41 + 3, Panic(17)); // arithmetic overflow or underflow
                v43 = v55 = MEM[64];
                v56 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v41 + 3).gas(msg.gas);
                if (!v56) {
                    break;
                } else {
                    v41 = v57 = uint128.max;
                    v47 = v58 = 32;
                    v5 = v59 = 0x15cf9;
                    v49 = v60 = 0;
                    if (v56) {
                        v51 = 13974;
                        if (v58 > RETURNDATASIZE()) {
                            break;
                        } else {
                            require(!((v55 + 32 > uint64.max) | (v55 + 32 < v55)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v55 + 32;
                            v53 = v61 = v55 + v58;
                        }
                    } else {
                        break;
                    }
                }
                MEM[v5 + v47] = uint128(v49 & v41);
                v5 = v62 = 0xfffff & varg8 >> 108;
                if (!varg5) {
                    v63 = v64 = MEM[64];
                    v65 = address(varg1).token1().gas(msg.gas);
                    if (!v65) {
                        break;
                    } else {
                        v9 = v66 = 0x1534a;
                        v13 = v67 = 0x15373;
                        v68 = v69 = 0x1539e;
                        v70 = v71 = 0x153c9;
                        v3 = v72 = 0x153f0;
                        v1 = v73 = 0x1541f;
                        v5 = v74 = 0;
                        if (v65) {
                            v75 = v76 = 10703;
                            if (32 > RETURNDATASIZE()) {
                                break;
                            } else {
                                require(!((v64 + 32 > uint64.max) | (v64 + 32 < v64)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v64 + 32;
                                v77 = v78 = v64 + 32;
                            }
                        } else {
                            break;
                        }
                    }
                } else {
                    v63 = v79 = MEM[64];
                    v80 = address(varg1).token0().gas(msg.gas);
                    if (!v80) {
                        break;
                    } else {
                        v9 = v81 = 0x149ed;
                        v13 = v82 = 0x14a16;
                        v68 = v83 = 0x14a41;
                        v70 = v84 = 0x14a6c;
                        v3 = v85 = 0x14a93;
                        v1 = v86 = 0x14ac2;
                        v5 = v87 = 0;
                        if (v80) {
                            v75 = v88 = 10599;
                            if (32 > RETURNDATASIZE()) {
                                break;
                            } else {
                                require(!((v79 + 32 > uint64.max) | (v79 + 32 < v79)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v79 + 32;
                                v77 = v89 = v79 + 32;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (address(v37) >= address(v5)) {
                    break;
                }
                if (address(v37) >= address(v5)) {
                    break;
                }
                if (10 ** 6 - v62 > 10 ** 6) {
                    break;
                } else {
                    // Unknown jump to Block ['0x14a6c', '0x153c9']. Refer to 3-address code (TAC);
                    v16 = v90 = uint24(10 ** 6 - v62);
                    v18 = v91 = 9720;
                    v20 = v92 = 0x2ac4();
                    v16 = v93 = uint24(10 ** 6 - v62);
                    v18 = v94 = 9720;
                    v20 = v95 = 0x2ac4();
                }
                require(!((v63 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v63 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v63)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v63 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v77 = v63 + RETURNDATASIZE();
                require(v77 - v63 >= 32);
                v5 = v96 = MEM[v63];
                require(!(address(v96) - v96));
                // Unknown jump to Block ['0x2967', '0x29cf']. Refer to 3-address code (TAC);
                break;
                break;
                // Unknown jump to Block 0x26b3. Refer to 3-address code (TAC);
                require(!((v43 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v43 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v43)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v43 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v53 = v97 = v43 + RETURNDATASIZE();
                require(v53 - v43 >= 32);
                v49 = v98 = MEM[v43];
                // Unknown jump to Block ['0x3696B0x2654', '0x36b3B0x2654']. Refer to 3-address code (TAC);
                break;
            }
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
            MEM[v20 + 64] = uint24(v16);
            MEM[v20 + 96] = int24(v36);
            // Unknown jump to Block 0x14918. Refer to 3-address code (TAC);
            MEM[v20 + 64] = uint24(v16);
            MEM[v20 + 96] = int24(v36);
            // Unknown jump to Block 0x14918. Refer to 3-address code (TAC);
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        revert(Panic(17));
        MEM[v20 + 64] = uint24(v16);
        MEM[v20 + 96] = int24(v36);
        MEM[v20 + 128] = address(v5);
        v99 = v100 = 0x2ab5();
        MEM[v99] = 0;
        MEM[v99 + 32] = 0;
        MEM[v99 + 64] = v20;
        MEM[v99 + 96] = bool(varg12);
        v101 = v102 = 9991;
        v103 = new struct(3);
        v103.word1 = keccak256(MEM[MEM[v26fe_0x3 + 64]:MEM[v26fe_0x3 + 64] + 160]);
        v103.word2 = 6;
        v103.word0 = 64;
        require(!((v103 + 96 > uint64.max) | (v103 + 96 < v103)), Panic(65)); // failed memory allocation (too much memory)
        v104 = v103.word0.length;
        v105 = v106 = keccak256(keccak256(MEM[MEM[v26fe_0x3 + 64]:MEM[v26fe_0x3 + 64] + 160]), 6);
        v107 = v108 = MEM[64];
        v109 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v106).gas(msg.gas);
        if (v109) {
            v99 = v110 = 32;
            v111 = v112 = 13856;
            v113 = v114 = 0;
            if (v109) {
                v115 = v116 = 14003;
                if (v110 <= RETURNDATASIZE()) {
                    require(!((v108 + 32 > uint64.max) | (v108 + 32 < v108)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v108 + 32;
                    v117 = v118 = v108 + v110;
                }
            }
            MEM[v99] = address(v113);
            require(v105 <= v105 + 3, Panic(17)); // arithmetic overflow or underflow
            v107 = v119 = MEM[64];
            v120 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v105 + 3).gas(msg.gas);
            if (v120) {
                v105 = v121 = uint128.max;
                v111 = v122 = 32;
                v99 = v123 = 0x15cf9;
                v113 = v124 = 0;
                if (v120) {
                    v115 = 13974;
                    if (v122 <= RETURNDATASIZE()) {
                        require(!((v119 + 32 > uint64.max) | (v119 + 32 < v119)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v119 + 32;
                        v117 = v125 = v119 + v122;
                    }
                }
            }
            MEM[v99 + v111] = uint128(v113 & v105);
            v5 = v126 = 0x2ab5();
            v126.word0 = 0;
            v126.word1 = 0;
            v126.word2 = address(v99);
            v126.word3 = bool(v102);
            0x354f(v126);
            v127 = 0x356d(address(v126.word2));
            v126.word1 = uint128(v127);
            v128 = v129 = MEM[64];
            MEM[0] = MEM[0];
            v130 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v130) {
                v5 = v131 = 10082;
                v132 = v133 = 0x14bae;
                v134 = v135 = 0;
                if (v130) {
                    v136 = v137 = 2245;
                    v138 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x8cb0x1ef. Refer to 3-address code (TAC);
                    }
                } else {
                    v139 = v140 = this.balance;
                }
                require(!((v128 + (v138 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v128 + (v138 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v128)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v128 + (v138 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v141 = v128 + v138;
                require(v141 - v128 >= 32);
                v134 = MEM[v128];
                // Unknown jump to Block ['0x43bd0x1ef', '0x8c50x1ef']. Refer to 3-address code (TAC);
                v139 = this.balance;
                v142 = _SafeAdd(v134, this.balance);
                v143 = _SafeSub(v142, v5);
                if (!v144) {
                    v145 = _SafeSub(v5, msg.gas);
                    v146 = 0x2b60(v145);
                    v147 = _SafeMul(v101, v146);
                    require(v147 < v143, Error(52));
                    v148 = 0x2b60(msg.gas);
                    require(v148 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x15e4b0x1ef', '0x15f380x1ef']. Refer to 3-address code (TAC);
                } else {
                    v149 = _SafeSub(v5, msg.gas);
                    v150 = 0x2b6f(v149);
                    v151 = _SafeMul(v101, v150);
                    require(v151 < v143, Error(52));
                    v152 = _SafeSub(v143, v151);
                    require(v144 <= 1000);
                    v153 = _SafeMul(v152, v144);
                    v154 = _SafeSub(v152, v153 / 1000);
                    if (this.balance <= v153 / 1000) {
                        MEM[0] = MEM[0];
                        v155 = 0x2b28(v134);
                        0x4500(v155, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v153 / 1000) {
                        v156 = block.coinbase.call().value(v153 / 1000).gas(10000);
                    }
                    v157 = 0x2b6f(msg.gas);
                    require(v157 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x15e4b0x1ef', '0x15f380x1ef']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
                v138 = v158 = RETURNDATASIZE();
                // Unknown jump to Block 0x8b30x1ef. Refer to 3-address code (TAC);
                v5 = v159 = v134 + v139;
                if (v134 <= v159) {
                    v5 = v160 = 14082;
                    v5 = v161 = 14087;
                    if (0 == v144) {
                        v162 = v163 = _SafeDiv(uint192.max + 1, address(MEM[v5]));
                    } else {
                        v162 = address(MEM[v5]);
                    }
                    if (!varg10) {
                        v5 = v164 = _SafeDiv(uint192.max + 1, address(MEM[v5]));
                    } else {
                        v5 = v165 = address(MEM[v5]);
                    }
                    if (!v101) {
                        v5 = v166 = _SafeDiv(uint192.max + 1, address(MEM[v5]));
                    } else {
                        v5 = v167 = address(MEM[v5]);
                    }
                    v5 = v168 = uint96.max + 1;
                    while (1) {
                        v169 = v162 * v5;
                        v170 = v162 * v5 % uint256.max - v169 - (v162 * v5 % uint256.max < v169);
                        if (uint96.max + 1 <= v170) {
                            break;
                        } else {
                            if (v162 * v5 % uint256.max - v169 == v162 * v5 % uint256.max < v169) {
                                v162 = v169 >> 96;
                                // Unknown jump to Block ['0x37020x1ef', '0x37070x1ef']. Refer to 3-address code (TAC);
                            } else {
                                v162 = v169 - v162 * v5 % (uint96.max + 1) >> 96 | v170 - (v162 * v5 % (uint96.max + 1) > v169) << 160;
                                // Unknown jump to Block ['0x37020x1ef', '0x37070x1ef']. Refer to 3-address code (TAC);
                            }
                            continue;
                        }
                    }
                    if (v162 <= v5) {
                        v5 = v171 = 0x14f19;
                        MEM[v5 + 96] = bool(!MEM[v5 + 96]);
                        if (bool(MEM[v5 + 96])) {
                            MEM[v5] = address(address(MEM[v5]) >> 48);
                            MEM[v5 + 96] = bool(!MEM[v5 + 96]);
                        } else {
                            v172 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v173 = _SafeDiv(v172, address(MEM[v5]) >> 48);
                            MEM[v5] = address(v173);
                            MEM[v5 + 96] = bool(!MEM[v5 + 96]);
                        }
                        if (bool(MEM[v5 + 96])) {
                            MEM[v5] = address(address(MEM[v5]) >> 48);
                            MEM[v5 + 96] = bool(!MEM[v5 + 96]);
                        } else {
                            v174 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v175 = _SafeDiv(v174, address(MEM[v5]) >> 48);
                            MEM[v5] = address(v175);
                            MEM[v5 + 96] = bool(!MEM[v5 + 96]);
                        }
                        if (bool(MEM[v5 + 96])) {
                            MEM[v5] = address(address(MEM[v5]) >> 48);
                        } else {
                            v176 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v177 = _SafeDiv(v176, address(MEM[v5]) >> 48);
                            MEM[v5] = address(v177);
                        }
                        v178 = v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000;
                        v179 = uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48;
                        v180 = uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) + (uint128(10 ** 6 * uint128(MEM[v5 + 32])) << 48 << 48);
                        v181 = 0x44ba(v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max - v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) - (v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max < v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32])) + (v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max - v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) - (v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max < v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32])) + (v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) % uint256.max - v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) - (v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) % uint256.max < v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32])) + (v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) % uint256.max - v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) - (v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) % uint256.max < v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5]))) + (v178 * (v5 * address(MEM[v5])) % uint256.max - v178 * (v5 * address(MEM[v5])) - (v178 * (v5 * address(MEM[v5])) % uint256.max < v178 * (v5 * address(MEM[v5])))) * (v5 * address(MEM[v5]))) * uint128(MEM[v5 + 32])) * uint128(MEM[v5 + 32])) * uint128(MEM[v5 + 32]), v178 * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]), (v180 * v179 + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5 % uint256.max - (v180 * v179 + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5 - ((v180 * v179 + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5 % uint256.max < (v180 * v179 + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5) + (v180 * v179 % uint256.max - v180 * v179 - (v180 * v179 % uint256.max < v180 * v179) + ((uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32]) % uint256.max - (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32]) - ((uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32]) % uint256.max < (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v5 + 32]) % uint256.max - (uint128(MEM[v5 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v5 + 32]) % uint256.max < uint128(MEM[v5 + 32]) << 252) + uint128(MEM[v5 + 32])) * uint128(MEM[v5 + 32])) + (v180 * v179 + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32]) < v180 * v179)) * v5, (v180 * v179 + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5);
                        v182 = MEM[v5 + 64];
                        v183 = MEM[v5 + 64];
                        v184 = new struct(17);
                        v184.word1 = 4;
                        v184.word2 = v181;
                        v184.word3 = address(MEM[v182]);
                        v184.word4 = address(MEM[v182 + 32]);
                        v184.word5 = uint24(MEM[v182 + 64]);
                        v184.word6 = int24(MEM[v182 + 96]);
                        v184.word7 = address(MEM[128 + v182]);
                        v184.word8 = bool(MEM[v5 + 96]);
                        v184.word9 = address(MEM[v183]);
                        v184.word10 = address(MEM[v183 + 32]);
                        v184.word11 = uint24(MEM[v183 + 64]);
                        v184.word12 = int24(MEM[v183 + 96]);
                        v184.word13 = address(MEM[128 + v183]);
                        v184.word14 = bool(MEM[v5 + 96]);
                        v184.word15 = address(MEM[v5 + 64]);
                        v184.word16 = bool(MEM[v5 + 96]);
                        v184.word0 = 512;
                        require(!((v184 + 544 > uint64.max) | (v184 + 544 < v184)), Panic(65)); // failed memory allocation (too much memory)
                        v185 = new bytes[](v184.word0.length);
                        MCOPY(v185.data, v184.data, v184.word0.length);
                        v185[v184.word0.length] = 0;
                        v186 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v185, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                        if (v186) {
                            v5 = v187 = 0x15f38;
                            if (v186) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                require(v188.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v189 = new bytes[](v188.length);
                                require(!((v189 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v188.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v189 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v188.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v189)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v188.length + 32 <= MEM[64] + RETURNDATASIZE());
                                MCOPY(v189.data, v188.data, v188.length);
                                v189[v188.length] = 0;
                            }
                        }
                    } else {
                        v5 = v190 = 0x14bfc;
                        if (bool(MEM[v5 + 96])) {
                            MEM[v5] = address(address(MEM[v5]) >> 48);
                            v191 = v192 = bool(!MEM[v5 + 96]);
                        } else {
                            v193 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v194 = _SafeDiv(v193, address(MEM[v5]) >> 48);
                            MEM[v5] = address(v194);
                            v191 = v195 = bool(!MEM[v5 + 96]);
                        }
                        if (!v191) {
                            MEM[v5] = address(address(MEM[v5]) >> 48);
                            v196 = v197 = bool(!MEM[v5 + 96]);
                        } else {
                            v198 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v199 = _SafeDiv(v198, address(MEM[v5]) >> 48);
                            MEM[v5] = address(v199);
                            v196 = v200 = bool(!MEM[v5 + 96]);
                        }
                        if (!v196) {
                            MEM[v5] = address(address(MEM[v5]) >> 48);
                        } else {
                            v201 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v202 = _SafeDiv(v201, address(MEM[v5]) >> 48);
                            MEM[v5] = address(v202);
                        }
                        v203 = 64;
                        v204 = uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) + (uint128(10 ** 6 * uint128(MEM[v5 + 32])) << 48 << 48);
                        v205 = 0x44ba((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max - (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) - ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max < (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32])) + ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max - (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) - ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) % uint256.max < (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32])) + ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) % uint256.max - (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) - ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) % uint256.max < (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32])) + ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) % uint256.max - (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) - ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) % uint256.max < (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5]))) + ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) % uint256.max - (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) - ((v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) % uint256.max < (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])))) * (v5 * address(MEM[v5]))) * uint128(MEM[v5 + 32])) * uint128(MEM[v5 + 32])) * uint128(MEM[v5 + 32]), (v5 * address(MEM[v5]) * address(MEM[v5]) * address(MEM[v5]) - 0x3b9aca00000000000000000000000000000000000000) * (v5 * address(MEM[v5])) * (v5 * address(MEM[v5])) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]) * uint128(MEM[v5 + 32]), (v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5 % uint256.max - (v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5 - ((v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5 % uint256.max < (v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5) + (v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) % uint256.max - v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) - (v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) % uint256.max < v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48)) + ((uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32]) % uint256.max - (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32]) - ((uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32]) % uint256.max < (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v5 + 32]) % uint256.max - (uint128(MEM[v5 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v5 + 32]) % uint256.max < uint128(MEM[v5 + 32]) << 252) + uint128(MEM[v5 + 32])) * uint128(MEM[v5 + 32])) + (v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32]) < v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48))) * v5, (v204 * (uint128(MEM[v5 + 32]) * v5 * address(MEM[v5]) * address(MEM[v5]) << 48) + (uint128(MEM[v5 + 32]) << 252) * uint128(MEM[v5 + 32])) * v5);
                        v206 = 0;
                        v207 = address(MEM[v203 + v5]);
                        v208, v209, v210 = 0x3846(bool(MEM[v5 + 96]), 0x15db9, 14419);
                        if (v206 == bool(MEM[v5 + 96])) {
                            MEM[0] = MEM[0];
                            v211 = new struct(14);
                            v211.word1 = 5;
                            v211.word2 = address(MEM[MEM[v5 + v203]]);
                            v211.word3 = address(MEM[MEM[v5 + v203] + 32]);
                            v211.word4 = uint24(MEM[MEM[v5 + v203] + 64]);
                            v211.word5 = int24(MEM[MEM[v5 + v203] + 96]);
                            v211.word6 = address(MEM[128 + MEM[v5 + v203]]);
                            v211.word7 = bool(MEM[v5 + 96]);
                            v211.word8 = address(MEM[MEM[v5 + v203]]);
                            v211.word9 = address(MEM[MEM[v5 + v203] + 32]);
                            v211.word10 = uint24(MEM[MEM[v5 + v203] + 64]);
                            v211.word11 = int24(MEM[MEM[v5 + v203] + 96]);
                            v211.word12 = address(MEM[128 + MEM[v5 + v203]]);
                            v211.word13 = bool(MEM[v5 + 96]);
                            v211.word0 = 416;
                            require(!((v211 + 448 > uint64.max) | (v211 + 448 < v211)), Panic(65)); // failed memory allocation (too much memory)
                            v212 = v213 = MEM[v203];
                            MEM[v213] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v213 + 4] = address(this);
                            MEM[v213 + 4 + 32] = bool(v210);
                            MEM[v213 + 4 + 64] = v208;
                            MEM[v213 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v213 + 4 + 128] = 160;
                            MEM[v213 + 4 + 160] = v211.word0.length;
                            MCOPY(v213 + 4 + 160 + 32, v211.data, v211.word0.length);
                            MEM[32 + (v211.word0.length + (v213 + 4 + 160))] = 0;
                            v214 = 416 + (v213 + 4 + 160) + 32;
                        } else {
                            v215 = new struct(14);
                            v215.word1 = 5;
                            v215.word2 = address(MEM[MEM[v5 + v203]]);
                            v215.word3 = address(MEM[MEM[v5 + v203] + 32]);
                            v215.word4 = uint24(MEM[MEM[v5 + v203] + 64]);
                            v215.word5 = int24(MEM[MEM[v5 + v203] + 96]);
                            v215.word6 = address(MEM[128 + MEM[v5 + v203]]);
                            v215.word7 = bool(MEM[v5 + 96]);
                            v215.word8 = address(MEM[MEM[v5 + v203]]);
                            v215.word9 = address(MEM[MEM[v5 + v203] + 32]);
                            v215.word10 = uint24(MEM[MEM[v5 + v203] + 64]);
                            v215.word11 = int24(MEM[MEM[v5 + v203] + 96]);
                            v215.word12 = address(MEM[128 + MEM[v5 + v203]]);
                            v215.word13 = bool(MEM[v5 + 96]);
                            v215.word0 = 416;
                            require(!((v215 + 448 > uint64.max) | (v215 + 448 < v215)), Panic(65)); // failed memory allocation (too much memory)
                            v212 = MEM[v203];
                            MEM[v212] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v212 + 4] = address(this);
                            MEM[v212 + 4 + 32] = bool(v210);
                            MEM[v212 + 4 + 64] = v208;
                            MEM[v212 + 4 + 96] = address(0x1000276a4);
                            MEM[v212 + 4 + 128] = 160;
                            MEM[v212 + 4 + 160] = v215.word0.length;
                            MCOPY(v212 + 4 + 160 + 32, v215.data, v215.word0.length);
                            MEM[32 + (v215.word0.length + (v212 + 4 + 160))] = 0;
                            v214 = v216 = 416 + (v212 + 4 + 160) + 32;
                        }
                        v217 = v207.call(MEM[v1ef0x15de4:v1ef0x15de4 + v164aV0x331cV0x15e930x1ef - v1ef0x15de4], MEM[v1ef0x15de4:v1ef0x15de4 + v1ef0x37a7]).value(v206).gas(msg.gas);
                        if (v217) {
                            v5 = v218 = 0x15e4b;
                            if (v217) {
                                if (64 > RETURNDATASIZE()) {
                                    require(!((v212 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v212 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v212)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v212 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v219 = v212 + RETURNDATASIZE();
                                } else {
                                    require(!((v212 + 64 > uint64.max) | (v212 + 64 < v212)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v212 + 64;
                                    v219 = v220 = v212 + 64;
                                }
                                require(v219 - v212 >= 64);
                            }
                        }
                    }
                    v144 = v221 = 0x3ff & v5 >> 50;
                    v5 = v222 = uint24(v5 >> 60);
                    v101 = 0x3ffffffffffff & v5;
                    v128 = MEM[64];
                    MEM[0] = MEM[0];
                    v223 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                    if (v223) {
                        v134 = v224 = 0;
                        if (v223) {
                            v132 = v225 = 17025;
                            v136 = v226 = 17341;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v128 + 32 > uint64.max) | (v128 + 32 < v128)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v128 + 32;
                                v141 = v227 = v128 + 32;
                            }
                        }
                    }
                    revert();
                }
            }
            require(!((v107 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v107 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v107)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v107 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v117 = v228 = v107 + RETURNDATASIZE();
            require(v117 - v107 >= 32);
            v113 = v229 = MEM[v107];
            // Unknown jump to Block ['0x3696B0x26fe', '0x36b3B0x26fe']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x366fB0x26fe. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        MEM[v20 + 64] = uint24(v16);
        MEM[v20 + 96] = int24(v36);
        MEM[v20 + 128] = address(v5);
        v99 = v230 = 0x2ab5();
    } else {
        exit;
    }
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
    require(uint8(rawData.word1) - 2);
    if (uint8(rawData.word1) - 3) {
        if (uint8(rawData.word1) - 4) {
            if (uint8(rawData.word1) - 5) {
                require(uint8(rawData.word1) - 6);
                require(uint8(rawData.word1) - 7);
                require(uint8(rawData.word1) - 8);
                require(uint8(rawData.word1) - 9);
                require(uint8(rawData.word1) - 10);
                require(uint8(rawData.word1) - 11);
                require(uint8(rawData.word1) - 12);
                require(uint8(rawData.word1) - 13);
                require(uint8(rawData.word1) - 14);
                require(uint8(rawData.word1) - 15);
                require(uint8(rawData.word1) - 16);
                require(uint8(rawData.word1) - 17);
                require(18 - uint8(rawData.word1));
                revert(Error(0x3f3f3f75));
            } else {
                v1 = v2 = 8226;
                v3, v4 = 0x3076(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
                require(v4 + v3 - v4 >= 608);
                v1 = v5 = msg.data[v4];
                require(v4 + v3 - (v4 + 32) >= 160);
                v1 = new struct(5);
                require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
                require(!(address(msg.data[v4 + 32]) - msg.data[v4 + 32]));
                v1.word0 = msg.data[v4 + 32];
                require(!(address(msg.data[v4 + 32 + 32]) - msg.data[v4 + 32 + 32]));
                v1.word1 = msg.data[v4 + 32 + 32];
                require(!(msg.data[v4 + 32 + 64] - uint24(msg.data[v4 + 32 + 64])));
                v1.word2 = msg.data[v4 + 32 + 64];
                require(!(msg.data[v4 + 32 + 96] - int24(msg.data[v4 + 32 + 96])));
                v1.word3 = msg.data[v4 + 32 + 96];
                require(!(address(msg.data[v4 + 32 + 128]) - msg.data[v4 + 32 + 128]));
                v1.word4 = msg.data[v4 + 32 + 128];
                v1 = v6 = msg.data[v4 + 192];
                require(!(bool(v6) - v6));
                require(v4 + v3 - (v4 + 224) >= 160);
                v1 = v7 = new struct(5);
                require(!((v7 + 160 > uint64.max) | (v7 + 160 < v7)), Panic(65)); // failed memory allocation (too much memory)
                require(!(address(msg.data[v4 + 224]) - msg.data[v4 + 224]));
                v7.word0 = msg.data[v4 + 224];
                require(!(address(msg.data[v4 + 224 + 32]) - msg.data[v4 + 224 + 32]));
                v7.word1 = msg.data[v4 + 224 + 32];
                require(!(msg.data[v4 + 224 + 64] - uint24(msg.data[v4 + 224 + 64])));
                v7.word2 = msg.data[v4 + 224 + 64];
                require(!(msg.data[v4 + 224 + 96] - int24(msg.data[v4 + 224 + 96])));
                v7.word3 = msg.data[v4 + 224 + 96];
                require(!(address(msg.data[v4 + 224 + 128]) - msg.data[v4 + 224 + 128]));
                v7.word4 = msg.data[v4 + 224 + 128];
                v1 = v8 = msg.data[v4 + 384];
                require(!(bool(v8) - v8));
                require(v4 + v3 - (v4 + 416) >= 160);
                v1 = v9 = new struct(5);
                require(!((v9 + 160 > uint64.max) | (v9 + 160 < v9)), Panic(65)); // failed memory allocation (too much memory)
                require(!(address(msg.data[v4 + 416]) - msg.data[v4 + 416]));
                v9.word0 = msg.data[v4 + 416];
                require(!(address(msg.data[v4 + 416 + 32]) - msg.data[v4 + 416 + 32]));
                v9.word1 = msg.data[v4 + 416 + 32];
                require(!(msg.data[v4 + 416 + 64] - uint24(msg.data[v4 + 416 + 64])));
                v9.word2 = msg.data[v4 + 416 + 64];
                require(!(msg.data[v4 + 416 + 96] - int24(msg.data[v4 + 416 + 96])));
                v9.word3 = msg.data[v4 + 416 + 96];
                require(!(address(msg.data[v4 + 416 + 128]) - msg.data[v4 + 416 + 128]));
                v9.word4 = msg.data[v4 + 416 + 128];
                v1 = v10 = msg.data[v4 + 576];
                require(!(bool(v10) - v10));
                if (!v6) {
                    v1 = v11 = 32;
                    MEM[0] = MEM[0];
                    v12 = v13 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v1 = v14 = 32;
                    v12 = v15 = 0x1000276a4;
                }
                v16 = v17 = 0x2ad3();
                v17.word0 = bool(v6);
                v17.word1 = v5;
                v17.word2 = address(v12);
                v1 = v18 = MEM[64];
                MEM[v18] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                v19 = v20 = v18 + 4;
            }
        } else {
            v21, v22 = 0x3076(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
            require(v22 + v21 - v22 >= 480);
            v1 = v23 = msg.data[v22];
            require(v22 + v21 - (v22 + 32) >= 160);
            v1 = v24 = new struct(5);
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
            v1 = v25 = msg.data[v22 + 192];
            require(!(bool(v25) - v25));
            require(v22 + v21 - (v22 + 224) >= 160);
            v1 = v26 = new struct(5);
            require(!((v26 + 160 > uint64.max) | (v26 + 160 < v26)), Panic(65)); // failed memory allocation (too much memory)
            require(!(address(msg.data[v22 + 224]) - msg.data[v22 + 224]));
            v26.word0 = msg.data[v22 + 224];
            require(!(address(msg.data[v22 + 224 + 32]) - msg.data[v22 + 224 + 32]));
            v26.word1 = msg.data[v22 + 224 + 32];
            require(!(msg.data[v22 + 224 + 64] - uint24(msg.data[v22 + 224 + 64])));
            v26.word2 = msg.data[v22 + 224 + 64];
            require(!(msg.data[v22 + 224 + 96] - int24(msg.data[v22 + 224 + 96])));
            v26.word3 = msg.data[v22 + 224 + 96];
            require(!(address(msg.data[v22 + 224 + 128]) - msg.data[v22 + 224 + 128]));
            v26.word4 = msg.data[v22 + 224 + 128];
            v1 = v27 = msg.data[v22 + 384];
            require(!(bool(v27) - v27));
            v1 = v28 = msg.data[v22 + 416];
            require(!(address(v28) - v28));
            v1 = v29 = msg.data[v22 + 448];
            require(!(bool(v29) - v29));
            if (!v25) {
                v30 = v31 = 32;
                MEM[0] = MEM[0];
                v32 = 0x2ad3();
                v32.word0 = bool(v25);
                v32.word1 = v23;
                v32.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                v1 = v33 = MEM[64];
                MEM[v33] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                MEM[v33 + 4] = address(v24.word0);
                MEM[v33 + 4 + 32] = address(v24.word1);
                MEM[v33 + 4 + 64] = uint24(v24.word2);
                MEM[v33 + 4 + 96] = int24(v24.word3);
                MEM[v33 + 4 + 128] = address(v24.word4);
                MEM[v33 + 4 + 160] = bool(v32.word0);
                MEM[v33 + 4 + 192] = v32.word1;
                MEM[v33 + 4 + 224] = address(v32.word2);
                MEM[v33 + 4 + (uint8.max + 1)] = 288;
                MEM[v33 + 4 + 288] = 0;
                v34 = v33 + 4 + 320;
                // Unknown jump to Block 0x1b05. Refer to 3-address code (TAC);
            } else {
                v30 = v35 = 32;
                v36 = 0x2ad3();
                v36.word0 = bool(v25);
                v36.word1 = v23;
                v36.word2 = address(0x1000276a4);
                v1 = v37 = MEM[64];
                MEM[v37] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                MEM[v37 + 4] = address(v24.word0);
                MEM[v37 + 4 + 32] = address(v24.word1);
                MEM[v37 + 4 + 64] = uint24(v24.word2);
                MEM[v37 + 4 + 96] = int24(v24.word3);
                MEM[v37 + 4 + 128] = address(v24.word4);
                MEM[v37 + 4 + 160] = bool(v36.word0);
                MEM[v37 + 4 + 192] = v36.word1;
                MEM[v37 + 4 + 224] = address(v36.word2);
                MEM[v37 + 4 + (uint8.max + 1)] = 288;
                MEM[v37 + 4 + 288] = 0;
                v34 = v38 = v37 + 4 + 320;
            }
            v39 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v1ac30x31abV0x1f8f - v30b2V0x3200V0x1fc1], MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v1b05_0x3]).gas(msg.gas);
            if (v39) {
                v1 = v40 = 6976;
                v1 = v41 = 32;
                v1 = v42 = 7038;
                v43 = v44 = 0;
                if (v39) {
                    v45 = v46 = 8073;
                    if (v41 <= RETURNDATASIZE()) {
                        require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v1 + 32;
                        v47 = v48 = v1 + v41;
                    }
                }
            }
        }
    } else {
        v1 = v49 = 5976;
        v50, v51 = 0x3076(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
        require(v51 + v50 - v51 >= 448);
        v1 = v52 = msg.data[v51];
        require(!(address(v52) - v52));
        v1 = v53 = msg.data[v51 + 32];
        require(v51 + v50 - (v51 + 64) >= 160);
        v1 = v54 = new struct(5);
        require(!((v54 + 160 > uint64.max) | (v54 + 160 < v54)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v51 + 64]) - msg.data[v51 + 64]));
        v54.word0 = msg.data[v51 + 64];
        require(!(address(msg.data[v51 + 64 + 32]) - msg.data[v51 + 64 + 32]));
        v54.word1 = msg.data[v51 + 64 + 32];
        require(!(msg.data[v51 + 64 + 64] - uint24(msg.data[v51 + 64 + 64])));
        v54.word2 = msg.data[v51 + 64 + 64];
        require(!(msg.data[v51 + 64 + 96] - int24(msg.data[v51 + 64 + 96])));
        v54.word3 = msg.data[v51 + 64 + 96];
        require(!(address(msg.data[v51 + 64 + 128]) - msg.data[v51 + 64 + 128]));
        v54.word4 = msg.data[v51 + 64 + 128];
        v1 = v55 = msg.data[v51 + 224];
        require(!(bool(v55) - v55));
        require(v51 + v50 - (v51 + (uint8.max + 1)) >= 160);
        v1 = v56 = new struct(5);
        require(!((v56 + 160 > uint64.max) | (v56 + 160 < v56)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v51 + (uint8.max + 1)]) - msg.data[v51 + (uint8.max + 1)]));
        v56.word0 = msg.data[v51 + (uint8.max + 1)];
        require(!(address(msg.data[v51 + (uint8.max + 1) + 32]) - msg.data[v51 + (uint8.max + 1) + 32]));
        v56.word1 = msg.data[v51 + (uint8.max + 1) + 32];
        require(!(msg.data[v51 + (uint8.max + 1) + 64] - uint24(msg.data[v51 + (uint8.max + 1) + 64])));
        v56.word2 = msg.data[v51 + (uint8.max + 1) + 64];
        require(!(msg.data[v51 + (uint8.max + 1) + 96] - int24(msg.data[v51 + (uint8.max + 1) + 96])));
        v56.word3 = msg.data[v51 + (uint8.max + 1) + 96];
        require(!(address(msg.data[v51 + (uint8.max + 1) + 128]) - msg.data[v51 + (uint8.max + 1) + 128]));
        v56.word4 = msg.data[v51 + (uint8.max + 1) + 128];
        v1 = v57 = msg.data[v51 + 416];
        require(!(bool(v57) - v57));
        if (!v55) {
            v1 = v58 = 32;
            MEM[0] = MEM[0];
            v59 = v60 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            v1 = v61 = 32;
            v59 = v62 = 0x1000276a4;
        }
        v16 = v63 = 0x2ad3();
        v63.word0 = bool(v55);
        v63.word1 = v53;
        v63.word2 = address(v59);
        v1 = v64 = MEM[64];
        MEM[v64] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
        v19 = v65 = v64 + 4;
    }
    MEM[v19] = address(MEM[v1]);
    MEM[v19 + 32] = address(MEM[v1 + 32]);
    MEM[v19 + 64] = uint24(MEM[v1 + 64]);
    MEM[v19 + 96] = int24(MEM[v1 + 96]);
    MEM[v19 + 128] = address(MEM[128 + v1]);
    MEM[v19 + 160] = bool(MEM[v16]);
    MEM[v19 + 192] = MEM[v16 + 32];
    MEM[v19 + 224] = address(MEM[64 + v16]);
    MEM[v19 + (uint8.max + 1)] = 288;
    MEM[v19 + 288] = 0;
    // Unknown jump to Block ['0x1758', '0x17e4', '0x1b7e', '0x2022', '0x20af', '0x2101']. Refer to 3-address code (TAC);
    v66 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v31750x1f9_0x1 + 320 - v30b2V0x3200V0x1fc1], MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v30b2V0x3200V0x1fc1]).gas(msg.gas);
    if (v66) {
        v1 = v67 = 6035;
        v1 = v68 = 32;
        v1 = v69 = 6116;
        v43 = v70 = 0;
        if (v66) {
            v45 = v71 = 6768;
            if (v68 <= RETURNDATASIZE()) {
                require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + 32;
                v47 = v72 = v1 + v68;
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    if (v1) {
        v73 = v74 = v43 >> 128;
    }
    if (int128(v73) != int128.min) {
        v75 = 0 - int128(v73);
        // Unknown jump to Block ['0x1793', '0x1899', '0x1b40', '0x205e', '0x20ea']. Refer to 3-address code (TAC);
        if (!v1) {
            MEM[0] = MEM[0];
            v16 = v76 = 0x2ad3();
            v76.word0 = bool(v1);
            MEM[v77 + v76] = int128(v75);
            v76.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
            v1 = v78 = MEM[64];
            MEM[v78] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v19 = v79 = v78 + 4;
        } else {
            v16 = v80 = 0x2ad3();
            v80.word0 = bool(v1);
            MEM[v81 + v80] = int128(v75);
            v80.word2 = address(0x1000276a4);
            v1 = v82 = MEM[64];
            MEM[v82] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v19 = v83 = v82 + 4;
        }
        if (address(MEM[v1])) {
            0x3f52(int128(v75));
            v1 = v84 = MEM[64];
            v85 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            if (v85) {
                if (v85) {
                    // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
                }
            }
        } else {
            MEM[0] = MEM[0];
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            MEM[0] = MEM[0];
            v86 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(int128(v75)).gas(msg.gas);
            if (v86) {
                if (v86) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v1 = v87 = MEM[64];
                v88 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(int128(v75)).gas(msg.gas);
                if (v88) {
                    if (v88) {
                        v45 = v89 = 6510;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v87 + 32 > uint64.max) | (v87 + 32 < v87)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v87 + 32;
                            v47 = v90 = v87 + 32;
                        }
                    }
                }
            }
        }
        if (!v1) {
            MEM[0] = MEM[0];
            v16 = v91 = 0x2ad3();
            v91.word0 = bool(v1);
            MEM[v92 + v91] = int128(v75);
            v91.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
            v1 = v93 = MEM[64];
            MEM[v93] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v19 = v94 = v93 + 4;
        } else {
            v16 = v95 = 0x2ad3();
            v95.word0 = bool(v1);
            MEM[v96 + v95] = int128(v75);
            v95.word2 = address(0x1000276a4);
            v1 = v97 = MEM[64];
            MEM[v97] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v19 = v98 = v97 + 4;
        }
        if (!v1) {
            MEM[0] = MEM[0];
            v16 = v99 = 0x2ad3();
            v99.word0 = bool(v100);
            MEM[v101 + v99] = int128(v75);
            v99.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
            v1 = v102 = MEM[64];
            MEM[v102] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v19 = v103 = v102 + 4;
        } else {
            v16 = v104 = 0x2ad3();
            v104.word0 = bool(v105);
            MEM[v106 + v104] = int128(v75);
            v104.word2 = address(0x1000276a4);
            v1 = v107 = MEM[64];
            MEM[v107] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v19 = v108 = v107 + 4;
        }
        if (!v1) {
            MEM[0] = MEM[0];
            v16 = 0x2ad3();
            v16.word0 = bool(v1);
            MEM[v109 + v16] = int128(v75);
            v16.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
            v1 = v110 = MEM[64];
            MEM[v110] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v19 = v111 = v110 + 4;
        } else {
            v16 = v112 = 0x2ad3();
            v112.word0 = bool(v1);
            MEM[v1 + v112] = int128(v75);
            v112.word2 = address(0x1000276a4);
            v1 = v113 = MEM[64];
            MEM[v113] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v19 = v114 = v113 + 4;
        }
    }
    revert(Panic(17));
    v45 = v115 = 6631;
    if (32 <= RETURNDATASIZE()) {
        require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v1 + 32;
        v47 = v116 = v1 + 32;
    }
    v73 = v117 = int128(v43);
    // Unknown jump to Block 0x31ae. Refer to 3-address code (TAC);
    require(!((v1 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v1 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v47 = v1 + RETURNDATASIZE();
    require(v47 - v1 >= 32);
    v43 = MEM[v1];
    // Unknown jump to Block ['0x14819', '0x148a0', '0x196e', '0x19e7', '0x1a34', '0x1a70', '0x1f56', '0x1f89', '0x23bf']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1807. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1784. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1ba1. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1b31. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2124. Refer to 3-address code (TAC);
    v118 = new uint256[](MEM[96]);
    MCOPY(v118.data, 128, MEM[96]);
    MEM[32 + (MEM[96] + v118)] = 0;
    return v118;
    // Unknown jump to Block 0x1945. Refer to 3-address code (TAC);
    v119 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v31750x1f9_0x1 + 320 - v30b2V0x3200V0x1fc1], MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v30b2V0x3200V0x1fc1]).gas(msg.gas);
    if (v119) {
        v43 = v120 = 0;
        if (v119) {
            v45 = v121 = 6708;
            if (32 <= RETURNDATASIZE()) {
                require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + 32;
                v47 = v122 = v1 + 32;
            }
        }
    }
    if (!v1) {
        v73 = v123 = int128(v43);
    } else {
        v73 = v124 = v43 >> 128;
    }
    if (!v1) {
        v125 = v126 = address(MEM[v1]);
    } else {
        v125 = v127 = address(MEM[32 + v1]);
    }
    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
    v128 = address(v1);
    v129 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v125), v128, v1).gas(msg.gas);
    if (v129) {
        v1 = v130 = 6303;
        v1 = v131 = 6297;
        if (v129) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
    }
    v132 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v31750x1f9_0x1 + 320 - v30b2V0x3200V0x1fc1], MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v30b2V0x3200V0x1fc1]).gas(msg.gas);
    if (v132) {
        v43 = v133 = 0;
        if (v132) {
            v45 = v134 = 8022;
            if (32 <= RETURNDATASIZE()) {
                require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + 32;
                v47 = v135 = v1 + 32;
            }
        }
    }
    if (!v1) {
        v136 = v137 = int128(v43);
    } else {
        v136 = v138 = v43 >> 128;
    }
    if (!v1) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v139 = address(MEM[v1]);
        v140 = 0x4444c5dc75cb358380d2e3de08a90.take(v139, this, v1).gas(msg.gas);
        if (v140) {
            if (v140) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            if (!address(MEM[v1])) {
                MEM[0] = MEM[0];
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                MEM[0] = MEM[0];
                v141 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v1).gas(msg.gas);
                if (v141) {
                    if (v141) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                }
            }
        }
    } else {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v142 = address(MEM[32 + v1]);
        v143 = 0x4444c5dc75cb358380d2e3de08a90.take(v142, this, v1).gas(msg.gas);
        if (v143) {
            if (v143) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
        }
    }
    if (!v1) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v144 = address(MEM[32 + v1]);
        v145 = 0x4444c5dc75cb358380d2e3de08a90.sync(v144).gas(msg.gas);
        if (v145) {
            v146 = v147 = 7429;
            v148 = v149 = 64;
            if (v145) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
        }
    } else {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v150 = address(MEM[v1]);
        v151 = 0x4444c5dc75cb358380d2e3de08a90.sync(v150).gas(msg.gas);
        if (v151) {
            v146 = v152 = 7429;
            v148 = v153 = 64;
            if (v151) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
        }
    }
    if (!v1) {
        v154 = v155 = 0;
        MEM[0] = MEM[0];
        v156 = v157 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v154 = v158 = 0;
        v156 = v159 = 0x1000276a4;
    }
    v160 = MEM[v148];
    v161 = new uint256[](0);
    v162, /* uint256 */ v163, /* uint256 */ v164 = address(v1).swap(0x4444c5dc75cb358380d2e3de08a90, bool(v1), int128(v136), address(v156), v161).value(v154).gas(msg.gas);
    if (v162) {
        if (v162) {
            if (64 > RETURNDATASIZE()) {
                require(!((v160 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v160 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v160)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v160 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v165 = v160 + RETURNDATASIZE();
            } else {
                require(!((v160 + 64 > uint64.max) | (v160 + 64 < v160)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v160 + 64;
                v165 = v166 = v160 + 64;
            }
            require(v165 - v160 >= 64);
        }
        v1 = v167 = MEM[64];
        v168 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        if (v168) {
            if (!v168) {
            }
        }
    }
    v169 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v31750x1f9_0x1 + 320 - v30b2V0x3200V0x1fc1], MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v30b2V0x3200V0x1fc1]).gas(msg.gas);
    if (v169) {
        v1 = v170 = 8367;
        v1 = v171 = 32;
        v1 = v172 = 8286;
        v43 = v173 = 0;
        if (v169) {
            v45 = v174 = 0x148a0;
            if (v171 <= RETURNDATASIZE()) {
                require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + 32;
                v47 = v175 = v1 + v171;
            }
        }
    }
    if (v1) {
        v73 = v176 = v43 >> 128;
    }
    v177 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v31750x1f9_0x1 + 320 - v30b2V0x3200V0x1fc1], MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v30b2V0x3200V0x1fc1]).gas(msg.gas);
    if (v177) {
        v1 = v178 = 8449;
        v1 = v179 = 32;
        v1 = v180 = 8426;
        v43 = v181 = 0;
        if (v177) {
            v45 = v182 = 0x14819;
            if (v179 <= RETURNDATASIZE()) {
                v183 = v1 + 32;
                require(!((v183 > uint64.max) | (v183 < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v183;
                v47 = v184 = v1 + v179;
            }
        } else if (v1) {
            v73 = v185 = 0;
        }
    }
    v186 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v31750x1f9_0x1 + 320 - v30b2V0x3200V0x1fc1], MEM[v30b2V0x3200V0x1fc1:v30b2V0x3200V0x1fc1 + v30b2V0x3200V0x1fc1]).gas(msg.gas);
    if (v186) {
        v43 = v187 = 0;
        if (v186) {
            v45 = v188 = 9151;
            if (32 <= RETURNDATASIZE()) {
                require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + 32;
                v47 = v189 = v1 + 32;
            }
        }
    }
    if (!v1) {
        v190 = v191 = int128(v43);
    } else {
        v190 = v192 = v43 >> 128;
    }
    if (address(MEM[v1])) {
        v193 = _SafeAdd(v1, int128(v190));
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v194 = v195 = MEM[64];
        MEM[0] = MEM[0];
        v196 = 0x4444c5dc75cb358380d2e3de08a90.take(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, this, v193).gas(msg.gas);
        if (v196) {
            if (!v196) {
            }
        }
    } else if (address(MEM[v1])) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v197 = 0x4444c5dc75cb358380d2e3de08a90.take(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, this, v1).gas(msg.gas);
        if (v197) {
            if (v197) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            MEM[0] = MEM[0];
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            MEM[0] = MEM[0];
            v198 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v1).gas(msg.gas);
            if (v198) {
                if (v198) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                if (int128(v190) != int256.min) {
                    v1 = v199 = MEM[64];
                    v200 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(0 - int128(v190)).gas(msg.gas);
                    if (v200) {
                        if (!v200) {
                        }
                    }
                }
            }
        }
    } else {
        v201 = _SafeAdd(v1, int128(v190));
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v194 = v202 = MEM[64];
        v203 = address(MEM[v1]);
        v204 = 0x4444c5dc75cb358380d2e3de08a90.take(v203, this, v201).gas(msg.gas);
        if (v204) {
            if (!v204) {
            }
        }
    }
    require(!((v194 > uint64.max) | (v194 < v194)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v194;
    require(v194 - v194 >= 0);
    if (v1) {
        v73 = v205 = v43 >> 128;
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
    revert();
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
    v0 = 0x3385(varg14);
    if (!v0) {
        if (!varg0) {
            if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v1 = v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v1 = v3 = 0;
        }
        if (!varg0) {
            if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v4, v1 = v5 = 0x2f95(varg1, 0x15aba);
                v6 = v7 = uint24(v4);
                v8 = v9 = 0x2ac4();
            } else {
                MEM[0] = MEM[0];
                v10 = 0x2b16(0xfffff & varg14 >> 88);
                v1 = v11 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                v6 = v12 = uint24(v10);
                v8 = v13 = 0x2ac4();
            }
        } else {
            v14 = 0x2b16(0xfffff & varg14 >> 88);
            v6 = v15 = uint24(v14);
            v8 = v16 = 0x2ac4();
        }
        MEM[v8] = address(v1);
        MEM[v8 + 32] = address(v1);
        MEM[v8 + 64] = uint24(v6);
        MEM[v8 + 96] = varg2;
        MEM[v8 + 128] = address(varg3);
        v17 = v18 = 0x2ab5();
        v18.word0 = 0;
        v18.word1 = 0;
        v18.word2 = v8;
        v19 = v20 = v18 + 96;
        v18.word3 = bool(varg4);
        v19 = v21 = 11482;
        v22 = new struct(3);
        v22.word1 = keccak256(MEM[v2cae_0x0V0x1524.word2:v2cae_0x0V0x1524.word2 + 160]);
        v22.word2 = 6;
        v22.word0 = 64;
        require(!((v22 + 96 > uint64.max) | (v22 + 96 < v22)), Panic(65)); // failed memory allocation (too much memory)
        v23 = v22.word0.length;
        v24 = v25 = keccak256(keccak256(MEM[v2cae_0x0V0x1524.word2:v2cae_0x0V0x1524.word2 + 160]), 6);
        v26 = v27 = MEM[64];
        v28 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v25).gas(msg.gas);
        if (v28) {
            v17 = v29 = 32;
            v30 = v31 = 13856;
            v32 = v33 = 0;
            if (v28) {
                v34 = v35 = 14003;
                if (v29 <= RETURNDATASIZE()) {
                    require(!((v27 + 32 > uint64.max) | (v27 + 32 < v27)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v27 + 32;
                    v36 = v37 = v27 + v29;
                }
            }
            MEM[v17] = address(v32);
            require(v24 <= v24 + 3, Panic(17)); // arithmetic overflow or underflow
            v26 = v38 = MEM[64];
            v39 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v24 + 3).gas(msg.gas);
            if (v39) {
                v24 = v40 = uint128.max;
                v30 = v41 = 32;
                v17 = v42 = 0x15cf9;
                v32 = v43 = 0;
                if (v39) {
                    v34 = 13974;
                    if (v41 <= RETURNDATASIZE()) {
                        require(!((v38 + 32 > uint64.max) | (v38 + 32 < v38)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v38 + 32;
                        v36 = v44 = v38 + v41;
                    }
                }
            }
            MEM[v17 + v30] = uint128(v32 & v24);
            v1 = v45 = 0xfffff & varg9 >> 108;
            v46 = v47 = address(v21);
            if (v47 > address(v20)) {
            }
            if (v47 <= address(v20)) {
                v48 = 0x2b16(v45);
                v49 = v50 = uint24(v48);
                v51 = v52 = 0x2ac4();
            } else {
                v53 = 0x2b16(v45);
                v49 = v54 = uint24(v53);
                v51 = v55 = 0x2ac4();
            }
            MEM[v51] = address(v19);
            MEM[v51 + 32] = address(v19);
            MEM[v51 + 64] = uint24(v49);
            MEM[v51 + 96] = int24(v18);
            MEM[v51 + 128] = address(0xfffff & varg14 >> 88);
            v56 = v57 = 0x2ab5();
            v57.word0 = 0;
            v57.word1 = 0;
            v57.word2 = v51;
            v1 = v58 = v57 + 96;
            v57.word3 = bool(varg1);
            v59 = new struct(3);
            v59.word1 = keccak256(MEM[v2d66_0x0V0x1524.word2:v2d66_0x0V0x1524.word2 + 160]);
            v59.word2 = 6;
            v59.word0 = 64;
            require(!((v59 + 96 > uint64.max) | (v59 + 96 < v59)), Panic(65)); // failed memory allocation (too much memory)
            v60 = v59.word0.length;
            v61 = v62 = keccak256(keccak256(MEM[v2d66_0x0V0x1524.word2:v2d66_0x0V0x1524.word2 + 160]), 6);
            v63 = v64 = MEM[64];
            v65 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v62).gas(msg.gas);
            if (v65) {
                v56 = v66 = 32;
                v67 = v68 = 13856;
                v69 = v70 = 0;
                if (v65) {
                    v71 = v72 = 14003;
                    if (v66 <= RETURNDATASIZE()) {
                        require(!((v64 + 32 > uint64.max) | (v64 + 32 < v64)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v64 + 32;
                        v73 = v74 = v64 + v66;
                    }
                }
                MEM[v56] = address(v69);
                require(v61 <= v61 + 3, Panic(17)); // arithmetic overflow or underflow
                v63 = v75 = MEM[64];
                v76 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v61 + 3).gas(msg.gas);
                if (v76) {
                    v61 = v77 = uint128.max;
                    v67 = v78 = 32;
                    v56 = v79 = 0x15cf9;
                    v69 = v80 = 0;
                    if (v76) {
                        v71 = 13974;
                        if (v78 <= RETURNDATASIZE()) {
                            require(!((v75 + 32 > uint64.max) | (v75 + 32 < v75)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v75 + 32;
                            v73 = v81 = v75 + v78;
                        }
                    }
                }
                MEM[v56 + v67] = uint128(v69 & v61);
                if (!v57) {
                    if (11665 >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                        MEM[0] = MEM[0];
                        v46 = v82 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    }
                } else {
                    v46 = v83 = 0;
                }
                if (!v57) {
                    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 <= 11665) {
                        v84, v46 = v85 = 0x2f95(v47, 0x15a33);
                        v86 = v87 = uint24(v84);
                        v88 = v89 = 0x2ac4();
                    } else {
                        MEM[0] = MEM[0];
                        v90, v46 = 0x2f95(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x15a06);
                        v86 = v91 = uint24(v90);
                        v88 = v92 = 0x2ac4();
                    }
                } else {
                    v93 = 0x2b16(v21);
                    v86 = v94 = uint24(v93);
                    v88 = v95 = 0x2ac4();
                }
                MEM[v88] = address(v46);
                MEM[v88 + 32] = address(v46);
                MEM[v88 + 64] = uint24(v86);
                MEM[v88 + 96] = int24(varg5);
                MEM[v88 + 128] = address(varg13);
                v1 = v96 = 0x2ab5();
                v96.word0 = 0;
                v96.word1 = 0;
                v96.word2 = v88;
                v1 = v97 = v96 + 96;
                v96.word3 = bool(varg13);
                v98 = v99 = 11808;
                v100 = new struct(3);
                v100.word1 = keccak256(MEM[v2dfa_0x0V0x1524.word2:v2dfa_0x0V0x1524.word2 + 160]);
                v100.word2 = 6;
                v100.word0 = 64;
                require(!((v100 + 96 > uint64.max) | (v100 + 96 < v100)), Panic(65)); // failed memory allocation (too much memory)
                v101 = v100.word0.length;
                v102 = v103 = keccak256(keccak256(MEM[v2dfa_0x0V0x1524.word2:v2dfa_0x0V0x1524.word2 + 160]), 6);
                v104 = v105 = MEM[64];
                v106 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v103).gas(msg.gas);
                if (v106) {
                    v1 = v107 = 32;
                    v108 = v109 = 13856;
                    v110 = v111 = 0;
                    if (v106) {
                        v112 = v113 = 14003;
                        if (v107 <= RETURNDATASIZE()) {
                            require(!((v105 + 32 > uint64.max) | (v105 + 32 < v105)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v105 + 32;
                            v114 = v115 = v105 + v107;
                        }
                    }
                    MEM[v1] = address(v110);
                    require(v102 <= v102 + 3, Panic(17)); // arithmetic overflow or underflow
                    v104 = v116 = MEM[64];
                    v117 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v102 + 3).gas(msg.gas);
                    if (v117) {
                        v102 = v118 = uint128.max;
                        v108 = v119 = 32;
                        v1 = v120 = 0x15cf9;
                        v110 = v121 = 0;
                        if (v117) {
                            v112 = 13974;
                            if (v119 <= RETURNDATASIZE()) {
                                require(!((v116 + 32 > uint64.max) | (v116 + 32 < v116)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v116 + 32;
                                v114 = v122 = v116 + v119;
                            }
                        }
                    }
                    MEM[v1 + v108] = uint128(v110 & v102);
                    v123 = v124 = MEM[64];
                    v125 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                    if (v125) {
                        v1 = v126 = 11928;
                        v127 = v128 = 11881;
                        v129 = v130 = 0;
                        if (v125) {
                            v131 = 2245;
                            v132 = 32;
                            if (32 > RETURNDATASIZE()) {
                                // Unknown jump to Block 0x8cb0x2c07B0x1524. Refer to 3-address code (TAC);
                            }
                        } else {
                            v133 = v134 = this.balance;
                        }
                        require(!((v123 + (v132 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v123 + (v132 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v123)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v123 + (v132 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v135 = v136 = v123 + v132;
                        require(v135 - v123 >= 32);
                        v129 = v137 = MEM[v123];
                        // Unknown jump to Block ['0x43bd0x2c07B0x1524', '0x8c50x2c07B0x1524']. Refer to 3-address code (TAC);
                        v133 = this.balance;
                        v138 = _SafeAdd(v129, this.balance);
                        v139 = _SafeSub(v138, v1);
                        if (!v140) {
                            v141 = _SafeSub(v1, msg.gas);
                            v142 = 0x2b60(v141);
                            v143 = _SafeMul(v98, v142);
                            require(v143 < v139, Error(52));
                            v144 = 0x2b60(msg.gas);
                            require(v144 >= msg.gas, Error(13665));
                        } else {
                            v145 = _SafeSub(v1, msg.gas);
                            v146 = 0x2b6f(v145);
                            v147 = _SafeMul(v98, v146);
                            require(v147 < v139, Error(52));
                            v148 = _SafeSub(v139, v147);
                            require(v140 <= 1000);
                            v149 = _SafeMul(v148, v140);
                            v150 = _SafeSub(v148, v149 / 1000);
                            if (this.balance <= v149 / 1000) {
                                MEM[0] = MEM[0];
                                v151 = 0x2b28(v129);
                                0x4500(v151, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                            }
                            if (v149 / 1000) {
                                v152 = block.coinbase.call().value(v149 / 1000).gas(10000);
                            }
                            v153 = 0x2b6f(msg.gas);
                            require(v153 >= msg.gas, Error(13666));
                            // Unknown jump to Block 0x15f380x2c07B0x1524. Refer to 3-address code (TAC);
                        }
                        // Unknown jump to Block ['0x2ed9B0x1524', '0x2f4fB0x1524']. Refer to 3-address code (TAC);
                        // Unknown jump to Block 0x2ed9B0x1524. Refer to 3-address code (TAC);
                        v132 = v154 = RETURNDATASIZE();
                        // Unknown jump to Block 0x8b30x2c07B0x1524. Refer to 3-address code (TAC);
                        v1 = v155 = v129 + v133;
                        require(v129 <= v155, Panic(17)); // arithmetic overflow or underflow
                        v1 = v156 = 14082;
                        v1 = v157 = 14087;
                        if (0 == v140) {
                            v158 = v159 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                        } else {
                            v158 = v160 = address(MEM[v1]);
                        }
                        if (!v1) {
                            v1 = v161 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                        } else {
                            v1 = v162 = address(MEM[v1]);
                        }
                        if (!v98) {
                            v1 = v163 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                        } else {
                            v1 = v164 = address(MEM[v1]);
                        }
                        v1 = v165 = uint96.max + 1;
                        while (1) {
                            v166 = v158 * v1 % uint256.max - v158 * v1 - (v158 * v1 % uint256.max < v158 * v1);
                            if (uint96.max + 1 <= v166) {
                                break;
                            } else {
                                if (v158 * v1 % uint256.max - v158 * v1 == v158 * v1 % uint256.max < v158 * v1) {
                                    v158 = v158 * v1 >> 96;
                                    // Unknown jump to Block ['0x37020x2c07B0x1524', '0x37070x2c07B0x1524']. Refer to 3-address code (TAC);
                                } else {
                                    v167 = v158 * v1 % (uint96.max + 1);
                                    v158 = v158 * v1 - v167 >> 96 | v166 - (v167 > v158 * v1) << 160;
                                    // Unknown jump to Block ['0x37020x2c07B0x1524', '0x37070x2c07B0x1524']. Refer to 3-address code (TAC);
                                }
                                continue;
                            }
                        }
                        if (v158 <= v1) {
                            v1 = v168 = 12111;
                            v169 = v170 = 2033;
                            v171 = v172 = 0x15863;
                            v173 = v174 = 12086;
                            v175 = v176 = 0x15916;
                            MEM[v1] = bool(!MEM[v1]);
                            if (bool(MEM[v1])) {
                                v177 = v178 = 0x1353c;
                                v179 = address(MEM[v1]) >> 48;
                            } else {
                                v177 = v180 = 0x1327a;
                                v181 = v182 = 1998;
                                v183 = v184 = _SafeMul(uint48.max + 1, uint48.max + 1);
                                v185 = address(MEM[v1]) >> 48;
                                // Unknown jump to Block 0x2b8b0x2c07B0x1524. Refer to 3-address code (TAC);
                            }
                        } else {
                            v1 = v186 = 11993;
                            v169 = v187 = 1666;
                            v171 = v188 = 0x1572d;
                            v173 = v189 = 11963;
                            v175 = v190 = 0x15773;
                            if (bool(MEM[v1])) {
                                v177 = v191 = 0x131a8;
                                v179 = v192 = address(MEM[v1]) >> 48;
                            } else {
                                v177 = v193 = 0x12f20;
                                v181 = v194 = 1647;
                                v183 = v195 = _SafeMul(uint48.max + 1, uint48.max + 1);
                                v185 = v196 = address(MEM[v1]) >> 48;
                            }
                        }
                        require(v185, Panic(18)); // division by zero
                        v179 = v197 = v183 / v185;
                        // Unknown jump to Block ['0x66f0x2c07B0x1524', '0x7ce0x2c07B0x1524']. Refer to 3-address code (TAC);
                        MEM[v1] = address(v179);
                        // Unknown jump to Block ['0x1327a0x2c07B0x1524', '0x1353c0x2c07B0x1524']. Refer to 3-address code (TAC);
                        v198 = !MEM[v1];
                        MEM[v1] = bool(v198);
                        v199 = MEM[v1];
                        v200 = v201 = bool(v199);
                        if (bool(v200)) {
                            MEM[v1] = address(address(MEM[v1]) >> 48);
                            v202 = !MEM[v1];
                            MEM[v1] = bool(v202);
                            v203 = bool(MEM[v1]);
                            // Unknown jump to Block 0x15916B0x1524. Refer to 3-address code (TAC);
                        } else {
                            v204 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v205 = _SafeDiv(v204, address(MEM[v1]) >> 48);
                            MEM[v1] = address(v205);
                            v206 = !MEM[v1];
                            MEM[v1] = bool(v206);
                            v203 = v207 = bool(MEM[v1]);
                        }
                        if (bool(v203)) {
                            MEM[v1] = address(address(MEM[v1]) >> 48);
                        } else {
                            v208 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v209 = _SafeDiv(v208, address(MEM[v1]) >> 48);
                            MEM[v1] = address(v209);
                        }
                        v210 = !MEM[v1];
                        MEM[v1] = bool(v210);
                        v211 = MEM[v1];
                        v200 = bool(v211);
                        // Unknown jump to Block 0x15863B0x1524. Refer to 3-address code (TAC);
                        MEM[v1] = address(v179);
                        // Unknown jump to Block ['0x12f200x2c07B0x1524', '0x131a80x2c07B0x1524']. Refer to 3-address code (TAC);
                        v212 = MEM[v1];
                        v213 = v214 = bool(v212);
                        if (bool(v213)) {
                            MEM[v1] = address(address(MEM[v1]) >> 48);
                            v215 = bool(MEM[v1]);
                            // Unknown jump to Block 0x15773B0x1524. Refer to 3-address code (TAC);
                        } else {
                            v216 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v217 = _SafeDiv(v216, address(MEM[v1]) >> 48);
                            MEM[v1] = address(v217);
                            v215 = v218 = bool(MEM[v1]);
                        }
                        if (bool(v215)) {
                            MEM[v1] = address(address(MEM[v1]) >> 48);
                        } else {
                            v219 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v220 = _SafeDiv(v219, address(MEM[v1]) >> 48);
                            MEM[v1] = address(v220);
                        }
                        v1 = v221 = 15912;
                        v1 = v222 = 15038;
                        v1 = v223 = 0x16149;
                        v1 = v224 = 0;
                        v1 = v225 = 0x16182;
                        0x4465(address(MEM[v1]));
                        v1 = v226 = v1 + 32;
                        0x4465(uint128(MEM[v226]));
                        0x4465(v1);
                        0x4465(address(MEM[v1]));
                        v227 = v228 = v1 + 32;
                        0x4465(uint128(MEM[v228]));
                        0x4465(v1);
                        0x4465(address(MEM[v1]));
                        v1 = v229 = v1 + 32;
                        0x4465(uint128(MEM[v229]));
                        0x4465(v1);
                        0x4465(v1);
                        v230 = v231 = 15861;
                        v1 = v232 = address(MEM[v1]);
                        while (1) {
                            v227 = v233 = uint128(MEM[v1]);
                            // Unknown jump to Block ['0x38100x2c07B0x1524', '0x3df5B0x1524']. Refer to 3-address code (TAC);
                            v230 = v234 = 14352;
                            v1 = v235 = address(MEM[v1]);
                            v1 = v236 = uint128(MEM[v227]);
                            v1 = v237 = address(MEM[v1]);
                        }
                        v238 = 0x40a9(v1, v227, v1, v1, v1, v1, v233, v1, v1);
                        0x4465(v238);
                        v239 = new struct(21);
                        v239.word1 = 5;
                        v239.word2 = v238;
                        v239.word3 = address(MEM[MEM[v1 + 64]]);
                        v239.word4 = address(MEM[MEM[v1 + 64] + 32]);
                        v239.word5 = uint24(MEM[MEM[v1 + 64] + 64]);
                        v239.word6 = int24(MEM[MEM[v1 + 64] + 96]);
                        v239.word7 = address(MEM[128 + MEM[v1 + 64]]);
                        v239.word8 = bool(MEM[v1 + 96]);
                        v239.word9 = address(MEM[MEM[v1 + 64]]);
                        v239.word10 = address(MEM[MEM[v1 + 64] + 32]);
                        v239.word11 = uint24(MEM[MEM[v1 + 64] + 64]);
                        v239.word12 = int24(MEM[MEM[v1 + 64] + 96]);
                        v239.word13 = address(MEM[128 + MEM[v1 + 64]]);
                        v239.word14 = bool(MEM[v1 + 96]);
                        v239.word15 = address(MEM[MEM[v1 + 64]]);
                        v239.word16 = address(MEM[MEM[v1 + 64] + 32]);
                        v239.word17 = uint24(MEM[MEM[v1 + 64] + 64]);
                        v239.word18 = int24(MEM[MEM[v1 + 64] + 96]);
                        v239.word19 = address(MEM[128 + MEM[v1 + 64]]);
                        v239.word20 = bool(MEM[v1 + 96]);
                        v239.word0 = 640;
                        require(!((v239 + 672 > uint64.max) | (v239 + 672 < v239)), Panic(65)); // failed memory allocation (too much memory)
                        v240 = new bytes[](v239.word0.length);
                        MCOPY(v240.data, v239.data, v239.word0.length);
                        v240[v239.word0.length] = 0;
                        v241 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v240, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).value(v1).gas(msg.gas);
                        if (v241) {
                            v1 = v242 = 0x15f38;
                            if (v241) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                require(v243.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v244 = new bytes[](v243.length);
                                require(!((v244 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v243.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v244 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v243.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v244)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v243.length + 32 <= MEM[64] + RETURNDATASIZE());
                                MCOPY(v244.data, v243.data, v243.length);
                                v244[v243.length] = 0;
                            }
                            v140 = v245 = 0x3ff & v1 >> 50;
                            v1 = uint24(v1 >> 60);
                            v98 = v246 = 0x3ffffffffffff & v1;
                            v123 = v247 = MEM[64];
                            MEM[0] = MEM[0];
                            v248 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                            if (v248) {
                                v129 = v249 = 0;
                                if (v248) {
                                    v127 = 17025;
                                    v131 = v250 = 17341;
                                    if (32 <= RETURNDATASIZE()) {
                                        require(!((v247 + 32 > uint64.max) | (v247 + 32 < v247)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v247 + 32;
                                        v135 = v251 = v247 + 32;
                                    }
                                }
                            }
                        }
                        v252 = MEM[v1];
                        v213 = bool(v252);
                        // Unknown jump to Block 0x1572dB0x1524. Refer to 3-address code (TAC);
                        revert();
                    }
                    revert(MEM[64], RETURNDATASIZE());
                    require(!((v104 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v104 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v104)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v104 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v114 = v253 = v104 + RETURNDATASIZE();
                    require(v114 - v104 >= 32);
                    v110 = v254 = MEM[v104];
                    // Unknown jump to Block ['0x3696B0x2dfbB0x1524', '0x36b3B0x2dfbB0x1524']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x366fB0x2dfbB0x1524. Refer to 3-address code (TAC);
                }
                revert(MEM[64], RETURNDATASIZE());
                require(!((v63 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v63 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v63)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v63 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v73 = v255 = v63 + RETURNDATASIZE();
                require(v73 - v63 >= 32);
                v69 = v256 = MEM[v63];
                // Unknown jump to Block ['0x3696B0x2d88B0x1524', '0x36b3B0x2d88B0x1524']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x366fB0x2d88B0x1524. Refer to 3-address code (TAC);
            }
            revert(MEM[64], RETURNDATASIZE());
            require(!((v26 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v26 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v36 = v257 = v26 + RETURNDATASIZE();
            require(v36 - v26 >= 32);
            v32 = v258 = MEM[v26];
            // Unknown jump to Block ['0x3696B0x2cd1B0x1524', '0x36b3B0x2cd1B0x1524']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x366fB0x2cd1B0x1524. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    }
}

function 0x30f76ad9(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    _unlockCallback = 1;
    v0 = 0x3385(varg7);
    if (!v0) {
        v1 = v2 = 0xfffff & varg7 >> 88;
        v1 = v3 = 0x2ab5();
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = address(varg0);
        v3.word3 = bool(varg1);
        0x354f(v3);
        v4 = 0x356d(address(v3.word2));
        v3.word1 = uint128(v4);
        v1 = v5 = 0xfffff & varg7 >> 108;
        v1 = v6 = 0x2ab5();
        v6.word0 = 0;
        v6.word1 = 0;
        v6.word2 = address(varg2);
        v6.word3 = bool(varg3);
        0x354f(v6);
        v7 = 0x356d(address(v6.word2));
        v6.word1 = uint128(v7);
        v1 = v8 = 0x2ab5();
        v8.word0 = 0;
        v8.word1 = 0;
        v8.word2 = address(varg4);
        v8.word3 = bool(varg5);
        0x354f(v8);
        v9 = 0x356d(address(v8.word2));
        v8.word1 = uint128(v9);
        v10 = v11 = MEM[64];
        MEM[0] = MEM[0];
        v12 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v12) {
            v1 = v13 = 4712;
            v14 = v15 = 0x13a4d;
            v16 = v17 = 0;
            if (v12) {
                v18 = v19 = 2245;
                v20 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x8cb0x20d. Refer to 3-address code (TAC);
                }
            } else {
                v21 = v22 = this.balance;
            }
            require(!((v10 + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v10 + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v23 = v10 + v20;
            require(v23 - v10 >= 32);
            v16 = MEM[v10];
            // Unknown jump to Block ['0x43bd0x20d', '0x8c50x20d']. Refer to 3-address code (TAC);
            v21 = this.balance;
            v24 = _SafeAdd(v16, this.balance);
            v25 = _SafeSub(v24, v1);
            if (!v26) {
                v27 = _SafeSub(v1, msg.gas);
                v28 = 0x2b60(v27);
                v29 = _SafeMul(v30, v28);
                require(v29 < v25, Error(52));
                v31 = 0x2b60(msg.gas);
                require(v31 >= msg.gas, Error(13665));
            } else {
                v32 = _SafeSub(v1, msg.gas);
                v33 = 0x2b6f(v32);
                v34 = _SafeMul(v30, v33);
                require(v34 < v25, Error(52));
                v35 = _SafeSub(v25, v34);
                require(v26 <= 1000);
                v36 = _SafeMul(v35, v26);
                v37 = _SafeSub(v35, v36 / 1000);
                if (this.balance <= v36 / 1000) {
                    MEM[0] = MEM[0];
                    v38 = 0x2b28(v16);
                    0x4500(v38, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v36 / 1000) {
                    v39 = block.coinbase.call().value(v36 / 1000).gas(10000);
                }
                v40 = 0x2b6f(msg.gas);
                require(v40 >= msg.gas, Error(13666));
                // Unknown jump to Block 0x15e4b0x20d. Refer to 3-address code (TAC);
            }
            // Unknown jump to Block ['0x13a9b', '0x13e09']. Refer to 3-address code (TAC);
            exit;
            exit;
            v20 = v41 = RETURNDATASIZE();
            // Unknown jump to Block 0x8b30x20d. Refer to 3-address code (TAC);
            v1 = v42 = v16 + v21;
            require(v16 <= v42, Panic(17)); // arithmetic overflow or underflow
            v1 = v43 = 14082;
            v1 = v44 = 14087;
            if (0 == v26) {
                v45 = v46 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
            } else {
                v45 = address(MEM[v1]);
            }
            if (!varg3) {
                v1 = v47 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
            } else {
                v1 = v48 = address(MEM[v1]);
            }
            if (!v30) {
                v1 = v49 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
            } else {
                v1 = v50 = address(MEM[v1]);
            }
            v1 = v51 = uint96.max + 1;
            while (1) {
                v52 = v45 * v1;
                v53 = v45 * v1 % uint256.max - v52 - (v45 * v1 % uint256.max < v52);
                if (uint96.max + 1 <= v53) {
                    break;
                } else {
                    if (v45 * v1 % uint256.max - v52 == v45 * v1 % uint256.max < v52) {
                        v45 = v52 >> 96;
                        // Unknown jump to Block ['0x37020x20d', '0x37070x20d']. Refer to 3-address code (TAC);
                    } else {
                        v45 = v52 - v45 * v1 % (uint96.max + 1) >> 96 | v53 - (v45 * v1 % (uint96.max + 1) > v52) << 160;
                        // Unknown jump to Block ['0x37020x20d', '0x37070x20d']. Refer to 3-address code (TAC);
                    }
                    continue;
                }
            }
            if (v45 <= v1) {
                v1 = v54 = 0x13e09;
                MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                if (bool(MEM[v1 + 96])) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                } else {
                    v55 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v56 = _SafeDiv(v55, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v56);
                    MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                }
                if (bool(MEM[v1 + 96])) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                } else {
                    v57 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v58 = _SafeDiv(v57, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v58);
                    MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                }
                if (bool(MEM[v1 + 96])) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v59 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v60 = _SafeDiv(v59, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v60);
                }
            } else {
                v1 = v61 = 0x13a9b;
                if (bool(MEM[v1 + 96])) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    v62 = v63 = bool(!MEM[v1 + 96]);
                } else {
                    v64 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v65 = _SafeDiv(v64, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v65);
                    v62 = v66 = bool(!MEM[v1 + 96]);
                }
                if (!v62) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    v67 = v68 = bool(!MEM[v1 + 96]);
                } else {
                    v69 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v70 = _SafeDiv(v69, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v70);
                    v67 = v71 = bool(!MEM[v1 + 96]);
                }
                if (!v67) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v72 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v73 = _SafeDiv(v72, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v73);
                }
            }
            v74 = v75 = 64;
            v76 = v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000;
            v77 = uint128(MEM[v1 + 32]);
            v78 = uint128(MEM[v1 + 32]);
            v79 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48;
            v80 = v77 * v1 * address(MEM[v1]) * address(MEM[v1]) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) << 48 << 48);
            v81 = 0x44ba(v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77 * v78 % uint256.max - v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77 * v78 - (v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77 * v78 % uint256.max < v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77 * v78) + (v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77 % uint256.max - v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77 - (v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77 % uint256.max < v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77) + (v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max - v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) - (v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max < v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32])) + (v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max - v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) - (v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max < v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1]))) + (v76 * (v1 * address(MEM[v1])) % uint256.max - v76 * (v1 * address(MEM[v1])) - (v76 * (v1 * address(MEM[v1])) % uint256.max < v76 * (v1 * address(MEM[v1])))) * (v1 * address(MEM[v1]))) * uint128(MEM[v1 + 32])) * v77) * v78, v76 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * v77 * v78, (v80 * v79 + (v77 << 252) * v78) * v1 % uint256.max - (v80 * v79 + (v77 << 252) * v78) * v1 - ((v80 * v79 + (v77 << 252) * v78) * v1 % uint256.max < (v80 * v79 + (v77 << 252) * v78) * v1) + (v80 * v79 % uint256.max - v80 * v79 - (v80 * v79 % uint256.max < v80 * v79) + ((v77 << 252) * v78 % uint256.max - (v77 << 252) * v78 - ((v77 << 252) * v78 % uint256.max < (v77 << 252) * v78) + (0x1000000000000000000000000000000000000000000000000000000000000000 * v77 % uint256.max - (v77 << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * v77 % uint256.max < v77 << 252) + v77) * v78) + (v80 * v79 + (v77 << 252) * v78 < v80 * v79)) * v1, (v80 * v79 + (v77 << 252) * v78) * v1);
            v82 = v83 = 0;
            v84 = v85 = address(MEM[v75 + v1]);
            v86, v87, v88 = 0x3846(bool(MEM[v1 + 96]), 0x16052, 15392);
            if (v83 == bool(MEM[v1 + 96])) {
                MEM[0] = MEM[0];
                v89 = new struct(6);
                v90 = v89.data;
                v89.word1 = 1;
                v89.word2 = address(MEM[v75 + v1]);
                v89.word3 = bool(MEM[v1 + 96]);
                v89.word4 = address(MEM[v1 + v75]);
                v89.word5 = bool(MEM[96 + v1]);
                v89.word0 = 160;
                require(!((v89 + 192 > uint64.max) | (v89 + 192 < v89)), Panic(65)); // failed memory allocation (too much memory)
                v91 = v92 = MEM[v75];
                MEM[v92] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v92 + 4] = address(this);
                MEM[v92 + 4 + 32] = bool(v88);
                MEM[v92 + 4 + 64] = v86;
                MEM[v92 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                MEM[v92 + 4 + 128] = 160;
                MEM[v92 + 4 + 160] = v89.word0.length;
                MCOPY(v92 + 4 + 160 + 32, v89.data, v89.word0.length);
                MEM[32 + (v89.word0.length + (v92 + 4 + 160))] = 0;
                v93 = 160 + (v92 + 4 + 160) + 32;
            } else {
                v94 = new struct(6);
                v95 = v94.data;
                v94.word1 = 1;
                v94.word2 = address(MEM[v75 + v1]);
                v94.word3 = bool(MEM[v1 + 96]);
                v94.word4 = address(MEM[v1 + v75]);
                v94.word5 = bool(MEM[96 + v1]);
                v94.word0 = 160;
                require(!((v94 + 192 > uint64.max) | (v94 + 192 < v94)), Panic(65)); // failed memory allocation (too much memory)
                v91 = v96 = MEM[v75];
                MEM[v96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v96 + 4] = address(this);
                MEM[v96 + 4 + 32] = bool(v88);
                MEM[v96 + 4 + 64] = v86;
                MEM[v96 + 4 + 96] = address(0x1000276a4);
                MEM[v96 + 4 + 128] = 160;
                MEM[v96 + 4 + 160] = v94.word0.length;
                MCOPY(v96 + 4 + 160 + 32, v94.data, v94.word0.length);
                MEM[32 + (v94.word0.length + (v96 + 4 + 160))] = 0;
                v93 = v97 = 160 + (v96 + 4 + 160) + 32;
            }
            v98 = v84.call(MEM[v15e6c0x20d_0x1:v15e6c0x20d_0x1 + v164aV0x331cV0x160e4 - v15e6c0x20d_0x1], MEM[v15e6c0x20d_0x1:v15e6c0x20d_0x1 + v38c70x20d_0x6]).value(v82).gas(msg.gas);
            if (v98) {
                v1 = v99 = 0x15e4b;
                if (v98) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v91 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v91 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v91)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v91 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v100 = v91 + RETURNDATASIZE();
                    } else {
                        require(!((v91 + 64 > uint64.max) | (v91 + 64 < v91)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v91 + 64;
                        v100 = v101 = v91 + 64;
                    }
                    require(v100 - v91 >= 64);
                }
                v26 = v102 = 0x3ff & v1 >> 50;
                v1 = v103 = uint24(v1 >> 60);
                v30 = v104 = 0x3ffffffffffff & v1;
                v10 = MEM[64];
                MEM[0] = MEM[0];
                v105 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v105) {
                    v16 = v106 = 0;
                    if (v105) {
                        v14 = v107 = 17025;
                        v18 = v108 = 17341;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v10 + 32 > uint64.max) | (v10 + 32 < v10)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v10 + 32;
                            v23 = v109 = v10 + 32;
                        }
                    }
                }
            }
            revert();
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x2c2f9ced() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 1;
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

function 0x060cc4b2(uint256 varg0, uint256 varg1, uint256 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint256 varg6, int24 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
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
    v0 = 0x3385(varg11);
    if (!v0) {
        v1 = v2 = 0xfffff & varg11 >> 88;
        v1 = v3 = 0x2ab5();
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = address(varg0);
        v3.word3 = bool(varg1);
        0x354f(v3);
        v4 = 0x356d(address(v3.word2));
        v3.word1 = uint128(v4);
        if (!varg1) {
            v5 = v6 = MEM[64];
            v7 = address(varg0).token0().gas(msg.gas);
            if (v7) {
                v8 = v9 = 0;
                if (v7) {
                    v10 = v11 = 2511;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v6 + 32 > uint64.max) | (v6 + 32 < v6)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v6 + 32;
                        v12 = v13 = v6 + 32;
                    }
                }
            }
        } else {
            v5 = v14 = MEM[64];
            v15 = address(varg0).token1().gas(msg.gas);
            if (v15) {
                v8 = v16 = 0;
                if (v15) {
                    v10 = v17 = 2423;
                    v18 = v19 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x97d0x21c. Refer to 3-address code (TAC);
                    }
                }
            }
        }
        if (address(varg2) < address(v8)) {
        }
        if (address(varg2) < address(v8)) {
        }
        v1 = v20 = 0xfffff & varg11 >> 108;
        v21 = 0x2b16(v20);
        v22 = 0x2ac4();
        v22.word0 = address(v8);
        v22.word1 = address(v8);
        v22.word2 = uint24(v21);
        v22.word3 = varg3;
        v22.word4 = address(varg4);
        v23 = v24 = 0x2ab5();
        v24.word0 = 0;
        v24.word1 = 0;
        v24.word2 = v22;
        v1 = v25 = v24 + 96;
        v24.word3 = bool(varg5);
        v26 = v27 = 1284;
        v28 = new struct(3);
        v28.word1 = keccak256(MEM[v4d9_0x0.word2:v4d9_0x0.word2 + 160]);
        v28.word2 = 6;
        v28.word0 = 64;
        require(!((v28 + 96 > uint64.max) | (v28 + 96 < v28)), Panic(65)); // failed memory allocation (too much memory)
        v29 = v28.word0.length;
        v30 = v31 = keccak256(keccak256(MEM[v4d9_0x0.word2:v4d9_0x0.word2 + 160]), 6);
        v32 = v33 = MEM[64];
        v34 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v31).gas(msg.gas);
        if (v34) {
            v23 = v35 = 32;
            v36 = v37 = 13856;
            v38 = v39 = 0;
            if (v34) {
                v40 = v41 = 14003;
                if (v35 <= RETURNDATASIZE()) {
                    require(!((v33 + 32 > uint64.max) | (v33 + 32 < v33)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v33 + 32;
                    v42 = v43 = v33 + v35;
                }
            }
            MEM[v23] = address(v38);
            require(v30 <= v30 + 3, Panic(17)); // arithmetic overflow or underflow
            v32 = v44 = MEM[64];
            v45 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v30 + 3).gas(msg.gas);
            if (v45) {
                v30 = v46 = uint128.max;
                v36 = v47 = 32;
                v23 = v48 = 0x15cf9;
                v38 = v49 = 0;
                if (v45) {
                    v40 = 13974;
                    if (v47 <= RETURNDATASIZE()) {
                        require(!((v44 + 32 > uint64.max) | (v44 + 32 < v44)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v44 + 32;
                        v42 = v50 = v44 + v47;
                    }
                }
            }
            MEM[v23 + v36] = uint128(v38 & v30);
            if (!v24) {
                if (address(v27) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                    MEM[0] = MEM[0];
                    v26 = v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                }
            } else {
                v26 = v52 = 0;
            }
            if (!v24) {
                if (address(v27) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                    MEM[0] = MEM[0];
                    v26 = v53 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                }
            }
            v54 = 0x2b16(v20);
            v55 = 0x2ac4();
            v55.word0 = address(v26);
            v55.word1 = address(v26);
            v55.word2 = uint24(v54);
            v55.word3 = int24(varg2);
            v55.word4 = address(varg7);
            v1 = v56 = 0x2ab5();
            v56.word0 = 0;
            v56.word1 = 0;
            v56.word2 = v55;
            v1 = v57 = v56 + 96;
            v56.word3 = bool(varg12);
            v58 = v59 = 1426;
            v60 = new struct(3);
            v60.word1 = keccak256(MEM[v56c_0x0.word2:v56c_0x0.word2 + 160]);
            v60.word2 = 6;
            v60.word0 = 64;
            require(!((v60 + 96 > uint64.max) | (v60 + 96 < v60)), Panic(65)); // failed memory allocation (too much memory)
            v61 = v60.word0.length;
            v62 = v63 = keccak256(keccak256(MEM[v56c_0x0.word2:v56c_0x0.word2 + 160]), 6);
            v64 = v65 = MEM[64];
            v66 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v63).gas(msg.gas);
            if (v66) {
                v1 = v67 = 32;
                v68 = v69 = 13856;
                v70 = v71 = 0;
                if (v66) {
                    v72 = v73 = 14003;
                    if (v67 <= RETURNDATASIZE()) {
                        require(!((v65 + 32 > uint64.max) | (v65 + 32 < v65)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v65 + 32;
                        v74 = v75 = v65 + v67;
                    }
                }
                MEM[v1] = address(v70);
                require(v62 <= v62 + 3, Panic(17)); // arithmetic overflow or underflow
                v64 = v76 = MEM[64];
                v77 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v62 + 3).gas(msg.gas);
                if (v77) {
                    v62 = v78 = uint128.max;
                    v68 = v79 = 32;
                    v1 = v80 = 0x15cf9;
                    v70 = v81 = 0;
                    if (v77) {
                        v72 = 13974;
                        if (v79 <= RETURNDATASIZE()) {
                            require(!((v76 + 32 > uint64.max) | (v76 + 32 < v76)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v76 + 32;
                            v74 = v82 = v76 + v79;
                        }
                    }
                }
                MEM[v1 + v68] = uint128(v70 & v62);
                v83 = v84 = MEM[64];
                MEM[0] = MEM[0];
                v85 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v85) {
                    v1 = v86 = 1549;
                    v87 = v88 = 1500;
                    v89 = v90 = 0;
                    if (v85) {
                        v91 = v92 = 2245;
                        v93 = 32;
                        if (32 > RETURNDATASIZE()) {
                            // Unknown jump to Block 0x8cb0x21c. Refer to 3-address code (TAC);
                        }
                    }
                    v94 = this.balance;
                    v1 = v95 = v89 + v94;
                    require(v89 <= v95, Panic(17)); // arithmetic overflow or underflow
                    v1 = v96 = 14082;
                    v1 = v97 = 14087;
                    if (0 == v98) {
                        v99 = v100 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                    } else {
                        v99 = address(MEM[v1]);
                    }
                    if (!v101) {
                        v1 = v102 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                    } else {
                        v1 = v103 = address(MEM[v1]);
                    }
                    if (!v58) {
                        v1 = v104 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                    } else {
                        v1 = v105 = address(MEM[v1]);
                    }
                    v1 = v106 = uint96.max + 1;
                    while (1) {
                        v107 = v99 * v1;
                        v108 = v99 * v1 % uint256.max - v107 - (v99 * v1 % uint256.max < v107);
                        if (uint96.max + 1 <= v108) {
                            break;
                        } else {
                            if (v99 * v1 % uint256.max - v107 == v99 * v1 % uint256.max < v107) {
                                v99 = v107 >> 96;
                                // Unknown jump to Block ['0x37020x21c', '0x37070x21c']. Refer to 3-address code (TAC);
                            } else {
                                v99 = v107 - v99 * v1 % (uint96.max + 1) >> 96 | v108 - (v99 * v1 % (uint96.max + 1) > v107) << 160;
                                // Unknown jump to Block ['0x37020x21c', '0x37070x21c']. Refer to 3-address code (TAC);
                            }
                            continue;
                        }
                    }
                    if (v99 <= v1) {
                        v109 = v110 = 0x131cd;
                        v1 = v111 = 0x131f0;
                        v112 = v113 = 2033;
                        v114 = v115 = 0x13211;
                        v116 = v117 = 2058;
                        MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                        if (bool(MEM[v1 + 96])) {
                            v118 = v119 = 0x1353c;
                            v120 = address(MEM[v1]) >> 48;
                        } else {
                            v118 = v121 = 0x1327a;
                            v122 = v123 = 1998;
                            v124 = v125 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v126 = address(MEM[v1]) >> 48;
                            // Unknown jump to Block 0x2b8b0x21c. Refer to 3-address code (TAC);
                        }
                    } else {
                        v109 = v127 = 0x12e96;
                        v1 = v128 = 0x12eb9;
                        v112 = v129 = 1666;
                        v114 = v130 = 0x12eda;
                        v116 = v131 = 1726;
                        if (bool(MEM[v1 + 96])) {
                            v118 = v132 = 0x131a8;
                            v120 = v133 = address(MEM[v1]) >> 48;
                        } else {
                            v118 = v134 = 0x12f20;
                            v122 = v135 = 1647;
                            v124 = v136 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v126 = v137 = address(MEM[v1]) >> 48;
                        }
                    }
                    require(v126, Panic(18)); // division by zero
                    v120 = v138 = v124 / v126;
                    // Unknown jump to Block ['0x66f0x21c', '0x7ce0x21c']. Refer to 3-address code (TAC);
                    MEM[v1] = address(v120);
                    // Unknown jump to Block ['0x1327a0x21c', '0x1353c0x21c']. Refer to 3-address code (TAC);
                    MEM[v1] = bool(!MEM[v1]);
                    v139 = bool(MEM[v1]);
                    if (bool(v139)) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                        MEM[v1] = bool(!MEM[v1]);
                        v140 = v141 = bool(MEM[v1]);
                        // Unknown jump to Block 0x131cd. Refer to 3-address code (TAC);
                    } else {
                        v142 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v143 = _SafeDiv(v142, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v143);
                        MEM[v1] = bool(!MEM[v1]);
                        v140 = bool(MEM[v1]);
                    }
                    if (bool(v140)) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                    } else {
                        v144 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v145 = _SafeDiv(v144, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v145);
                    }
                    v146 = 64;
                    v147 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48;
                    v148 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) << 48 << 48);
                    v149 = 0x44ba((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1]))) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])))) * (v1 * address(MEM[v1]))) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32]), (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]), (v148 * v147 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max - (v148 * v147 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 - ((v148 * v147 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max < (v148 * v147 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1) + (v148 * v147 % uint256.max - v148 * v147 - (v148 * v147 % uint256.max < v148 * v147) + ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) - ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max < (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max < uint128(MEM[v1 + 32]) << 252) + uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) + (v148 * v147 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) < v148 * v147)) * v1, (v148 * v147 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1);
                    v150 = 0;
                    v151 = address(MEM[v146 + v1]);
                    v152, v153, v154 = 0x3846(bool(MEM[v1 + 96]), 0x15db9, 14419);
                    if (v150 == bool(MEM[v1 + 96])) {
                        MEM[0] = MEM[0];
                        v155 = new struct(14);
                        v155.word1 = 5;
                        v155.word2 = address(MEM[MEM[v1 + v146]]);
                        v155.word3 = address(MEM[MEM[v1 + v146] + 32]);
                        v155.word4 = uint24(MEM[MEM[v1 + v146] + 64]);
                        v155.word5 = int24(MEM[MEM[v1 + v146] + 96]);
                        v155.word6 = address(MEM[128 + MEM[v1 + v146]]);
                        v155.word7 = bool(MEM[v1 + 96]);
                        v155.word8 = address(MEM[MEM[v1 + v146]]);
                        v155.word9 = address(MEM[MEM[v1 + v146] + 32]);
                        v155.word10 = uint24(MEM[MEM[v1 + v146] + 64]);
                        v155.word11 = int24(MEM[MEM[v1 + v146] + 96]);
                        v155.word12 = address(MEM[128 + MEM[v1 + v146]]);
                        v155.word13 = bool(MEM[v1 + 96]);
                        v155.word0 = 416;
                        require(!((v155 + 448 > uint64.max) | (v155 + 448 < v155)), Panic(65)); // failed memory allocation (too much memory)
                        v156 = v157 = MEM[v146];
                        MEM[v157] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v157 + 4] = address(this);
                        MEM[v157 + 4 + 32] = bool(v154);
                        MEM[v157 + 4 + 64] = v152;
                        MEM[v157 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                        MEM[v157 + 4 + 128] = 160;
                        MEM[v157 + 4 + 160] = v155.word0.length;
                        MCOPY(v157 + 4 + 160 + 32, v155.data, v155.word0.length);
                        MEM[32 + (v155.word0.length + (v157 + 4 + 160))] = 0;
                        v158 = 416 + (v157 + 4 + 160) + 32;
                    } else {
                        v159 = new struct(14);
                        v159.word1 = 5;
                        v159.word2 = address(MEM[MEM[v1 + v146]]);
                        v159.word3 = address(MEM[MEM[v1 + v146] + 32]);
                        v159.word4 = uint24(MEM[MEM[v1 + v146] + 64]);
                        v159.word5 = int24(MEM[MEM[v1 + v146] + 96]);
                        v159.word6 = address(MEM[128 + MEM[v1 + v146]]);
                        v159.word7 = bool(MEM[v1 + 96]);
                        v159.word8 = address(MEM[MEM[v1 + v146]]);
                        v159.word9 = address(MEM[MEM[v1 + v146] + 32]);
                        v159.word10 = uint24(MEM[MEM[v1 + v146] + 64]);
                        v159.word11 = int24(MEM[MEM[v1 + v146] + 96]);
                        v159.word12 = address(MEM[128 + MEM[v1 + v146]]);
                        v159.word13 = bool(MEM[v1 + 96]);
                        v159.word0 = 416;
                        require(!((v159 + 448 > uint64.max) | (v159 + 448 < v159)), Panic(65)); // failed memory allocation (too much memory)
                        v156 = MEM[v146];
                        MEM[v156] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v156 + 4] = address(this);
                        MEM[v156 + 4 + 32] = bool(v154);
                        MEM[v156 + 4 + 64] = v152;
                        MEM[v156 + 4 + 96] = address(0x1000276a4);
                        MEM[v156 + 4 + 128] = 160;
                        MEM[v156 + 4 + 160] = v159.word0.length;
                        MCOPY(v156 + 4 + 160 + 32, v159.data, v159.word0.length);
                        MEM[32 + (v159.word0.length + (v156 + 4 + 160))] = 0;
                        v158 = v160 = 416 + (v156 + 4 + 160) + 32;
                    }
                    v161 = v151.call(MEM[v21c0x15de4:v21c0x15de4 + v164aV0x331cV0x15e930x21c - v21c0x15de4], MEM[v21c0x15de4:v21c0x15de4 + v21c0x37a7]).value(v150).gas(msg.gas);
                    if (v161) {
                        v101 = v162 = 0x15e4b;
                        if (v161) {
                            if (64 > RETURNDATASIZE()) {
                                require(!((v156 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v156 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v156)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v156 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v163 = v156 + RETURNDATASIZE();
                            } else {
                                require(!((v156 + 64 > uint64.max) | (v156 + 64 < v156)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v156 + 64;
                                v163 = v164 = v156 + 64;
                            }
                            require(v163 - v156 >= 64);
                        }
                    }
                    // Unknown jump to Block 0x420f0x21c. Refer to 3-address code (TAC);
                    MEM[v1] = bool(!MEM[v1]);
                    v139 = v165 = bool(MEM[v1]);
                    // Unknown jump to Block 0x13211. Refer to 3-address code (TAC);
                    MEM[v1] = address(v120);
                    // Unknown jump to Block ['0x12f200x21c', '0x131a80x21c']. Refer to 3-address code (TAC);
                    v166 = bool(MEM[v1]);
                    if (bool(v166)) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                        v167 = v168 = bool(MEM[v1]);
                        // Unknown jump to Block 0x12e96. Refer to 3-address code (TAC);
                    } else {
                        v169 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v170 = _SafeDiv(v169, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v170);
                        v167 = bool(MEM[v1]);
                    }
                    if (bool(v167)) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                    } else {
                        v171 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v172 = _SafeDiv(v171, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v172);
                    }
                    v173 = v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000;
                    v174 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48;
                    v175 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) << 48 << 48);
                    v176 = 0x44ba(v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max - v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) - (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max < v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32])) + (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max - v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) - (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max < v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1]))) + (v173 * (v1 * address(MEM[v1])) % uint256.max - v173 * (v1 * address(MEM[v1])) - (v173 * (v1 * address(MEM[v1])) % uint256.max < v173 * (v1 * address(MEM[v1])))) * (v1 * address(MEM[v1]))) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32]), v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]), (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max - (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 - ((v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max < (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1) + (v175 * v174 % uint256.max - v175 * v174 - (v175 * v174 % uint256.max < v175 * v174) + ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) - ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max < (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max < uint128(MEM[v1 + 32]) << 252) + uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) + (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) < v175 * v174)) * v1, (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1);
                    v177 = MEM[v1 + 64];
                    v178 = new struct(17);
                    v178.word1 = 4;
                    v178.word2 = v176;
                    v178.word3 = address(MEM[v177]);
                    v178.word4 = address(MEM[v177 + 32]);
                    v178.word5 = uint24(MEM[v177 + 64]);
                    v178.word6 = int24(MEM[v177 + 96]);
                    v178.word7 = address(MEM[128 + v177]);
                    v178.word8 = bool(MEM[v1 + 96]);
                    v178.word9 = address(MEM[MEM[v1 + 64]]);
                    v178.word10 = address(MEM[MEM[v1 + 64] + 32]);
                    v178.word11 = uint24(MEM[MEM[v1 + 64] + 64]);
                    v178.word12 = int24(MEM[MEM[v1 + 64] + 96]);
                    v178.word13 = address(MEM[128 + MEM[v1 + 64]]);
                    v178.word14 = bool(MEM[v1 + 96]);
                    v178.word15 = address(MEM[v1 + 64]);
                    v178.word16 = bool(MEM[v1 + 96]);
                    v178.word0 = 512;
                    require(!((v178 + 544 > uint64.max) | (v178 + 544 < v178)), Panic(65)); // failed memory allocation (too much memory)
                    v179 = new bytes[](v178.word0.length);
                    MCOPY(v179.data, v178.data, v178.word0.length);
                    v179[v178.word0.length] = 0;
                    v180 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v179, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                    if (v180) {
                        v101 = v181 = 0x15f38;
                        if (v180) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                            require(v182.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v183 = new bytes[](v182.length);
                            require(!((v183 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v182.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v183 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v182.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v183)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v182.length + 32 <= MEM[64] + RETURNDATASIZE());
                            MCOPY(v183.data, v182.data, v182.length);
                            v183[v182.length] = 0;
                        }
                    }
                    v98 = v184 = 0x3ff & v1 >> 50;
                    v1 = v185 = uint24(v1 >> 60);
                    v58 = 0x3ffffffffffff & v1;
                    v83 = MEM[64];
                    MEM[0] = MEM[0];
                    v186 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                    if (v186) {
                        v89 = v187 = 0;
                        if (v186) {
                            v87 = v188 = 17025;
                            v91 = v189 = 17341;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v83 + 32 > uint64.max) | (v83 + 32 < v83)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v83 + 32;
                                v190 = v191 = v83 + 32;
                            }
                        }
                    }
                    v166 = v192 = bool(MEM[v1]);
                    // Unknown jump to Block 0x12eda. Refer to 3-address code (TAC);
                    revert();
                    require(!((v83 + (v93 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v83 + (v93 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v83)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v83 + (v93 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v190 = v83 + v93;
                    require(v190 - v83 >= 32);
                    v89 = MEM[v83];
                    // Unknown jump to Block ['0x43bd0x21c', '0x8c50x21c']. Refer to 3-address code (TAC);
                    v193 = _SafeAdd(v89, this.balance);
                    v194 = _SafeSub(v193, v1);
                    if (!v98) {
                        v195 = _SafeSub(v1, msg.gas);
                        v196 = 0x2b60(v195);
                        v197 = _SafeMul(v58, v196);
                        require(v197 < v194, Error(52));
                        v198 = 0x2b60(msg.gas);
                        require(v198 >= msg.gas, Error(13665));
                        // Unknown jump to Block ['0x15e4b0x21c', '0x15f380x21c']. Refer to 3-address code (TAC);
                    } else {
                        v199 = _SafeSub(v1, msg.gas);
                        v200 = 0x2b6f(v199);
                        v201 = _SafeMul(v58, v200);
                        require(v201 < v194, Error(52));
                        v202 = _SafeSub(v194, v201);
                        require(v98 <= 1000);
                        v203 = _SafeMul(v202, v98);
                        v204 = _SafeSub(v202, v203 / 1000);
                        if (this.balance <= v203 / 1000) {
                            MEM[0] = MEM[0];
                            v205 = 0x2b28(v89);
                            0x4500(v205, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                        }
                        if (v203 / 1000) {
                            v206 = block.coinbase.call().value(v203 / 1000).gas(10000);
                        }
                        v207 = 0x2b6f(msg.gas);
                        require(v207 >= msg.gas, Error(13666));
                        // Unknown jump to Block ['0x15e4b0x21c', '0x15f380x21c']. Refer to 3-address code (TAC);
                    }
                    exit;
                    exit;
                    v93 = v208 = RETURNDATASIZE();
                    // Unknown jump to Block 0x8b30x21c. Refer to 3-address code (TAC);
                }
                require(!((v64 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v64 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v64)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v64 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v74 = v209 = v64 + RETURNDATASIZE();
                require(v74 - v64 >= 32);
                v70 = v210 = MEM[v64];
                // Unknown jump to Block ['0x3696B0x56d', '0x36b3B0x56d']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x366fB0x56d. Refer to 3-address code (TAC);
            }
            revert(MEM[64], RETURNDATASIZE());
            require(!((v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v42 = v211 = v32 + RETURNDATASIZE();
            require(v42 - v32 >= 32);
            v38 = v212 = MEM[v32];
            // Unknown jump to Block ['0x3696B0x4fb', '0x36b3B0x4fb']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x366fB0x4fb. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        require(!((v5 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v5 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v12 = v5 + v18;
        require(v12 - v5 >= 32);
        v8 = v213 = MEM[v5];
        require(!(address(v213) - v213));
        // Unknown jump to Block ['0x977', '0x9cf']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x445. Refer to 3-address code (TAC);
        v18 = RETURNDATASIZE();
        // Unknown jump to Block 0x9650x21c. Refer to 3-address code (TAC);
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        // Unknown jump to Block 0x448. Refer to 3-address code (TAC);
    } else {
        exit;
    }
}

function 0x2a0f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(10 ** 6 - v0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - v0, varg2, varg3, varg0;
}

function 0x2ab5() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x2ac4() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x2ad3() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x2b16(uint256 varg0) private { 
    require(10 ** 6 - varg0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - varg0;
}

function 0x2b28(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x2b60(uint256 varg0) private { 
    require(varg0 <= varg0 + 1000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1000;
}

function 0x2b6f(uint256 varg0) private { 
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

function 0x2f95(uint256 varg0, uint256 varg1) private { 
    require(10 ** 6 - v0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - v0, varg0;
}

function 0x3076(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(32 <= varg2);
    require(varg2 <= varg1);
    return varg2 - 32, 32 + varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 + varg1 < varg1;
    require(!((varg0 >= 0) & v0 | (varg0 < 0) & (varg0 + varg1 >= varg1)), Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x3385(uint256 varg0) private { 
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

function 0x354f(struct(4) varg0) private { 
    v0 = varg0.word2.slot0().gas(msg.gas);
    require(v0);
    return ;
}

function 0x356d(uint256 varg0) private { 
    v0, /* uint128 */ v1 = varg0.liquidity().gas(msg.gas);
    require((RETURNDATASIZE() > 15) & v0);
    return uint128(v1);
}

function 0x3846(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v0, varg2, varg0;
}

function 0x3eab(address varg0, uint256 varg1) private { 
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

function 0x3f52(uint256 varg0) private { 
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

function 0x40a9(address varg0, uint128 varg1, address varg2, uint128 varg3, uint256 varg4, address varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = varg8 * varg0 * varg2 * varg5 - 0x3b9aca00000000000000000000000000000000000000;
    v1 = varg4 * varg2;
    v2 = varg3;
    v3 = uint128(varg6);
    v4 = varg1 * varg4 * varg0 * varg2 << 48;
    v5 = v2 * varg7 * varg2 * varg5 + (uint128(10 ** 6 * varg6) << 48 << 48);
    v6 = 0x44ba(v0 * (varg7 * varg5) * v1 * varg1 * v2 * v3 % uint256.max - v0 * (varg7 * varg5) * v1 * varg1 * v2 * v3 - (v0 * (varg7 * varg5) * v1 * varg1 * v2 * v3 % uint256.max < v0 * (varg7 * varg5) * v1 * varg1 * v2 * v3) + (v0 * (varg7 * varg5) * v1 * varg1 * v2 % uint256.max - v0 * (varg7 * varg5) * v1 * varg1 * v2 - (v0 * (varg7 * varg5) * v1 * varg1 * v2 % uint256.max < v0 * (varg7 * varg5) * v1 * varg1 * v2) + (v0 * (varg7 * varg5) * v1 * varg1 % uint256.max - v0 * (varg7 * varg5) * v1 * varg1 - (v0 * (varg7 * varg5) * v1 * varg1 % uint256.max < v0 * (varg7 * varg5) * v1 * varg1) + (v0 * (varg7 * varg5) * v1 % uint256.max - v0 * (varg7 * varg5) * v1 - (v0 * (varg7 * varg5) * v1 % uint256.max < v0 * (varg7 * varg5) * v1) + (v0 * (varg7 * varg5) % uint256.max - v0 * (varg7 * varg5) - (v0 * (varg7 * varg5) % uint256.max < v0 * (varg7 * varg5))) * v1) * varg1) * v2) * v3, v0 * (varg7 * varg5) * v1 * varg1 * v2 * v3, (v5 * v4 + (v2 << 252) * v3) * varg8 % uint256.max - (v5 * v4 + (v2 << 252) * v3) * varg8 - ((v5 * v4 + (v2 << 252) * v3) * varg8 % uint256.max < (v5 * v4 + (v2 << 252) * v3) * varg8) + (v5 * v4 % uint256.max - v5 * v4 - (v5 * v4 % uint256.max < v5 * v4) + ((v2 << 252) * v3 % uint256.max - (v2 << 252) * v3 - ((v2 << 252) * v3 % uint256.max < (v2 << 252) * v3) + (0x1000000000000000000000000000000000000000000000000000000000000000 * v2 % uint256.max - (v2 << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * v2 % uint256.max < v2 << 252) + v2) * v3) + (v5 * v4 + (v2 << 252) * v3 < v5 * v4)) * varg8, (v5 * v4 + (v2 << 252) * v3) * varg8);
    return v6;
}

function 0x43f6(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0x4465(uint256 varg0) private { 
    v0 = new bytes[](36);
    MEM[v0.data] = 0xf82c50f100000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg0;
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = 'console.log'.log(varg0).gas(msg.gas);
    return ;
}

function 0x44ba(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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
        v4 = 0x43f6(varg1, varg0, varg3);
        return v4;
    } else {
        v5 = _SafeDiv(varg0, varg2);
        return v5;
    }
}

function 0x4500(uint256 varg0, uint256 varg1) private { 
    v0 = varg1.withdraw(varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x60cc4b2 == v0) {
            0x060cc4b2();
        } else {
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
                                    } else if (0x30f76ad9 == v0) {
                                        0x30f76ad9();
                                    } else if (0x3a1c453c != v0) {
                                        if (0x3a2daf8d == v0) {
                                            0x3a2daf8d();
                                        } else if (0x427a2f1c != v0) {
                                            if (0x4d7c481f != v0) {
                                                if (0x58c16b82 != v0) {
                                                    if (0x6b40136c != v0) {
                                                        if (0x6e3aab9b != v0) {
                                                            if (0x6f5aeea3 == v0) {
                                                                0x6f5aeea3();
                                                            } else if (0x6fe055ca != v0) {
                                                                if (0x749d3c3b != v0) {
                                                                    if (0x7a436efe != v0) {
                                                                        if (0x84800812 != v0) {
                                                                            if (0x871bba25 != v0) {
                                                                                if (0x91dd7346 == v0) {
                                                                                    unlockCallback(bytes);
                                                                                } else if (0x9f3d4ab8 != v0) {
                                                                                    if (0xa0bd0131 != v0) {
                                                                                        if (0xa31de730 != v0) {
                                                                                            if (0xaf4cf912 == v0) {
                                                                                                0xaf4cf912();
                                                                                            } else if (0xb6d35a66 != v0) {
                                                                                                if (0xb7754fdd == v0) {
                                                                                                    0xb7754fdd();
                                                                                                } else if (0xb9087966 != v0) {
                                                                                                    if (0xbf5fad43 != v0) {
                                                                                                        if (0xc18c82cc != v0) {
                                                                                                            if (0xcafecc44 != v0) {
                                                                                                                if (0xcbf02c23 != v0) {
                                                                                                                    if (0xcf7d4f69 == v0) {
                                                                                                                        0xcf7d4f69();
                                                                                                                    } else if (0xf73dfdb2 != v0) {
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
                                }
                            }
                            0xf73dfdb2();
                        }
                        0xa0bd0131();
                    }
                    0x6fe055ca();
                }
                0xc18c82cc();
            }
            0x0a58f8e0();
        }
    }
    require(!msg.data.length);
    receive();
}
