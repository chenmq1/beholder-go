// Decompiled by library.dedaub.com
// 2026.04.07 20:47 UTC
// Compiled using the solidity compiler version 0.7.0


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _uniswapV3SwapCallback; // STORAGE[0x2]
address _withdraw; // STORAGE[0x0] bytes 0 to 19
address owner_1_0_19; // STORAGE[0x1] bytes 0 to 19



function 0x354bb429(uint256 varg0, uint256 varg1) public nonPayable { 
    v0 = v1 = 0;
    require(msg.data.length - 4 >= 64, v1, v1);
    require(varg1 <= uint64.max, v1, v1);
    require(msg.data.length > 4 + varg1 + 31, v1, v1);
    require(varg1.length <= uint64.max);
    v2 = new uint256[](varg1.length);
    require(!((v2 + ((varg1.length << 5) + 32) < v2) | (v2 + ((varg1.length << 5) + 32) > uint64.max)));
    v3 = v4 = v2.data;
    v5 = v6 = varg1.data;
    require(msg.data.length >= 32 + (4 + varg1 + varg1.length * 160), v1, v1);
    while (v0 < varg1.length) {
        require(msg.data.length - v5 >= 160, v1, v1);
        v7 = new struct(5);
        require(!((v7 + 160 < v7) | (v7 + 160 > uint64.max)));
        require(msg.data[v5] == address(msg.data[v5]));
        v7.word0 = msg.data[v5];
        require(msg.data[v5 + 32] == address(msg.data[v5 + 32]));
        v7.word1 = msg.data[v5 + 32];
        require(msg.data[v5 + 64] == uint24(msg.data[v5 + 64]));
        v7.word2 = msg.data[v5 + 64];
        require(msg.data[v5 + 96] == int24(msg.data[v5 + 96]));
        v7.word3 = msg.data[v5 + 96];
        require(msg.data[128 + v5] == address(msg.data[128 + v5]));
        v7.word4 = msg.data[128 + v5];
        MEM[v3] = v7;
        v0 += 1;
        v3 += 32;
        v5 += 160;
    }
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    v8 = v9 = 0;
    while (v8 < v2.length) {
        if (v8 == v2.length - 1) {
            v10 = v11 = msg.sender;
        } else {
            v10 = v12 = this;
        }
        assert(v8 < v2.length);
        if (address(MEM[v2[v8]]) < address(MEM[v2[v8] + 32])) {
            v13 = v14 = 0x1000276a4;
        } else {
            v13 = v15 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        v16 = new uint256[](64);
        v17 = v18 = 0;
        while (v17 < 64) {
            MEM[v17 + v16.data] = MEM[v17 + (MEM[64] + 32)];
            v17 += 32;
        }
        if (v17 > 64) {
            MEM[64 + v16.data] = 0;
        }
        require(bool((address(MEM[v2[v8] + 128])).code.size));
        v19, /* uint256 */ v20, /* uint256 */ v20 = address(MEM[v2[v8] + 128]).swap(address(v10), address(MEM[v2[v8]]) < address(MEM[v2[v8] + 32]), v21, address(v13), v16, v22, address(MEM[v2[v8]]), address(MEM[v2[v8] + 32])).gas(msg.gas);
        require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        if (address(MEM[v2[v8]]) >= address(MEM[v2[v8] + 32])) {
        }
        v21 = v23 = 0 - v20;
        v8 += 1;
    }
    return v21;
}

function 0x13fe(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    if (v0 > 68) {
        MEM[68 + MEM[64]] = 0;
    }
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.transfer(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v6];
        if (MEM[v6]) {
            require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
            v2 = MEM[32 + v6];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error(0x425f5354));
    return ;
}

function 0x1609(uint256 varg0, uint8 varg1) private { 
    v0 = v1 = 161 == varg1;
    if (161 != varg1) {
        v0 = v2 = 162 == varg1;
    }
    if (!v0) {
        return varg0;
    } else {
        require(bool((address(varg0)).code.size));
        v3, /* address */ v4 = address(varg0).vault().gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v4 == address(v4));
        return v4;
    }
}

function 0x38782620(address varg0, uint8 varg1, uint256 varg2, address varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max);
    v0 = new uint256[](varg4.length);
    require(!((v0 + ((varg4.length << 5) + 32) < v0) | (v0 + ((varg4.length << 5) + 32) > uint64.max)));
    v1 = v2 = v0.data;
    v3 = v4 = varg4.data;
    require(msg.data.length >= 32 + (4 + varg4 + varg4.length * 224));
    v5 = v6 = 0;
    while (v5 < varg4.length) {
        require(msg.data.length - v3 >= 224, v6, v6);
        v7 = new struct(2);
        require(!((v7 + 64 < v7) | (v7 + 64 > uint64.max)));
        require(msg.data[v3] == bool(msg.data[v3]));
        v7.word0 = msg.data[v3];
        require(msg.data.length - (v3 + 32) >= 192);
        v8 = new struct(6);
        require(!((v8 + 192 < v8) | (v8 + 192 > uint64.max)));
        require(msg.data[v3 + 32] == address(msg.data[v3 + 32]));
        v8.word0 = msg.data[v3 + 32];
        require(msg.data[v3 + 32 + 32] == address(msg.data[v3 + 32 + 32]));
        v8.word1 = msg.data[v3 + 32 + 32];
        require(msg.data[v3 + 32 + 64] == address(msg.data[v3 + 32 + 64]));
        v8.word2 = msg.data[v3 + 32 + 64];
        require(msg.data[v3 + 32 + 96] == address(msg.data[v3 + 32 + 96]));
        v8.word3 = msg.data[v3 + 32 + 96];
        require(msg.data[v3 + 32 + 128] == uint24(msg.data[v3 + 32 + 128]));
        v8.word4 = msg.data[v3 + 32 + 128];
        v8.word5 = msg.data[v3 + 32 + 160];
        v7.word1 = v8;
        MEM[v1] = v7;
        v1 += 32;
        v3 += 224;
        v5 += 1;
    }
    v9 = 0x98f(v0, varg3, varg2, varg1, varg0);
    return uint128(v9);
}

function 0x1695(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        if (v0) {
            varg2 = v2 = uint128(v0);
        }
        if (address(varg3) == varg4) {
            MEM[MEM[64]] = 0;
            MEM[MEM[64] + 32] = 0;
            MEM[MEM[64] + 64] = 0;
            MEM[MEM[64] + 96] = 0;
            MEM[MEM[64] + 128] = 0;
            assert(v0 < varg0.length);
            assert(v0 < varg0.length);
            assert(v0 < varg0.length);
            assert(v0 < varg0.length);
            assert(v0 < varg0.length);
            MEM[MEM[64]] = 0;
            MEM[MEM[64] + 32] = 0;
            MEM[MEM[64] + 64] = 0;
            assert(v0 < varg0.length);
            assert(v0 < varg0.length);
            if (MEM[varg0[v0]]) {
                v3 = v4 = 0x1000276a4;
            } else {
                v3 = v5 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            MEM[MEM[64] + 32] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 36] = address(MEM[MEM[32 + varg0[v0]]]);
            MEM[MEM[64] + 36 + 32] = address(MEM[32 + MEM[32 + varg0[v0]]]);
            MEM[MEM[64] + 36 + 64] = uint24(MEM[128 + MEM[32 + varg0[v0]]]);
            MEM[MEM[64] + 36 + 96] = int24(uint24(MEM[160 + MEM[32 + varg0[v0]]] >> 16));
            MEM[MEM[64] + 36 + 128] = address(MEM[64 + MEM[32 + varg0[v0]]]);
            MEM[MEM[64] + 36 + 160] = bool(MEM[varg0[v0]]);
            MEM[MEM[64] + 36 + 160 + 32] = 0 - varg2;
            MEM[MEM[64] + 36 + 160 + 64] = address(v3);
            MEM[MEM[64] + 36 + (uint8.max + 1)] = 288;
            MEM[MEM[64] + 36 + 288] = 0;
            v6 = v7 = 0;
            while (v6 < 0) {
                MEM[v6 + (MEM[64] + 36 + 288 + 32)] = MEM[v6 + (MEM[64] + 32)];
                v6 += 32;
            }
            if (v6 > 0) {
                MEM[MEM[64] + 36 + 288 + 32] = 0;
            }
            require(bool(varg4.code.size));
            v8 = varg4.call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 288 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
            if (bool(v8)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v9 = MEM[MEM[64]];
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        } else {
            MEM[MEM[64]] = 0;
            MEM[MEM[64] + 32] = 0;
            MEM[MEM[64] + 64] = 0;
            assert(v0 < varg0.length);
            assert(v0 < varg0.length);
            if (MEM[varg0[v0]]) {
                v10 = v11 = 0x1000276a4;
            } else {
                v10 = v12 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            assert(v0 < varg0.length);
            require(0 <= uint64.max);
            v13 = new bytes[](0);
            if (0) {
                CALLDATACOPY(v13.data, msg.data.length, 0);
                v14 = v13.data;
            }
            MEM[MEM[64]] = 0xcd0cc1ce00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = address(MEM[MEM[32 + varg0[v0]]]);
            MEM[4 + MEM[64] + 32] = address(MEM[MEM[32 + varg0[v0]] + 32]);
            MEM[4 + MEM[64] + 64] = address(MEM[MEM[32 + varg0[v0]] + 64]);
            MEM[4 + MEM[64] + 96] = address(MEM[MEM[32 + varg0[v0]] + 96]);
            MEM[4 + MEM[64] + 128] = uint24(MEM[MEM[32 + varg0[v0]] + 128]);
            MEM[4 + MEM[64] + 160] = MEM[MEM[32 + varg0[v0]] + 160];
            MEM[4 + MEM[64] + 192] = bool(MEM[varg0[v0]]);
            MEM[4 + MEM[64] + 192 + 32] = 0 - varg2;
            MEM[4 + MEM[64] + 192 + 64] = address(v10);
            MEM[4 + MEM[64] + 288] = 320;
            MEM[4 + MEM[64] + 320] = v13.length;
            v15 = v16 = 0;
            while (v15 < v13.length) {
                MEM[v15 + (4 + MEM[64] + 320 + 32)] = v13[v15];
                v15 += 32;
            }
            if (v15 > v13.length) {
                MEM[v13.length + (4 + MEM[64] + 320 + 32)] = 0;
            }
            require(bool(varg4.code.size));
            v17 = varg4.call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 320 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
            if (bool(v17)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v9 = v18 = MEM[MEM[64]];
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        assert(v0 < varg0.length);
        if (!MEM[varg0[v0]]) {
            if (int128(v9) < 0) {
                varg2 = v19 = 0 - int128(v9);
            } else {
                varg2 = v20 = 0;
            }
            v0 = v9 >> 128;
            if (int128(v0) > 0) {
                v21 = v22 = MEM[MEM[varg0[v0] + 32] + 32];
                v0 = v23 = MEM[MEM[varg0[v0] + 32]];
            } else {
                v0 = v24 = 0;
                v21 = v25 = MEM[MEM[varg0[v0] + 32] + 32];
                v0 = v26 = MEM[MEM[varg0[v0] + 32]];
            }
        } else {
            if (int128(v9 >> 128) < 0) {
                varg2 = v27 = 0 - (v9 >> 128);
            } else {
                varg2 = v28 = 0;
            }
            v0 = v29 = int128(v9);
            if (int128(v29) > 0) {
                v21 = v30 = MEM[MEM[varg0[v0] + 32]];
                v0 = v31 = MEM[32 + MEM[varg0[v0] + 32]];
            } else {
                v0 = v32 = 0;
                v21 = v33 = MEM[MEM[varg0[v0] + 32]];
                v0 = v34 = MEM[32 + MEM[varg0[v0] + 32]];
            }
        }
        if (v0) {
            if (address(v0) != address(v21)) {
                0xf65(varg2, this, v0, varg3);
                if (address(v0)) {
                    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(v0)) {
                        MEM[MEM[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = varg2;
                        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                        v35 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (!bool(v35)) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                } else {
                    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                    v36 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg2).gas(msg.gas);
                    if (!bool(v36)) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
                0xfea(uint128(varg2), v21, varg3);
            }
        }
        v0 += 1;
    }
    v37, v38 = 0x23de(varg0);
    0xfea(uint128(varg2), v38, varg3);
    0xf65(uint128(v0), varg1, v37, varg3);
    return v0;
}

function 0x4d33678a(address varg0, bytes varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg1 <= uint64.max);
    require(msg.data.length > 4 + varg1 + 31);
    require(varg1.length <= uint64.max);
    v0 = new bytes[](varg1.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length)) < v0) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length)) > uint64.max)));
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    v1 = v2 = _withdraw == msg.sender;
    if (_withdraw != msg.sender) {
        v1 = owner_1_0_19 == msg.sender;
    }
    require(v1, Error(0x653a7532));
    v3 = v4 = 0;
    while (v3 < v0.length) {
        MEM[v3 + v5.data] = v0[v3];
        v3 += 32;
    }
    if (v3 > v0.length) {
        MEM[v0.length + v5.data] = 0;
    }
    v6, /* uint256 */ v7 = varg0.call(v5.data).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    require(v6);
}

function 0x1cb6(uint256 varg0, address varg1, address varg2, address varg3) private { 
    v0 = v1 = 0;
    while (v0 < 100) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    if (v0 > 100) {
        MEM[100 + MEM[64]] = 0;
    }
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg3.transferFrom(varg2, varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v6];
        if (MEM[v6]) {
            require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
            v2 = MEM[32 + v6];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error('B_STF'));
    return ;
}

function 0x9883519d(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    require(bool(varg0.code.size));
    v0, /* uint256 */ v1 = varg0.balanceOf(_withdraw).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg1, Error('err balance121'));
    0x1cb6(varg1, msg.sender, _withdraw, varg0);
}

function 0xb51a9192(address varg0, uint8 varg1, uint256 varg2, uint128 varg3, address varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < msg.data.length);
    require(varg5.length <= uint64.max);
    v0 = new uint256[](varg5.length);
    require(!((v0 + ((varg5.length << 5) + 32) < v0) | (v0 + ((varg5.length << 5) + 32) > uint64.max)));
    v1 = v2 = v0.data;
    v3 = v4 = varg5.data;
    require(msg.data.length >= 32 + (4 + varg5 + varg5.length * 224));
    v5 = v6 = 0;
    while (v5 < varg5.length) {
        require(msg.data.length - v3 >= 224, v6, v6);
        v7 = new struct(2);
        require(!((v7 + 64 < v7) | (v7 + 64 > uint64.max)));
        require(msg.data[v3] == bool(msg.data[v3]));
        v7.word0 = msg.data[v3];
        require(msg.data.length - (v3 + 32) >= 192);
        v8 = new struct(6);
        require(!((v8 + 192 < v8) | (v8 + 192 > uint64.max)));
        require(msg.data[v3 + 32] == address(msg.data[v3 + 32]));
        v8.word0 = msg.data[v3 + 32];
        require(msg.data[v3 + 32 + 32] == address(msg.data[v3 + 32 + 32]));
        v8.word1 = msg.data[v3 + 32 + 32];
        require(msg.data[v3 + 32 + 64] == address(msg.data[v3 + 32 + 64]));
        v8.word2 = msg.data[v3 + 32 + 64];
        require(msg.data[v3 + 32 + 96] == address(msg.data[v3 + 32 + 96]));
        v8.word3 = msg.data[v3 + 32 + 96];
        require(msg.data[v3 + 32 + 128] == uint24(msg.data[v3 + 32 + 128]));
        v8.word4 = msg.data[v3 + 32 + 128];
        v8.word5 = msg.data[v3 + 32 + 160];
        v7.word1 = v8;
        MEM[v1] = v7;
        v1 += 32;
        v3 += 224;
        v5 += 1;
    }
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    v9 = 0x98f(v0, varg4, varg2, varg1, varg0);
    return uint128(v9);
}

function 0x21ff(uint256 varg0, uint256 varg1, address varg2) private { 
    require(bool(varg2.code.size));
    v0, /* address */ v1, /* int24 */ v2, /* uint16 */ v3, /* uint16 */ v4, /* uint16 */ v5, /* uint32 */ v6, /* bool */ v7 = varg2.slot0().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 224);
    require(v1 == address(v1));
    require(v2 == int24(v2));
    require(v3 == uint16(v3));
    require(v4 == uint16(v4));
    require(v5 == uint16(v5));
    require(v6 == uint32(v6));
    require(v7 == bool(v7));
    if (varg0) {
        assert(address(v1));
        assert(address(v1));
        return ((varg1 << 96) / address(v1) << 96) / address(v1);
    } else {
        return address(v1) * (address(v1) * varg1 >> 96) >> 96;
    }
}

function 0xd2c499d1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = new uint256[](varg0.length);
    require(!((v0 + ((varg0.length << 5) + 32) < v0) | (v0 + ((varg0.length << 5) + 32) > uint64.max)));
    v1 = v2 = v0.data;
    v3 = v4 = varg0.data;
    require(msg.data.length >= 32 + (4 + varg0 + varg0.length * 160));
    v5 = v6 = 0;
    while (v5 < varg0.length) {
        require(msg.data.length - v3 >= 160, v6, v6);
        v7 = new struct(5);
        require(!((v7 + 160 < v7) | (v7 + 160 > uint64.max)));
        require(msg.data[v3] == uint8(msg.data[v3]));
        v7.word0 = msg.data[v3];
        v7.word1 = msg.data[v3 + 32];
        require(msg.data[v3 + 64] == address(msg.data[v3 + 64]));
        v7.word2 = msg.data[v3 + 64];
        require(msg.data[96 + v3] == address(msg.data[96 + v3]));
        v7.word3 = msg.data[96 + v3];
        require(msg.data[128 + v3] == address(msg.data[128 + v3]));
        v7.word4 = msg.data[128 + v3];
        MEM[v1] = v7;
        v1 += 32;
        v3 += 160;
        v5 += 1;
    }
    0xd43(varg3, varg2, varg1, v0);
    exit;
}

function 0x23de(uint256 varg0) private { 
    assert(0 < varg0.length);
    v0 = varg0.data;
    if (MEM[varg0[0]]) {
        assert(0 < varg0.length);
        v1 = varg0.data;
        v2 = v3 = MEM[MEM[32 + varg0[0]]];
    } else {
        assert(0 < varg0.length);
        v4 = varg0.data;
        v2 = v5 = MEM[32 + MEM[32 + varg0[0]]];
    }
    assert(varg0.length - 1 < varg0.length);
    if (MEM[varg0[varg0.length - 1]]) {
        assert(varg0.length - 1 < varg0.length);
        return MEM[32 + MEM[32 + varg0[varg0.length - 1]]], v2;
    } else {
        assert(varg0.length - 1 < varg0.length);
        return MEM[MEM[32 + varg0[varg0.length - 1]]], v2;
    }
}

function withdraw(address _token, uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0 = v1 = _withdraw == msg.sender;
    if (_withdraw != msg.sender) {
        v0 = owner_1_0_19 == msg.sender;
    }
    require(v0, Error(0x653a7532));
    if (_token) {
        if (!_amount) {
            require(bool(_token.code.size));
            v2, /* uint256 */ v3 = _token.balanceOf(address(this)).gas(msg.gas);
            require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
        require(v3 > 0, Error(48));
        0x13fe(v3, msg.sender, _token);
    } else {
        if (!_amount) {
            v3 = v4 = this.balance;
        }
        require(v3 > 0, Error(48));
        v5 = msg.sender.call().value(v3).gas(2300 * !v3);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(data.word1 == address(data.word1));
    require(data.word2 == address(data.word2));
    if (amount0Delta > 0) {
        v3 = v4 = address(data.word1) < address(data.word2);
    } else {
        v3 = address(data.word2) < address(data.word1);
    }
    require(v3, Error(0x653a6969));
    0x13fe(v5, msg.sender, data.word1);
}

function 0x2bb6(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    assert(varg1 < varg2.length);
    v0, v1 = 0x4228(varg1, varg2);
    assert(0 < v1.length);
    v2 = v1.data;
    require(bool((address(v1[0x0])).code.size));
    v3, /* bool */ v4 = address(v1[0x0]).approve(address(MEM[96 + varg2[varg1]]), varg0).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v4 == bool(v4));
    assert(v1.length - 1 < v1.length);
    v5 = 0x431b(v0, varg2);
    require(bool((address(v1[v1.length - 1])).code.size));
    v6, /* uint256 */ v7 = address(v1[v1.length - 1]).balanceOf(address(v5)).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    assert(v0 - 1 < varg2.length);
    if (uint8(MEM[varg2[v0 - 1]]) != uint8(52)) {
        assert(v0 - 1 < varg2.length);
        if (uint8(MEM[varg2[v0 - 1]]) != uint8(54)) {
            v8 = v9 = 0;
            v10 = new address[](v1.length);
            v11 = v12 = v10.data;
            v13 = v14 = v1.data;
            while (v8 < v1.length) {
                MEM[v11] = address(MEM[v13]);
                v13 += 32;
                v11 += 32;
                v8 += 1;
            }
            require(bool((address(MEM[96 + varg2[varg1]])).code.size));
            v15, /* uint256 */ v16 = address(MEM[96 + varg2[varg1]]).swapExactTokensForTokens(varg0, 1, v10, address(v5), block.timestamp + 60).gas(msg.gas);
            require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            RETURNDATACOPY(v16, 0, RETURNDATASIZE());
            MEM[64] = v16 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            v17 = v18 = 0;
            require(v16 + RETURNDATASIZE() - v16 >= 32, v18, v18);
            require(MEM[v16] <= uint64.max, v18, v18);
            require(v16 + RETURNDATASIZE() > v16 + MEM[v16] + 31, v18, v18);
            require(MEM[v16 + MEM[v16]] <= uint64.max);
            v19 = new uint256[](MEM[v16 + MEM[v16]]);
            require(!((v19 + ((MEM[v16 + MEM[v16]] << 5) + 32) < v19) | (v19 + ((MEM[v16 + MEM[v16]] << 5) + 32) > uint64.max)));
            v20 = v21 = v19.data;
            v22 = v23 = 32 + (v16 + MEM[v16]);
            require(v16 + RETURNDATASIZE() >= 32 + (v16 + MEM[v16] + (MEM[v16 + MEM[v16]] << 5)), v18, v18);
            while (v17 < MEM[v16 + MEM[v16]]) {
                MEM[v20] = MEM[v22];
                v17 += 1;
                v20 += 32;
                v22 += 32;
            }
        } else {
            require(v1.length <= uint64.max);
            v24 = new uint256[](v1.length);
            if (v1.length) {
                CALLDATACOPY(v24.data, msg.data.length, v1.length << 5);
            }
            v25 = v26 = 0;
            while (v25 < v1.length) {
                assert(v25 < v1.length);
                assert(v25 < v24.length);
                v24[v25] = address(v1[v25]);
                v25 += 1;
            }
            v27 = v28 = 0;
            v29 = new uint256[](v24.length);
            v30 = v31 = v29.data;
            v32 = v33 = v24.data;
            while (v27 < v24.length) {
                MEM[v30] = MEM[v32];
                v32 += 32;
                v30 += 32;
                v27 += 1;
            }
            require(bool((address(MEM[96 + varg2[varg1]])).code.size));
            v34 = address(MEM[96 + varg2[varg1]]).call(0xf875abfe00000000000000000000000000000000000000000000000000000000, varg0, 1, v29, address(v5), block.timestamp + 60).gas(msg.gas);
            require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    } else {
        v35 = v36 = 0;
        v37 = new address[](v1.length);
        v38 = v39 = v37.data;
        v40 = v41 = v1.data;
        while (v35 < v1.length) {
            MEM[v38] = address(MEM[v40]);
            v40 += 32;
            v38 += 32;
            v35 += 1;
        }
        require(bool((address(MEM[96 + varg2[varg1]])).code.size));
        v42 = address(MEM[96 + varg2[varg1]]).swapExactTokensForTokensSupportingFeeOnTransferTokens(varg0, 1, v37, address(v5), block.timestamp + 60).gas(msg.gas);
        require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    require(bool((address(v1[v1.length - 1])).code.size));
    v43, /* uint256 */ v44 = address(v1[v1.length - 1]).balanceOf(address(v5)).gas(msg.gas);
    require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    assert(0 < v1.length);
    v45 = v1.data;
    assert(v1.length - 1 < v1.length);
    v46 = address(v1[0x0]) == address(v1[v1.length - 1]);
    if (v46) {
        v46 = v47 = this == address(v5);
    }
    if (!v46) {
        v48 = v49 = v44 - v7;
    } else {
        require(v44 > v7, Error(0x453031));
        v48 = v44 + varg0 - v7;
    }
    return v48, v0;
}

function 0x3299(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, v1 = 0x4228(varg1, varg2);
    require(v1.length <= uint64.max);
    v2 = new uint256[](v1.length);
    if (v1.length) {
        CALLDATACOPY(v2.data, msg.data.length, v1.length << 5);
    }
    v3 = v4 = 0;
    while (v3 < v1.length) {
        if (v3 >= v1.length - 1) {
            assert(v3 < v2.length);
            v2[v3] = uint24(0);
        } else {
            assert(varg1 + v3 < varg2.length);
            assert(v3 < v2.length);
            v2[v3] = uint24(MEM[32 + varg2[varg1 + v3]] >> 40);
        }
        v3 += 1;
    }
    v5 = 0x431b(v0, varg2);
    assert(v1.length - 1 < v1.length);
    require(bool((address(v1[v1.length - 1])).code.size));
    v6, /* uint256 */ v7 = address(v1[v1.length - 1]).balanceOf(address(v5)).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    assert(0 < v1.length);
    v8 = v1.data;
    assert(varg1 < varg2.length);
    require(bool((address(v1[0x0])).code.size));
    v9, /* bool */ v10 = address(v1[0x0]).approve(address(MEM[96 + varg2[varg1]]), varg0).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v10 == bool(v10));
    assert(v0 - 1 < varg2.length);
    if (uint8(MEM[varg2[v0 - 1]]) != uint8(101)) {
        assert(v0 - 1 < varg2.length);
        if (uint8(MEM[varg2[v0 - 1]]) == uint8(102)) {
            assert(varg1 < varg2.length);
            v11 = v12 = 96;
            v13 = v14 = 0;
            while (v13 < v1.length) {
                assert(v13 < v1.length);
                assert(v13 < v2.length);
                MEM[32 + MEM[64]] = bytes3(v2[v13] << 232);
                if (v13 != v1.length - 1) {
                    v15 = v16 = 0;
                    while (v15 < MEM[v11]) {
                        MEM[v15 + (32 + MEM[64])] = MEM[v15 + (v11 + 32)];
                        v15 += 32;
                    }
                    if (v15 > MEM[v11]) {
                        MEM[MEM[v11] + (32 + MEM[64])] = 0;
                    }
                    v17 = v18 = 0;
                    while (v17 < 0x140000000000000000000000000000000000000000 ^ address(v1[v13])) {
                        MEM[v17 + (32 + MEM[64] + MEM[v11])] = MEM[v17 + (MEM[64] + 32)];
                        v17 += 32;
                    }
                    if (v17 > 0x140000000000000000000000000000000000000000 ^ address(v1[v13])) {
                        MEM[(0x140000000000000000000000000000000000000000 ^ address(v1[v13])) + (32 + MEM[64] + MEM[v11])] = 0;
                    }
                    v19 = v20 = 0;
                    while (v19 < 3) {
                        MEM[v19 + (32 + MEM[64] + MEM[v11] + (0x140000000000000000000000000000000000000000 ^ address(v1[v13])))] = MEM[v19 + (MEM[64] + 32)];
                        v19 += 32;
                    }
                    if (v19 > 3) {
                        MEM[3 + (32 + MEM[64] + MEM[v11] + (0x140000000000000000000000000000000000000000 ^ address(v1[v13])))] = 0;
                    }
                    v11 = v21 = MEM[64];
                    MEM[v21] = 3 + (32 + MEM[64] + MEM[v11] + (0x140000000000000000000000000000000000000000 ^ address(v1[v13]))) - v21 - 32;
                } else {
                    v22 = v23 = 0;
                    while (v22 < MEM[v11]) {
                        MEM[v22 + (32 + MEM[64])] = MEM[v22 + (v11 + 32)];
                        v22 += 32;
                    }
                    if (v22 > MEM[v11]) {
                        MEM[MEM[v11] + (32 + MEM[64])] = 0;
                    }
                    v24 = v25 = 0;
                    while (v24 < 0x140000000000000000000000000000000000000000 ^ address(v1[v13])) {
                        MEM[v24 + (32 + MEM[64] + MEM[v11])] = MEM[v24 + (MEM[64] + 32)];
                        v24 += 32;
                    }
                    if (v24 > 0x140000000000000000000000000000000000000000 ^ address(v1[v13])) {
                        MEM[(0x140000000000000000000000000000000000000000 ^ address(v1[v13])) + (32 + MEM[64] + MEM[v11])] = 0;
                    }
                    v11 = v26 = MEM[64];
                    MEM[v26] = (0x140000000000000000000000000000000000000000 ^ address(v1[v13])) + (32 + MEM[64] + MEM[v11]) - v26 - 32;
                }
                v13 += 1;
            }
            v27 = new uint256[](128);
            MEM[4 + MEM[64] + 160] = MEM[v28.length];
            v29 = v30 = 0;
            while (v29 < MEM[v28.length]) {
                MEM[v29 + (4 + MEM[64] + 160 + 32)] = MEM[v29 + (v28.length + 32)];
                v29 += 32;
            }
            if (v29 > MEM[v28.length]) {
                MEM[MEM[v28.length] + (4 + MEM[64] + 160 + 32)] = 0;
            }
            v31 = v28.data;
            MEM[v27.data] = address(v5);
            MEM[4 + MEM[64] + 96] = varg0;
            v32 = new uint256[](1);
            require(bool((address(MEM[96 + varg2[varg1]])).code.size));
            v33, /* uint256 */ v34 = address(MEM[96 + varg2[varg1]]).exactInput(v27, v32).gas(msg.gas);
            require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
    } else {
        assert(varg1 < varg2.length);
        MEM[96 + v35.data] = 0;
        v36 = v37 = 96;
        v38 = v39 = 0;
        while (v38 < v1.length) {
            assert(v38 < v1.length);
            assert(v38 < v2.length);
            MEM[32 + MEM[64]] = bytes3(v2[v38] << 232);
            if (v38 != v1.length - 1) {
                v40 = v41 = 0;
                while (v40 < MEM[v36]) {
                    MEM[v40 + (32 + MEM[64])] = MEM[v40 + (v36 + 32)];
                    v40 += 32;
                }
                if (v40 > MEM[v36]) {
                    MEM[MEM[v36] + (32 + MEM[64])] = 0;
                }
                v42 = v43 = 0;
                while (v42 < 0x140000000000000000000000000000000000000000 ^ address(v1[v38])) {
                    MEM[v42 + (32 + MEM[64] + MEM[v36])] = MEM[v42 + (MEM[64] + 32)];
                    v42 += 32;
                }
                if (v42 > 0x140000000000000000000000000000000000000000 ^ address(v1[v38])) {
                    MEM[(0x140000000000000000000000000000000000000000 ^ address(v1[v38])) + (32 + MEM[64] + MEM[v36])] = 0;
                }
                v44 = v45 = 0;
                while (v44 < 3) {
                    MEM[v44 + (32 + MEM[64] + MEM[v36] + (0x140000000000000000000000000000000000000000 ^ address(v1[v38])))] = MEM[v44 + (MEM[64] + 32)];
                    v44 += 32;
                }
                if (v44 > 3) {
                    MEM[3 + (32 + MEM[64] + MEM[v36] + (0x140000000000000000000000000000000000000000 ^ address(v1[v38])))] = 0;
                }
                v36 = v46 = MEM[64];
                MEM[v46] = 3 + (32 + MEM[64] + MEM[v36] + (0x140000000000000000000000000000000000000000 ^ address(v1[v38]))) - v46 - 32;
            } else {
                v47 = v48 = 0;
                while (v47 < MEM[v36]) {
                    MEM[v47 + (32 + MEM[64])] = MEM[v47 + (v36 + 32)];
                    v47 += 32;
                }
                if (v47 > MEM[v36]) {
                    MEM[MEM[v36] + (32 + MEM[64])] = 0;
                }
                v49 = v50 = 0;
                while (v49 < 0x140000000000000000000000000000000000000000 ^ address(v1[v38])) {
                    MEM[v49 + (32 + MEM[64] + MEM[v36])] = MEM[v49 + (MEM[64] + 32)];
                    v49 += 32;
                }
                if (v49 > 0x140000000000000000000000000000000000000000 ^ address(v1[v38])) {
                    MEM[(0x140000000000000000000000000000000000000000 ^ address(v1[v38])) + (32 + MEM[64] + MEM[v36])] = 0;
                }
                v36 = v51 = MEM[64];
                MEM[v51] = (0x140000000000000000000000000000000000000000 ^ address(v1[v38])) + (32 + MEM[64] + MEM[v36]) - v51 - 32;
            }
            v38 += 1;
        }
        v52 = new uint256[](160);
        MEM[4 + MEM[64] + 192] = MEM[v35.length];
        v53 = v54 = 0;
        while (v53 < MEM[v35.length]) {
            MEM[v53 + (4 + MEM[64] + 192 + 32)] = MEM[v53 + (v35.length + 32)];
            v53 += 32;
        }
        if (v53 > MEM[v35.length]) {
            MEM[MEM[v35.length] + (4 + MEM[64] + 192 + 32)] = 0;
        }
        v55 = v35.data;
        MEM[v52.data] = address(v5);
        MEM[4 + MEM[64] + 96] = block.timestamp + 60;
        MEM[4 + MEM[64] + 128] = varg0;
        v56 = new uint256[](1);
        require(bool((address(MEM[96 + varg2[varg1]])).code.size));
        v57, /* uint256 */ v58 = address(MEM[96 + varg2[varg1]]).exactInput(v52, v56).gas(msg.gas);
        require(bool(v57), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    require(bool((address(v1[v1.length - 1])).code.size));
    v59, /* uint256 */ v60 = address(v1[v1.length - 1]).balanceOf(address(v5)).gas(msg.gas);
    require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    assert(0 < v1.length);
    v61 = v1.data;
    assert(v1.length - 1 < v1.length);
    v62 = address(v1[0x0]) == address(v1[v1.length - 1]);
    if (v62) {
        v62 = v63 = this == address(v5);
    }
    if (!v62) {
        v64 = v65 = v60 - v7;
    } else {
        require(v60 > v7, Error(0x453031));
        v64 = v60 + varg0 - v7;
    }
    return v64, v0;
}

function 0x3b40(uint256 varg0, uint256 varg1) private { 
    varg0 = v0 = 0;
    varg0 = v1 = new struct(2);
    v1.word0 = 0;
    v1.word1 = 0;
    varg0 = v2 = 0x4490(varg1, v3);
    require(v2 <= uint64.max);
    varg0 = v4 = new uint256[](v2);
    if (v2) {
        v5 = v6 = v4.data;
        do {
            v7 = new struct(2);
            v7.word0 = False;
            v8 = new struct(6);
            v8.word0 = 0;
            v8.word1 = 0;
            v8.word2 = 0;
            v8.word3 = 0;
            v8.word4 = 0;
            v8.word5 = 0;
            v7.word1 = v8;
            MEM[v5] = v7;
            v5 += 32;
            varg0 = varg0 - 1;
        } while (varg0);
    }
    varg0 = v9 = 0;
    while (1) {
        if (varg0 >= varg0) {
            v10, v11 = 0x23de(varg0);
            MEM[varg0 + 32] = address(v10);
            MEM[varg0] = address(v11);
            v12 = v13 = !address(v11);
            if (!bool(address(v11))) {
                v12 = v14 = !varg0;
                if (varg0) {
                    v15 = v16 = 15825;
                    varg0 = v17 = varg0 - 1;
                    assert(v17 < MEM[varg0]);
                }
            }
        } else {
            assert(varg0 < MEM[varg0]);
            varg0 = v18 = MEM[128 + MEM[32 + (varg0 << 5) + varg0]];
            varg0 = v19 = 0x412b(1 + varg0, varg0);
            v15 = v20 = 15367;
            assert(varg0 < MEM[varg0]);
        }
        v21 = MEM[MEM[32 + (varg0 << 5) + varg0]];
        v22 = v23 = 152 == uint8(v21);
        if (v23) {
            // Unknown jump to Block ['0x3c07', '0x3dd1', '0x3ee7']. Refer to 3-address code (TAC);
        } else {
            v22 = v24 = 162 == uint8(v21);
            // Unknown jump to Block ['0x3c07', '0x3dd1', '0x3ee7']. Refer to 3-address code (TAC);
        }
        if (v22) {
            if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 != address(varg0)) {
                if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(varg0)) {
                    varg0 = v25 = 0;
                }
            } else {
                varg0 = v26 = 0;
            }
        }
        if (address(varg0) < address(varg0)) {
            v27 = v28 = 1;
        } else {
            v27 = v29 = 0;
        }
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        MEM[MEM[64] + 128] = 0;
        MEM[MEM[64] + 160] = 0;
        v30 = new struct(6);
        v30.word0 = address(varg0);
        v30.word1 = address(varg0);
        assert(varg0 < MEM[varg0]);
        v30.word2 = address(MEM[64 + MEM[32 + (varg0 << 5) + varg0]]);
        assert(varg0 < MEM[varg0]);
        v30.word3 = address(MEM[96 + MEM[32 + (varg0 << 5) + varg0]]);
        assert(varg0 < MEM[varg0]);
        v30.word4 = uint24(MEM[32 + MEM[32 + (varg0 << 5) + varg0]] >> 40);
        assert(varg0 < MEM[varg0]);
        v30.word5 = uint40(MEM[32 + MEM[32 + (varg0 << 5) + varg0]]);
        v31 = new struct(2);
        v31.word0 = bool(v27);
        v31.word1 = v30;
        assert(varg0 < MEM[varg0]);
        MEM[(varg0 << 5) + varg0 + 32] = v31;
        varg0 += 1;
        varg0 += 1;
        v12 = v32 = !v22;
        // Unknown jump to Block 0x3dd3. Refer to 3-address code (TAC);
        if (v12) {
            MEM[MEM[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = varg0;
            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
            v33 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (!bool(v33)) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        assert(varg0 < MEM[varg0]);
        varg0 = v34 = MEM[96 + MEM[32 + (varg0 << 5) + varg0]];
        if (address(MEM[32 + varg0]) != address(0x0)) {
            varg0 = v35 = 0x431b(varg0, varg0);
            varg0 = v36 = MEM[varg0 + 32];
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            varg0 = v37 = 0;
            MEM[4 + MEM[64]] = address(v35);
            require(bool((address(v36)).code.size));
            v38 = address(v36).staticcall(MEM[MEM[64]:MEM[64] + 36 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
            if (bool(v38)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                varg0 = v39 = MEM[MEM[64]];
                v40 = v41 = 16498;
                assert(varg0 < MEM[varg0]);
                v42 = v43 = MEM[MEM[32 + (varg0 << 5) + varg0]];
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        } else {
            varg0 = v44 = this.balance;
            v40 = v45 = 16038;
            assert(varg0 < MEM[varg0]);
            v42 = v46 = MEM[MEM[32 + (varg0 << 5) + varg0]];
            varg0 = v47 = this;
        }
        require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
        v48 = 161 == uint8(v42);
        if (161 != uint8(v42)) {
            v48 = v49 = 162 == uint8(v42);
        }
        if (!v48) {
            if (address(v34)) {
                v50 = 0;
                MEM[32 + MEM[64]] = address(v34);
                MEM[32 + MEM[64] + 32] = address(v34);
                MEM[32 + MEM[64] + 64] = varg0;
                MEM[32 + MEM[64] + 96] = address(varg0);
                MEM[32 + MEM[64] + 128] = 160;
                MEM[32 + MEM[64] + 160] = MEM[varg0];
                v51 = v52 = 32 + MEM[64] + 192;
                v53 = v54 = varg0 + 32;
                while (v50 < MEM[varg0]) {
                    MEM[v51] = bool(MEM[MEM[v53]]);
                    MEM[v51 + 32] = address(MEM[MEM[32 + MEM[v53]]]);
                    MEM[v51 + 32 + 32] = address(MEM[MEM[32 + MEM[v53]] + 32]);
                    MEM[v51 + 32 + 64] = address(MEM[MEM[32 + MEM[v53]] + 64]);
                    MEM[v51 + 32 + 96] = address(MEM[MEM[32 + MEM[v53]] + 96]);
                    MEM[v51 + 32 + 128] = uint24(MEM[MEM[32 + MEM[v53]] + 128]);
                    MEM[v51 + 32 + 160] = MEM[MEM[32 + MEM[v53]] + 160];
                    v53 += 32;
                    v51 += 224;
                    v50 += 1;
                }
                MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = 32;
                MEM[4 + MEM[64] + 32] = v51 - MEM[64] - 32;
                v55 = v56 = 0;
                while (v55 < v51 - MEM[64] - 32) {
                    MEM[v55 + (4 + MEM[64] + 32 + 32)] = MEM[v55 + (MEM[64] + 32)];
                    v55 += 32;
                }
                if (v55 > v51 - MEM[64] - 32) {
                    MEM[v51 - MEM[64] - 32 + (4 + MEM[64] + 32 + 32)] = 0;
                }
                require(bool((address(v34)).code.size));
                v57 = address(v34).call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v529c_0x3V0xb070x3b40 - MEM[64] - 32 + 4 + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (bool(v57)) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(MEM[MEM[64]] <= uint64.max);
                    require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31);
                    v58 = MEM[MEM[64] + MEM[MEM[64]]];
                    require(v58 <= uint64.max);
                    v59 = new bytes[](v58);
                    require(!((v59 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v58)) < v59) | (v59 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v58)) > uint64.max)));
                    require(MEM[64] + MEM[MEM[64]] + v58 + 32 <= MEM[64] + RETURNDATASIZE());
                    v60 = v61 = 0;
                    while (v60 < v58) {
                        v59[v60] = MEM[v60 + (MEM[64] + MEM[MEM[64]] + 32)];
                        v60 += 32;
                    }
                    if (v60 > v58) {
                        v59[v58] = 0;
                    }
                    require(v59.data + v59.length - v59.data >= 32);
                    v62 = MEM[v59.data];
                    require(v62 == uint128(v62));
                    // Unknown jump to Block ['0x3ea6', '0x4072']. Refer to 3-address code (TAC);
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                v62 = v63 = 0x1695(varg0, varg0, varg0, 0x4444c5dc75cb358380d2e3de08a90, 0x4444c5dc75cb358380d2e3de08a90);
                // Unknown jump to Block ['0x3ea6', '0x4072']. Refer to 3-address code (TAC);
            }
        } else if (address(v34)) {
            v64 = 0x1609(v34, v42);
            v65 = 0;
            MEM[32 + MEM[64]] = address(v34);
            MEM[32 + MEM[64] + 32] = address(v64);
            MEM[32 + MEM[64] + 64] = varg0;
            MEM[32 + MEM[64] + 96] = address(varg0);
            MEM[32 + MEM[64] + 128] = 160;
            MEM[32 + MEM[64] + 160] = MEM[varg0];
            v66 = v67 = 32 + MEM[64] + 192;
            v68 = v69 = varg0 + 32;
            while (v65 < MEM[varg0]) {
                MEM[v66] = bool(MEM[MEM[v68]]);
                MEM[v66 + 32] = address(MEM[MEM[32 + MEM[v68]]]);
                MEM[v66 + 32 + 32] = address(MEM[MEM[32 + MEM[v68]] + 32]);
                MEM[v66 + 32 + 64] = address(MEM[MEM[32 + MEM[v68]] + 64]);
                MEM[v66 + 32 + 96] = address(MEM[MEM[32 + MEM[v68]] + 96]);
                MEM[v66 + 32 + 128] = uint24(MEM[MEM[32 + MEM[v68]] + 128]);
                MEM[v66 + 32 + 160] = MEM[MEM[32 + MEM[v68]] + 160];
                v68 += 32;
                v66 += 224;
                v65 += 1;
            }
            MEM[MEM[64]] = 0x8154831900000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = 32;
            MEM[4 + MEM[64] + 32] = v66 - MEM[64] - 32;
            v70 = v71 = 0;
            while (v70 < v66 - MEM[64] - 32) {
                MEM[v70 + (4 + MEM[64] + 32 + 32)] = MEM[v70 + (MEM[64] + 32)];
                v70 += 32;
            }
            if (v70 > v66 - MEM[64] - 32) {
                MEM[v66 - MEM[64] - 32 + (4 + MEM[64] + 32 + 32)] = 0;
            }
            require(bool((address(v64)).code.size));
            v72 = address(v64).call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v529c_0x3V0xa0f0x3b40 - MEM[64] - 32 + 4 + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (bool(v72)) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(MEM[MEM[64]] <= uint64.max);
                require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31);
                v73 = MEM[MEM[64] + MEM[MEM[64]]];
                require(v73 <= uint64.max);
                v74 = new bytes[](v73);
                require(!((v74 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v73)) < v74) | (v74 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v73)) > uint64.max)));
                require(MEM[64] + MEM[MEM[64]] + v73 + 32 <= MEM[64] + RETURNDATASIZE());
                v75 = v76 = 0;
                while (v75 < v73) {
                    v74[v75] = MEM[v75 + (MEM[64] + MEM[MEM[64]] + 32)];
                    v75 += 32;
                }
                if (v75 > v73) {
                    v74[v73] = 0;
                }
                require(v74.data + v74.length - v74.data >= 32);
                v62 = v77 = MEM[v74.data];
                require(v77 == uint128(v77));
                // Unknown jump to Block ['0x3ea6', '0x4072']. Refer to 3-address code (TAC);
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        } else {
            v78 = 0x1609(0x4444c5dc75cb358380d2e3de08a90, v42);
            v62 = v79 = 0x1695(varg0, varg0, varg0, v78, 0x4444c5dc75cb358380d2e3de08a90);
            // Unknown jump to Block ['0x3ea6', '0x4072']. Refer to 3-address code (TAC);
        }
        varg0 = v80 = this.balance;
        varg0 = _SafeSub(varg0, v80, varg0, this, MEM[32 + varg0], MEM[varg0]);
        v81 = v82 = varg0 == MEM[varg0];
        if (v82) {
            break;
        } else {
            v15 = v83 = 16103;
            assert(varg0 < MEM[varg0]);
        }
        v84 = address(varg0);
        require(bool((address(varg0)).code.size));
        v85, /* uint256 */ v86 = address(varg0).balanceOf(v84).gas(msg.gas);
        require(bool(v85), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v87 = _SafeSub(varg0, v86, varg0, varg0, MEM[32 + varg0], MEM[varg0]);
        return v87, varg0;
    }
    v81 = v88 = !v22;
    if (v81) {
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v89 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
        require(bool(v89), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v90 = v91 = varg0 < MEM[varg0];
    if (v91) {
        assert(varg0 < MEM[varg0]);
        v92 = MEM[MEM[32 + (varg0 << 5) + varg0]];
        v90 = 51 == uint8(v92);
        if (51 != uint8(v92)) {
            v90 = v93 = 55 == uint8(v92);
        }
    }
    if (!v90) {
        return varg0, varg0;
    } else {
        assert(varg0 < MEM[varg0]);
        v94 = v95 = 0;
        while (v94 < 68) {
            MEM[v94 + MEM[64]] = MEM[v94 + (MEM[64] + 32)];
            v94 += 32;
        }
        if (v94 > 68) {
            MEM[68 + MEM[64]] = 0;
        }
        v96 = v97, /* uint256 */ v98, /* uint256 */ v99 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transfer(address(MEM[64 + MEM[32 + (varg0 << 5) + varg0]]), varg0).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v100 = v101 = 96;
        } else {
            v100 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v100.data, 0, RETURNDATASIZE());
        }
        if (v97) {
            v96 = v102 = !MEM[v100];
            if (MEM[v100]) {
                require(32 + v100 + MEM[v100] - (32 + v100) >= 32);
                v96 = MEM[32 + v100];
                require(v96 == bool(v96));
            }
        }
        require(v96, Error(0x425f5354));
        return varg0, varg0;
    }
}

function receive() public payable { 
    if (msg.sender == _withdraw) {
        MEM[64] += 640;
        CALLDATACOPY(MEM[64], msg.data.length, 640);
        MEM[64] += 640;
        CALLDATACOPY(MEM[64], msg.data.length, 640);
        v0 = v1 = msg.value;
        v2 = v3 = 0;
        while (v2 < 20) {
            assert(v2 < 20);
            v4 = v5 = (address(MEM[(v2 << 5) + MEM[64]])).balance < v1 / 20;
            if (v5) {
                assert(v2 < 20);
                v4 = (address(MEM[(v2 << 5) + MEM[64]])).balance > 0;
            }
            if (!v4) {
                assert(v2 < 20);
                MEM[(v2 << 5) + MEM[64]] = address(0x0);
            } else {
                assert(v2 < 20);
                v6 = (address(MEM[(v2 << 5) + MEM[64]])).balance;
                v0 += v6;
                v2 = v2 + 1;
            }
            v2 += 1;
        }
        assert(v2);
        v7 = v8 = 0;
        while (v7 < 20) {
            assert(v7 < 20);
            if (address(MEM[(v7 << 5) + MEM[64]]) != 0) {
                if (!address(v7)) {
                    assert(v7 < 20);
                    v7 = v9 = MEM[(v7 << 5) + MEM[64]];
                }
                assert(v7 < 20);
                v10 = (address(MEM[(v7 << 5) + MEM[64]])).balance;
                v0 = v0 - (v0 / v2 - v10);
                assert(v7 < 20);
                v11 = address(MEM[(v7 << 5) + MEM[64]]).call().value(v0 / v2 - v10).gas(!(v0 / v2 - v10) * 2300);
                require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
            v7 += 1;
        }
        if (v0) {
            v12 = address(v7).call().value(v0).gas(2300 * !v0);
            require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    }
}

function 0x412b(uint256 varg0, uint256 varg1) private { 
    if (varg0 != varg1.length) {
        assert(varg0 < varg1.length);
        return MEM[128 + varg1[varg0]];
    } else {
        assert(0 < varg1.length);
        v0 = varg1.data;
        return MEM[128 + varg1[0]];
    }
}

function 0x4176(uint256 varg0, uint256 varg1) private { 
    require(address(varg1) != address(varg0), Error(0x657154));
    if (address(varg1) >= address(varg0)) {
    }
    require(address(varg1), Error(0x453054));
    return varg1, varg1;
}

function 0x4228(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 1;
    if (varg1.length > 2) {
        v0 = v2 = 0x4490(varg0, varg1);
    }
    require(1 + v0 <= uint64.max);
    v3 = new uint256[](1 + v0);
    if (1 + v0) {
        CALLDATACOPY(v3.data, msg.data.length, 1 + v0 << 5);
    }
    v4 = v5 = 0;
    while (v4 < v0) {
        assert(varg0 < varg1.length);
        assert(v4 < v3.length);
        v3[v4] = address(MEM[128 + varg1[varg0]]);
        varg0 += 1;
        v4 += 1;
    }
    v6 = 0x412b(varg0, varg1);
    assert(v0 < v3.length);
    v3[v0] = address(v6);
    return varg0, v3;
}

function 0x431b(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = varg0 < varg1.length;
    if (v1) {
        assert(varg0 < varg1.length);
        v0 = 51 == uint8(MEM[varg1[varg0]]);
        if (51 != uint8(MEM[varg1[varg0]])) {
            v0 = v2 = 55 == uint8(MEM[varg1[varg0]]);
        }
    }
    if (v0) {
        assert(varg0 < varg1.length);
        return MEM[64 + varg1[varg0]];
    } else {
        return this;
    }
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, address varg3, address varg4, address varg5) private { 
    v0 = v1 = varg5 == varg4;
    if (v1) {
        v0 = this == varg3;
    }
    if (!v0) {
        return varg1 - varg2;
    } else {
        require(varg1 > varg2, Error(0x453031));
        return varg1 + varg0 - varg2;
    }
}

function 0x4490(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 1;
    assert(varg0 < varg1.length);
    v2 = v3 = 1 + varg0;
    while (v2 < varg1.length) {
        assert(v2 < varg1.length);
        if (address(MEM[96 + varg1[v2]]) != address(MEM[96 + varg1[varg0]])) {
            return v0;
        } else {
            v0 = v0 + 1;
            v2 += 1;
        }
    }
    return v0;
}

function squadV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32) >= 64);
    require(_data.word1 == address(_data.word1));
    require(_data.word2 == address(_data.word2));
    if (amount0Delta > 0) {
        v3 = v4 = address(_data.word1) < address(_data.word2);
    } else {
        v3 = address(_data.word2) < address(_data.word1);
    }
    require(v3, Error(0x653a6969));
    0x13fe(v5, msg.sender, _data.word1);
}

function 0x98f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    v0 = 161 == uint8(varg3);
    if (161 != uint8(varg3)) {
        v0 = v1 = 162 == uint8(varg3);
    }
    if (!v0) {
        if (address(varg4)) {
            v2 = 0;
            MEM[32 + MEM[64]] = address(varg4);
            MEM[32 + MEM[64] + 32] = address(varg4);
            MEM[32 + MEM[64] + 64] = varg2;
            MEM[32 + MEM[64] + 96] = address(varg1);
            MEM[32 + MEM[64] + 128] = 160;
            MEM[32 + MEM[64] + 160] = varg0.length;
            v3 = v4 = 32 + MEM[64] + 192;
            v5 = v6 = varg0.data;
            while (v2 < varg0.length) {
                MEM[v3] = bool(MEM[MEM[v5]]);
                MEM[v3 + 32] = address(MEM[MEM[32 + MEM[v5]]]);
                MEM[v3 + 32 + 32] = address(MEM[MEM[32 + MEM[v5]] + 32]);
                MEM[v3 + 32 + 64] = address(MEM[MEM[32 + MEM[v5]] + 64]);
                MEM[v3 + 32 + 96] = address(MEM[MEM[32 + MEM[v5]] + 96]);
                MEM[v3 + 32 + 128] = uint24(MEM[MEM[32 + MEM[v5]] + 128]);
                MEM[v3 + 32 + 160] = MEM[MEM[32 + MEM[v5]] + 160];
                v5 += 32;
                v3 += 224;
                v2 += 1;
            }
            v7 = new uint256[](v3 - MEM[64] - 32);
            v8 = v9 = 0;
            while (v8 < v3 - MEM[64] - 32) {
                MEM[v8 + v7.data] = MEM[v8 + (MEM[64] + 32)];
                v8 += 32;
            }
            if (v8 > v3 - MEM[64] - 32) {
                MEM[v3 - MEM[64] - 32 + v7.data] = 0;
            }
            require(bool((address(varg4)).code.size));
            v10, /* uint256 */ v11 = address(varg4).unlock(v7).gas(msg.gas);
            require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(MEM[MEM[64]] <= uint64.max);
            require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31);
            v12 = MEM[MEM[64] + MEM[MEM[64]]];
            require(v12 <= uint64.max);
            v13 = new bytes[](v12);
            require(!((v13 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v12)) < v13) | (v13 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v12)) > uint64.max)));
            require(MEM[64] + MEM[MEM[64]] + v12 + 32 <= MEM[64] + RETURNDATASIZE());
            v14 = v15 = 0;
            while (v14 < v12) {
                v13[v14] = MEM[v14 + (MEM[64] + MEM[MEM[64]] + 32)];
                v14 += 32;
            }
            if (v14 > v12) {
                v13[v12] = 0;
            }
            require(v13.data + v13.length - v13.data >= 32);
            require(MEM[v13.data] == uint128(MEM[v13.data]));
            return MEM[v13.data];
        } else {
            v16 = 0x1695(varg0, varg1, varg2, 0x4444c5dc75cb358380d2e3de08a90, 0x4444c5dc75cb358380d2e3de08a90);
            return v16;
        }
    } else if (address(varg4)) {
        v17 = 0x1609(varg4, varg3);
        v18 = 0;
        MEM[32 + MEM[64]] = address(varg4);
        MEM[32 + MEM[64] + 32] = address(v17);
        MEM[32 + MEM[64] + 64] = varg2;
        MEM[32 + MEM[64] + 96] = address(varg1);
        MEM[32 + MEM[64] + 128] = 160;
        MEM[32 + MEM[64] + 160] = varg0.length;
        v19 = v20 = 32 + MEM[64] + 192;
        v21 = v22 = varg0.data;
        while (v18 < varg0.length) {
            MEM[v19] = bool(MEM[MEM[v21]]);
            MEM[v19 + 32] = address(MEM[MEM[32 + MEM[v21]]]);
            MEM[v19 + 32 + 32] = address(MEM[MEM[32 + MEM[v21]] + 32]);
            MEM[v19 + 32 + 64] = address(MEM[MEM[32 + MEM[v21]] + 64]);
            MEM[v19 + 32 + 96] = address(MEM[MEM[32 + MEM[v21]] + 96]);
            MEM[v19 + 32 + 128] = uint24(MEM[MEM[32 + MEM[v21]] + 128]);
            MEM[v19 + 32 + 160] = MEM[MEM[32 + MEM[v21]] + 160];
            v21 += 32;
            v19 += 224;
            v18 += 1;
        }
        v23 = new uint256[](v19 - MEM[64] - 32);
        v24 = v25 = 0;
        while (v24 < v19 - MEM[64] - 32) {
            MEM[v24 + v23.data] = MEM[v24 + (MEM[64] + 32)];
            v24 += 32;
        }
        if (v24 > v19 - MEM[64] - 32) {
            MEM[v19 - MEM[64] - 32 + v23.data] = 0;
        }
        require(bool((address(v17)).code.size));
        v26, /* uint256 */ v27 = address(v17).lock(v23).gas(msg.gas);
        require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(MEM[MEM[64]] <= uint64.max);
        require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31);
        v28 = MEM[MEM[64] + MEM[MEM[64]]];
        require(v28 <= uint64.max);
        v29 = new bytes[](v28);
        require(!((v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v28)) < v29) | (v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v28)) > uint64.max)));
        require(MEM[64] + MEM[MEM[64]] + v28 + 32 <= MEM[64] + RETURNDATASIZE());
        v30 = v31 = 0;
        while (v30 < v28) {
            v29[v30] = MEM[v30 + (MEM[64] + MEM[MEM[64]] + 32)];
            v30 += 32;
        }
        if (v30 > v28) {
            v29[v28] = 0;
        }
        require(v29.data + v29.length - v29.data >= 32);
        require(MEM[v29.data] == uint128(MEM[v29.data]));
        return MEM[v29.data];
    } else {
        v32 = 0x1609(0x4444c5dc75cb358380d2e3de08a90, varg3);
        v33 = 0x1695(varg0, varg1, varg2, v32, 0x4444c5dc75cb358380d2e3de08a90);
        return v33;
    }
}

function lockAcquired(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 160);
    require(rawData.word1 == address(rawData.word1));
    require(rawData.word2 == address(rawData.word2));
    require(rawData.word4 == address(rawData.word4));
    require(rawData.word5 <= uint64.max);
    require(4 + rawData + 32 + rawData.word5 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[4 + rawData + 32 + rawData.word5] <= uint64.max);
    v1 = new uint256[](msg.data[4 + rawData + 32 + rawData.word5]);
    require(!((v1 + ((msg.data[4 + rawData + 32 + rawData.word5] << 5) + 32) < v1) | (v1 + ((msg.data[4 + rawData + 32 + rawData.word5] << 5) + 32) > uint64.max)));
    v2 = v3 = v1.data;
    v4 = v5 = 32 + (4 + rawData + 32 + rawData.word5);
    require(4 + rawData + 32 + msg.data[4 + rawData] >= 32 + (4 + rawData + 32 + rawData.word5 + msg.data[4 + rawData + 32 + rawData.word5] * 224));
    v6 = v7 = 0;
    while (v6 < msg.data[4 + rawData + 32 + rawData.word5]) {
        require(4 + rawData + 32 + msg.data[4 + rawData] - v4 >= 224, v7, v7);
        v8 = new struct(2);
        require(!((v8 + 64 < v8) | (v8 + 64 > uint64.max)));
        require(msg.data[v4] == bool(msg.data[v4]));
        v8.word0 = msg.data[v4];
        require(4 + rawData + 32 + msg.data[4 + rawData] - (v4 + 32) >= 192);
        v9 = new struct(6);
        require(!((v9 + 192 < v9) | (v9 + 192 > uint64.max)));
        require(msg.data[v4 + 32] == address(msg.data[v4 + 32]));
        v9.word0 = msg.data[v4 + 32];
        require(msg.data[v4 + 32 + 32] == address(msg.data[v4 + 32 + 32]));
        v9.word1 = msg.data[v4 + 32 + 32];
        require(msg.data[v4 + 32 + 64] == address(msg.data[v4 + 32 + 64]));
        v9.word2 = msg.data[v4 + 32 + 64];
        require(msg.data[v4 + 32 + 96] == address(msg.data[v4 + 32 + 96]));
        v9.word3 = msg.data[v4 + 32 + 96];
        require(msg.data[v4 + 32 + 128] == uint24(msg.data[v4 + 32 + 128]));
        v9.word4 = msg.data[v4 + 32 + 128];
        v9.word5 = msg.data[v4 + 32 + 160];
        v8.word1 = v9;
        MEM[v2] = v8;
        v2 += 32;
        v4 += 224;
        v6 += 1;
    }
    v10 = 0x1695(v1, rawData.word4, rawData.word3, rawData.word2, rawData.word1);
    v11 = new uint256[](32);
    v12 = v13 = 0;
    while (v12 < 32) {
        MEM[v12 + v11.data] = MEM[v12 + (MEM[64] + 32)];
        v12 += 32;
    }
    if (v12 > 32) {
        MEM[32 + v11.data] = 0;
    }
    return v11, v14, uint128(v10);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 160);
    require(rawData.word1 == address(rawData.word1));
    require(rawData.word2 == address(rawData.word2));
    require(rawData.word4 == address(rawData.word4));
    require(rawData.word5 <= uint64.max);
    require(4 + rawData + 32 + rawData.word5 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[4 + rawData + 32 + rawData.word5] <= uint64.max);
    v1 = new uint256[](msg.data[4 + rawData + 32 + rawData.word5]);
    require(!((v1 + ((msg.data[4 + rawData + 32 + rawData.word5] << 5) + 32) < v1) | (v1 + ((msg.data[4 + rawData + 32 + rawData.word5] << 5) + 32) > uint64.max)));
    v2 = v3 = v1.data;
    v4 = v5 = 32 + (4 + rawData + 32 + rawData.word5);
    require(4 + rawData + 32 + msg.data[4 + rawData] >= 32 + (4 + rawData + 32 + rawData.word5 + msg.data[4 + rawData + 32 + rawData.word5] * 224));
    v6 = v7 = 0;
    while (v6 < msg.data[4 + rawData + 32 + rawData.word5]) {
        require(4 + rawData + 32 + msg.data[4 + rawData] - v4 >= 224, v7, v7);
        v8 = new struct(2);
        require(!((v8 + 64 < v8) | (v8 + 64 > uint64.max)));
        require(msg.data[v4] == bool(msg.data[v4]));
        v8.word0 = msg.data[v4];
        require(4 + rawData + 32 + msg.data[4 + rawData] - (v4 + 32) >= 192);
        v9 = new struct(6);
        require(!((v9 + 192 < v9) | (v9 + 192 > uint64.max)));
        require(msg.data[v4 + 32] == address(msg.data[v4 + 32]));
        v9.word0 = msg.data[v4 + 32];
        require(msg.data[v4 + 32 + 32] == address(msg.data[v4 + 32 + 32]));
        v9.word1 = msg.data[v4 + 32 + 32];
        require(msg.data[v4 + 32 + 64] == address(msg.data[v4 + 32 + 64]));
        v9.word2 = msg.data[v4 + 32 + 64];
        require(msg.data[v4 + 32 + 96] == address(msg.data[v4 + 32 + 96]));
        v9.word3 = msg.data[v4 + 32 + 96];
        require(msg.data[v4 + 32 + 128] == uint24(msg.data[v4 + 32 + 128]));
        v9.word4 = msg.data[v4 + 32 + 128];
        v9.word5 = msg.data[v4 + 32 + 160];
        v8.word1 = v9;
        MEM[v2] = v8;
        v2 += 32;
        v4 += 224;
        v6 += 1;
    }
    v10 = 0x1695(v1, rawData.word4, rawData.word3, rawData.word2, rawData.word1);
    v11 = new uint256[](32);
    v12 = v13 = 0;
    while (v12 < 32) {
        MEM[v12 + v11.data] = MEM[v12 + (MEM[64] + 32)];
        v12 += 32;
    }
    if (v12 > 32) {
        MEM[32 + v11.data] = 0;
    }
    return v11, v14, uint128(v10);
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(data.word1 == address(data.word1));
    require(data.word2 == address(data.word2));
    if (amount0Delta > 0) {
        v3 = v4 = address(data.word1) < address(data.word2);
    } else {
        v3 = address(data.word2) < address(data.word1);
    }
    require(v3, Error(0x653a6969));
    0x13fe(v5, msg.sender, data.word1);
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(data.word1 == address(data.word1));
    require(data.word2 == address(data.word2));
    if (amount0Delta > 0) {
        v3 = v4 = address(data.word1) < address(data.word2);
    } else {
        v3 = address(data.word2) < address(data.word1);
    }
    require(v3, Error(0x653a6969));
    0x13fe(v5, msg.sender, data.word1);
}

function 0xd43(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    assert(0 < varg3.length);
    require(bool((address(MEM[128 + varg3[0]])).code.size));
    v0, /* uint256 */ varg2 = address(MEM[128 + varg3[0]]).balanceOf(_withdraw).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (varg2 > varg2) {
    }
    assert(0 < varg3.length);
    v1 = v2 = 0;
    while (v1 < 100) {
        MEM[v1 + MEM[64]] = MEM[v1 + (MEM[64] + 32)];
        v1 += 32;
    }
    if (v1 > 100) {
        MEM[100 + MEM[64]] = 0;
    }
    v3 = v4, /* uint256 */ v5, /* uint256 */ v6 = address(MEM[128 + varg3[0]]).transferFrom(_withdraw, address(this), varg2).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v7 = v8 = 96;
    } else {
        v7 = v9 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v9.data, 0, RETURNDATASIZE());
    }
    if (v4) {
        v3 = v10 = !MEM[v7];
        if (MEM[v7]) {
            require(32 + v7 + MEM[v7] - (32 + v7) >= 32);
            v3 = MEM[32 + v7];
            require(v3 == bool(v3));
        }
    }
    require(v3, Error('B_STF'));
    0xfc9(varg2, varg3);
    assert(0 < varg3.length);
    v11 = varg3.data;
    require(bool((address(MEM[128 + varg3[0]])).code.size));
    v12, /* uint256 */ v13 = address(MEM[128 + varg3[0]]).balanceOf(address(this)).gas(msg.gas);
    require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v13 > varg2, Error(17733));
    if (uint8(varg0 >> 248)) {
        assert(0 < varg3.length);
        v14 = varg3.data;
        if (v13 - varg2 > uint80(varg0 >> 112)) {
            v15 = uint48(varg0 >> 200);
            if (v15 > 95) {
                v15 = v16 = 95;
            }
            v17 = v15 * (v13 - varg2 - uint80(varg0 >> 112)) / 100;
            if (v17) {
                if (0xdac17f958d2ee523a2206206994597c13d831ec7 != address(MEM[128 + varg3[0]])) {
                    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(MEM[128 + varg3[0]])) {
                        if (v17 > this.balance) {
                            if (v13 < 10 ** 17 + v17) {
                                require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                v18 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v17).gas(msg.gas);
                                require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                v13 = v19 = v13 - v17;
                            } else {
                                require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                v20 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v17 + 10 ** 17).gas(msg.gas);
                                require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                v13 = v21 = v13 - (10 ** 17 + v17);
                            }
                        }
                    }
                } else {
                    v22 = 0x21ff(1, v17, 0x4e68ccd3e89f51c3074ca5072bbac773960dfa36);
                    if (v22) {
                        if (v22 > this.balance) {
                            0x1cb6(v22 + 10 ** 17, this, _withdraw, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                            v23 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v22 + 10 ** 17).gas(msg.gas);
                            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        }
                    }
                }
            }
        }
    }
    assert(0 < varg3.length);
    v24 = v25 = 0;
    while (v24 < 68) {
        MEM[v24 + MEM[64]] = MEM[v24 + (MEM[64] + 32)];
        v24 += 32;
    }
    if (v24 > 68) {
        MEM[68 + MEM[64]] = 0;
    }
    v26 = v27, /* uint256 */ v28, /* uint256 */ v29 = address(MEM[128 + varg3[0]]).transfer(_withdraw, v13).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v30 = v31 = 96;
    } else {
        v30 = v32 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v32.data, 0, RETURNDATASIZE());
    }
    if (v27) {
        v26 = v33 = !MEM[v30];
        if (MEM[v30]) {
            require(32 + v30 + MEM[v30] - (32 + v30) >= 32);
            v26 = MEM[32 + v30];
            require(v26 == bool(v26));
        }
    }
    require(v26, Error(0x425f5354));
    return ;
}

function 0x09d6276d(struct(4) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback[address(tx.origin)], Error(0x653a7531));
    require(4 + varg0 + 32 + msg.data[4 + varg0] - (4 + varg0 + 32) >= 96);
    require(varg0.word1 <= uint64.max);
    require(4 + varg0 + 32 + varg0.word1 + 31 < 4 + varg0 + 32 + msg.data[4 + varg0]);
    require(msg.data[4 + varg0 + 32 + varg0.word1] <= uint64.max);
    v1 = new uint256[](msg.data[4 + varg0 + 32 + varg0.word1]);
    require(!((v1 + ((msg.data[4 + varg0 + 32 + varg0.word1] << 5) + 32) < v1) | (v1 + ((msg.data[4 + varg0 + 32 + varg0.word1] << 5) + 32) > uint64.max)));
    v2 = v3 = v1.data;
    v4 = v5 = 32 + (4 + varg0 + 32 + varg0.word1);
    require(4 + varg0 + 32 + msg.data[4 + varg0] >= 32 + (4 + varg0 + 32 + varg0.word1 + msg.data[4 + varg0 + 32 + varg0.word1] * 160));
    v6 = v7 = 0;
    while (v6 < msg.data[4 + varg0 + 32 + varg0.word1]) {
        require(4 + varg0 + 32 + msg.data[4 + varg0] - v4 >= 160, v7, v7);
        v8 = new struct(5);
        require(!((v8 + 160 < v8) | (v8 + 160 > uint64.max)));
        require(msg.data[v4] == uint8(msg.data[v4]));
        v8.word0 = msg.data[v4];
        v8.word1 = msg.data[v4 + 32];
        require(msg.data[v4 + 64] == address(msg.data[v4 + 64]));
        v8.word2 = msg.data[v4 + 64];
        require(msg.data[96 + v4] == address(msg.data[96 + v4]));
        v8.word3 = msg.data[96 + v4];
        require(msg.data[128 + v4] == address(msg.data[128 + v4]));
        v8.word4 = msg.data[128 + v4];
        MEM[v2] = v8;
        v2 += 32;
        v4 += 160;
        v6 += 1;
    }
    v9 = v10 = varg0.word2;
    assert(0 < v1.length);
    v11 = v1.data;
    if (address(MEM[128 + v1[0]]) != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
        assert(0 < v1.length);
        v12 = v1.data;
        require(bool((address(MEM[128 + v1[0]])).code.size));
        v13, /* uint256 */ v9 = address(MEM[128 + v1[0]]).balanceOf(address(0x4444c5dc75cb358380d2e3de08a90)).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v9 <= v10) {
        }
        assert(0 < v1.length);
        v14 = v1.data;
        if (v9) {
            require(bool((address(0x4444c5dc75cb358380d2e3de08a90)).code.size));
            v15 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(MEM[128 + v1[0]]), address(this), v9).gas(msg.gas);
            require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    } else {
        v9 = v16 = 0x4444c5dc75cb358380d2e3de08a90.balance;
        if (v16 <= v10) {
        }
        0xf65(v9, this, 0, 0x4444c5dc75cb358380d2e3de08a90);
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v17 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v9).gas(msg.gas);
        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v18 = v19 = 0;
    while (v18 < v1.length) {
        assert(v18 < v1.length);
        if (address(MEM[96 + v1[v18]]) == address(0x4444c5dc75cb358380d2e3de08a90)) {
            assert(v18 < v1.length);
            MEM[96 + v1[v18]] = address(0x0);
        }
        v18 += 1;
    }
    0xfc9(v9, v1);
    assert(0 < v1.length);
    v20 = v1.data;
    require(bool((address(MEM[128 + v1[0]])).code.size));
    v21, /* uint256 */ v22 = address(MEM[128 + v1[0]]).balanceOf(address(this)).gas(msg.gas);
    require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v22 > v9, Error(17733));
    assert(0 < v1.length);
    v23 = v1.data;
    if (address(MEM[128 + v1[0]]) != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
        assert(0 < v1.length);
        v24 = v1.data;
        if (v9) {
            require(bool((address(0x4444c5dc75cb358380d2e3de08a90)).code.size));
            v25 = address(0x4444c5dc75cb358380d2e3de08a90).sync(address(MEM[128 + v1[0]])).gas(msg.gas);
            require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (address(MEM[128 + v1[0]])) {
                0x13fe(v9, 0x4444c5dc75cb358380d2e3de08a90, MEM[128 + v1[0]]);
                require(bool((address(0x4444c5dc75cb358380d2e3de08a90)).code.size));
                v26, /* uint256 */ v27 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
                require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            } else {
                require(bool((address(0x4444c5dc75cb358380d2e3de08a90)).code.size));
                v28, /* uint256 */ v29 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v9).gas(msg.gas);
                require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            }
        }
    } else {
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v30 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v9).gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        0xfea(v9, 0, 0x4444c5dc75cb358380d2e3de08a90);
    }
    v31 = v32 = v22 - v9;
    if (uint8(varg0.word3 >> 248)) {
        assert(0 < v1.length);
        v33 = v1.data;
        if (v32 - 0 > uint80(varg0.word3 >> 112)) {
            v34 = uint48(varg0.word3 >> 200);
            if (v34 > 95) {
                v34 = v35 = 95;
            }
            v36 = v34 * (v32 - 0 - uint80(varg0.word3 >> 112)) / 100;
            if (v36) {
                if (0xdac17f958d2ee523a2206206994597c13d831ec7 != address(MEM[128 + v1[0]])) {
                    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(MEM[128 + v1[0]])) {
                        if (v36 > this.balance) {
                            if (v32 < 10 ** 17 + v36) {
                                require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                v37 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v36).gas(msg.gas);
                                require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                v31 = v38 = v32 - v36;
                            } else {
                                require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                v39 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v36 + 10 ** 17).gas(msg.gas);
                                require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                v31 = v32 - (10 ** 17 + v36);
                            }
                        }
                    }
                } else {
                    v40 = 0x21ff(1, v36, 0x4e68ccd3e89f51c3074ca5072bbac773960dfa36);
                    if (v40) {
                        if (v40 > this.balance) {
                            0x1cb6(v40 + 10 ** 17, this, _withdraw, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                            v41 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v40 + 10 ** 17).gas(msg.gas);
                            require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        }
                    }
                }
            }
        }
    }
    assert(0 < v1.length);
    v42 = v1.data;
    v43 = v44 = 0;
    while (v43 < 68) {
        MEM[v43 + MEM[64]] = MEM[v43 + (MEM[64] + 32)];
        v43 += 32;
    }
    if (v43 > 68) {
        MEM[68 + MEM[64]] = 0;
    }
    v45 = v46, /* uint256 */ v47, /* uint256 */ v48 = address(MEM[128 + v1[0]]).transfer(_withdraw, v31).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v49 = v50 = 96;
    } else {
        v49 = v51 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v51.data, 0, RETURNDATASIZE());
    }
    if (v46) {
        v45 = v52 = !MEM[v49];
        if (MEM[v49]) {
            require(32 + v49 + MEM[v49] - (32 + v49) >= 32);
            v45 = MEM[32 + v49];
            require(v45 == bool(v45));
        }
    }
    require(v45, Error(0x425f5354));
}

function 0xf65(uint256 varg0, address varg1, address varg2, address varg3) private { 
    if (!varg0) {
        return ;
    } else {
        require(bool(varg3.code.size));
        v0 = varg3.take(varg2, varg1, varg0).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    }
}

function 0xfc9(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    while (v0 < varg1.length) {
        assert(v0 < varg1.length);
        v2 = v3 = 51 == uint8(MEM[varg1[v0]]);
        if (51 != uint8(MEM[varg1[v0]])) {
            v2 = 55 == uint8(MEM[varg1[v0]]);
        }
        if (!v2) {
            assert(v0 < varg1.length);
            v4 = v5 = MEM[varg1[v0]];
            v6 = v7 = uint8(v5) > 50;
            if (v7) {
                v6 = uint8(v5) < 100;
            }
            if (!v6) {
                v8 = v9 = uint8(v5) > 100;
                if (v9) {
                    v8 = uint8(v5) < 150;
                }
                if (!v8) {
                    v10 = v11 = uint8(v5) > 150;
                    if (v11) {
                        v10 = uint8(v5) < 200;
                    }
                    if (v10) {
                        v4 = 11;
                    }
                } else {
                    v4 = v12 = 11;
                }
            } else {
                v4 = v13 = 9;
            }
            if (uint8(v4) != uint8(9)) {
                assert(v0 < varg1.length);
                if (uint8(MEM[varg1[v0]]) != uint8(105)) {
                    assert(v0 < varg1.length);
                    v14 = v15 = uint8(MEM[varg1[v0]]) == uint8(101);
                    if (uint8(MEM[varg1[v0]]) != uint8(101)) {
                        assert(v0 < varg1.length);
                        v14 = uint8(MEM[varg1[v0]]) == uint8(102);
                    }
                    if (!v14) {
                        assert(v0 < varg1.length);
                        v16 = v17 = uint8(MEM[varg1[v0]]) == uint8(103);
                        if (uint8(MEM[varg1[v0]]) != uint8(103)) {
                            assert(v0 < varg1.length);
                            v16 = uint8(MEM[varg1[v0]]) == uint8(104);
                        }
                        if (!v16) {
                            assert(v0 < varg1.length);
                            v18 = v19 = uint8(MEM[varg1[v0]]) == uint8(151);
                            if (uint8(MEM[varg1[v0]]) != uint8(151)) {
                                assert(v0 < varg1.length);
                                v18 = v20 = uint8(MEM[varg1[v0]]) == uint8(152);
                            }
                            if (!v18) {
                                assert(v0 < varg1.length);
                                v18 = v21 = uint8(MEM[varg1[v0]]) == uint8(161);
                            }
                            if (!v18) {
                                assert(v0 < varg1.length);
                                v18 = uint8(MEM[varg1[v0]]) == uint8(162);
                            }
                            require(v18, Error(0x543030));
                            varg0, v0 = 0x3b40(varg0, v0);
                            // Unknown jump to Block 0xfe1. Refer to 3-address code (TAC);
                        } else {
                            assert(v0 < varg1.length);
                            assert(v0 < varg1.length);
                            v22 = 0x412b(1 + v0, varg1);
                            v23 = 0x431b(1 + v0, varg1);
                            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = address(v23);
                            require(bool((address(v22)).code.size));
                            v24 = address(v22).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                            if (bool(v24)) {
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                MEM[MEM[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                MEM[4 + MEM[64]] = address(MEM[96 + varg1[v0]]);
                                MEM[4 + MEM[64] + 32] = varg0;
                                require(bool((address(MEM[128 + varg1[v0]])).code.size));
                                v25 = address(MEM[128 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                if (bool(v25)) {
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(MEM[MEM[64]] == bool(MEM[MEM[64]]));
                                    assert(v0 < varg1.length);
                                    if (uint8(MEM[varg1[v0]]) != uint8(103)) {
                                        assert(v0 < varg1.length);
                                        if (uint8(MEM[varg1[v0]]) == uint8(104)) {
                                            v26 = v27 = MEM[64];
                                            MEM[v27] = 0;
                                            MEM[v27 + 32] = 0;
                                            MEM[v27 + 64] = 0;
                                            MEM[v27 + 96] = 0;
                                            MEM[v27 + 128] = 0;
                                            MEM[v27 + 160] = 0;
                                            MEM[v27 + 192] = 0;
                                            MEM[v27] = address(MEM[128 + varg1[v0]]);
                                            MEM[v27 + 32] = address(v22);
                                            v28 = v29 = 14948;
                                            assert(v0 < varg1.length);
                                        }
                                    } else {
                                        v26 = v30 = MEM[64];
                                        MEM[v30] = 0;
                                        MEM[v30 + 32] = 0;
                                        MEM[v30 + 64] = 0;
                                        MEM[v30 + 96] = 0;
                                        MEM[v30 + 128] = 0;
                                        MEM[v30 + 160] = 0;
                                        MEM[v30 + 192] = 0;
                                        MEM[v30 + 224] = 0;
                                        MEM[v30] = address(MEM[128 + varg1[v0]]);
                                        MEM[v30 + 32] = address(v22);
                                        v28 = v31 = 14677;
                                        assert(v0 < varg1.length);
                                    }
                                    // Unknown jump to Block ['0x3955B0x210cB0xfd7', '0x3a64B0x210cB0xfd7']. Refer to 3-address code (TAC);
                                    MEM[v26 + 64] = uint24(MEM[32 + varg1[v0]] >> 40);
                                    MEM[v26 + 96] = address(v23);
                                    MEM[v26 + 128] = block.timestamp + 60;
                                    MEM[v26 + 160] = varg0;
                                    MEM[v26 + 192] = 1;
                                    MEM[v26 + 224] = 0;
                                    MEM[MEM[64]] = 0x414bf38900000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = address(MEM[v26]);
                                    MEM[4 + MEM[64] + 32] = address(MEM[v26 + 32]);
                                    MEM[4 + MEM[64] + 64] = uint24(MEM[v26 + 64]);
                                    MEM[4 + MEM[64] + 96] = address(MEM[v26 + 96]);
                                    MEM[4 + MEM[64] + 128] = MEM[v26 + 128];
                                    MEM[4 + MEM[64] + 160] = MEM[v26 + 160];
                                    MEM[4 + MEM[64] + 192] = MEM[v26 + 192];
                                    MEM[4 + MEM[64] + 224] = address(MEM[v26 + 224]);
                                    require(bool((address(MEM[96 + varg1[v0]])).code.size));
                                    v32 = address(MEM[96 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 260], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v32)) {
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                    MEM[v26 + 64] = uint24(MEM[32 + varg1[v0]] >> 40);
                                    MEM[v26 + 96] = address(v23);
                                    MEM[v26 + 128] = varg0;
                                    MEM[v26 + 160] = 1;
                                    MEM[v26 + 192] = 0;
                                    MEM[MEM[64]] = 0x4e45aaf00000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = address(MEM[v26]);
                                    MEM[4 + MEM[64] + 32] = address(MEM[v26 + 32]);
                                    MEM[4 + MEM[64] + 64] = uint24(MEM[v26 + 64]);
                                    MEM[4 + MEM[64] + 96] = address(MEM[v26 + 96]);
                                    MEM[4 + MEM[64] + 128] = MEM[v26 + 128];
                                    MEM[4 + MEM[64] + 160] = MEM[v26 + 160];
                                    MEM[4 + MEM[64] + 192] = address(MEM[v26 + 192]);
                                    require(bool((address(MEM[96 + varg1[v0]])).code.size));
                                    v33 = address(MEM[96 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 228], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v33)) {
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = address(v23);
                                    require(bool((address(v22)).code.size));
                                    v34 = address(v22).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v34)) {
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        v0 += 1;
                                        varg0 = v35 = MEM[MEM[64]] - MEM[MEM[64]];
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        varg0, v0 = 0x3299(varg0, v0, varg1);
                    }
                } else {
                    assert(v0 < varg1.length);
                    v36 = 0x412b(1 + v0, varg1);
                    v37 = 0x431b(v0 + 1, varg1);
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = address(v37);
                    require(bool((address(v36)).code.size));
                    v38 = address(v36).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                    if (bool(v38)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        assert(v0 < varg1.length);
                        if (address(MEM[128 + varg1[v0]]) < address(v36)) {
                            v39 = v40 = 0x1000276a4;
                        } else {
                            v39 = v41 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                        MEM[32 + MEM[64]] = address(MEM[128 + varg1[v0]]);
                        MEM[32 + MEM[64] + 32] = address(v36);
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = address(v37);
                        MEM[4 + MEM[64] + 32] = address(MEM[128 + varg1[v0]]) < address(v36);
                        MEM[4 + MEM[64] + 64] = varg0;
                        MEM[4 + MEM[64] + 96] = address(v39);
                        MEM[4 + MEM[64] + 128] = 160;
                        MEM[4 + MEM[64] + 160] = 64;
                        v42 = v43 = 0;
                        while (v42 < 64) {
                            MEM[v42 + (4 + MEM[64] + 160 + 32)] = MEM[v42 + (MEM[64] + 32)];
                            v42 += 32;
                        }
                        if (v42 > 64) {
                            MEM[64 + (4 + MEM[64] + 160 + 32)] = 0;
                        }
                        require(bool((address(MEM[64 + varg1[v0]])).code.size));
                        v44 = address(MEM[64 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 260], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                        if (bool(v44)) {
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = address(v37);
                            require(bool((address(v36)).code.size));
                            v45 = address(v36).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                            if (bool(v45)) {
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                v0 += 1;
                                varg0 = v46 = MEM[MEM[64]] - MEM[MEM[64]];
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
            } else {
                varg0, v0 = 0x2bb6(varg0, v0, varg1);
            }
        } else {
            assert(v0 < varg1.length);
            v47 = 0x412b(1 + v0, varg1);
            v48 = v49 = !v0;
            if (v0) {
                assert(v0 - 1 < varg1.length);
                v48 = uint8(MEM[varg1[v0 - 1]]) < 50;
            }
            if (v48) {
                assert(v0 < varg1.length);
                MEM[36 + MEM[64]] = address(MEM[64 + varg1[v0]]);
                MEM[36 + MEM[64] + 32] = varg0;
                MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                v50 = v51 = 0;
                while (v50 < 68) {
                    MEM[v50 + MEM[64]] = MEM[v50 + (MEM[64] + 32)];
                    v50 += 32;
                }
                if (v50 > 68) {
                    MEM[68 + MEM[64]] = 0;
                }
                v52 = v53 = address(MEM[128 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v54 = v55 = 96;
                } else {
                    v54 = v56 = MEM[64];
                    MEM[64] = v56 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    MEM[v56] = RETURNDATASIZE();
                    RETURNDATACOPY(v56 + 32, 0, RETURNDATASIZE());
                }
                if (v53) {
                    v52 = v57 = !MEM[v54];
                    if (MEM[v54]) {
                        require(32 + v54 + MEM[v54] - (32 + v54) >= 32);
                        v52 = MEM[32 + v54];
                        require(v52 == bool(v52));
                    }
                }
                require(v52, Error(0x425f5354));
            }
            assert(v0 < varg1.length);
            v58, v59 = 0x4176(v47, MEM[128 + varg1[v0]]);
            require(bool((address(MEM[64 + varg1[v0]])).code.size));
            v60 = address(MEM[64 + varg1[v0]]).getReserves().gas(msg.gas);
            if (bool(v60)) {
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
                require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                require(MEM[MEM[64] + 64] == uint32(MEM[MEM[64] + 64]));
                v61 = v62 = uint112(MEM[MEM[64] + 32]);
                v61 = v63 = uint112(MEM[MEM[64]]);
                if (address(MEM[128 + varg1[v0]]) != address(v59)) {
                }
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = address(MEM[64 + varg1[v0]]);
                require(bool((address(MEM[128 + varg1[v0]])).code.size));
                v64 = address(MEM[128 + varg1[v0]]).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                if (bool(v64)) {
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(v61 <= MEM[MEM[64]], Error('SafeMath#sub: UNDERFLOW'));
                    assert(v0 < varg1.length);
                    if (uint8(MEM[varg1[v0]]) != uint8(55)) {
                        assert(v0 < varg1.length);
                        MEM[MEM[64]] = 0x54d50d400000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = MEM[MEM[64]] - v61;
                        MEM[4 + MEM[64] + 32] = v61;
                        MEM[4 + MEM[64] + 64] = v61;
                        require(bool((address(MEM[96 + varg1[v0]])).code.size));
                        v65 = address(MEM[96 + varg1[v0]]).staticcall(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                        if (bool(v65)) {
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            varg0 = v66 = MEM[MEM[64]];
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    } else {
                        MEM[MEM[64]] = 0xf140a35a00000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = MEM[MEM[64]] - v61;
                        MEM[4 + MEM[64] + 32] = address(MEM[128 + varg1[v0]]);
                        require(bool((address(MEM[64 + varg1[v0]])).code.size));
                        v67 = address(MEM[64 + varg1[v0]]).staticcall(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                        if (bool(v67)) {
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            varg0 = v68 = MEM[MEM[64]];
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                    if (address(MEM[128 + varg1[v0]]) == address(v59)) {
                        varg0 = v69 = 0;
                    } else {
                        varg0 = v70 = 0;
                    }
                    v0 = v0 + 1;
                    if (v0 < varg1.length) {
                        assert(v0 < varg1.length);
                        v71 = v72 = 51 == uint8(MEM[varg1[v0]]);
                        if (51 != uint8(MEM[varg1[v0]])) {
                            v71 = 55 == uint8(MEM[varg1[v0]]);
                        }
                        if (!v71) {
                            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = address(this);
                            require(bool((address(v47)).code.size));
                            v73 = address(v47).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                            if (bool(v73)) {
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                MEM[MEM[64] + 36] = varg0;
                                MEM[MEM[64] + 36 + 32] = varg0;
                                MEM[MEM[64] + 36 + 64] = address(this);
                                MEM[MEM[64] + 36 + 96] = 128;
                                MEM[MEM[64] + 36 + 128] = 0;
                                v74 = v75 = 0;
                                while (v74 < 0) {
                                    MEM[v74 + (MEM[64] + 36 + 128 + 32)] = MEM[v74 + (MEM[64] + 32)];
                                    v74 += 32;
                                }
                                if (v74 > 0) {
                                    MEM[MEM[64] + 36 + 128 + 32] = 0;
                                }
                                require(bool((address(MEM[64 + varg1[v0]])).code.size));
                                v76 = address(MEM[64 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (bool(v76)) {
                                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + MEM[64]] = address(this);
                                    require(bool((address(v47)).code.size));
                                    v77 = address(v47).staticcall(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                                    if (bool(v77)) {
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        varg0 = v78 = MEM[MEM[64]] - MEM[MEM[64]];
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            assert(v0 < varg1.length);
                            require(0 <= uint64.max);
                            v79 = new bytes[](0);
                            if (0) {
                                CALLDATACOPY(v79.data, msg.data.length, 0);
                                v80 = v79.data;
                            }
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = varg0;
                            MEM[4 + MEM[64] + 32] = varg0;
                            MEM[4 + MEM[64] + 64] = address(MEM[64 + varg1[v0]]);
                            MEM[4 + MEM[64] + 96] = 128;
                            MEM[4 + MEM[64] + 128] = v79.length;
                            v81 = v82 = 0;
                            while (v81 < v79.length) {
                                MEM[v81 + (4 + MEM[64] + 128 + 32)] = v79[v81];
                                v81 += 32;
                            }
                            if (v81 > v79.length) {
                                MEM[v79.length + (4 + MEM[64] + 128 + 32)] = 0;
                            }
                            require(bool((address(MEM[64 + varg1[v0]])).code.size));
                            v83 = address(MEM[64 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 164], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!bool(v83)) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 36] = varg0;
                        MEM[MEM[64] + 36 + 32] = varg0;
                        MEM[MEM[64] + 36 + 64] = address(this);
                        MEM[MEM[64] + 36 + 96] = 128;
                        MEM[MEM[64] + 36 + 128] = 0;
                        v84 = v85 = 0;
                        while (v84 < 0) {
                            MEM[v84 + (MEM[64] + 36 + 128 + 32)] = MEM[v84 + (MEM[64] + 32)];
                            v84 += 32;
                        }
                        if (v84 > 0) {
                            MEM[MEM[64] + 36 + 128 + 32] = 0;
                        }
                        require(bool((address(MEM[64 + varg1[v0]])).code.size));
                        v86 = address(MEM[64 + varg1[v0]]).call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (!bool(v86)) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
    }
    return ;
}

function 0xfea(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (!varg0) {
        return ;
    } else {
        require(bool((address(varg2)).code.size));
        v0 = address(varg2).sync(address(varg1)).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (address(varg1)) {
            0x13fe(varg0, varg2, varg1);
            require(bool((address(varg2)).code.size));
            v1, /* uint256 */ v2 = address(varg2).settle().gas(msg.gas);
            require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            return ;
        } else {
            require(bool((address(varg2)).code.size));
            v3, /* uint256 */ v4 = address(varg2).settle().value(varg0).gas(msg.gas);
            require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            return ;
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (msg.data.length) {
            exit;
        } else {
            receive();
        }
    } else if (0x9883519d > function_selector >> 224) {
        if (0x354bb429 > function_selector >> 224) {
            if (0x9d6276d == function_selector >> 224) {
                0x09d6276d();
            } else if (0x23a69e75 == function_selector >> 224) {
                pancakeV3SwapCallback(int256,int256,bytes);
            } else if (0x2c8958f6 == function_selector >> 224) {
                algebraSwapCallback(int256,int256,bytes);
            } else {
                exit;
            }
        } else if (0x354bb429 == function_selector >> 224) {
            0x354bb429();
        } else if (0x38782620 == function_selector >> 224) {
            0x38782620();
        } else if (0x4d33678a == function_selector >> 224) {
            0x4d33678a();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else {
            exit;
        }
    } else if (0xc4e21d86 > function_selector >> 224) {
        if (0x9883519d == function_selector >> 224) {
            0x9883519d();
        } else if (0xab6291fe == function_selector >> 224) {
            lockAcquired(bytes);
        } else if (0xb51a9192 == function_selector >> 224) {
            0xb51a9192();
        } else {
            exit;
        }
    } else if (0xc4e21d86 == function_selector >> 224) {
        squadV3SwapCallback(int256,int256,bytes);
    } else if (0xd2c499d1 == function_selector >> 224) {
        0xd2c499d1();
    } else if (0xf3fef3a3 == function_selector >> 224) {
        withdraw(address,uint256);
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else {
        exit;
    }
}
