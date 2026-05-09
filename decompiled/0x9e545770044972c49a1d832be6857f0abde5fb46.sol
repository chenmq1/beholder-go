// Decompiled by library.dedaub.com
// 2025.12.08 07:31 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 _unlockCallback; // TRANSIENT_STORAGE[0x0]



function receive() public payable { 
}

function 0x1c82(uint256 varg0, uint256 varg1) private { 
    require(10 ** 6 - v0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - v0, varg0;
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
        if (uint8(data.word1) - 2) {
            if (uint8(data.word1) - 3) {
                if (uint8(data.word1) - 4) {
                    require(uint8(data.word1) - 5);
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
                    if (uint8(data.word1) - 18) {
                        if (uint8(data.word1) - 19) {
                            if (uint8(data.word1) - 20) {
                                require(uint8(data.word1) - 21);
                                require(uint8(data.word1) - 22);
                                require(23 - uint8(data.word1));
                                revert(Error(0x3f3f3f));
                            } else {
                                v1, v2 = 0x3b3c(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                                require(v2 + v1 - v2 >= 32);
                                require(!(bool(msg.data[v2]) - msg.data[v2]));
                                if (amount0Delta > 0) {
                                }
                                if (msg.data[v2]) {
                                    require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                                    MEM[0] = MEM[0];
                                    v3 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v4).gas(msg.gas);
                                    if (v3) {
                                        if (v3) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(0 >= 0);
                                        }
                                    }
                                }
                                0x4921(msg.sender, v4);
                            }
                        } else {
                            v5 = v6 = 0;
                            v7 = v8 = 64;
                            v9, v10 = 0x3b3c(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                            require(v10 + v9 - v10 >= 96);
                            v11 = v12 = msg.data[v10];
                            require(!(address(v12) - v12));
                            require(!(bool(msg.data[v10 + 32]) - msg.data[v10 + 32]));
                            require(!(bool(msg.data[v10 + 64]) - msg.data[v10 + 64]));
                            if (v6 == amount0Delta > v6) {
                                v13 = v14 = 0x3d0e(amount1Delta);
                            } else {
                                v13 = v15 = 0x3d0e(amount0Delta);
                            }
                            if (v6 == msg.data[v10 + 32]) {
                                MEM[0] = MEM[0];
                                v16 = new struct(3);
                                v17 = v16.data;
                                v16.word1 = 20;
                                v16.word2 = bool(msg.data[v10 + 64]);
                                v16.word0 = 64;
                                require(!((v16 + 96 > uint64.max) | (v16 + 96 < v16)), Panic(65)); // failed memory allocation (too much memory)
                                v18 = v19 = MEM[v8];
                                MEM[v19] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v19 + 4] = msg.sender;
                                MEM[v19 + 4 + 32] = bool(msg.data[v10 + 32]);
                                MEM[v19 + 4 + 64] = v13;
                                MEM[v19 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                                MEM[v19 + 4 + 128] = 160;
                                MEM[v19 + 4 + 160] = v16.word0.length;
                                MCOPY(v19 + 4 + 160 + 32, v16.data, v16.word0.length);
                                MEM[32 + (v16.word0.length + (v19 + 4 + 160))] = 0;
                                v20 = 64 + (v19 + 4 + 160) + 32;
                            } else {
                                v21 = new struct(3);
                                v22 = v21.data;
                                v21.word1 = 20;
                                v21.word2 = bool(msg.data[v10 + 64]);
                                v21.word0 = 64;
                                require(!((v21 + 96 > uint64.max) | (v21 + 96 < v21)), Panic(65)); // failed memory allocation (too much memory)
                                v18 = v23 = MEM[v8];
                                MEM[v23] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v23 + 4] = msg.sender;
                                MEM[v23 + 4 + 32] = bool(msg.data[v10 + 32]);
                                MEM[v23 + 4 + 64] = v13;
                                MEM[v23 + 4 + 96] = address(0x1000276a4);
                                MEM[v23 + 4 + 128] = 160;
                                MEM[v23 + 4 + 160] = v21.word0.length;
                                MCOPY(v23 + 4 + 160 + 32, v21.data, v21.word0.length);
                                MEM[32 + (v21.word0.length + (v23 + 4 + 160))] = 0;
                                v20 = v24 = 64 + (v23 + 4 + 160) + 32;
                            }
                        }
                    } else {
                        v25 = v26 = 3845;
                        v27 = v28 = 32;
                        v29, v30 = 0x3b3c(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                        require(v30 + v29 - v30 >= uint8.max + 1);
                        v31 = msg.data[v30];
                        v32 = msg.data[v30 + 32];
                        require(!(bool(v32) - v32));
                        require(v30 + v29 - (v30 + 64) >= 160);
                        v33 = new struct(5);
                        require(!((v33 + 160 > uint64.max) | (v33 + 160 < v33)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(address(msg.data[v30 + 64]) - msg.data[v30 + 64]));
                        v33.word0 = msg.data[v30 + 64];
                        require(!(address(msg.data[v30 + 64 + 32]) - msg.data[v30 + 64 + 32]));
                        v33.word1 = msg.data[v30 + 64 + 32];
                        require(!(msg.data[v30 + 64 + 64] - uint24(msg.data[v30 + 64 + 64])));
                        v33.word2 = msg.data[v30 + 64 + 64];
                        require(!(msg.data[v30 + 64 + 96] - int24(msg.data[v30 + 64 + 96])));
                        v33.word3 = msg.data[v30 + 64 + 96];
                        require(!(address(msg.data[v30 + 64 + 128]) - msg.data[v30 + 64 + 128]));
                        v33.word4 = msg.data[v30 + 64 + 128];
                        v34 = msg.data[v30 + 224];
                        require(!(bool(v34) - v34));
                        if (0 != amount0Delta > 0) {
                        }
                        if (!v34) {
                            MEM[0] = MEM[0];
                            v35 = 0x39e7();
                            v35.word0 = bool(v34);
                            v35.word1 = v4;
                            v35.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                            v36 = v37 = MEM[64];
                            MEM[v37] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                            v38 = v39 = v37 + 4;
                        } else {
                            v35 = v40 = 0x39e7();
                            v40.word0 = bool(v34);
                            v40.word1 = v4;
                            v40.word2 = address(0x1000276a4);
                            v36 = v41 = MEM[64];
                            MEM[v41] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                            v38 = v42 = v41 + 4;
                        }
                        MEM[v38] = address(MEM[v33]);
                        MEM[v38 + 32] = address(MEM[v33 + 32]);
                        MEM[v38 + 64] = uint24(MEM[v33 + 64]);
                        MEM[v38 + 96] = int24(MEM[v33 + 96]);
                        MEM[v38 + 128] = address(MEM[128 + v33]);
                        MEM[v38 + 160] = bool(MEM[v35]);
                        MEM[v38 + 192] = MEM[v35 + 32];
                        MEM[v38 + 224] = address(MEM[64 + v35]);
                        MEM[v38 + (uint8.max + 1)] = 288;
                        MEM[v38 + 288] = 0;
                        MEM[0] = MEM[0];
                        v43 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.call(MEM[v169c10x1d1_0x1:v169c10x1d1_0x1 + v3c3b0x1d1_0x1 + 320 - v169c10x1d1_0x1], MEM[v169c10x1d1_0x1:v169c10x1d1_0x1 + vf05_0x3]).gas(msg.gas);
                        if (v43) {
                            v44 = v45 = 0;
                            if (v43) {
                                v46 = v47 = 5405;
                                if (32 <= RETURNDATASIZE()) {
                                    require(!((v36 + 32 > uint64.max) | (v36 + 32 < v36)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v36 + 32;
                                    v48 = v49 = v36 + 32;
                                }
                            }
                        }
                    }
                    v36 = v50 = MEM[64];
                    MEM[0] = MEM[0];
                    v51 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                    if (v51) {
                        if (!v51) {
                            exit;
                        }
                    }
                    v46 = v52 = 0x16e5b;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v36 + 32 > uint64.max) | (v36 + 32 < v36)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v36 + 32;
                        v48 = v53 = v36 + 32;
                    }
                    require(!((v36 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v36 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v36)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v36 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v48 = v36 + RETURNDATASIZE();
                    require(v48 - v36 >= 32);
                    v44 = MEM[v36];
                    // Unknown jump to Block ['0x1333', '0x1442', '0x151d', '0x16e5b']. Refer to 3-address code (TAC);
                    exit;
                    v36 = v54 = MEM[64];
                    MEM[0] = MEM[0];
                    v55 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                    if (v55) {
                        if (!v55) {
                            exit;
                        }
                    }
                    // Unknown jump to Block 0x12eb. Refer to 3-address code (TAC);
                    if (!v34) {
                        v56 = v57 = int128(v44);
                        MEM[0] = MEM[0];
                        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                        MEM[0] = MEM[0];
                        v58 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v33 + 32]), msg.sender, int128(v44 >> 128)).gas(msg.gas);
                        if (v58) {
                            if (v58) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= 0);
                            }
                        }
                    } else {
                        v56 = v59 = int128(v44 >> 128);
                        MEM[0] = MEM[0];
                        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                        MEM[0] = MEM[0];
                        v60 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v33 + 32]), msg.sender, int128(v44)).gas(msg.gas);
                        if (v60) {
                            if (v60) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= 0);
                            }
                        }
                    }
                    if (address(MEM[v33])) {
                        if (!v32) {
                            if (!v34) {
                                v61 = v62 = int128(v44);
                            } else {
                                v61 = v63 = v44 >> 128;
                            }
                            if (int128(v61) != int256.min) {
                                if (v31 - (0 - int128(v61)) <= v31) {
                                    MEM[0] = MEM[0];
                                    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                                    MEM[0] = MEM[0];
                                    v64 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, this, v31 - (0 - int128(v61))).gas(msg.gas);
                                    if (v64) {
                                        if (v64) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(0 >= 0);
                                        }
                                        v36 = v65 = MEM[64];
                                        MEM[0] = MEM[0];
                                        v66 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        if (v66) {
                                            if (v66) {
                                                v46 = v67 = 5186;
                                                if (32 <= RETURNDATASIZE()) {
                                                    require(!((v65 + 32 > uint64.max) | (v65 + 32 < v65)), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = v65 + 32;
                                                    v48 = v68 = v65 + 32;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            revert(Panic(17));
                        } else {
                            MEM[0] = MEM[0];
                            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                            MEM[0] = MEM[0];
                            v69 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(0, this, v31).gas(msg.gas);
                            if (v69) {
                                if (v69) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(0 >= 0);
                                }
                                MEM[0] = MEM[0];
                                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                                MEM[0] = MEM[0];
                                v70 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v56).gas(msg.gas);
                                if (v70) {
                                    if (v70) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(0 >= 0);
                                    }
                                    MEM[0] = MEM[0];
                                    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                                    MEM[0] = MEM[0];
                                    v71 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).gas(msg.gas);
                                    if (v71) {
                                        if (v71) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(0 >= 0);
                                        }
                                        v72 = new bytes[](68);
                                        MEM[v72.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                        MEM[0] = MEM[0];
                                        MEM[v72 + 36] = 0x4444c5dc75cb358380d2e3de08a90;
                                        MEM[v72 + 68] = v56;
                                        require(!((v72 + 128 > uint64.max) | (v72 + 128 < v72)), Panic(65)); // failed memory allocation (too much memory)
                                        v73 = v72.length;
                                        MEM[0] = MEM[0];
                                        v74 = v75 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(0x4444c5dc75cb358380d2e3de08a90, v56).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v76 = v77 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v76 = v78 = new bytes[](RETURNDATASIZE());
                                            require(!((v78 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v78 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v78)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v78.data, 0, RETURNDATASIZE());
                                        }
                                        if (v75) {
                                            v74 = !MEM[v76];
                                            if (bool(MEM[v76])) {
                                                require(v76 + MEM[v76] - v76 >= 32);
                                                v74 = v79 = MEM[v76 + 32];
                                                require(!(bool(v79) - v79));
                                            }
                                        }
                                        require(v74, Error(21574));
                                        v36 = v80 = MEM[64];
                                        MEM[0] = MEM[0];
                                        v81 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        if (v81) {
                                            if (v81) {
                                                v46 = v82 = 4915;
                                                if (32 <= RETURNDATASIZE()) {
                                                    require(!((v80 + 32 > uint64.max) | (v80 + 32 < v80)), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = v80 + 32;
                                                    v48 = v83 = v80 + 32;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else if (v32) {
                        v84 = 0x3d0e(int128(v44 >> 128));
                        v85 = _SafeSub(v31, v84);
                        MEM[0] = MEM[0];
                        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                        MEM[0] = MEM[0];
                        v86 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v33]), address(this), v85).gas(msg.gas);
                        if (v86) {
                            if (v86) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= 0);
                            }
                        }
                    } else {
                        MEM[0] = MEM[0];
                        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                        MEM[0] = MEM[0];
                        v87 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, this, v31).gas(msg.gas);
                        if (v87) {
                            if (v87) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= 0);
                            }
                            MEM[0] = MEM[0];
                            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                            MEM[0] = MEM[0];
                            v88 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v56).gas(msg.gas);
                            if (v88) {
                                if (v88) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(0 >= 0);
                                }
                                v36 = v89 = MEM[64];
                                MEM[0] = MEM[0];
                                v90 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.settle().value(v56).gas(msg.gas);
                                if (v90) {
                                    if (!v90) {
                                        exit;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    v5 = v91 = 0;
                    v7 = v92 = 64;
                    v93, v94 = 0x3b3c(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                    require(v94 + v93 - v94 >= uint8.max + 1);
                    v11 = msg.data[v94];
                    require(!(address(v11) - v11));
                    require(!(bool(msg.data[v94 + 32]) - msg.data[v94 + 32]));
                    require(v94 + v93 - (v94 + 64) >= 160);
                    v95 = new struct(5);
                    require(!((v95 + 160 > uint64.max) | (v95 + 160 < v95)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(address(msg.data[v94 + 64]) - msg.data[v94 + 64]));
                    v95.word0 = msg.data[v94 + 64];
                    require(!(address(msg.data[v94 + 64 + 32]) - msg.data[v94 + 64 + 32]));
                    v95.word1 = msg.data[v94 + 64 + 32];
                    require(!(msg.data[v94 + 64 + 64] - uint24(msg.data[v94 + 64 + 64])));
                    v95.word2 = msg.data[v94 + 64 + 64];
                    require(!(msg.data[v94 + 64 + 96] - int24(msg.data[v94 + 64 + 96])));
                    v95.word3 = msg.data[v94 + 64 + 96];
                    require(!(address(msg.data[v94 + 64 + 128]) - msg.data[v94 + 64 + 128]));
                    v95.word4 = msg.data[v94 + 64 + 128];
                    require(!(bool(msg.data[v94 + 224]) - msg.data[v94 + 224]));
                    if (v91 == amount0Delta > v91) {
                        v96 = v97 = 0x3d0e(amount1Delta);
                    } else {
                        v96 = v98 = 0x3d0e(amount0Delta);
                    }
                    if (v91 == msg.data[v94 + 32]) {
                        MEM[0] = MEM[0];
                        v99 = new struct(8);
                        v99.word1 = 2;
                        v99.word2 = address(v95.word0);
                        v99.word3 = address(v95.word1);
                        v99.word4 = uint24(v95.word2);
                        v99.word5 = int24(v95.word3);
                        v99.word6 = address(v95.word4);
                        v99.word7 = bool(msg.data[v94 + 224]);
                        v99.word0 = 224;
                        require(!((v99 + (uint8.max + 1) > uint64.max) | (v99 + (uint8.max + 1) < v99)), Panic(65)); // failed memory allocation (too much memory)
                        v18 = v100 = MEM[v92];
                        MEM[v100] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v100 + 4] = msg.sender;
                        MEM[v100 + 4 + 32] = bool(msg.data[v94 + 32]);
                        MEM[v100 + 4 + 64] = v96;
                        MEM[v100 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                        MEM[v100 + 4 + 128] = 160;
                        MEM[v100 + 4 + 160] = v99.word0.length;
                        MCOPY(v100 + 4 + 160 + 32, v99.data, v99.word0.length);
                        MEM[32 + (v99.word0.length + (v100 + 4 + 160))] = 0;
                        v20 = v101 = uint8(-32) + (v100 + 4 + 160) + 32;
                    } else {
                        v102 = new struct(8);
                        v102.word1 = 2;
                        v102.word2 = address(v95.word0);
                        v102.word3 = address(v95.word1);
                        v102.word4 = uint24(v95.word2);
                        v102.word5 = int24(v95.word3);
                        v102.word6 = address(v95.word4);
                        v102.word7 = bool(msg.data[v94 + 224]);
                        v102.word0 = 224;
                        require(!((v102 + (uint8.max + 1) > uint64.max) | (v102 + (uint8.max + 1) < v102)), Panic(65)); // failed memory allocation (too much memory)
                        v18 = v103 = MEM[v92];
                        MEM[v103] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v103 + 4] = msg.sender;
                        MEM[v103 + 4 + 32] = bool(msg.data[v94 + 32]);
                        MEM[v103 + 4 + 64] = v96;
                        MEM[v103 + 4 + 96] = address(0x1000276a4);
                        MEM[v103 + 4 + 128] = 160;
                        MEM[v103 + 4 + 160] = v102.word0.length;
                        MCOPY(v103 + 4 + 160 + 32, v102.data, v102.word0.length);
                        MEM[32 + (v102.word0.length + (v103 + 4 + 160))] = 0;
                        v20 = v104 = uint8(-32) + (v103 + 4 + 160) + 32;
                    }
                }
                v105 = address(v11).call(MEM[v16dbb0x1d1_0x1:v16dbb0x1d1_0x1 + v2526V0x3e15V0x17155 - v16dbb0x1d1_0x1], MEM[v16dbb0x1d1_0x1:v16dbb0x1d1_0x1 + vd7d_0x6]).value(v5).gas(msg.gas);
                if (v105) {
                    if (v105) {
                        v106 = v107 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v106 = RETURNDATASIZE();
                        }
                        require(!((v18 + (v106 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (v106 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v18 + (v106 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v18 + v106 - v18 >= 64);
                        exit;
                    } else {
                        exit;
                    }
                }
            } else {
                v108 = v109 = 3150;
                v110 = v111 = 0;
                v112 = v113 = 0x16cf5;
                v114, v115 = 0x3b3c(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                require(v115 + v114 - v115 >= uint8.max + 1);
                require(v115 + v114 - v115 >= 160);
                v116 = new struct(5);
                require(!((v116 + 160 > uint64.max) | (v116 + 160 < v116)), Panic(65)); // failed memory allocation (too much memory)
                require(!(address(msg.data[v115]) - msg.data[v115]));
                v116.word0 = msg.data[v115];
                require(!(address(msg.data[v115 + 32]) - msg.data[v115 + 32]));
                v116.word1 = msg.data[v115 + 32];
                require(!(msg.data[v115 + 64] - uint24(msg.data[v115 + 64])));
                v116.word2 = msg.data[v115 + 64];
                require(!(msg.data[v115 + 96] - int24(msg.data[v115 + 96])));
                v116.word3 = msg.data[v115 + 96];
                require(!(address(msg.data[v115 + 128]) - msg.data[v115 + 128]));
                v116.word4 = msg.data[v115 + 128];
                require(!(bool(msg.data[v115 + 160]) - msg.data[v115 + 160]));
                require(!(address(msg.data[v115 + 192]) - msg.data[v115 + 192]));
                require(!(bool(msg.data[v115 + 224]) - msg.data[v115 + 224]));
                if (v111 != amount0Delta > v111) {
                }
                v117 = v118 = MEM[64];
                MEM[v118 + 32] = 1;
                MEM[v118 + 32 + 32] = msg.sender;
                MEM[v118 + 32 + 64] = v4;
                MEM[v118 + 32 + 96] = address(v116.word0);
                MEM[v118 + 32 + 96 + 32] = address(v116.word1);
                MEM[v118 + 32 + 96 + 64] = uint24(v116.word2);
                MEM[v118 + 32 + 96 + 96] = int24(v116.word3);
                MEM[v118 + 32 + 96 + 128] = address(v116.word4);
                MEM[v118 + 32 + (uint8.max + 1)] = bool(msg.data[v115 + 160]);
                MEM[v118 + 32 + 288] = address(msg.data[v115 + 192]);
                MEM[v118 + 32 + 320] = bool(msg.data[v115 + 224]);
                v119 = v120 = 384;
                MEM[v118] = 352;
            }
        } else {
            v110 = v121 = 0;
            v108 = v122 = 3150;
            v112 = v123 = 0x16c47;
            v124, v125 = 0x3b3c(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
            require(v125 + v124 - v125 >= 192);
            require(v125 + v124 - v125 >= 160);
            v126 = new struct(5);
            require(!((v126 + 160 > uint64.max) | (v126 + 160 < v126)), Panic(65)); // failed memory allocation (too much memory)
            require(!(address(msg.data[v125]) - msg.data[v125]));
            v126.word0 = msg.data[v125];
            require(!(address(msg.data[v125 + 32]) - msg.data[v125 + 32]));
            v126.word1 = msg.data[v125 + 32];
            require(!(msg.data[v125 + 64] - uint24(msg.data[v125 + 64])));
            v126.word2 = msg.data[v125 + 64];
            require(!(msg.data[v125 + 96] - int24(msg.data[v125 + 96])));
            v126.word3 = msg.data[v125 + 96];
            require(!(address(msg.data[v125 + 128]) - msg.data[v125 + 128]));
            v126.word4 = msg.data[v125 + 128];
            require(!(bool(msg.data[v125 + 160]) - msg.data[v125 + 160]));
            if (v121 != amount0Delta > v121) {
            }
            v117 = v127 = MEM[64];
            MEM[v127 + 32] = 0;
            MEM[v127 + 32 + 32] = msg.sender;
            MEM[v127 + 32 + 64] = v4;
            MEM[v127 + 32 + 96] = address(v126.word0);
            MEM[v127 + 32 + 96 + 32] = address(v126.word1);
            MEM[v127 + 32 + 96 + 64] = uint24(v126.word2);
            MEM[v127 + 32 + 96 + 96] = int24(v126.word3);
            MEM[v127 + 32 + 96 + 128] = address(v126.word4);
            MEM[v127 + 32 + (uint8.max + 1)] = bool(msg.data[v125 + 160]);
            v119 = v128 = 320;
            MEM[v127] = 288;
        }
        require(!((v117 + (v119 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v117 + (v119 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v117)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v117 + (v119 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        // Unknown jump to Block ['0x16c47', '0x16cf5']. Refer to 3-address code (TAC);
        v129 = v130 = MEM[64];
        MEM[v130] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
        v131 = v132 = v130 + 4;
        MEM[v131] = 32;
        MEM[v131 + 32] = MEM[v117];
        MCOPY(v131 + 32 + 32, 32 + v117, MEM[v117]);
        MEM[32 + (MEM[v117] + (v131 + 32))] = 0;
        MEM[0] = MEM[0];
        v133 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.call(MEM[v16ca1_0x1:v16ca1_0x1 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v39a20x1d1_0x0] + v253d0x1d1_0x0 + 32 + 32 - v16ca1_0x1], MEM[v16ca1_0x1:v16ca1_0x1 + vc4e_0x3]).value(v110).gas(msg.gas);
        if (v133) {
            if (v133) {
                RETURNDATACOPY(v129, 0, RETURNDATASIZE());
                require(!((v129 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v129 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v129)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v129 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v134 = 0x42cd(v129, v129 + RETURNDATASIZE());
                exit;
            } else {
                exit;
            }
        }
        v129 = v135 = MEM[64];
        MEM[v135] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
        v131 = v136 = v135 + 4;
        // Unknown jump to Block 0x253d0x1d1. Refer to 3-address code (TAC);
        revert(MEM[64], RETURNDATASIZE());
    } else if (0 == amount0Delta > 0) {
        0x4921(msg.sender, amount1Delta);
        exit;
    } else {
        0x4921(msg.sender, amount0Delta);
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
    v0 = 0x3ef4(varg11);
    if (!v0) {
        v1 = v2 = 0xfffff & varg11 >> 88;
        if (!varg5) {
            v3 = v4 = MEM[64];
            v5 = address(varg4).token1().gas(msg.gas);
            if (v5) {
                v6 = v7 = 0;
                if (v5) {
                    v8 = v9 = 14601;
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
                    v8 = v15 = 14519;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v12 + 32 > uint64.max) | (v12 + 32 < v12)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v12 + 32;
                        v10 = v16 = v12 + 32;
                    }
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
        if (!v17) {
            MEM[0] = MEM[0];
            if (address(v6) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v6 = v18 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v6 = v19 = 0;
        }
        if (!v17) {
            MEM[0] = MEM[0];
            if (address(v6) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v6 = v20 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        }
        v21 = 0x3a2a(v1);
        v22 = 0x39d8();
        v22.word0 = address(v6);
        v22.word1 = address(v6);
        v22.word2 = uint24(v21);
        v22.word3 = int24(v1);
        v22.word4 = address(v23);
        v23 = v24 = 0x39c9();
        v24.word0 = 0;
        v24.word1 = 0;
        v24.word2 = v22;
        v24.word3 = bool(v1);
        v1 = v25 = 13587;
        v26 = new struct(3);
        v26.word1 = keccak256(MEM[v34e8_0x0.word2:v34e8_0x0.word2 + 160]);
        v26.word2 = 6;
        v26.word0 = 64;
        require(!((v26 + 96 > uint64.max) | (v26 + 96 < v26)), Panic(65)); // failed memory allocation (too much memory)
        v27 = v26.word0.length;
        v28 = v29 = keccak256(keccak256(MEM[v34e8_0x0.word2:v34e8_0x0.word2 + 160]), 6);
        v30 = v31 = MEM[64];
        MEM[0] = MEM[0];
        v32 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v29).gas(msg.gas);
        if (v32) {
            v23 = v33 = 32;
            v34 = v35 = 16781;
            v36 = v37 = 0;
            if (v32) {
                v38 = v39 = 16926;
                if (v33 <= RETURNDATASIZE()) {
                    require(!((v31 + 32 > uint64.max) | (v31 + 32 < v31)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v31 + 32;
                    v40 = v41 = v31 + v33;
                }
            }
            MEM[v23] = address(v36);
            require(v28 <= v28 + 3, Panic(17)); // arithmetic overflow or underflow
            v30 = v42 = MEM[64];
            MEM[0] = MEM[0];
            v43 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v28 + 3).gas(msg.gas);
            if (v43) {
                v28 = v44 = uint128.max;
                v34 = v45 = 32;
                v23 = v46 = 0x19774;
                v36 = v47 = 0;
                if (v43) {
                    v38 = 16897;
                    if (v45 <= RETURNDATASIZE()) {
                        require(!((v42 + 32 > uint64.max) | (v42 + 32 < v42)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v42 + 32;
                        v40 = v48 = v42 + v45;
                    }
                }
            }
            MEM[v23 + v34] = uint128(v36 & v28);
            v1 = v49 = 0xfffff & v1 >> 108;
            v1 = v50 = 0x39c9();
            v50.word0 = 0;
            v50.word1 = 0;
            v50.word2 = address(v24 + 96);
            v17 = v51 = v50 + 96;
            v50.word3 = bool(v1);
            0x40be(v50);
            v52 = 0x40dc(address(v50.word2));
            v50.word1 = uint128(v52);
            if (!v1) {
                v3 = v53 = MEM[64];
                v54 = address(v24 + 96).token0().gas(msg.gas);
                if (v54) {
                    v6 = v55 = 0;
                    if (v54) {
                        v8 = v56 = 14376;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v53 + 32 > uint64.max) | (v53 + 32 < v53)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v53 + 32;
                            v10 = v57 = v53 + 32;
                        }
                    }
                }
            } else {
                v3 = v58 = MEM[64];
                v59 = address(v24 + 96).token1().gas(msg.gas);
                if (v59) {
                    v6 = v60 = 0;
                    if (v59) {
                        v8 = v61 = 14295;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v58 + 32 > uint64.max) | (v58 + 32 < v58)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v58 + 32;
                            v10 = v62 = v58 + 32;
                        }
                    }
                }
            }
            require(!((v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v40 = v63 = v30 + RETURNDATASIZE();
            require(v40 - v30 >= 32);
            v36 = v64 = MEM[v30];
            // Unknown jump to Block ['0x4201B0x350a', '0x421eB0x350a']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x41daB0x350a. Refer to 3-address code (TAC);
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        require(!((v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v10 = v3 + RETURNDATASIZE();
        require(v10 - v3 >= 32);
        v6 = MEM[v3];
        require(!(address(v6) - v6));
        // Unknown jump to Block ['0x37d7', '0x3828', '0x38b7', '0x3909']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x347e. Refer to 3-address code (TAC);
        if (!v1) {
            if (address(v6) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v6 = v65 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v6 = v66 = 0;
        }
        if (!v1) {
            if (address(v6) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v67, v6 = v68 = 0x1c82(v6, 0x19342);
                v69 = v70 = uint24(v67);
                v71 = v72 = 0x39d8();
            } else {
                MEM[0] = MEM[0];
                v73 = 0x3a2a(v1);
                v6 = v74 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                v69 = v75 = uint24(v73);
                v71 = v76 = 0x39d8();
            }
        } else {
            v77 = 0x3a2a(v1);
            v69 = v78 = uint24(v77);
            v71 = v79 = 0x39d8();
        }
        MEM[v71] = address(v6);
        MEM[v71 + 32] = address(v6);
        MEM[v71 + 64] = uint24(v69);
        MEM[v71 + 96] = int24(v23);
        MEM[v71 + 128] = address(v1);
        v1 = v80 = 0x39c9();
        v80.word0 = 0;
        v80.word1 = 0;
        v80.word2 = v71;
        v1 = v81 = v80 + 96;
        v80.word3 = bool(v1);
        v82 = v83 = 13889;
        v84 = new struct(3);
        v84.word1 = keccak256(MEM[v361b_0x0.word2:v361b_0x0.word2 + 160]);
        v84.word2 = 6;
        v84.word0 = 64;
        require(!((v84 + 96 > uint64.max) | (v84 + 96 < v84)), Panic(65)); // failed memory allocation (too much memory)
        v85 = v84.word0.length;
        v86 = v87 = keccak256(keccak256(MEM[v361b_0x0.word2:v361b_0x0.word2 + 160]), 6);
        v88 = v89 = MEM[64];
        v90 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v87).gas(msg.gas);
        if (v90) {
            v1 = v91 = 32;
            v92 = v93 = 16781;
            v94 = v95 = 0;
            if (v90) {
                v96 = v97 = 16926;
                if (v91 <= RETURNDATASIZE()) {
                    require(!((v89 + 32 > uint64.max) | (v89 + 32 < v89)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v89 + 32;
                    v98 = v99 = v89 + v91;
                }
            }
            MEM[v1] = address(v94);
            require(v86 <= v86 + 3, Panic(17)); // arithmetic overflow or underflow
            v88 = v100 = MEM[64];
            MEM[0] = MEM[0];
            v101 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v86 + 3).gas(msg.gas);
            if (v101) {
                v86 = v102 = uint128.max;
                v92 = v103 = 32;
                v1 = v104 = 0x19774;
                v94 = v105 = 0;
                if (v101) {
                    v96 = 16897;
                    if (v103 <= RETURNDATASIZE()) {
                        require(!((v100 + 32 > uint64.max) | (v100 + 32 < v100)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v100 + 32;
                        v98 = v106 = v100 + v103;
                    }
                }
            }
            MEM[v1 + v92] = uint128(v94 & v86);
            v107 = v108 = MEM[64];
            v109 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v109) {
                v1 = v110 = 13962;
                v111 = v112 = 0x18fe1;
                v113 = v114 = 0;
                if (v109) {
                    v115 = v116 = 2326;
                    v117 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x91c0x1ef. Refer to 3-address code (TAC);
                    }
                } else {
                    v118 = v119 = this.balance;
                }
                require(!((v107 + (v117 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v107 + (v117 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v107)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v107 + (v117 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v120 = v107 + v117;
                require(v120 - v107 >= 32);
                v113 = MEM[v107];
                // Unknown jump to Block ['0x4f000x1ef', '0x9160x1ef']. Refer to 3-address code (TAC);
                v118 = this.balance;
                v121 = _SafeAdd(v113, this.balance);
                v122 = _SafeSub(v121, v1);
                if (!v1) {
                    v123 = _SafeSub(v1, msg.gas);
                    v124 = 0x3a74(v123);
                    v125 = _SafeMul(v82, v124);
                    require(v125 < v122, Error(52));
                    v126 = 0x3a74(msg.gas);
                    require(v126 >= msg.gas, Error(13665));
                } else {
                    v127 = _SafeSub(v1, msg.gas);
                    v128 = 0x3a83(v127);
                    v129 = _SafeMul(v82, v128);
                    require(v129 < v122, Error(52));
                    v130 = _SafeSub(v122, v129);
                    require(v1 <= 1000);
                    v131 = _SafeMul(v130, v1);
                    v132 = _SafeSub(v130, v131 / 1000);
                    if (this.balance <= v131 / 1000) {
                        MEM[0] = MEM[0];
                        v133 = 0x3a3c(v113);
                        0x5007(v133, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v131 / 1000) {
                        v134 = block.coinbase.call().value(v131 / 1000).gas(10000);
                    }
                    v135 = 0x3a83(msg.gas);
                    require(v135 >= msg.gas, Error(13666));
                    // Unknown jump to Block 0x198490x1ef. Refer to 3-address code (TAC);
                }
                // Unknown jump to Block ['0x1902f', '0x19186']. Refer to 3-address code (TAC);
                exit;
                exit;
                v117 = v136 = RETURNDATASIZE();
                // Unknown jump to Block 0x9040x1ef. Refer to 3-address code (TAC);
                v1 = v137 = v113 + v118;
                require(v113 <= v137, Panic(17)); // arithmetic overflow or underflow
                v1 = v138 = 17005;
                v1 = v139 = 17010;
                if (0 == v1) {
                    v140 = v141 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                } else {
                    v140 = address(MEM[v1]);
                }
                if (!v17) {
                    v1 = v142 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                } else {
                    v1 = v143 = address(MEM[v1]);
                }
                if (!v82) {
                    v1 = v144 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                } else {
                    v1 = v145 = address(MEM[v1]);
                }
                v1 = v146 = uint96.max + 1;
                while (1) {
                    v147 = v140 * v1;
                    v148 = v140 * v1 % uint256.max;
                    if (uint96.max + 1 <= v148 - v147 - (v148 < v147)) {
                        break;
                    } else {
                        if (v148 - v147 == v148 < v147) {
                            v140 = v147 >> 96;
                            // Unknown jump to Block ['0x426d0x1ef', '0x42720x1ef']. Refer to 3-address code (TAC);
                        } else {
                            v149 = v140 * v1 % (uint96.max + 1);
                            v140 = v147 - v149 >> 96 | v148 - v147 - (v148 < v147) - (v149 > v147) << 160;
                            // Unknown jump to Block ['0x426d0x1ef', '0x42720x1ef']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v140 <= v1) {
                    v17 = v150 = 0x19186;
                    v151 = v152 = 7116;
                    v153 = v154 = 0x191a7;
                    v155 = v156 = 14099;
                    v157 = v158 = 0x1925a;
                    MEM[v1] = bool(!MEM[v1]);
                    if (bool(MEM[v1])) {
                        v159 = v160 = 0x1789a;
                        v161 = address(MEM[v1]) >> 48;
                    } else {
                        v159 = v162 = 0x1765e;
                        v163 = v164 = 7087;
                        v165 = v166 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v167 = address(MEM[v1]) >> 48;
                        // Unknown jump to Block 0x3a9f0x1ef. Refer to 3-address code (TAC);
                    }
                } else {
                    v17 = v168 = 0x1902f;
                    v151 = v169 = 6815;
                    v153 = v170 = 0x19050;
                    v155 = v171 = 13997;
                    v157 = v172 = 0x19096;
                    if (bool(MEM[v1])) {
                        v159 = v173 = 0x17542;
                        v161 = v174 = address(MEM[v1]) >> 48;
                    } else {
                        v159 = v175 = 0x1730b;
                        v163 = v176 = 6796;
                        v165 = v177 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v167 = v178 = address(MEM[v1]) >> 48;
                    }
                }
                require(v167, Panic(18)); // division by zero
                v161 = v179 = v165 / v167;
                // Unknown jump to Block ['0x1a8c0x1ef', '0x1baf0x1ef']. Refer to 3-address code (TAC);
                MEM[v1] = address(v161);
                // Unknown jump to Block ['0x1765e0x1ef', '0x1789a0x1ef']. Refer to 3-address code (TAC);
                MEM[v1] = bool(!MEM[v1]);
                v180 = bool(MEM[v1]);
                if (bool(v180)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    MEM[v1] = bool(!MEM[v1]);
                    v181 = v182 = bool(MEM[v1]);
                    // Unknown jump to Block 0x1925a. Refer to 3-address code (TAC);
                } else {
                    v183 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v184 = _SafeDiv(v183, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v184);
                    MEM[v1] = bool(!MEM[v1]);
                    v181 = bool(MEM[v1]);
                }
                if (bool(v181)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v185 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v186 = _SafeDiv(v185, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v186);
                }
                MEM[v1] = bool(!MEM[v1]);
                v180 = v187 = bool(MEM[v1]);
                // Unknown jump to Block 0x191a7. Refer to 3-address code (TAC);
                MEM[v1] = address(v161);
                // Unknown jump to Block ['0x1730b0x1ef', '0x175420x1ef']. Refer to 3-address code (TAC);
                v188 = bool(MEM[v1]);
                if (bool(v188)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    v189 = v190 = bool(MEM[v1]);
                    // Unknown jump to Block 0x19096. Refer to 3-address code (TAC);
                } else {
                    v191 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v192 = _SafeDiv(v191, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v192);
                    v189 = bool(MEM[v1]);
                }
                if (bool(v189)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v193 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v194 = _SafeDiv(v193, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v194);
                }
                v195 = address(MEM[v1]);
                v196 = v1 * address(MEM[v1]);
                v197 = uint128(MEM[v1 + 32]);
                v198 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48;
                v199 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * v195 + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) << 48 << 48);
                v200 = 0x4fc1((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * v197 % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * v197 - ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * v197 % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * v197) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 - ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195))) * v196) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * v197, (v1 * address(MEM[v1]) * address(MEM[v1]) * v195 - 0x3b9aca00000000000000000000000000000000000000) * (v1 * v195) * v196 * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * v197, (v199 * v198 + (uint128(MEM[v1 + 32]) << 252) * v197) * v1 % uint256.max - (v199 * v198 + (uint128(MEM[v1 + 32]) << 252) * v197) * v1 - ((v199 * v198 + (uint128(MEM[v1 + 32]) << 252) * v197) * v1 % uint256.max < (v199 * v198 + (uint128(MEM[v1 + 32]) << 252) * v197) * v1) + (v199 * v198 % uint256.max - v199 * v198 - (v199 * v198 % uint256.max < v199 * v198) + ((uint128(MEM[v1 + 32]) << 252) * v197 % uint256.max - (uint128(MEM[v1 + 32]) << 252) * v197 - ((uint128(MEM[v1 + 32]) << 252) * v197 % uint256.max < (uint128(MEM[v1 + 32]) << 252) * v197) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max < uint128(MEM[v1 + 32]) << 252) + uint128(MEM[v1 + 32])) * v197) + (v199 * v198 + (uint128(MEM[v1 + 32]) << 252) * v197 < v199 * v198)) * v1, (v199 * v198 + (uint128(MEM[v1 + 32]) << 252) * v197) * v1);
                v201 = MEM[v1 + 64];
                v202 = new struct(17);
                v202.word1 = 11;
                v202.word2 = v200;
                v202.word3 = address(MEM[v201]);
                v202.word4 = address(MEM[v201 + 32]);
                v202.word5 = uint24(MEM[v201 + 64]);
                v202.word6 = int24(MEM[v201 + 96]);
                v202.word7 = address(MEM[128 + v201]);
                v202.word8 = bool(MEM[v1 + 96]);
                v202.word9 = address(MEM[v1 + 64]);
                v202.word10 = bool(MEM[v1 + 96]);
                v202.word11 = address(MEM[MEM[v1 + 64]]);
                v202.word12 = address(MEM[MEM[v1 + 64] + 32]);
                v202.word13 = uint24(MEM[MEM[v1 + 64] + 64]);
                v202.word14 = int24(MEM[MEM[v1 + 64] + 96]);
                v202.word15 = address(MEM[128 + MEM[v1 + 64]]);
                v202.word16 = bool(MEM[v1 + 96]);
                v202.word0 = 512;
                require(!((v202 + 544 > uint64.max) | (v202 + 544 < v202)), Panic(65)); // failed memory allocation (too much memory)
                v203 = new bytes[](v202.word0.length);
                MCOPY(v203.data, v202.data, v202.word0.length);
                v203[v202.word0.length] = 0;
                v204 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.unlock(v203).gas(msg.gas);
                if (v204) {
                    v1 = v205 = 0x19849;
                    if (v204) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v206 = 0x42cd(MEM[64], MEM[64] + RETURNDATASIZE());
                    }
                    v1 = v207 = 0x3ff & v1 >> 50;
                    v1 = v208 = uint24(v1 >> 60);
                    v82 = 0x3ffffffffffff & v1;
                    v107 = MEM[64];
                    MEM[0] = MEM[0];
                    v209 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                    if (v209) {
                        v113 = v210 = 0;
                        if (v209) {
                            v111 = v211 = 19908;
                            v115 = v212 = 20224;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v107 + 32 > uint64.max) | (v107 + 32 < v107)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v107 + 32;
                                v120 = v213 = v107 + 32;
                            }
                        }
                    }
                }
                v188 = v214 = bool(MEM[v1]);
                // Unknown jump to Block 0x19050. Refer to 3-address code (TAC);
                revert();
            }
            require(!((v88 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v88 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v88)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v88 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v98 = v215 = v88 + RETURNDATASIZE();
            require(v98 - v88 >= 32);
            v94 = v216 = MEM[v88];
            // Unknown jump to Block ['0x4201B0x361c', '0x421eB0x361c']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x41daB0x361c. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        // Unknown jump to Block 0x35b3. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x3480. Refer to 3-address code (TAC);
    } else {
        exit;
    }
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
    if (uint8(rawData.word1)) {
        if (uint8(rawData.word1) - 1) {
            require(uint8(rawData.word1) - 2);
            require(uint8(rawData.word1) - 3);
            require(uint8(rawData.word1) - 4);
            require(uint8(rawData.word1) - 5);
            require(uint8(rawData.word1) - 6);
            require(uint8(rawData.word1) - 7);
            require(uint8(rawData.word1) - 8);
            require(uint8(rawData.word1) - 9);
            require(uint8(rawData.word1) - 10);
            if (uint8(rawData.word1) - 11) {
                if (uint8(rawData.word1) - 12) {
                    require(uint8(rawData.word1) - 13);
                    require(uint8(rawData.word1) - 14);
                    require(uint8(rawData.word1) - 15);
                    require(uint8(rawData.word1) - 16);
                    require(uint8(rawData.word1) - 17);
                    require(18 - uint8(rawData.word1));
                    revert(Error(0x3f3f3f75));
                } else {
                    v1 = v2 = 12488;
                    v3 = v4 = 32;
                    v5, v6 = 0x3b3c(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
                    require(v6 + v5 - v6 >= 352);
                    require(v6 + v5 - (v6 + 32) >= 160);
                    v7 = new struct(5);
                    require(!((v7 + 160 > uint64.max) | (v7 + 160 < v7)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(address(msg.data[v6 + 32]) - msg.data[v6 + 32]));
                    v7.word0 = msg.data[v6 + 32];
                    require(!(address(msg.data[v6 + 32 + 32]) - msg.data[v6 + 32 + 32]));
                    v7.word1 = msg.data[v6 + 32 + 32];
                    require(!(msg.data[v6 + 32 + 64] - uint24(msg.data[v6 + 32 + 64])));
                    v7.word2 = msg.data[v6 + 32 + 64];
                    require(!(msg.data[v6 + 32 + 96] - int24(msg.data[v6 + 32 + 96])));
                    v7.word3 = msg.data[v6 + 32 + 96];
                    require(!(address(msg.data[v6 + 32 + 128]) - msg.data[v6 + 32 + 128]));
                    v7.word4 = msg.data[v6 + 32 + 128];
                    v7 = v8 = msg.data[v6 + 192];
                    require(!(bool(v8) - v8));
                    v7 = v9 = msg.data[v6 + 224];
                    require(!(address(v9) - v9));
                    v7 = v10 = msg.data[v6 + (uint8.max + 1)];
                    require(!(bool(v10) - v10));
                    v7 = v11 = msg.data[v6 + 288];
                    require(!(address(v11) - v11));
                    v7 = v12 = msg.data[v6 + 320];
                    require(!(bool(v12) - v12));
                    if (!v8) {
                        MEM[0] = MEM[0];
                        v13 = 0x39e7();
                        v13.word0 = bool(v8);
                        v13.word1 = msg.data[v6];
                        v13.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                        v7 = v14 = MEM[64];
                        MEM[v14] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                        v15 = v16 = v14 + 4;
                    } else {
                        v13 = v17 = 0x39e7();
                        v17.word0 = bool(v8);
                        v17.word1 = msg.data[v6];
                        v17.word2 = address(0x1000276a4);
                        v7 = v18 = MEM[64];
                        MEM[v18] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                        v15 = v19 = v18 + 4;
                    }
                }
            } else {
                v1 = v20 = 11854;
                v21, v22 = 0x3b3c(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
                require(v22 + v21 - v22 >= 480);
                v7 = v23 = msg.data[v22];
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
                require(!(address(v26) - v26));
                v7 = v27 = msg.data[v22 + (uint8.max + 1)];
                require(!(bool(v27) - v27));
                require(v22 + v21 - (v22 + 288) >= 160);
                v7 = v28 = new struct(5);
                require(!((v28 + 160 > uint64.max) | (v28 + 160 < v28)), Panic(65)); // failed memory allocation (too much memory)
                require(!(address(msg.data[v22 + 288]) - msg.data[v22 + 288]));
                v28.word0 = msg.data[v22 + 288];
                require(!(address(msg.data[v22 + 288 + 32]) - msg.data[v22 + 288 + 32]));
                v28.word1 = msg.data[v22 + 288 + 32];
                require(!(msg.data[v22 + 288 + 64] - uint24(msg.data[v22 + 288 + 64])));
                v28.word2 = msg.data[v22 + 288 + 64];
                require(!(msg.data[v22 + 288 + 96] - int24(msg.data[v22 + 288 + 96])));
                v28.word3 = msg.data[v22 + 288 + 96];
                require(!(address(msg.data[v22 + 288 + 128]) - msg.data[v22 + 288 + 128]));
                v28.word4 = msg.data[v22 + 288 + 128];
                v7 = v29 = msg.data[v22 + 448];
                require(!(bool(v29) - v29));
                if (!v25) {
                    v3 = v30 = 32;
                    MEM[0] = MEM[0];
                    v31 = v32 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v3 = v33 = 32;
                    v31 = v34 = 0x1000276a4;
                }
                v13 = v35 = 0x39e7();
                v35.word0 = bool(v25);
                v35.word1 = v23;
                v35.word2 = address(v31);
                v7 = v36 = MEM[64];
                MEM[v36] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                v15 = v37 = v36 + 4;
            }
        } else {
            v3 = v38 = 32;
            v1 = v39 = 10767;
            v40, v41 = 0x3b3c(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
            require(v41 + v40 - v41 >= 320);
            require(!(address(msg.data[v41]) - msg.data[v41]));
            require(v41 + v40 - (v41 + 64) >= 160);
            v7 = v42 = new struct(5);
            require(!((v42 + 160 > uint64.max) | (v42 + 160 < v42)), Panic(65)); // failed memory allocation (too much memory)
            require(!(address(msg.data[v41 + 64]) - msg.data[v41 + 64]));
            v42.word0 = msg.data[v41 + 64];
            require(!(address(msg.data[v41 + 64 + 32]) - msg.data[v41 + 64 + 32]));
            v42.word1 = msg.data[v41 + 64 + 32];
            require(!(msg.data[v41 + 64 + 64] - uint24(msg.data[v41 + 64 + 64])));
            v42.word2 = msg.data[v41 + 64 + 64];
            require(!(msg.data[v41 + 64 + 96] - int24(msg.data[v41 + 64 + 96])));
            v42.word3 = msg.data[v41 + 64 + 96];
            require(!(address(msg.data[v41 + 64 + 128]) - msg.data[v41 + 64 + 128]));
            v42.word4 = msg.data[v41 + 64 + 128];
            v7 = v43 = msg.data[v41 + 224];
            require(!(bool(v43) - v43));
            v7 = v44 = msg.data[v41 + (uint8.max + 1)];
            require(!(address(v44) - v44));
            v7 = v45 = msg.data[v41 + 288];
            require(!(bool(v45) - v45));
            v7 = v46 = address(msg.data[v41]);
            if (!v43) {
                MEM[0] = MEM[0];
                v13 = v47 = 0x39e7();
                v47.word0 = bool(v43);
                v47.word1 = msg.data[v41 + 32];
                v47.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                v7 = v48 = MEM[64];
                MEM[v48] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                v15 = v49 = v48 + 4;
            } else {
                v13 = v50 = 0x39e7();
                v50.word0 = bool(v43);
                v50.word1 = msg.data[v41 + 32];
                v50.word2 = address(0x1000276a4);
                v7 = v51 = MEM[64];
                MEM[v51] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                v15 = v52 = v51 + 4;
            }
        }
    } else {
        v3 = v53 = 32;
        v1 = v54 = 9733;
        v55, v56 = 0x3b3c(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
        require(v56 + v55 - v56 >= uint8.max + 1);
        require(!(address(msg.data[v56]) - msg.data[v56]));
        require(v56 + v55 - (v56 + 64) >= 160);
        v7 = v57 = new struct(5);
        require(!((v57 + 160 > uint64.max) | (v57 + 160 < v57)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v56 + 64]) - msg.data[v56 + 64]));
        v57.word0 = msg.data[v56 + 64];
        require(!(address(msg.data[v56 + 64 + 32]) - msg.data[v56 + 64 + 32]));
        v57.word1 = msg.data[v56 + 64 + 32];
        require(!(msg.data[v56 + 64 + 64] - uint24(msg.data[v56 + 64 + 64])));
        v57.word2 = msg.data[v56 + 64 + 64];
        require(!(msg.data[v56 + 64 + 96] - int24(msg.data[v56 + 64 + 96])));
        v57.word3 = msg.data[v56 + 64 + 96];
        require(!(address(msg.data[v56 + 64 + 128]) - msg.data[v56 + 64 + 128]));
        v57.word4 = msg.data[v56 + 64 + 128];
        v7 = v58 = msg.data[v56 + 224];
        require(!(bool(v58) - v58));
        v7 = v59 = address(msg.data[v56]);
        if (!v58) {
            MEM[0] = MEM[0];
            v13 = v60 = 0x39e7();
            v60.word0 = bool(v58);
            v60.word1 = msg.data[v56 + 32];
            v60.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
            v7 = v61 = MEM[64];
            MEM[v61] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v15 = v62 = v61 + 4;
        } else {
            v13 = v63 = 0x39e7();
            v63.word0 = bool(v58);
            v63.word1 = msg.data[v56 + 32];
            v63.word2 = address(0x1000276a4);
            v7 = v64 = MEM[64];
            MEM[v64] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v15 = v65 = v64 + 4;
        }
    }
    MEM[v15] = address(MEM[v7]);
    MEM[v15 + 32] = address(MEM[v7 + 32]);
    MEM[v15 + 64] = uint24(MEM[v7 + 64]);
    MEM[v15 + 96] = int24(MEM[v7 + 96]);
    MEM[v15 + 128] = address(MEM[128 + v7]);
    MEM[v15 + 160] = bool(MEM[v13]);
    MEM[v15 + 192] = MEM[v13 + 32];
    MEM[v15 + 224] = address(MEM[64 + v13]);
    MEM[v15 + (uint8.max + 1)] = 288;
    MEM[v15 + 288] = 0;
    // Unknown jump to Block ['0x2605', '0x2a0f', '0x2e4e', '0x30c8']. Refer to 3-address code (TAC);
    MEM[0] = MEM[0];
    v66 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.call(MEM[v3b78V0x3d2cV0x3083:v3b78V0x3d2cV0x3083 + v3c3b0x1f4_0x1 + 320 - v3b78V0x3d2cV0x3083], MEM[v3b78V0x3d2cV0x3083:v3b78V0x3d2cV0x3083 + v30c8_0x3]).gas(msg.gas);
    if (v66) {
        v67 = v68 = 0;
        if (v66) {
            v69 = v70 = 10638;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v71 = v72 = v7 + 32;
            }
        }
    }
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    revert(MEM[64], RETURNDATASIZE());
    if (!v7) {
        MEM[0] = MEM[0];
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v73 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v7]), address(v7), int128(v67 >> 128)).gas(msg.gas);
        if (v73) {
            if (v73) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            MEM[0] = MEM[0];
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            MEM[0] = MEM[0];
            v74 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7 + 32])).gas(msg.gas);
            if (v74) {
                v75 = v76 = 0x1893c;
                v77 = v78 = 0x18971;
                if (v74) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v79 = v80 = int128(v67);
            }
        }
    } else {
        MEM[0] = MEM[0];
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v81 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v7 + 32]), address(v7), int128(v67)).gas(msg.gas);
        if (v81) {
            if (v81) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            MEM[0] = MEM[0];
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            MEM[0] = MEM[0];
            v82 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7])).gas(msg.gas);
            if (v82) {
                v75 = v83 = 0x187fa;
                v77 = v84 = 0x1882f;
                if (v82) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v79 = v85 = v67 >> 128;
            }
        }
    }
    require(int128(v79) != int128.min, Panic(17)); // arithmetic overflow or underflow
    // Unknown jump to Block ['0x1882f', '0x18971']. Refer to 3-address code (TAC);
    v86 = v87 = int128(0 - int128(v79));
    v88 = v89 = address(MEM[v7]);
    if (address(v88)) {
        0x49c8(v86);
        v7 = v90 = MEM[64];
        MEM[0] = MEM[0];
        v91 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        if (v91) {
            if (v91) {
                // Unknown jump to Block 0x2829. Refer to 3-address code (TAC);
            }
        }
    } else {
        MEM[0] = MEM[0];
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        MEM[0] = MEM[0];
        v92 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v86).gas(msg.gas);
        if (v92) {
            if (v92) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            v7 = v93 = MEM[64];
            MEM[0] = MEM[0];
            v94 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.settle().value(v86).gas(msg.gas);
            if (v94) {
                if (v94) {
                    v69 = v95 = 10192;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v93 + 32 > uint64.max) | (v93 + 32 < v93)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v93 + 32;
                        v71 = v96 = v93 + 32;
                    }
                }
            }
        }
    }
    v86 = v97 = int128(0 - int128(v79));
    v88 = v98 = address(MEM[v7]);
    // Unknown jump to Block 0x2721. Refer to 3-address code (TAC);
    v69 = v99 = 10305;
    if (32 <= RETURNDATASIZE()) {
        require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v7 + 32;
        v71 = v100 = v7 + 32;
    }
    require(!((v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v71 = v7 + RETURNDATASIZE();
    require(v71 - v7 >= 32);
    v67 = MEM[v7];
    // Unknown jump to Block ['0x27d0', '0x2841', '0x298e', '0x2d4a', '0x304b', '0x3386']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2626. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2a30. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2e6f. Refer to 3-address code (TAC);
    v101 = new uint256[](MEM[96]);
    MCOPY(v101.data, 128, MEM[96]);
    MEM[32 + (MEM[96] + v101)] = 0;
    return v101;
    // Unknown jump to Block 0x27a7. Refer to 3-address code (TAC);
    MEM[0] = MEM[0];
    v102 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.call(MEM[v3b78V0x3d2cV0x3083:v3b78V0x3d2cV0x3083 + v3c3b0x1f4_0x1 + 320 - v3b78V0x3d2cV0x3083], MEM[v3b78V0x3d2cV0x3083:v3b78V0x3d2cV0x3083 + v30c8_0x3]).gas(msg.gas);
    if (v102) {
        v67 = v103 = 0;
        if (v102) {
            v69 = v104 = 11594;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v71 = v105 = v7 + 32;
            }
        }
    }
    if (!v7) {
        MEM[0] = MEM[0];
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v106 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v7]), address(v7), int128(v67 >> 128)).gas(msg.gas);
        if (v106) {
            if (v106) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            MEM[0] = MEM[0];
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            MEM[0] = MEM[0];
            v107 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7 + 32])).gas(msg.gas);
            if (v107) {
                v108 = v109 = 11133;
                v110 = v111 = 64;
                if (v107) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v112 = v113 = int128(v67);
            }
        }
    } else {
        MEM[0] = MEM[0];
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v114 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v7 + 32]), address(v7), int128(v67)).gas(msg.gas);
        if (v114) {
            if (v114) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            MEM[0] = MEM[0];
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            MEM[0] = MEM[0];
            v115 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7])).gas(msg.gas);
            if (v115) {
                v108 = v116 = 11133;
                v110 = v117 = 64;
                if (v115) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v112 = v118 = v67 >> 128;
            }
        }
    }
    if (!v7) {
        v119 = v120 = 0;
        MEM[0] = MEM[0];
        v121 = v122 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v119 = v123 = 0;
        v121 = v124 = 0x1000276a4;
    }
    v125 = v126 = MEM[v110];
    MEM[0] = MEM[0];
    v127 = new uint256[](0);
    v128 = address(v7).swap(0x4444c5dc75cb358380d2e3de08a90, bool(v7), int128(v112), address(v121), v127).value(v119).gas(msg.gas);
    if (v128) {
        if (v128) {
            v129 = v130 = 11234;
            if (64 <= RETURNDATASIZE()) {
                require(!((v126 + 64 > uint64.max) | (v126 + 64 < v126)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v126 + 64;
                v131 = v132 = v126 + 64;
            }
        }
    }
    v7 = v133 = MEM[64];
    MEM[0] = MEM[0];
    v134 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
    if (v134) {
        if (!v134) {
        }
    }
    require(!((v125 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v125 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v125)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v125 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v131 = v125 + RETURNDATASIZE();
    require(v131 - v125 >= 64);
    // Unknown jump to Block ['0x2be2', '0x2f73']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2823. Refer to 3-address code (TAC);
    MEM[0] = MEM[0];
    v135 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.call(MEM[v3b78V0x3d2cV0x3083:v3b78V0x3d2cV0x3083 + v3c3b0x1f4_0x1 + 320 - v3b78V0x3d2cV0x3083], MEM[v3b78V0x3d2cV0x3083:v3b78V0x3d2cV0x3083 + v30c8_0x3]).gas(msg.gas);
    if (v135) {
        v67 = v136 = 0;
        if (v135) {
            v69 = v137 = 12363;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v71 = v138 = v7 + 32;
            }
        }
    }
    if (!v7) {
        v139 = v140 = int128(v67);
        MEM[0] = MEM[0];
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v141 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7 + 32])).gas(msg.gas);
        if (v141) {
            v142 = v143 = 0x18ca3;
            v144 = v145 = 0;
            v146 = v147 = 0x18cd0;
            v148 = v149 = 64;
            if (v141) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
        }
    } else {
        v139 = v150 = v67 >> 128;
        MEM[0] = MEM[0];
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v151 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7])).gas(msg.gas);
        if (v151) {
            v142 = v152 = 0x18bc1;
            v144 = v153 = 0;
            v146 = v154 = 0x18bee;
            v148 = v155 = 64;
            if (v151) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
        }
    }
    if (v144 == v7) {
        MEM[0] = MEM[0];
        v156 = v157 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v156 = v158 = 0x1000276a4;
    }
    v159 = v160 = MEM[v148];
    MEM[v160 + 32] = 18;
    MEM[v160 + 32 + 32] = v7;
    MEM[v160 + 32 + 64] = bool(!address(MEM[v7]));
    MEM[v160 + 32 + 96] = address(v28.word0);
    MEM[v160 + 32 + 96 + 32] = address(MEM[v28 + 32]);
    MEM[v160 + 32 + 96 + 64] = uint24(MEM[v28 + 64]);
    MEM[v160 + 32 + 96 + 96] = int24(MEM[v28 + 96]);
    MEM[v160 + 32 + 96 + 128] = address(MEM[128 + v28]);
    MEM[v160 + 32 + (uint8.max + 1)] = bool(v7);
    // Unknown jump to Block ['0x18bc1', '0x18ca3']. Refer to 3-address code (TAC);
    v161 = v162 = 320;
    MEM[v160] = 288;
    require(!((v159 + (v161 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v159 + (v161 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v159)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v159 + (v161 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    // Unknown jump to Block ['0x18bee', '0x18cd0', '0x18dbe', '0x18ecb']. Refer to 3-address code (TAC);
    v125 = v163 = MEM[v148];
    MEM[v163] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[0] = MEM[0];
    MEM[v163 + 4] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v163 + 4 + 32] = bool(v7);
    MEM[v163 + 4 + 64] = int128(v139);
    MEM[v163 + 4 + 96] = address(v156);
    MEM[v163 + 4 + 128] = 160;
    MEM[v163 + 4 + 160] = MEM[v159];
    MCOPY(v163 + 4 + 160 + 32, 32 + v159, MEM[v159]);
    MEM[32 + (MEM[v159] + (v163 + 4 + 160))] = 0;
    v164 = v165 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v159]) + (v163 + 4 + 160) + 32;
    v166 = address(v7).call(MEM[v16dbb0x1f4_0x1:v16dbb0x1f4_0x1 + v2526V0x3cccV0x18ecb - v16dbb0x1f4_0x1], MEM[v16dbb0x1f4_0x1:v16dbb0x1f4_0x1 + v18ecb_0x5]).value(v144).gas(msg.gas);
    if (v166) {
        if (v166) {
            v129 = v167 = 12147;
            if (64 <= RETURNDATASIZE()) {
                require(!((v125 + 64 > uint64.max) | (v125 + 64 < v125)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v125 + 64;
                v131 = v168 = v125 + 64;
            }
        } else {
            // Unknown jump to Block 0x27a7. Refer to 3-address code (TAC);
        }
    }
    v125 = v169 = MEM[v148];
    MEM[v169] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[0] = MEM[0];
    MEM[v169 + 4] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v169 + 4 + 32] = bool(v7);
    MEM[v169 + 4 + 64] = int128(v139);
    MEM[v169 + 4 + 96] = address(v156);
    MEM[v169 + 4 + 128] = 160;
    MEM[v169 + 4 + 160] = MEM[v159];
    MCOPY(v169 + 4 + 160 + 32, 32 + v159, MEM[v159]);
    MEM[32 + (MEM[v159] + (v169 + 4 + 160))] = 0;
    v164 = v170 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v159]) + (v169 + 4 + 160) + 32;
    // Unknown jump to Block 0x2f3e. Refer to 3-address code (TAC);
    v125 = v171 = MEM[v148];
    MEM[v171] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[0] = MEM[0];
    MEM[v171 + 4] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v171 + 4 + 32] = bool(v7);
    MEM[v171 + 4 + 64] = int128(v139);
    MEM[v171 + 4 + 96] = address(v156);
    MEM[v171 + 4 + 128] = 160;
    MEM[v171 + 4 + 160] = MEM[v159];
    MCOPY(v171 + 4 + 160 + 32, 32 + v159, MEM[v159]);
    MEM[32 + (MEM[v159] + (v171 + 4 + 160))] = 0;
    v164 = v172 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v159]) + (v171 + 4 + 160) + 32;
    // Unknown jump to Block 0x2f3e. Refer to 3-address code (TAC);
    v125 = v173 = MEM[v148];
    MEM[v173] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[0] = MEM[0];
    MEM[v173 + 4] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v173 + 4 + 32] = bool(v7);
    MEM[v173 + 4 + 64] = int128(v139);
    MEM[v173 + 4 + 96] = address(v156);
    MEM[v173 + 4 + 128] = 160;
    MEM[v173 + 4 + 160] = MEM[v159];
    MCOPY(v173 + 4 + 160 + 32, 32 + v159, MEM[v159]);
    MEM[32 + (MEM[v159] + (v173 + 4 + 160))] = 0;
    v164 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v159]) + (v173 + 4 + 160) + 32;
    // Unknown jump to Block 0x2f3e. Refer to 3-address code (TAC);
    v161 = v174 = 320;
    MEM[v160] = 288;
    // Unknown jump to Block 0x39a20x1f4. Refer to 3-address code (TAC);
    MEM[0] = MEM[0];
    v175 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.call(MEM[v3b78V0x3d2cV0x3083:v3b78V0x3d2cV0x3083 + v3c3b0x1f4_0x1 + 320 - v3b78V0x3d2cV0x3083], MEM[v3b78V0x3d2cV0x3083:v3b78V0x3d2cV0x3083 + v30c8_0x3]).gas(msg.gas);
    if (v175) {
        v67 = v176 = 0;
        if (v175) {
            v69 = v177 = 13190;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v71 = v178 = v7 + 32;
            }
        }
    }
    if (!v7) {
        v139 = v179 = int128(v67);
        MEM[0] = MEM[0];
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v180 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v7]), address(this), int128(v67 >> 128)).gas(msg.gas);
        if (v180) {
            if (v180) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            MEM[0] = MEM[0];
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            MEM[0] = MEM[0];
            v181 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7 + 32])).gas(msg.gas);
            if (v181) {
                v148 = v182 = 64;
                v144 = v183 = 0;
                v146 = v184 = 0x18ecb;
                if (v181) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
    } else {
        v139 = v185 = v67 >> 128;
        MEM[0] = MEM[0];
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        MEM[0] = MEM[0];
        v186 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.take(address(MEM[v7 + 32]), address(this), int128(v67)).gas(msg.gas);
        if (v186) {
            if (v186) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            MEM[0] = MEM[0];
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            MEM[0] = MEM[0];
            v187 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.sync(address(MEM[v7])).gas(msg.gas);
            if (v187) {
                v148 = v188 = 64;
                v144 = v189 = 0;
                v146 = v190 = 0x18dbe;
                if (v187) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
    }
    if (v144 == v7) {
        MEM[0] = MEM[0];
        v156 = v191 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        v159 = MEM[v192];
        MEM[v159 + 32] = 19;
        MEM[v159 + 64] = address(v7);
        MEM[v159 + 96] = bool(v7);
        MEM[v159 + 128] = !address(MEM[v7]);
        v161 = v193 = 160;
        MEM[v159] = 128;
    } else {
        v156 = v194 = 0x1000276a4;
        v159 = v195 = MEM[v196];
        MEM[v195 + 32] = 19;
        MEM[v195 + 64] = address(v7);
        MEM[v195 + 96] = bool(v7);
        MEM[v195 + 128] = !address(MEM[v7]);
        v161 = v197 = 160;
        MEM[v195] = 128;
    }
}

function 0x871bba25(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, int24 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
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

function 0x4d7c481f(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    _unlockCallback = 1;
    v0 = 0x3ef4(varg8);
    if (!v0) {
        v1 = v2 = 0xfffff & varg8 >> 88;
        v1 = v3 = 0x39c9();
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = address(varg0);
        v3.word3 = bool(varg1);
        0x40be(v3);
        v4 = 0x40dc(address(v3.word2));
        v3.word1 = uint128(v4);
        v1 = v5 = 0xfffff & varg8 >> 108;
        if (!varg4) {
            if (!varg6) {
                v6 = v7 = MEM[64];
                v8 = address(varg5).token1().gas(msg.gas);
                if (v8) {
                    v1 = v9 = 0;
                    if (v8) {
                        v10 = v11 = 9215;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v7 + 32;
                            v12 = v13 = v7 + 32;
                        }
                    }
                }
            } else {
                v6 = v14 = MEM[64];
                v15 = address(varg5).token0().gas(msg.gas);
                if (v15) {
                    v1 = v16 = 0;
                    if (v15) {
                        v10 = v17 = 9133;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v14 + 32 > uint64.max) | (v14 + 32 < v14)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v14 + 32;
                            v12 = v18 = v14 + 32;
                        }
                    }
                }
            }
        } else if (!varg1) {
            v6 = v19 = MEM[64];
            v20 = address(varg0).token0().gas(msg.gas);
            if (v20) {
                v1 = v21 = 0;
                if (v20) {
                    v10 = v22 = 9043;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v19 + 32 > uint64.max) | (v19 + 32 < v19)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v19 + 32;
                        v12 = v23 = v19 + 32;
                    }
                }
            }
        } else {
            v6 = v24 = MEM[64];
            v25 = address(varg0).token1().gas(msg.gas);
            if (v25) {
                v1 = v26 = 0;
                if (v25) {
                    v10 = v27 = 8961;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v24 + 32 > uint64.max) | (v24 + 32 < v24)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v24 + 32;
                        v12 = v28 = v24 + 32;
                    }
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
        if (!v1) {
            if (0 == v1) {
                v6 = v29 = MEM[64];
                v30 = address(v31).token0().gas(msg.gas);
                if (v30) {
                    v1 = v32 = 0x184b0;
                    v1 = v33 = 0x184d9;
                    v31 = v34 = 0x18504;
                    v1 = v35 = 0x1852f;
                    v1 = v36 = 0x18556;
                    v1 = v37 = 0x18585;
                    v1 = v38 = 0;
                    if (!v30) {
                    }
                }
            } else {
                v6 = v39 = MEM[64];
                v40 = address(v31).token1().gas(msg.gas);
                if (v40) {
                    v1 = v41 = 0x183b4;
                    v1 = v42 = 0x183dd;
                    v31 = v43 = 0x18408;
                    v1 = v44 = 0x18433;
                    v1 = v45 = 0x1845a;
                    v1 = v46 = 0x18489;
                    v1 = v47 = 0;
                    if (!v40) {
                    }
                }
            }
        } else if (!v1) {
            v6 = v48 = MEM[64];
            v49 = address(v1).token1().gas(msg.gas);
            if (v49) {
                v1 = v50 = 0x18291;
                v1 = v51 = 0x182ba;
                v31 = v52 = 0x182e5;
                v1 = v53 = 0x18310;
                v1 = v54 = 0x18337;
                v1 = v55 = 0x18366;
                v1 = v56 = 0;
                if (v49) {
                    // Unknown jump to Block 0x2231. Refer to 3-address code (TAC);
                }
            }
        } else {
            v6 = v57 = MEM[64];
            v58 = address(v1).token0().gas(msg.gas);
            if (v58) {
                v1 = v59 = 0x179ec;
                v1 = v60 = 0x17a15;
                v31 = v61 = 0x17a40;
                v1 = v62 = 0x17a6b;
                v1 = v63 = 0x17a92;
                v1 = v64 = 0x17ac1;
                v1 = v65 = 0;
                if (v58) {
                    // Unknown jump to Block 0x21c9. Refer to 3-address code (TAC);
                }
            }
        }
        if (10 ** 6 - v1 <= 10 ** 6) {
            // Unknown jump to Block ['0x17a6b', '0x18310', '0x18433', '0x1852f']. Refer to 3-address code (TAC);
            v66 = v67 = uint24(10 ** 6 - v1);
            v68 = v69 = 7976;
            v70 = v71 = 0x39d8();
            MEM[v70] = address(v1);
            MEM[v70 + 32] = address(v1);
            // Unknown jump to Block ['0x17a15', '0x182ba', '0x183dd', '0x184d9']. Refer to 3-address code (TAC);
            MEM[v70 + 64] = uint24(v66);
            MEM[v70 + 96] = int24(v31);
            MEM[v70 + 128] = address(v1);
            v72 = v73 = 0x39c9();
            MEM[v72] = 0;
            MEM[v72 + 32] = 0;
            MEM[v72 + 64] = v70;
            MEM[v72 + 96] = bool(v1);
            v74 = v75 = 8077;
            v76 = new struct(3);
            v76.word1 = keccak256(MEM[MEM[v1f84_0x3 + 64]:MEM[v1f84_0x3 + 64] + 160]);
            v76.word2 = 6;
            v76.word0 = 64;
            require(!((v76 + 96 > uint64.max) | (v76 + 96 < v76)), Panic(65)); // failed memory allocation (too much memory)
            v77 = v76.word0.length;
            v78 = v79 = keccak256(keccak256(MEM[MEM[v1f84_0x3 + 64]:MEM[v1f84_0x3 + 64] + 160]), 6);
            v80 = v81 = MEM[64];
            v82 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v79).gas(msg.gas);
            if (v82) {
                v72 = v83 = 32;
                v84 = v85 = 16781;
                v86 = v87 = 0;
                if (v82) {
                    v88 = v89 = 16926;
                    if (v83 <= RETURNDATASIZE()) {
                        require(!((v81 + 32 > uint64.max) | (v81 + 32 < v81)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v81 + 32;
                        v90 = v91 = v81 + v83;
                    }
                }
                MEM[v72] = address(v86);
                require(v78 <= v78 + 3, Panic(17)); // arithmetic overflow or underflow
                v80 = v92 = MEM[64];
                MEM[0] = MEM[0];
                v93 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v78 + 3).gas(msg.gas);
                if (v93) {
                    v78 = v94 = uint128.max;
                    v84 = v95 = 32;
                    v72 = v96 = 0x19774;
                    v86 = v97 = 0;
                    if (v93) {
                        v88 = 16897;
                        if (v95 <= RETURNDATASIZE()) {
                            require(!((v92 + 32 > uint64.max) | (v92 + 32 < v92)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v92 + 32;
                            v90 = v98 = v92 + v95;
                        }
                    }
                }
                MEM[v72 + v84] = uint128(v86 & v78);
                v1 = v99 = 0x39c9();
                v99.word0 = 0;
                v99.word1 = 0;
                v99.word2 = address(v72);
                v99.word3 = bool(v75);
                0x40be(v99);
                v100 = 0x40dc(address(v99.word2));
                v99.word1 = uint128(v100);
                v101 = v102 = MEM[64];
                MEM[0] = MEM[0];
                v103 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v103) {
                    v1 = v104 = 8168;
                    v105 = v106 = 1597;
                    v107 = v108 = 0;
                    if (v103) {
                        v109 = v110 = 2326;
                        v111 = 32;
                        if (32 > RETURNDATASIZE()) {
                            // Unknown jump to Block 0x91c0x208. Refer to 3-address code (TAC);
                        }
                    } else {
                        v112 = v113 = this.balance;
                    }
                    require(!((v101 + (v111 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v101 + (v111 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v101)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v101 + (v111 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v114 = v101 + v111;
                    require(v114 - v101 >= 32);
                    v107 = MEM[v101];
                    // Unknown jump to Block ['0x4f000x208', '0x9160x208']. Refer to 3-address code (TAC);
                    v112 = this.balance;
                    v115 = _SafeAdd(v107, this.balance);
                    v116 = _SafeSub(v115, v1);
                    if (!v1) {
                        v117 = _SafeSub(v1, msg.gas);
                        v118 = 0x3a74(v117);
                        v119 = _SafeMul(v74, v118);
                        require(v119 < v116, Error(52));
                        v120 = 0x3a74(msg.gas);
                        require(v120 >= msg.gas, Error(13665));
                    } else {
                        v121 = _SafeSub(v1, msg.gas);
                        v122 = 0x3a83(v121);
                        v123 = _SafeMul(v74, v122);
                        require(v123 < v116, Error(52));
                        v124 = _SafeSub(v116, v123);
                        require(v1 <= 1000);
                        v125 = _SafeMul(v124, v1);
                        v126 = _SafeSub(v124, v125 / 1000);
                        if (this.balance <= v125 / 1000) {
                            MEM[0] = MEM[0];
                            v127 = 0x3a3c(v107);
                            0x5007(v127, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                        }
                        if (v125 / 1000) {
                            v128 = block.coinbase.call().value(v125 / 1000).gas(10000);
                        }
                        v129 = 0x3a83(msg.gas);
                        require(v129 >= msg.gas, Error(13666));
                        // Unknown jump to Block 0x199740x208. Refer to 3-address code (TAC);
                    }
                    // Unknown jump to Block ['0x17bad', '0x17e95']. Refer to 3-address code (TAC);
                    exit;
                    exit;
                    v111 = v130 = RETURNDATASIZE();
                    // Unknown jump to Block 0x9040x208. Refer to 3-address code (TAC);
                    v1 = v131 = v107 + v112;
                    if (v107 <= v131) {
                        v1 = v132 = 17005;
                        v1 = v133 = 17010;
                        if (0 == v1) {
                            v134 = v135 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                        } else {
                            v134 = address(MEM[v1]);
                        }
                        if (!v1) {
                            v1 = v136 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                        } else {
                            v1 = v137 = address(MEM[v1]);
                        }
                        if (!v74) {
                            v1 = v138 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                        } else {
                            v1 = v139 = address(MEM[v1]);
                        }
                        v1 = v140 = uint96.max + 1;
                        while (1) {
                            v141 = v134 * v1 % uint256.max - v134 * v1 - (v134 * v1 % uint256.max < v134 * v1);
                            if (uint96.max + 1 <= v141) {
                                break;
                            } else {
                                if (v134 * v1 % uint256.max - v134 * v1 == v134 * v1 % uint256.max < v134 * v1) {
                                    v134 = v134 * v1 >> 96;
                                    // Unknown jump to Block ['0x426d0x208', '0x42720x208']. Refer to 3-address code (TAC);
                                } else {
                                    v142 = v134 * v1 % (uint96.max + 1);
                                    v134 = v134 * v1 - v142 >> 96 | v141 - (v142 > v134 * v1) << 160;
                                    // Unknown jump to Block ['0x426d0x208', '0x42720x208']. Refer to 3-address code (TAC);
                                }
                                continue;
                            }
                        }
                        if (v134 <= v1) {
                            v1 = v143 = 0x17e95;
                            v144 = !MEM[v1 + 96];
                            MEM[v1 + 96] = bool(v144);
                            v145 = MEM[v1 + 96];
                            if (bool(v145)) {
                                MEM[v1] = address(address(MEM[v1]) >> 48);
                                v146 = !MEM[v1 + 96];
                                MEM[v1 + 96] = bool(v146);
                            } else {
                                v147 = _SafeMul(uint48.max + 1, uint48.max + 1);
                                v148 = _SafeDiv(v147, address(MEM[v1]) >> 48);
                                MEM[v1] = address(v148);
                                v149 = !MEM[v1 + 96];
                                MEM[v1 + 96] = bool(v149);
                            }
                            v150 = MEM[v1 + 96];
                            if (bool(v150)) {
                                MEM[v1] = address(address(MEM[v1]) >> 48);
                                v151 = !MEM[v1 + 96];
                                MEM[v1 + 96] = bool(v151);
                            } else {
                                v152 = _SafeMul(uint48.max + 1, uint48.max + 1);
                                v153 = _SafeDiv(v152, address(MEM[v1]) >> 48);
                                MEM[v1] = address(v153);
                                v154 = !MEM[v1 + 96];
                                MEM[v1 + 96] = bool(v154);
                            }
                            v155 = MEM[v1 + 96];
                            if (bool(v155)) {
                                MEM[v1] = address(address(MEM[v1]) >> 48);
                                // Unknown jump to Block 0x4837. Refer to 3-address code (TAC);
                            } else {
                                v156 = v157 = 0x18126;
                                v158 = v159 = 0x1814a;
                                v160 = v161 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            }
                        } else {
                            v1 = v162 = 0x17bad;
                            v163 = MEM[v1 + 96];
                            if (bool(v163)) {
                                MEM[v1] = address(address(MEM[v1]) >> 48);
                                v164 = !MEM[v1 + 96];
                                v165 = v166 = bool(v164);
                            } else {
                                v156 = v167 = 0x17bf1;
                                v158 = v168 = 0x17c20;
                                v160 = v169 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            }
                        }
                        v170 = _SafeDiv(v160, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v170);
                        v171 = !MEM[v1 + 96];
                        v165 = v172 = bool(v171);
                        if (!v165) {
                            MEM[v1] = address(address(MEM[v1]) >> 48);
                            v173 = !MEM[v1 + 96];
                            v174 = v175 = bool(v173);
                        } else {
                            v176 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v177 = _SafeDiv(v176, address(MEM[v1]) >> 48);
                            MEM[v1] = address(v177);
                            v178 = !MEM[v1 + 96];
                            v174 = v179 = bool(v178);
                        }
                        if (!v174) {
                            MEM[v1] = address(address(MEM[v1]) >> 48);
                        } else {
                            v180 = _SafeMul(uint48.max + 1, uint48.max + 1);
                            v181 = _SafeDiv(v180, address(MEM[v1]) >> 48);
                            MEM[v1] = address(v181);
                        }
                        MEM[v1] = address(v170);
                        v182 = v183 = 64;
                        v184 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) << 48 << 48);
                        v185 = 0x4fc1((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1]))) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])))) * (v1 * address(MEM[v1]))) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32]), (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]), (v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max - (v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 - ((v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max < (v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1) + (v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) % uint256.max - v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) - (v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) % uint256.max < v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48)) + ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) - ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max < (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max < uint128(MEM[v1 + 32]) << 252) + uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) + (v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) < v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48))) * v1, (v184 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1);
                        v186 = v187 = 0;
                        v188 = v189 = address(MEM[v183 + v1]);
                        v190, v191, v192 = 0x45a0(bool(MEM[v1 + 96]), 0x19bbd, 18569);
                        if (v187 == bool(MEM[v1 + 96])) {
                            MEM[0] = MEM[0];
                            v193 = new struct(10);
                            v193.word1 = 3;
                            v193.word2 = address(MEM[MEM[v1 + v183]]);
                            v193.word3 = address(MEM[MEM[v1 + v183] + 32]);
                            v193.word4 = uint24(MEM[MEM[v1 + v183] + 64]);
                            v193.word5 = int24(MEM[MEM[v1 + v183] + 96]);
                            v193.word6 = address(MEM[128 + MEM[v1 + v183]]);
                            v193.word7 = bool(MEM[v1 + 96]);
                            v193.word8 = address(MEM[v1 + v183]);
                            v193.word9 = bool(MEM[v1 + 96]);
                            v193.word0 = 288;
                            require(!((v193 + 320 > uint64.max) | (v193 + 320 < v193)), Panic(65)); // failed memory allocation (too much memory)
                            v194 = v195 = MEM[v183];
                            MEM[v195] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v195 + 4] = address(this);
                            MEM[v195 + 4 + 32] = bool(v192);
                            MEM[v195 + 4 + 64] = v190;
                            MEM[v195 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v195 + 4 + 128] = 160;
                            MEM[v195 + 4 + 160] = v193.word0.length;
                            MCOPY(v195 + 4 + 160 + 32, v193.data, v193.word0.length);
                            MEM[32 + (v193.word0.length + (v195 + 4 + 160))] = 0;
                            v196 = 288 + (v195 + 4 + 160) + 32;
                        } else {
                            v197 = new struct(10);
                            v197.word1 = 3;
                            v197.word2 = address(MEM[MEM[v1 + v183]]);
                            v197.word3 = address(MEM[MEM[v1 + v183] + 32]);
                            v197.word4 = uint24(MEM[MEM[v1 + v183] + 64]);
                            v197.word5 = int24(MEM[MEM[v1 + v183] + 96]);
                            v197.word6 = address(MEM[128 + MEM[v1 + v183]]);
                            v197.word7 = bool(MEM[v1 + 96]);
                            v197.word8 = address(MEM[v1 + v183]);
                            v197.word9 = bool(MEM[v1 + 96]);
                            v197.word0 = 288;
                            require(!((v197 + 320 > uint64.max) | (v197 + 320 < v197)), Panic(65)); // failed memory allocation (too much memory)
                            v194 = v198 = MEM[v183];
                            MEM[v198] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v198 + 4] = address(this);
                            MEM[v198 + 4 + 32] = bool(v192);
                            MEM[v198 + 4 + 64] = v190;
                            MEM[v198 + 4 + 96] = address(0x1000276a4);
                            MEM[v198 + 4 + 128] = 160;
                            MEM[v198 + 4 + 160] = v197.word0.length;
                            MCOPY(v198 + 4 + 160 + 32, v197.data, v197.word0.length);
                            MEM[32 + (v197.word0.length + (v198 + 4 + 160))] = 0;
                            v196 = v199 = 288 + (v198 + 4 + 160) + 32;
                        }
                        v200 = v188.call(MEM[v199950x208_0x1:v199950x208_0x1 + v2526V0x3e15V0x19c4f - v199950x208_0x1], MEM[v199950x208_0x1:v199950x208_0x1 + v462d0x208_0x6]).value(v186).gas(msg.gas);
                        if (v200) {
                            v1 = v201 = 0x19974;
                            if (v200) {
                                if (64 > RETURNDATASIZE()) {
                                    require(!((v194 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v194 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v194)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v194 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v202 = v194 + RETURNDATASIZE();
                                } else {
                                    require(!((v194 + 64 > uint64.max) | (v194 + 64 < v194)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v194 + 64;
                                    v202 = v203 = v194 + 64;
                                }
                                require(v202 - v194 >= 64);
                            }
                            v1 = v204 = 0x3ff & v1 >> 50;
                            v1 = v205 = uint24(v1 >> 60);
                            v74 = 0x3ffffffffffff & v1;
                            v101 = MEM[64];
                            MEM[0] = MEM[0];
                            v206 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                            if (v206) {
                                v107 = v207 = 0;
                                if (v206) {
                                    v105 = v208 = 19908;
                                    v109 = v209 = 20224;
                                    if (32 <= RETURNDATASIZE()) {
                                        require(!((v101 + 32 > uint64.max) | (v101 + 32 < v101)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v101 + 32;
                                        v114 = v210 = v101 + 32;
                                    }
                                }
                            }
                        }
                        revert();
                    }
                }
                require(!((v80 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v80 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v80)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v80 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v90 = v211 = v80 + RETURNDATASIZE();
                require(v90 - v80 >= 32);
                v86 = v212 = MEM[v80];
                // Unknown jump to Block ['0x4201B0x1f84', '0x421eB0x1f84']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x41daB0x1f84. Refer to 3-address code (TAC);
            }
            revert(MEM[64], RETURNDATASIZE());
            MEM[v70 + 64] = uint24(v66);
            MEM[v70 + 96] = int24(v31);
            MEM[v70 + 128] = address(v1);
            v72 = v213 = 0x39c9();
            MEM[v70 + 64] = uint24(v66);
            MEM[v70 + 96] = int24(v31);
            MEM[v70 + 128] = address(v1);
            v72 = v214 = 0x39c9();
            MEM[v70 + 64] = uint24(v66);
            MEM[v70 + 96] = int24(v31);
            MEM[v70 + 128] = address(v1);
            v72 = v215 = 0x39c9();
            v66 = v216 = uint24(10 ** 6 - v1);
            v68 = v217 = 7976;
            v70 = v218 = 0x39d8();
            v66 = v219 = uint24(10 ** 6 - v1);
            v68 = v220 = 7976;
            v70 = v221 = 0x39d8();
            v66 = v222 = uint24(10 ** 6 - v1);
            v68 = v223 = 7976;
            v70 = v224 = 0x39d8();
        }
        revert(Panic(17));
        v10 = v225 = 8674;
        if (32 <= RETURNDATASIZE()) {
            require(!((v6 + 32 > uint64.max) | (v6 + 32 < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + 32;
            v12 = v226 = v6 + 32;
        }
        // Unknown jump to Block 0x3a2a0x208. Refer to 3-address code (TAC);
        v10 = v227 = 8778;
        if (32 <= RETURNDATASIZE()) {
            require(!((v6 + 32 > uint64.max) | (v6 + 32 < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + 32;
            v12 = v228 = v6 + 32;
        }
        require(!((v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v12 = v6 + RETURNDATASIZE();
        require(v12 - v6 >= 32);
        v1 = v229 = MEM[v6];
        require(!(address(v229) - v229));
        // Unknown jump to Block ['0x21e2', '0x224a', '0x2301', '0x2353', '0x23ad', '0x23ff']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1f06. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x222b. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1eb2. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2334. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x238c. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1eb4. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1eb6. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x238e. Refer to 3-address code (TAC);
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

function 0x29bec0f6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, int24 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    v0 = 0x3ef4(varg9);
    if (!v0) {
        v1 = v2 = 0xfffff & varg9 >> 88;
        v1 = v3 = 0x39c9();
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = address(varg0);
        v1 = v4 = v3 + 96;
        v3.word3 = bool(varg1);
        0x40be(v3);
        v5 = 0x40dc(address(v3.word2));
        v3.word1 = uint128(v5);
        v1 = v6 = varg9 >> 108 & 0xfffff;
        v1 = v7 = 0x39c9();
        v7.word0 = 0;
        v7.word1 = 0;
        v7.word2 = address(varg2);
        v8 = v9 = v7 + 96;
        v7.word3 = bool(varg3);
        0x40be(v7);
        v10 = 0x40dc(address(v7.word2));
        v7.word1 = uint128(v10);
        if (!varg3) {
            v11 = v12 = MEM[64];
            v13 = address(varg2).token0().gas(msg.gas);
            if (v13) {
                v14 = v15 = 0;
                if (v13) {
                    v16 = v17 = 7476;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v12 + 32 > uint64.max) | (v12 + 32 < v12)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v12 + 32;
                        v18 = v19 = v12 + 32;
                    }
                }
            }
        } else {
            v11 = v20 = MEM[64];
            v21 = address(varg2).token1().gas(msg.gas);
            if (v21) {
                v14 = v22 = 0;
                if (v21) {
                    v16 = v23 = 7395;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v20 + 32 > uint64.max) | (v20 + 32 < v20)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v20 + 32;
                        v18 = v24 = v20 + 32;
                    }
                }
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        if (!varg4) {
            if (address(v14) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v14 = v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v14 = v26 = 0;
        }
        if (!varg4) {
            if (address(v14) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v27, v14 = v28 = 0x1c82(v14, 0x178f6);
                v29 = v30 = uint24(v27);
                v31 = v32 = 0x39d8();
            } else {
                MEM[0] = MEM[0];
                v33, v14 = v34 = 0x1c82(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x178c9);
                v29 = v35 = uint24(v33);
                v31 = v36 = 0x39d8();
            }
        } else {
            v37 = 0x3a2a(varg8);
            v29 = v38 = uint24(v37);
            v31 = v39 = 0x39d8();
        }
        MEM[v31] = address(v14);
        MEM[v31 + 32] = address(v14);
        MEM[v31 + 64] = uint24(v29);
        MEM[v31 + 96] = varg5;
        MEM[v31 + 128] = address(varg6);
        v1 = v40 = 0x39c9();
        v40.word0 = 0;
        v40.word1 = 0;
        v40.word2 = v31;
        v1 = v41 = v40 + 96;
        v40.word3 = bool(varg7);
        v42 = v43 = 6594;
        v44 = new struct(3);
        v44.word1 = keccak256(MEM[v199c_0x0.word2:v199c_0x0.word2 + 160]);
        v44.word2 = 6;
        v44.word0 = 64;
        require(!((v44 + 96 > uint64.max) | (v44 + 96 < v44)), Panic(65)); // failed memory allocation (too much memory)
        v45 = v44.word0.length;
        v46 = v47 = keccak256(keccak256(MEM[v199c_0x0.word2:v199c_0x0.word2 + 160]), 6);
        v48 = v49 = MEM[64];
        v50 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v47).gas(msg.gas);
        if (v50) {
            v1 = v51 = 32;
            v52 = v53 = 16781;
            v54 = v55 = 0;
            if (v50) {
                v56 = v57 = 16926;
                if (v51 <= RETURNDATASIZE()) {
                    require(!((v49 + 32 > uint64.max) | (v49 + 32 < v49)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v49 + 32;
                    v58 = v59 = v49 + v51;
                }
            }
            MEM[v1] = address(v54);
            require(v46 <= v46 + 3, Panic(17)); // arithmetic overflow or underflow
            v48 = v60 = MEM[64];
            MEM[0] = MEM[0];
            v61 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v46 + 3).gas(msg.gas);
            if (v61) {
                v46 = v62 = uint128.max;
                v52 = v63 = 32;
                v1 = v64 = 0x19774;
                v54 = v65 = 0;
                if (v61) {
                    v56 = 16897;
                    if (v63 <= RETURNDATASIZE()) {
                        require(!((v60 + 32 > uint64.max) | (v60 + 32 < v60)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v60 + 32;
                        v58 = v66 = v60 + v63;
                    }
                }
            }
            MEM[v1 + v52] = uint128(v54 & v46);
            v67 = v68 = MEM[64];
            MEM[0] = MEM[0];
            v69 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v69) {
                v1 = v70 = 6714;
                v71 = v72 = 0x17233;
                v73 = v74 = 0;
                if (v69) {
                    v75 = v76 = 2326;
                    v77 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x91c0x217. Refer to 3-address code (TAC);
                    }
                } else {
                    v78 = v79 = this.balance;
                }
                require(!((v67 + (v77 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v67 + (v77 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v67)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v67 + (v77 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v80 = v67 + v77;
                require(v80 - v67 >= 32);
                v73 = MEM[v67];
                // Unknown jump to Block ['0x4f000x217', '0x9160x217']. Refer to 3-address code (TAC);
                v78 = this.balance;
                v81 = _SafeAdd(v73, this.balance);
                v82 = _SafeSub(v81, v1);
                if (!v83) {
                    v84 = _SafeSub(v1, msg.gas);
                    v85 = 0x3a74(v84);
                    v86 = _SafeMul(v42, v85);
                    require(v86 < v82, Error(52));
                    v87 = 0x3a74(msg.gas);
                    require(v87 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x198490x217', '0x199740x217']. Refer to 3-address code (TAC);
                } else {
                    v88 = _SafeSub(v1, msg.gas);
                    v89 = 0x3a83(v88);
                    v90 = _SafeMul(v42, v89);
                    require(v90 < v82, Error(52));
                    v91 = _SafeSub(v82, v90);
                    require(v83 <= 1000);
                    v92 = _SafeMul(v91, v83);
                    v93 = _SafeSub(v91, v92 / 1000);
                    if (this.balance <= v92 / 1000) {
                        MEM[0] = MEM[0];
                        v94 = 0x3a3c(v73);
                        0x5007(v94, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v92 / 1000) {
                        v95 = block.coinbase.call().value(v92 / 1000).gas(10000);
                    }
                    v96 = 0x3a83(msg.gas);
                    require(v96 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x198490x217', '0x199740x217']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
                v77 = v97 = RETURNDATASIZE();
                // Unknown jump to Block 0x9040x217. Refer to 3-address code (TAC);
                v1 = v98 = v73 + v78;
                require(v73 <= v98, Panic(17)); // arithmetic overflow or underflow
                v1 = v99 = 17005;
                v1 = v100 = 17010;
                if (0 == v83) {
                    v101 = v102 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                } else {
                    v101 = address(MEM[v1]);
                }
                if (!v8) {
                    v1 = v103 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                } else {
                    v1 = v104 = address(MEM[v1]);
                }
                if (!v42) {
                    v1 = v105 = _SafeDiv(uint192.max + 1, address(MEM[v1]));
                } else {
                    v1 = v106 = address(MEM[v1]);
                }
                v1 = v107 = uint96.max + 1;
                while (1) {
                    v108 = v101 * v1;
                    v109 = v101 * v1 % uint256.max - v108 - (v101 * v1 % uint256.max < v108);
                    if (uint96.max + 1 <= v109) {
                        break;
                    } else {
                        if (v101 * v1 % uint256.max - v108 == v101 * v1 % uint256.max < v108) {
                            v101 = v108 >> 96;
                            // Unknown jump to Block ['0x426d0x217', '0x42720x217']. Refer to 3-address code (TAC);
                        } else {
                            v101 = v108 - v101 * v1 % (uint96.max + 1) >> 96 | v109 - (v101 * v1 % (uint96.max + 1) > v108) << 160;
                            // Unknown jump to Block ['0x426d0x217', '0x42720x217']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v101 <= v1) {
                    v8 = v110 = 0x17567;
                    v111 = v112 = 7116;
                    v113 = v114 = 0x17588;
                    v115 = v116 = 7141;
                    v117 = v118 = 0x1763b;
                    MEM[v1] = bool(!MEM[v1]);
                    if (bool(MEM[v1])) {
                        v119 = v120 = 0x1789a;
                        v121 = address(MEM[v1]) >> 48;
                    } else {
                        v119 = v122 = 0x1765e;
                        v123 = v124 = 7087;
                        v125 = v126 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v127 = address(MEM[v1]) >> 48;
                        // Unknown jump to Block 0x3a9f0x217. Refer to 3-address code (TAC);
                    }
                } else {
                    v8 = v128 = 0x17281;
                    v111 = v129 = 6815;
                    v113 = v130 = 0x172a2;
                    v115 = v131 = 6875;
                    v117 = v132 = 0x172e8;
                    if (bool(MEM[v1])) {
                        v119 = v133 = 0x17542;
                        v121 = v134 = address(MEM[v1]) >> 48;
                    } else {
                        v119 = v135 = 0x1730b;
                        v123 = v136 = 6796;
                        v125 = v137 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v127 = v138 = address(MEM[v1]) >> 48;
                    }
                }
                require(v127, Panic(18)); // division by zero
                v121 = v139 = v125 / v127;
                // Unknown jump to Block ['0x1a8c0x217', '0x1baf0x217']. Refer to 3-address code (TAC);
                MEM[v1] = address(v121);
                // Unknown jump to Block ['0x1765e0x217', '0x1789a0x217']. Refer to 3-address code (TAC);
                MEM[v1] = bool(!MEM[v1]);
                v140 = bool(MEM[v1]);
                if (bool(v140)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    MEM[v1] = bool(!MEM[v1]);
                    v141 = v142 = bool(MEM[v1]);
                    // Unknown jump to Block 0x1763b. Refer to 3-address code (TAC);
                } else {
                    v143 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v144 = _SafeDiv(v143, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v144);
                    MEM[v1] = bool(!MEM[v1]);
                    v141 = bool(MEM[v1]);
                }
                if (bool(v141)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v145 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v146 = _SafeDiv(v145, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v146);
                }
                v147 = 64;
                v148 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) << 48 << 48);
                v149 = 0x4fc1((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32])) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1]))) + ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) % uint256.max - (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) - ((v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) % uint256.max < (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])))) * (v1 * address(MEM[v1]))) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32]), (v1 * address(MEM[v1]) * address(MEM[v1]) * address(MEM[v1]) - 0x3b9aca00000000000000000000000000000000000000) * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]), (v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max - (v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 - ((v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max < (v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1) + (v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) % uint256.max - v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) - (v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) % uint256.max < v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48)) + ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) - ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max < (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max < uint128(MEM[v1 + 32]) << 252) + uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) + (v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) < v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48))) * v1, (v148 * (uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) * address(MEM[v1]) << 48) + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1);
                v150 = 0;
                v151 = address(MEM[v147 + v1]);
                v152, v153, v154 = 0x45a0(bool(MEM[v1 + 96]), 0x198e2, 17837);
                if (v150 == bool(MEM[v1 + 96])) {
                    MEM[0] = MEM[0];
                    v155 = new struct(10);
                    v155.word1 = 4;
                    v155.word2 = address(MEM[v147 + v1]);
                    v155.word3 = bool(MEM[v1 + 96]);
                    v155.word4 = address(MEM[MEM[v1 + v147]]);
                    v155.word5 = address(MEM[MEM[v1 + v147] + 32]);
                    v155.word6 = uint24(MEM[MEM[v1 + v147] + 64]);
                    v155.word7 = int24(MEM[MEM[v1 + v147] + 96]);
                    v155.word8 = address(MEM[128 + MEM[v1 + v147]]);
                    v155.word9 = bool(MEM[v1 + 96]);
                    v155.word0 = 288;
                    require(!((v155 + 320 > uint64.max) | (v155 + 320 < v155)), Panic(65)); // failed memory allocation (too much memory)
                    v156 = v157 = MEM[v147];
                    MEM[v157] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v157 + 4] = address(this);
                    MEM[v157 + 4 + 32] = bool(v154);
                    MEM[v157 + 4 + 64] = v152;
                    MEM[v157 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v157 + 4 + 128] = 160;
                    MEM[v157 + 4 + 160] = v155.word0.length;
                    MCOPY(v157 + 4 + 160 + 32, v155.data, v155.word0.length);
                    MEM[32 + (v155.word0.length + (v157 + 4 + 160))] = 0;
                    v158 = 288 + (v157 + 4 + 160) + 32;
                } else {
                    v159 = new struct(10);
                    v159.word1 = 4;
                    v159.word2 = address(MEM[v147 + v1]);
                    v159.word3 = bool(MEM[v1 + 96]);
                    v159.word4 = address(MEM[MEM[v1 + v147]]);
                    v159.word5 = address(MEM[MEM[v1 + v147] + 32]);
                    v159.word6 = uint24(MEM[MEM[v1 + v147] + 64]);
                    v159.word7 = int24(MEM[MEM[v1 + v147] + 96]);
                    v159.word8 = address(MEM[128 + MEM[v1 + v147]]);
                    v159.word9 = bool(MEM[v1 + 96]);
                    v159.word0 = 288;
                    require(!((v159 + 320 > uint64.max) | (v159 + 320 < v159)), Panic(65)); // failed memory allocation (too much memory)
                    v156 = MEM[v147];
                    MEM[v156] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v156 + 4] = address(this);
                    MEM[v156 + 4 + 32] = bool(v154);
                    MEM[v156 + 4 + 64] = v152;
                    MEM[v156 + 4 + 96] = address(0x1000276a4);
                    MEM[v156 + 4 + 128] = 160;
                    MEM[v156 + 4 + 160] = v159.word0.length;
                    MCOPY(v156 + 4 + 160 + 32, v159.data, v159.word0.length);
                    MEM[32 + (v159.word0.length + (v156 + 4 + 160))] = 0;
                    v158 = v160 = 288 + (v156 + 4 + 160) + 32;
                }
                v161 = v151.call(MEM[v2170x1990d:v2170x1990d + v2526V0x3e15V0x199bc0x217 - v2170x1990d], MEM[v2170x1990d:v2170x1990d + v2170x4507]).value(v150).gas(msg.gas);
                if (v161) {
                    v1 = v162 = 0x19974;
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
                MEM[v1] = bool(!MEM[v1]);
                v140 = v165 = bool(MEM[v1]);
                // Unknown jump to Block 0x17588. Refer to 3-address code (TAC);
                MEM[v1] = address(v121);
                // Unknown jump to Block ['0x1730b0x217', '0x175420x217']. Refer to 3-address code (TAC);
                v166 = bool(MEM[v1]);
                if (bool(v166)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    v167 = v168 = bool(MEM[v1]);
                    // Unknown jump to Block 0x172e8. Refer to 3-address code (TAC);
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
                v176 = 0x4fc1(v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max - v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) - (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) % uint256.max < v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32])) + (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max - v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) - (v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) % uint256.max < v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1]))) + (v173 * (v1 * address(MEM[v1])) % uint256.max - v173 * (v1 * address(MEM[v1])) - (v173 * (v1 * address(MEM[v1])) % uint256.max < v173 * (v1 * address(MEM[v1])))) * (v1 * address(MEM[v1]))) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32]), v173 * (v1 * address(MEM[v1])) * (v1 * address(MEM[v1])) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]), (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max - (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 - ((v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1 % uint256.max < (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1) + (v175 * v174 % uint256.max - v175 * v174 - (v175 * v174 % uint256.max < v175 * v174) + ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) - ((uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) % uint256.max < (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max - (uint128(MEM[v1 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v1 + 32]) % uint256.max < uint128(MEM[v1 + 32]) << 252) + uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) + (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32]) < v175 * v174)) * v1, (v175 * v174 + (uint128(MEM[v1 + 32]) << 252) * uint128(MEM[v1 + 32])) * v1);
                v177 = MEM[v1 + 64];
                v178 = new struct(13);
                v178.word1 = 12;
                v178.word2 = v176;
                v178.word3 = address(MEM[v177]);
                v178.word4 = address(MEM[v177 + 32]);
                v178.word5 = uint24(MEM[v177 + 64]);
                v178.word6 = int24(MEM[v177 + 96]);
                v178.word7 = address(MEM[128 + v177]);
                v178.word8 = bool(MEM[v1 + 96]);
                v178.word9 = address(MEM[v1 + 64]);
                v178.word10 = bool(MEM[v1 + 96]);
                v178.word11 = address(MEM[v1 + 64]);
                v178.word12 = bool(MEM[v1 + 96]);
                v178.word0 = 384;
                require(!((v178 + 416 > uint64.max) | (v178 + 416 < v178)), Panic(65)); // failed memory allocation (too much memory)
                v179 = new bytes[](v178.word0.length);
                MCOPY(v179.data, v178.data, v178.word0.length);
                v179[v178.word0.length] = 0;
                MEM[0] = MEM[0];
                v180 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.unlock(v179).gas(msg.gas);
                if (v180) {
                    v1 = v181 = 0x19849;
                    if (v180) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v182 = 0x42cd(MEM[64], MEM[64] + RETURNDATASIZE());
                    }
                }
                v83 = v183 = 0x3ff & v1 >> 50;
                v1 = v184 = uint24(v1 >> 60);
                v42 = 0x3ffffffffffff & v1;
                v67 = MEM[64];
                MEM[0] = MEM[0];
                v185 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v185) {
                    v73 = v186 = 0;
                    if (v185) {
                        v71 = v187 = 19908;
                        v75 = v188 = 20224;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v67 + 32 > uint64.max) | (v67 + 32 < v67)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v67 + 32;
                            v80 = v189 = v67 + 32;
                        }
                    }
                }
                v166 = v190 = bool(MEM[v1]);
                // Unknown jump to Block 0x172a2. Refer to 3-address code (TAC);
                revert();
            }
            require(!((v48 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v48 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v58 = v191 = v48 + RETURNDATASIZE();
            require(v58 - v48 >= 32);
            v54 = v192 = MEM[v48];
            // Unknown jump to Block ['0x4201B0x199d', '0x421eB0x199d']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x41daB0x199d. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        require(!((v11 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v11 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v18 = v11 + RETURNDATASIZE();
        require(v18 - v11 >= 32);
        v14 = MEM[v11];
        require(!(address(v14) - v14));
        // Unknown jump to Block ['0x1ce3', '0x1d34']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1932. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1934. Refer to 3-address code (TAC);
    } else {
        exit;
    }
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

function 0x0a58f8e0(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(bool(varg0) - varg0));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    v0 = 0x3ef4(varg9);
    if (!v0) {
        v1 = v2 = 0xfffff & varg9 >> 88;
        if (!varg5) {
            v3 = v4 = MEM[64];
            v5 = address(varg4).token1().gas(msg.gas);
            if (v5) {
                v6 = v7 = 0x16b5b;
                v8 = v9 = 0x16b82;
                v10 = v11 = 0;
                if (v5) {
                    v12 = v13 = 2619;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v4 + 32 > uint64.max) | (v4 + 32 < v4)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v4 + 32;
                        v14 = v15 = v4 + 32;
                    }
                }
            }
        } else {
            v3 = v16 = MEM[64];
            v17 = address(varg4).token0().gas(msg.gas);
            if (v17) {
                v6 = v18 = 0x15fd5;
                v8 = v19 = 0x15ffc;
                v10 = v20 = 0;
                if (v17) {
                    v12 = v21 = 2522;
                    v22 = v23 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x9e00x221. Refer to 3-address code (TAC);
                    }
                }
            }
        }
        if (!varg0) {
            if (address(v10) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v10 = v24 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v10 = v25 = 0;
        }
        if (!varg0) {
            if (address(v10) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v26 = v27 = 0x16b0b;
                v28, v29, v30 = v31, v10 = v32 = 0x965(v10, 0x16ae4, 0x16ab9, 0x16a8e);
                v33 = v34 = uint24(v28);
                v35 = v36 = 1219;
                v37 = v38 = 0x39d8();
            } else {
                v26 = v39 = 0x169e8;
                MEM[0] = MEM[0];
                v40, v41, v30 = v42, v10 = v43 = 0x965(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x16a67, 0x16a3c, 0x16a11);
                v33 = v44 = uint24(v40);
                v35 = v45 = 1219;
                v37 = v46 = 0x39d8();
            }
        } else {
            v30 = v47 = 0x1602b;
            v26 = v48 = 0x160a8;
            v49 = 0x3a2a(v2);
            v33 = v50 = uint24(v49);
            v35 = v51 = 1219;
            v37 = v52 = 0x39d8();
        }
        MEM[v37] = address(v10);
        MEM[v37 + 32] = address(v10);
        // Unknown jump to Block ['0x1602b', '0x16a11', '0x16a8e']. Refer to 3-address code (TAC);
        MEM[v37 + 64] = uint24(v33);
        MEM[v37 + 96] = varg1;
        // Unknown jump to Block ['0x15ffc', '0x16b82']. Refer to 3-address code (TAC);
        MEM[v37 + 128] = address(varg2);
        v53 = v54 = 0x39c9();
        MEM[v53] = 0;
        MEM[v53 + 32] = 0;
        MEM[v53 + 64] = v37;
        MEM[v53 + 96] = bool(varg3);
        v55 = v56 = 1320;
        v57 = new struct(3);
        v57.word1 = keccak256(MEM[MEM[v51f_0x1 + 64]:MEM[v51f_0x1 + 64] + 160]);
        v57.word2 = 6;
        v57.word0 = 64;
        require(!((v57 + 96 > uint64.max) | (v57 + 96 < v57)), Panic(65)); // failed memory allocation (too much memory)
        v58 = v57.word0.length;
        v59 = v60 = keccak256(keccak256(MEM[MEM[v51f_0x1 + 64]:MEM[v51f_0x1 + 64] + 160]), 6);
        v61 = v62 = MEM[64];
        v63 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v60).gas(msg.gas);
        if (v63) {
            v53 = v64 = 32;
            v65 = v66 = 16781;
            v67 = v68 = 0;
            if (v63) {
                v69 = v70 = 16926;
                if (v64 <= RETURNDATASIZE()) {
                    require(!((v62 + 32 > uint64.max) | (v62 + 32 < v62)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v62 + 32;
                    v71 = v72 = v62 + v64;
                }
            }
            MEM[v53] = address(v67);
            require(v59 <= v59 + 3, Panic(17)); // arithmetic overflow or underflow
            v61 = v73 = MEM[64];
            MEM[0] = MEM[0];
            v74 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.extsload(v59 + 3).gas(msg.gas);
            if (v74) {
                v59 = v75 = uint128.max;
                v65 = v76 = 32;
                v53 = v77 = 0x19774;
                v67 = v78 = 0;
                if (v74) {
                    v69 = 16897;
                    if (v76 <= RETURNDATASIZE()) {
                        require(!((v73 + 32 > uint64.max) | (v73 + 32 < v73)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v73 + 32;
                        v71 = v79 = v73 + v76;
                    }
                }
            }
            MEM[v53 + v65] = uint128(v67 & v59);
            v80 = v81 = 0xfffff & varg6 >> 108;
            v80 = v82 = 0x39c9();
            v82.word0 = 0;
            v82.word1 = 0;
            v82.word2 = address(v53);
            v82.word3 = bool(varg10);
            0x40be(v82);
            v83 = 0x40dc(address(v82.word2));
            v82.word1 = uint128(v83);
            v80 = v84 = 0x39c9();
            v84.word0 = 0;
            v84.word1 = 0;
            v84.word2 = address(varg4);
            v84.word3 = bool(v2);
            0x40be(v84);
            v85 = 0x40dc(address(v84.word2));
            v84.word1 = uint128(v85);
            v86 = v87 = MEM[64];
            MEM[0] = MEM[0];
            v88 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v88) {
                v80 = v89 = 1646;
                v90 = v91 = 1597;
                v92 = v93 = 0;
                if (v88) {
                    v94 = v95 = 2326;
                    v96 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x91c0x221. Refer to 3-address code (TAC);
                    }
                }
                v97 = this.balance;
                v80 = v98 = v92 + v97;
                require(v92 <= v98, Panic(17)); // arithmetic overflow or underflow
                v80 = v99 = 17005;
                v80 = v100 = 17010;
                if (0 == v55) {
                    v101 = v102 = _SafeDiv(uint192.max + 1, address(MEM[v80]));
                } else {
                    v101 = address(MEM[v80]);
                }
                if (!varg10) {
                    v80 = v103 = _SafeDiv(uint192.max + 1, address(MEM[v80]));
                } else {
                    v80 = v104 = address(MEM[v80]);
                }
                if (!v1) {
                    v80 = v105 = _SafeDiv(uint192.max + 1, address(MEM[v80]));
                } else {
                    v80 = v106 = address(MEM[v80]);
                }
                v80 = v107 = uint96.max + 1;
                while (1) {
                    v108 = v101 * v80;
                    v109 = v101 * v80 % uint256.max - v108 - (v101 * v80 % uint256.max < v108);
                    if (uint96.max + 1 <= v109) {
                        break;
                    } else {
                        if (v101 * v80 % uint256.max - v108 == v101 * v80 % uint256.max < v108) {
                            v101 = v108 >> 96;
                            // Unknown jump to Block ['0x426d0x221', '0x42720x221']. Refer to 3-address code (TAC);
                        } else {
                            v101 = v108 - v101 * v80 % (uint96.max + 1) >> 96 | v109 - (v101 * v80 % (uint96.max + 1) > v108) << 160;
                            // Unknown jump to Block ['0x426d0x221', '0x42720x221']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v101 <= v80) {
                    v80 = v110 = 0x165ec;
                    MEM[v80 + 96] = bool(!MEM[v80 + 96]);
                    if (bool(MEM[v80 + 96])) {
                        MEM[v80] = address(address(MEM[v80]) >> 48);
                        MEM[v80 + 96] = bool(!MEM[v80 + 96]);
                    } else {
                        v111 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v112 = _SafeDiv(v111, address(MEM[v80]) >> 48);
                        MEM[v80] = address(v112);
                        MEM[v80 + 96] = bool(!MEM[v80 + 96]);
                    }
                    if (bool(MEM[v80 + 96])) {
                        MEM[v80] = address(address(MEM[v80]) >> 48);
                        MEM[v80 + 96] = bool(!MEM[v80 + 96]);
                    } else {
                        v113 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v114 = _SafeDiv(v113, address(MEM[v80]) >> 48);
                        MEM[v80] = address(v114);
                        MEM[v80 + 96] = bool(!MEM[v80 + 96]);
                    }
                    if (bool(MEM[v80 + 96])) {
                        MEM[v80] = address(address(MEM[v80]) >> 48);
                    } else {
                        v115 = v116 = 0x1687d;
                        v117 = v118 = 0x168a1;
                        v119 = v120 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    }
                } else {
                    v80 = v121 = 0x16211;
                    if (bool(MEM[v80 + 96])) {
                        MEM[v80] = address(address(MEM[v80]) >> 48);
                        v122 = v123 = bool(!MEM[v80 + 96]);
                    } else {
                        v115 = v124 = 0x16255;
                        v117 = v125 = 0x16284;
                        v119 = v126 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    }
                }
                v127 = _SafeDiv(v119, address(MEM[v80]) >> 48);
                MEM[v80] = address(v127);
                v122 = v128 = bool(!MEM[v80 + 96]);
                if (!v122) {
                    MEM[v80] = address(address(MEM[v80]) >> 48);
                    v129 = v130 = bool(!MEM[v80 + 96]);
                } else {
                    v131 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v132 = _SafeDiv(v131, address(MEM[v80]) >> 48);
                    MEM[v80] = address(v132);
                    v129 = v133 = bool(!MEM[v80 + 96]);
                }
                if (!v129) {
                    MEM[v80] = address(address(MEM[v80]) >> 48);
                } else {
                    v134 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v135 = _SafeDiv(v134, address(MEM[v80]) >> 48);
                    MEM[v80] = address(v135);
                }
                v136 = 64;
                v137 = uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) + (uint128(10 ** 6 * uint128(MEM[v80 + 32])) << 48 << 48);
                v138 = 0x4fc1((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) % uint256.max - (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) - ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) % uint256.max < (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32])) + ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) % uint256.max - (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) - ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) % uint256.max < (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32])) + ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) % uint256.max - (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) - ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) % uint256.max < (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32])) + ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) % uint256.max - (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) - ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) % uint256.max < (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80]))) + ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) % uint256.max - (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) - ((v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) % uint256.max < (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])))) * (v80 * address(MEM[v80]))) * uint128(MEM[v80 + 32])) * uint128(MEM[v80 + 32])) * uint128(MEM[v80 + 32]), (v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000) * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]), (v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80 % uint256.max - (v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80 - ((v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80 % uint256.max < (v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80) + (v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) % uint256.max - v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) - (v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) % uint256.max < v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48)) + ((uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32]) % uint256.max - (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32]) - ((uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32]) % uint256.max < (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v80 + 32]) % uint256.max - (uint128(MEM[v80 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v80 + 32]) % uint256.max < uint128(MEM[v80 + 32]) << 252) + uint128(MEM[v80 + 32])) * uint128(MEM[v80 + 32])) + (v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32]) < v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48))) * v80, (v137 * (uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48) + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80);
                v139 = 0;
                v140 = address(MEM[v136 + v80]);
                v141, v142, v143 = 0x45a0(bool(MEM[v80 + 96]), 0x198e2, 17837);
                if (v139 == bool(MEM[v80 + 96])) {
                    MEM[0] = MEM[0];
                    v144 = new struct(10);
                    v144.word1 = 4;
                    v144.word2 = address(MEM[v136 + v80]);
                    v144.word3 = bool(MEM[v80 + 96]);
                    v144.word4 = address(MEM[MEM[v80 + v136]]);
                    v144.word5 = address(MEM[MEM[v80 + v136] + 32]);
                    v144.word6 = uint24(MEM[MEM[v80 + v136] + 64]);
                    v144.word7 = int24(MEM[MEM[v80 + v136] + 96]);
                    v144.word8 = address(MEM[128 + MEM[v80 + v136]]);
                    v144.word9 = bool(MEM[v80 + 96]);
                    v144.word0 = 288;
                    require(!((v144 + 320 > uint64.max) | (v144 + 320 < v144)), Panic(65)); // failed memory allocation (too much memory)
                    v145 = v146 = MEM[v136];
                    MEM[v146] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v146 + 4] = address(this);
                    MEM[v146 + 4 + 32] = bool(v143);
                    MEM[v146 + 4 + 64] = v141;
                    MEM[v146 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v146 + 4 + 128] = 160;
                    MEM[v146 + 4 + 160] = v144.word0.length;
                    MCOPY(v146 + 4 + 160 + 32, v144.data, v144.word0.length);
                    MEM[32 + (v144.word0.length + (v146 + 4 + 160))] = 0;
                    v147 = 288 + (v146 + 4 + 160) + 32;
                } else {
                    v148 = new struct(10);
                    v148.word1 = 4;
                    v148.word2 = address(MEM[v136 + v80]);
                    v148.word3 = bool(MEM[v80 + 96]);
                    v148.word4 = address(MEM[MEM[v80 + v136]]);
                    v148.word5 = address(MEM[MEM[v80 + v136] + 32]);
                    v148.word6 = uint24(MEM[MEM[v80 + v136] + 64]);
                    v148.word7 = int24(MEM[MEM[v80 + v136] + 96]);
                    v148.word8 = address(MEM[128 + MEM[v80 + v136]]);
                    v148.word9 = bool(MEM[v80 + 96]);
                    v148.word0 = 288;
                    require(!((v148 + 320 > uint64.max) | (v148 + 320 < v148)), Panic(65)); // failed memory allocation (too much memory)
                    v145 = MEM[v136];
                    MEM[v145] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v145 + 4] = address(this);
                    MEM[v145 + 4 + 32] = bool(v143);
                    MEM[v145 + 4 + 64] = v141;
                    MEM[v145 + 4 + 96] = address(0x1000276a4);
                    MEM[v145 + 4 + 128] = 160;
                    MEM[v145 + 4 + 160] = v148.word0.length;
                    MCOPY(v145 + 4 + 160 + 32, v148.data, v148.word0.length);
                    MEM[32 + (v148.word0.length + (v145 + 4 + 160))] = 0;
                    v147 = v149 = 288 + (v145 + 4 + 160) + 32;
                }
                v150 = v140.call(MEM[v2210x1990d:v2210x1990d + v2526V0x3e15V0x199bc0x221 - v2210x1990d], MEM[v2210x1990d:v2210x1990d + v2210x4507]).value(v139).gas(msg.gas);
                if (v150) {
                    v80 = v151 = 0x19974;
                    if (v150) {
                        if (64 > RETURNDATASIZE()) {
                            require(!((v145 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v145 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v145)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v145 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v152 = v145 + RETURNDATASIZE();
                        } else {
                            require(!((v145 + 64 > uint64.max) | (v145 + 64 < v145)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v145 + 64;
                            v152 = v153 = v145 + 64;
                        }
                        require(v152 - v145 >= 64);
                    }
                }
                MEM[v80] = address(v127);
                v154 = v80 * address(MEM[v80]) * address(MEM[v80]) * address(MEM[v80]) - 0x3b9aca00000000000000000000000000000000000000;
                v155 = uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) << 48;
                v156 = uint128(MEM[v80 + 32]) * v80 * address(MEM[v80]) * address(MEM[v80]) + (uint128(10 ** 6 * uint128(MEM[v80 + 32])) << 48 << 48);
                v157 = 0x4fc1(v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) % uint256.max - v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) - (v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) % uint256.max < v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32])) + (v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) % uint256.max - v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) - (v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) % uint256.max < v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32])) + (v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) % uint256.max - v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) - (v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) % uint256.max < v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32])) + (v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) % uint256.max - v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) - (v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) % uint256.max < v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80]))) + (v154 * (v80 * address(MEM[v80])) % uint256.max - v154 * (v80 * address(MEM[v80])) - (v154 * (v80 * address(MEM[v80])) % uint256.max < v154 * (v80 * address(MEM[v80])))) * (v80 * address(MEM[v80]))) * uint128(MEM[v80 + 32])) * uint128(MEM[v80 + 32])) * uint128(MEM[v80 + 32]), v154 * (v80 * address(MEM[v80])) * (v80 * address(MEM[v80])) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]) * uint128(MEM[v80 + 32]), (v156 * v155 + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80 % uint256.max - (v156 * v155 + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80 - ((v156 * v155 + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80 % uint256.max < (v156 * v155 + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80) + (v156 * v155 % uint256.max - v156 * v155 - (v156 * v155 % uint256.max < v156 * v155) + ((uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32]) % uint256.max - (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32]) - ((uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32]) % uint256.max < (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) + (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v80 + 32]) % uint256.max - (uint128(MEM[v80 + 32]) << 252) - (0x1000000000000000000000000000000000000000000000000000000000000000 * uint128(MEM[v80 + 32]) % uint256.max < uint128(MEM[v80 + 32]) << 252) + uint128(MEM[v80 + 32])) * uint128(MEM[v80 + 32])) + (v156 * v155 + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32]) < v156 * v155)) * v80, (v156 * v155 + (uint128(MEM[v80 + 32]) << 252) * uint128(MEM[v80 + 32])) * v80);
                v158 = MEM[v80 + 64];
                v159 = new struct(13);
                v159.word1 = 12;
                v159.word2 = v157;
                v159.word3 = address(MEM[v158]);
                v159.word4 = address(MEM[v158 + 32]);
                v159.word5 = uint24(MEM[v158 + 64]);
                v159.word6 = int24(MEM[v158 + 96]);
                v159.word7 = address(MEM[128 + v158]);
                v159.word8 = bool(MEM[v80 + 96]);
                v159.word9 = address(MEM[v80 + 64]);
                v159.word10 = bool(MEM[v80 + 96]);
                v159.word11 = address(MEM[v80 + 64]);
                v159.word12 = bool(MEM[v80 + 96]);
                v159.word0 = 384;
                require(!((v159 + 416 > uint64.max) | (v159 + 416 < v159)), Panic(65)); // failed memory allocation (too much memory)
                v160 = new bytes[](v159.word0.length);
                MCOPY(v160.data, v159.data, v159.word0.length);
                v160[v159.word0.length] = 0;
                MEM[0] = MEM[0];
                v161 = 0x000000000000000000000000000000000004444c5dc75cb358380d2e3de08a90.unlock(v160).gas(msg.gas);
                if (v161) {
                    v80 = v162 = 0x19849;
                    if (v161) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v163 = 0x42cd(MEM[64], MEM[64] + RETURNDATASIZE());
                    }
                }
                v55 = 0x3ff & v80 >> 50;
                v80 = v164 = uint24(v80 >> 60);
                v1 = 0x3ffffffffffff & v80;
                v86 = MEM[64];
                MEM[0] = MEM[0];
                v165 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v165) {
                    v92 = v166 = 0;
                    if (v165) {
                        v90 = v167 = 19908;
                        v94 = v168 = 20224;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v86 + 32 > uint64.max) | (v86 + 32 < v86)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v86 + 32;
                            v169 = v170 = v86 + 32;
                        }
                    }
                }
                revert();
                require(!((v86 + (v96 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v86 + (v96 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v86)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v86 + (v96 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v169 = v86 + v96;
                require(v169 - v86 >= 32);
                v92 = MEM[v86];
                // Unknown jump to Block ['0x4f000x221', '0x9160x221']. Refer to 3-address code (TAC);
                v171 = _SafeAdd(v92, this.balance);
                v172 = _SafeSub(v171, v80);
                if (!v55) {
                    v173 = _SafeSub(v80, msg.gas);
                    v174 = 0x3a74(v173);
                    v175 = _SafeMul(v1, v174);
                    require(v175 < v172, Error(52));
                    v176 = 0x3a74(msg.gas);
                    require(v176 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x198490x221', '0x199740x221']. Refer to 3-address code (TAC);
                } else {
                    v177 = _SafeSub(v80, msg.gas);
                    v178 = 0x3a83(v177);
                    v179 = _SafeMul(v1, v178);
                    require(v179 < v172, Error(52));
                    v180 = _SafeSub(v172, v179);
                    require(v55 <= 1000);
                    v181 = _SafeMul(v180, v55);
                    v182 = _SafeSub(v180, v181 / 1000);
                    if (this.balance <= v181 / 1000) {
                        MEM[0] = MEM[0];
                        v183 = 0x3a3c(v92);
                        0x5007(v183, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v181 / 1000) {
                        v184 = block.coinbase.call().value(v181 / 1000).gas(10000);
                    }
                    v185 = 0x3a83(msg.gas);
                    require(v185 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x198490x221', '0x199740x221']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
                v96 = v186 = RETURNDATASIZE();
                // Unknown jump to Block 0x9040x221. Refer to 3-address code (TAC);
            }
            require(!((v61 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v61 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v61)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v61 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v71 = v187 = v61 + RETURNDATASIZE();
            require(v71 - v61 >= 32);
            v67 = v188 = MEM[v61];
            // Unknown jump to Block ['0x4201B0x51f', '0x421eB0x51f']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x41daB0x51f. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        MEM[v37 + 128] = address(varg2);
        v53 = v189 = 0x39c9();
        MEM[v37 + 64] = uint24(v33);
        MEM[v37 + 96] = varg1;
        // Unknown jump to Block ['0x15ffc', '0x16b82']. Refer to 3-address code (TAC);
        MEM[v37 + 64] = uint24(v33);
        MEM[v37 + 96] = varg1;
        // Unknown jump to Block ['0x15ffc', '0x16b82']. Refer to 3-address code (TAC);
        require(!((v3 + (v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v3 + (v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v14 = v3 + v22;
        require(v14 - v3 >= 32);
        v10 = MEM[v3];
        require(!(address(v10) - v10));
        // Unknown jump to Block ['0x9da', '0xa3b']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x47c. Refer to 3-address code (TAC);
        v22 = RETURNDATASIZE();
        // Unknown jump to Block 0x9c80x221. Refer to 3-address code (TAC);
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        // Unknown jump to Block 0x47e. Refer to 3-address code (TAC);
    } else {
        exit;
    }
}

function 0x39c9() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x39d8() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x39e7() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3a2a(uint256 varg0) private { 
    require(10 ** 6 - varg0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - varg0;
}

function 0x3a3c(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x3a74(uint256 varg0) private { 
    require(varg0 <= varg0 + 1000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1000;
}

function 0x3a83(uint256 varg0) private { 
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

function 0x3b3c(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(32 <= varg2);
    require(varg2 <= varg1);
    return varg2 - 32, 32 + varg0;
}

function 0x3d0e(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x3ef4(uint256 varg0) private { 
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

function 0x40be(struct(4) varg0) private { 
    v0 = varg0.word2.slot0().gas(msg.gas);
    require(v0);
    return ;
}

function 0x40dc(uint256 varg0) private { 
    v0, /* uint128 */ v1 = varg0.liquidity().gas(msg.gas);
    require((RETURNDATASIZE() > 15) & v0);
    return uint128(v1);
}

function 0x42cd(uint256 varg0, uint256 varg1) private { 
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

function 0x45a0(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v0, varg2, varg0;
}

function 0x4921(address varg0, uint256 varg1) private { 
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

function 0x49c8(uint256 varg0) private { 
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

function 0x4f39(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0x4fc1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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
        v4 = 0x4f39(varg1, varg0, varg3);
        return v4;
    } else {
        v5 = _SafeDiv(varg0, varg2);
        return v5;
    }
}

function 0x5007(uint256 varg0, uint256 varg1) private { 
    v0 = varg1.withdraw(varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x965(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(10 ** 6 - v0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - v0, varg2, varg3, varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x60cc4b2 != v0) {
            if (0xa58f8e0 == v0) {
                0x0a58f8e0();
            } else {
                if (0x10d1e85c != v0) {
                    if (0x1c422bb7 != v0) {
                        if (0x23a69e75 != v0) {
                            if (0x2561aca1 != v0) {
                                if (0x25edf1c2 == v0) {
                                    0x25edf1c2();
                                } else if (0x29bec0f6 == v0) {
                                    0x29bec0f6();
                                } else if (0x2c2f9ced == v0) {
                                    0x2c2f9ced();
                                } else if (0x30f76ad9 != v0) {
                                    if (0x3a1c453c != v0) {
                                        if (0x3a2daf8d == v0) {
                                            0x3a2daf8d();
                                        } else if (0x427a2f1c != v0) {
                                            if (0x4d7c481f == v0) {
                                                0x4d7c481f();
                                            } else if (0x58c16b82 != v0) {
                                                if (0x6b40136c != v0) {
                                                    if (0x6e3aab9b != v0) {
                                                        if (0x6f5aeea3 == v0) {
                                                            0x6f5aeea3();
                                                        } else if (0x6fe055ca != v0) {
                                                            if (0x749d3c3b != v0) {
                                                                if (0x7a436efe != v0) {
                                                                    if (0x84800812 != v0) {
                                                                        if (0x871bba25 == v0) {
                                                                            0x871bba25();
                                                                        } else if (0x91dd7346 == v0) {
                                                                            unlockCallback(bytes);
                                                                        } else if (0x9f3d4ab8 != v0) {
                                                                            if (0xa0bd0131 != v0) {
                                                                                if (0xa31de730 == v0) {
                                                                                    0xa31de730();
                                                                                } else {
                                                                                    if (0xaf4cf912 != v0) {
                                                                                        if (0xb6d35a66 != v0) {
                                                                                            if (0xb7754fdd != v0) {
                                                                                                if (0xb9087966 != v0) {
                                                                                                    if (0xbf5fad43 != v0) {
                                                                                                        if (0xc18c82cc != v0) {
                                                                                                            if (0xcafecc44 != v0) {
                                                                                                                if (0xcbf02c23 != v0) {
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
                                                                                    }
                                                                                    0xb7754fdd();
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                0xcafecc44();
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
        }
        0x060cc4b2();
    }
    require(!msg.data.length);
    receive();
}
