// Decompiled by library.dedaub.com
// 2025.12.10 03:04 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _owners; // STORAGE[0x0]



function 0x13c0(uint256 varg0) private { 
    require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    v0 = v1 = 0;
    while (uint8(v0) < varg0.length) {
        require(uint8(v0) < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        _owners[address(varg0[uint8(v0)])] = 1;
        require(uint8(v0) - uint8.max, Panic(17)); // arithmetic overflow or underflow
        v0 = uint8(v0) + 1;
    }
    return ;
}

function initialize008joDSK(string varg0, string varg1, uint256 varg2, bytes32 varg3, bytes32 varg4) public payable { 
    require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    0x1a17(varg2 >> 160, varg0 >> 96, varg1 >> 96);
    if (!(byte(varg4, 0x0))) {
        v0 = new uint256[](0);
        require(bool((address(varg0 >> 96)).code.size));
        v1 = address(varg0 >> 96).swap(varg3 >> 160, 0, address(0xa8a7d1479661a2400b876561e20c632c50d825fe), v0).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v2 = new uint256[](0);
        require(bool((address(varg0 >> 96)).code.size));
        v3 = address(varg0 >> 96).swap(0, varg3 >> 160, address(0xa8a7d1479661a2400b876561e20c632c50d825fe), v2).gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function callWithPlaceholders4845164670(address target, uint256 value, bytes32 context, bytes callData, (address,bytes,uint64,uint64,uint64) placeholders) public payable { 
    require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    if (byte(placeholders, 0x0)) {
        v0 = v1 = 0;
    } else {
        v0 = v2 = 1;
    }
    if (byte(placeholders, 0x0)) {
        v3 = v4 = 1;
    } else {
        v3 = v5 = 0;
    }
    v6, /* uint256 */ v7 = address(target >> 96).setMetaGold(uint8(v0), uint8(v3), context >> 160, callData >> 160).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1a17(v7, 0xa8a7d1479661a2400b876561e20c632c50d825fe, value >> 96);
}

function 0x00000003(uint256 varg0) public payable { 
    require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    v0 = v1 = 0;
    v2 = v3 = 0;
    v4 = v5 = 0;
    while (v4 < (byte(varg0, 0x0))) {
        if (v0) {
            break;
        } else {
            if ((msg.data[5 + v4 * 34] >> 96) - block.coinbase) {
                break;
            } else {
                if (msg.data[25 + v4 * 34] >> 144 >= (msg.data[5 + v4 * 34] >> 96).balance) {
                    break;
                } else {
                    v2 = v6 = 1;
                }
                v0 = v7 = 1;
            }
            v4 = v4 + 1;
        }
    }
    require(v0, Error(0xd0bdd0b520d181d182d180d0bed0b8d182d0b5d0bbd18c));
    v8, /* uint256 */ v9 = address(block.coinbase).call().value(msg.value).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v10 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
    }
    require(v8);
    if (v2) {
        v11 = _SafeMul(uint8(byte(varg0, 0x0)), 34);
        v12 = _SafeAdd(5, v11);
        v13 = v14 = uint8(byte(msg.data[v12], 0x0));
        require(v14 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v15 = new uint256[](v14);
        if (v14) {
            v16 = v15.data;
            do {
                v17 = new struct(5);
                v17.word0 = address(0x0);
                v17.word1 = uint8(0);
                v17.word2 = address(0x0);
                v17.word3 = 0;
                v17.word4 = 0;
                MEM[v16] = v17;
                v16 += 32;
                v13 = v13 - 1;
            } while (v13);
        }
        v18 = _SafeAdd(v12, 1);
        v19 = v20 = 0;
        while (uint8(v19) < uint8(byte(msg.data[v12], 0x0))) {
            v18 = v18 + 20 + 1 + 1 + 14 + 14;
            v21 = v22 = 0;
            if (uint8(byte(msg.data[v18 + 20 + 1], 0x0)) - 0) {
                if (uint8(byte(msg.data[v18 + 20 + 1], 0x0)) - 1) {
                    if (uint8(byte(msg.data[v18 + 20 + 1], 0x0)) - 2) {
                        break;
                    } else {
                        v21 = v23 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                    }
                } else {
                    v21 = v24 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                }
            } else {
                v21 = v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v26 = new struct(5);
            v26.word0 = address(msg.data[v18] >> 96);
            v26.word1 = uint8(byte(msg.data[v18 + 20], 0x0));
            v26.word2 = address(v21);
            v26.word3 = msg.data[v18 + 20 + 1 + 1] >> 144;
            v26.word4 = msg.data[v18 + 20 + 1 + 1 + 14] >> 144;
            require(uint8(v19) < v15.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v15[uint8(v19)] = v26;
            v19 += 1;
        }
        v27 = v28 = 0;
        v29 = v30 = 0;
        while (uint8(v29) < uint8(byte(msg.data[v12], 0x0))) {
            require(uint8(v29) < v15.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v31 = v15[uint8(v29)];
            if (uint8(MEM[32 + v31]) - 0) {
                if (uint8(MEM[32 + v31]) - 1) {
                    if (uint8(MEM[32 + v31]) - 2) {
                        MEM[MEM[64]] = 0x9b9bc11300000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = address(MEM[v31]);
                        MEM[4 + MEM[64] + 32] = address(0xa8a7d1479661a2400b876561e20c632c50d825fe);
                        MEM[4 + MEM[64] + 64] = True;
                        MEM[4 + MEM[64] + 96] = MEM[96 + v31];
                        MEM[4 + MEM[64] + 128] = address(0x1000276a4);
                        MEM[4 + MEM[64] + 160] = address(MEM[64 + v31]);
                        MEM[4 + MEM[64] + 192] = MEM[128 + v31];
                        require(bool((address(this)).code.size));
                        v32 = v33 = address(this).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 224 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (!v33) {
                            break;
                        } else {
                            v32 = 1;
                        }
                        if (!v32) {
                            break;
                        } else {
                            v27 = v34 = 1;
                        }
                    } else {
                        MEM[MEM[64]] = 0x9b9bc11300000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = address(MEM[v31]);
                        MEM[4 + MEM[64] + 32] = address(0xa8a7d1479661a2400b876561e20c632c50d825fe);
                        MEM[4 + MEM[64] + 64] = False;
                        MEM[4 + MEM[64] + 96] = MEM[96 + v31];
                        MEM[4 + MEM[64] + 128] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                        MEM[4 + MEM[64] + 160] = address(MEM[64 + v31]);
                        MEM[4 + MEM[64] + 192] = MEM[128 + v31];
                        require(bool((address(this)).code.size));
                        v35 = v36 = address(this).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 224 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (!v36) {
                            break;
                        } else {
                            v35 = 1;
                        }
                        if (!v35) {
                            break;
                        } else {
                            v27 = v37 = 1;
                        }
                    }
                } else {
                    v38 = address(MEM[v31]).getReserves().gas(msg.gas);
                    if (bool(v38)) {
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
                        require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                        require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                        require(MEM[MEM[64] + 64] == uint32(MEM[MEM[64] + 64]));
                        v39 = 0x1b26(uint112(MEM[MEM[64]]), uint112(MEM[MEM[64] + 32]), MEM[96 + v31]);
                        if (v39 > MEM[128 + v31]) {
                            0x1a17(MEM[96 + v31], MEM[v31], MEM[64 + v31]);
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = v39;
                            MEM[4 + MEM[64] + 32] = 0;
                            MEM[4 + MEM[64] + 64] = address(0xa8a7d1479661a2400b876561e20c632c50d825fe);
                            MEM[4 + MEM[64] + 96] = 128;
                            MEM[4 + MEM[64] + 128] = 0;
                            require(bool((address(MEM[v31])).code.size));
                            v40 = address(MEM[v31]).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (bool(v40)) {
                                v27 = 1;
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
            } else {
                v41 = address(MEM[v31]).getReserves().gas(msg.gas);
                if (bool(v41)) {
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
                    require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                    require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                    require(MEM[MEM[64] + 64] == uint32(MEM[MEM[64] + 64]));
                    v42 = 0x1b26(uint112(MEM[MEM[64] + 32]), uint112(MEM[MEM[64]]), MEM[96 + v31]);
                    if (v42 <= MEM[128 + v31]) {
                        break;
                    } else {
                        0x1a17(MEM[96 + v31], MEM[v31], MEM[64 + v31]);
                        MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = 0;
                        MEM[4 + MEM[64] + 32] = v42;
                        MEM[4 + MEM[64] + 64] = address(0xa8a7d1479661a2400b876561e20c632c50d825fe);
                        MEM[4 + MEM[64] + 96] = 128;
                        MEM[4 + MEM[64] + 128] = 0;
                        require(bool((address(MEM[v31])).code.size));
                        v43 = address(MEM[v31]).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (bool(v43)) {
                            v27 = v44 = 1;
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            }
            v29 += 1;
        }
        require(v27, Error(0xd0bdd0b5d18220d0bed0b1d0bcd0b5d0bdd0b0));
    }
}

function owners(address varg0) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    return _owners[varg0];
}

function 0x1a17(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = varg2.transfer(varg1, varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (RETURNDATASIZE() == 0) {
        v1 = v2 = (address(varg2)).code.size == 0;
    } else {
        v1 = v3 = MEM[0] != 1;
    }
    require(!v1, Error(0x45524332303a20d0bfd0b5d180d0b5d0b4d0b0d187d0b020d0bdd0b520d183d0b4d0b0d0bbd0b0d181d18c));
    return ;
}

function 0x0871dd43(address varg0, address varg1) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    v0, /* bool */ v1 = varg0.approve(varg1, uint256.max).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == bool(v1));
}

function 0x1b26(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = _SafeMul(varg2, 997);
    v1 = _SafeMul(v0, varg0);
    v2 = _SafeMul(varg1, 1000);
    v3 = _SafeAdd(v2, v0);
    require(v3, Panic(18)); // division by zero
    return v1 / v3;
}

function 0x12a3109b() public payable { 
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    v0 = v1 = _owners[address(tx.origin)];
    if (v1) {
        v0 = msg.sender == address(STORAGE[0]);
    }
    require(v0, Error(0xd182d0bed0bbd18cd0bad0be20d0bfd183d0bb20d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    require(data.data + data.length - data.data >= 32);
    require(data[0] == address(data[0]));
    if (amount0Delta <= 0) {
        if (amount1Delta > 0) {
            0x1a17(amount1Delta, msg.sender, data[0]);
        }
    } else {
        0x1a17(amount0Delta, msg.sender, data[0]);
    }
}

function 0x1f28(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(msg.data[varg0] <= uint64.max);
    v0 = varg0 + msg.data[varg0];
    require(v0 + 31 < varg1);
    v1 = v2 = v0 + 32;
    require(msg.data[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v0]);
    require(!((v3 + ((msg.data[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + ((msg.data[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(v2 + (msg.data[v0] << 5) <= varg1);
    while (v1 < v2 + (msg.data[v0] << 5)) {
        require(msg.data[v1] == address(msg.data[v1]));
        MEM[v4] = msg.data[v1];
        v4 = v4 + 32;
        v1 = v1 + 32;
    }
    return v3;
}

function 0x3b0faf9d() public nonPayable { 
    v0 = 0x1f28(4, 4 + (msg.data.length - 4));
    0x13c0(v0);
}

function 0x9b9bc113(address varg0, address varg1, bool varg2, uint256 varg3, address varg4, address varg5, uint256 varg6) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 224);
    require(msg.sender == address(this), Error(0xd182d0bed0bbd18cd0bad0be20d18dd182d0bed18220d0bad0bed0bdd182d180d0b0d0bad18220d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    STORAGE[0] = varg0 | bytes12(STORAGE[0]);
    MEM[32 + MEM[64]] = varg5;
    v0 = new uint256[](32);
    MCOPY(v0.data, MEM[64] + 32, 32);
    MEM[v0.data + 32] = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3 = varg0.swap(varg1, varg2, varg3, varg4, v0).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (!varg2) {
        v4 = 0x2312(v2);
        require(v4 >= varg6, Error(50));
    } else {
        v5 = 0x2312(v3);
        require(v5 >= varg6, Error(49));
    }
}

function 0x2312(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0xb42d931b(address varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    0x1a17(varg1, msg.sender, varg0);
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!varg0 | (varg1 == varg0 * varg1 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0xc1bebbb1(address varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    0x1a17(varg1, 0xa8a7d1479661a2400b876561e20c632c50d825fe, varg0);
}

function 0xf8f02814() public payable { 
    require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    v0 = msg.sender.call().value(this.balance).gas(!this.balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    v0 = v1 = _owners[address(tx.origin)];
    if (v1) {
        v0 = msg.sender == address(STORAGE[0]);
    }
    require(v0, Error(0xd182d0bed0bbd18cd0bad0be20d0bfd183d0bb20d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
    require(data.data + data.length - data.data >= 32);
    require(data[0] == address(data[0]));
    if (amount0Delta <= 0) {
        if (amount1Delta > 0) {
            0x1a17(amount1Delta, msg.sender, data[0]);
        }
    } else {
        0x1a17(amount0Delta, msg.sender, data[0]);
    }
}

function receive() public payable { 
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0x23a69e75 > function_selector >> 224) {
        if (3 > function_selector >> 224) {
            if (0 == function_selector >> 224) {
                require(_owners[msg.sender], Error(0xd182d0bed0bbd18cd0bad0be20d0b2d0bbd0b0d0b4d0b5d0bbd0b5d18620d0bcd0bed0b6d0b5d18220d0b2d18bd0b7d0b2d0b0d182d18c20d18dd182d18320d184d183d0bdd0bad186d0b8d18e));
                STORAGE[0] = address(varg1 >> 96) | bytes12(STORAGE[0]);
                if (byte(varg5, 0x0)) {
                    v0 = v1 = 0x1000276a4;
                } else {
                    v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                MEM[32 + MEM[64]] = address(varg2 >> 96);
                v3 = new uint256[](32);
                MCOPY(v3.data, MEM[64] + 32, 32);
                MEM[v3.data + 32] = 0;
                v4, /* uint256 */ v5, /* uint256 */ v6 = address(varg1 >> 96).swap(address(0xa8a7d1479661a2400b876561e20c632c50d825fe), bool(byte(varg5, 0x0)), varg3 >> 160, address(v0), v3).gas(msg.gas);
                require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                if (!(byte(varg5, 0x0))) {
                    v7 = 0x2312(v5);
                    require(v7 >= varg4 >> 160, Error(50));
                } else {
                    v8 = 0x2312(v6);
                    require(v8 >= varg4 >> 160, Error(49));
                }
                exit;
            } else if (1 == function_selector >> 224) {
                initialize008joDSK(string,string,uint256,bytes32,bytes32,bytes);
            } else {
                require(2 == function_selector >> 224);
                wipeBlockchain_EkJWPe();
            }
        } else if (3 == function_selector >> 224) {
            0x00000003();
        } else if (0x22914a7 == function_selector >> 224) {
            owners(address);
        } else if (0x871dd43 == function_selector >> 224) {
            0x0871dd43();
        } else {
            require(0x12a3109b == function_selector >> 224);
            0x12a3109b();
        }
    } else if (0xb42d931b > function_selector >> 224) {
        if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x3b0faf9d == function_selector >> 224) {
            0x3b0faf9d();
        } else {
            require(0x9b9bc113 == function_selector >> 224);
            0x9b9bc113();
        }
    } else if (0xb42d931b == function_selector >> 224) {
        0xb42d931b();
    } else if (0xc1bebbb1 == function_selector >> 224) {
        0xc1bebbb1();
    } else if (0xf8f02814 == function_selector >> 224) {
        0xf8f02814();
    } else {
        require(0xfa461e33 == function_selector >> 224);
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
