// Decompiled by library.dedaub.com
// 2025.12.05 02:47 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 _pancakeCall; // TRANSIENT_STORAGE[0x0]



function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    require(_pancakeCall);
    require(_data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](_data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + _data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + _data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(_data.data + _data.length <= msg.data.length);
    CALLDATACOPY(v0.data, _data.data, _data.length);
    v0[_data.length] = 0;
    v1, v2 = 0x22bc(v0);
    v3, v4 = 0x22f6(v1);
    require(v3 + v3.length - v3 >= 128);
    require(!(MEM[v3 + 128] - bool(MEM[v3 + 128])));
    if (!_amount1) {
        v5 = _SafeDiv(MEM[v3.data] * v2 * 10000, (MEM[v3 + 64] - v2) * (10000 - MEM[v3 + 96]));
        0x1c38(v4, v5 + 1);
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
        0x1c38(v4, v14 + 1);
        v6 = v15 = address(v4);
        require(v15.code.size);
        v8 = v16 = MEM[64];
        MEM[v16] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v16 + 4] = v2;
        v10 = v17 = 0;
        MEM[v16 + 36] = v17;
        MEM[v16 + 68] = msg.sender;
        MEM[v16 + 100] = 128;
        MEM[v16 + 132] = v17;
        v12 = v18 = v16 + 164;
    }
    v19 = v6.call(MEM[vb9f10x102_0x0:vb9f10x102_0x0 + v2ab_0x0 - vb9f10x102_0x0], MEM[vb9f10x102_0x0:vb9f10x102_0x0 + v2ab_0x6]).value(v10).gas(msg.gas);
    require(v19, MEM[64], RETURNDATASIZE());
    if (v19) {
        require(!((v8 > uint64.max) | (v8 < v8)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v8;
        require(v8 - v8 >= 0);
        exit;
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
            v7 = MEM[v10 + 32];
            require(!(v7 - bool(v7)));
        }
    }
    require(v7, Error(21574));
}

function 0x6d8a1861(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    _pancakeCall = 1;
    v0 = 0x136a(varg2);
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
        v8, v9 = 0x155d(varg0);
        v10, v11 = 0x155d(varg1);
        if (v11 * v8 <= v10 * v9) {
            0x1b3d(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v11, v10, v9, v8);
            exit;
        } else {
            0x1b3d(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v9, v8, v11, v10);
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
    _pancakeCall = 1;
    v0 = 0x136a(varg2);
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
        v8 = 0x1633(varg0);
        v9 = 0x1684(varg0);
        v10, v11 = 0x155d(varg1);
        v12 = v9 * v9 * v11 % uint256.max - v9 * v9 * v11 - (v9 * v9 * v11 % uint256.max < v9 * v9 * v11) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v11;
        v13 = v14 = v12 < v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192);
        if (v12 >= v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192)) {
            v13 = v15 = v12 == v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192);
            if (v15) {
                v13 = v16 = v9 * v9 * v11 < v10 << 192;
            }
        }
        if (0 == v13) {
            0x19e4(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v11, v10, v8, v9);
            exit;
        } else {
            0x1883(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v8, v9, v11, v10);
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

function 0x11fa(uint256 varg0) private { 
    require(varg0 <= varg0 + 1000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1000;
}

function 0x17db53bd(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    _pancakeCall = 1;
    v0 = 0x136a(varg2);
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
        v6, v7 = 0x155d(varg0);
        v8 = 0x1633(varg1);
        v9 = 0x1684(varg1);
        v10 = v11 = v6 * (uint192.max + 1) % uint256.max - (v6 << 192) - (v6 * (uint192.max + 1) % uint256.max < v6 << 192) < v9 * v9 * v7 % uint256.max - v9 * v9 * v7 - (v9 * v9 * v7 % uint256.max < v9 * v9 * v7) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v7;
        if (v6 * (uint192.max + 1) % uint256.max - (v6 << 192) - (v6 * (uint192.max + 1) % uint256.max < v6 << 192) >= v9 * v9 * v7 % uint256.max - v9 * v9 * v7 - (v9 * v9 * v7 % uint256.max < v9 * v9 * v7) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v7) {
            v10 = v12 = v6 * (uint192.max + 1) % uint256.max - (v6 << 192) - (v6 * (uint192.max + 1) % uint256.max < v6 << 192) == v9 * v9 * v7 % uint256.max - v9 * v9 * v7 - (v9 * v9 * v7 % uint256.max < v9 * v9 * v7) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v7;
            if (v12) {
                v10 = v13 = v6 << 192 < v9 * v9 * v7;
            }
        }
        if (0 == v10) {
            0x1883(v2 + this.balance, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v8, v9, v7, v6);
            exit;
        } else {
            0x19e4(v2 + this.balance, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v7, v6, v8, v9);
            exit;
        }
    } else {
        exit;
    }
}

function 0x1209(uint256 varg0) private { 
    require(varg0 <= varg0 + 25000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 25000;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x1225(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x136a(uint256 varg0) private { 
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

function 0x155d(address varg0) private { 
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

function 0x1633(uint256 varg0) private { 
    v0, /* uint128 */ v1 = varg0.liquidity().gas(msg.gas);
    require((RETURNDATASIZE() > 15) & v0);
    return uint128(v1);
}

function 0x1684(uint256 varg0) private { 
    v0, /* address */ v1 = varg0.slot0().gas(msg.gas);
    require((RETURNDATASIZE() > 31) & v0);
    return address(v1);
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x1883(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg9, varg10);
    v1 = 0x23d8(v0);
    v2 = (varg5 << 92) * varg7 + 625 * varg9 * varg8;
    v3 = 0x29b5(((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7) * varg8 % uint256.max - ((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7) * varg8 - (((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7) * varg8 % uint256.max < ((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7) * varg8) + (((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7) % uint256.max - ((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7) - (((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7) % uint256.max < ((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7)) + (0 - (((varg6 << 91) * v1 < 3125 * varg8 * varg9) + (3125 * varg8 * varg9 % uint256.max - 3125 * varg8 * varg9 - (3125 * varg8 * varg9 % uint256.max < 3125 * varg8 * varg9)))) * (3125 * varg7)) * varg8, ((varg6 << 91) * v1 - 3125 * varg8 * varg9) * (3125 * varg7) * varg8, v2 * (varg4 << 90) % uint256.max - v2 * (varg4 << 90) - (v2 * (varg4 << 90) % uint256.max < v2 * (varg4 << 90)) + ((v2 < (varg5 << 92) * varg7) + (625 * varg9 * varg8 % uint256.max - 625 * varg9 * varg8 - (625 * varg9 * varg8 % uint256.max < 625 * varg9 * varg8))) * (varg4 << 90), v2 * (varg4 << 90));
    v4 = 0x2554(varg2, varg9, varg10, 10000 - varg5);
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
            v16 = _SafeAdd(v12, this.balance);
            v17 = _SafeSub(v16, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v18 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v19 = 0x11fa(v18);
                v20 = _SafeMul(0x3ffffffffffff & varg3, v19);
                require(v20 < v17, Error(52));
                v21 = 0x11fa(msg.gas);
                require(v21 >= msg.gas, Error(13665));
            } else {
                v22 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v23 = 0x1209(v22);
                v24 = _SafeMul(0x3ffffffffffff & varg3, v23);
                require(v24 < v17, Error(52));
                v25 = _SafeSub(v17, v24);
                require(0x3ff & varg3 >> 50 <= 1000);
                v26 = _SafeMul(v25, 0x3ff & varg3 >> 50);
                v27 = _SafeSub(v25, v26 / 1000);
                if (this.balance <= v26 / 1000) {
                    v28 = 0x1225(v12);
                    0x29fb(v28, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v26 / 1000) {
                    v29 = block.coinbase.call().value(v26 / 1000).gas(10000);
                }
                v30 = 0x1209(msg.gas);
                require(v30 >= msg.gas, Error(13666));
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x19b8(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x19e4(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x23d8(v0);
    v2 = varg4 * varg5 * varg10;
    v3 = (v2 * varg7 - varg6 * v1 * 0x186a0000000000000000000000000) * varg10 * varg9;
    v4 = 0xf4240000000000000000000000000 * varg9 + varg10 * (varg5 * varg7);
    v5 = 0x29b5((v2 * varg7 - varg6 * v1 * 0x186a0000000000000000000000000) * varg10 * varg9 % uint256.max - v3 - ((v2 * varg7 - varg6 * v1 * 0x186a0000000000000000000000000) * varg10 * varg9 % uint256.max < v3) + ((v2 * varg7 - varg6 * v1 * 0x186a0000000000000000000000000) * varg10 % uint256.max - (v2 * varg7 - varg6 * v1 * 0x186a0000000000000000000000000) * varg10 - ((v2 * varg7 - varg6 * v1 * 0x186a0000000000000000000000000) * varg10 % uint256.max < (v2 * varg7 - varg6 * v1 * 0x186a0000000000000000000000000) * varg10) + (v2 * varg7 % uint256.max - v2 * varg7 - (v2 * varg7 % uint256.max < v2 * varg7) - (v2 * varg7 < varg6 * v1 * 0x186a0000000000000000000000000)) * varg10) * varg9, v3, v4 * (varg4 << 96) % uint256.max - v4 * (varg4 << 96) - (v4 * (varg4 << 96) % uint256.max < v4 * (varg4 << 96)) + ((v4 < 0xf4240000000000000000000000000 * varg9) + (varg10 * (varg5 * varg7) % uint256.max - varg10 * (varg5 * varg7) - (varg10 * (varg5 * varg7) % uint256.max < varg10 * (varg5 * varg7)))) * (varg4 << 96), v4 * (varg4 << 96));
    v6 = 0x19b8(v5);
    v7 = 0x25ec(varg1, varg7, varg8, 10000 - varg4);
    v8 = new bytes[](v7.word0);
    MCOPY(v8.data, v7.data, v7.word0);
    v8[v7.word0] = 0;
    v9, /* uint256 */ v10, /* uint256 */ v11 = varg2.swap(address(this), 1, v6, address(0x1000276a4), v8).gas(msg.gas);
    if (v9) {
        if (v9) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v12 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v12 = v13 = MEM[64] + 64;
            }
            require(v12 - MEM[64] >= 64);
        }
        v14, /* uint256 */ v15 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v14) {
            v15 = v16 = 0;
            if (v14) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v17 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v17 = v18 = MEM[64] + 32;
                }
                require(v17 - MEM[64] >= 32);
            }
            v19 = _SafeAdd(v15, this.balance);
            v20 = _SafeSub(v19, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v21 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v22 = 0x11fa(v21);
                v23 = _SafeMul(0x3ffffffffffff & varg3, v22);
                require(v23 < v20, Error(52));
                v24 = 0x11fa(msg.gas);
                require(v24 >= msg.gas, Error(13665));
            } else {
                v25 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v26 = 0x1209(v25);
                v27 = _SafeMul(0x3ffffffffffff & varg3, v26);
                require(v27 < v20, Error(52));
                v28 = _SafeSub(v20, v27);
                require(0x3ff & varg3 >> 50 <= 1000);
                v29 = _SafeMul(v28, 0x3ff & varg3 >> 50);
                v30 = _SafeSub(v28, v29 / 1000);
                if (this.balance <= v29 / 1000) {
                    v31 = 0x1225(v15);
                    0x29fb(v31, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v29 / 1000) {
                    v32 = block.coinbase.call().value(v29 / 1000).gas(10000);
                }
                v33 = 0x1209(msg.gas);
                require(v33 >= msg.gas, Error(13666));
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x1b3d(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x23d8(v0);
    v2 = _SafeMul(varg9, varg10);
    v3 = 0x23d8(v2);
    v4 = _SafeDiv(varg4 * varg5 * varg9 * varg8 - v1 * v3 * varg6 * 10000, varg4 * (varg5 * varg8 + 10000 * varg10));
    v5 = _SafeDiv(varg10 * v4 * 10000, (varg9 - v4) * (10000 - (10000 - varg5)));
    v6 = 0x2910(varg1, varg7, varg8, 10000 - varg4, v5 + 1);
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
            v14 = _SafeAdd(v10, this.balance);
            v15 = _SafeSub(v14, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v16 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v17 = 0x11fa(v16);
                v18 = _SafeMul(0x3ffffffffffff & varg3, v17);
                require(v18 < v15, Error(52));
                v19 = 0x11fa(msg.gas);
                require(v19 >= msg.gas, Error(13665));
            } else {
                v20 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v21 = 0x1209(v20);
                v22 = _SafeMul(0x3ffffffffffff & varg3, v21);
                require(v22 < v15, Error(52));
                v23 = _SafeSub(v15, v22);
                require(0x3ff & varg3 >> 50 <= 1000);
                v24 = _SafeMul(v23, 0x3ff & varg3 >> 50);
                v25 = _SafeSub(v23, v24 / 1000);
                if (this.balance <= v24 / 1000) {
                    v26 = 0x1225(v10);
                    0x29fb(v26, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v24 / 1000) {
                    v27 = block.coinbase.call().value(v24 / 1000).gas(10000);
                }
                v28 = 0x1209(msg.gas);
                require(v28 >= msg.gas, Error(13666));
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x1c38(address varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg0;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, varg1).gas(msg.gas);
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
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = MEM[v5 + 32];
            require(!(v2 - bool(v2)));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x1dc8(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = varg4 * varg5 * varg10;
    v1 = (v0 - varg6 * varg8 * 10 ** 6) * varg9 * varg10;
    v2 = 10 ** 6 * varg9 * varg8 + varg5 * varg7 * varg10;
    v3 = 0x29b5(v1 * varg7 % uint256.max - v1 * varg7 - (v1 * varg7 % uint256.max < v1 * varg7) + ((v0 - varg6 * varg8 * 10 ** 6) * varg9 * varg10 % uint256.max - v1 - ((v0 - varg6 * varg8 * 10 ** 6) * varg9 * varg10 % uint256.max < v1) + ((v0 - varg6 * varg8 * 10 ** 6) * varg9 % uint256.max - (v0 - varg6 * varg8 * 10 ** 6) * varg9 - ((v0 - varg6 * varg8 * 10 ** 6) * varg9 % uint256.max < (v0 - varg6 * varg8 * 10 ** 6) * varg9) + (0 - (v0 < varg6 * varg8 * 10 ** 6)) * varg9) * varg10) * varg7, v1 * varg7, v2 * (varg4 << 96) % uint256.max - v2 * (varg4 << 96) - (v2 * (varg4 << 96) % uint256.max < v2 * (varg4 << 96)) + (10 ** 6 * varg9 * varg8 % uint256.max - 10 ** 6 * varg9 * varg8 - (10 ** 6 * varg9 * varg8 % uint256.max < 10 ** 6 * varg9 * varg8) + (varg5 * varg7 * varg10 % uint256.max - varg5 * varg7 * varg10 - (varg5 * varg7 * varg10 % uint256.max < varg5 * varg7 * varg10)) + (v2 < 10 ** 6 * varg9 * varg8)) * (varg4 << 96), v2 * (varg4 << 96));
    v4 = 0x19b8(v3);
    v5 = 0x297b(varg1);
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
            v17 = _SafeAdd(v13, this.balance);
            v18 = _SafeSub(v17, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v19 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v20 = 0x11fa(v19);
                v21 = _SafeMul(0x3ffffffffffff & varg3, v20);
                require(v21 < v18, Error(52));
                v22 = 0x11fa(msg.gas);
                require(v22 >= msg.gas, Error(13665));
            } else {
                v23 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v24 = 0x1209(v23);
                v25 = _SafeMul(0x3ffffffffffff & varg3, v24);
                require(v25 < v18, Error(52));
                v26 = _SafeSub(v18, v25);
                require(0x3ff & varg3 >> 50 <= 1000);
                v27 = _SafeMul(v26, 0x3ff & varg3 >> 50);
                v28 = _SafeSub(v26, v27 / 1000);
                if (this.balance <= v27 / 1000) {
                    v29 = 0x1225(v13);
                    0x29fb(v29, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v27 / 1000) {
                    v30 = block.coinbase.call().value(v27 / 1000).gas(10000);
                }
                v31 = 0x1209(msg.gas);
                require(v31 >= msg.gas, Error(13666));
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x1e99(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x23d8(v0);
    v2 = _SafeMul(varg9, varg10);
    v3 = 0x23d8(v2);
    v4 = varg4 * varg5 * varg7;
    v5 = _SafeDiv(v4 * varg10 - v1 * v3 * varg6 * 10000, v4 + varg4 * varg9 * 10000);
    v6 = _SafeDiv(varg9 * v5 * 10000, (varg10 - v5) * (10000 - (10000 - varg5)));
    v7 = 0x2910(varg1, varg7, varg8, 10000 - varg4, v6 + 1);
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
            v15 = _SafeAdd(v11, this.balance);
            v16 = _SafeSub(v15, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v17 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v18 = 0x11fa(v17);
                v19 = _SafeMul(0x3ffffffffffff & varg3, v18);
                require(v19 < v16, Error(52));
                v20 = 0x11fa(msg.gas);
                require(v20 >= msg.gas, Error(13665));
            } else {
                v21 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v22 = 0x1209(v21);
                v23 = _SafeMul(0x3ffffffffffff & varg3, v22);
                require(v23 < v16, Error(52));
                v24 = _SafeSub(v16, v23);
                require(0x3ff & varg3 >> 50 <= 1000);
                v25 = _SafeMul(v24, 0x3ff & varg3 >> 50);
                v26 = _SafeSub(v24, v25 / 1000);
                if (this.balance <= v25 / 1000) {
                    v27 = 0x1225(v11);
                    0x29fb(v27, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v25 / 1000) {
                    v28 = block.coinbase.call().value(v25 / 1000).gas(10000);
                }
                v29 = 0x1209(msg.gas);
                require(v29 >= msg.gas, Error(13666));
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x1f3f(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = varg4 * varg5 * varg8;
    v1 = v0 - varg6 * varg10 * 10 ** 6 << 96;
    v2 = v1 * varg7 * varg9;
    v3 = varg7 * varg5 * varg8 + 10 ** 6 * varg9 * varg10;
    v4 = 0x29b5(v1 * varg7 * varg9 % uint256.max - v2 - (v1 * varg7 * varg9 % uint256.max < v2) + (v1 * varg7 % uint256.max - v1 * varg7 - (v1 * varg7 % uint256.max < v1 * varg7) + ((v0 - varg6 * varg10 * 10 ** 6) * (uint96.max + 1) % uint256.max - v1 - ((v0 - varg6 * varg10 * 10 ** 6) * (uint96.max + 1) % uint256.max < v1) + (0 - (v0 < varg6 * varg10 * 10 ** 6) << 96)) * varg7) * varg9, v2, v3 * varg4 * varg10 % uint256.max - v3 * varg4 * varg10 - (v3 * varg4 * varg10 % uint256.max < v3 * varg4 * varg10) + (v3 * varg4 % uint256.max - v3 * varg4 - (v3 * varg4 % uint256.max < v3 * varg4) + (varg7 * varg5 * varg8 % uint256.max - varg7 * varg5 * varg8 - (varg7 * varg5 * varg8 % uint256.max < varg7 * varg5 * varg8) + (10 ** 6 * varg9 * varg10 % uint256.max - 10 ** 6 * varg9 * varg10 - (10 ** 6 * varg9 * varg10 % uint256.max < 10 ** 6 * varg9 * varg10)) + (v3 < varg7 * varg5 * varg8)) * varg4) * varg10, v3 * varg4 * varg10);
    v5 = 0x19b8(v4);
    v6 = 0x297b(varg1);
    v7 = new bytes[](v6.word0);
    MCOPY(v7.data, v6.data, v6.word0);
    v7[v6.word0] = 0;
    v8, /* uint256 */ v9, /* uint256 */ v10 = varg2.swap(address(this), 0, v5, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v7).gas(msg.gas);
    if (v8) {
        if (v8) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v11 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v11 = v12 = MEM[64] + 64;
            }
            require(v11 - MEM[64] >= 64);
        }
        v13, /* uint256 */ v14 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v13) {
            v14 = v15 = 0;
            if (v13) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v16 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v16 = v17 = MEM[64] + 32;
                }
                require(v16 - MEM[64] >= 32);
            }
            v18 = _SafeAdd(v14, this.balance);
            v19 = _SafeSub(v18, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v20 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v21 = 0x11fa(v20);
                v22 = _SafeMul(0x3ffffffffffff & varg3, v21);
                require(v22 < v19, Error(52));
                v23 = 0x11fa(msg.gas);
                require(v23 >= msg.gas, Error(13665));
            } else {
                v24 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v25 = 0x1209(v24);
                v26 = _SafeMul(0x3ffffffffffff & varg3, v25);
                require(v26 < v19, Error(52));
                v27 = _SafeSub(v19, v26);
                require(0x3ff & varg3 >> 50 <= 1000);
                v28 = _SafeMul(v27, 0x3ff & varg3 >> 50);
                v29 = _SafeSub(v27, v28 / 1000);
                if (this.balance <= v28 / 1000) {
                    v30 = 0x1225(v14);
                    0x29fb(v30, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v28 / 1000) {
                    v31 = block.coinbase.call().value(v28 / 1000).gas(10000);
                }
                v32 = 0x1209(msg.gas);
                require(v32 >= msg.gas, Error(13666));
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x205d(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg9, varg10);
    v1 = 0x23d8(v0);
    v2 = (varg8 * varg6 * v1 - 0x186a0000000000000000000000000 * varg10) * 0x186a0000000000000000000000000;
    v3 = varg5 * varg7 * varg8 + 0x2710000000000000000000000000 * varg10;
    v4 = varg4 * varg8;
    v5 = 0x29b5(v2 * varg7 % uint256.max - v2 * varg7 - (v2 * varg7 % uint256.max < v2 * varg7) + ((varg8 * varg6 * v1 - 0x186a0000000000000000000000000 * varg10) * 0x186a0000000000000000000000000 % uint256.max - v2 - ((varg8 * varg6 * v1 - 0x186a0000000000000000000000000 * varg10) * 0x186a0000000000000000000000000 % uint256.max < v2) + (varg8 * varg6 * v1 % uint256.max - varg8 * varg6 * v1 - (varg8 * varg6 * v1 % uint256.max < varg8 * varg6 * v1) - (varg8 * varg6 * v1 < 0x186a0000000000000000000000000 * varg10)) * 0x186a0000000000000000000000000) * varg7, v2 * varg7, v3 * v4 % uint256.max - v3 * v4 - (v3 * v4 % uint256.max < v3 * v4) + ((v3 < varg5 * varg7 * varg8) + (varg5 * varg7 * varg8 % uint256.max - varg5 * varg7 * varg8 - (varg5 * varg7 * varg8 % uint256.max < varg5 * varg7 * varg8))) * v4, v3 * v4);
    v6 = 0x2554(varg2, varg9, varg10, 10000 - varg5);
    v7 = new bytes[](v6.word0);
    MCOPY(v7.data, v6.data, v6.word0);
    v7[v6.word0] = 0;
    v8, /* uint256 */ v9, /* uint256 */ v10 = varg1.swap(address(varg2), 1, v5, address(0x1000276a4), v7).gas(msg.gas);
    if (v8) {
        if (v8) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v11 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v11 = v12 = MEM[64] + 64;
            }
            require(v11 - MEM[64] >= 64);
        }
        v13, /* uint256 */ v14 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v13) {
            v14 = v15 = 0;
            if (v13) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v16 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v16 = v17 = MEM[64] + 32;
                }
                require(v16 - MEM[64] >= 32);
            }
            v18 = _SafeAdd(v14, this.balance);
            v19 = _SafeSub(v18, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v20 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v21 = 0x11fa(v20);
                v22 = _SafeMul(0x3ffffffffffff & varg3, v21);
                require(v22 < v19, Error(52));
                v23 = 0x11fa(msg.gas);
                require(v23 >= msg.gas, Error(13665));
            } else {
                v24 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v25 = 0x1209(v24);
                v26 = _SafeMul(0x3ffffffffffff & varg3, v25);
                require(v26 < v19, Error(52));
                v27 = _SafeSub(v19, v26);
                require(0x3ff & varg3 >> 50 <= 1000);
                v28 = _SafeMul(v27, 0x3ff & varg3 >> 50);
                v29 = _SafeSub(v27, v28 / 1000);
                if (this.balance <= v28 / 1000) {
                    v30 = 0x1225(v14);
                    0x29fb(v30, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v28 / 1000) {
                    v31 = block.coinbase.call().value(v28 / 1000).gas(10000);
                }
                v32 = 0x1209(msg.gas);
                require(v32 >= msg.gas, Error(13666));
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x217a(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x23d8(v0);
    v2 = (varg4 << 91) * varg5 * varg8;
    v3 = 15625 * varg9 * varg10 + (varg5 << 90) * varg8;
    v4 = varg4 * varg10;
    v5 = 0x29b5((v2 - varg6 * v1 * 3125 * varg10) * varg9 * 0x800000000000000000000000 % uint256.max - ((v2 - varg6 * v1 * 3125 * varg10) * varg9 << 95) - ((v2 - varg6 * v1 * 3125 * varg10) * varg9 * 0x800000000000000000000000 % uint256.max < (v2 - varg6 * v1 * 3125 * varg10) * varg9 << 95) + ((v2 - varg6 * v1 * 3125 * varg10) * varg9 % uint256.max - (v2 - varg6 * v1 * 3125 * varg10) * varg9 - ((v2 - varg6 * v1 * 3125 * varg10) * varg9 % uint256.max < (v2 - varg6 * v1 * 3125 * varg10) * varg9) + (0 - ((v2 < varg6 * v1 * 3125 * varg10) + (varg6 * v1 * 3125 * varg10 % uint256.max - varg6 * v1 * 3125 * varg10 - (varg6 * v1 * 3125 * varg10 % uint256.max < varg6 * v1 * 3125 * varg10)))) * varg9 << 95), (v2 - varg6 * v1 * 3125 * varg10) * varg9 << 95, v3 * v4 % uint256.max - v3 * v4 - (v3 * v4 % uint256.max < v3 * v4) + ((v3 < 15625 * varg9 * varg10) + (15625 * varg9 * varg10 % uint256.max - 15625 * varg9 * varg10 - (15625 * varg9 * varg10 % uint256.max < 15625 * varg9 * varg10))) * v4, v3 * v4);
    v6 = 0x19b8(v5);
    v7 = 0x25ec(varg1, varg7, varg8, 10000 - varg4);
    v8 = new bytes[](v7.word0);
    MCOPY(v8.data, v7.data, v7.word0);
    v8[v7.word0] = 0;
    v9, /* uint256 */ v10, /* uint256 */ v11 = varg2.swap(address(this), 0, v6, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v8).gas(msg.gas);
    if (v9) {
        if (v9) {
            if (64 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v12 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
                v12 = v13 = MEM[64] + 64;
            }
            require(v12 - MEM[64] >= 64);
        }
        v14, /* uint256 */ v15 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v14) {
            v15 = v16 = 0;
            if (v14) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v17 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v17 = v18 = MEM[64] + 32;
                }
                require(v17 - MEM[64] >= 32);
            }
            v19 = _SafeAdd(v15, this.balance);
            v20 = _SafeSub(v19, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v21 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v22 = 0x11fa(v21);
                v23 = _SafeMul(0x3ffffffffffff & varg3, v22);
                require(v23 < v20, Error(52));
                v24 = 0x11fa(msg.gas);
                require(v24 >= msg.gas, Error(13665));
            } else {
                v25 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v26 = 0x1209(v25);
                v27 = _SafeMul(0x3ffffffffffff & varg3, v26);
                require(v27 < v20, Error(52));
                v28 = _SafeSub(v20, v27);
                require(0x3ff & varg3 >> 50 <= 1000);
                v29 = _SafeMul(v28, 0x3ff & varg3 >> 50);
                v30 = _SafeSub(v28, v29 / 1000);
                if (this.balance <= v29 / 1000) {
                    v31 = 0x1225(v15);
                    0x29fb(v31, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v29 / 1000) {
                    v32 = block.coinbase.call().value(v29 / 1000).gas(10000);
                }
                v33 = 0x1209(msg.gas);
                require(v33 >= msg.gas, Error(13666));
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x2276(uint256 varg0, uint256 varg1) private { 
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

function 0x22bc(bytes varg0) private { 
    require(varg0 + varg0.length - varg0 >= 64);
    require(MEM[varg0 + 64] <= uint64.max);
    v0 = 0x2276(varg0 + MEM[varg0 + 64] + 32, varg0 + varg0.length + 32);
    return v0, MEM[varg0.data];
}

function 0x22f6(bytes varg0) private { 
    require(varg0 + varg0.length - varg0 >= 64);
    require(!(address(MEM[varg0.data]) - MEM[varg0.data]));
    require(MEM[varg0 + 64] <= uint64.max);
    v0 = 0x2276(varg0 + MEM[varg0 + 64] + 32, varg0 + varg0.length + 32);
    return v0, address(MEM[varg0.data]);
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x23d8(uint256 varg0) private { 
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

function 0x2554(address varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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

function 0x25ec(address varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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

function 0x2910(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
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

function 0x297b(address varg0) private { 
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = varg0;
    v0.word2 = 64;
    v0.word3 = 0;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x29b5(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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
        v4 = 0x2a40(varg1, varg0, varg3);
        return v4;
    } else {
        v5 = _SafeDiv(varg0, varg2);
        return v5;
    }
}

function 0x29fb(uint256 varg0, uint256 varg1) private { 
    v0 = varg1.withdraw(varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x2a40(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0xbc74(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = address(v1);
    MEM[v0 + 68] = varg0;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v0.length;
    v3 = v4, /* uint256 */ v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(v1), varg0).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v6 = v7 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = v8 = new bytes[](RETURNDATASIZE());
        require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
        v5 = v8.data;
        RETURNDATACOPY(v5, 0, RETURNDATASIZE());
    }
    if (v4) {
        v3 = v9 = !MEM[v6];
        if (bool(MEM[v6])) {
            require(v6 + MEM[v6] - v6 >= 32);
            v3 = MEM[v6 + 32];
            require(!(v3 - bool(v3)));
        }
    }
    require(v3, Error(21574));
    return v1;
}

function 0xfdfc9d13(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    _pancakeCall = 1;
    v0 = 0x136a(varg2);
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
        v8 = 0x1633(varg0);
        v9 = 0x1684(varg0);
        v10, v11 = 0x155d(varg1);
        v12 = v9 * v9 * v11 % uint256.max - v9 * v9 * v11 - (v9 * v9 * v11 % uint256.max < v9 * v9 * v11) + (v9 * v9 % uint256.max - v9 * v9 - (v9 * v9 % uint256.max < v9 * v9)) * v11;
        v13 = v14 = v12 > v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192);
        if (v12 <= v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192)) {
            v13 = v15 = v12 == v10 * (uint192.max + 1) % uint256.max - (v10 << 192) - (v10 * (uint192.max + 1) % uint256.max < v10 << 192);
            if (v15) {
                v13 = v16 = v9 * v9 * v11 > v10 << 192;
            }
        }
        if (0 == v13) {
            0x217a(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v11, v10, v8, v9);
            exit;
        } else {
            0x205d(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v8, v9, v11, v10);
            exit;
        }
    } else {
        exit;
    }
}

function receive() public payable { 
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_pancakeCall);
    if (data.length) {
        require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v0 = new bytes[](data.length);
        require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        require(data.data + data.length <= msg.data.length);
        CALLDATACOPY(v0.data, data.data, data.length);
        v0[data.length] = 0;
        v1, v2 = v3 = 0x22f6(v0);
        if (v1.length) {
            require(v1 + v1.length - v1 >= 128);
            require(!(MEM[v1 + 128] - bool(MEM[v1 + 128])));
            v4 = v5 = 0;
            if (!MEM[v1 + 128]) {
                if (0 == amount1Delta > 0) {
                    v6 = _SafeDiv(MEM[v1 + 64] * amount0Delta * 10000, (MEM[v1.data] - amount0Delta) * (10000 - MEM[v1 + 96]));
                    v2 = v7 = 0xbc74(v6 + 1, 2039);
                } else {
                    v4 = v8 = 0;
                    v9 = _SafeDiv(MEM[v1.data] * amount1Delta * 10000, (MEM[v1 + 64] - amount1Delta) * (10000 - MEM[v1 + 96]));
                    0x1c38(v3, v9 + 1);
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
                    v11 = 0x19b8(amount1Delta);
                    v12 = _SafeDiv((10000 - MEM[v1 + 96]) * v11 * MEM[v1.data], MEM[v1 + 64] * 10000 + (10000 - MEM[v1 + 96]) * v11);
                    v13 = v14 = 0;
                } else {
                    v12 = v15 = 0;
                    v16 = 0x19b8(amount0Delta);
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
                    v18 = new bytes[](68);
                    MEM[v18.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v18 + 36] = msg.sender;
                    MEM[v18 + 68] = v4;
                    require(!((v18 + 128 > uint64.max) | (v18 + 128 < v18)), Panic(65)); // failed memory allocation (too much memory)
                    v19 = v18.length;
                    v20 = v21, /* uint256 */ v22 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v4).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v23 = v24 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v23 = v25 = new bytes[](RETURNDATASIZE());
                        require(!((v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v25)), Panic(65)); // failed memory allocation (too much memory)
                        v22 = v25.data;
                        RETURNDATACOPY(v22, 0, RETURNDATASIZE());
                    }
                    if (v21) {
                        v20 = v26 = !MEM[v23];
                        if (bool(MEM[v23])) {
                            require(v23 + MEM[v23] - v23 >= 32);
                            v20 = MEM[v23 + 32];
                            require(!(v20 - bool(v20)));
                        }
                    }
                    require(v20, Error(21574));
                    exit;
                }
            }
        } else {
            v27 = v28 = 0x19b8(amount1Delta);
            v29 = v30 = 1;
            v31 = v32 = 0x1000276a4;
            if (amount0Delta > 0) {
                v27 = v33 = 0x19b8(amount0Delta);
                v31 = v34 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                v29 = v35 = 0;
            }
            v36 = new uint256[](0);
            v37, /* uint256 */ v38, /* uint256 */ v39 = address(v3).swap(msg.sender, bool(v29), v27, address(v31), v36).gas(msg.gas);
            if (v37) {
                if (v37) {
                    v40 = v41 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v40 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v40 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v40 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v40 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v40 - MEM[64] >= 64);
                    exit;
                } else {
                    exit;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    } else if (amount0Delta <= 0) {
        0x1c38(msg.sender, amount1Delta);
        exit;
    } else {
        0x1c38(msg.sender, amount0Delta);
        exit;
    }
}

function 0xda95afab(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    _pancakeCall = 1;
    v0 = 0x136a(varg2);
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
        v8, v9 = 0x155d(varg0);
        v10 = 0x1633(varg1);
        v11 = 0x1684(varg1);
        v12 = v13 = v8 * (uint192.max + 1) % uint256.max - (v8 << 192) - (v8 * (uint192.max + 1) % uint256.max < v8 << 192) > v11 * v11 * v9 % uint256.max - v11 * v11 * v9 - (v11 * v11 * v9 % uint256.max < v11 * v11 * v9) + (v11 * v11 % uint256.max - v11 * v11 - (v11 * v11 % uint256.max < v11 * v11)) * v9;
        if (v8 * (uint192.max + 1) % uint256.max - (v8 << 192) - (v8 * (uint192.max + 1) % uint256.max < v8 << 192) <= v11 * v11 * v9 % uint256.max - v11 * v11 * v9 - (v11 * v11 * v9 % uint256.max < v11 * v11 * v9) + (v11 * v11 % uint256.max - v11 * v11 - (v11 * v11 % uint256.max < v11 * v11)) * v9) {
            v12 = v14 = v8 * (uint192.max + 1) % uint256.max - (v8 << 192) - (v8 * (uint192.max + 1) % uint256.max < v8 << 192) == v11 * v11 * v9 % uint256.max - v11 * v11 * v9 - (v11 * v11 * v9 % uint256.max < v11 * v11 * v9) + (v11 * v11 % uint256.max - v11 * v11 - (v11 * v11 % uint256.max < v11 * v11)) * v9;
            if (v14) {
                v12 = v15 = v8 << 192 > v11 * v11 * v9;
            }
        }
        if (0 == v12) {
            0x205d(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v10, v11, v9, v8);
            exit;
        } else {
            0x217a(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v9, v8, v10, v11);
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
    _pancakeCall = 1;
    v0 = 0x136a(varg2);
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
        v8 = 0x1633(varg0);
        v9 = 0x1684(varg0);
        v10 = 0x1633(varg1);
        v11 = 0x1684(varg1);
        if (v9 <= v11) {
            0x1f3f(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v10, v11, v8, v9);
            exit;
        } else {
            0x1f3f(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v8, v9, v10, v11);
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
    _pancakeCall = 1;
    v0 = 0x136a(varg2);
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
        v8, v9 = 0x155d(varg0);
        v10, v11 = 0x155d(varg1);
        if (v11 * v8 >= v10 * v9) {
            0x1e99(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v11, v10, v9, v8);
            exit;
        } else {
            0x1e99(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v9, v8, v11, v10);
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
    _pancakeCall = 1;
    v0 = 0x136a(varg2);
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
        v8 = 0x1633(varg0);
        v9 = 0x1684(varg0);
        v10 = 0x1633(varg1);
        v11 = 0x1684(varg1);
        if (v9 >= v11) {
            0x1dc8(v2 + v6, varg1, varg0, varg2, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 128, v10, v11, v8, v9);
            exit;
        } else {
            0x1dc8(v2 + v6, varg0, varg1, varg2, 0xfffff & varg2 >> 88, 0xfffff & varg2 >> 108, 0xfffff & varg2 >> 128, v8, v9, v10, v11);
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
                        } else if (0x6d8a1861 == function_selector >> 224) {
                            0x6d8a1861();
                        } else if (0x6f5aeea3 == function_selector >> 224) {
                            0x6f5aeea3();
                        } else if (0x84800812 != function_selector >> 224) {
                            if (0x9cf82838 == function_selector >> 224) {
                                0x9cf82838();
                            } else if (0x9f3d4ab8 != function_selector >> 224) {
                                if (0xa0bd0131 != function_selector >> 224) {
                                    if (0xb7bb91ad == function_selector >> 224) {
                                        0xb7bb91ad();
                                    } else if (0xd7c27bb8 == function_selector >> 224) {
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
    receive();
}
