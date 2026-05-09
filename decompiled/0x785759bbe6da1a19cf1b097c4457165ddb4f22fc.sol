// Decompiled by library.dedaub.com
// 2026.04.08 07:28 UTC
// Compiled using the solidity compiler version 0.8.34


// Data structures and variables inferred from the use of storage instructions
uint256 _uniswapV2Call; // TRANSIENT_STORAGE[0x0]



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
    0x1e58(varg0, v1 - 1);
}

function 0x6d8a1861(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = 1;
    v0 = 0x1518(varg2);
    if (!v0) {
        v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 32);
            v6 = this.balance;
        } else {
            v6 = v7 = this.balance;
        }
        require(v2 <= v2 + v6, Panic(17)); // arithmetic overflow or underflow
        v8, v9 = 0x1762(varg0);
        v10, v11 = 0x1762(varg1);
        if (v11 * v8 <= v10 * v9) {
            0x1cf4(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v11, v10, v9, v8);
            exit;
        } else {
            0x1cf4(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v9, v8, v11, v10);
            exit;
        }
    } else {
        exit;
    }
}

function 0x4749db78(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = 1;
    v0 = 0x1518(varg2);
    if (!v0) {
        v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 32);
            v6 = this.balance;
        } else {
            v6 = v7 = this.balance;
        }
        require(v2 <= v2 + v6, Panic(17)); // arithmetic overflow or underflow
        v8 = 0x1838(varg0);
        v9 = 0x1889(varg0);
        v10, v11 = 0x1762(varg1);
        v12 = v9 * v9 * v11 % uint256.max - v9 * v9 * v11 - (v9 * v9 * v11 % uint256.max < v9 * v9 * v11) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v11;
        v13 = v14 = v12 < v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192);
        if (v12 >= v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192)) {
            v13 = v15 = v12 == v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192);
            if (v15) {
                v13 = v16 = v9 * v9 * v11 < v10 << 192;
            }
        }
        if (0 == v13) {
            0x1c15(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v11, v10, v8, v9);
            exit;
        } else {
            0x1a9b(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v8, v9, v11, v10);
            exit;
        }
    } else {
        exit;
    }
}

function 0x2c2f9ced() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 2;
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

function 0x17db53bd(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = 1;
    v0 = 0x1518(varg2);
    if (!v0) {
        v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 32);
        }
        require(v2 <= v2 + this.balance, Panic(17)); // arithmetic overflow or underflow
        v6, v7 = 0x1762(varg0);
        v8 = 0x1838(varg1);
        v9 = 0x1889(varg1);
        v10 = v11 = v6 * (uint192.max + 1) % uint256.max - (v6 << 192) - (v6 * (uint192.max + 1) % uint256.max < v6 << 192) < v9 * v9 * v7 % uint256.max - v9 * v9 * v7 - (v9 * v9 * v7 % uint256.max < v9 * v9 * v7) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v7;
        if (v6 * (uint192.max + 1) % uint256.max - (v6 << 192) - (v6 * (uint192.max + 1) % uint256.max < v6 << 192) >= v9 * v9 * v7 % uint256.max - v9 * v9 * v7 - (v9 * v9 * v7 % uint256.max < v9 * v9 * v7) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v7) {
            v10 = v12 = v6 * (uint192.max + 1) % uint256.max - (v6 << 192) - (v6 * (uint192.max + 1) % uint256.max < v6 << 192) == v9 * v9 * v7 % uint256.max - v9 * v9 * v7 - (v9 * v9 * v7 % uint256.max < v9 * v9 * v7) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v7;
            if (v12) {
                v10 = v13 = v6 << 192 < v9 * v9 * v7;
            }
        }
        if (0 == v10) {
            0x1a9b(v2 + this.balance, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v8, v9, v7, v6);
            exit;
        } else {
            0x1c15(v2 + this.balance, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v7, v6, v8, v9);
            exit;
        }
    } else {
        exit;
    }
}

function 0x128a(uint256 varg0) private { 
    require(varg0 <= varg0 + 1000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1000;
}

function 0x1299(uint256 varg0) private { 
    require(varg0 <= varg0 + 25000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 25000;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x12b5(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function 0x12e2(uint256 varg0) private { 
    require(varg0 - 64 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 64;
}

function 0x130f(uint256 varg0) private { 
    require(varg0 - 32 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 32;
}

function 0x133c(uint256 varg0) private { 
    require(varg0 - 16 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 16;
}

function 0x1369(uint256 varg0) private { 
    require(varg0 - 8 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 8;
}

function 0x1396(uint256 varg0) private { 
    require(varg0 - 4 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 4;
}

function 0x13c3(uint256 varg0) private { 
    require(varg0 - 2 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 2;
}

function 0x13f0(uint256 varg0) private { 
    require(uint8.max + 1 - varg0 <= uint8.max + 1, Panic(17)); // arithmetic overflow or underflow
    return uint8.max + 1 - varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x1518(uint256 varg0) private { 
    v0 = varg0 >> 224;
    v1 = bool(varg0 >> 148);
    if (v1 - 1) {
        if (v1 - 4) {
            if (v1 - 2) {
                if (v1 - 5) {
                    if (v1 - 3) {
                        if (v1 - 6) {
                            if (v1 - 7) {
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
                                    v10 = v13 = address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) == block.coinbase;
                                    if (address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) != block.coinbase) {
                                        v10 = v14 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                        if (v14) {
                                            v10 = v15 = address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
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
                                v17 = v20 = address(0xa28b0ac939fc6baaadc79a94f425345c60463417) == block.coinbase;
                                if (address(0xa28b0ac939fc6baaadc79a94f425345c60463417) != block.coinbase) {
                                    v17 = v21 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                    if (v21) {
                                        v17 = v22 = address(0xa28b0ac939fc6baaadc79a94f425345c60463417) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
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
                            v24 = v27 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == block.coinbase;
                            if (address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) != block.coinbase) {
                                v24 = v28 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                if (v28) {
                                    v24 = v29 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
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
                        v31 = v34 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == block.coinbase;
                        if (address(0x396343362be2a4da1ce0c1c210945346fb82aa49) != block.coinbase) {
                            v31 = v35 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                            if (v35) {
                                v31 = v36 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
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
                    v38 = v41 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == block.coinbase;
                    if (address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) != block.coinbase) {
                        v38 = v42 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                        if (v42) {
                            v38 = v43 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                        }
                    }
                }
                require(v38, Error(50));
                v8 = v44 = uint72(varg0 >> 152);
            }
        } else {
            v45 = v46 = !v0;
            if (bool(v0)) {
                v45 = v47 = block.timestamp == v0;
            }
            if (v45) {
                v45 = v48 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == block.coinbase;
                if (address(0xdadb0d80178819f2319190d340ce9a924f783711) != block.coinbase) {
                    v45 = v49 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                    if (v49) {
                        v45 = v50 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                    }
                }
            }
            require(v45, Error(50));
            v8 = v51 = uint72(varg0 >> 152);
        }
    } else {
        v52 = v53 = !v0;
        if (bool(v0)) {
            v52 = v54 = block.timestamp == v0;
        }
        if (v52) {
            v52 = v55 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == block.coinbase;
            if (address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) != block.coinbase) {
                v52 = v56 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                if (v56) {
                    v52 = v57 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                }
            }
        }
        require(v52, Error(50));
        v8 = v58 = uint72(varg0 >> 152);
    }
    if (!(block.coinbase.balance - v8)) {
        _uniswapV2Call = 0;
        if (this.balance) {
            v59, /* uint256 */ v60 = block.coinbase.call().value(1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v61 = v62 = new bytes[](RETURNDATASIZE());
                require(!((v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v62)), Panic(65)); // failed memory allocation (too much memory)
                v60 = v62.data;
                RETURNDATACOPY(v60, 0, RETURNDATASIZE());
            }
            return 1;
        } else {
            return 1;
        }
    }
    return 0;
}

function 0x1762(address varg0) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, v3 = varg0.getReserves().gas(msg.gas);
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

function 0x1838(uint256 varg0) private { 
    v0, /* uint128 */ v1 = varg0.liquidity().gas(msg.gas);
    require((RETURNDATASIZE() > 15) & v0);
    return uint128(v1);
}

function 0x1889(uint256 varg0) private { 
    v0, /* address */ v1 = varg0.slot0().gas(msg.gas);
    require((RETURNDATASIZE() > 31) & v0);
    return address(v1);
}

function 0x19d9(uint256 varg0) private { 
    require(!(20000 * varg0 / 20000 - varg0), Panic(17)); // arithmetic overflow or underflow
    return 20000 * varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x1a9b(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg9, varg10);
    v1 = 0x231d(v0);
    v2 = 0x23b3(varg8, varg4, varg9, varg10, varg5);
    require(!v2, Error(0x696e66));
    v3 = 0x2449(varg8, varg7, varg4, varg9, v1, varg5, varg6);
    v4 = 0x24de(varg2, varg9, varg10, 10000 - varg5);
    v5 = new bytes[](v4.word0);
    MCOPY(v5.data, v4.data, v4.word0);
    v5[v4.word0] = 0;
    v6, /* uint256 */ v7, /* uint256 */ v8 = varg1.swap(address(varg2), 0, v3, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v5).gas(msg.gas);
    if (v6) {
        if (v6) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v9 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v9 = v10 = MEM[64] + 64;
            }
            require(v9 - MEM[64] >= 64);
        }
        _uniswapV2Call = 0;
        v11, /* uint256 */ v12 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v11) {
            v12 = v13 = 0;
            if (v11) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v14 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v14 = v15 = MEM[64] + 32;
                }
                require(v14 - MEM[64] >= 32);
            }
            v16 = this.balance;
            v17 = _SafeAdd(v12, v16);
            v18 = _SafeSub(v17, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v19 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v20 = 0x128a(v19);
                v21 = _SafeMul(varg3 & 0x3ffffffffffff, v20);
                require(v21 < v18, Error(52));
                v22 = 0x128a(msg.gas);
                require(v22 >= msg.gas, Error(13665));
                v23 = _SafeSub(v18, v21);
                0x3045(v17, v12, v23, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v24 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v25 = 0x1299(v24);
                v26 = _SafeMul(varg3 & 0x3ffffffffffff, v25);
                require(v26 < v18, Error(52));
                v27 = _SafeSub(v18, v26);
                require(0x3ff & varg3 >> 50 <= 1000);
                v28 = _SafeMul(v27, 0x3ff & varg3 >> 50);
                v29 = _SafeSub(v27, v28 / 1000);
                v30 = 0;
                v31 = this.balance <= v28 / 1000;
                if (v31) {
                    v31 = v32 = v12 > 1;
                }
                if (v31) {
                    v33 = 0x12b5(v12);
                    0x3167(v33, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v30 = v34 = 1;
                }
                if (v28 / 1000) {
                    v35 = block.coinbase.call().value(v28 / 1000).gas(10000);
                }
                v36 = 0x1299(msg.gas);
                require(v36 >= msg.gas, Error(13666));
                v37 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v37) {
                    require(v17 - v28 / 1000 <= v17, Panic(17)); // arithmetic overflow or underflow
                    v37 = v38 = 10 ** 17 < v17 - v28 / 1000;
                }
                if (v37) {
                    v39 = 0x19d9(varg3 & 0x3ffffffffffff);
                    v37 = v40 = v39 < v29;
                }
                if (v37) {
                    if (!v30) {
                        if (this.balance < v12) {
                            v41 = 0x12b5(v12);
                            0x1e58(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v41);
                        } else {
                            v42 = 0x12b5(this.balance);
                            v43, /* uint256 */ v44 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v42).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v45 = v46 = new bytes[](RETURNDATASIZE());
                                require(!((v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v46)), Panic(65)); // failed memory allocation (too much memory)
                                v44 = v46.data;
                                RETURNDATACOPY(v44, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v47 = 0x12b5(this.balance);
                        v48, /* uint256 */ v49 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v47).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v50 = v51 = new bytes[](RETURNDATASIZE());
                            require(!((v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
                            v49 = v51.data;
                            RETURNDATACOPY(v49, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x1be9(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x1c15(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x231d(v0);
    v2 = 0x28c8(varg7, varg8, varg4, varg10, varg5);
    require(!v2, Error(0x696e66));
    v3 = 0x2977(varg7, v1, varg4, varg10, varg9, varg5, varg6);
    v4 = 0x1be9(v3);
    v5 = 0x2576(varg1, varg7, varg8, 10000 - varg4);
    v6 = new bytes[](v5.word0);
    MCOPY(v6.data, v5.data, v5.word0);
    v6[v5.word0] = 0;
    v7, /* uint256 */ v8, /* uint256 */ v9 = varg2.swap(address(this), 1, v4, address(0x1000276a4), v6).gas(msg.gas);
    if (v7) {
        if (v7) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v10 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v10 = v11 = MEM[64] + 64;
            }
            require(v10 - MEM[64] >= 64);
        }
        _uniswapV2Call = 0;
        v12, /* uint256 */ v13 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v12) {
            v13 = v14 = 0;
            if (v12) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v15 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v15 = v16 = MEM[64] + 32;
                }
                require(v15 - MEM[64] >= 32);
            }
            v17 = this.balance;
            v18 = _SafeAdd(v13, v17);
            v19 = _SafeSub(v18, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v20 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v21 = 0x128a(v20);
                v22 = _SafeMul(varg3 & 0x3ffffffffffff, v21);
                require(v22 < v19, Error(52));
                v23 = 0x128a(msg.gas);
                require(v23 >= msg.gas, Error(13665));
                v24 = _SafeSub(v19, v22);
                0x3045(v18, v13, v24, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v25 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v26 = 0x1299(v25);
                v27 = _SafeMul(varg3 & 0x3ffffffffffff, v26);
                require(v27 < v19, Error(52));
                v28 = _SafeSub(v19, v27);
                require(0x3ff & varg3 >> 50 <= 1000);
                v29 = _SafeMul(v28, 0x3ff & varg3 >> 50);
                v30 = _SafeSub(v28, v29 / 1000);
                v31 = 0;
                v32 = this.balance <= v29 / 1000;
                if (v32) {
                    v32 = v33 = v13 > 1;
                }
                if (v32) {
                    v34 = 0x12b5(v13);
                    0x3167(v34, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v31 = v35 = 1;
                }
                if (v29 / 1000) {
                    v36 = block.coinbase.call().value(v29 / 1000).gas(10000);
                }
                v37 = 0x1299(msg.gas);
                require(v37 >= msg.gas, Error(13666));
                v38 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v38) {
                    require(v18 - v29 / 1000 <= v18, Panic(17)); // arithmetic overflow or underflow
                    v38 = v39 = 10 ** 17 < v18 - v29 / 1000;
                }
                if (v38) {
                    v40 = 0x19d9(varg3 & 0x3ffffffffffff);
                    v38 = v41 = v40 < v30;
                }
                if (v38) {
                    if (!v31) {
                        if (this.balance < v13) {
                            v42 = 0x12b5(v13);
                            0x1e58(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v42);
                        } else {
                            v43 = 0x12b5(this.balance);
                            v44, /* uint256 */ v45 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v43).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v46 = v47 = new bytes[](RETURNDATASIZE());
                                require(!((v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v47)), Panic(65)); // failed memory allocation (too much memory)
                                v45 = v47.data;
                                RETURNDATACOPY(v45, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v48 = 0x12b5(this.balance);
                        v49, /* uint256 */ v50 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v48).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v51 = v52 = new bytes[](RETURNDATASIZE());
                            require(!((v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
                            v50 = v52.data;
                            RETURNDATACOPY(v50, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x1cf4(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x231d(v0);
    v2 = _SafeMul(varg9, varg10);
    v3 = 0x231d(v2);
    require(varg8 * (varg4 * varg5 * varg9) > 10 ** 8 * (varg7 * varg10), Error(0x696e66));
    v4 = _SafeDiv(varg4 * varg5 * varg9 * varg8 - v1 * v3 * varg6 * 10000, varg4 * (varg5 * varg8 + 10000 * varg10));
    v5 = _SafeDiv(varg10 * v4 * 10000, (varg9 - v4) * (10000 - (10000 - varg5)));
    v6 = 0x2a49(varg1, varg7, varg8, 10000 - varg4, v5 + 1);
    require(varg2.code.size);
    v7 = new bytes[](v6.word0);
    MCOPY(v7.data, v6.data, v6.word0);
    v7[v6.word0] = 0;
    v8 = varg2.swap(v4, 0, address(this), v7).gas(msg.gas);
    if (v8) {
        if (v8) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        _uniswapV2Call = 0;
        v9, /* uint256 */ v10 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v9) {
            v10 = v11 = 0;
            if (v9) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v12 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v12 = v13 = MEM[64] + 32;
                }
                require(v12 - MEM[64] >= 32);
            }
            v14 = this.balance;
            v15 = _SafeAdd(v10, v14);
            v16 = _SafeSub(v15, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v17 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v18 = 0x128a(v17);
                v19 = _SafeMul(varg3 & 0x3ffffffffffff, v18);
                require(v19 < v16, Error(52));
                v20 = 0x128a(msg.gas);
                require(v20 >= msg.gas, Error(13665));
                v21 = _SafeSub(v16, v19);
                0x3045(v15, v10, v21, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v22 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v23 = 0x1299(v22);
                v24 = _SafeMul(varg3 & 0x3ffffffffffff, v23);
                require(v24 < v16, Error(52));
                v25 = _SafeSub(v16, v24);
                require(0x3ff & varg3 >> 50 <= 1000);
                v26 = _SafeMul(v25, 0x3ff & varg3 >> 50);
                v27 = _SafeSub(v25, v26 / 1000);
                v28 = 0;
                v29 = this.balance <= v26 / 1000;
                if (v29) {
                    v29 = v30 = v10 > 1;
                }
                if (v29) {
                    v31 = 0x12b5(v10);
                    0x3167(v31, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v28 = v32 = 1;
                }
                if (v26 / 1000) {
                    v33 = block.coinbase.call().value(v26 / 1000).gas(10000);
                }
                v34 = 0x1299(msg.gas);
                require(v34 >= msg.gas, Error(13666));
                v35 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v35) {
                    require(v15 - v26 / 1000 <= v15, Panic(17)); // arithmetic overflow or underflow
                    v35 = v36 = 10 ** 17 < v15 - v26 / 1000;
                }
                if (v35) {
                    v37 = 0x19d9(varg3 & 0x3ffffffffffff);
                    v35 = v38 = v37 < v27;
                }
                if (v35) {
                    if (!v28) {
                        if (this.balance < v10) {
                            v39 = 0x12b5(v10);
                            0x1e58(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v39);
                        } else {
                            v40 = 0x12b5(this.balance);
                            v41, /* uint256 */ v42 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v40).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v43 = v44 = new bytes[](RETURNDATASIZE());
                                require(!((v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
                                v42 = v44.data;
                                RETURNDATACOPY(v42, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v45 = 0x12b5(this.balance);
                        v46, /* uint256 */ v47 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v45).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v48 = v49 = new bytes[](RETURNDATASIZE());
                            require(!((v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v49)), Panic(65)); // failed memory allocation (too much memory)
                            v47 = v49.data;
                            RETURNDATACOPY(v47, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x1df3(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, varg1).gas(msg.gas);
    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v1 == 1)) & v0);
    return ;
}

function 0x1e58(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.transfer(0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54, varg1).gas(msg.gas);
    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v1 == 1)) & v0);
    return ;
}

function 0x1ec0(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = 0x2ab4(varg8, varg4, varg10, varg5);
    require(!v0, Error(0x696e66));
    v1 = 0x2ad5(varg8, varg7, varg4, varg10, varg9, varg5, varg6);
    v2 = 0x1be9(v1);
    v3 = 0x2b35(varg1);
    v4 = new bytes[](v3.word0);
    MCOPY(v4.data, v3.data, v3.word0);
    v4[v3.word0] = 0;
    v5, /* uint256 */ v6, /* uint256 */ v7 = varg2.swap(address(this), 1, v2, address(0x1000276a4), v4).gas(msg.gas);
    if (v5) {
        if (v5) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v8 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v8 = v9 = MEM[64] + 64;
            }
            require(v8 - MEM[64] >= 64);
        }
        _uniswapV2Call = 0;
        v10, /* uint256 */ v11 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v10) {
            v11 = v12 = 0;
            if (v10) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v13 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v13 = v14 = MEM[64] + 32;
                }
                require(v13 - MEM[64] >= 32);
            }
            v15 = this.balance;
            v16 = _SafeAdd(v11, v15);
            v17 = _SafeSub(v16, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v18 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v19 = 0x128a(v18);
                v20 = _SafeMul(varg3 & 0x3ffffffffffff, v19);
                require(v20 < v17, Error(52));
                v21 = 0x128a(msg.gas);
                require(v21 >= msg.gas, Error(13665));
                v22 = _SafeSub(v17, v20);
                0x3045(v16, v11, v22, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v23 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v24 = 0x1299(v23);
                v25 = _SafeMul(varg3 & 0x3ffffffffffff, v24);
                require(v25 < v17, Error(52));
                v26 = _SafeSub(v17, v25);
                require(0x3ff & varg3 >> 50 <= 1000);
                v27 = _SafeMul(v26, 0x3ff & varg3 >> 50);
                v28 = _SafeSub(v26, v27 / 1000);
                v29 = 0;
                v30 = this.balance <= v27 / 1000;
                if (v30) {
                    v30 = v31 = v11 > 1;
                }
                if (v30) {
                    v32 = 0x12b5(v11);
                    0x3167(v32, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v29 = v33 = 1;
                }
                if (v27 / 1000) {
                    v34 = block.coinbase.call().value(v27 / 1000).gas(10000);
                }
                v35 = 0x1299(msg.gas);
                require(v35 >= msg.gas, Error(13666));
                v36 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v36) {
                    require(v16 - v27 / 1000 <= v16, Panic(17)); // arithmetic overflow or underflow
                    v36 = v37 = 10 ** 17 < v16 - v27 / 1000;
                }
                if (v36) {
                    v38 = 0x19d9(varg3 & 0x3ffffffffffff);
                    v36 = v39 = v38 < v28;
                }
                if (v36) {
                    if (!v29) {
                        if (this.balance < v11) {
                            v40 = 0x12b5(v11);
                            0x1e58(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v40);
                        } else {
                            v41 = 0x12b5(this.balance);
                            v42, /* uint256 */ v43 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v41).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v44 = v45 = new bytes[](RETURNDATASIZE());
                                require(!((v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
                                v43 = v45.data;
                                RETURNDATACOPY(v43, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v46 = 0x12b5(this.balance);
                        v47, /* uint256 */ v48 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v46).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v49 = v50 = new bytes[](RETURNDATASIZE());
                            require(!((v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
                            v48 = v50.data;
                            RETURNDATACOPY(v48, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x1f4d(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x231d(v0);
    v2 = _SafeMul(varg9, varg10);
    v3 = 0x231d(v2);
    require(varg7 * (varg5 * varg4) * varg10 > 10 ** 8 * (varg8 * varg9), Error(0x696e66));
    v4 = varg4 * varg5 * varg7;
    v5 = _SafeDiv(v4 * varg10 - v1 * v3 * varg6 * 10000, v4 + varg4 * varg9 * 10000);
    v6 = _SafeDiv(varg9 * v5 * 10000, (varg10 - v5) * (10000 - (10000 - varg5)));
    v7 = 0x2a49(varg1, varg7, varg8, 10000 - varg4, v6 + 1);
    require(varg2.code.size);
    v8 = new bytes[](v7.word0);
    MCOPY(v8.data, v7.data, v7.word0);
    v8[v7.word0] = 0;
    v9 = varg2.swap(0, v5, address(this), v8).gas(msg.gas);
    if (v9) {
        if (v9) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        _uniswapV2Call = 0;
        v10, /* uint256 */ v11 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v10) {
            v11 = v12 = 0;
            if (v10) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v13 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v13 = v14 = MEM[64] + 32;
                }
                require(v13 - MEM[64] >= 32);
            }
            v15 = this.balance;
            v16 = _SafeAdd(v11, v15);
            v17 = _SafeSub(v16, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v18 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v19 = 0x128a(v18);
                v20 = _SafeMul(varg3 & 0x3ffffffffffff, v19);
                require(v20 < v17, Error(52));
                v21 = 0x128a(msg.gas);
                require(v21 >= msg.gas, Error(13665));
                v22 = _SafeSub(v17, v20);
                0x3045(v16, v11, v22, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v23 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v24 = 0x1299(v23);
                v25 = _SafeMul(varg3 & 0x3ffffffffffff, v24);
                require(v25 < v17, Error(52));
                v26 = _SafeSub(v17, v25);
                require(0x3ff & varg3 >> 50 <= 1000);
                v27 = _SafeMul(v26, 0x3ff & varg3 >> 50);
                v28 = _SafeSub(v26, v27 / 1000);
                v29 = 0;
                v30 = this.balance <= v27 / 1000;
                if (v30) {
                    v30 = v31 = v11 > 1;
                }
                if (v30) {
                    v32 = 0x12b5(v11);
                    0x3167(v32, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v29 = v33 = 1;
                }
                if (v27 / 1000) {
                    v34 = block.coinbase.call().value(v27 / 1000).gas(10000);
                }
                v35 = 0x1299(msg.gas);
                require(v35 >= msg.gas, Error(13666));
                v36 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v36) {
                    require(v16 - v27 / 1000 <= v16, Panic(17)); // arithmetic overflow or underflow
                    v36 = v37 = 10 ** 17 < v16 - v27 / 1000;
                }
                if (v36) {
                    v38 = 0x19d9(varg3 & 0x3ffffffffffff);
                    v36 = v39 = v38 < v28;
                }
                if (v36) {
                    if (!v29) {
                        if (this.balance < v11) {
                            v40 = 0x12b5(v11);
                            0x1e58(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v40);
                        } else {
                            v41 = 0x12b5(this.balance);
                            v42, /* uint256 */ v43 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v41).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v44 = v45 = new bytes[](RETURNDATASIZE());
                                require(!((v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
                                v43 = v45.data;
                                RETURNDATACOPY(v43, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v46 = 0x12b5(this.balance);
                        v47, /* uint256 */ v48 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v46).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v49 = v50 = new bytes[](RETURNDATASIZE());
                            require(!((v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
                            v48 = v50.data;
                            RETURNDATACOPY(v48, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x2004(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = 0x2b91(varg8, varg4, varg10, varg5);
    require(!v0, Error(0x696e66));
    v1 = 0x2ba7(varg8, varg7, varg4, varg10, varg9, varg5, varg6);
    v2 = 0x1be9(v1);
    v3 = 0x2b35(varg1);
    v4 = new bytes[](v3.word0);
    MCOPY(v4.data, v3.data, v3.word0);
    v4[v3.word0] = 0;
    v5, /* uint256 */ v6, /* uint256 */ v7 = varg2.swap(address(this), 0, v2, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v4).gas(msg.gas);
    if (v5) {
        if (v5) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v8 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v8 = v9 = MEM[64] + 64;
            }
            require(v8 - MEM[64] >= 64);
        }
        _uniswapV2Call = 0;
        v10, /* uint256 */ v11 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v10) {
            v11 = v12 = 0;
            if (v10) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v13 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v13 = v14 = MEM[64] + 32;
                }
                require(v13 - MEM[64] >= 32);
            }
            v15 = this.balance;
            v16 = _SafeAdd(v11, v15);
            v17 = _SafeSub(v16, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v18 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v19 = 0x128a(v18);
                v20 = _SafeMul(varg3 & 0x3ffffffffffff, v19);
                require(v20 < v17, Error(52));
                v21 = 0x128a(msg.gas);
                require(v21 >= msg.gas, Error(13665));
                v22 = _SafeSub(v17, v20);
                0x3045(v16, v11, v22, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v23 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v24 = 0x1299(v23);
                v25 = _SafeMul(varg3 & 0x3ffffffffffff, v24);
                require(v25 < v17, Error(52));
                v26 = _SafeSub(v17, v25);
                require(0x3ff & varg3 >> 50 <= 1000);
                v27 = _SafeMul(v26, 0x3ff & varg3 >> 50);
                v28 = _SafeSub(v26, v27 / 1000);
                v29 = 0;
                v30 = this.balance <= v27 / 1000;
                if (v30) {
                    v30 = v31 = v11 > 1;
                }
                if (v30) {
                    v32 = 0x12b5(v11);
                    0x3167(v32, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v29 = v33 = 1;
                }
                if (v27 / 1000) {
                    v34 = block.coinbase.call().value(v27 / 1000).gas(10000);
                }
                v35 = 0x1299(msg.gas);
                require(v35 >= msg.gas, Error(13666));
                v36 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v36) {
                    require(v16 - v27 / 1000 <= v16, Panic(17)); // arithmetic overflow or underflow
                    v36 = v37 = 10 ** 17 < v16 - v27 / 1000;
                }
                if (v36) {
                    v38 = 0x19d9(varg3 & 0x3ffffffffffff);
                    v36 = v39 = v38 < v28;
                }
                if (v36) {
                    if (!v29) {
                        if (this.balance < v11) {
                            v40 = 0x12b5(v11);
                            0x1e58(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v40);
                        } else {
                            v41 = 0x12b5(this.balance);
                            v42, /* uint256 */ v43 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v41).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v44 = v45 = new bytes[](RETURNDATASIZE());
                                require(!((v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
                                v43 = v45.data;
                                RETURNDATACOPY(v43, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v46 = 0x12b5(this.balance);
                        v47, /* uint256 */ v48 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v46).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v49 = v50 = new bytes[](RETURNDATASIZE());
                            require(!((v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
                            v48 = v50.data;
                            RETURNDATACOPY(v48, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x209f(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg9, varg10);
    v1 = 0x231d(v0);
    v2 = 0x2c47(varg8, varg4, varg9, varg10, varg5);
    require(!v2, Error(0x696e66));
    v3 = 0x2cd7(varg8, varg7, varg4, varg10, v1, varg5, varg6);
    v4 = 0x24de(varg2, varg9, varg10, 10000 - varg5);
    v5 = new bytes[](v4.word0);
    MCOPY(v5.data, v4.data, v4.word0);
    v5[v4.word0] = 0;
    v6, /* uint256 */ v7, /* uint256 */ v8 = varg1.swap(address(varg2), 1, v3, address(0x1000276a4), v5).gas(msg.gas);
    if (v6) {
        if (v6) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v9 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v9 = v10 = MEM[64] + 64;
            }
            require(v9 - MEM[64] >= 64);
        }
        _uniswapV2Call = 0;
        v11, /* uint256 */ v12 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v11) {
            v12 = v13 = 0;
            if (v11) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v14 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v14 = v15 = MEM[64] + 32;
                }
                require(v14 - MEM[64] >= 32);
            }
            v16 = this.balance;
            v17 = _SafeAdd(v12, v16);
            v18 = _SafeSub(v17, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v19 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v20 = 0x128a(v19);
                v21 = _SafeMul(varg3 & 0x3ffffffffffff, v20);
                require(v21 < v18, Error(52));
                v22 = 0x128a(msg.gas);
                require(v22 >= msg.gas, Error(13665));
                v23 = _SafeSub(v18, v21);
                0x3045(v17, v12, v23, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v24 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v25 = 0x1299(v24);
                v26 = _SafeMul(varg3 & 0x3ffffffffffff, v25);
                require(v26 < v18, Error(52));
                v27 = _SafeSub(v18, v26);
                require(0x3ff & varg3 >> 50 <= 1000);
                v28 = _SafeMul(v27, 0x3ff & varg3 >> 50);
                v29 = _SafeSub(v27, v28 / 1000);
                v30 = 0;
                v31 = this.balance <= v28 / 1000;
                if (v31) {
                    v31 = v32 = v12 > 1;
                }
                if (v31) {
                    v33 = 0x12b5(v12);
                    0x3167(v33, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v30 = v34 = 1;
                }
                if (v28 / 1000) {
                    v35 = block.coinbase.call().value(v28 / 1000).gas(10000);
                }
                v36 = 0x1299(msg.gas);
                require(v36 >= msg.gas, Error(13666));
                v37 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v37) {
                    require(v17 - v28 / 1000 <= v17, Panic(17)); // arithmetic overflow or underflow
                    v37 = v38 = 10 ** 17 < v17 - v28 / 1000;
                }
                if (v37) {
                    v39 = 0x19d9(varg3 & 0x3ffffffffffff);
                    v37 = v40 = v39 < v29;
                }
                if (v37) {
                    if (!v30) {
                        if (this.balance < v12) {
                            v41 = 0x12b5(v12);
                            0x1e58(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v41);
                        } else {
                            v42 = 0x12b5(this.balance);
                            v43, /* uint256 */ v44 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v42).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v45 = v46 = new bytes[](RETURNDATASIZE());
                                require(!((v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v46)), Panic(65)); // failed memory allocation (too much memory)
                                v44 = v46.data;
                                RETURNDATACOPY(v44, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v47 = 0x12b5(this.balance);
                        v48, /* uint256 */ v49 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v47).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v50 = v51 = new bytes[](RETURNDATASIZE());
                            require(!((v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
                            v49 = v51.data;
                            RETURNDATACOPY(v49, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x213f(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x231d(v0);
    v2 = 0x2d72(varg7, varg8, varg4, varg10, varg5);
    require(!v2, Error(0x696e66));
    v3 = 0x2de7(varg8, v1, varg4, varg10, varg9, varg5, varg6);
    v4 = 0x1be9(v3);
    v5 = 0x2576(varg1, varg7, varg8, 10000 - varg4);
    v6 = new bytes[](v5.word0);
    MCOPY(v6.data, v5.data, v5.word0);
    v6[v5.word0] = 0;
    v7, /* uint256 */ v8, /* uint256 */ v9 = varg2.swap(address(this), 0, v4, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v6).gas(msg.gas);
    if (v7) {
        if (v7) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v10 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v10 = v11 = MEM[64] + 64;
            }
            require(v10 - MEM[64] >= 64);
        }
        _uniswapV2Call = 0;
        v12, /* uint256 */ v13 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v12) {
            v13 = v14 = 0;
            if (v12) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v15 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v15 = v16 = MEM[64] + 32;
                }
                require(v15 - MEM[64] >= 32);
            }
            v17 = this.balance;
            v18 = _SafeAdd(v13, v17);
            v19 = _SafeSub(v18, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v20 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v21 = 0x128a(v20);
                v22 = _SafeMul(varg3 & 0x3ffffffffffff, v21);
                require(v22 < v19, Error(52));
                v23 = 0x128a(msg.gas);
                require(v23 >= msg.gas, Error(13665));
                v24 = _SafeSub(v19, v22);
                0x3045(v18, v13, v24, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v25 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v26 = 0x1299(v25);
                v27 = _SafeMul(varg3 & 0x3ffffffffffff, v26);
                require(v27 < v19, Error(52));
                v28 = _SafeSub(v19, v27);
                require(0x3ff & varg3 >> 50 <= 1000);
                v29 = _SafeMul(v28, 0x3ff & varg3 >> 50);
                v30 = _SafeSub(v28, v29 / 1000);
                v31 = 0;
                v32 = this.balance <= v29 / 1000;
                if (v32) {
                    v32 = v33 = v13 > 1;
                }
                if (v32) {
                    v34 = 0x12b5(v13);
                    0x3167(v34, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v31 = v35 = 1;
                }
                if (v29 / 1000) {
                    v36 = block.coinbase.call().value(v29 / 1000).gas(10000);
                }
                v37 = 0x1299(msg.gas);
                require(v37 >= msg.gas, Error(13666));
                v38 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v38) {
                    require(v18 - v29 / 1000 <= v18, Panic(17)); // arithmetic overflow or underflow
                    v38 = v39 = 10 ** 17 < v18 - v29 / 1000;
                }
                if (v38) {
                    v40 = 0x19d9(varg3 & 0x3ffffffffffff);
                    v38 = v41 = v40 < v30;
                }
                if (v38) {
                    if (!v31) {
                        if (this.balance < v13) {
                            v42 = 0x12b5(v13);
                            0x1e58(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v42);
                        } else {
                            v43 = 0x12b5(this.balance);
                            v44, /* uint256 */ v45 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v43).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v46 = v47 = new bytes[](RETURNDATASIZE());
                                require(!((v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v47)), Panic(65)); // failed memory allocation (too much memory)
                                v45 = v47.data;
                                RETURNDATACOPY(v45, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v48 = 0x12b5(this.balance);
                        v49, /* uint256 */ v50 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v48).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v51 = v52 = new bytes[](RETURNDATASIZE());
                            require(!((v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
                            v50 = v52.data;
                            RETURNDATACOPY(v50, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x21b9(uint256 varg0, uint256 varg1) private { 
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

function 0x21ff(bytes varg0) private { 
    require(varg0 + varg0.length - varg0 >= 64);
    require(MEM[varg0 + 64] <= uint64.max);
    v0 = 0x21b9(varg0 + MEM[varg0 + 64] + 32, varg0 + varg0.length + 32);
    return v0, MEM[varg0.data];
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1, v2 = 0x21ff(v0);
    v3, v4 = 0x2239(v1);
    require(v3 + v3.length - v3 >= 128);
    require(!(MEM[v3 + 128] - bool(MEM[v3 + 128])));
    if (!amount1) {
        v5 = _SafeDiv(MEM[v3.data] * v2 * 10000, (MEM[v3 + 64] - v2) * (10000 - MEM[v3 + 96]));
        0x1df3(v4, v5 + 1);
        v6 = v7 = address(v4);
        require(v7.code.size);
        v8 = v9 = MEM[64];
        MEM[v9] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        v10 = v11 = 0;
        MEM[v9 + 4] = v11;
        MEM[v9 + 36] = v2;
        MEM[v9 + 68] = msg.sender;
        MEM[v9 + 100] = 128;
        MEM[v9 + 132] = v11;
        v12 = v13 = v9 + 164;
    } else {
        v14 = _SafeDiv(MEM[v3 + 64] * v2 * 10000, (MEM[v3.data] - v2) * (10000 - MEM[v3 + 96]));
        0x1df3(v4, v14 + 1);
        v6 = address(v4);
        require(v6.code.size);
        v8 = MEM[64];
        MEM[v8] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = v2;
        v10 = 0;
        MEM[v8 + 36] = v10;
        MEM[v8 + 68] = msg.sender;
        MEM[v8 + 100] = 128;
        MEM[v8 + 132] = v10;
        v12 = v8 + 164;
    }
    v15 = v6.call(MEM[v220fd0x259:v220fd0x259 + v220fd0x2aa - v220fd0x259], MEM[v220fd0x259:v220fd0x259 + v220fd0x285]).value(v10).gas(msg.gas);
    require(v15, MEM[64], RETURNDATASIZE());
    if (v15) {
        require(!((v8 > uint64.max) | (v8 < v8)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v8;
        require(v8 - v8 >= 0);
        exit;
    } else {
        exit;
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    if (data.length) {
        require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v0 = new bytes[](data.length);
        require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        require(data.data + data.length <= msg.data.length);
        CALLDATACOPY(v0.data, data.data, data.length);
        v0[data.length] = 0;
        v1, v2 = v3 = 0x2239(v0);
        if (v1.length) {
            require(v1 + v1.length - v1 >= 128);
            require(!(MEM[v1 + 128] - bool(MEM[v1 + 128])));
            v4 = v5 = 0;
            if (!MEM[v1 + 128]) {
                if (0 == amount1Delta > 0) {
                    v6 = _SafeDiv(MEM[v1 + 64] * amount0Delta * 10000, (MEM[v1.data] - amount0Delta) * (10000 - MEM[v1 + 96]));
                    v2 = v7 = 0x224c4(v6 + 1, 2092);
                } else {
                    v4 = v8 = 0;
                    v9 = _SafeDiv(MEM[v1.data] * amount1Delta * 10000, (MEM[v1 + 64] - amount1Delta) * (10000 - MEM[v1 + 96]));
                    0x1df3(v3, v9 + 1);
                }
                require((address(v2)).code.size);
                v10 = address(v2).swap(v4, v4, msg.sender, 128, 0).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                        exit;
                    } else {
                        exit;
                    }
                }
            } else {
                if (amount1Delta <= 0) {
                    v11 = 0x1be9(amount1Delta);
                    v12 = _SafeDiv((10000 - MEM[v1 + 96]) * v11 * MEM[v1.data], MEM[v1 + 64] * 10000 + (10000 - MEM[v1 + 96]) * v11);
                    v13 = v14 = 0;
                } else {
                    v12 = v15 = 0;
                    v16 = 0x1be9(amount0Delta);
                    v13 = _SafeDiv((10000 - MEM[v1 + 96]) * v16 * MEM[v1 + 64], MEM[v1.data] * 10000 + (10000 - MEM[v1 + 96]) * v16);
                }
                require((address(v3)).code.size);
                v17 = address(v3).swap(v12, v13, this, 128, 0).gas(msg.gas);
                if (v17) {
                    if (v17) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v18, /* uint256 */ v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v4).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v19 == 1)) & v18);
                    exit;
                }
            }
        } else {
            v20 = v21 = 0x1be9(amount1Delta);
            v22 = 1;
            v23 = 0x1000276a4;
            if (amount0Delta > 0) {
                v20 = v24 = 0x1be9(amount0Delta);
                v23 = v25 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                v22 = v26 = 0;
            }
            v27 = new uint256[](0);
            v28, /* uint256 */ v29, /* uint256 */ v30 = address(v3).swap(msg.sender, bool(v22), v20, address(v23), v27).gas(msg.gas);
            if (v28) {
                if (v28) {
                    v31 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v31 = v32 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v31 - MEM[64] >= 64);
                    exit;
                } else {
                    exit;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    } else if (amount0Delta <= 0) {
        0x1df3(msg.sender, amount1Delta);
        exit;
    } else {
        0x1df3(msg.sender, amount0Delta);
        exit;
    }
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    if (data.length) {
        require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v0 = new bytes[](data.length);
        require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        require(data.data + data.length <= msg.data.length);
        CALLDATACOPY(v0.data, data.data, data.length);
        v0[data.length] = 0;
        v1, v2 = v3 = 0x2239(v0);
        if (v1.length) {
            require(v1 + v1.length - v1 >= 128);
            require(!(MEM[v1 + 128] - bool(MEM[v1 + 128])));
            v4 = v5 = 0;
            if (!MEM[v1 + 128]) {
                if (0 == amount1Delta > 0) {
                    v6 = _SafeDiv(MEM[v1 + 64] * amount0Delta * 10000, (MEM[v1.data] - amount0Delta) * (10000 - MEM[v1 + 96]));
                    v2 = v7 = 0x224c4(v6 + 1, 2092);
                } else {
                    v4 = v8 = 0;
                    v9 = _SafeDiv(MEM[v1.data] * amount1Delta * 10000, (MEM[v1 + 64] - amount1Delta) * (10000 - MEM[v1 + 96]));
                    0x1df3(v3, v9 + 1);
                }
                require((address(v2)).code.size);
                v10 = address(v2).swap(v4, v4, msg.sender, 128, 0).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                        exit;
                    } else {
                        exit;
                    }
                }
            } else {
                if (amount1Delta <= 0) {
                    v11 = 0x1be9(amount1Delta);
                    v12 = _SafeDiv((10000 - MEM[v1 + 96]) * v11 * MEM[v1.data], MEM[v1 + 64] * 10000 + (10000 - MEM[v1 + 96]) * v11);
                    v13 = v14 = 0;
                } else {
                    v12 = v15 = 0;
                    v16 = 0x1be9(amount0Delta);
                    v13 = _SafeDiv((10000 - MEM[v1 + 96]) * v16 * MEM[v1 + 64], MEM[v1.data] * 10000 + (10000 - MEM[v1 + 96]) * v16);
                }
                require((address(v3)).code.size);
                v17 = address(v3).swap(v12, v13, this, 128, 0).gas(msg.gas);
                if (v17) {
                    if (v17) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v18, /* uint256 */ v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v4).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v19 == 1)) & v18);
                    exit;
                }
            }
        } else {
            v20 = v21 = 0x1be9(amount1Delta);
            v22 = 1;
            v23 = 0x1000276a4;
            if (amount0Delta > 0) {
                v20 = v24 = 0x1be9(amount0Delta);
                v23 = v25 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                v22 = v26 = 0;
            }
            v27 = new uint256[](0);
            v28, /* uint256 */ v29, /* uint256 */ v30 = address(v3).swap(msg.sender, bool(v22), v20, address(v23), v27).gas(msg.gas);
            if (v28) {
                if (v28) {
                    v31 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v31 = v32 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v31 - MEM[64] >= 64);
                    exit;
                } else {
                    exit;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    } else if (amount0Delta <= 0) {
        0x1df3(msg.sender, amount1Delta);
        exit;
    } else {
        0x1df3(msg.sender, amount0Delta);
        exit;
    }
}

function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    require(_data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](_data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + _data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + _data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(_data.data + _data.length <= msg.data.length);
    CALLDATACOPY(v0.data, _data.data, _data.length);
    v0[_data.length] = 0;
    v1, v2 = 0x21ff(v0);
    v3, v4 = 0x2239(v1);
    require(v3 + v3.length - v3 >= 128);
    require(!(MEM[v3 + 128] - bool(MEM[v3 + 128])));
    if (!_amount1) {
        v5 = _SafeDiv(MEM[v3.data] * v2 * 10000, (MEM[v3 + 64] - v2) * (10000 - MEM[v3 + 96]));
        0x1df3(v4, v5 + 1);
        v6 = v7 = address(v4);
        require(v7.code.size);
        v8 = v9 = MEM[64];
        MEM[v9] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        v10 = v11 = 0;
        MEM[v9 + 4] = v11;
        MEM[v9 + 36] = v2;
        MEM[v9 + 68] = msg.sender;
        MEM[v9 + 100] = 128;
        MEM[v9 + 132] = v11;
        v12 = v13 = v9 + 164;
    } else {
        v14 = _SafeDiv(MEM[v3 + 64] * v2 * 10000, (MEM[v3.data] - v2) * (10000 - MEM[v3 + 96]));
        0x1df3(v4, v14 + 1);
        v6 = address(v4);
        require(v6.code.size);
        v8 = MEM[64];
        MEM[v8] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = v2;
        v10 = 0;
        MEM[v8 + 36] = v10;
        MEM[v8 + 68] = msg.sender;
        MEM[v8 + 100] = 128;
        MEM[v8 + 132] = v10;
        v12 = v8 + 164;
    }
    v15 = v6.call(MEM[v221690x259:v221690x259 + v221690x2aa - v221690x259], MEM[v221690x259:v221690x259 + v221690x285]).value(v10).gas(msg.gas);
    require(v15, MEM[64], RETURNDATASIZE());
    if (v15) {
        require(!((v8 > uint64.max) | (v8 < v8)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v8;
        require(v8 - v8 >= 0);
        exit;
    } else {
        exit;
    }
}

function 0x9f3d4ab8(uint256 varg0, uint256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    if (varg2.length) {
        require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v0 = new bytes[](varg2.length);
        require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        require(varg2.data + varg2.length <= msg.data.length);
        CALLDATACOPY(v0.data, varg2.data, varg2.length);
        v0[varg2.length] = 0;
        v1, v2 = v3 = 0x2239(v0);
        if (v1.length) {
            require(v1 + v1.length - v1 >= 128);
            require(!(MEM[v1 + 128] - bool(MEM[v1 + 128])));
            v4 = v5 = 0;
            if (!MEM[v1 + 128]) {
                if (0 == varg1 > 0) {
                    v6 = _SafeDiv(MEM[v1 + 64] * varg0 * 10000, (MEM[v1.data] - varg0) * (10000 - MEM[v1 + 96]));
                    v2 = v7 = 0x224c4(v6 + 1, 2092);
                } else {
                    v4 = v8 = 0;
                    v9 = _SafeDiv(MEM[v1.data] * varg1 * 10000, (MEM[v1 + 64] - varg1) * (10000 - MEM[v1 + 96]));
                    0x1df3(v3, v9 + 1);
                }
                require((address(v2)).code.size);
                v10 = address(v2).swap(v4, v4, msg.sender, 128, 0).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                        exit;
                    } else {
                        exit;
                    }
                }
            } else {
                if (varg1 <= 0) {
                    v11 = 0x1be9(varg1);
                    v12 = _SafeDiv((10000 - MEM[v1 + 96]) * v11 * MEM[v1.data], MEM[v1 + 64] * 10000 + (10000 - MEM[v1 + 96]) * v11);
                    v13 = v14 = 0;
                } else {
                    v12 = v15 = 0;
                    v16 = 0x1be9(varg0);
                    v13 = _SafeDiv((10000 - MEM[v1 + 96]) * v16 * MEM[v1 + 64], MEM[v1.data] * 10000 + (10000 - MEM[v1 + 96]) * v16);
                }
                require((address(v3)).code.size);
                v17 = address(v3).swap(v12, v13, this, 128, 0).gas(msg.gas);
                if (v17) {
                    if (v17) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v18, /* uint256 */ v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v4).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v19 == 1)) & v18);
                    exit;
                }
            }
        } else {
            v20 = v21 = 0x1be9(varg1);
            v22 = 1;
            v23 = 0x1000276a4;
            if (varg0 > 0) {
                v20 = v24 = 0x1be9(varg0);
                v23 = v25 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                v22 = v26 = 0;
            }
            v27 = new uint256[](0);
            v28, /* uint256 */ v29, /* uint256 */ v30 = address(v3).swap(msg.sender, bool(v22), v20, address(v23), v27).gas(msg.gas);
            if (v28) {
                if (v28) {
                    v31 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v31 = v32 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v31 - MEM[64] >= 64);
                    exit;
                } else {
                    exit;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    } else if (varg0 <= 0) {
        0x1df3(msg.sender, varg1);
        exit;
    } else {
        0x1df3(msg.sender, varg0);
        exit;
    }
}

function 0xa0bd0131(uint256 varg0, uint256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    if (varg2.length) {
        require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v0 = new bytes[](varg2.length);
        require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        require(varg2.data + varg2.length <= msg.data.length);
        CALLDATACOPY(v0.data, varg2.data, varg2.length);
        v0[varg2.length] = 0;
        v1, v2 = v3 = 0x2239(v0);
        if (v1.length) {
            require(v1 + v1.length - v1 >= 128);
            require(!(MEM[v1 + 128] - bool(MEM[v1 + 128])));
            v4 = v5 = 0;
            if (!MEM[v1 + 128]) {
                if (0 == varg1 > 0) {
                    v6 = _SafeDiv(MEM[v1 + 64] * varg0 * 10000, (MEM[v1.data] - varg0) * (10000 - MEM[v1 + 96]));
                    v2 = v7 = 0x224c4(v6 + 1, 2092);
                } else {
                    v4 = v8 = 0;
                    v9 = _SafeDiv(MEM[v1.data] * varg1 * 10000, (MEM[v1 + 64] - varg1) * (10000 - MEM[v1 + 96]));
                    0x1df3(v3, v9 + 1);
                }
                require((address(v2)).code.size);
                v10 = address(v2).swap(v4, v4, msg.sender, 128, 0).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                        exit;
                    } else {
                        exit;
                    }
                }
            } else {
                if (varg1 <= 0) {
                    v11 = 0x1be9(varg1);
                    v12 = _SafeDiv((10000 - MEM[v1 + 96]) * v11 * MEM[v1.data], MEM[v1 + 64] * 10000 + (10000 - MEM[v1 + 96]) * v11);
                    v13 = v14 = 0;
                } else {
                    v12 = v15 = 0;
                    v16 = 0x1be9(varg0);
                    v13 = _SafeDiv((10000 - MEM[v1 + 96]) * v16 * MEM[v1 + 64], MEM[v1.data] * 10000 + (10000 - MEM[v1 + 96]) * v16);
                }
                require((address(v3)).code.size);
                v17 = address(v3).swap(v12, v13, this, 128, 0).gas(msg.gas);
                if (v17) {
                    if (v17) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v18, /* uint256 */ v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v4).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v19 == 1)) & v18);
                    exit;
                }
            }
        } else {
            v20 = v21 = 0x1be9(varg1);
            v22 = 1;
            v23 = 0x1000276a4;
            if (varg0 > 0) {
                v20 = v24 = 0x1be9(varg0);
                v23 = v25 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                v22 = v26 = 0;
            }
            v27 = new uint256[](0);
            v28, /* uint256 */ v29, /* uint256 */ v30 = address(v3).swap(msg.sender, bool(v22), v20, address(v23), v27).gas(msg.gas);
            if (v28) {
                if (v28) {
                    v31 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v31 = v32 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v31 - MEM[64] >= 64);
                    exit;
                } else {
                    exit;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    } else if (varg0 <= 0) {
        0x1df3(msg.sender, varg1);
        exit;
    } else {
        0x1df3(msg.sender, varg0);
        exit;
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    if (data.length) {
        require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v0 = new bytes[](data.length);
        require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        require(data.data + data.length <= msg.data.length);
        CALLDATACOPY(v0.data, data.data, data.length);
        v0[data.length] = 0;
        v1, v2 = v3 = 0x2239(v0);
        if (v1.length) {
            require(v1 + v1.length - v1 >= 128);
            require(!(MEM[v1 + 128] - bool(MEM[v1 + 128])));
            v4 = v5 = 0;
            if (!MEM[v1 + 128]) {
                if (0 == amount1Delta > 0) {
                    v6 = _SafeDiv(MEM[v1 + 64] * amount0Delta * 10000, (MEM[v1.data] - amount0Delta) * (10000 - MEM[v1 + 96]));
                    v2 = v7 = 0x224c4(v6 + 1, 2092);
                } else {
                    v4 = v8 = 0;
                    v9 = _SafeDiv(MEM[v1.data] * amount1Delta * 10000, (MEM[v1 + 64] - amount1Delta) * (10000 - MEM[v1 + 96]));
                    0x1df3(v3, v9 + 1);
                }
                require((address(v2)).code.size);
                v10 = address(v2).swap(v4, v4, msg.sender, 128, 0).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                        exit;
                    } else {
                        exit;
                    }
                }
            } else {
                if (amount1Delta <= 0) {
                    v11 = 0x1be9(amount1Delta);
                    v12 = _SafeDiv((10000 - MEM[v1 + 96]) * v11 * MEM[v1.data], MEM[v1 + 64] * 10000 + (10000 - MEM[v1 + 96]) * v11);
                    v13 = v14 = 0;
                } else {
                    v12 = v15 = 0;
                    v16 = 0x1be9(amount0Delta);
                    v13 = _SafeDiv((10000 - MEM[v1 + 96]) * v16 * MEM[v1 + 64], MEM[v1.data] * 10000 + (10000 - MEM[v1 + 96]) * v16);
                }
                require((address(v3)).code.size);
                v17 = address(v3).swap(v12, v13, this, 128, 0).gas(msg.gas);
                if (v17) {
                    if (v17) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v18, /* uint256 */ v19 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v4).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v19 == 1)) & v18);
                    exit;
                }
            }
        } else {
            v20 = v21 = 0x1be9(amount1Delta);
            v22 = 1;
            v23 = 0x1000276a4;
            if (amount0Delta > 0) {
                v20 = v24 = 0x1be9(amount0Delta);
                v23 = v25 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                v22 = v26 = 0;
            }
            v27 = new uint256[](0);
            v28, /* uint256 */ v29, /* uint256 */ v30 = address(v3).swap(msg.sender, bool(v22), v20, address(v23), v27).gas(msg.gas);
            if (v28) {
                if (v28) {
                    v31 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v31 = v32 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v31 - MEM[64] >= 64);
                    exit;
                } else {
                    exit;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    } else if (amount0Delta <= 0) {
        0x1df3(msg.sender, amount1Delta);
        exit;
    } else {
        0x1df3(msg.sender, amount0Delta);
        exit;
    }
}

function 0x2239(bytes varg0) private { 
    require(varg0 + varg0.length - varg0 >= 64);
    require(!(address(MEM[varg0.data]) - MEM[varg0.data]));
    require(MEM[varg0 + 64] <= uint64.max);
    v0 = 0x21b9(varg0 + MEM[varg0 + 64] + 32, varg0 + varg0.length + 32);
    return v0, address(MEM[varg0.data]);
}

function 0x224c4(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(v2, varg0).gas(msg.gas);
    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (v1 == 1)) & v0);
    return v2;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x231d(uint256 varg0) private { 
    if (!varg0) {
        return 0;
    } else {
        v0 = _SafeDiv(varg0, 1 << (uint8.max - CLZ(varg0) >> 1));
        v1 = _SafeDiv(varg0, v0 + (1 << (uint8.max - CLZ(varg0) >> 1)) >> 1);
        v2 = _SafeDiv(varg0, v1 + (v0 + (1 << (uint8.max - CLZ(varg0) >> 1)) >> 1) >> 1);
        v3 = _SafeDiv(varg0, v2 + (v1 + (v0 + (1 << (uint8.max - CLZ(varg0) >> 1)) >> 1) >> 1) >> 1);
        v4 = _SafeDiv(varg0, v3 + (v2 + (v1 + (v0 + (1 << (uint8.max - CLZ(varg0) >> 1)) >> 1) >> 1) >> 1) >> 1);
        v5 = _SafeDiv(varg0, v4 + (v3 + (v2 + (v1 + (v0 + (1 << (uint8.max - CLZ(varg0) >> 1)) >> 1) >> 1) >> 1) >> 1) >> 1);
        v6 = v5 + (v4 + (v3 + (v2 + (v1 + (v0 + (1 << (uint8.max - CLZ(varg0) >> 1)) >> 1) >> 1) >> 1) >> 1) >> 1) >> 1;
        v7 = _SafeDiv(varg0, v6);
        require(v7 + v6 >> 1, Panic(18)); // division by zero
        if (v7 + v6 >> 1 < varg0 / (v7 + v6 >> 1)) {
            return v7 + v6 >> 1;
        } else {
            return varg0 / (v7 + v6 >> 1);
        }
    }
}

function 0x23b3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg1 * varg4 * varg3;
    v1 = v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192) < 10 ** 10 * varg0 * (varg0 * varg2) % uint256.max - 10 ** 10 * varg0 * (varg0 * varg2) - (10 ** 10 * varg0 * (varg0 * varg2) % uint256.max < 10 ** 10 * varg0 * (varg0 * varg2));
    if (v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192) >= 10 ** 10 * varg0 * (varg0 * varg2) % uint256.max - 10 ** 10 * varg0 * (varg0 * varg2) - (10 ** 10 * varg0 * (varg0 * varg2) % uint256.max < 10 ** 10 * varg0 * (varg0 * varg2))) {
        v2 = v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192) == 10 ** 10 * varg0 * (varg0 * varg2) % uint256.max - 10 ** 10 * varg0 * (varg0 * varg2) - (10 ** 10 * varg0 * (varg0 * varg2) % uint256.max < 10 ** 10 * varg0 * (varg0 * varg2));
        if (v2) {
            return v0 << 192 <= 10 ** 10 * varg0 * (varg0 * varg2);
        } else {
            return v2;
        }
    } else {
        return v1;
    }
}

function 0x2449(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = (varg6 << 91) * varg4 - 3125 * varg0 * varg3;
    v1 = (varg5 << 92) * varg1 + 625 * varg3 * varg0;
    v2 = 0x2e87(v0 * (3125 * varg1) * varg0, v0 * (3125 * varg1) * varg0 % uint256.max - v0 * (3125 * varg1) * varg0 - (v0 * (3125 * varg1) * varg0 % uint256.max < v0 * (3125 * varg1) * varg0) + (v0 * (3125 * varg1) % uint256.max - v0 * (3125 * varg1) - (v0 * (3125 * varg1) % uint256.max < v0 * (3125 * varg1)) + (0 - (((varg6 << 91) * varg4 < 3125 * varg0 * varg3) + (3125 * varg0 * varg3 % uint256.max - 3125 * varg0 * varg3 - (3125 * varg0 * varg3 % uint256.max < 3125 * varg0 * varg3)))) * (3125 * varg1)) * varg0, v1 * (varg2 << 90), v1 * (varg2 << 90) % uint256.max - v1 * (varg2 << 90) - (v1 * (varg2 << 90) % uint256.max < v1 * (varg2 << 90)) + ((v1 < (varg5 << 92) * varg1) + (625 * varg3 * varg0 % uint256.max - 625 * varg3 * varg0 - (625 * varg3 * varg0 % uint256.max < 625 * varg3 * varg0))) * (varg2 << 90));
    return v2;
}

function 0x24de(address varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = 1;
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = new struct(8);
    v2.word1 = varg0;
    v2.word2 = 64;
    v2.word3 = v0.word0;
    MCOPY(v2.data + 64 + 32, v0.data, v0.word0);
    MEM[v2.data + 64 + v0.word0 + 32] = 0;
    v2.word0 = 224;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    return v2;
}

function 0x2576(address varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = 0;
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = new struct(8);
    v2.word1 = varg0;
    v2.word2 = 64;
    v2.word3 = v0.word0;
    MCOPY(v2.data + 64 + 32, v0.data, v0.word0);
    MEM[v2.data + 64 + v0.word0 + 32] = 0;
    v2.word0 = 224;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    return v2;
}

function 0x28c8(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = 10 ** 10 * varg1 * (uint192.max + 1) % uint256.max - varg1 * 0x2540be400000000000000000000000000000000000000000000000000 - (10 ** 10 * varg1 * (uint192.max + 1) % uint256.max < varg1 * 0x2540be400000000000000000000000000000000000000000000000000);
    v1 = varg2 * varg4 * varg3;
    if (v0 <= v1 * (varg3 * varg0) % uint256.max - v1 * (varg3 * varg0) - (v1 * (varg3 * varg0) % uint256.max < v1 * (varg3 * varg0))) {
        if (v0 == v1 * (varg3 * varg0) % uint256.max - v1 * (varg3 * varg0) - (v1 * (varg3 * varg0) % uint256.max < v1 * (varg3 * varg0))) {
            return varg1 * 0x2540be400000000000000000000000000000000000000000000000000 >= v1 * (varg3 * varg0);
        } else {
            return v0 == v1 * (varg3 * varg0) % uint256.max - v1 * (varg3 * varg0) - (v1 * (varg3 * varg0) % uint256.max < v1 * (varg3 * varg0));
        }
    } else {
        return v0 > v1 * (varg3 * varg0) % uint256.max - v1 * (varg3 * varg0) - (v1 * (varg3 * varg0) % uint256.max < v1 * (varg3 * varg0));
    }
}

function 0x2977(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg3;
    v1 = v0 * varg0 - varg6 * varg1 * 0x186a0000000000000000000000000;
    v2 = v1 * varg3 * varg4;
    v3 = 0xf4240000000000000000000000000 * varg4 + varg3 * (varg5 * varg0);
    v4 = 0x2e87(v2, v1 * varg3 * varg4 % uint256.max - v2 - (v1 * varg3 * varg4 % uint256.max < v2) + (v1 * varg3 % uint256.max - v1 * varg3 - (v1 * varg3 % uint256.max < v1 * varg3) + (v0 * varg0 % uint256.max - v0 * varg0 - (v0 * varg0 % uint256.max < v0 * varg0) - (v0 * varg0 < varg6 * varg1 * 0x186a0000000000000000000000000)) * varg3) * varg4, v3 * (varg2 << 96), v3 * (varg2 << 96) % uint256.max - v3 * (varg2 << 96) - (v3 * (varg2 << 96) % uint256.max < v3 * (varg2 << 96)) + ((v3 < 0xf4240000000000000000000000000 * varg4) + (varg3 * (varg5 * varg0) % uint256.max - varg3 * (varg5 * varg0) - (varg3 * (varg5 * varg0) % uint256.max < varg3 * (varg5 * varg0)))) * (varg2 << 96));
    return v4;
}

function 0x2a49(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = 0;
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = new struct(8);
    v2.word1 = varg0;
    v2.word2 = 64;
    v2.word3 = v0.word0;
    MCOPY(v2.data + 64 + 32, v0.data, v0.word0);
    MEM[v2.data + 64 + v0.word0 + 32] = 0;
    v2.word0 = 224;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    v3 = new struct(11);
    v4 = v3.data;
    v3.word1 = varg4;
    v3.word2 = 64;
    v3.word3 = v2.word0;
    MCOPY(v3 + 96 + 32, v2.data, v2.word0);
    MEM[v3 + 96 + v2.word0 + 32] = 0;
    v3.word0 = 320;
    require(!((v3 + 352 > uint64.max) | (v3 + 352 < v3)), Panic(65)); // failed memory allocation (too much memory)
    return v3;
}

function 0x2ab4(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = 10 ** 12 * varg0 * varg0 % uint256.max - 10 ** 12 * varg0 * varg0 - (10 ** 12 * varg0 * varg0 % uint256.max < 10 ** 12 * varg0 * varg0);
    v1 = varg1 * varg3 * varg2;
    v2 = v1 * varg2 % uint256.max - v1 * varg2 - (v1 * varg2 % uint256.max < v1 * varg2);
    if (v0 <= v2) {
        if (v0 == v2) {
            return 10 ** 12 * varg0 * varg0 >= v1 * varg2;
        } else {
            return v0 == v2;
        }
    } else {
        return v0 > v2;
    }
}

function 0x2ad5(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg3;
    v1 = (v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3;
    v2 = 10 ** 6 * varg4 * varg0 + varg5 * varg1 * varg3;
    v3 = 0x2e87(v1 * varg1, v1 * varg1 % uint256.max - v1 * varg1 - (v1 * varg1 % uint256.max < v1 * varg1) + ((v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3 % uint256.max - v1 - ((v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3 % uint256.max < v1) + ((v0 - varg6 * varg0 * 10 ** 6) * varg4 % uint256.max - (v0 - varg6 * varg0 * 10 ** 6) * varg4 - ((v0 - varg6 * varg0 * 10 ** 6) * varg4 % uint256.max < (v0 - varg6 * varg0 * 10 ** 6) * varg4) + (0 - (v0 < varg6 * varg0 * 10 ** 6)) * varg4) * varg3) * varg1, v2 * (varg2 << 96), v2 * (varg2 << 96) % uint256.max - v2 * (varg2 << 96) - (v2 * (varg2 << 96) % uint256.max < v2 * (varg2 << 96)) + (10 ** 6 * varg4 * varg0 % uint256.max - 10 ** 6 * varg4 * varg0 - (10 ** 6 * varg4 * varg0 % uint256.max < 10 ** 6 * varg4 * varg0) + (varg5 * varg1 * varg3 % uint256.max - varg5 * varg1 * varg3 - (varg5 * varg1 * varg3 % uint256.max < varg5 * varg1 * varg3)) + (v2 < 10 ** 6 * varg4 * varg0)) * (varg2 << 96));
    return v3;
}

function 0x2b35(address varg0) private { 
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = varg0;
    v0.word2 = 64;
    v0.word3 = 0;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x2b91(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = 10 ** 12 * varg2 * varg2 % uint256.max - 10 ** 12 * varg2 * varg2 - (10 ** 12 * varg2 * varg2 % uint256.max < 10 ** 12 * varg2 * varg2);
    v1 = varg1 * varg3 * varg0;
    v2 = v1 * varg0 % uint256.max - v1 * varg0 - (v1 * varg0 % uint256.max < v1 * varg0);
    if (v0 <= v2) {
        if (v0 == v2) {
            return 10 ** 12 * varg2 * varg2 >= v1 * varg0;
        } else {
            return v0 == v2;
        }
    } else {
        return v0 > v2;
    }
}

function 0x2ba7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg0;
    v1 = v0 - varg6 * varg3 * 10 ** 6 << 96;
    v2 = v1 * varg1 * varg4;
    v3 = varg1 * varg5 * varg0 + 10 ** 6 * varg4 * varg3;
    v4 = v3 * varg2 * varg3;
    v5 = 0x2e87(v2, v1 * varg1 * varg4 % uint256.max - v2 - (v1 * varg1 * varg4 % uint256.max < v2) + (v1 * varg1 % uint256.max - v1 * varg1 - (v1 * varg1 % uint256.max < v1 * varg1) + ((v0 - varg6 * varg3 * 10 ** 6) * (uint96.max + 1) % uint256.max - v1 - ((v0 - varg6 * varg3 * 10 ** 6) * (uint96.max + 1) % uint256.max < v1) + (0 - (v0 < varg6 * varg3 * 10 ** 6) << 96)) * varg1) * varg4, v4, v3 * varg2 * varg3 % uint256.max - v4 - (v3 * varg2 * varg3 % uint256.max < v4) + (v3 * varg2 % uint256.max - v3 * varg2 - (v3 * varg2 % uint256.max < v3 * varg2) + (varg1 * varg5 * varg0 % uint256.max - varg1 * varg5 * varg0 - (varg1 * varg5 * varg0 % uint256.max < varg1 * varg5 * varg0) + (10 ** 6 * varg4 * varg3 % uint256.max - 10 ** 6 * varg4 * varg3 - (10 ** 6 * varg4 * varg3 % uint256.max < 10 ** 6 * varg4 * varg3)) + (v3 < varg1 * varg5 * varg0)) * varg2) * varg3);
    return v5;
}

function 0x2c47(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg1 * varg4 * varg0;
    v1 = 10 ** 10 * varg3 * (uint192.max + 1) % uint256.max - varg3 * 0x2540be400000000000000000000000000000000000000000000000000 - (10 ** 10 * varg3 * (uint192.max + 1) % uint256.max < varg3 * 0x2540be400000000000000000000000000000000000000000000000000);
    if (v0 * (varg0 * varg2) % uint256.max - v0 * (varg0 * varg2) - (v0 * (varg0 * varg2) % uint256.max < v0 * (varg0 * varg2)) >= v1) {
        if (v0 * (varg0 * varg2) % uint256.max - v0 * (varg0 * varg2) - (v0 * (varg0 * varg2) % uint256.max < v0 * (varg0 * varg2)) == v1) {
            return v0 * (varg0 * varg2) <= varg3 * 0x2540be400000000000000000000000000000000000000000000000000;
        } else {
            return v0 * (varg0 * varg2) % uint256.max - v0 * (varg0 * varg2) - (v0 * (varg0 * varg2) % uint256.max < v0 * (varg0 * varg2)) == v1;
        }
    } else {
        return v0 * (varg0 * varg2) % uint256.max - v0 * (varg0 * varg2) - (v0 * (varg0 * varg2) % uint256.max < v0 * (varg0 * varg2)) < v1;
    }
}

function 0x2cd7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = (varg0 * varg6 * varg4 - 0x186a0000000000000000000000000 * varg3) * 0x186a0000000000000000000000000;
    v1 = varg5 * varg1 * varg0 + 0x2710000000000000000000000000 * varg3;
    v2 = varg2 * varg0;
    v3 = 0x2e87(v0 * varg1, v0 * varg1 % uint256.max - v0 * varg1 - (v0 * varg1 % uint256.max < v0 * varg1) + ((varg0 * varg6 * varg4 - 0x186a0000000000000000000000000 * varg3) * 0x186a0000000000000000000000000 % uint256.max - v0 - ((varg0 * varg6 * varg4 - 0x186a0000000000000000000000000 * varg3) * 0x186a0000000000000000000000000 % uint256.max < v0) + (varg0 * varg6 * varg4 % uint256.max - varg0 * varg6 * varg4 - (varg0 * varg6 * varg4 % uint256.max < varg0 * varg6 * varg4) - (varg0 * varg6 * varg4 < 0x186a0000000000000000000000000 * varg3)) * 0x186a0000000000000000000000000) * varg1, v1 * v2, v1 * v2 % uint256.max - v1 * v2 - (v1 * v2 % uint256.max < v1 * v2) + ((v1 < varg5 * varg1 * varg0) + (varg5 * varg1 * varg0 % uint256.max - varg5 * varg1 * varg0 - (varg5 * varg1 * varg0 % uint256.max < varg5 * varg1 * varg0))) * v2);
    return v3;
}

function 0x2d72(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg2 * varg4 * varg1;
    v1 = 10 ** 10 * varg3 * (varg3 * varg0) % uint256.max - 10 ** 10 * varg3 * (varg3 * varg0) - (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max < 10 ** 10 * varg3 * (varg3 * varg0)) > v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192);
    if (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max - 10 ** 10 * varg3 * (varg3 * varg0) - (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max < 10 ** 10 * varg3 * (varg3 * varg0)) <= v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192)) {
        if (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max - 10 ** 10 * varg3 * (varg3 * varg0) - (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max < 10 ** 10 * varg3 * (varg3 * varg0)) == v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192)) {
            return 10 ** 10 * varg3 * (varg3 * varg0) >= v0 << 192;
        } else {
            return 10 ** 10 * varg3 * (varg3 * varg0) % uint256.max - 10 ** 10 * varg3 * (varg3 * varg0) - (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max < 10 ** 10 * varg3 * (varg3 * varg0)) == v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192);
        }
    } else {
        return v1;
    }
}

function 0x2de7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = (varg2 << 91) * varg5 * varg0;
    v1 = 15625 * varg4 * varg3 + (varg5 << 90) * varg0;
    v2 = varg2 * varg3;
    v3 = 0x2e87((v0 - varg6 * varg1 * 3125 * varg3) * varg4 << 95, (v0 - varg6 * varg1 * 3125 * varg3) * varg4 * 0x800000000000000000000000 % uint256.max - ((v0 - varg6 * varg1 * 3125 * varg3) * varg4 << 95) - ((v0 - varg6 * varg1 * 3125 * varg3) * varg4 * 0x800000000000000000000000 % uint256.max < (v0 - varg6 * varg1 * 3125 * varg3) * varg4 << 95) + ((v0 - varg6 * varg1 * 3125 * varg3) * varg4 % uint256.max - (v0 - varg6 * varg1 * 3125 * varg3) * varg4 - ((v0 - varg6 * varg1 * 3125 * varg3) * varg4 % uint256.max < (v0 - varg6 * varg1 * 3125 * varg3) * varg4) + (0 - ((v0 < varg6 * varg1 * 3125 * varg3) + (varg6 * varg1 * 3125 * varg3 % uint256.max - varg6 * varg1 * 3125 * varg3 - (varg6 * varg1 * 3125 * varg3 % uint256.max < varg6 * varg1 * 3125 * varg3)))) * varg4 << 95), v1 * v2, v1 * v2 % uint256.max - v1 * v2 - (v1 * v2 % uint256.max < v1 * v2) + ((v1 < 15625 * varg4 * varg3) + (15625 * varg4 * varg3 % uint256.max - 15625 * varg4 * varg3 - (15625 * varg4 * varg3 % uint256.max < 15625 * varg4 * varg3))) * v2);
    return v3;
}

function 0x2e87(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = varg3 > varg1;
    if (varg3 <= varg1) {
        v0 = v2 = varg3 == varg1;
        if (v2) {
            v0 = v3 = varg2 > varg0;
        }
    }
    if (v0) {
        return 0;
    } else if (!varg3) {
        v4 = 0x31ac(varg0, varg1, varg2);
        return v4;
    } else {
        v5 = v6 = uint8.max;
        if (varg3 >= uint128.max + 1) {
            v5 = v7 = int8.max;
            varg3 = v8 = varg3 >> 128;
        }
        if (varg3 >= uint64.max + 1) {
            v5 = v9 = 0x12e2(v5);
            varg3 = v10 = varg3 >> 64;
        }
        if (varg3 >= uint32.max + 1) {
            v5 = v11 = 0x130f(v5);
            varg3 = v12 = varg3 >> 32;
        }
        if (varg3 >= uint16.max + 1) {
            v5 = v13 = 0x133c(v5);
            varg3 = v14 = varg3 >> 16;
        }
        if (varg3 >= uint8.max + 1) {
            v5 = v15 = 0x1369(v5);
            varg3 = v16 = varg3 >> 8;
        }
        if (varg3 >= 16) {
            v5 = v17 = 0x1396(v5);
            varg3 = v18 = varg3 >> 4;
        }
        if (varg3 >= 4) {
            v5 = v19 = 0x13c3(v5);
            varg3 = v20 = varg3 >> 2;
        }
        if (2 <= varg3) {
            v5 = v21 = 0x12b5(v5);
        }
        if (!v5) {
            v22 = _SafeDiv(varg1, varg3);
            return v22;
        } else {
            v23 = 0x13f0(v5);
            v24 = varg3 << v5 | varg2 >> v23;
            v25 = 0x13f0(v5);
            v26 = 0x13f0(v5);
            v27 = varg1 << v5 | varg0 >> v26;
            if (varg1 >> v25) {
                v28 = 0x31ac(v27, varg1 >> v25, v24);
                return v28;
            } else {
                v29 = _SafeDiv(v27, v24);
                return v29;
            }
        }
    }
}

function 0x3045(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = v1 = varg3 < 10 ** 9;
    if (v1) {
        v0 = v2 = 10 ** 17 < varg0;
    }
    if (v0) {
        v3 = 0x19d9(varg3);
        v0 = v4 = v3 < varg2;
    }
    if (v0) {
        if (this.balance < varg1) {
            v5 = 0x12b5(varg1);
            0x1e58(varg4, v5);
            return ;
        } else {
            v6 = 0x12b5(this.balance);
            v7, /* uint256 */ v8 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v6).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v9 = v10 = new bytes[](RETURNDATASIZE());
                require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                v8 = v10.data;
                RETURNDATACOPY(v8, 0, RETURNDATASIZE());
            }
            return ;
        }
    } else {
        return ;
    }
}

function 0x3167(uint256 varg0, uint256 varg1) private { 
    v0 = varg1.withdraw(varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x31ac(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0xfdfc9d13(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = 1;
    v0 = 0x1518(varg2);
    if (!v0) {
        v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 32);
            v6 = this.balance;
        } else {
            v6 = v7 = this.balance;
        }
        require(v2 <= v2 + v6, Panic(17)); // arithmetic overflow or underflow
        v8 = 0x1838(varg0);
        v9 = 0x1889(varg0);
        v10, v11 = 0x1762(varg1);
        v12 = v9 * v9 * v11 % uint256.max - v9 * v9 * v11 - (v9 * v9 * v11 % uint256.max < v9 * v9 * v11) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v11;
        v13 = v14 = v12 > v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192);
        if (v12 <= v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192)) {
            v13 = v15 = v12 == v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192);
            if (v15) {
                v13 = v16 = v9 * v9 * v11 > v10 << 192;
            }
        }
        if (0 == v13) {
            0x213f(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v11, v10, v8, v9);
            exit;
        } else {
            0x209f(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v8, v9, v11, v10);
            exit;
        }
    } else {
        exit;
    }
}

function receive() public payable { 
}

function 0xda95afab(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = 1;
    v0 = 0x1518(varg2);
    if (!v0) {
        v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 32);
            v6 = this.balance;
        } else {
            v6 = v7 = this.balance;
        }
        require(v2 <= v2 + v6, Panic(17)); // arithmetic overflow or underflow
        v8, v9 = 0x1762(varg0);
        v10 = 0x1838(varg1);
        v11 = 0x1889(varg1);
        v12 = v13 = v8 * (uint192.max + 1) % uint256.max - (v8 << 192) - (v8 * (uint192.max + 1) % uint256.max < v8 << 192) > v11 * v11 * v9 % uint256.max - v11 * v11 * v9 - (v11 * v11 * v9 % uint256.max < v11 * v11 * v9) + (v11 * v11 % uint256.max - v11 * v11 - (v11 * v11 % uint256.max < v11 * v11)) * v9;
        if (v8 * (uint192.max + 1) % uint256.max - (v8 << 192) - (v8 * (uint192.max + 1) % uint256.max < v8 << 192) <= v11 * v11 * v9 % uint256.max - v11 * v11 * v9 - (v11 * v11 * v9 % uint256.max < v11 * v11 * v9) + (v11 * v11 % uint256.max - v11 * v11 - (v11 * v11 % uint256.max < v11 * v11)) * v9) {
            v12 = v14 = v8 * (uint192.max + 1) % uint256.max - (v8 << 192) - (v8 * (uint192.max + 1) % uint256.max < v8 << 192) == v11 * v11 * v9 % uint256.max - v11 * v11 * v9 - (v11 * v11 * v9 % uint256.max < v11 * v11 * v9) + (v11 * v11 % uint256.max - v11 * v11 - (v11 * v11 % uint256.max < v11 * v11)) * v9;
            if (v14) {
                v12 = v15 = v8 << 192 > v11 * v11 * v9;
            }
        }
        if (0 == v12) {
            0x209f(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v10, v11, v9, v8);
            exit;
        } else {
            0x213f(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v9, v8, v10, v11);
            exit;
        }
    } else {
        exit;
    }
}

function 0xd7c27bb8(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = 1;
    v0 = 0x1518(varg2);
    if (!v0) {
        v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 32);
            v6 = this.balance;
        } else {
            v6 = v7 = this.balance;
        }
        require(v2 <= v2 + v6, Panic(17)); // arithmetic overflow or underflow
        v8 = 0x1838(varg0);
        v9 = 0x1889(varg0);
        v10 = 0x1838(varg1);
        v11 = 0x1889(varg1);
        if (v9 <= v11) {
            0x2004(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v10, v11, v8, v9);
            exit;
        } else {
            0x2004(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v8, v9, v10, v11);
            exit;
        }
    } else {
        exit;
    }
}

function 0xb7bb91ad(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = 1;
    v0 = 0x1518(varg2);
    if (!v0) {
        v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 32);
            v6 = this.balance;
        } else {
            v6 = v7 = this.balance;
        }
        require(v2 <= v2 + v6, Panic(17)); // arithmetic overflow or underflow
        v8, v9 = 0x1762(varg0);
        v10, v11 = 0x1762(varg1);
        if (v11 * v8 >= v10 * v9) {
            0x1f4d(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v11, v10, v9, v8);
            exit;
        } else {
            0x1f4d(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v9, v8, v11, v10);
            exit;
        }
    } else {
        exit;
    }
}

function 0x9cf82838(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = 1;
    v0 = 0x1518(varg2);
    if (!v0) {
        v1, /* uint256 */ v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 32);
            v6 = this.balance;
        } else {
            v6 = v7 = this.balance;
        }
        require(v2 <= v2 + v6, Panic(17)); // arithmetic overflow or underflow
        v8 = 0x1838(varg0);
        v9 = 0x1889(varg0);
        v10 = 0x1838(varg1);
        v11 = 0x1889(varg1);
        if (v9 >= v11) {
            0x1ec0(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v10, v11, v8, v9);
            exit;
        } else {
            0x1ec0(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v8, v9, v10, v11);
            exit;
        }
    } else {
        exit;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x10d1e85c == function_selector >> 224) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x17db53bd == function_selector >> 224) {
            0x17db53bd();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x25edf1c2 == function_selector >> 224) {
            0x25edf1c2();
        } else if (0x2c2f9ced == function_selector >> 224) {
            0x2c2f9ced();
        } else if (0x3a1c453c == function_selector >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x4749db78 == function_selector >> 224) {
            0x4749db78();
        } else if (0x6d8a1861 == function_selector >> 224) {
            0x6d8a1861();
        } else if (0x6f5aeea3 == function_selector >> 224) {
            0x6f5aeea3();
        } else if (0x84800812 == function_selector >> 224) {
            pancakeCall(address,uint256,uint256,bytes);
        } else if (0x9cf82838 == function_selector >> 224) {
            0x9cf82838();
        } else if (0x9f3d4ab8 == function_selector >> 224) {
            0x9f3d4ab8();
        } else if (0xa0bd0131 == function_selector >> 224) {
            0xa0bd0131();
        } else if (0xb7bb91ad == function_selector >> 224) {
            0xb7bb91ad();
        } else if (0xd7c27bb8 == function_selector >> 224) {
            0xd7c27bb8();
        } else if (0xda95afab == function_selector >> 224) {
            0xda95afab();
        } else if (0xfa461e33 == function_selector >> 224) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else if (!(0xfdfc9d13 - (function_selector >> 224))) {
            0xfdfc9d13();
        }
    }
    require(!msg.data.length);
    receive();
}
