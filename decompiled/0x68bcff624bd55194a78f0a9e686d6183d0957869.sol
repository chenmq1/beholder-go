// Decompiled by library.dedaub.com
// 2026.04.13 20:41 UTC
// Compiled using the solidity compiler version 0.8.33


// Data structures and variables inferred from the use of storage instructions
uint256 _pancakeCall; // TRANSIENT_STORAGE[0x0]



function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x11fc(uint256 varg0) private { 
    require(10000 - varg0 <= 10000, Panic(17)); // arithmetic overflow or underflow
    return 10000 - varg0;
}

function 0x120c(uint256 varg0) private { 
    require(varg0 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x134a(uint256 varg0) private { 
    v0 = varg0 >> 224;
    v1 = bool(varg0 >> 148);
    if (0 == (v1 == 1)) {
        if (v1 - 4) {
            if (v1 - 2) {
                if (v1 - 5) {
                    if (v1 - 3) {
                        if (v1 - 6) {
                            if (v1 - 7) {
                                if (v1) {
                                    require(CHAINID() != 1);
                                    v2 = v3 = uint72.max;
                                    v4 = v5 = !v0;
                                    if (bool(v0)) {
                                        v4 = block.timestamp == v0;
                                    }
                                    if (v4) {
                                        v4 = v6 = address(block.coinbase) == block.coinbase;
                                        if (address(block.coinbase) != block.coinbase) {
                                            v4 = v7 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                            if (v7) {
                                                v4 = v8 = address(block.coinbase) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                            }
                                        }
                                    }
                                    require(v4, Error(50));
                                } else {
                                    require(block.timestamp == v0, Error(50));
                                }
                            } else {
                                v2 = v9 = uint72.max;
                                v10 = v11 = !v0;
                                if (bool(v0)) {
                                    v10 = block.timestamp == v0;
                                }
                                if (v10) {
                                    v10 = v12 = address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) == block.coinbase;
                                    if (address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) != block.coinbase) {
                                        v10 = v13 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                        if (v13) {
                                            v10 = v14 = address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                        }
                                    }
                                }
                                require(v10, Error(50));
                            }
                        } else {
                            v2 = v15 = uint72.max;
                            v16 = v17 = !v0;
                            if (bool(v0)) {
                                v16 = block.timestamp == v0;
                            }
                            if (v16) {
                                v16 = v18 = address(0xa28b0ac939fc6baaadc79a94f425345c60463417) == block.coinbase;
                                if (address(0xa28b0ac939fc6baaadc79a94f425345c60463417) != block.coinbase) {
                                    v16 = v19 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                    if (v19) {
                                        v16 = v20 = address(0xa28b0ac939fc6baaadc79a94f425345c60463417) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                    }
                                }
                            }
                            require(v16, Error(50));
                        }
                    } else {
                        v2 = v21 = uint72.max;
                        v22 = v23 = !v0;
                        if (bool(v0)) {
                            v22 = block.timestamp == v0;
                        }
                        if (v22) {
                            v22 = v24 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == block.coinbase;
                            if (address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) != block.coinbase) {
                                v22 = v25 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                if (v25) {
                                    v22 = v26 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                }
                            }
                        }
                        require(v22, Error(50));
                    }
                } else {
                    v2 = v27 = uint72.max;
                    v28 = v29 = !v0;
                    if (bool(v0)) {
                        v28 = block.timestamp == v0;
                    }
                    if (v28) {
                        v28 = v30 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == block.coinbase;
                        if (address(0x396343362be2a4da1ce0c1c210945346fb82aa49) != block.coinbase) {
                            v28 = v31 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                            if (v31) {
                                v28 = v32 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                            }
                        }
                    }
                    require(v28, Error(50));
                }
            } else {
                v2 = v33 = uint72.max;
                v34 = v35 = !v0;
                if (bool(v0)) {
                    v34 = block.timestamp == v0;
                }
                if (v34) {
                    v34 = v36 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == block.coinbase;
                    if (address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) != block.coinbase) {
                        v34 = v37 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                        if (v37) {
                            v34 = v38 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                        }
                    }
                }
                require(v34, Error(50));
            }
        } else {
            v2 = v39 = uint72.max;
            v40 = v41 = !v0;
            if (bool(v0)) {
                v40 = block.timestamp == v0;
            }
            if (v40) {
                v40 = v42 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == block.coinbase;
                if (address(0xdadb0d80178819f2319190d340ce9a924f783711) != block.coinbase) {
                    v40 = v43 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                    if (v43) {
                        v40 = v44 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                    }
                }
            }
            require(v40, Error(50));
        }
    } else {
        v2 = v45 = uint72.max;
        v46 = !v0;
        if (bool(v0)) {
            v46 = v47 = block.timestamp == v0;
        }
        if (v46) {
            v46 = v48 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == block.coinbase;
            if (address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) != block.coinbase) {
                v46 = v49 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                if (v49) {
                    v46 = v50 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                }
            }
        }
        require(v46, Error(50));
    }
    if (0 != (block.coinbase.balance == varg0 >> 152 & v2)) {
        _pancakeCall = 0;
        if (this.balance) {
            v51, /* uint256 */ v52 = block.coinbase.call().value(1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v53 = v54 = new bytes[](RETURNDATASIZE());
                require(!((v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v54)), Panic(65)); // failed memory allocation (too much memory)
                v52 = v54.data;
                RETURNDATACOPY(v52, 0, RETURNDATASIZE());
            }
            return 1;
        } else {
            0x000f41dc();
        }
    }
    return 0;
}

function 0x000f41dc() public payable { 
}

function 0x15ab(uint256 varg0) private { 
    require(!(MEM[varg0] - uint32(MEM[varg0])));
    return MEM[varg0];
}

function 0x15bc(address varg0) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2 = varg0.getReserves().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v3 = 0;
    v2 = v4 = 0;
    if (v0) {
        v5 = v6 = 96;
        if (96 > RETURNDATASIZE()) {
            v5 = v7 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v5 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v2 - uint112(v2)));
        v8 = 0x15ab(MEM[64] + 64);
    }
    return uint112(v2), uint112(v1);
}

function 0x1684() private { 
    if (v0 == 0xf1b30) {
        0x000f1b30(v0);
    } else if (v0 == 0xf3688) {
        0x000f3688(v0);
    } else if (v0 == 0xf404c) {
        0x000f404c(v0);
    } else {
        require(0xf41dc == v0, Error('tickSpacing'));
        0x000f41dc();
    }
}

function 0x000f404c() public payable { 
}

function 0x000f3688() public payable { 
}

function 0x000f1b30() public payable { 
}

function 0x171b(uint256 varg0) private { 
    v0 = MEM[varg0 + 96].slot0().gas(msg.gas);
    require(v0);
    return ;
}

function 0x17d1(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0 * varg2;
    return varg0 * varg2 % uint256.max - v0 - (varg0 * varg2 % uint256.max < v0) + varg1 * varg2, v0;
}

function 0x1843(uint256 varg0, address varg1, uint256 varg2, address varg3, struct(8) varg4) private { 
    MEM[varg0] = varg1;
    MEM[varg0 + 32] = 0;
    MEM[varg0 + 64] = varg2;
    MEM[varg0 + 96] = varg3;
    MEM[varg0 + 128] = 160;
    MEM[varg0 + 160] = varg4.word0;
    MCOPY(varg0 + 160 + 32, varg4.data, varg4.word0);
    MEM[varg0 + 160 + varg4.word0 + 32] = 0;
    return (varg4.word0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (varg0 + 160) + 32;
}

function 0x187a(uint256 varg0, address varg1, uint256 varg2, address varg3, struct(8) varg4) private { 
    MEM[varg0] = varg1;
    MEM[varg0 + 32] = 1;
    MEM[varg0 + 64] = varg2;
    MEM[varg0 + 96] = varg3;
    MEM[varg0 + 128] = 160;
    MEM[varg0 + 160] = varg4.word0;
    MCOPY(varg0 + 160 + 32, varg4.data, varg4.word0);
    MEM[varg0 + 160 + varg4.word0 + 32] = 0;
    return (varg4.word0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (varg0 + 160) + 32;
}

function 0x18af(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = v1 = MEM[varg2];
    v0 = v2 = MEM[varg2 + 32];
    v0 = v3 = 6373;
    v0 = v4 = 6357;
    v5 = v6 = 0x3d94(v2);
    while (1) {
        v0 = 0x3694(v5);
        v0 = v7 = 0x3d94(MEM[v0]);
        v0 = v8 = _SafeDiv(v0, v0);
        v0 = v9 = 0;
        v10, v11, v12 = 0x3ee3(address(MEM[v0 + 96]), int24(MEM[v0 + 32]), int16(MEM[v0 + 128]));
        MEM[v0 + (uint8.max + 1)] = v10;
        MEM[v0 + 224] = v11;
        MEM[160 + v0] = int24(v12);
        v13 = 0x4041(int24(v12));
        MEM[v0 + 192] = address(v13);
        v0 = v14 = 0x43b8(address(MEM[v0]), address(MEM[v0 + 192]), uint128(MEM[v0 + 64]));
        v15 = 0x11fc(v0);
        v0 = _SafeDiv((10000 - v15) * v14 * MEM[v0 + 32], MEM[v0] * 10000 + (10000 - v15) * v14);
        v16 = address(MEM[v0 + 192]);
        v17 = _SafeAdd(MEM[v0], v14);
        v18 = _SafeSub(MEM[v0 + 32], v0);
        v19 = v0 * v0 * v18;
        v20 = 10 ** 10 * v16 * (v16 * v17) % uint256.max - v16 * (v16 * v17) * 10 ** 10 - (10 ** 10 * v16 * (v16 * v17) % uint256.max < v16 * (v16 * v17) * 10 ** 10);
        v21 = v22 = v19 * (uint192.max + 1) % uint256.max - (v19 << 192) - (v19 * (uint192.max + 1) % uint256.max < v19 << 192) < v20;
        if (v19 * (uint192.max + 1) % uint256.max - (v19 << 192) - (v19 * (uint192.max + 1) % uint256.max < v19 << 192) >= v20) {
            v21 = v23 = v19 * (uint192.max + 1) % uint256.max - (v19 << 192) - (v19 * (uint192.max + 1) % uint256.max < v19 << 192) == v20;
            if (v23) {
                v21 = v19 << 192 <= v16 * (v16 * v17) * 10 ** 10;
            }
        }
        if (v21) {
            v0 = v24 = 96;
            v0 = v25 = 64;
            v0 = v26 = 7200;
            v0 = v27 = uint160.max;
            v0 = v28 = 0;
            v29 = 0x36b6(v9);
            v0 = _SafeDiv(v29, v0);
            v30 = v31 = !msg.value;
            if (v31) {
                v32 = address(MEM[v0]);
                v33 = v0 * v0 * MEM[v0 + 32];
                v34 = 10 ** 10 * v32 * (v32 * MEM[v0]) % uint256.max - v32 * (v32 * MEM[v0]) * 10 ** 10 - (10 ** 10 * v32 * (v32 * MEM[v0]) % uint256.max < v32 * (v32 * MEM[v0]) * 10 ** 10);
                v35 = v36 = v33 * (uint192.max + 1) % uint256.max - (v33 << 192) - (v33 * (uint192.max + 1) % uint256.max < v33 << 192) < v34;
                if (v33 * (uint192.max + 1) % uint256.max - (v33 << 192) - (v33 * (uint192.max + 1) % uint256.max < v33 << 192) >= v34) {
                    v35 = v37 = v33 * (uint192.max + 1) % uint256.max - (v33 << 192) - (v33 * (uint192.max + 1) % uint256.max < v33 << 192) == v34;
                    if (v37) {
                        v35 = v33 << 192 <= v32 * (v32 * MEM[v0]) * 10 ** 10;
                    }
                }
                v30 = v38 = !v35;
            }
            if (v28 == v30) {
                v39 = 0x120c(v0);
                MEM[v0] = v0;
                MEM[v0 + 32] = v0;
                v40 = new struct(5);
                v41 = v40.data;
                v40.word1 = MEM[v0];
                v40.word2 = MEM[v0 + 32];
                v40.word3 = 10000 - v0;
                v40.word4 = 1;
                v40.word0 = 128;
                require(!((v40 + 160 > uint64.max) | (v40 + 160 < v40)), Panic(65)); // failed memory allocation (too much memory)
                v42 = new struct(8);
                v43 = v42.data;
                v42.word1 = address(v0);
                v42.word2 = 64;
                v42.word3 = v40.word0;
                MCOPY(v42 + 96 + 32, v40.data, v40.word0);
                MEM[v42 + 96 + v40.word0 + 32] = 0;
                v42.word0 = 224;
                require(!((v42 + (uint8.max + 1) > uint64.max) | (v42 + (uint8.max + 1) < v42)), Panic(65)); // failed memory allocation (too much memory)
                MEM[MEM[v25]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                v44 = 0x1843(MEM[v25] + 4, v0, v39, 0xfffd8963efd1fc6a506488495d951d5263988d25, v42);
                v45, /* uint256 */ v46, /* uint256 */ v47 = address(MEM[v0 + v24]).swap().value(v28).gas(msg.gas);
                require(v45, MEM[64], RETURNDATASIZE());
                v0 = v48 = 7283;
                if (v45) {
                    v49 = v50 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v49 = RETURNDATASIZE();
                        require(!((MEM[v25] + (v49 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v25] + (v49 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v25])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v25] + (v49 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    } else {
                        require(!((MEM[v25] + 64 > uint64.max) | (MEM[v25] + 64 < MEM[v25])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v25] + 64;
                    }
                    require(MEM[v25] + v49 - MEM[v25] >= 64);
                }
                _pancakeCall = 0;
                v51, v52 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                require(v51, MEM[64], RETURNDATASIZE());
                v52 = 0;
                if (v51) {
                    v53 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v53 = v54 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v53 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v53 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v53 - MEM[64] >= 32);
                }
                v55 = this.balance;
                v56 = _SafeAdd(v52, v55);
                v57 = _SafeSub(v56, v0);
                if (!(v0 >> 50 & 0x3ff)) {
                    v58 = _SafeSub(uint24(v0 >> 60), msg.gas);
                    require(v58 <= v58 + 1000, Panic(17)); // arithmetic overflow or underflow
                    v59 = _SafeMul(v0 & 0x3ffffffffffff, v58 + 1000);
                    require(v59 < v57, Error(52));
                    require(msg.gas <= msg.gas + 1000, Panic(17)); // arithmetic overflow or underflow
                    require(msg.gas + 1000 >= msg.gas, Error(13665));
                    v60 = _SafeSub(v57, v59);
                    v61 = 0;
                    v62 = v0 & 0x3ffffffffffff < 10 ** 9;
                    if (v62) {
                        v61 = v63 = 0;
                        v62 = v64 = 10 ** 17 < v56;
                    }
                    if (v62) {
                        require(!(20000 * (v0 & 0x3ffffffffffff) / 20000 - (v0 & 0x3ffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                        v62 = v65 = v60 > 20000 * (v0 & 0x3ffffffffffff);
                    }
                    if (v62) {
                        if (this.balance >= v52) {
                            require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                            v66, /* uint256 */ v67 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v68 = v69 = new bytes[](RETURNDATASIZE());
                                require(!((v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v69)), Panic(65)); // failed memory allocation (too much memory)
                                v67 = v69.data;
                                RETURNDATACOPY(v67, 0, RETURNDATASIZE());
                            }
                        }
                    }
                } else {
                    v70 = _SafeSub(uint24(v0 >> 60), msg.gas);
                    require(v70 <= v70 + 25000, Panic(17)); // arithmetic overflow or underflow
                    v71 = _SafeMul(v0 & 0x3ffffffffffff, v70 + 25000);
                    require(v71 < v57, Error(52));
                    v72 = _SafeSub(v57, v71);
                    require(v0 >> 50 & 0x3ff <= 1000);
                    v73 = _SafeMul(v72, v0 >> 50 & 0x3ff);
                    v74 = _SafeSub(v72, v73 / 1000);
                    v75 = 0;
                    v76 = this.balance <= v73 / 1000;
                    if (v76) {
                        v76 = v77 = v52 > 1;
                    }
                    if (v76) {
                        require(v52 - 1 <= v52, Panic(17)); // arithmetic overflow or underflow
                        v78 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v52 - 1).gas(msg.gas);
                        require(v78, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        v75 = v79 = 1;
                    }
                    if (v73 / 1000) {
                        v80 = block.coinbase.call().value(v73 / 1000).gas(10000);
                    }
                    require(msg.gas <= msg.gas + 25000, Panic(17)); // arithmetic overflow or underflow
                    require(msg.gas + 25000 >= msg.gas, Error(13666));
                    v81 = v0 & 0x3ffffffffffff < 10 ** 9;
                    if (v81) {
                        v82 = _SafeSub(v56, v73 / 1000);
                        v81 = v83 = v82 > 10 ** 17;
                    }
                    if (v81) {
                        require(!(20000 * (v0 & 0x3ffffffffffff) / 20000 - (v0 & 0x3ffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                        v81 = v84 = v74 > 20000 * (v0 & 0x3ffffffffffff);
                    }
                    if (v81) {
                        if (!v75) {
                            if (this.balance >= v52) {
                                require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                                v85, /* uint256 */ v86 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                                if (RETURNDATASIZE()) {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v87 = v88 = new bytes[](RETURNDATASIZE());
                                    require(!((v88 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v88 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v88)), Panic(65)); // failed memory allocation (too much memory)
                                    v86 = v88.data;
                                    RETURNDATACOPY(v86, 0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                            v89, /* uint256 */ v90 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v91 = v92 = new bytes[](RETURNDATASIZE());
                                require(!((v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v92)), Panic(65)); // failed memory allocation (too much memory)
                                v90 = v92.data;
                                RETURNDATACOPY(v90, 0, RETURNDATASIZE());
                            }
                        }
                    }
                }
                return ;
                require(v52 - 1 <= v52, Panic(17)); // arithmetic overflow or underflow
                0x20f3(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v52 - 1);
                // Unknown jump to Block 0x1c730x18af. Refer to 3-address code (TAC);
            } else {
                v0 = v93 = 7140;
                v0 = v94 = 7154;
                v0 = v95 = 7148;
                v0 = v96 = 625;
                v0 = v97 = 7097;
                v0 = v98 = 7091;
                v0 = v99 = address(MEM[v0]);
                v0 = v100 = uint128(MEM[v0 + v25]);
                v0 = v101 = 7042;
                v0 = v102 = MEM[v0];
                v5 = v103 = _SafeMul(v102, MEM[v0 + 32]);
            }
        } else {
            v0 = v104 = 6803;
            v0 = v105 = 6795;
            v0 = v106 = 6815;
            v0 = v107 = 6649;
            v0 = v108 = 6367;
            v0 = v109 = 6637;
            v0 = v110 = 6642;
            v0 = v111 = 6352;
            v5 = _SafeSub(MEM[v0 + 32], v0);
        }
        v112 = MEM[v0];
        v5 = v112 + v0;
        require(v112 <= v5, Panic(17)); // arithmetic overflow or underflow
        v5 = 0x3d94(v5);
        if (!v5) {
            v0 = v113 = 0;
            // Unknown jump to Block 0x18df0x18af. Refer to 3-address code (TAC);
        } else {
            v114 = v5 >> (((v5 > uint128.max + 1) | (v5 == uint128.max + 1)) << 7);
            v115 = v114 >> (((v114 > uint64.max + 1) | (v114 == uint64.max + 1)) << 6) >> (((v114 >> (((v114 > uint64.max + 1) | (v114 == uint64.max + 1)) << 6) > uint32.max + 1) | (v114 >> (((v114 > uint64.max + 1) | (v114 == uint64.max + 1)) << 6) == uint32.max + 1)) << 5);
            v116 = v115 >> (((v115 > uint16.max + 1) | (v115 == uint16.max + 1)) << 4) >> (((v115 >> (((v115 > uint16.max + 1) | (v115 == uint16.max + 1)) << 4) > uint8.max + 1) | (v115 >> (((v115 > uint16.max + 1) | (v115 == uint16.max + 1)) << 4) == uint8.max + 1)) << 3);
            v117 = 1 << (((v5 > uint128.max + 1) | (v5 == uint128.max + 1)) << 6) << (((v114 > uint64.max + 1) | (v114 == uint64.max + 1)) << 5) << (((v114 >> (((v114 > uint64.max + 1) | (v114 == uint64.max + 1)) << 6) > uint32.max + 1) | (v114 >> (((v114 > uint64.max + 1) | (v114 == uint64.max + 1)) << 6) == uint32.max + 1)) << 4) << (((v115 > uint16.max + 1) | (v115 == uint16.max + 1)) << 3) << (((v115 >> (((v115 > uint16.max + 1) | (v115 == uint16.max + 1)) << 4) > uint8.max + 1) | (v115 >> (((v115 > uint16.max + 1) | (v115 == uint16.max + 1)) << 4) == uint8.max + 1)) << 2) << (((v116 > 16) | (v116 == 16)) << 1) << (((v116 >> (((v116 > 16) | (v116 == 16)) << 2) > 8) | (v116 >> (((v116 > 16) | (v116 == 16)) << 2) == 8)) << 1);
            v118 = _SafeDiv(v5, v117);
            v119 = _SafeDiv(v5, v118 + v117 >> 1);
            v120 = _SafeDiv(v5, v119 + (v118 + v117 >> 1) >> 1);
            v121 = _SafeDiv(v5, v120 + (v119 + (v118 + v117 >> 1) >> 1) >> 1);
            v122 = _SafeDiv(v5, v121 + (v120 + (v119 + (v118 + v117 >> 1) >> 1) >> 1) >> 1);
            v123 = _SafeDiv(v5, v122 + (v121 + (v120 + (v119 + (v118 + v117 >> 1) >> 1) >> 1) >> 1) >> 1);
            v124 = _SafeDiv(v5, v123 + (v122 + (v121 + (v120 + (v119 + (v118 + v117 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1);
            v0 = v124 + (v123 + (v122 + (v121 + (v120 + (v119 + (v118 + v117 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1) >> 1;
            v0 = _SafeDiv(v5, v0);
            if (v0 < v0) {
                // Unknown jump to Block 0x18df0x18af. Refer to 3-address code (TAC);
            } else {
                // Unknown jump to Block 0x18df0x18af. Refer to 3-address code (TAC);
            }
        }
    }
    require(v0, Panic(18)); // division by zero
    v125 = v126 = address(MEM[v0]);
    v0 = v127 = address(MEM[v0 + 192]);
    v0 = v128 = uint128(MEM[v0 + 64]);
    v125 = v129 = 0x450c(v126, v127, v128);
    require(!((int128(uint128(MEM[v0 + 64])) + int128(MEM[v0 + 224]) > int128.max) | (int128(uint128(MEM[v0 + 64])) + int128(MEM[v0 + 224]) < int128.min)), Panic(17)); // arithmetic overflow or underflow
    v130 = (v0 << 91) * v5;
    v131 = v132, v133 = v134 = 0x17d1(v130 - v0 * v0 * 3125, 0 - (3125 * v0 * v0 % uint256.max - v0 * v0 * 3125 - (3125 * v0 * v0 % uint256.max < v0 * v0 * 3125) + (v130 < v0 * v0 * 3125)), 3125 * v0);
    v133 = v135, v131 = v136 = 0x17d1(v134, v132, v0);
    // Unknown jump to Block 0x17d10x18af. Refer to 3-address code (TAC);
}

function 0x1ced(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x1d19(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = v1 = MEM[varg1];
    v0 = v2 = MEM[varg1 + 32];
    v0 = v3 = uint160.max;
    v0 = v4 = 7542;
    v0 = v5 = 160;
    v0 = v6 = 0;
    v0 = v7 = 7509;
    v0 = v8 = 6367;
    v0 = v9 = 7502;
    v10 = v11 = 0x3d94(v2);
    while (1) {
        v0 = 0x3694(v10);
        v0 = v12 = 0x3d94(MEM[v0]);
        v0 = v13 = _SafeDiv(v0, v0);
        v14, v15, v16 = 0x4007(MEM[v0 + 96] & v0, int24(MEM[v0 + 32]), int16(MEM[v0 + 128]));
        MEM[v0 + (uint8.max + 1)] = v14;
        MEM[v0 + 224] = v15;
        MEM[v0 + v0] = int24(v16);
        v17 = 0x4041(int24(v16));
        MEM[v0 + 192] = v17 & v0;
        v18 = 0x45d2(address(MEM[v0]), address(MEM[v0 + 192]), int128(uint128(MEM[v0 + 64])));
        v0 = 0x45b1(v18, v0);
        v19 = 0x11fc(v0);
        v20 = _SafeDiv(MEM[v0 + 32] * v0 * 10000, (MEM[v0] - v0) * (10000 - v19));
        v0 = v20 + 1;
        v21 = _SafeSub(MEM[v0], v0);
        v22 = _SafeAdd(MEM[v0 + 32], v0);
        v23 = 0x4671(v21, v22, v0, address(MEM[v0 + 192]), v0);
        if (v23) {
            v24 = !msg.value;
            if (v24) {
                v25 = 0x4671(MEM[v0], MEM[v0 + 32], v0, address(MEM[v0]), v0);
                v24 = v26 = !v25;
            }
            if (0 == v24) {
                v27 = v28 = 0x120c(v0);
            } else {
                v29 = _SafeMul(MEM[v0 + 32], MEM[v0]);
                v30 = 0x3d94(v29);
                v31 = v0 * v30 * 0x186a0000000000000000000000000;
                v32, v33 = 0x17d1(v0 * v0 * address(MEM[v0]) * MEM[v0] - v31, v0 * v0 * address(MEM[v0]) * MEM[v0] % uint256.max - v0 * v0 * address(MEM[v0]) * MEM[v0] - (v0 * v0 * address(MEM[v0]) * MEM[v0] % uint256.max < v0 * v0 * address(MEM[v0]) * MEM[v0]) - (v0 * v0 * address(MEM[v0]) * MEM[v0] < v31), address(MEM[v0]));
                v34, v35 = 0x17d1(v33, v32, uint128(MEM[v0 + 64]));
                v36, v37 = 0x17d1(0xf4240000000000000000000000000 * uint128(MEM[v0 + 64]) + address(MEM[v0]) * (v0 * MEM[v0]), address(MEM[v0]) * (v0 * MEM[v0]) % uint256.max - address(MEM[v0]) * (v0 * MEM[v0]) - (address(MEM[v0]) * (v0 * MEM[v0]) % uint256.max < address(MEM[v0]) * (v0 * MEM[v0])) + (0xf4240000000000000000000000000 * uint128(MEM[v0 + 64]) + address(MEM[v0]) * (v0 * MEM[v0]) < 0xf4240000000000000000000000000 * uint128(MEM[v0 + 64])), v0 << 96);
                v38 = 0x50f6(v34, v35, v36, v37);
                v27 = v39 = _SafeAdd(v0, v38);
            }
            MEM[v0] = v0;
            MEM[v0 + 32] = v0;
            require(v27 != int256.min, Panic(17)); // arithmetic overflow or underflow
            v40 = 0x37b2(v0, v0, 10000 - v0);
            v41 = 0x187a(MEM[64] + 4, this, 0 - v27, 0x1000276a4, v40);
            v42, /* uint256 */ v43, /* uint256 */ v44 = address(MEM[v0 + 96]).swap().gas(msg.gas);
            require(v42, MEM[64], RETURNDATASIZE());
            v0 = v45 = 7283;
            if (v42) {
                v46 = v47 = 64;
                if (64 > RETURNDATASIZE()) {
                    v46 = RETURNDATASIZE();
                    require(!((MEM[64] + (v46 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v46 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v46 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                } else {
                    require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 64;
                }
                require(MEM[64] + v46 - MEM[64] >= 64);
            }
            _pancakeCall = 0;
            v48, v49 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v48, MEM[64], RETURNDATASIZE());
            v49 = 0;
            if (v48) {
                v50 = 32;
                if (32 > RETURNDATASIZE()) {
                    v50 = v51 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v50 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v50 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v50 - MEM[64] >= 32);
            }
            v52 = this.balance;
            v53 = _SafeAdd(v49, v52);
            v54 = _SafeSub(v53, v0);
            if (!(v0 >> 50 & 0x3ff)) {
                v55 = _SafeSub(uint24(v0 >> 60), msg.gas);
                require(v55 <= v55 + 1000, Panic(17)); // arithmetic overflow or underflow
                v56 = _SafeMul(v0 & 0x3ffffffffffff, v55 + 1000);
                require(v56 < v54, Error(52));
                require(msg.gas <= msg.gas + 1000, Panic(17)); // arithmetic overflow or underflow
                require(msg.gas + 1000 >= msg.gas, Error(13665));
                v57 = _SafeSub(v54, v56);
                v58 = 0;
                v59 = v0 & 0x3ffffffffffff < 10 ** 9;
                if (v59) {
                    v58 = v60 = 0;
                    v59 = v61 = 10 ** 17 < v53;
                }
                if (v59) {
                    require(!(20000 * (v0 & 0x3ffffffffffff) / 20000 - (v0 & 0x3ffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                    v59 = v62 = v57 > 20000 * (v0 & 0x3ffffffffffff);
                }
                if (v59) {
                    if (this.balance >= v49) {
                        require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                        v63, /* uint256 */ v64 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v65 = v66 = new bytes[](RETURNDATASIZE());
                            require(!((v66 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v66 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v66)), Panic(65)); // failed memory allocation (too much memory)
                            v64 = v66.data;
                            RETURNDATACOPY(v64, 0, RETURNDATASIZE());
                        }
                    }
                }
            } else {
                v67 = _SafeSub(uint24(v0 >> 60), msg.gas);
                require(v67 <= v67 + 25000, Panic(17)); // arithmetic overflow or underflow
                v68 = _SafeMul(v0 & 0x3ffffffffffff, v67 + 25000);
                require(v68 < v54, Error(52));
                v69 = _SafeSub(v54, v68);
                require(v0 >> 50 & 0x3ff <= 1000);
                v70 = _SafeMul(v69, v0 >> 50 & 0x3ff);
                v71 = _SafeSub(v69, v70 / 1000);
                v72 = 0;
                v73 = this.balance <= v70 / 1000;
                if (v73) {
                    v73 = v74 = v49 > 1;
                }
                if (v73) {
                    require(v49 - 1 <= v49, Panic(17)); // arithmetic overflow or underflow
                    v75 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v49 - 1).gas(msg.gas);
                    require(v75, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    v72 = v76 = 1;
                }
                if (v70 / 1000) {
                    v77 = block.coinbase.call().value(v70 / 1000).gas(10000);
                }
                require(msg.gas <= msg.gas + 25000, Panic(17)); // arithmetic overflow or underflow
                require(msg.gas + 25000 >= msg.gas, Error(13666));
                v78 = v0 & 0x3ffffffffffff < 10 ** 9;
                if (v78) {
                    v79 = _SafeSub(v53, v70 / 1000);
                    v78 = v80 = v79 > 10 ** 17;
                }
                if (v78) {
                    require(!(20000 * (v0 & 0x3ffffffffffff) / 20000 - (v0 & 0x3ffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                    v78 = v81 = v71 > 20000 * (v0 & 0x3ffffffffffff);
                }
                if (v78) {
                    if (!v72) {
                        if (this.balance >= v49) {
                            require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                            v82, /* uint256 */ v83 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v84 = v85 = new bytes[](RETURNDATASIZE());
                                require(!((v85 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v85 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v85)), Panic(65)); // failed memory allocation (too much memory)
                                v83 = v85.data;
                                RETURNDATACOPY(v83, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                        v86, /* uint256 */ v87 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v88 = v89 = new bytes[](RETURNDATASIZE());
                            require(!((v89 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v89 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v89)), Panic(65)); // failed memory allocation (too much memory)
                            v87 = v89.data;
                            RETURNDATACOPY(v87, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
            require(v49 - 1 <= v49, Panic(17)); // arithmetic overflow or underflow
            0x20f3(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v49 - 1);
            // Unknown jump to Block 0x1c730x1d19. Refer to 3-address code (TAC);
        } else {
            v0 = v90 = 7862;
            v0 = v91 = 7854;
            v0 = v92 = 7874;
            v0 = v93 = 7752;
            v0 = v94 = 6367;
            v0 = v95 = 6637;
            v0 = v96 = 7745;
            v0 = v97 = 6352;
            v10 = v98 = _SafeAdd(MEM[v0 + 32], v0);
        }
        v99 = MEM[v0];
        v10 = v99 - v0;
        require(v10 <= v99, Panic(17)); // arithmetic overflow or underflow
        v10 = 0x3d94(v10);
        if (!v10) {
            v0 = v100 = 0;
            // Unknown jump to Block 0x18df0x1d19. Refer to 3-address code (TAC);
        } else {
            v101 = (v10 >> (((v10 > uint128.max + 1) | (v10 == uint128.max + 1)) << 7) > uint64.max + 1) | (v10 >> (((v10 > uint128.max + 1) | (v10 == uint128.max + 1)) << 7) == uint64.max + 1);
            v102 = v10 >> (((v10 > uint128.max + 1) | (v10 == uint128.max + 1)) << 7) >> (v101 << 6);
            v103 = v102 >> (((v102 > uint32.max + 1) | (v102 == uint32.max + 1)) << 5) >> (((v102 >> (((v102 > uint32.max + 1) | (v102 == uint32.max + 1)) << 5) > uint16.max + 1) | (v102 >> (((v102 > uint32.max + 1) | (v102 == uint32.max + 1)) << 5) == uint16.max + 1)) << 4);
            v104 = 1 << (((v10 > uint128.max + 1) | (v10 == uint128.max + 1)) << 6) << (v101 << 5) << (((v102 > uint32.max + 1) | (v102 == uint32.max + 1)) << 4) << (((v102 >> (((v102 > uint32.max + 1) | (v102 == uint32.max + 1)) << 5) > uint16.max + 1) | (v102 >> (((v102 > uint32.max + 1) | (v102 == uint32.max + 1)) << 5) == uint16.max + 1)) << 3) << (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 2) << (((v103 >> (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 3) > 16) | (v103 >> (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 3) == 16)) << 1) << (((v103 >> (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 3) >> (((v103 >> (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 3) > 16) | (v103 >> (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 3) == 16)) << 2) > 8) | (v103 >> (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 3) >> (((v103 >> (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 3) > 16) | (v103 >> (((v103 > uint8.max + 1) | (v103 == uint8.max + 1)) << 3) == 16)) << 2) == 8)) << 1);
            v105 = _SafeDiv(v10, v104);
            v106 = _SafeDiv(v10, v105 + v104 >> 1);
            v107 = _SafeDiv(v10, v106 + (v105 + v104 >> 1) >> 1);
            v108 = _SafeDiv(v10, v107 + (v106 + (v105 + v104 >> 1) >> 1) >> 1);
            v109 = _SafeDiv(v10, v108 + (v107 + (v106 + (v105 + v104 >> 1) >> 1) >> 1) >> 1);
            v110 = _SafeDiv(v10, v109 + (v108 + (v107 + (v106 + (v105 + v104 >> 1) >> 1) >> 1) >> 1) >> 1);
            v111 = _SafeDiv(v10, v110 + (v109 + (v108 + (v107 + (v106 + (v105 + v104 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1);
            v0 = v112 = v111 + (v110 + (v109 + (v108 + (v107 + (v106 + (v105 + v104 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1) >> 1;
            v0 = v113 = _SafeDiv(v10, v112);
            if (v112 < v113) {
                // Unknown jump to Block 0x18df0x1d19. Refer to 3-address code (TAC);
            } else {
                // Unknown jump to Block 0x18df0x1d19. Refer to 3-address code (TAC);
            }
        }
    }
    require(v0, Panic(18)); // division by zero
    v0 = v114 = address(MEM[v0]);
    v0 = v115 = address(MEM[v0 + 192]);
    v0 = v116 = uint128(MEM[v0 + 64]);
    v0 = v117 = 0x4546(v114, v115, v116);
    require(!((int128(uint128(MEM[v0 + 64])) - int128(MEM[v0 + 224]) < int128.min) | (int128(uint128(MEM[v0 + 64])) - int128(MEM[v0 + 224]) > int128.max)), Panic(17)); // arithmetic overflow or underflow
    if (address(v0) <= address(v0)) {
    }
}

function 0x20f3(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.transfer(0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54, varg1).gas(msg.gas);
    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v1 == 1)) & v0);
    return ;
}

function 0x215b(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, varg1).gas(msg.gas);
    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v1 == 1)) & v0);
    return ;
}

function 0xfdfc9d13(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    _pancakeCall = 1;
    v0 = 0x134a(varg2);
    if (!v0) {
        v1, v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = v5 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v6 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v4 - MEM[64] >= 32);
        }
        v7 = _SafeAdd(v2, this.balance);
    } else {
        exit;
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = v1 = 0;
    require(_pancakeCall);
    if (data.length) {
        require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = new bytes[](data.length);
        require(!((v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
        require(data.data + data.length <= msg.data.length);
        CALLDATACOPY(v2.data, data.data, data.length);
        v2[data.length] = 0;
        v3, v0 = v4 = 0x35e0(v2);
        if (v3.length) {
            require(v3 + v3.length - v3 >= 128);
            v5 = v6 = MEM[v3.data];
            v5 = MEM[v3 + 64];
            require(!(MEM[v3 + 128] - bool(MEM[v3 + 128])));
            v0 = v7 = 0;
            if (!MEM[v3 + 128]) {
                if (0 == amount1Delta > 0) {
                    v8 = _SafeDiv(v5 * amount0Delta * 10000, (v6 - amount0Delta) * (10000 - MEM[v3 + 96]));
                    v0 = v9 = 0xcac(v8 + 1, 4323);
                } else {
                    v0 = v10 = 0;
                    v11 = _SafeDiv(v6 * amount1Delta * 10000, (v5 - amount1Delta) * (10000 - MEM[v3 + 96]));
                    0x215b(v4, v11 + 1);
                }
                require((address(v0)).code.size);
                v12, /* uint256 */ v13 = address(v0).swap(v0, v0, msg.sender, 128, 0).gas(msg.gas);
                require(v12, v13, RETURNDATASIZE());
                if (v12) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    exit;
                } else {
                    return MEM[ve7a:ve7a + ve7a];
                }
            } else {
                if (amount1Delta <= v1) {
                    v14 = v15 = 10000;
                    v16 = v17 = 4261;
                    v18 = v19 = 0x1ced(amount1Delta);
                } else {
                    v0 = v20 = uint160.max;
                    v16 = v21 = 4093;
                    v14 = v22 = 10000;
                    v18 = v23 = 0x1ced(amount0Delta);
                }
                v0 = v24 = _SafeDiv((v14 - MEM[v3 + 96]) * v18 * v5, v5 * v14 + (v14 - MEM[v3 + 96]) * v18);
                require((v0 & v0).code.size, v0, v0);
                v25 = (v0 & v0).swap(v0, v0, this, 128, 0).value(v0).gas(msg.gas);
                require(v25, MEM[64], RETURNDATASIZE());
                if (v25) {
                    require(!((MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!v0, v1, v1);
                }
                0x215b(msg.sender, v0);
                v0 = v26 = uint160.max;
                // Unknown jump to Block 0x1000. Refer to 3-address code (TAC);
            }
        } else {
            v27 = v28 = 0x1ced(amount1Delta);
            v0 = v29 = 1;
            v30 = v31 = 0x1000276a4;
            if (amount0Delta > v1) {
                v27 = v32 = 0x1ced(amount0Delta);
                v30 = v33 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            v34, /* uint256 */ v35, /* uint256 */ v36 = address(v4).swap(msg.sender, bool(v0), v27, address(v30), 160, v1).value(v1).gas(msg.gas);
            require(v34, MEM[64], RETURNDATASIZE());
            if (v34) {
                v37 = v38 = 64;
                if (64 > RETURNDATASIZE()) {
                    v37 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v37 - MEM[64] >= 64);
                return MEM[ve7a:ve7a + ve7a];
            } else {
                return MEM[ve7a:ve7a + ve7a];
            }
        }
    } else if (amount0Delta <= v1) {
        0x215b(msg.sender, amount1Delta);
    } else {
        0x215b(msg.sender, amount0Delta);
    }
    return MEM[ve7a:ve7a + ve7a];
}

function 0xda95afab(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    _pancakeCall = 1;
    v0 = 0x134a(varg2);
    if (!v0) {
        v1, v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = v5 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v6 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v4 - MEM[64] >= 32);
        }
        v7 = _SafeAdd(v2, this.balance);
        v8, v9 = 0x15bc(varg0);
        v10 = new struct(2);
        require(!((v10 + 64 > uint64.max) | (v10 + 64 < v10)), Panic(65)); // failed memory allocation (too much memory)
        v10.word0 = v9;
        v10.word1 = v8;
    } else {
        exit;
    }
}

function 0x2e64(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = v1 = MEM[varg2];
    v0 = v2 = MEM[varg2 + 32];
    v0 = v3 = 11909;
    v0 = v4 = 6357;
    v5 = v6 = 0x3d94(v2);
    while (1) {
        v0 = 0x3694(v5);
        v0 = v7 = 0x3d94(MEM[v0]);
        v0 = v8 = _SafeDiv(v0, v0);
        v0 = v9 = 0;
        v10, v11, v12 = 0x4007(address(MEM[v0 + 96]), int24(MEM[v0 + 32]), int16(MEM[v0 + 128]));
        MEM[v0 + (uint8.max + 1)] = v10;
        MEM[v0 + 224] = v11;
        MEM[v0 + 160] = int24(v12);
        v13 = 0x4041(int24(v12));
        MEM[v0 + 192] = address(v13);
        v0 = v14 = 0x450c(address(MEM[v0]), address(MEM[v0 + 192]), uint128(MEM[v0 + 64]));
        v15 = 0x11fc(v0);
        v0 = _SafeDiv((10000 - v15) * v14 * MEM[v0], MEM[v0 + 32] * 10000 + (10000 - v15) * v14);
        v16 = _SafeSub(MEM[v0], v0);
        v17 = _SafeAdd(MEM[v0 + 32], v14);
        v18 = 0x47cf(address(MEM[v0 + 192]), v0, v16, v17, v0);
        if (v18) {
            v0 = v19 = 96;
            v0 = v20 = 64;
            v0 = v21 = 12665;
            v0 = v22 = uint160.max;
            v0 = v23 = 0;
            v24 = 0x36b6(v9);
            v0 = _SafeDiv(v24, v0);
            v25 = v26 = !msg.value;
            if (v26) {
                v27 = 0x47cf(address(MEM[v0]), v0, MEM[v0], MEM[v0 + 32], v0);
                v25 = v28 = !v27;
            }
            if (v23 == v25) {
                v29 = 0x120c(v0);
                MEM[v0] = v0;
                MEM[v0 + 32] = v0;
                v30 = new struct(5);
                v31 = v30.data;
                v30.word1 = MEM[v0];
                v30.word2 = MEM[v0 + 32];
                v30.word3 = 10000 - v0;
                v30.word4 = 1;
                v30.word0 = 128;
                require(!((v30 + 160 > uint64.max) | (v30 + 160 < v30)), Panic(65)); // failed memory allocation (too much memory)
                v32 = new struct(8);
                v33 = v32.data;
                v32.word1 = address(v0);
                v32.word2 = 64;
                v32.word3 = v30.word0;
                MCOPY(v32 + 96 + 32, v30.data, v30.word0);
                MEM[v32 + 96 + v30.word0 + 32] = 0;
                v32.word0 = 224;
                require(!((v32 + (uint8.max + 1) > uint64.max) | (v32 + (uint8.max + 1) < v32)), Panic(65)); // failed memory allocation (too much memory)
                MEM[MEM[v20]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                v34 = 0x187a(MEM[v20] + 4, v0, v29, 0x1000276a4, v32);
                v35, /* uint256 */ v36, /* uint256 */ v37 = address(MEM[v0 + v19]).swap().value(v23).gas(msg.gas);
                require(v35, MEM[64], RETURNDATASIZE());
                v0 = v38 = 7283;
                if (v35) {
                    v39 = v40 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v39 = RETURNDATASIZE();
                        require(!((MEM[v20] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v20] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v20])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v20] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    } else {
                        require(!((MEM[v20] + 64 > uint64.max) | (MEM[v20] + 64 < MEM[v20])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v20] + 64;
                    }
                    require(MEM[v20] + v39 - MEM[v20] >= 64);
                }
                _pancakeCall = 0;
                v41, v42 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                require(v41, MEM[64], RETURNDATASIZE());
                v42 = 0;
                if (v41) {
                    v43 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v43 = v44 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v43 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v43 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v43 - MEM[64] >= 32);
                }
                v45 = this.balance;
                v46 = _SafeAdd(v42, v45);
                v47 = _SafeSub(v46, v0);
                if (!(v0 >> 50 & 0x3ff)) {
                    v48 = _SafeSub(uint24(v0 >> 60), msg.gas);
                    require(v48 <= v48 + 1000, Panic(17)); // arithmetic overflow or underflow
                    v49 = _SafeMul(v0 & 0x3ffffffffffff, v48 + 1000);
                    require(v49 < v47, Error(52));
                    require(msg.gas <= msg.gas + 1000, Panic(17)); // arithmetic overflow or underflow
                    require(msg.gas + 1000 >= msg.gas, Error(13665));
                    v50 = _SafeSub(v47, v49);
                    v51 = 0;
                    v52 = v0 & 0x3ffffffffffff < 10 ** 9;
                    if (v52) {
                        v51 = v53 = 0;
                        v52 = v54 = 10 ** 17 < v46;
                    }
                    if (v52) {
                        require(!(20000 * (v0 & 0x3ffffffffffff) / 20000 - (v0 & 0x3ffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                        v52 = v55 = v50 > 20000 * (v0 & 0x3ffffffffffff);
                    }
                    if (v52) {
                        if (this.balance >= v42) {
                            require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                            v56, /* uint256 */ v57 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v58 = v59 = new bytes[](RETURNDATASIZE());
                                require(!((v59 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v59 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v59)), Panic(65)); // failed memory allocation (too much memory)
                                v57 = v59.data;
                                RETURNDATACOPY(v57, 0, RETURNDATASIZE());
                            }
                        }
                    }
                } else {
                    v60 = _SafeSub(uint24(v0 >> 60), msg.gas);
                    require(v60 <= v60 + 25000, Panic(17)); // arithmetic overflow or underflow
                    v61 = _SafeMul(v0 & 0x3ffffffffffff, v60 + 25000);
                    require(v61 < v47, Error(52));
                    v62 = _SafeSub(v47, v61);
                    require(v0 >> 50 & 0x3ff <= 1000);
                    v63 = _SafeMul(v62, v0 >> 50 & 0x3ff);
                    v64 = _SafeSub(v62, v63 / 1000);
                    v65 = 0;
                    v66 = this.balance <= v63 / 1000;
                    if (v66) {
                        v66 = v67 = v42 > 1;
                    }
                    if (v66) {
                        require(v42 - 1 <= v42, Panic(17)); // arithmetic overflow or underflow
                        v68 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v42 - 1).gas(msg.gas);
                        require(v68, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        v65 = v69 = 1;
                    }
                    if (v63 / 1000) {
                        v70 = block.coinbase.call().value(v63 / 1000).gas(10000);
                    }
                    require(msg.gas <= msg.gas + 25000, Panic(17)); // arithmetic overflow or underflow
                    require(msg.gas + 25000 >= msg.gas, Error(13666));
                    v71 = v0 & 0x3ffffffffffff < 10 ** 9;
                    if (v71) {
                        v72 = _SafeSub(v46, v63 / 1000);
                        v71 = v73 = v72 > 10 ** 17;
                    }
                    if (v71) {
                        require(!(20000 * (v0 & 0x3ffffffffffff) / 20000 - (v0 & 0x3ffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                        v71 = v74 = v64 > 20000 * (v0 & 0x3ffffffffffff);
                    }
                    if (v71) {
                        if (!v65) {
                            if (this.balance >= v42) {
                                require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                                v75, /* uint256 */ v76 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                                if (RETURNDATASIZE()) {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v77 = v78 = new bytes[](RETURNDATASIZE());
                                    require(!((v78 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v78 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v78)), Panic(65)); // failed memory allocation (too much memory)
                                    v76 = v78.data;
                                    RETURNDATACOPY(v76, 0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                            v79, /* uint256 */ v80 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v81 = v82 = new bytes[](RETURNDATASIZE());
                                require(!((v82 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v82 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v82)), Panic(65)); // failed memory allocation (too much memory)
                                v80 = v82.data;
                                RETURNDATACOPY(v80, 0, RETURNDATASIZE());
                            }
                        }
                    }
                }
                return ;
                require(v42 - 1 <= v42, Panic(17)); // arithmetic overflow or underflow
                0x20f3(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v42 - 1);
                // Unknown jump to Block 0x1c730x2e64. Refer to 3-address code (TAC);
            } else {
                v0 = v83 = 7140;
                v0 = v84 = 12634;
                v0 = v85 = 7148;
                v0 = v86 = address(MEM[v0]);
                v0 = v87 = 12582;
                v0 = v88 = uint128(MEM[v0 + 64]);
                v0 = v89 = 12511;
                v0 = v90 = MEM[v0 + 32];
                v5 = v91 = _SafeMul(MEM[v0], v90);
            }
        } else {
            v0 = v92 = 12240;
            v0 = v93 = 12232;
            v0 = v94 = 12252;
            v0 = v95 = 12174;
            v0 = v96 = 6367;
            v0 = v97 = 6637;
            v0 = v98 = 7745;
            v0 = v99 = 6352;
            v5 = v100 = _SafeAdd(MEM[v0 + 32], v14);
        }
        v101 = MEM[v0];
        v5 = v101 - v0;
        require(v5 <= v101, Panic(17)); // arithmetic overflow or underflow
        v5 = 0x3d94(v5);
        if (!v5) {
            v0 = v102 = 0;
            // Unknown jump to Block 0x18df0x2e64. Refer to 3-address code (TAC);
        } else {
            v103 = v5 >> (((v5 > uint128.max + 1) | (v5 == uint128.max + 1)) << 7);
            v104 = v103 >> (((v103 > uint64.max + 1) | (v103 == uint64.max + 1)) << 6) >> (((v103 >> (((v103 > uint64.max + 1) | (v103 == uint64.max + 1)) << 6) > uint32.max + 1) | (v103 >> (((v103 > uint64.max + 1) | (v103 == uint64.max + 1)) << 6) == uint32.max + 1)) << 5);
            v105 = v104 >> (((v104 > uint16.max + 1) | (v104 == uint16.max + 1)) << 4) >> (((v104 >> (((v104 > uint16.max + 1) | (v104 == uint16.max + 1)) << 4) > uint8.max + 1) | (v104 >> (((v104 > uint16.max + 1) | (v104 == uint16.max + 1)) << 4) == uint8.max + 1)) << 3);
            v106 = 1 << (((v5 > uint128.max + 1) | (v5 == uint128.max + 1)) << 6) << (((v103 > uint64.max + 1) | (v103 == uint64.max + 1)) << 5) << (((v103 >> (((v103 > uint64.max + 1) | (v103 == uint64.max + 1)) << 6) > uint32.max + 1) | (v103 >> (((v103 > uint64.max + 1) | (v103 == uint64.max + 1)) << 6) == uint32.max + 1)) << 4) << (((v104 > uint16.max + 1) | (v104 == uint16.max + 1)) << 3) << (((v104 >> (((v104 > uint16.max + 1) | (v104 == uint16.max + 1)) << 4) > uint8.max + 1) | (v104 >> (((v104 > uint16.max + 1) | (v104 == uint16.max + 1)) << 4) == uint8.max + 1)) << 2) << (((v105 > 16) | (v105 == 16)) << 1) << (((v105 >> (((v105 > 16) | (v105 == 16)) << 2) > 8) | (v105 >> (((v105 > 16) | (v105 == 16)) << 2) == 8)) << 1);
            v107 = _SafeDiv(v5, v106);
            v108 = _SafeDiv(v5, v107 + v106 >> 1);
            v109 = _SafeDiv(v5, v108 + (v107 + v106 >> 1) >> 1);
            v110 = _SafeDiv(v5, v109 + (v108 + (v107 + v106 >> 1) >> 1) >> 1);
            v111 = _SafeDiv(v5, v110 + (v109 + (v108 + (v107 + v106 >> 1) >> 1) >> 1) >> 1);
            v112 = _SafeDiv(v5, v111 + (v110 + (v109 + (v108 + (v107 + v106 >> 1) >> 1) >> 1) >> 1) >> 1);
            v113 = _SafeDiv(v5, v112 + (v111 + (v110 + (v109 + (v108 + (v107 + v106 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1);
            v0 = v113 + (v112 + (v111 + (v110 + (v109 + (v108 + (v107 + v106 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1) >> 1;
            v0 = _SafeDiv(v5, v0);
            if (v0 < v0) {
                // Unknown jump to Block 0x18df0x2e64. Refer to 3-address code (TAC);
            } else {
                // Unknown jump to Block 0x18df0x2e64. Refer to 3-address code (TAC);
            }
        }
    }
    require(v0, Panic(18)); // division by zero
    v114 = v115 = address(MEM[v0]);
    v114 = v116 = address(MEM[v0 + 192]);
    if (address(v115) <= address(v116)) {
    }
    v117 = v0 * v0;
    v118 = 0x186a0000000000000000000000000 * v0;
    v0 = v119, v0 = v120 = 0x17d1((v117 * v5 - v118) * 0x186a0000000000000000000000000, (v117 * v5 - v118) * 0x186a0000000000000000000000000 % uint256.max - (v117 * v5 - v118) * 0x186a0000000000000000000000000 - ((v117 * v5 - v118) * 0x186a0000000000000000000000000 % uint256.max < (v117 * v5 - v118) * 0x186a0000000000000000000000000) + (v117 * v5 % uint256.max - v117 * v5 - (v117 * v5 % uint256.max < v117 * v5) - (v117 * v5 < v118)) * 0x186a0000000000000000000000000, v0);
    v121 = v0 * v0;
    v122 = v123 = v121 * v0 + 0x2710000000000000000000000000 * v0;
    v0 = v124 = v0 * v0;
    v125 = v126 = v121 * v0 % uint256.max - v121 * v0 - (v121 * v0 % uint256.max < v121 * v0) + (v123 < v121 * v0);
    v122 = v127, v125 = v128 = 0x17d1(v123, v126, v124);
    v129 = v122 > v0;
    if (v122 <= v0) {
        v129 = v130 = v122 == v0;
        if (v130) {
            v129 = v131 = v125 > v0;
        }
    }
    if (!v129) {
        if (v122) {
            v132 = uint8.max;
            if (v122 >= uint128.max + 1) {
                v132 = v133 = int8.max;
                v122 = v134 = v122 >> 128;
            }
            if (v122 >= uint64.max + 1) {
                v132 = v135 = v132 - 64;
                require(v135 <= v132, Panic(17)); // arithmetic overflow or underflow
                v122 = v136 = v122 >> 64;
            }
            if (v122 >= uint32.max + 1) {
                v132 = v137 = v132 - 32;
                require(v137 <= v132, Panic(17)); // arithmetic overflow or underflow
                v122 = v138 = v122 >> 32;
            }
            if (v122 >= uint16.max + 1) {
                v132 = v139 = v132 - 16;
                require(v139 <= v132, Panic(17)); // arithmetic overflow or underflow
                v122 = v140 = v122 >> 16;
            }
            if (v122 >= uint8.max + 1) {
                v132 = v141 = v132 - 8;
                require(v141 <= v132, Panic(17)); // arithmetic overflow or underflow
                v122 = v142 = v122 >> 8;
            }
            if (v122 >= 16) {
                v132 = v143 = v132 - 4;
                require(v143 <= v132, Panic(17)); // arithmetic overflow or underflow
                v122 = v144 = v122 >> 4;
            }
            if (v122 >= 4) {
                v132 = v145 = v132 - 2;
                require(v145 <= v132, Panic(17)); // arithmetic overflow or underflow
                v122 = v122 >> 2;
            }
            if (2 <= v122) {
                v132 = v146 = v132 - 1;
                require(v146 <= v132, Panic(17)); // arithmetic overflow or underflow
            }
            if (v132) {
                require(uint8.max + 1 - v132 <= uint8.max + 1, Panic(17)); // arithmetic overflow or underflow
                if (!(v0 >> uint8.max + 1 - v132)) {
                }
            }
        }
    }
}

function 0x320d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = v1 = MEM[varg1];
    v0 = v2 = MEM[varg1 + 32];
    v0 = v3 = uint160.max;
    v0 = v4 = 12898;
    v0 = v5 = 160;
    v0 = v6 = 0;
    v0 = v7 = 12865;
    v0 = v8 = 6367;
    v0 = v9 = 7502;
    v10 = v11 = 0x3d94(v2);
    while (1) {
        v0 = 0x3694(v10);
        v12 = MEM[v0];
        v10 = v12 + v0;
        require(v12 <= v10, Panic(17)); // arithmetic overflow or underflow
        v10 = 0x3d94(v10);
        if (!v10) {
            v0 = v13 = 0;
            // Unknown jump to Block 0x18df0x320d. Refer to 3-address code (TAC);
        } else {
            v14 = (v10 >> (((v10 > uint128.max + 1) | (v10 == uint128.max + 1)) << 7) > uint64.max + 1) | (v10 >> (((v10 > uint128.max + 1) | (v10 == uint128.max + 1)) << 7) == uint64.max + 1);
            v15 = v10 >> (((v10 > uint128.max + 1) | (v10 == uint128.max + 1)) << 7) >> (v14 << 6);
            v16 = v15 >> (((v15 > uint32.max + 1) | (v15 == uint32.max + 1)) << 5) >> (((v15 >> (((v15 > uint32.max + 1) | (v15 == uint32.max + 1)) << 5) > uint16.max + 1) | (v15 >> (((v15 > uint32.max + 1) | (v15 == uint32.max + 1)) << 5) == uint16.max + 1)) << 4);
            v17 = 1 << (((v10 > uint128.max + 1) | (v10 == uint128.max + 1)) << 6) << (v14 << 5) << (((v15 > uint32.max + 1) | (v15 == uint32.max + 1)) << 4) << (((v15 >> (((v15 > uint32.max + 1) | (v15 == uint32.max + 1)) << 5) > uint16.max + 1) | (v15 >> (((v15 > uint32.max + 1) | (v15 == uint32.max + 1)) << 5) == uint16.max + 1)) << 3) << (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 2) << (((v16 >> (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 3) > 16) | (v16 >> (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 3) == 16)) << 1) << (((v16 >> (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 3) >> (((v16 >> (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 3) > 16) | (v16 >> (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 3) == 16)) << 2) > 8) | (v16 >> (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 3) >> (((v16 >> (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 3) > 16) | (v16 >> (((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) << 3) == 16)) << 2) == 8)) << 1);
            v18 = _SafeDiv(v10, v17);
            v19 = _SafeDiv(v10, v18 + v17 >> 1);
            v20 = _SafeDiv(v10, v19 + (v18 + v17 >> 1) >> 1);
            v21 = _SafeDiv(v10, v20 + (v19 + (v18 + v17 >> 1) >> 1) >> 1);
            v22 = _SafeDiv(v10, v21 + (v20 + (v19 + (v18 + v17 >> 1) >> 1) >> 1) >> 1);
            v23 = _SafeDiv(v10, v22 + (v21 + (v20 + (v19 + (v18 + v17 >> 1) >> 1) >> 1) >> 1) >> 1);
            v24 = _SafeDiv(v10, v23 + (v22 + (v21 + (v20 + (v19 + (v18 + v17 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1);
            v0 = v25 = v24 + (v23 + (v22 + (v21 + (v20 + (v19 + (v18 + v17 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1) >> 1;
            v0 = v26 = _SafeDiv(v10, v25);
            if (v25 < v26) {
                // Unknown jump to Block 0x18df0x320d. Refer to 3-address code (TAC);
            } else {
                // Unknown jump to Block 0x18df0x320d. Refer to 3-address code (TAC);
            }
        }
        v0 = v27 = 0x3d94(MEM[v0]);
        v0 = v28 = _SafeDiv(v0, v0);
        v29, v30, v31 = 0x3ee3(MEM[v0 + 96] & v0, int24(MEM[v0 + 32]), int16(MEM[v0 + 128]));
        MEM[v0 + (uint8.max + 1)] = v29;
        MEM[v0 + 224] = v30;
        MEM[v0 + v0] = int24(v31);
        v32 = 0x4041(int24(v31));
        MEM[v0 + 192] = v32 & v0;
        v33 = 0x4748(address(MEM[v0]), address(MEM[v0 + 192]), int128(uint128(MEM[v0 + 64])));
        v0 = 0x45b1(v33, v0);
        v34 = 0x11fc(v0);
        v35 = _SafeDiv(MEM[v0] * v0 * 10000, (MEM[v0 + 32] - v0) * (10000 - v34));
        v0 = v35 + 1;
        v36 = _SafeAdd(MEM[v0], v0);
        v37 = _SafeSub(MEM[v0 + 32], v0);
        v38 = 0x4844(v36, v37, v0, address(MEM[v0 + 192]), v0);
        if (v38) {
            v39 = !msg.value;
            if (v39) {
                v40 = 0x4844(MEM[v0], MEM[v0 + 32], v0, address(MEM[v0]), v0);
                v39 = v41 = !v40;
            }
            if (0 == v39) {
                v42 = v43 = 0x120c(v0);
            } else {
                v44 = _SafeMul(MEM[v0], MEM[v0 + 32]);
                v45 = 0x3d94(v44);
                v46 = v0 * v45;
                v47, v48 = 0x17d1((v0 << 91) * v0 * MEM[v0 + 32] - v46 * address(MEM[v0]) * 3125, 0 - (v46 * 3125 * address(MEM[v0]) % uint256.max - v46 * address(MEM[v0]) * 3125 - (v46 * 3125 * address(MEM[v0]) % uint256.max < v46 * address(MEM[v0]) * 3125) + ((v0 << 91) * v0 * MEM[v0 + 32] < v46 * address(MEM[v0]) * 3125)), uint128(MEM[v0 + 64]));
                v49, v50 = 0x17d1(uint128(MEM[v0 + 64]) * address(MEM[v0]) * 15625 + (v0 << 90) * MEM[v0 + 32], 15625 * uint128(MEM[v0 + 64]) * address(MEM[v0]) % uint256.max - uint128(MEM[v0 + 64]) * address(MEM[v0]) * 15625 - (15625 * uint128(MEM[v0 + 64]) * address(MEM[v0]) % uint256.max < uint128(MEM[v0 + 64]) * address(MEM[v0]) * 15625) + (uint128(MEM[v0 + 64]) * address(MEM[v0]) * 15625 + (v0 << 90) * MEM[v0 + 32] < uint128(MEM[v0 + 64]) * address(MEM[v0]) * 15625), v0 * address(MEM[v0]));
                v51 = 0x50f6(v48 * 0x800000000000000000000000 % uint256.max - (v48 << 95) - (v48 * 0x800000000000000000000000 % uint256.max < v48 << 95) + (v47 << 95), v48 << 95, v49, v50);
                v42 = v52 = _SafeAdd(v0, v51);
            }
            MEM[v0] = v0;
            MEM[v0 + 32] = v0;
            require(v42 != int256.min, Panic(17)); // arithmetic overflow or underflow
            v53 = 0x37b2(v0, v0, 10000 - v0);
            v54 = 0x1843(MEM[64] + 4, this, 0 - v42, 0xfffd8963efd1fc6a506488495d951d5263988d25, v53);
            v55, /* uint256 */ v56, /* uint256 */ v57 = address(MEM[v0 + 96]).swap().gas(msg.gas);
            require(v55, MEM[64], RETURNDATASIZE());
            v0 = v58 = 7283;
            if (v55) {
                v59 = v60 = 64;
                if (64 > RETURNDATASIZE()) {
                    v59 = RETURNDATASIZE();
                    require(!((MEM[64] + (v59 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v59 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v59 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                } else {
                    require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 64;
                }
                require(MEM[64] + v59 - MEM[64] >= 64);
            }
            _pancakeCall = 0;
            v61, v62 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v61, MEM[64], RETURNDATASIZE());
            v62 = 0;
            if (v61) {
                v63 = 32;
                if (32 > RETURNDATASIZE()) {
                    v63 = v64 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v63 - MEM[64] >= 32);
            }
            v65 = this.balance;
            v66 = _SafeAdd(v62, v65);
            v67 = _SafeSub(v66, v0);
            if (!(v0 >> 50 & 0x3ff)) {
                v68 = _SafeSub(uint24(v0 >> 60), msg.gas);
                require(v68 <= v68 + 1000, Panic(17)); // arithmetic overflow or underflow
                v69 = _SafeMul(v0 & 0x3ffffffffffff, v68 + 1000);
                require(v69 < v67, Error(52));
                require(msg.gas <= msg.gas + 1000, Panic(17)); // arithmetic overflow or underflow
                require(msg.gas + 1000 >= msg.gas, Error(13665));
                v70 = _SafeSub(v67, v69);
                v71 = 0;
                v72 = v0 & 0x3ffffffffffff < 10 ** 9;
                if (v72) {
                    v71 = v73 = 0;
                    v72 = v74 = 10 ** 17 < v66;
                }
                if (v72) {
                    require(!(20000 * (v0 & 0x3ffffffffffff) / 20000 - (v0 & 0x3ffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                    v72 = v75 = v70 > 20000 * (v0 & 0x3ffffffffffff);
                }
                if (v72) {
                    if (this.balance >= v62) {
                        require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                        v76, /* uint256 */ v77 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v78 = v79 = new bytes[](RETURNDATASIZE());
                            require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                            v77 = v79.data;
                            RETURNDATACOPY(v77, 0, RETURNDATASIZE());
                        }
                    }
                }
            } else {
                v80 = _SafeSub(uint24(v0 >> 60), msg.gas);
                require(v80 <= v80 + 25000, Panic(17)); // arithmetic overflow or underflow
                v81 = _SafeMul(v0 & 0x3ffffffffffff, v80 + 25000);
                require(v81 < v67, Error(52));
                v82 = _SafeSub(v67, v81);
                require(v0 >> 50 & 0x3ff <= 1000);
                v83 = _SafeMul(v82, v0 >> 50 & 0x3ff);
                v84 = _SafeSub(v82, v83 / 1000);
                v85 = 0;
                v86 = this.balance <= v83 / 1000;
                if (v86) {
                    v86 = v87 = v62 > 1;
                }
                if (v86) {
                    require(v62 - 1 <= v62, Panic(17)); // arithmetic overflow or underflow
                    v88 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v62 - 1).gas(msg.gas);
                    require(v88, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    v85 = v89 = 1;
                }
                if (v83 / 1000) {
                    v90 = block.coinbase.call().value(v83 / 1000).gas(10000);
                }
                require(msg.gas <= msg.gas + 25000, Panic(17)); // arithmetic overflow or underflow
                require(msg.gas + 25000 >= msg.gas, Error(13666));
                v91 = v0 & 0x3ffffffffffff < 10 ** 9;
                if (v91) {
                    v92 = _SafeSub(v66, v83 / 1000);
                    v91 = v93 = v92 > 10 ** 17;
                }
                if (v91) {
                    require(!(20000 * (v0 & 0x3ffffffffffff) / 20000 - (v0 & 0x3ffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                    v91 = v94 = v84 > 20000 * (v0 & 0x3ffffffffffff);
                }
                if (v91) {
                    if (!v85) {
                        if (this.balance >= v62) {
                            require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                            v95, /* uint256 */ v96 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v97 = v98 = new bytes[](RETURNDATASIZE());
                                require(!((v98 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v98 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v98)), Panic(65)); // failed memory allocation (too much memory)
                                v96 = v98.data;
                                RETURNDATACOPY(v96, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
                        v99, /* uint256 */ v100 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v101 = v102 = new bytes[](RETURNDATASIZE());
                            require(!((v102 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v102 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v102)), Panic(65)); // failed memory allocation (too much memory)
                            v100 = v102.data;
                            RETURNDATACOPY(v100, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
            require(v62 - 1 <= v62, Panic(17)); // arithmetic overflow or underflow
            0x20f3(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v62 - 1);
            // Unknown jump to Block 0x1c730x320d. Refer to 3-address code (TAC);
        } else {
            v0 = v103 = 13240;
            v0 = v104 = 13150;
            v0 = v105 = 13092;
            v0 = v106 = 6367;
            v0 = v107 = 6637;
            v0 = v108 = 13252;
            v0 = v109 = 6642;
            v0 = v110 = 6352;
            v10 = v111 = _SafeSub(MEM[v0 + 32], v0);
        }
    }
    require(v0, Panic(18)); // division by zero
    v112 = v113 = address(MEM[v0]);
    v112 = v114 = address(MEM[v0 + 192]);
    if (address(v113) <= address(v114)) {
    }
}

function 0x359a(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    MCOPY(v1.data, varg0 + 32, v0);
    v1[v0] = 0;
    return v1;
}

function 0x35e0(bytes varg0) private { 
    require(varg0 + varg0.length - varg0 >= 64);
    require(!(MEM[varg0.data] - address(MEM[varg0.data])));
    require(MEM[varg0 + 64] <= uint64.max);
    v0 = 0x359a(varg0 + MEM[varg0 + 64] + 32, varg0 + varg0.length + 32);
    return v0, address(MEM[varg0.data]);
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x3694(uint256 varg0) private { 
    require(!varg0 | (uint96.max + 1 == (varg0 << 96) / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 << 96;
}

function 0x36b6(uint256 varg0) private { 
    require(!varg0 | (10 ** 6 == varg0 * 10 ** 6 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * 10 ** 6;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x36e3(int128 varg0, int128 varg1) private { 
    v0 = varg0 + varg1;
    require(!((v0 > int128.max) | (v0 < int128.min)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x37b2(address varg0, uint256 varg1, uint256 varg2) private { 
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = MEM[varg1];
    v0.word2 = MEM[varg1 + 32];
    v0.word3 = varg2;
    v0.word4 = 0;
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = new struct(8);
    v3 = v2.data;
    v2.word1 = varg0;
    v2.word2 = 64;
    v2.word3 = v0.word0;
    MCOPY(v2 + 96 + 32, v0.data, v0.word0);
    MEM[v2 + 96 + v0.word0 + 32] = 0;
    v2.word0 = 224;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    return v2;
}

function 0x3cd2(int128 varg0, int128 varg1) private { 
    v0 = varg0 - varg1;
    require(!((v0 < int128.min) | (v0 > int128.max)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x3d19(int24 varg0) private { 
    require(!((uint256.max + varg0 > int24.max) | (uint256.max + varg0 < int24.min)), Panic(17)); // arithmetic overflow or underflow
    return uint256.max + varg0;
}

function 0x3d67(address varg0) private { 
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = varg0;
    v0.word2 = 64;
    v0.word3 = 0;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3d94(uint256 varg0) private { 
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
        v12 = _SafeDiv(varg0, v11);
        if (v11 < v12) {
            return v11;
        } else {
            return v12;
        }
    }
}

function 0x3ee3(uint256 varg0, uint256 varg1, int16 varg2) private { 
    v0 = v1, v0 = v2 = 0x48a1(varg0, varg2, varg1, 0, 0);
    v0 = v3 = MEM[64];
    v4, v5, /* uint256 */ v0, v6, v6, v7, v8 = address(varg0).ticks(int24(v2)).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v0 = v9 = 0;
    if (v4) {
        v10 = uint8.max + 1;
        if (v10 > RETURNDATASIZE()) {
            v10 = v11 = RETURNDATASIZE();
        }
        require(!((v3 + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        require(v3 + v10 - v3 >= uint8.max + 1);
        require(!0xcf2456d00000000000000000000000000000000000000000000000000000000);
        require(!(v0 - int128(v0)));
        require(!(int56(MEM[v3 + 128]) - MEM[v3 + 128]));
        require(!(address(MEM[v3 + 160]) - MEM[v3 + 160]));
        v0 = v12 = 224;
        v0 = v13 = 16340;
        v0 = v14 = 16347;
        v15 = v3 + 192;
        v15 = v16 = 0x15ab(v15);
        require(!(MEM[v15] - uint32(MEM[v15])));
        require(!(MEM[v0 + v0] - bool(MEM[v0 + v0])));
    }
    return v0, int128(v0), v0;
}

function 0x3fea(uint256 varg0, uint256 varg1, int16 varg2, uint256 varg3) private { 
    v0, v1 = 0x48a1(varg0, varg2, varg1, 0, varg3);
    v2, v3, v4, v5, v5, v6, v7, v5, /* bool */ v8 = address(varg0).ticks(int24(v1)).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v4 = 0;
    if (v2) {
        v9 = uint8.max + 1;
        if (v9 > RETURNDATASIZE()) {
            v9 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v9 - MEM[64] >= uint8.max + 1);
        require(!0xcf2456d00000000000000000000000000000000000000000000000000000000);
        require(!(v4 - int128(v4)));
        require(!(int56(MEM[MEM[64] + 128]) - MEM[MEM[64] + 128]));
        require(!(address(MEM[MEM[64] + 160]) - MEM[MEM[64] + 160]));
        v11 = 0x15ab(MEM[64] + 192);
        require(!(v8 - bool(v8)));
    }
    return v0, int128(v4), v1;
}

function 0x4007(uint256 varg0, uint256 varg1, int16 varg2) private { 
    v0 = v1, v0 = v2 = 0x48a1(varg0, varg2, varg1, 1, 0);
    v0 = v3 = MEM[64];
    v4, v5, /* uint256 */ v0, v6, v6, v7, v8 = address(varg0).ticks(int24(v2)).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v0 = v9 = 0;
    if (v4) {
        v10 = uint8.max + 1;
        if (v10 > RETURNDATASIZE()) {
            v10 = v11 = RETURNDATASIZE();
        }
        require(!((v3 + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        require(v3 + v10 - v3 >= uint8.max + 1);
        require(!0xcf2456d00000000000000000000000000000000000000000000000000000000);
        require(!(v0 - int128(v0)));
        require(!(int56(MEM[v3 + 128]) - MEM[v3 + 128]));
        require(!(address(MEM[v3 + 160]) - MEM[v3 + 160]));
        v0 = v12 = 224;
        v0 = v13 = 16340;
        v0 = v14 = 16347;
        v15 = v3 + 192;
        v15 = v16 = 0x15ab(v15);
        require(!(MEM[v15] - uint32(MEM[v15])));
        require(!(MEM[v0 + v0] - bool(MEM[v0 + v0])));
    }
    return v0, int128(v0), v0;
}

function 0x4024(uint256 varg0, uint256 varg1, int16 varg2, uint256 varg3) private { 
    v0, v1 = 0x48a1(varg0, varg2, varg1, 1, varg3);
    v2, v3, v4, v5, v5, v6, v7, v5, /* bool */ v8 = address(varg0).ticks(int24(v1)).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v4 = 0;
    if (v2) {
        v9 = uint8.max + 1;
        if (v9 > RETURNDATASIZE()) {
            v9 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v9 - MEM[64] >= uint8.max + 1);
        require(!0xcf2456d00000000000000000000000000000000000000000000000000000000);
        require(!(v4 - int128(v4)));
        require(!(int56(MEM[MEM[64] + 128]) - MEM[MEM[64] + 128]));
        require(!(address(MEM[MEM[64] + 160]) - MEM[MEM[64] + 160]));
        v11 = 0x15ab(MEM[64] + 192);
        require(!(v8 - bool(v8)));
    }
    return v0, int128(v4), v1;
}

function 0x4041(int24 varg0) private { 
    v0 = v1 = varg0;
    if (v1 < 0) {
        v0 = v2 = 0 - v1;
    }
    if (!(v0 & 0x1)) {
        v3 = v4 = uint128.max + 1;
    } else {
        v3 = v5 = 0xfffcb933bd6fad37aa2d162d1a594001;
    }
    v6 = v7 = uint136(v3);
    if (v0 & 0x2) {
        v6 = v8 = 0xfff97272373d413259a46990580e213a * v7 >> 128;
    }
    if (v0 & 0x4) {
        v6 = v9 = 0xfff2e50f5f656932ef12357cf3c7fdcc * v6 >> 128;
    }
    if (v0 & 0x8) {
        v6 = v10 = 0xffe5caca7e10e4e61c3624eaa0941cd0 * v6 >> 128;
    }
    if (v0 & 0x10) {
        v6 = v11 = 0xffcb9843d60f6159c9db58835c926644 * v6 >> 128;
    }
    if (v0 & 0x20) {
        v6 = v12 = 0xff973b41fa98c081472e6896dfb254c0 * v6 >> 128;
    }
    if (v0 & 0x40) {
        v6 = v13 = 0xff2ea16466c96a3843ec78b326b52861 * v6 >> 128;
    }
    if (v0 & 0x80) {
        v6 = v14 = 0xfe5dee046a99a2a811c461f1969c3053 * v6 >> 128;
    }
    if (v0 & 0x100) {
        v6 = v15 = 0xfcbe86c7900a88aedcffc83b479aa3a4 * v6 >> 128;
    }
    if (v0 & 0x200) {
        v6 = v16 = 0xf987a7253ac413176f2b074cf7815e54 * v6 >> 128;
    }
    if (v0 & 0x400) {
        v6 = v17 = 0xf3392b0822b70005940c7a398e4b70f3 * v6 >> 128;
    }
    if (v0 & 0x800) {
        v6 = v18 = 0xe7159475a2c29b7443b29c7fa6e889d9 * v6 >> 128;
    }
    if (v0 & 0x1000) {
        v6 = v19 = 0xd097f3bdfd2022b8845ad8f792aa5825 * v6 >> 128;
    }
    if (v0 & 0x2000) {
        v6 = v20 = 0xa9f746462d870fdf8a65dc1f90e061e5 * v6 >> 128;
    }
    if (v0 & 0x4000) {
        v6 = v21 = 0x70d869a156d2a1b890bb3df62baf32f7 * v6 >> 128;
    }
    if (v0 & 0x8000) {
        v6 = v22 = 0x31be135f97d08fd981231505542fcfa6 * v6 >> 128;
    }
    if (v0 & 0x10000) {
        v6 = v23 = 0x9aa508b5b7a84e1c677de54f3e99bc9 * v6 >> 128;
    }
    if (v0 & 0x20000) {
        v6 = v24 = 0x5d6af8dedb81196699c329225ee604 * v6 >> 128;
    }
    if (v0 & 0x40000) {
        v6 = v25 = v6 * 0x2216e584f5fa1ea926041bedfe98 >> 128;
    }
    if (0x80000 & v0) {
        v6 = v26 = v6 * 0x48a170391f7dc42444e8fa2 >> 128;
    }
    if (0 < v1) {
        require(v6, Panic(18)); // division by zero
        v6 = v27 = uint256.max / v6;
    }
    if (uint32(v6)) {
        v28 = v29 = 1;
    } else {
        v28 = v30 = 0;
    }
    return address((v6 >> 32) + uint8(v28));
}

function 0x43b8(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = 0x4c04(varg2 << 96 & 0xffffffffffffffffffffffffffffffff000000000000000000000000, address(varg0 - varg0), address(varg0));
    require(address(varg0), Panic(18)); // division by zero
    return v0 / address(varg0);
}

function 0x4423(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = 0x4c84(varg2 << 96 & 0xffffffffffffffffffffffffffffffff000000000000000000000000, address(varg0 - varg0), address(varg0));
    return v0 / address(varg0) + bool(v0 % address(varg0));
}

function 0x450c(uint256 varg0, uint256 varg1, uint128 varg2) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = address(varg0 - varg0);
    v1 = varg2 * v0;
    v2 = varg2 * v0 % uint256.max - v1 - (varg2 * v0 % uint256.max < v1);
    require(uint96.max + 1 > v2);
    if (varg2 * v0 % uint256.max - v1 == varg2 * v0 % uint256.max < v1) {
        v3 = v4 = v1 >> 96;
    } else {
        v3 = v5 = v1 - varg2 * v0 % (uint96.max + 1) >> 96 | v2 - (varg2 * v0 % (uint96.max + 1) > v1) << 160;
    }
    return v3;
}

function 0x4546(uint256 varg0, uint256 varg1, uint128 varg2) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = address(varg0 - varg0);
    v1 = 0x4c04(varg2, v0, uint96.max + 1);
    if (varg2 * v0 % (uint96.max + 1)) {
        require(v1 < uint256.max);
        require(v1 != uint256.max, Panic(17)); // arithmetic overflow or underflow
        return 1 + v1;
    } else {
        return v1;
    }
}

function 0x45b1(uint256 varg0, uint256 varg1) private { 
    require(!varg0 | (10 ** 6 == varg0 * 10 ** 6 / varg0), Panic(17)); // arithmetic overflow or underflow
    v0 = _SafeDiv(varg0 * 10 ** 6, varg1);
    return v0;
}

function 0x45d2(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (0 == int128(varg2) < 0) {
        v0 = 0x4423(varg0, varg1, uint128(varg2));
        require(v0 < int256.min);
        return v0;
    } else {
        v1 = 0x43b8(varg0, varg1, uint128(0 - varg2));
        require(v1 < int256.min);
        return 0 - v1;
    }
}

function 0x4671(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = 10 ** 10 * varg1 * (uint192.max + 1) % uint256.max - varg1 * 0x2540be400000000000000000000000000000000000000000000000000 - (10 ** 10 * varg1 * (uint192.max + 1) % uint256.max < varg1 * 0x2540be400000000000000000000000000000000000000000000000000);
    v1 = varg2 * varg4 * varg3;
    v2 = v1 * (varg3 * varg0);
    v3 = v1 * (varg3 * varg0) % uint256.max - v2 - (v1 * (varg3 * varg0) % uint256.max < v2);
    if (v0 <= v3) {
        v4 = v0 == v3;
        if (v4) {
            v4 = v5 = varg1 * 0x2540be400000000000000000000000000000000000000000000000000 >= v2;
        }
        return v4;
    } else {
        return v0 > v3;
    }
}

function 0x4707(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0 * varg0 * 10 ** 12;
    v1 = 10 ** 12 * varg0 * varg0 % uint256.max - v0 - (10 ** 12 * varg0 * varg0 % uint256.max < v0);
    v2 = varg1 * varg3 * varg2;
    v3 = v2 * varg2 % uint256.max - v2 * varg2 - (v2 * varg2 % uint256.max < v2 * varg2);
    if (v1 <= v3) {
        v4 = v1 == v3;
        if (v4) {
            v4 = v5 = v0 >= v2 * varg2;
        }
        return v4;
    } else {
        return v1 > v3;
    }
}

function 0x4748(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (0 == int128(varg2) < 0) {
        v0 = 0x4546(varg0, varg1, uint128(varg2));
        require(v0 < int256.min);
        return v0;
    } else {
        v1 = 0x450c(varg0, varg1, uint128(0 - varg2));
        require(v1 < int256.min);
        return 0 - v1;
    }
}

function 0x478f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg2 * varg2 * 10 ** 12;
    v1 = 10 ** 12 * varg2 * varg2 % uint256.max - v0 - (10 ** 12 * varg2 * varg2 % uint256.max < v0);
    v2 = varg1 * varg3 * varg0;
    v3 = v2 * varg0 % uint256.max - v2 * varg0 - (v2 * varg0 % uint256.max < v2 * varg0);
    if (v1 <= v3) {
        v4 = v1 == v3;
        if (v4) {
            v4 = v5 = v0 >= v2 * varg0;
        }
        return v4;
    } else {
        return v1 > v3;
    }
}

function 0x47cf(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg0 * (varg4 * varg1);
    v1 = v0 * (varg0 * varg2);
    v2 = v0 * (varg0 * varg2) % uint256.max - v1 - (v0 * (varg0 * varg2) % uint256.max < v1);
    v3 = 10 ** 10 * varg3 * (uint192.max + 1) % uint256.max - varg3 * 0x2540be400000000000000000000000000000000000000000000000000 - (10 ** 10 * varg3 * (uint192.max + 1) % uint256.max < varg3 * 0x2540be400000000000000000000000000000000000000000000000000);
    if (v2 >= v3) {
        v4 = v2 == v3;
        if (v4) {
            v4 = v5 = v1 <= varg3 * 0x2540be400000000000000000000000000000000000000000000000000;
        }
        return v4;
    } else {
        return v2 < v3;
    }
}

function 0x4844(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = 10 ** 10 * varg3 * (varg3 * varg0) % uint256.max;
    v1 = varg3 * (varg3 * varg0) * 10 ** 10;
    v2 = varg2 * varg4 * varg1;
    if (v0 - v1 - (v0 < v1) <= v2 * (uint192.max + 1) % uint256.max - (v2 << 192) - (v2 * (uint192.max + 1) % uint256.max < v2 << 192)) {
        v3 = v0 - v1 - (v0 < v1) == v2 * (uint192.max + 1) % uint256.max - (v2 << 192) - (v2 * (uint192.max + 1) % uint256.max < v2 << 192);
        if (v3) {
            v3 = v4 = v1 >= v2 << 192;
        }
        return v3;
    } else {
        return v0 - v1 - (v0 < v1) > v2 * (uint192.max + 1) % uint256.max - (v2 << 192) - (v2 * (uint192.max + 1) % uint256.max < v2 << 192);
    }
}

function 0x48a1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    while (1) {
        v0 = int24(varg2) / int24(v0) - (int24(varg2) % int24(v0) < 0);
        if (!v0) {
            v0 = int24(1 + v0);
            v0 = uint8(v0);
            v0 = ~((1 << uint8(v0)) - 1);
            if (!v0) {
                v1 = v2 = MEM[64];
                v3 = address(v0).tickBitmap(int16(int24(v0) >> 8)).gas(msg.gas);
                if (v3) {
                    v0 = v4 = 0;
                    if (v3) {
                        v5 = v6 = 19209;
                        v7 = v8 = 32;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v2 + 32 > uint64.max) | (v2 + 32 < v2)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v2 + 32;
                        }
                    }
                }
            }
        } else {
            v0 = uint8(v0);
            if (!v0) {
                v1 = v9 = MEM[64];
                v10 = address(v0).tickBitmap(int16(int24(v0) >> 8)).gas(msg.gas);
                if (v10) {
                    v0 = v11 = 0;
                    if (v10) {
                        v5 = v12 = 18938;
                        v7 = v13 = 32;
                        if (32 > RETURNDATASIZE()) {
                            // Unknown jump to Block 0x4a00. Refer to 3-address code (TAC);
                        }
                    }
                }
            }
        }
        v14 = v0 & uint256.max >> uint8.max - v0;
        v0 = bool(v14);
        if (0 == v0) {
            varg2 = int24(int24(v0 - int24(v0)) * v0);
        } else {
            v0 = v15 = 18724;
            v0 = v16 = 18713;
            v0 = v17 = 18707;
            v0 = v18 = 18732;
            v0 = v19 = 18699;
            v0 = v20 = 18739;
            v14 = v21 = 0x4fce(v14);
            v22 = uint8(v0 - v14);
            v23 = 0;
            require(v14);
            if (v14 >= uint128.max + 1) {
                v23 = v24 = 128;
                v14 = v25 = v14 >> v24;
            }
            if (v14 >= uint64.max + 1) {
                v14 = v26 = v14 >> 64;
                v23 = v27 = uint8(v23) + 64;
                require(v27 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (v14 >= uint32.max + 1) {
                v14 = v28 = v14 >> 32;
                v23 = v29 = uint8(v23) + 32;
                require(v29 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (v14 >= uint16.max + 1) {
                v14 = v30 = v14 >> 16;
                v23 = v31 = uint8(v23) + 16;
                require(v31 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (v14 >= uint8.max + 1) {
                v14 = v32 = v14 >> 8;
                v23 = v33 = uint8(v23) + 8;
                require(v33 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (v14 >= 16) {
                v14 = v34 = v14 >> 4;
                v23 = v35 = uint8(v23) + 4;
                require(v35 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            v36 = 2;
            if (v14 >= 4) {
                v14 = v14 >> v36;
                v23 = v37 = uint8(v23) + v36;
                require(v37 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
                v36 = v38 = 2;
            }
            if (v14 >= v36) {
                require(uint8(v23) + 1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
        }
        // Unknown jump to Block ['0x4924', '0x4a6d']. Refer to 3-address code (TAC);
        v39 = int24(v0 - int24(uint24(uint8(v22))));
        varg2 = int24(v39 * v0);
        // Unknown jump to Block ['0x4933', '0x4a74']. Refer to 3-address code (TAC);
        v39 = int24(int24(uint24(uint8(v22))) + v0);
        // Unknown jump to Block 0x492c. Refer to 3-address code (TAC);
        if (v0) {
            return v0, varg2;
        } else {
            v0 = v40 = 13867;
            v0 = v41 = 0;
            if (v41 != v0) {
                varg2 = int24(uint256.max + varg2);
            }
        }
        // Unknown jump to Block 0x48da. Refer to 3-address code (TAC);
        require(!((v1 + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v1 + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v1 + v7 - v1 >= 32);
        v0 = v42 = MEM[v1];
        // Unknown jump to Block ['0x49fa', '0x4b09']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x49d0. Refer to 3-address code (TAC);
        v7 = v43 = RETURNDATASIZE();
        // Unknown jump to Block 0x49e8. Refer to 3-address code (TAC);
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        v44 = v0 & v0;
        v0 = bool(v44);
        if (!v44) {
            varg2 = int24(int24(int24(uint8(uint8.max - v0)) + v0) * v0);
        } else {
            v0 = v45 = 19053;
            v0 = v46 = 18713;
            v0 = v47 = 18707;
            v0 = v48 = 18732;
            v0 = v49 = 19046;
            v0 = v50 = 19060;
            v44 = v51 = 0x4de8(v44);
            v22 = uint8(v44 - v0);
            // Unknown jump to Block 0x4913. Refer to 3-address code (TAC);
            require(v44);
            v52 = uint8.max;
            if (!uint128(v44)) {
                v44 = v53 = v44 >> 128;
            } else {
                v52 = v54 = int8.max;
            }
            if (!uint64(v44)) {
                v44 = v55 = v44 >> 64;
            } else {
                v52 = v56 = uint8(v52) - 64;
                require(v56 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (!uint32(v44)) {
                v44 = v57 = v44 >> 32;
            } else {
                v52 = v58 = uint8(v52) - 32;
                require(v58 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (!uint16(v44)) {
                v44 = v59 = v44 >> 16;
            } else {
                v52 = v60 = uint8(v52) - 16;
                require(v60 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (!uint8(v44)) {
                v44 = v61 = v44 >> 8;
            } else {
                v52 = v62 = uint8(v52) - 8;
                require(v62 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (!bool(v44)) {
                v44 = v63 = v44 >> 4;
            } else {
                v52 = v64 = uint8(v52) - 4;
                require(v64 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
            if (!(v44 & 0x3)) {
                v65 = v66 = 1;
                v44 = v44 >> 2;
            } else {
                v52 = v67 = uint8(v52) - 2;
                require(v67 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
                v65 = 1;
            }
            if (v44 & v65) {
                require(uint8(v52) - 1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            }
        }
        // Unknown jump to Block 0x4935. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x4a3d. Refer to 3-address code (TAC);
    }
}

function 0xd7c27bb8(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    _pancakeCall = 1;
    v0 = 0x134a(varg2);
    if (!v0) {
        v1, v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = v5 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v6 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v4 - MEM[64] >= 32);
        }
        v7 = _SafeAdd(v2, this.balance);
    } else {
        exit;
    }
}

function 0x4c04(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0 * varg1;
    v1 = varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0);
    require(varg2 > v1);
    if (varg0 * varg1 % uint256.max - v0 == varg0 * varg1 % uint256.max < v0) {
        return v0 / varg2;
    } else {
        v2 = varg0 * varg1 % varg2;
        v3 = 0 - varg2 & varg2;
        v4 = varg2 / v3;
        v5 = (2 - v4 * ((2 - v4 * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2))) * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2)))) * ((2 - v4 * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2))) * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2)));
        return ((v0 - v2) / v3 | (v1 - (v2 > v0)) * ((0 - v3) / v3 + 1)) * ((2 - v4 * ((2 - v4 * ((2 - v4 * v5) * v5)) * ((2 - v4 * v5) * v5))) * ((2 - v4 * ((2 - v4 * v5) * v5)) * ((2 - v4 * v5) * v5)));
    }
}

function 0x4c84(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x4c04(varg0, varg1, varg2);
    require(varg2, Panic(18)); // division by zero
    if (varg0 * varg1 % varg2) {
        require(v0 < uint256.max);
        require(v0 != uint256.max, Panic(17)); // arithmetic overflow or underflow
        return 1 + v0;
    } else {
        return v0;
    }
}

function 0x4cb8(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (!varg2) {
        return varg0;
    } else {
        v0 = 0xffffffffffffffffffffffffffffffff000000000000000000000000 & varg1 << 96;
        v1 = _SafeMul(varg2, address(varg0));
        v2 = _SafeDiv(v1, varg2);
        if (v2 == address(varg0)) {
            v3 = _SafeAdd(v0, v1);
            if (v3 >= v0) {
                v4 = 0x4c84(v0, address(varg0), v3);
                return address(v4);
            }
        }
        v5 = _SafeDiv(v0, address(varg0));
        v6 = _SafeAdd(v5, varg2);
        require(v6 >= v5);
        return address(v0 / v6 + bool(v0 % v6));
    }
}

function 0x4d65(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (!varg2) {
        return varg0;
    } else {
        v0 = _SafeMul(varg2, address(varg0));
        v1 = _SafeDiv(v0, varg2);
        v2 = v3 = v1 == address(varg0);
        if (v3) {
            v2 = v4 = 0xffffffffffffffffffffffffffffffff000000000000000000000000 & varg1 << 96 > v0;
        }
        require(v2);
        v5 = _SafeSub(0xffffffffffffffffffffffffffffffff000000000000000000000000 & varg1 << 96, v0);
        v6 = 0x4c84(0xffffffffffffffffffffffffffffffff000000000000000000000000 & varg1 << 96, address(varg0), v5);
        require(!(address(v6) - v6));
        return address(v6);
    }
}

function 0x4de8(uint256 varg0) private { 
    require(varg0);
    v0 = uint8.max;
    if (!uint128(varg0)) {
        varg0 = v1 = varg0 >> 128;
    } else {
        v0 = v2 = int8.max;
    }
    if (!uint64(varg0)) {
        varg0 = v3 = varg0 >> 64;
    } else {
        v0 = v4 = uint8(v0) - 64;
        require(v4 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (!uint32(varg0)) {
        varg0 = v5 = varg0 >> 32;
    } else {
        v0 = v6 = uint8(v0) - 32;
        require(v6 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (!uint16(varg0)) {
        varg0 = v7 = varg0 >> 16;
    } else {
        v0 = v8 = uint8(v0) - 16;
        require(v8 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (!uint8(varg0)) {
        varg0 = v9 = varg0 >> 8;
    } else {
        v0 = v10 = uint8(v0) - 8;
        require(v10 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (!bool(varg0)) {
        varg0 = v11 = varg0 >> 4;
    } else {
        v0 = v12 = uint8(v0) - 4;
        require(v12 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (!(varg0 & 0x3)) {
        v13 = v14 = 1;
        varg0 = v15 = varg0 >> 2;
    } else {
        v0 = v16 = uint8(v0) - 2;
        require(v16 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
        v13 = 1;
    }
    if (varg0 & v13) {
        require(uint8(v0) - 1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
        return uint8(v0) - 1;
    } else {
        return v0;
    }
}

function 0x4fce(uint256 varg0) private { 
    v0 = v1 = 0;
    require(varg0);
    if (varg0 >= uint128.max + 1) {
        v0 = v2 = 128;
        varg0 = v3 = varg0 >> v2;
    }
    if (varg0 >= uint64.max + 1) {
        varg0 = v4 = varg0 >> 64;
        v0 = v5 = uint8(v0) + 64;
        require(v5 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (varg0 >= uint32.max + 1) {
        varg0 = v6 = varg0 >> 32;
        v0 = v7 = uint8(v0) + 32;
        require(v7 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (varg0 >= uint16.max + 1) {
        varg0 = v8 = varg0 >> 16;
        v0 = v9 = uint8(v0) + 16;
        require(v9 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (varg0 >= uint8.max + 1) {
        varg0 = v10 = varg0 >> 8;
        v0 = v11 = uint8(v0) + 8;
        require(v11 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    if (varg0 >= 16) {
        varg0 = v12 = varg0 >> 4;
        v0 = v13 = uint8(v0) + 4;
        require(v13 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    }
    v14 = 2;
    if (varg0 >= 4) {
        varg0 = v15 = varg0 >> v14;
        v0 = uint8(v0) + v14;
        require(v0 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
        v14 = v16 = 2;
    }
    if (varg0 >= v14) {
        require(uint8(v0) + 1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
        return uint8(v0) + 1;
    } else {
        return v0;
    }
}

function 0x50f6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = varg2 > varg0;
    if (varg2 <= varg0) {
        v0 = varg2 == varg0;
        if (v0) {
            v0 = v2 = varg3 > varg1;
        }
    }
    if (v0) {
        return 0;
    } else {
        if (!varg2) {
            v3 = v4 = 0x534a(varg1, varg0, varg3);
        } else {
            v5 = uint8.max;
            if (varg2 >= uint128.max + 1) {
                v5 = v6 = int8.max;
                varg2 = v7 = varg2 >> 128;
            }
            if (varg2 >= uint64.max + 1) {
                v5 = v8 = v5 - 64;
                require(v8 <= v5, Panic(17)); // arithmetic overflow or underflow
                varg2 = v9 = varg2 >> 64;
            }
            if (varg2 >= uint32.max + 1) {
                v5 = v10 = v5 - 32;
                require(v10 <= v5, Panic(17)); // arithmetic overflow or underflow
                varg2 = v11 = varg2 >> 32;
            }
            if (varg2 >= uint16.max + 1) {
                v5 = v12 = v5 - 16;
                require(v12 <= v5, Panic(17)); // arithmetic overflow or underflow
                varg2 = v13 = varg2 >> 16;
            }
            if (varg2 >= uint8.max + 1) {
                v5 = v14 = v5 - 8;
                require(v14 <= v5, Panic(17)); // arithmetic overflow or underflow
                varg2 = v15 = varg2 >> 8;
            }
            if (varg2 >= 16) {
                v5 = v16 = v5 - 4;
                require(v16 <= v5, Panic(17)); // arithmetic overflow or underflow
                varg2 = v17 = varg2 >> 4;
            }
            if (varg2 >= 4) {
                v5 = v18 = v5 - 2;
                require(v18 <= v5, Panic(17)); // arithmetic overflow or underflow
                varg2 = v19 = varg2 >> 2;
            }
            if (2 <= varg2) {
                v5 = v20 = v5 - 1;
                require(v20 <= v5, Panic(17)); // arithmetic overflow or underflow
            }
            if (!v5) {
                v3 = v21 = _SafeDiv(varg0, varg2);
            } else {
                require(uint8.max + 1 - v5 <= uint8.max + 1, Panic(17)); // arithmetic overflow or underflow
                v22 = varg2 << v5 | varg3 >> uint8.max + 1 - v5;
                v23 = varg0 << v5 | varg1 >> uint8.max + 1 - v5;
                if (varg0 >> uint8.max + 1 - v5) {
                    v3 = v24 = 0x534a(v23, varg0 >> uint8.max + 1 - v5, v22);
                } else {
                    v3 = v25 = _SafeDiv(v23, v22);
                }
            }
        }
        return v3;
    }
}

function 0x534a(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = ((varg1 * uint256.max % varg2 + varg1) % varg2 + varg0) % varg2;
    v1 = 0 - varg2 & varg2;
    v2 = varg2 / v1;
    v3 = (varg0 - v0) / v1 | (varg1 - (varg0 < v0)) * ((0 - v1) / v1 + 1);
    if (varg1 == varg0 < v0) {
        v4 = _SafeDiv(v3, v2);
        while (1) {
            // Unknown jump to Block 0x18770x534a. Refer to 3-address code (TAC);
        }
    } else {
        v5 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return (2 - v2 * ((2 - v2 * ((2 - v2 * v5) * v5)) * ((2 - v2 * v5) * v5))) * ((2 - v2 * ((2 - v2 * v5) * v5)) * ((2 - v2 * v5) * v5)) * v3;
    }
}

function 0x9cf82838(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    _pancakeCall = 1;
    v0 = 0x134a(varg2);
    if (!v0) {
        v1, v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = v5 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v6 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v4 - MEM[64] >= 32);
        }
        v7 = _SafeAdd(v2, this.balance);
    } else {
        exit;
    }
}

function pancakeCall(address varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    require(_pancakeCall);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg2.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg2.data + varg2.length <= msg.data.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    v0[varg2.length] = 0;
    require(v0 + v0.length - v0 >= 64);
    require(MEM[v0 + 64] <= uint64.max);
    v1 = 0x359a(v0 + MEM[v0 + 64] + 32, v0 + v0.length + 32);
    v2, v3 = 0x35e0(v1);
    require(v2 + v2.length - v2 >= 128);
    v4 = v5 = MEM[v2.data];
    v4 = MEM[v2 + 64];
    require(!(MEM[v2 + 128] - bool(MEM[v2 + 128])));
    if (!varg1) {
        v6 = v7 = 3416;
        v8 = v9 = 3244;
    } else {
        v6 = v10 = 3250;
        v8 = v11 = 3244;
    }
    v12 = _SafeDiv(v4 * MEM[v0.data] * 10000, (v4 - MEM[v0.data]) * (10000 - MEM[v2 + 96]));
    0x215b(v3, v12 + 1);
    require((address(v3)).code.size);
    v13, /* uint256 */ v14 = address(v3).swap(MEM[v0.data], 0, msg.sender, 128, 0).gas(msg.gas);
    require(v13, v14, RETURNDATASIZE());
    if (v13) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
    require((address(v3)).code.size);
    v15, /* uint256 */ v16 = address(v3).swap(0, MEM[v0.data], msg.sender, 128, 0).gas(msg.gas);
    require(v15, v16, RETURNDATASIZE());
    if (v15) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        exit;
    } else {
        return ;
    }
}

function 0x6f5aeea3(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0, v1 = varg0.balanceOf(this).gas(msg.gas);
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
    require(v1 - 1 <= v1, Panic(17)); // arithmetic overflow or underflow
    0x20f3(varg0, v1 - 1);
}

function 0x4749db78(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    _pancakeCall = 1;
    v0 = 0x134a(varg2);
    if (!v0) {
        v1, v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = v5 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v6 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v4 - MEM[64] >= 32);
        }
        v7 = _SafeAdd(v2, this.balance);
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

function 0x17db53bd(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    _pancakeCall = 1;
    v0 = 0x134a(varg2);
    if (!v0) {
        v1, v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = v5 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v6 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v4 - MEM[64] >= 32);
        }
        v7 = _SafeAdd(v2, this.balance);
        v8, v9 = 0x15bc(varg0);
        v10 = new struct(2);
        require(!((v10 + 64 > uint64.max) | (v10 + 64 < v10)), Panic(65)); // failed memory allocation (too much memory)
        v10.word0 = v9;
        v10.word1 = v8;
    } else {
        exit;
    }
}

function 0xcac(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(v2, varg0).gas(msg.gas);
    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v1 == 1)) & v0);
    return v2;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x10d1e85c != function_selector >> 224) {
            if (0x17db53bd == function_selector >> 224) {
                0x17db53bd();
            } else {
                if (0x23a69e75 != function_selector >> 224) {
                    if (0x25edf1c2 == function_selector >> 224) {
                        0x25edf1c2();
                    } else if (0x2c2f9ced == function_selector >> 224) {
                        0x2c2f9ced();
                    } else if (0x3a1c453c != function_selector >> 224) {
                        if (0x4749db78 == function_selector >> 224) {
                            0x4749db78();
                        } else if (0x6f5aeea3 == function_selector >> 224) {
                            0x6f5aeea3();
                        } else if (0x84800812 != function_selector >> 224) {
                            if (0x9cf82838 == function_selector >> 224) {
                                0x9cf82838();
                            } else if (0x9f3d4ab8 != function_selector >> 224) {
                                if (0xa0bd0131 != function_selector >> 224) {
                                    if (0xd7c27bb8 == function_selector >> 224) {
                                        0xd7c27bb8();
                                    } else if (0xda95afab == function_selector >> 224) {
                                        0xda95afab();
                                    } else if (0xfa461e33 != function_selector >> 224) {
                                        if (!(0xfdfc9d13 - (function_selector >> 224))) {
                                            0xfdfc9d13();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                0xa0bd0131();
            }
        }
        pancakeCall(address,uint256,uint256,bytes);
    }
    require(!msg.data.length);
}
