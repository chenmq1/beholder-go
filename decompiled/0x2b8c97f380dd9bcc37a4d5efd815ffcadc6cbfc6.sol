// Decompiled by library.dedaub.com
// 2025.12.14 15:03 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 tstor_cd1e9517bb0cb8d0d5cde893; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 ___function_selector__; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



function 0x10a3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0, v1 = 0x1a2e(varg0);
    if (!varg1) {
        v2 = v3 = address(v0);
    } else {
        v2 = v4 = address(v1);
    }
    if (address(v2) - address(v5.word0)) {
        if (address(v2) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v6 = v7 = 0x89b(address(v2), this);
        } else {
            v6 = this.balance;
        }
        if (varg3 >= v6) {
            v8 = 0x2e13(v6, uint16(varg2));
            return v8, varg4, varg2, varg1, varg0;
        } else {
            return varg3, varg4, varg2, varg1, varg0;
        }
    } else {
        if (varg3 >= v5.word1) {
            varg3 = v9 = 0x2e13(v5.word1, uint16(varg2));
        }
        v10 = _SafeSub(v5.word1, varg3);
        v5.word1 = v10;
        return varg3, varg4, varg2, varg1, varg0;
    }
}

function 0x11cb(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (address(varg4) - address(v0.word0)) {
        if (address(varg4) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v1 = v2 = 0x89b(address(varg4), this);
        } else {
            v1 = this.balance;
        }
        if (varg3 >= v1) {
            v3 = 0x2e13(v1, uint16(varg2));
            return v3, varg4, varg5, varg2, varg1, varg0;
        } else {
            return varg3, varg4, varg5, varg2, varg1, varg0;
        }
    } else {
        if (varg3 >= v0.word1) {
            varg3 = v4 = 0x2e13(v0.word1, uint16(varg2));
        }
        v5 = _SafeSub(v0.word1, varg3);
        v0.word1 = v5;
        return varg3, varg4, varg5, varg2, varg1, varg0;
    }
}

function 0x123b(uint256 varg0, struct(2) varg1, uint16 varg2) private { 
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(varg1.word0)) {
        if (varg0 >= this.balance) {
            v0 = 0x2e13(this.balance, varg2);
            return v0;
        } else {
            return varg0;
        }
    } else {
        if (varg0 >= varg1.word1) {
            varg0 = v1 = 0x2e13(varg1.word1, varg2);
        }
        require(varg1.word1 - varg0 <= varg1.word1, Panic(17)); // arithmetic overflow or underflow
        varg1.word1 = varg1.word1 - varg0;
        return varg0;
    }
}

function 0x12ba(address varg0, uint256 varg1, struct(2) varg2, uint16 varg3) private { 
    if (varg0 - address(varg2.word0)) {
        if (varg0 - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v0 = v1 = 0x89b(varg0, this);
        } else {
            v0 = this.balance;
        }
        if (varg1 >= v0) {
            v2 = 0x2e13(v0, varg3);
            return v2;
        } else {
            return varg1;
        }
    } else {
        if (varg1 >= varg2.word1) {
            varg1 = v3 = 0x2e13(varg2.word1, varg3);
        }
        v4 = _SafeSub(varg2.word1, varg1);
        varg2.word1 = v4;
        return varg1;
    }
}

function 0x1369(uint256 varg0, uint16 varg1) private { 
    if (!varg0) {
        v0 = _SafeMul(this.balance, varg1);
        varg0 = v1 = v0 / 10000;
    }
    v2, /* uint256 */ v3 = 0xae7ab96520de3a18e5e111b5eaab095312d7fe84.submit(0xd524f98f554bd34f4185678f64a85bb98971d314).value(varg0).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    if (v2) {
        v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v4 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v4 - MEM[64] >= 32);
        return v3;
    } else {
        return 0;
    }
}

function 0x15a4(uint256 varg0, address varg1, uint256 varg2, uint256 varg3) private { 
    MEM[varg0] = varg1;
    MEM[varg0 + 32] = MEM[varg2];
    MEM[varg0 + 64] = bool(MEM[varg2 + 32]);
    MEM[varg0 + 96] = bool(MEM[varg2 + 64]);
    MEM[varg0 + 128] = int32(MEM[varg2 + 96]);
    MEM[varg0 + 160] = 192;
    MEM[varg0 + 192] = MEM[varg3];
    MCOPY(varg0 + 192 + 32, varg3 + 32, MEM[varg3]);
    MEM[varg0 + 192 + MEM[varg3] + 32] = 0;
    return (MEM[varg3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (varg0 + 192) + 32;
}

function 0x15ee(uint256 varg0, uint256 varg1, uint256 varg2, uint16 varg3, uint256 varg4, uint256 varg5) private { 
    if (!address(varg0)) {
        v0 = v1 = this;
    }
    varg2 = v2 = 0;
    if (varg3) {
        if (!varg2) {
            v3 = 0x89b(varg1, this);
            varg2 = v4 = v3 * varg3 / 10000;
        }
    }
    if (varg2) {
        v5 = v6 = 0x1a5f7;
        v0 = v7 = 5921;
        v8 = v9 = 64;
        0x2f0f(varg1, address(varg4), varg2);
    } else {
        v10 = 0x89b(varg1, address(varg4));
        v11, /* uint128 */ v12, /* uint128 */ v13, /* int64 */ v14, /* int64 */ v15, /* uint40 */ v16, /* int32 */ v17, /* bool */ v18, /* uint32 */ v19, /* uint8 */ v20 = address(varg4).getState().gas(msg.gas);
        if (v11) {
            v0 = v21 = 5921;
            v5 = v22 = 0x1a56b;
            v8 = v23 = 64;
            v24 = v25 = 0;
            if (v11) {
                v26 = v27 = 288;
                if (v27 > RETURNDATASIZE()) {
                    v26 = v28 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v26 - MEM[64] >= 288);
                v24 = v29 = 0x3b4();
                require(!0x1865c57d00000000000000000000000000000000000000000000000000000000);
                v29.word0 = v12;
                require(!(v13 - uint128(v13)));
                v29.word1 = v13;
                require(!(v14 - int64(v14)));
                v29.word2 = v14;
                require(!(v15 - int64(v15)));
                v29.word3 = v15;
                require(!(v16 - uint40(v16)));
                v29.word4 = v16;
                require(!(v17 - int32(v17)));
                v29.word5 = v17;
                require(!(v18 - bool(v18)));
                v29.word6 = v18;
                require(!(v19 - uint32(v19)));
                v29.word7 = v19;
                require(!(v20 - uint8(v20)));
                v29.word8 = v20;
            }
            if (!varg5) {
                v30 = v31 = uint128(MEM[32 + v24]);
            } else {
                v30 = v32 = uint128(MEM[v24]);
            }
            varg2 = v33 = v10 - uint128(v30);
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    if (!varg5) {
        v0 = v34 = 0x3c4();
        v34.word0 = varg2;
        v34.word1 = bool(varg5);
        v34.word2 = 0;
        v34.word3 = int32(int32.min);
        // Unknown jump to Block ['0x1a56b', '0x1a5f7']. Refer to 3-address code (TAC);
    } else {
        v0 = v35 = 0x3c4();
        v35.word0 = varg2;
        v35.word1 = bool(varg5);
        v35.word2 = 0;
        v35.word3 = int32(int32.max);
        // Unknown jump to Block ['0x1a56b', '0x1a5f7']. Refer to 3-address code (TAC);
    }
    v8 = v36 = 0;
    v0 = v37 = uint160.max;
    v8 = v38 = MEM[64];
    require(!((v38 + 32 > uint64.max) | (v38 + 32 < v38)), Panic(65)); // failed memory allocation (too much memory)
    MEM[v38] = 0;
    CALLDATACOPY(v38 + 32, msg.data.length, 0);
    v0 = v39 = MEM[v8];
    v40 = v41 = v39 + 4;
    v40 = v42 = 0x15a4(v41, v0, v0, v8);
    MEM[v40] = address(v0);
    MEM[v40 + 32] = MEM[v0];
    MEM[v40 + 64] = bool(MEM[v0 + 32]);
    MEM[v40 + 96] = bool(MEM[v0 + 64]);
    MEM[v40 + 128] = int32(MEM[v0 + 96]);
    MEM[v40 + 160] = 192;
    MEM[v40 + 192] = MEM[v8];
    MCOPY(v40 + 192 + 32, v8 + 32, MEM[v8]);
    MEM[v40 + 192 + MEM[v8] + 32] = 0;
    v40 = (MEM[v8] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v40 + 192) + 32;
    v43 = (v0 & v0).call(MEM[v15eearg0x6:v15eearg0x6 + v15a1V0x15a40x15ee - v15eearg0x6], MEM[v15eearg0x6:v15eearg0x6 + v1551V0x1a5f7]).value(v8).gas(msg.gas);
    if (v43) {
        if (v43) {
            v44 = v45 = 64;
            if (64 > RETURNDATASIZE()) {
                v44 = v46 = RETURNDATASIZE();
            }
            require(!((v39 + (v44 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (v44 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v39 + (v44 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(v39 + v44 - v39 >= 64);
            return MEM[v39 + 32];
        } else {
            return 0;
        }
    }
    v8 = v47 = 0;
    v0 = v48 = uint160.max;
    v8 = MEM[64];
    require(!((v8 + 32 > uint64.max) | (v8 + 32 < v8)), Panic(65)); // failed memory allocation (too much memory)
    MEM[v8] = 0;
    CALLDATACOPY(v8 + 32, msg.data.length, 0);
}

function 0x1a2e(uint256 varg0) private { 
    if (!varg0) {
        return 0x83f20f44975d03b1b09e64809b757c47f942beea, 0x6b175474e89094c44da98b954eedeac495271d0f;
    } else {
        return 0xa3931d71877c0e7a3148cb7eb4463524fec27fbd, 0xdc035d45d973e3ec169d2276ddab16f1e407384f;
    }
}

function 0x1a8f(address varg0, uint256 varg1, uint16 varg2, uint256 varg3, uint256 varg4) private { 
    v0, v1 = 0x1a2e(varg4);
    if (!varg3) {
        if (0 != !varg1) {
            v2 = 0x89b(address(v0), this);
            varg1 = v3 = varg2 * v2 / 10000;
        }
        v4 = v5 = address(v0);
        v6 = v7 = MEM[64];
        v8 = v5.convertToAssets(varg1).gas(msg.gas);
        if (v8) {
            v9 = v10 = 32;
            v9 = v11 = 0;
            if (v8) {
                v12 = v13 = 7265;
                if (v10 <= RETURNDATASIZE()) {
                    require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v7 + 32;
                    v14 = v15 = v7 + v10;
                }
            }
        }
    } else {
        if (0 != !varg1) {
            v16 = 0x89b(v1, this);
            varg1 = v17 = varg2 * v16 / 10000;
        }
        v6 = v18 = MEM[64];
        v19 = address(v0).deposit(varg1, varg0).gas(msg.gas);
        if (v19) {
            if (v19) {
                v12 = v20 = 0x1a500;
                v21 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x14180x1a8f. Refer to 3-address code (TAC);
                }
            } else {
                return 0;
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    require(!((v6 + (v21 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (v21 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v6 + (v21 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v14 = v6 + v21;
    require(v14 - v6 >= 32);
    v9 = MEM[v6];
    // Unknown jump to Block ['0x1a5000x1a8f', '0x1a69a', '0x1c61']. Refer to 3-address code (TAC);
    return v9;
    return v9;
    v21 = v22 = RETURNDATASIZE();
    // Unknown jump to Block 0x14060x1a8f. Refer to 3-address code (TAC);
    v6 = v23 = MEM[64];
    v24 = v4.withdraw(v9, varg0, this).gas(msg.gas);
    if (v24) {
        if (v24) {
            v12 = v25 = 0x1a69a;
            if (32 <= RETURNDATASIZE()) {
                require(!((v23 + 32 > uint64.max) | (v23 + 32 < v23)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v23 + 32;
                v14 = v26 = v23 + 32;
            }
        } else {
            return v9;
        }
    }
}

function receive() public payable { 
}

function 0x9fcbfeeb(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(160 <= msg.data.length - 4);
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < msg.data.length);
    require(varg5.length <= uint64.max);
    require((varg5.length << 5) + (4 + varg5) + 32 <= msg.data.length);
    require(msg.sender == 0xd524f98f554bd34f4185678f64a85bb98971d314, InvalidCaller());
    require(!(address(varg1) - varg1));
    v0 = 0x3a3();
    v0.word0 = address(varg1);
    v0.word1 = varg2;
    v1 = v2 = 0;
    require(!(address(varg0) - varg0));
    require(!(address(varg3) - varg3));
    v3 = v4 = !varg4;
    if (v4) {
        v3 = v5 = !address(varg3);
    }
    if (!v3) {
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(varg3)) {
            v1 = v6 = 0x89b(varg3, address(varg0));
        } else {
            v1 = v7 = (address(varg0)).balance;
        }
    }
    v8 = v9 = 0;
    while (v8 < varg5.length) {
        v10 = 0xa17(v8, msg.data[varg5.data + varg5[v8] + 32] >> 224, varg5.data + varg5[v8] + 36, msg.data[varg5.data + varg5[v8]] - 4, v0);
        if (!v10) {
            v11 = new uint256[](msg.data[varg5.data + varg5[v8]] - 4);
            CALLDATACOPY(v11.data, varg5.data + varg5[v8] + 36, msg.data[varg5.data + varg5[v8]] - 4);
            revert(ActionInvalid(v8, msg.data[varg5.data + varg5[v8] + 32] >> 224 << 224, v11));
        } else {
            v8 += 1;
        }
    }
    require(!(address(varg0) - varg0));
    require(!(address(varg3) - varg3));
    v12 = v13 = !varg4;
    if (v13) {
        v12 = v14 = !address(varg3);
    }
    if (!v12) {
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(varg3)) {
            v15 = 0x89b(varg3, address(varg0));
            v16 = v17 = v15 - v1;
            require(v17 <= v15, Panic(17)); // arithmetic overflow or underflow
            if (v17 >= varg4) {
            }
        } else {
            v16 = _SafeSub((address(varg0)).balance, v1);
            if (v16 >= varg4) {
            }
        }
        revert(TooMuchSlippage(varg3, 0x97a6f3b9000000000000000000000000, varg4, v16));
    }
    return 1;
}

function 0x2638(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0);
    require(!((v0 + (32 + (varg0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (varg0 << 5) - 32);
    return v0;
}

function 0x267b() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    return v0;
}

function 0x26f8(uint256 varg0) private { 
    require(75 <= 75 + varg0, Panic(17)); // arithmetic overflow or underflow
    return 75 + varg0;
}

function 0x2706(uint256 varg0) private { 
    require(varg0 <= varg0 + 32, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 32;
}

function 0x28ca(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint16 varg4, uint8 varg5, bool varg6) private { 
    if (0 != !varg3) {
        if (address(varg0) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v0 = 0x89b(address(varg0), this);
            v1 = _SafeMul(v0, varg4);
            varg3 = v2 = v1 / 10000;
        } else {
            v3 = _SafeMul(this.balance, varg4);
            varg3 = v4 = v3 / 10000;
        }
    }
    if (!address(varg1)) {
        varg1 = v5 = this;
    }
    require(varg3 <= int256.max, Panic(17)); // arithmetic overflow or underflow
    v6 = varg5;
    if (v6) {
        if (v6 > int8.max) {
            if (v6 > uint8.max) {
                if (v6 > uint16.max) {
                    if (v6 > uint24.max) {
                        v7 = 0xda0000000000000000000000000000000000000000000000000000;
                        MEM[v7 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
                        MEM[v7 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
                        MEM[v7 + 54] = 0x8400000000000000000000000000000000000000000000000000000000000000;
                        MEM[v7 + 55] = bytes4(v6 << 224);
                        require(!((v7 + 64 > uint64.max) | (v7 + 64 < v7)), Panic(65)); // failed memory allocation (too much memory)
                    } else {
                        v7 = v8 = 0xd900000000000000000000000000000000000000000000000000;
                        MEM[v8 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
                        MEM[v8 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
                        MEM[v8 + 54] = 0x8300000000000000000000000000000000000000000000000000000000000000;
                        MEM[v8 + 55] = bytes3(v6 << 232);
                        require(!((v8 + 64 > uint64.max) | (v8 + 64 < v8)), Panic(65)); // failed memory allocation (too much memory)
                    }
                } else {
                    v7 = v9 = 0xd8000000000000000000000000000000000000000000000000;
                    MEM[v9 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
                    MEM[v9 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
                    MEM[v9 + 54] = 0x8200000000000000000000000000000000000000000000000000000000000000;
                    MEM[v9 + 55] = bytes2(v6 << 240);
                    require(!((v9 + 64 > uint64.max) | (v9 + 64 < v9)), Panic(65)); // failed memory allocation (too much memory)
                }
            } else {
                v7 = v10 = 0xd70000000000000000000000000000000000000000000000;
                MEM[v10 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
                MEM[v10 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
                MEM[v10 + 54] = 0x8100000000000000000000000000000000000000000000000000000000000000;
                MEM[v10 + 55] = bytes1(v6 << 248);
                require(!((v10 + 64 > uint64.max) | (v10 + 64 < v10)), Panic(65)); // failed memory allocation (too much memory)
            }
        } else {
            v7 = v11 = 0xd600000000000000000000000000000000000000000000;
            MEM[v11 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
            MEM[v11 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
            MEM[v11 + 54] = bytes1(v6 << 248);
            require(!((v11 + 64 > uint64.max) | (v11 + 64 < v11)), Panic(65)); // failed memory allocation (too much memory)
        }
        v12 = v13 = address(keccak256(MEM[v5da6V0x294e + 32:v5da6V0x294e + 32 + MEM[v5da6V0x294e]]));
    } else {
        v12 = v14 = 0;
    }
    STORAGE[keccak256(address(v12), address(v12), varg0, varg0)] = varg2;
    if (address(varg0) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v15 = new bytes[](132);
        MEM[v15.data] = 0xbe17c79c00000000000000000000000000000000000000000000000000000000;
        MEM[v15 + 36] = varg6;
        MEM[v15 + 68] = varg3;
        MEM[v15 + 100] = 0;
        MEM[v15 + 132] = address(varg1);
        v16 = v17 = 0x1aa81;
        require(!((v15 + 192 > uint64.max) | (v15 + 192 < v15)), Panic(65)); // failed memory allocation (too much memory)
        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(v12)) << 96, ConfusedDeputy());
        require(!___function_selector__, ReentrantCallback(___function_selector__));
        ___function_selector__ = address(v12) | 0x9410ae8800000000000000040000000000000000000000000000000000000000;
        v18 = v15.length;
        v19 = v15.data;
        v20, /* uint256 */ v21 = address(v12).swapInWithCallback(varg6, varg3, 0, address(varg1)).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v22 = v23 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v22 = new bytes[](RETURNDATASIZE());
            require(!((v22 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v22 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v22)), Panic(65)); // failed memory allocation (too much memory)
            v21 = v22.data;
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
        }
        require(v20, v22 + 32, MEM[v22]);
        require(!___function_selector__, CallbackNotSpent(___function_selector__));
        v24 = v25 = v22 + MEM[v22] + 32;
        v26 = v27 = v22 + 32;
    } else {
        v26 = v28 = MEM[64];
        v29 = address(v12).swapIn(varg6, varg3, 0, address(varg1)).value(varg3).gas(msg.gas);
        require(v29, MEM[64], RETURNDATASIZE());
        if (v29) {
            v16 = v30 = 0x1a500;
            v31 = 32;
            if (32 > RETURNDATASIZE()) {
                v31 = v32 = RETURNDATASIZE();
            }
            require(!((v28 + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v28 + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v24 = v28 + v31;
        } else {
            return 0;
        }
    }
    require(v24 - v26 >= 32);
    // Unknown jump to Block ['0x1a5000x28ca', '0x1aa81']. Refer to 3-address code (TAC);
    return MEM[v26];
    return MEM[v26];
}

function 0x2e13(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * varg1;
    v1 = varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0);
    require(10000 > v1, Panic(17)); // arithmetic overflow or underflow
    if (varg0 * varg1 % uint256.max - v0 == varg0 * varg1 % uint256.max < v0) {
        return v0 / 10000;
    } else {
        return 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (v1 - (varg0 * varg1 % 10000 > v0) << 252 | v0 - varg0 * varg1 % 10000 >> 4);
    }
}

function 0x2e9b(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.transfer(0xd524f98f554bd34f4185678f64a85bb98971d314, 0xa9059cbb000000000000000000000000, varg1).gas(msg.gas);
    if (!v0) {
        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
        revert(uint24(MEM[64]), RETURNDATASIZE());
    } else {
        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
        MEM[52] = 0;
        return ;
    }
}

function 0x2f0f(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.transfer(0xa9059cbb000000000000000000000000, varg1, varg2).gas(msg.gas);
    if (!v0) {
        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
        revert(uint24(MEM[64]), RETURNDATASIZE());
    } else {
        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
        MEM[52] = 0;
        return ;
    }
}

function 0x2f52(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x3530(uint256 varg0, uint256 varg1) private { 
    v0 = 0x3225737a9bbb6473cb4a45b7244aca2befdb276a.daiToUsds(0xf2c07aae000000000000000000000000, varg0, varg1).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return varg1;
}

function 0x366f(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = address(varg0).allowance(this, address(varg1)).gas(msg.gas);
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
    if (v1 < uint256.max) {
        if (v1) {
            v5 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, 0).gas(msg.gas);
            if (!v5) {
                RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                revert(uint24(MEM[64]), RETURNDATASIZE());
            } else {
                require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
                MEM[52] = 0;
            }
        }
        v6 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, uint256.max).gas(msg.gas);
        if (!v6) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
            MEM[52] = 0;
            return ;
        }
    } else {
        return ;
    }
}

function 0x3713(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, /* uint256 */ v1 = address(varg0).allowance(this, address(varg1)).gas(msg.gas);
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
    if (v1 < varg2) {
        if (v1) {
            v5 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, 0).gas(msg.gas);
            if (!v5) {
                RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                revert(uint24(MEM[64]), RETURNDATASIZE());
            } else {
                require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
                MEM[52] = 0;
            }
        }
        v6 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, uint256.max).gas(msg.gas);
        if (!v6) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
            MEM[52] = 0;
            return ;
        }
    } else {
        return ;
    }
}

function 0x37b0(uint256 varg0) private { 
    v0 = varg0.getReserves().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
    return MEM[32], MEM[0];
}

function 0x38dd() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    return v0;
}

function 0x3a3() private { 
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3a74(uint256 varg0, address[] varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    if (!address(varg0)) {
        varg0 = v0 = this;
    }
    require(varg3 <= int256.max, Panic(17)); // arithmetic overflow or underflow
    require(varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, address(MEM[varg1.data]), 0xbbcb91440523216e2b87052a99f69c604a7b6e00, address(MEM[varg1.data]))] = varg4;
    v1 = 0x2638(varg2.length);
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + 32;
    MEM[MEM[64]] = 0;
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + 32;
    MEM[MEM[64]] = 0;
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v2 = 0x3c4();
    v2.word0 = address(varg0);
    v2.word1 = 1;
    v2.word2 = MEM[64];
    v2.word3 = MEM[64];
    v3 = new address[](varg1.length);
    v4 = v3.data;
    v5 = varg1.data;
    v6 = 0;
    while (v6 < varg1.length) {
        MEM[v4] = address(MEM[v5]);
        v4 += 32;
        v5 = v5 + 32;
        v6 += 1;
    }
    MEM[v4] = varg2.length;
    v7 = v8 = v4 + 32;
    v9 = varg2.data;
    v10 = 0;
    while (v10 < varg2.length) {
        MEM[v7] = address(MEM[MEM[v9]]);
        MEM[v7 + 32] = address(MEM[MEM[v9] + 32]);
        MEM[v7 + 64] = MEM[MEM[v9] + 64];
        v7 = v7 + 96;
        v9 = v9 + 32;
        v10 = v10 + 1;
    }
    MEM[v7] = v1.length;
    v11 = v12 = v7 + 32;
    v13 = v1.data;
    v14 = 0;
    while (v14 < v1.length) {
        MEM[v11] = MEM[v13];
        v11 += 32;
        v13 = v13 + 32;
        v14 += 1;
    }
    MEM[v11] = address(v2.word0);
    MEM[v11 + 32] = bool(v2.word1);
    MEM[v11 + 64] = 128;
    MEM[v11 + 128] = MEM[v2.word2];
    MCOPY(v11 + 128 + 32, v2.word2 + 32, MEM[v2.word2]);
    MEM[v11 + 128 + MEM[v2.word2] + 32] = 0;
    v15 = (MEM[v2.word2] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v11 + 128) + 32;
    MEM[v11 + 96] = v15 - v11;
    MEM[v15] = MEM[v2.word3];
    MCOPY(v15 + 32, v2.word3 + 32, MEM[v2.word3]);
    MEM[v15 + MEM[v2.word3] + 32] = 0;
    require(!((MEM[64] + ((MEM[v2.word3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v15 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((MEM[v2.word3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v15 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0xbbcb91440523216e2b87052a99f69c604a7b6e00) << 96, ConfusedDeputy());
    require(!___function_selector__, ReentrantCallback(___function_selector__));
    ___function_selector__ = 0xb6a545480000000000000005bbcb91440523216e2b87052a99f69c604a7b6e00;
    v16, /* uint256 */ v17 = 0xbbcb91440523216e2b87052a99f69c604a7b6e00.call(0xa3c779fd00000000000000000000000000000000000000000000000000000000, v3, v4 - (MEM[64] + 36), varg3, v7 - (MEM[64] + 36), v11 - (MEM[64] + 36)).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v18 = v19 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v18 = v20 = new bytes[](RETURNDATASIZE());
        require(!((v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v20)), Panic(65)); // failed memory allocation (too much memory)
        v17 = v20.data;
        RETURNDATACOPY(v17, 0, RETURNDATASIZE());
    }
    require(v16, v18 + 32, MEM[v18]);
    require(!___function_selector__, CallbackNotSpent(___function_selector__));
    require(v18 + MEM[v18] + 32 - (v18 + 32) >= 32);
    return MEM[v18 + 32];
}

function 0x3b4() private { 
    v0 = new struct(9);
    require(!((v0 + 288 > uint64.max) | (v0 + 288 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3c4() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3d3() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3f97(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(varg0)) {
        v0 = new bytes[](100);
        MEM[36 + v0] = varg0;
        MEM[68 + v0] = varg1;
        MEM[100 + v0] = varg2;
        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ msg.sender) << 96, ConfusedDeputy());
        require(!___function_selector__, ReentrantCallback(___function_selector__));
        ___function_selector__ = msg.sender | 0x599d071400000000000000030000000000000000000000000000000000000000;
        v1 = v0.length;
        v2 = v0.data;
        v3, /* uint256 */ v4 = msg.sender.pay(0xc11dedd000000000000000000000000, varg0, varg1, varg2).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v5 = v6 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v5 = v7 = new bytes[](RETURNDATASIZE());
            require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
            v4 = v7.data;
            RETURNDATACOPY(v4, 0, RETURNDATASIZE());
        }
        require(v3, v5 + 32, MEM[v5]);
        require(!___function_selector__, CallbackNotSpent(___function_selector__));
        return MEM[96 + v5];
    } else {
        0x2f52(msg.sender, varg2);
        return varg2;
    }
}

function 0x407e(struct(39) varg0) private { 
    if (!MEM[varg0.word2]) {
        MEM[varg0.word2] = 0xfb772a88;
        revert(28 + varg0.word2, 36);
    } else {
        return ;
    }
}

function 0x409b(uint16 varg0) private { 
    require(2 + varg0 <= uint16.max, Panic(17)); // arithmetic overflow or underflow
    return 2 + varg0;
}

function 0x4319(uint256 varg0, struct(3) varg1, uint256 varg2, uint256 varg3, uint96 varg4) private { 
    MCOPY(32 + MEM[64], 64 + varg1, 20);
    MCOPY(52 + MEM[64], varg1, 96);
    v0 = varg0.forward(v1, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[52 + MEM[64]]) * MEM[52 + MEM[64]], v1, v1, varg2, varg3, varg4, 0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(!((64 > RETURNDATASIZE()) | int128(varg2) ^ varg2 | (int128(MEM[0]) ^ MEM[0] | int128(MEM[32]) ^ MEM[32])));
    return MEM[32], MEM[0];
}

function 0x44f3(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x451e(uint256 varg0, uint256 varg1) private { 
    require(MEM[varg1], varg0);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), MEM[varg1]).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x45d0(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x45fb(uint256 varg0, uint256 varg1) private { 
    require(MEM[varg1], varg0);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), MEM[varg1]).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x46ad(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x46d8(uint256 varg0, uint256 varg1) private { 
    require(MEM[varg1], varg0);
    v0, /* uint256 */ v1 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), MEM[varg1]).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x4b42(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    if (0 == (varg5 == 10 ** 18)) {
        v0 = varg0 * varg2 * 10 ** 18;
        v1 = varg5 * varg0 + (10 ** 18 - varg5) * varg3;
        v2 = (varg3 - varg0) * varg1;
        v3 = v0 > v2 * v1 % uint256.max - v2 * v1 - (v2 * v1 % uint256.max < v2 * v1);
        if (!(v2 * v1 % uint256.max - v2 * v1 - (v2 * v1 % uint256.max < v2 * v1))) {
            v4 = v5 = 0 - (bool(v2 * v1 % v0) + v2 * v1 / v0 + v3 - 1 < v3 - 1) | bool(v2 * v1 % v0) + v2 * v1 / v0 + v3 - 1;
        } else {
            v6 = (2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2)) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2))) * ((2 - v0 / (0 - v0 & v0) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2)) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2));
            v7 = (2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * v6) * v6)) * ((2 - v0 / (0 - v0 & v0) * v6) * v6);
            v8 = ((v2 * v1 - v2 * v1 % v0) / (0 - v0 & v0) | (v2 * v1 % uint256.max - v2 * v1 - (v2 * v1 % uint256.max < v2 * v1) - (v2 * v1 % v0 > v2 * v1)) * ((0 - (0 - v0 & v0)) / (0 - v0 & v0) + 1)) * ((2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * v7) * v7)) * ((2 - v0 / (0 - v0 & v0) * v7) * v7));
            require(v8 + bool(v2 * v1 % v0) >= v8, Panic(17)); // arithmetic overflow or underflow
            v4 = v9 = 0 - (uint256.max + (v3 + (v8 + bool(v2 * v1 % v0))) < v3 - 1) | uint256.max + (v3 + (v8 + bool(v2 * v1 % v0)));
        }
        return 0 - (varg4 + v4 < v4) | varg4 + v4;
    } else {
        v10 = (varg3 - varg0) * varg1;
        return bool(v10 % varg2) + v10 / varg2 + varg4;
    }
}

function 0x4ba2(uint256 varg0) private { 
    v0, /* uint256 */ v1 = varg0.sync(0, 0xa5841194000000000000000000000000).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x4bca(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.sync(0xa5841194000000000000000000000000, varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x4bf3(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (this - address(varg2)) {
        v0, /* uint256 */ v1 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(varg0 << 96), varg2 << 96, varg2, msg.sender, varg2 << 96, varg2, varg1).gas(msg.gas);
        require(v0, v1, RETURNDATASIZE());
    } else {
        0x2f0f(varg0, msg.sender, varg1);
    }
    v2 = msg.sender.settle().gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    return MEM[0];
}

function 0x5393(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (varg1) {
        if (this - address(varg2)) {
            v0, /* uint256 */ v1 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(varg0 << 96), varg2 << 96, varg2, msg.sender, varg2 << 96, varg2, varg1).gas(msg.gas);
            require(v0, v1, RETURNDATASIZE());
        } else {
            0x2f0f(varg0, msg.sender, varg1);
        }
    }
    v2 = msg.sender.settle(0x15afd409000000000000000000000000, varg0, varg1).gas(msg.gas);
    if (!v2) {
        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
        revert(uint24(MEM[64]), RETURNDATASIZE());
    } else {
        MEM[52] = 0;
        return MEM[0];
    }
}

function 0x67c4a3b0() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x352650ac2653508d946c4912b07895b22edd84cd;
}

function 0x0ae4009f(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    require(msg.sender == 0xd524f98f554bd34f4185678f64a85bb98971d314, InvalidCaller());
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = address(varg0);
    v0.word1 = varg1;
    v1 = v2 = 0;
    while (v1 < varg2.length) {
        v3 = 0xa17(v1, msg.data[32 + (varg2.data + varg2[v1])] >> 224, varg2.data + varg2[v1] + 36, msg.data[varg2.data + varg2[v1]] - 4, v0);
        if (!v3) {
            v4 = new uint256[](msg.data[varg2.data + varg2[v1]] - 4);
            CALLDATACOPY(v4.data, varg2.data + varg2[v1] + 36, msg.data[varg2.data + varg2[v1]] - 4);
            revert(ActionInvalid(v1, msg.data[32 + (varg2.data + varg2[v1])] >> 224 << 224, v4));
        } else {
            v1 += 1;
        }
    }
    return 1;
}

function 0x89b(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.balanceOf(0x70a08231000000000000000000000000, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(31 < RETURNDATASIZE());
    return MEM[0];
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0xa17(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, struct(2) varg4) private { 
    if (varg1 - 0x601b02a6) {
        if (varg1 - 0x9b9cccbc) {
            if (varg1 - 0xb31621dd) {
                if (varg1 - 0x62906fe8) {
                    if (varg1 - 0x39cbfb2) {
                        if (varg1 - 0x6dd1879b) {
                            if (varg1 - 0x60802342) {
                                if (varg1 - 0xe411453b) {
                                    if (varg1 - 0xe406bf50) {
                                        if (varg1 - 0xafd2d6a4) {
                                            if (varg1 - 0x84159350) {
                                                if (varg1 - 0x7e94da7c) {
                                                    if (varg1 - 0x41131210) {
                                                        if (varg1 - 0x952b642f) {
                                                            if (varg1 - 0xe2136806) {
                                                                if (varg1 - 0x512c72a3) {
                                                                    if (varg1 - 0x71921ee8) {
                                                                        if (varg1 - 0xaa782407) {
                                                                            if (varg1 - 0xa8a682c2) {
                                                                                if (0x9c1244ab - varg1) {
                                                                                    v0 = v1 = 0;
                                                                                } else {
                                                                                    v2 = 0x123b(msg.data[varg2], varg4, msg.data[32 + varg2] >> 240);
                                                                                    v3 = 0x1369(v2, msg.data[32 + varg2] >> 240);
                                                                                    v0 = v4 = 1;
                                                                                }
                                                                            } else {
                                                                                v5, v6, v7, v8, v9, v10 = 0x11cb(byte(msg.data[varg2 + 94], 0x0), msg.data[varg2 + 74] >> 96, msg.data[varg2 + 72] >> 240, msg.data[varg2 + 40], msg.data[varg2 + 20] >> 96, msg.data[varg2] >> 96, 4579);
                                                                                v11 = 0x15ee(v7, v6, v5, v8, v9, v10);
                                                                                v0 = v12 = 1;
                                                                            }
                                                                        } else {
                                                                            CALLDATACOPY(MEM[64] + 32, varg2 + 52, varg3 - 52);
                                                                            v13, /* uint256 */ v14 = address(msg.data[varg2] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + va17arg0x3 - 52], MEM[0:0]).value(msg.data[varg2 + 20]).gas(msg.gas);
                                                                            if (!RETURNDATASIZE()) {
                                                                                v15 = v16 = 96;
                                                                            } else {
                                                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                                v15 = v17 = new bytes[](RETURNDATASIZE());
                                                                                require(!((v17 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v17 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v17)), Panic(65)); // failed memory allocation (too much memory)
                                                                                v14 = v17.data;
                                                                                RETURNDATACOPY(v14, 0, RETURNDATASIZE());
                                                                            }
                                                                            require(v13, v15 + 32, MEM[v15]);
                                                                            v18 = v19 = !MEM[v15];
                                                                            if (v19) {
                                                                                v18 = v20 = !(msg.data[varg2] >> 96).code.size;
                                                                            }
                                                                            require(!v18, InvalidTarget());
                                                                            v0 = v21 = 1;
                                                                        }
                                                                    } else {
                                                                        CALLDATACOPY(MEM[64] + 32, varg2 + 159, varg3 - 159);
                                                                        MEM[64] = MEM[64] + varg3 - 127;
                                                                        v22 = 0x12ba(address(msg.data[varg2 + 40] >> 96), msg.data[varg2 + 60], varg4, msg.data[varg2 + 92] >> 240);
                                                                        v23 = 0xae3(msg.data[varg2 + 95]);
                                                                        v24 = 0xae3(msg.data[varg2 + int8.max]);
                                                                        require(!(bool(v24 >> 128) | (bool(v23 >> 128) | ((uint16(msg.data[varg2 + 92] >> 240) > 10000) | bool(v22 >> 128)))), Panic(17)); // arithmetic overflow or underflow
                                                                        MCOPY(211 + MEM[64], 32 + MEM[64], varg3 - 159);
                                                                        MEM8[168 + MEM[64]] = (byte(msg.data[varg2 + 94], 0x0)) & 0xFF;
                                                                        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                                                        require(!___function_selector__, ReentrantCallback(___function_selector__));
                                                                        ___function_selector__ = 0x1ba1333333333a1ba1108e8412f11850a5c319ba9 | bytes4(msg.data[varg2] >> 96 << 96);
                                                                        v25, /* uint256 */ v26 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, 111 + (varg3 - 159), msg.data[varg2] >> 96, v22, msg.data[varg2] >> 96, v23, v24, msg.data[varg2 + 20] >> 96, msg.data[varg2 + 40] >> 96, msg.data[varg2 + 92] >> 240).gas(msg.gas);
                                                                        if (!RETURNDATASIZE()) {
                                                                            v27 = v28 = 96;
                                                                        } else {
                                                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                            v27 = v29 = new bytes[](RETURNDATASIZE());
                                                                            require(!((v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
                                                                            v26 = v29.data;
                                                                            RETURNDATACOPY(v26, 0, RETURNDATASIZE());
                                                                        }
                                                                        require(v25, v27 + 32, MEM[v27]);
                                                                        require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                                                        v0 = v30 = 1;
                                                                    }
                                                                } else {
                                                                    v31, v32, v33, v34, v35 = 0x10a3(byte(msg.data[varg2 + 55], 0x0), byte(msg.data[varg2 + 54], 0x0), msg.data[varg2 + 52] >> 240, msg.data[varg2 + 20], msg.data[varg2] >> 96, 4297);
                                                                    v36 = 0x1a8f(v32, v31, v33, v34, v35);
                                                                    v0 = v37 = 1;
                                                                }
                                                            } else {
                                                                v38 = v39 = 0x1a3a1;
                                                                v40 = v41 = byte(msg.data[varg2 + 54], 0x0);
                                                                v42 = v43 = msg.data[varg2 + 52] >> 240;
                                                                v44 = v45 = msg.data[varg2] >> 96;
                                                                v46 = v47 = 4165;
                                                                v48 = v49 = msg.data[20 + varg2];
                                                                if (!v41) {
                                                                    v50 = v51 = 0xdc035d45d973e3ec169d2276ddab16f1e407384f;
                                                                } else {
                                                                    v50 = v52 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                                                                }
                                                            }
                                                        } else {
                                                            v38 = v53 = 0x1a37c;
                                                            v40 = v54 = byte(msg.data[varg2 + 54], 0x0);
                                                            v42 = v55 = msg.data[varg2 + 52] >> 240;
                                                            v44 = v56 = msg.data[varg2] >> 96;
                                                            v46 = v57 = 4050;
                                                            v48 = v58 = msg.data[20 + varg2];
                                                            if (!v54) {
                                                                v50 = v59 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                                                            } else {
                                                                v50 = v60 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                                                            }
                                                        }
                                                        if (address(v50) - address(varg4.word0)) {
                                                            if (address(v50) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                                                v61 = v62 = 0x89b(address(v50), this);
                                                            } else {
                                                                v61 = this.balance;
                                                            }
                                                            if (v48 >= v61) {
                                                                v48 = v63 = 0x2e13(v61, uint16(v42));
                                                                // Unknown jump to Block ['0x1045', '0xfd2']. Refer to 3-address code (TAC);
                                                            } else {
                                                                // Unknown jump to Block ['0x1045', '0xfd2']. Refer to 3-address code (TAC);
                                                            }
                                                        } else {
                                                            if (v48 >= varg4.word1) {
                                                                v48 = v64 = 0x2e13(varg4.word1, uint16(v42));
                                                            }
                                                            v65 = _SafeSub(varg4.word1, v48);
                                                            varg4.word1 = v65;
                                                            // Unknown jump to Block ['0x1045', '0xfd2']. Refer to 3-address code (TAC);
                                                        }
                                                        if (!v48) {
                                                            v66 = 0x89b(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ v40 * 0xcbaf3de52eb11ff28c7816df60735a0aa321f647, this);
                                                            v48 = v67 = uint16(v42) * v66 / 10000;
                                                        }
                                                        if (!v40) {
                                                            v68 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.sellGem(0x95991276000000000000000000000000, v44, v48).gas(msg.gas);
                                                            if (!v68) {
                                                                RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                                revert(uint96(MEM[64]), RETURNDATASIZE());
                                                            } else {
                                                                require(RETURNDATASIZE() > 31);
                                                                MEM[52] = 0;
                                                            }
                                                        } else {
                                                            v69 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.tout().gas(msg.gas);
                                                            require(v69, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            if (v48 > v48 * 10 ** 6 / (MEM[0] + 10 ** 18) * 10 ** 12) {
                                                                0x2e9b(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ v40 * 0xcbaf3de52eb11ff28c7816df60735a0aa321f647, v48 - v48 * 10 ** 6 / (MEM[0] + 10 ** 18) * 10 ** 12);
                                                            }
                                                            v70 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.buyGem(0x8d7ef9bb000000000000000000000000, v44, v48 * 10 ** 6 / (MEM[0] + 10 ** 18)).gas(msg.gas);
                                                            if (!v70) {
                                                                RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                                revert(uint96(MEM[64]), RETURNDATASIZE());
                                                            } else {
                                                                require(RETURNDATASIZE() > 31);
                                                                MEM[52] = 0;
                                                                // Unknown jump to Block 0x1a37c. Refer to 3-address code (TAC);
                                                            }
                                                        }
                                                        v0 = v71 = 1;
                                                        if (!v40) {
                                                            if (v48) {
                                                                v72 = 0x3530(v44, v48);
                                                            } else {
                                                                v73 = 0x6b175474e89094c44da98b954eedeac495271d0f.balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                                                                require(v73, MEM[64], RETURNDATASIZE());
                                                                require(31 < RETURNDATASIZE());
                                                                v74 = 0x3530(v44, uint16(v42) * MEM[0] / 10000);
                                                                // Unknown jump to Block 0x1a3a1. Refer to 3-address code (TAC);
                                                            }
                                                        } else {
                                                            if (!v48) {
                                                                v75 = 0xdc035d45d973e3ec169d2276ddab16f1e407384f.balanceOf(0x70a08231000000000000000000000000, this).gas(msg.gas);
                                                                require(v75, MEM[64], RETURNDATASIZE());
                                                                require(31 < RETURNDATASIZE());
                                                                v48 = v76 = uint16(v42) * MEM[0] / 10000;
                                                            }
                                                            v77 = 0x3225737a9bbb6473cb4a45b7244aca2befdb276a.usdsToDai(0x68f30150000000000000000000000000, v44, v48).gas(msg.gas);
                                                            require(v77, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                            // Unknown jump to Block 0x1a3a1. Refer to 3-address code (TAC);
                                                        }
                                                        v0 = v78 = 1;
                                                    } else {
                                                        CALLDATACOPY(MEM[64] + 32, varg2 + 138, varg3 - 138);
                                                        MEM[64] = MEM[64] + varg3 - 106;
                                                        v79 = v80 = 0x12ba(address(msg.data[varg2] >> 96), msg.data[varg2 + 40], varg4, msg.data[varg2 + 72] >> 240);
                                                        0x366f(msg.data[varg2] >> 96, msg.data[varg2 + 20] >> 96);
                                                        if (0 != !v80) {
                                                            v81 = 0x89b(msg.data[varg2] >> 96, this);
                                                            v82 = _SafeMul(v81, uint16(msg.data[varg2 + 72] >> 240));
                                                            v79 = v83 = v82 / 10000;
                                                        }
                                                        if (0 == v79 > msg.data[varg2 + 74]) {
                                                            if (v79 < msg.data[varg2 + 74]) {
                                                                MEM[32 + (MEM[64] + msg.data[varg2 + 106])] = v79;
                                                            }
                                                        } else {
                                                            v84 = _SafeSub(v79, msg.data[varg2 + 74]);
                                                            0x2e9b(msg.data[varg2] >> 96, v84);
                                                        }
                                                        v85, /* uint256 */ v86 = (msg.data[varg2 + 20] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + va17arg0x3 - 138], MEM[0:0]).gas(msg.gas);
                                                        if (!RETURNDATASIZE()) {
                                                            v87 = v88 = 96;
                                                        } else {
                                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                            v87 = new bytes[](RETURNDATASIZE());
                                                            require(!((v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v87)), Panic(65)); // failed memory allocation (too much memory)
                                                            v86 = v87.data;
                                                            RETURNDATACOPY(v86, 0, RETURNDATASIZE());
                                                        }
                                                        if (!v85) {
                                                            v89 = new uint256[](MEM[v87]);
                                                            MCOPY(v89.data, v87 + 32, MEM[v87]);
                                                            MEM[v89 + MEM[v87] + 32] = 0;
                                                            revert(Error(v89));
                                                        } else {
                                                            v0 = v90 = 1;
                                                        }
                                                    }
                                                } else {
                                                    v91 = v92, v93, v94 = v95, v96, v97, v98 = 0xf30(msg.data[varg2 + 94] >> 232, msg.data[varg2 + 74] >> 96, msg.data[varg2 + 72] >> 240, msg.data[varg2 + 40], msg.data[varg2 + 20] >> 96, msg.data[varg2] >> 96, 3903);
                                                    if (!address(v95)) {
                                                        v94 = v99 = this;
                                                    }
                                                    v91 = v100 = 0;
                                                    if (uint16(v96)) {
                                                        if (!v92) {
                                                            v101 = 0x89b(address(v93), this);
                                                            v91 = v102 = v101 * uint16(v96) / 10000;
                                                        }
                                                    }
                                                    if (v91) {
                                                        v103 = v93.transfer(v97, v91).gas(msg.gas);
                                                        if (v103) {
                                                            require(!RETURNDATASIZE() | (RETURNDATASIZE() >= 32) & (MEM[0] == 1));
                                                        }
                                                    }
                                                    v104 = v97.getReserves().gas(msg.gas);
                                                    if (v104) {
                                                        require(RETURNDATASIZE() >= 64);
                                                        if (!v91 | (uint24(0x1 & v98 >> 1) == 1)) {
                                                            v105 = v93.balanceOf(address(v97)).gas(msg.gas);
                                                            if (v105) {
                                                                require(RETURNDATASIZE() >= 32);
                                                                require(MEM[0] >= MEM[0x20 ^ (v98 & 0x1 == 1) << 5], Panic(17)); // arithmetic overflow or underflow
                                                                v91 = MEM[0] - MEM[0x20 ^ (v98 & 0x1 == 1) << 5];
                                                            }
                                                        }
                                                        MEM[MEM[64] + ((v98 & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(v98 >> 8))) * v91 * MEM[(v98 & 0x1 == 1) << 5] / ((10000 - uint24(uint16(v98 >> 8))) * v91 + MEM[0x20 ^ (v98 & 0x1 == 1) << 5] * 10000);
                                                        MEM[MEM[64] + (0x20 ^ 4 + ((v98 & 0x1 == 1) << 5)) + 28] = 0;
                                                        v106 = v97.swap(v97, v91, address(v94), 128, 0).gas(msg.gas);
                                                        if (v106) {
                                                            v0 = v107 = 1;
                                                        }
                                                    }
                                                    revert(MEM[64], RETURNDATASIZE());
                                                }
                                            } else {
                                                CALLDATACOPY(MEM[64] + 32, varg2 + 159, varg3 - 159);
                                                MEM[64] = MEM[64] + varg3 - 127;
                                                v108 = 0x12ba(address(msg.data[varg2 + 40] >> 96), msg.data[varg2 + 60], varg4, msg.data[varg2 + 92] >> 240);
                                                v109 = 0xae3(msg.data[varg2 + 95]);
                                                v110 = 0xae3(msg.data[varg2 + int8.max]);
                                                require(!(bool(v110 >> 128) | (bool(v109 >> 128) | ((uint16(msg.data[varg2 + 92] >> 240) > 10000) | bool(v108 >> 128)))), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], 32 + MEM[64], varg3 - 159);
                                                MEM8[168 + MEM[64]] = (byte(msg.data[varg2 + 94], 0x0)) & 0xFF;
                                                require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                require(!___function_selector__, ReentrantCallback(___function_selector__));
                                                ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                v111, /* uint256 */ v112 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(32, 111 + (varg3 - 159), msg.data[varg2] >> 96, v108, msg.data[varg2] >> 96, v109, v110, msg.data[varg2 + 20] >> 96, msg.data[varg2 + 40] >> 96, msg.data[varg2 + 92] >> 240).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v113 = v114 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v113 = new bytes[](RETURNDATASIZE());
                                                    require(!((v113 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v113 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v113)), Panic(65)); // failed memory allocation (too much memory)
                                                    v112 = v113.data;
                                                    RETURNDATACOPY(v112, 0, RETURNDATASIZE());
                                                }
                                                require(v111, v113 + 32, MEM[v113]);
                                                require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                                v0 = v115 = 1;
                                            }
                                        } else {
                                            v116 = v117, v118, v119 = v120, v121, v122, v123 = 0xea8(msg.data[varg2 + 94] >> 96, msg.data[varg2 + 92] >> 240, msg.data[varg2 + 60], msg.data[varg2 + 40] >> 96, msg.data[varg2 + 20] >> 96, msg.data[varg2] >> 96, 3774);
                                            MEM[64] += 384;
                                            EXTCODECOPY(v123, MEM[64], 54, 384);
                                            v124, v125 = 0x37b0(v123);
                                            v116 = v126 = 0;
                                            if (uint16(v122)) {
                                                if (!v117) {
                                                    v127 = 0x89b(v121, this);
                                                    v116 = v128 = v127 * uint16(v122) / 10000;
                                                }
                                                0x2f0f(v121, address(v123), v116);
                                            }
                                            if (!v116) {
                                                if (!v117) {
                                                    v116 = v129 = 0x89b(v121, address(v123));
                                                }
                                            }
                                            v130 = v131 = MEM[96 + MEM[64]];
                                            v132 = v133 = MEM[128 + MEM[64]];
                                            if (address(v121) >= address(v118)) {
                                                if (v124 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18) > v133) {
                                                    v134 = 10 ** 18 * ((v124 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18) - v133) * MEM[192 + MEM[64]] + v131 * MEM[160 + MEM[64]]) < (MEM[224 + MEM[64]] << 1) * v131 * MEM[160 + MEM[64]];
                                                    v135 = (10 ** 18 * ((v124 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18) - v133) * MEM[192 + MEM[64]] + v131 * MEM[160 + MEM[64]]) - (MEM[224 + MEM[64]] << 1) * v131 * MEM[160 + MEM[64]] ^ 0 - v134) + v134;
                                                    v136 = v135 / MEM[160 + MEM[64]] + (bool(v135 % MEM[160 + MEM[64]]) & v134);
                                                    v137 = (uint16.max < v136 >> ((uint32.max < v136 >> ((uint64.max < v136 >> ((uint128.max < v136) << 7)) << 6 | (uint128.max < v136) << 7)) << 5 | ((uint64.max < v136 >> ((uint128.max < v136) << 7)) << 6 | (uint128.max < v136) << 7))) << 4 | ((uint32.max < v136 >> ((uint64.max < v136 >> ((uint128.max < v136) << 7)) << 6 | (uint128.max < v136) << 7)) << 5 | ((uint64.max < v136 >> ((uint128.max < v136) << 7)) << 6 | (uint128.max < v136) << 7));
                                                    v138 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v136 >> ((uint8.max < v136 >> v137) << 3 | v137)))) ^ ((uint8.max < v136 >> v137) << 3 | v137)) + !v136) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v136 >> ((uint8.max < v136 >> v137) << 3 | v137)))) ^ ((uint8.max < v136 >> v137) << 3 | v137)) + !v136) - 127);
                                                    v139 = (uint32.max < v131 * 0x3782dace9d9 >> ((uint64.max < v131 * 0x3782dace9d9 >> ((uint128.max < v131 * 0x3782dace9d9) << 7)) << 6 | (uint128.max < v131 * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < v131 * 0x3782dace9d9 >> ((uint128.max < v131 * 0x3782dace9d9) << 7)) << 6 | (uint128.max < v131 * 0x3782dace9d9) << 7);
                                                    v140 = uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v131 * 0x3782dace9d9 >> ((uint8.max < v131 * 0x3782dace9d9 >> ((uint16.max < v131 * 0x3782dace9d9 >> v139) << 4 | v139)) << 3 | ((uint16.max < v131 * 0x3782dace9d9 >> v139) << 4 | v139))))) ^ ((uint8.max < v131 * 0x3782dace9d9 >> ((uint16.max < v131 * 0x3782dace9d9 >> v139) << 4 | v139)) << 3 | ((uint16.max < v131 * 0x3782dace9d9 >> v139) << 4 | v139))) + !(v131 * 0x3782dace9d9));
                                                    v141 = (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138) << 1;
                                                    if (10 ** 18 * ((v124 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18) - v133) * MEM[192 + MEM[64]] + v131 * MEM[160 + MEM[64]]) >= (MEM[224 + MEM[64]] << 1) * v131 * MEM[160 + MEM[64]]) {
                                                        v142 = (uint40.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> ((uint72.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> ((uint136.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) << 7)) << 6 | (uint136.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) << 7)) << 5 | ((uint72.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> ((uint136.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) << 7)) << 6 | (uint136.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) << 7);
                                                        v143 = ((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / ((181 << (((uint24.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> v142) << 4 | v142) >> 1)) * (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> ((uint24.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> v142) << 4 | v142)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> v142) << 4 | v142) >> 1)) * (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> ((uint24.max < (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141) >> v142) << 4 | v142)) + (uint16.max + 1)) >> 18) >> 1;
                                                        v144 = ((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v143 + v143 >> 1) + (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v143 + v143 >> 1) >> 1) + (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v143 + v143 >> 1) + (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v143 + v143 >> 1) >> 1) >> 1;
                                                        v145 = ((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v144 + v144 >> 1) + (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v144 + v144 >> 1) >> 1) + (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v144 + v144 >> 1) + (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v144 + v144 >> 1) >> 1) >> 1;
                                                        v146 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (v131 * v131) % (v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138)));
                                                        v147 = (v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138))) / (0 - (v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138))) & v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138)));
                                                        v148 = (2 - v147 * ((2 - v147 * ((2 - v147 * (3 * v147 ^ 0x2)) * (3 * v147 ^ 0x2))) * ((2 - v147 * (3 * v147 ^ 0x2)) * (3 * v147 ^ 0x2)))) * ((2 - v147 * ((2 - v147 * (3 * v147 ^ 0x2)) * (3 * v147 ^ 0x2))) * ((2 - v147 * (3 * v147 ^ 0x2)) * (3 * v147 ^ 0x2)));
                                                        v149 = bool(v146) + (((10 ** 18 - MEM[224 + MEM[64]] << 1) * (v131 * v131) - v146) / (0 - (v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138))) & v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138))) | ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (v131 * v131) % uint256.max - (10 ** 18 - MEM[224 + MEM[64]] << 1) * (v131 * v131) - ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (v131 * v131) % uint256.max < (10 ** 18 - MEM[224 + MEM[64]] << 1) * (v131 * v131)) - (v146 > (10 ** 18 - MEM[224 + MEM[64]] << 1) * (v131 * v131))) * ((0 - (0 - (v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138))) & v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138)))) / (0 - (v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138))) & v136 + (v145 - (((v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) >> v141 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max - (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131) % uint256.max < (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (v131 * v131)) << uint8.max + 1 - v141)) / v145 < v145) << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138))) + 1)) * ((2 - v147 * ((2 - v147 * ((2 - v147 * v148) * v148)) * ((2 - v147 * v148) * v148))) * ((2 - v147 * ((2 - v147 * v148) * v148)) * ((2 - v147 * v148) * v148)));
                                                    } else {
                                                        v150 = ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131);
                                                        v151 = (uint40.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> ((uint72.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> ((uint136.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) << 7)) << 6 | (uint136.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) << 7)) << 5 | ((uint72.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> ((uint136.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) << 7)) << 6 | (uint136.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) << 7);
                                                        v152 = (bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / ((181 << (((uint24.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> v151) << 4 | v151) >> 1)) * ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> ((uint24.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> v151) << 4 | v151)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> v151) << 4 | v151) >> 1)) * ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> ((uint24.max < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141)) >> v151) << 4 | v151)) + (uint16.max + 1)) >> 18) >> 1;
                                                        v153 = (bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / v152 + v152 >> 1) + ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / v152 + v152 >> 1) >> 1) + ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / v152 + v152 >> 1) + ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / v152 + v152 >> 1) >> 1) >> 1;
                                                        v154 = (bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / v153 + v153 >> 1) + ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / v153 + v153 >> 1) >> 1) + ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / v153 + v153 >> 1) + ((bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) / v153 + v153 >> 1) >> 1) >> 1;
                                                        v149 = v155 = bool((((v154 * v154 < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) + v154 << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138)) + v136) % (MEM[224 + MEM[64]] << 1)) + (((v154 * v154 < bool(v136 * v136 << uint8.max + 1 - v141) + (v136 * v136 >> v141 | v136 * v136 % uint256.max - v136 * v136 - (v136 * v136 % uint256.max < v136 * v136) << uint8.max + 1 - v141) + (bool(v150 << uint8.max + 1 - v141) + (v150 >> v141 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max - v150 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (v131 * v131) % uint256.max < v150) << uint8.max + 1 - v141))) + v154 << (((v140 > 109) * (v140 - 109) ^ v138) * (v138 < (v140 > 109) * (v140 - 109)) ^ v138)) + v136) / (MEM[224 + MEM[64]] << 1);
                                                    }
                                                    v156 = v157 = (v125 > !(v149 - (v149 > v130)) + (v149 - (v149 > v130))) * (v125 - (!(v149 - (v149 > v130)) + (v149 - (v149 > v130))));
                                                } else {
                                                    v158 = 0x4b42(v124 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], v133, v131, MEM[uint8.max + 1 + MEM[64]]);
                                                    v156 = v159 = (v125 > !v158 + v158) * (v125 - (!v158 + v158));
                                                }
                                            } else if (v125 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18) > v131) {
                                                v160 = 10 ** 18 * ((v125 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18) - v131) * MEM[160 + MEM[64]] + v133 * MEM[192 + MEM[64]]) < (MEM[uint8.max + 1 + MEM[64]] << 1) * v133 * MEM[192 + MEM[64]];
                                                v161 = (10 ** 18 * ((v125 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18) - v131) * MEM[160 + MEM[64]] + v133 * MEM[192 + MEM[64]]) - (MEM[uint8.max + 1 + MEM[64]] << 1) * v133 * MEM[192 + MEM[64]] ^ 0 - v160) + v160;
                                                v162 = v161 / MEM[192 + MEM[64]] + (bool(v161 % MEM[192 + MEM[64]]) & v160);
                                                v163 = (uint16.max < v162 >> ((uint32.max < v162 >> ((uint64.max < v162 >> ((uint128.max < v162) << 7)) << 6 | (uint128.max < v162) << 7)) << 5 | ((uint64.max < v162 >> ((uint128.max < v162) << 7)) << 6 | (uint128.max < v162) << 7))) << 4 | ((uint32.max < v162 >> ((uint64.max < v162 >> ((uint128.max < v162) << 7)) << 6 | (uint128.max < v162) << 7)) << 5 | ((uint64.max < v162 >> ((uint128.max < v162) << 7)) << 6 | (uint128.max < v162) << 7));
                                                v164 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v162 >> ((uint8.max < v162 >> v163) << 3 | v163)))) ^ ((uint8.max < v162 >> v163) << 3 | v163)) + !v162) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v162 >> ((uint8.max < v162 >> v163) << 3 | v163)))) ^ ((uint8.max < v162 >> v163) << 3 | v163)) + !v162) - 127);
                                                v165 = (uint32.max < v133 * 0x3782dace9d9 >> ((uint64.max < v133 * 0x3782dace9d9 >> ((uint128.max < v133 * 0x3782dace9d9) << 7)) << 6 | (uint128.max < v133 * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < v133 * 0x3782dace9d9 >> ((uint128.max < v133 * 0x3782dace9d9) << 7)) << 6 | (uint128.max < v133 * 0x3782dace9d9) << 7);
                                                v166 = uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v133 * 0x3782dace9d9 >> ((uint8.max < v133 * 0x3782dace9d9 >> ((uint16.max < v133 * 0x3782dace9d9 >> v165) << 4 | v165)) << 3 | ((uint16.max < v133 * 0x3782dace9d9 >> v165) << 4 | v165))))) ^ ((uint8.max < v133 * 0x3782dace9d9 >> ((uint16.max < v133 * 0x3782dace9d9 >> v165) << 4 | v165)) << 3 | ((uint16.max < v133 * 0x3782dace9d9 >> v165) << 4 | v165))) + !(v133 * 0x3782dace9d9));
                                                v167 = (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164) << 1;
                                                if (10 ** 18 * ((v125 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18) - v131) * MEM[160 + MEM[64]] + v133 * MEM[192 + MEM[64]]) >= (MEM[uint8.max + 1 + MEM[64]] << 1) * v133 * MEM[192 + MEM[64]]) {
                                                    v168 = (uint40.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> ((uint72.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> ((uint136.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) << 7)) << 6 | (uint136.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) << 7)) << 5 | ((uint72.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> ((uint136.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) << 7)) << 6 | (uint136.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) << 7);
                                                    v169 = ((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / ((181 << (((uint24.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> v168) << 4 | v168) >> 1)) * (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> ((uint24.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> v168) << 4 | v168)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> v168) << 4 | v168) >> 1)) * (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> ((uint24.max < (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167) >> v168) << 4 | v168)) + (uint16.max + 1)) >> 18) >> 1;
                                                    v170 = ((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v169 + v169 >> 1) + (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v169 + v169 >> 1) >> 1) + (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v169 + v169 >> 1) + (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v169 + v169 >> 1) >> 1) >> 1;
                                                    v171 = ((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v170 + v170 >> 1) + (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v170 + v170 >> 1) >> 1) + (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v170 + v170 >> 1) + (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v170 + v170 >> 1) >> 1) >> 1;
                                                    v172 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (v133 * v133) % (v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164)));
                                                    v173 = (v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164))) / (0 - (v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164))) & v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164)));
                                                    v174 = (2 - v173 * ((2 - v173 * ((2 - v173 * (3 * v173 ^ 0x2)) * (3 * v173 ^ 0x2))) * ((2 - v173 * (3 * v173 ^ 0x2)) * (3 * v173 ^ 0x2)))) * ((2 - v173 * ((2 - v173 * (3 * v173 ^ 0x2)) * (3 * v173 ^ 0x2))) * ((2 - v173 * (3 * v173 ^ 0x2)) * (3 * v173 ^ 0x2)));
                                                    v175 = bool(v172) + (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (v133 * v133) - v172) / (0 - (v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164))) & v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164))) | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (v133 * v133) % uint256.max - (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (v133 * v133) - ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (v133 * v133) % uint256.max < (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (v133 * v133)) - (v172 > (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (v133 * v133))) * ((0 - (0 - (v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164))) & v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164)))) / (0 - (v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164))) & v162 + (v171 - (((v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) >> v167 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max - (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133) % uint256.max < (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (v133 * v133)) << uint8.max + 1 - v167)) / v171 < v171) << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164))) + 1)) * ((2 - v173 * ((2 - v173 * ((2 - v173 * v174) * v174)) * ((2 - v173 * v174) * v174))) * ((2 - v173 * ((2 - v173 * v174) * v174)) * ((2 - v173 * v174) * v174)));
                                                } else {
                                                    v176 = ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133);
                                                    v177 = (uint40.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> ((uint72.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> ((uint136.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) << 7)) << 6 | (uint136.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) << 7)) << 5 | ((uint72.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> ((uint136.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) << 7)) << 6 | (uint136.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) << 7);
                                                    v178 = (bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / ((181 << (((uint24.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> v177) << 4 | v177) >> 1)) * ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> ((uint24.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> v177) << 4 | v177)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> v177) << 4 | v177) >> 1)) * ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> ((uint24.max < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167)) >> v177) << 4 | v177)) + (uint16.max + 1)) >> 18) >> 1;
                                                    v179 = (bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / v178 + v178 >> 1) + ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / v178 + v178 >> 1) >> 1) + ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / v178 + v178 >> 1) + ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / v178 + v178 >> 1) >> 1) >> 1;
                                                    v180 = (bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / v179 + v179 >> 1) + ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / v179 + v179 >> 1) >> 1) + ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / v179 + v179 >> 1) + ((bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) / v179 + v179 >> 1) >> 1) >> 1;
                                                    v175 = v181 = bool((((v180 * v180 < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) + v180 << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164)) + v162) % (MEM[uint8.max + 1 + MEM[64]] << 1)) + (((v180 * v180 < bool(v162 * v162 << uint8.max + 1 - v167) + (v162 * v162 >> v167 | v162 * v162 % uint256.max - v162 * v162 - (v162 * v162 % uint256.max < v162 * v162) << uint8.max + 1 - v167) + (bool(v176 << uint8.max + 1 - v167) + (v176 >> v167 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max - v176 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (v133 * v133) % uint256.max < v176) << uint8.max + 1 - v167))) + v180 << (((v166 > 109) * (v166 - 109) ^ v164) * (v164 < (v166 > 109) * (v166 - 109)) ^ v164)) + v162) / (MEM[uint8.max + 1 + MEM[64]] << 1);
                                                }
                                                v156 = v182 = (v124 > !(v175 - (v175 > v132)) + (v175 - (v175 > v132))) * (v124 - (!(v175 - (v175 > v132)) + (v175 - (v175 > v132))));
                                            } else {
                                                v183 = 0x4b42(v125 + (v116 - v116 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], v131, v133, MEM[224 + MEM[64]]);
                                                v156 = v184 = (v124 > !v183 + v183) * (v124 - (!v183 + v183));
                                            }
                                            if (v156 > 1) {
                                                if (!address(v120)) {
                                                    v119 = v185 = this;
                                                }
                                                MEM[MEM[64] + ((address(v121) < address(v118)) << 5) + 32] = v156;
                                                MEM[(0x20 ^ (address(v121) < address(v118)) << 5) + MEM[64] + 32] = 0;
                                                v186, /* uint256 */ v187 = v123.swap(v188, v188, address(v119), 128, 0).gas(msg.gas);
                                                require(v186, v187, RETURNDATASIZE());
                                            }
                                            v0 = v189 = 1;
                                        }
                                    } else {
                                        CALLDATACOPY(MEM[64] + 32, varg2 + 159, varg3 - 159);
                                        MEM[64] = MEM[64] + varg3 - 127;
                                        v190 = 0x12ba(address(msg.data[varg2 + 40] >> 96), msg.data[varg2 + 60], varg4, msg.data[varg2 + 92] >> 240);
                                        v191 = 0xae3(msg.data[varg2 + 95]);
                                        v192 = 0xae3(msg.data[varg2 + int8.max]);
                                        require(!(bool(v192 >> 128) | (bool(v191 >> 128) | ((uint16(msg.data[varg2 + 92] >> 240) > 10000) | bool(v190 >> 128)))), Panic(17)); // arithmetic overflow or underflow
                                        MCOPY(211 + MEM[64], 32 + MEM[64], varg3 - 159);
                                        MEM8[168 + MEM[64]] = (byte(msg.data[varg2 + 94], 0x0)) & 0xFF;
                                        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                        require(!___function_selector__, ReentrantCallback(___function_selector__));
                                        ___function_selector__ = 0x91dd73460000000000000007000000000004444c5dc75cb358380d2e3de08a90;
                                        v193, /* uint256 */ v194 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 111 + (varg3 - 159), msg.data[varg2] >> 96, v190, msg.data[varg2] >> 96, v191, v192, msg.data[varg2 + 20] >> 96, msg.data[varg2 + 40] >> 96, msg.data[varg2 + 92] >> 240).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v195 = v196 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v195 = v197 = new bytes[](RETURNDATASIZE());
                                            require(!((v197 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v197 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v197)), Panic(65)); // failed memory allocation (too much memory)
                                            v194 = v197.data;
                                            RETURNDATACOPY(v194, 0, RETURNDATASIZE());
                                        }
                                        require(v193, v195 + 32, MEM[v195]);
                                        require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                        v0 = v198 = 1;
                                    }
                                } else {
                                    v199 = v200 = msg.data[varg2] >> 96;
                                    v201 = msg.data[varg2 + 74] >> 248;
                                    v202 = 0xacd(v201);
                                    v203 = 0x2638(v201);
                                    v204 = v205 = 0;
                                    while (v204 < v201) {
                                        require(v204 < v203.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v203[v204] = address(msg.data[varg2 + v204 * 20 + 75] >> 96);
                                        v204 = v204 + 1;
                                    }
                                    require(uint8(v201) - 1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
                                    require(uint8(uint8(v201) - 1) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v206 = new uint256[](uint8(uint8(v201) - 1));
                                    require(!((v206 + (32 + (uint8(uint8(v201) - 1) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v206 + (32 + (uint8(uint8(v201) - 1) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v206)), Panic(65)); // failed memory allocation (too much memory)
                                    require(uint8(uint8(v201) - 1) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v207 = v208 = 0;
                                    while (v207 < 32 + (uint8(uint8(v201) - 1) << 5) - 32) {
                                        v209 = 0x267b();
                                        MEM[v206 + v207 + 32] = v209;
                                        v207 = v207 + 32;
                                    }
                                    v210 = 0x26f8(v202);
                                    v211 = v212 = 0;
                                    while (1) {
                                        require(uint8(v201) - 1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
                                        if (v211 >= uint8(uint8(v201) - 1)) {
                                            require(v203.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v213 = 0x12ba(address(MEM[v203.data]), msg.data[varg2 + 40], varg4, msg.data[varg2 + 72] >> 240);
                                            if (0 == !v213) {
                                                v214 = v215 = 0x3a74(v200, v203, v206, v213, msg.data[varg2 + 20] >> 96);
                                            } else {
                                                require(v203.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[v203.data])) {
                                                    require(v203.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v216 = 0x89b(address(MEM[v203.data]), this);
                                                    v217 = _SafeMul(v216, uint16(msg.data[varg2 + 72] >> 240));
                                                    v218 = v219 = v217 / 10000;
                                                } else {
                                                    v220 = _SafeMul(this.balance, uint16(msg.data[varg2 + 72] >> 240));
                                                    v218 = v221 = v220 / 10000;
                                                }
                                                if (!address(v200)) {
                                                    v199 = v222 = this;
                                                }
                                                require(v218 <= int256.max, Panic(17)); // arithmetic overflow or underflow
                                                require(v203.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, address(MEM[v203.data]), 0xbbcb91440523216e2b87052a99f69c604a7b6e00, address(MEM[v203.data]))] = address(msg.data[varg2 + 20] >> 96);
                                                v223 = 0x2638(v206.length);
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + 32;
                                                MEM[MEM[64]] = 0;
                                                CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + 32;
                                                MEM[MEM[64]] = 0;
                                                CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                v224 = 0x3c4();
                                                v224.word0 = address(v199);
                                                v224.word1 = 1;
                                                v224.word2 = MEM[64];
                                                v224.word3 = MEM[64];
                                                v225 = new address[](v203.length);
                                                v226 = v225.data;
                                                v227 = v203.data;
                                                v228 = 0;
                                                while (v228 < v203.length) {
                                                    MEM[v226] = address(MEM[v227]);
                                                    v226 += 32;
                                                    v227 = v227 + 32;
                                                    v228 += 1;
                                                }
                                                MEM[v226] = v206.length;
                                                v229 = v230 = v226 + 32;
                                                v231 = v206.data;
                                                v232 = 0;
                                                while (v232 < v206.length) {
                                                    MEM[v229] = address(MEM[MEM[v231]]);
                                                    MEM[v229 + 32] = address(MEM[MEM[v231] + 32]);
                                                    MEM[v229 + 64] = MEM[MEM[v231] + 64];
                                                    v229 = v229 + 96;
                                                    v231 = v231 + 32;
                                                    v232 = v232 + 1;
                                                }
                                                MEM[v229] = v223.length;
                                                v233 = v234 = v229 + 32;
                                                v235 = v223.data;
                                                v236 = 0;
                                                while (v236 < v223.length) {
                                                    MEM[v233] = MEM[v235];
                                                    v233 += 32;
                                                    v235 = v235 + 32;
                                                    v236 += 1;
                                                }
                                                MEM[v233] = address(v224.word0);
                                                MEM[v233 + 32] = bool(v224.word1);
                                                MEM[v233 + 64] = 128;
                                                MEM[v233 + 128] = MEM[v224.word2];
                                                MCOPY(v233 + 128 + 32, v224.word2 + 32, MEM[v224.word2]);
                                                MEM[v233 + 128 + MEM[v224.word2] + 32] = 0;
                                                v237 = (MEM[v224.word2] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v233 + 128) + 32;
                                                MEM[v233 + 96] = v237 - v233;
                                                MEM[v237] = MEM[v224.word3];
                                                MCOPY(v237 + 32, v224.word3 + 32, MEM[v224.word3]);
                                                MEM[v237 + MEM[v224.word3] + 32] = 0;
                                                require(!((MEM[64] + ((MEM[v224.word3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v237 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((MEM[v224.word3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v237 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0xbbcb91440523216e2b87052a99f69c604a7b6e00) << 96, ConfusedDeputy());
                                                require(!___function_selector__, ReentrantCallback(___function_selector__));
                                                ___function_selector__ = 0xb6a545480000000000000005bbcb91440523216e2b87052a99f69c604a7b6e00;
                                                v238, /* uint256 */ v239 = 0xbbcb91440523216e2b87052a99f69c604a7b6e00.call(0xa3c779fd00000000000000000000000000000000000000000000000000000000, v225, v226 - (MEM[64] + 36), v218, v229 - (MEM[64] + 36), v233 - (MEM[64] + 36)).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v240 = v241 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v240 = new bytes[](RETURNDATASIZE());
                                                    require(!((v240 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v240 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v240)), Panic(65)); // failed memory allocation (too much memory)
                                                    v239 = v240.data;
                                                    RETURNDATACOPY(v239, 0, RETURNDATASIZE());
                                                }
                                                require(v238, v240 + 32, MEM[v240]);
                                                require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                                require(v240 + MEM[v240] + 32 - (v240 + 32) >= 32);
                                            }
                                            v0 = v242 = 1;
                                        } else {
                                            v243 = 0x3d3();
                                            v243.word0 = msg.data[varg2 + v210 + v211 * 40] >> 96;
                                            v243.word1 = msg.data[varg2 + v210 + v211 * 40 + 20] >> 96;
                                            v243.word2 = msg.data[varg2 + v210 + v211 * 40 + 40];
                                            require(v211 < v206.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v206[v211] = v243;
                                            require(v211 < v206.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v211 = v211 + 1;
                                        }
                                    }
                                }
                            } else {
                                v244, v245, v246, v247, v248, v249, v250 = 0xdc1(msg.data[varg2 + 95] >> 248, msg.data[varg2 + 94] >> 248, msg.data[varg2 + 92] >> 240, msg.data[varg2 + 60], msg.data[varg2 + 40] >> 96, msg.data[varg2 + 20] >> 96, msg.data[varg2] >> 96, 3536);
                                v251 = 0x28ca(v247, v245, v246, v244, v248, v249, v250);
                                v0 = v252 = 1;
                            }
                        } else {
                            v253 = v254 = msg.data[varg2 + 20] >> 96;
                            v255 = v256 = msg.data[varg2 + 40] >> 96;
                            v257 = v258 = MEM[64];
                            CALLDATACOPY(v258 + 32, varg2 + 94, varg3 - 94);
                            MEM[64] = v258 + varg3 - 62;
                            v259 = v260 = 0x12ba(msg.data[varg2] >> 96, msg.data[varg2 + 60], varg4, msg.data[varg2 + 92] >> 240);
                            v261 = v262 = 0x1aaf8;
                            if (0 != !v260) {
                                v263 = bytes20(MEM[v258 + 32]);
                                if (varg3 - 94 < 20) {
                                    v263 = v264 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (varg3 - 94) << 3) & MEM[v258 + 32]);
                                }
                                v265 = (v263 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                                require(v265, MEM[64], RETURNDATASIZE());
                                require(31 < RETURNDATASIZE());
                                require((MEM[0] * uint16(msg.data[varg2 + 92] >> 240) / MEM[0] == uint16(msg.data[varg2 + 92] >> 240)) | !MEM[0], Panic(17)); // arithmetic overflow or underflow
                                v259 = v266 = MEM[0] * uint16(msg.data[varg2 + 92] >> 240) / 10000;
                            }
                            require(40 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v267 = v268 = new bytes[](40);
                            require(!((v268 + 96 > uint64.max) | (v268 + 96 < v268)), Panic(65)); // failed memory allocation (too much memory)
                            require(40 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(v268.data, msg.data.length, 64);
                            if (!address(v254)) {
                                v253 = v269 = this;
                            }
                            if (v259 <= int256.max) {
                                while (1) {
                                    revert(Panic(17));
                                    require(MEM[v257] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v270 = v271 = MEM[v257 + 20];
                                    v270 = v272 = MEM[v257 + 44];
                                    if (address(v271) < address(v272)) {
                                    }
                                    if (uint8(MEM[v257 + 21])) {
                                        if (uint8(MEM[v257 + 21]) - 1) {
                                            require(!(2 - uint8(MEM[v257 + 21])), UnknownForkId(uint8(MEM[v257 + 21])));
                                            v273 = 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f;
                                            v274 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                            v275 = 0xfa461e33;
                                        } else {
                                            v273 = v276 = 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9;
                                            v274 = v277 = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
                                            v275 = v278 = 0x23a69e75;
                                        }
                                    } else {
                                        v273 = v279 = 0x1f98431c8ad98523631ae4a59f267346ea31f984;
                                        v274 = v280 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                        v275 = v281 = 0xfa461e33;
                                    }
                                    MEM[32] = v270;
                                    MEM[0] = 0;
                                    MEM[12] = v270 << 96;
                                    MEM8[11] = 0xff & 0xFF;
                                    MEM[40 + v267] = v271;
                                    MEM[20 + v267] = v255;
                                    MEM[v267] = MEM[v267];
                                    MCOPY(196 + MEM[64], v267, 32 + MEM[v267]);
                                    require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(keccak256(v188, v273, keccak256(MEM[0x0:96 - !uint24(MEM[v3bcd_0x2V0xd63 + 24]) << 5]), v274))) << 96, ConfusedDeputy());
                                    v282 = ___function_selector__;
                                    require(!v282, ReentrantCallback(v282));
                                    ___function_selector__ = v275 << 224 | address(keccak256(v188, v273, keccak256(MEM[0x0:96 - !uint24(MEM[v3bcd_0x2V0xd63 + 24]) << 5]), v274)) | 0x60000000000000000000000000000000000000000;
                                    v283, /* uint256 */ v284 = address(keccak256(v188, v273, keccak256(MEM[0x0:96 - !uint24(MEM[v3bcd_0x2V0xd63 + 24]) << 5]), v274)).swap(v253 ^ (this ^ v253) * (MEM[v257] > 44), 0x128acb08000000000000000000000000, address(v271) < address(v272), v259, 0x1000276a4 ^ 0xfffd8963efd1fc6a506488495d951d53639afb81 * (address(v271) >= address(v272)), 160).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v285 = v286 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v285 = new bytes[](RETURNDATASIZE());
                                        require(!((v285 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v285 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v285)), Panic(65)); // failed memory allocation (too much memory)
                                        v284 = v285.data;
                                        RETURNDATACOPY(v284, 0, RETURNDATASIZE());
                                    }
                                    require(v283, v285 + 32, MEM[v285]);
                                    v287 = ___function_selector__;
                                    require(!v287, CallbackNotSpent(v287));
                                    require(v285 + MEM[v285] + 32 - (v285 + 32) >= 64);
                                    v259 = v288 = 0 - ((MEM[v285 + 32 + 32] ^ MEM[v285 + 32]) * (address(v271) < address(v272)) ^ MEM[v285 + 32]);
                                    if (v288 >= 0) {
                                        if (MEM[v257] <= 44) {
                                            v0 = v289 = 1;
                                        } else {
                                            v255 = this;
                                            require(MEM[v257] >= 24, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v257 = v257 + 24;
                                            MEM[v257] = MEM[v257] - 24;
                                            MEM[v267] = 40;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        v290 = msg.data[varg2 + 54] >> 96;
                        v291 = msg.data[varg2 + 74];
                        v292 = varg3 - 106;
                        CALLDATACOPY(MEM[64] + 32, varg2 + 106, v292);
                        MEM[64] = MEM[64] + varg3 - 74;
                        v293 = v294 = 0x12ba(address(msg.data[varg2] >> 96), msg.data[varg2 + 20], varg4, msg.data[varg2 + 52] >> 240);
                        v293 = v295 = 0;
                        if (address(msg.data[varg2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            if (0 == !address(msg.data[varg2] >> 96)) {
                                if (!v294) {
                                    v296 = 0x89b(msg.data[varg2] >> 96, this);
                                    v293 = v297 = 0x2e13(v296, uint16(msg.data[varg2 + 52] >> 240));
                                }
                                require(v291 <= v291 + 32, Panic(17)); // arithmetic overflow or underflow
                                if (v291 + 32 <= v292) {
                                    v298 = 0;
                                    MEM[MEM[64] + (v291 + 32)] = v293;
                                    if (address(v290) - address(msg.data[varg2] >> 96)) {
                                        0x3713(msg.data[varg2] >> 96, v290, v293);
                                    }
                                }
                            } else {
                                require(!v291, InvalidOffset());
                                v298 = v299 = 0;
                            }
                        } else {
                            if (!v294) {
                                v300 = _SafeMul(this.balance, uint16(msg.data[varg2 + 52] >> 240));
                                v293 = v301 = v300 / 10000;
                            }
                            if (0 == !v292) {
                                v302 = 0x2706(v291);
                                if (v302 <= v292) {
                                    v298 = v303 = 0;
                                    MEM[MEM[64] + v302] = v293;
                                }
                            } else {
                                require(!v291, InvalidOffset());
                                v304, /* uint256 */ v305 = address(v290).call().value(v293).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v306 = v307 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v306 = new bytes[](RETURNDATASIZE());
                                    require(!((v306 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v306 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v306)), Panic(65)); // failed memory allocation (too much memory)
                                    v305 = v306.data;
                                    RETURNDATACOPY(v305, 0, RETURNDATASIZE());
                                }
                                require(v304, v306 + 32, MEM[v306]);
                            }
                        }
                        v0 = v308 = 1;
                        revert(Panic(50));
                        v309 = address(v290).call(MEM[MEM[64] + 32:MEM[64] + 32 + v2c6d], MEM[v2ddbV0xd32:v2ddbV0xd32 + v2ddbV0xd32]).value(v293).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v310 = v311 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v310 = new bytes[](RETURNDATASIZE());
                            require(!((v310 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v310 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v310)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v310.data, 0, RETURNDATASIZE());
                        }
                        require(v309, v310 + 32, MEM[v310]);
                        v312 = v313 = !MEM[v310];
                        if (v313) {
                            v312 = v314 = !v290.code.size;
                        }
                        require(!v312, InvalidTarget());
                    }
                } else if (address(msg.data[varg2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                    v315 = 0x89b(address(msg.data[varg2] >> 96), this);
                    v316 = 0x2e13(v315, uint16(msg.data[varg2 + 40] >> 240));
                    0x2f0f(address(msg.data[varg2] >> 96), msg.data[varg2 + 20] >> 96, v316);
                    v0 = v317 = 1;
                } else {
                    v318 = _SafeMul(this.balance, uint16(msg.data[varg2 + 40] >> 240));
                    0x2f52(address(msg.data[varg2 + 20] >> 96), v318 / 10000);
                    v0 = v319 = 1;
                }
            } else {
                v320 = v321 = msg.data[varg2 + 40];
                if (address(msg.data[varg2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                    if (0 != !v321) {
                        v320 = v322 = 0x89b(address(msg.data[varg2] >> 96), this);
                    }
                    v323 = address(msg.data[varg2] >> 96).transfer(msg.data[varg2 + 20] >> 96, 0xa9059cbb000000000000000000000000, v320).gas(msg.gas);
                    if (!v323) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                        MEM[52] = 0;
                        v0 = v324 = 1;
                    }
                } else {
                    if (!v321) {
                        v320 = v325 = this.balance;
                    }
                    v326, /* uint256 */ v327 = address(msg.data[varg2 + 20] >> 96).call().value(v320).gas(msg.gas);
                    require(v326, v327, RETURNDATASIZE());
                    v0 = v328 = 1;
                }
            }
        } else {
            v329, v330, v331, v332 = v333 = 0xba7(msg.data[varg2 + 92] >> 240, msg.data[varg2 + 60], msg.data[varg2 + 40] >> 96, msg.data[varg2 + 20] >> 96, msg.data[varg2] >> 96, 2995);
            if (!address(v333)) {
                v332 = v334 = this;
            }
            v335, /* uint256 */ v336 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, v331 << 96, v330, v330 << 96, v330, v332, v330 << 96, v329).gas(msg.gas);
            require(v335, v336, RETURNDATASIZE());
            v0 = v337 = 1;
        }
    } else {
        0xb45(msg.data[varg2 + 60], msg.data[varg2 + 40] >> 96, msg.data[varg2 + 20] >> 96, msg.data[varg2] >> 96);
        v0 = v338 = 1;
    }
    MEM[64] = MEM[64];
    return v0;
}

function 0xacd(uint256 varg0) private { 
    require(!varg0 | (20 == varg0 * 20 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * 20;
}

function 0xae3(uint256 varg0) private { 
    require(!varg0 | (96 == varg0 * 96 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * 96;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0xb45(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (!address(varg2)) {
        varg2 = v0 = this;
    }
    v1, /* uint256 */ v2 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, varg3 << 96, varg1 << 96, varg1, varg2, varg1 << 96, varg1, varg0).gas(msg.gas);
    require(v1, v2, RETURNDATASIZE());
    return ;
}

function 0xba7(uint16 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    if (address(varg4) - address(v0.word0)) {
        if (address(varg4) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v1 = v2 = 0x89b(address(varg4), this);
        } else {
            v1 = this.balance;
        }
        if (varg1 >= v1) {
            v3 = 0x2e13(v1, varg0);
            return v3, varg2, varg4, varg3;
        } else {
            return varg1, varg2, varg4, varg3;
        }
    } else {
        if (varg1 >= v0.word1) {
            varg1 = v4 = 0x2e13(v0.word1, varg0);
        }
        v5 = _SafeSub(v0.word1, varg1);
        v0.word1 = v5;
        return varg1, varg2, varg4, varg3;
    }
}

function 0xdc1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    if (address(varg6) - address(v0.word0)) {
        if (address(varg6) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v1 = v2 = 0x89b(address(varg6), this);
        } else {
            v1 = this.balance;
        }
        if (varg3 >= v1) {
            v3 = 0x2e13(v1, uint16(varg2));
            return v3, varg5, varg4, varg6, varg2, varg1, varg0;
        } else {
            return varg3, varg5, varg4, varg6, varg2, varg1, varg0;
        }
    } else {
        if (varg3 >= v0.word1) {
            varg3 = v4 = 0x2e13(v0.word1, uint16(varg2));
        }
        v5 = _SafeSub(v0.word1, varg3);
        v0.word1 = v5;
        return varg3, varg5, varg4, varg6, varg2, varg1, varg0;
    }
}

function 0xea8(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (address(varg5) - address(v0.word0)) {
        if (address(varg5) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v1 = v2 = 0x89b(address(varg5), this);
        } else {
            v1 = this.balance;
        }
        if (varg2 >= v1) {
            v3 = 0x2e13(v1, uint16(varg1));
            return v3, varg4, varg3, varg5, varg1, varg0;
        } else {
            return varg2, varg4, varg3, varg5, varg1, varg0;
        }
    } else {
        if (varg2 >= v0.word1) {
            varg2 = v4 = 0x2e13(v0.word1, uint16(varg1));
        }
        v5 = _SafeSub(v0.word1, varg2);
        v0.word1 = v5;
        return varg2, varg4, varg3, varg5, varg1, varg0;
    }
}

function 0xf30(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (address(varg4) - address(v0.word0)) {
        if (address(varg4) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v1 = v2 = 0x89b(address(varg4), this);
        } else {
            v1 = this.balance;
        }
        if (varg3 >= v1) {
            v3 = 0x2e13(v1, uint16(varg2));
            return v3, varg4, varg5, varg2, varg1, varg0;
        } else {
            return varg3, varg4, varg5, varg2, varg1, varg0;
        }
    } else {
        if (varg3 >= v0.word1) {
            varg3 = v4 = 0x2e13(v0.word1, uint16(varg2));
        }
        v5 = _SafeSub(v0.word1, varg3);
        v0.word1 = v5;
        return varg3, varg4, varg5, varg2, varg1, varg0;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15, uint256 varg16, uint256 varg17) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xae4009f == function_selector >> 224) {
            0x0ae4009f();
        } else if (0x67c4a3b0 == function_selector >> 224) {
            0x67c4a3b0();
        } else if (!(0x9fcbfeeb - (function_selector >> 224))) {
            0x9fcbfeeb();
        }
    }
    if (!msg.data.length) {
        receive();
    } else {
        require(!msg.value);
        v0 = ___function_selector__;
        require(!((function_selector ^ v0) >> 224 | (msg.sender ^ v0) << 96));
        ___function_selector__ = 0;
        require(4 <= msg.data.length);
        if (2 == uint16(v0 >> 160)) {
            v1 = v2 = varg10 >> 128;
            v3 = new struct(39);
            v3.word6 = 0;
            MEM[v5370x55ffV0x4c0V0x1a + 480:v5370x55ffV0x4c0V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(varg16 >> 96) * uint128(varg10) % (varg12 >> 128) % 768 + (192 + v3) + 352] | MEM[address(varg16 >> 96) * uint128(varg10) % (varg12 >> 128) % 768 + (192 + v3) + 320]) * (MEM[address(varg16 >> 96) * uint128(varg10) % (varg12 >> 128) % 768 + (192 + v3) + 320] ^ address(varg16 >> 96))), MEM[address(varg16 >> 96) * uint128(varg10) % (varg12 >> 128) % 768 + (192 + v3) + 320], address(varg16 >> 96));
            require(address(varg16 >> 96), ZeroToken());
            MEM[address(varg16 >> 96) * uint128(varg10) % (varg12 >> 128) % 768 + (192 + v3) + 320] = address(varg16 >> 96);
            v3.word0 = address(varg16 >> 96) * uint128(varg10) % (varg12 >> 128) % 768 + (192 + v3) + 288;
            v3.word1 = address(varg16 >> 96) * uint128(varg10) % (varg12 >> 128) % 768 + (192 + v3) + 288;
            v3.word2 = address(varg16 >> 96) * uint128(varg10) % (varg12 >> 128) % 768 + (192 + v3) + 288;
            v3.word4 = uint128(varg10);
            v3.word5 = varg12 >> 128;
            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + v3.word2]) {
                v4 = v5 = 211;
                v6 = v7 = varg5 - 89 - 22;
                if (0 != !v2) {
                    v8 = 0x89b(MEM[32 + v3.word2], this);
                    v1 = uint16(varg16 >> 80) * v8 / 10000;
                }
                MEM[v3.word2] = v1;
            } else {
                v4 = v9 = 211;
                v6 = v10 = varg5 - 89 - 22;
                if (0 != !v2) {
                    v1 = v11 = uint16(varg16 >> 80) * this.balance / 10000;
                }
                MEM[v3.word2] = v1;
            }
            require(uint24.max >= v6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (0x1000000000000000000000000000000 & varg12) {
                v12 = 0x3f97(MEM[32 + v3.word2], varg14 >> 96, MEM[v3.word2]);
                MEM[v3.word2] = v12;
            }
            if (!(MEM[v3.word2] >> int8.max)) {
                v3.word3 = MEM[v3.word2];
                0x407e(v3);
                require(v6 >= 2, Error('Input too short'));
                v13 = 0x409b(varg17 >> 240);
                require(v6 >= uint16(v13), Error('Invalid length field'));
                v14 = 0x409b(varg17 >> 240);
                require(2 <= uint16(v14));
                require(uint16(v14) <= v6);
                v15 = 213;
                v16 = uint16(v14) - 2;
                v17 = 0x409b(varg17 >> 240);
                require(uint16(v17) <= v6);
                require(v6 <= v6);
                v18 = 0x267b();
                while (1) {
                    revert(Panic(17));
                    if (v16 >= 35) {
                        v19 = v20 = 1;
                        v21 = v22 = msg.data[2 + v15];
                        if (v22 >> 248) {
                            if (!MEM[64 + v3.word0]) {
                                v3.word6 += 1;
                                MEM[(1 + v3.word6 << 5) + (192 + v3)] = v3.word0;
                                MEM[64 + v3.word0] = (1 + v3.word6 << 5) + (192 + v3);
                            }
                            if (v22 >> 248 > v20) {
                                if (!MEM[v3.word1]) {
                                    if (MEM[64 + v3.word1]) {
                                        MEM[64 + v3.word1] = 0;
                                        v3.word6 = v3.word6 - 1;
                                        if ((v3.word6 << 5) + (192 + v3) - MEM[64 + v3.word1]) {
                                            MEM[MEM[64 + v3.word1]] = MEM[(v3.word6 << 5) + (192 + v3)];
                                            MEM[64 + MEM[(v3.word6 << 5) + (192 + v3)]] = MEM[64 + v3.word1];
                                        }
                                    }
                                }
                                if ((v22 >> 248) - 2) {
                                    require(v22 >> 248 == 3, Panic(1)); // low-level assert failed
                                    v21 = msg.data[22 + v15];
                                    v19 = 21;
                                    require(!((MEM[address(v22 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 352] | MEM[address(v22 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320]) * (MEM[address(v22 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] ^ address(v22 >> 88))), MEM[address(v22 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320], address(v22 >> 88));
                                    require(address(v22 >> 88), ZeroToken());
                                    MEM[address(v22 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] = address(v22 >> 88);
                                    v3.word1 = address(v22 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288;
                                } else {
                                    v3.word1 = v3.word0;
                                }
                            }
                            v19 = v23 = v19 + 20;
                            require(!((MEM[address(v21 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 352] | MEM[address(v21 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320]) * (MEM[address(v21 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] ^ address(v21 >> 88))), MEM[address(v21 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320], address(v21 >> 88));
                            require(address(v21 >> 88), ZeroToken());
                            MEM[address(v21 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] = address(v21 >> 88);
                            v3.word0 = address(v21 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288;
                            if (v3.word0 == v3.word2) {
                                MEM[v3.word2] = 0x784cb7b8;
                                revert(28 + v3.word2, 36);
                            }
                        }
                        v24 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v3.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word1] << 96) & (MEM[32 + v3.word0] << 96 < MEM[32 + v3.word1] << 96);
                        v18.word1 = address(address(MEM[32 + v3.word0]) ^ (address(MEM[32 + v3.word1]) ^ address(MEM[32 + v3.word0])) * v24);
                        v18.word0 = address(address(MEM[32 + v3.word1]) ^ (address(MEM[32 + v3.word1]) ^ address(MEM[32 + v3.word0])) * v24);
                        v15 = 32 + (v19 + (2 + v15));
                        v16 = v16 - 2 - v19 - 32;
                        v18.word2 = msg.data[v19 + (2 + v15)];
                        require(uint24.max >= v16, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (0x8000 & msg.data[v15] >> 240) {
                            v25, v26 = 0x4319(msg.sender, v18, (msg.data[v15] >> 240 & 0x7fff) * MEM[v3.word1] / 10000, v24, uint96(!v24 * 0xffff9a58c9f7f0ae8d3e0684 ^ 0xffff9a5889f795069a41a8a3));
                            v27 = v28 = (v25 ^ v26) * v24 ^ v26;
                            v29 = v30 = v25 ^ (v25 ^ v26) * v24;
                        } else {
                            MCOPY(32 + MEM[64], v18, 96);
                            v31 = msg.sender.call(0, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + MEM[64]]) * MEM[32 + MEM[64]], v32, v32, (msg.data[v15] >> 240 & 0x7fff) * MEM[v3.word1] / 10000, v24, uint96(!v24 * 0xffff9a58c9f7f0ae8d3e0684 ^ 0xffff9a5889f795069a41a8a3), 0).gas(msg.gas);
                            require(v31, MEM[64], RETURNDATASIZE());
                            v27 = v33 = v24 * (MEM[0x20] ^ MEM[0x0]) ^ MEM[0x0];
                            v29 = v34 = MEM[0x20] ^ v24 * (MEM[0x20] ^ MEM[0x0]);
                        }
                        if (v27 < 0) {
                            MEM[v3.word1] = 0x4c085bf1;
                            revert(28 + v3.word1, 36);
                        } else {
                            MEM[v3.word1] = MEM[v3.word1] - v27;
                            if (!((v27 > (msg.data[v15] >> 240 & 0x7fff) * MEM[v3.word1] / 10000) | (v27 > MEM[v3.word1]))) {
                                if (v29 > 0) {
                                    MEM[v3.word0] = 0x3351b260;
                                    revert(28 + v3.word0, 36);
                                } else {
                                    MEM[v3.word0] += 0 - v29;
                                }
                            }
                        }
                    } else {
                        break;
                    }
                }
                if (MEM[64 + v3.word0]) {
                    MEM[64 + v3.word0] = 0;
                    v3.word6 = v3.word6 - 1;
                    if ((v3.word6 << 5) + (192 + v3) - MEM[64 + v3.word0]) {
                        MEM[MEM[64 + v3.word0]] = MEM[(v3.word6 << 5) + (192 + v3)];
                        MEM[64 + MEM[(v3.word6 << 5) + (192 + v3)]] = MEM[64 + v3.word0];
                    }
                }
                if (!MEM[v3.word1]) {
                    if (MEM[64 + v3.word1]) {
                        MEM[64 + v3.word1] = 0;
                        v3.word6 = v3.word6 - 1;
                        if ((v3.word6 << 5) + (192 + v3) - MEM[64 + v3.word1]) {
                            MEM[MEM[64 + v3.word1]] = MEM[(v3.word6 << 5) + (192 + v3)];
                            MEM[64 + MEM[(v3.word6 << 5) + (192 + v3)]] = MEM[64 + v3.word1];
                        }
                    }
                }
                if (v3.word6) {
                    require(v3.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (v3.word7 - v3.word2) {
                        0x451e(address(MEM[v3.word7 + 32]), v3.word7);
                    }
                    v35 = 1;
                    while (v35 < v3.word6) {
                        0x44f3(MEM[MEM[(v35 << 5) + (192 + v3) + 32]], MEM[32 + MEM[(v35 << 5) + (192 + v3) + 32]]);
                        v35 = v35 + 1;
                    }
                }
                require(MEM[v3.word0], MEM[32 + v3.word0]);
                v36, /* uint256 */ v37 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word0] << 96) * (MEM[32 + v3.word0] << 96), varg9 >> 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word0] << 96) * (MEM[32 + v3.word0] << 96), MEM[v3.word0]).gas(msg.gas);
                require(v36, MEM[64], RETURNDATASIZE());
                MEM[96] = 0;
                if (bool(!(0x1000000000000000000000000000000 & varg12))) {
                    require(v3.word3 != MEM[v3.word2], 0xfb772a88000000000000000000000000, MEM[32 + v3.word2]);
                    v38 = 0x3f97(MEM[32 + v3.word2], varg14 >> 96, v3.word3 - MEM[v3.word2]);
                } else if (MEM[v3.word2]) {
                    require(MEM[v3.word2], MEM[32 + v3.word2]);
                    v39, /* uint256 */ v40 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word2] << 96) * (MEM[32 + v3.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word2] << 96) * (MEM[32 + v3.word2] << 96), this, MEM[v3.word2]).gas(msg.gas);
                    require(v39, MEM[64], RETURNDATASIZE());
                    MEM[96] = 0;
                }
                v41 = v42 = new bytes[](96);
                MEM[v42.data] = 32;
                MEM[64 + v42] = 32;
                MEM[96 + v42] = MEM[v3.word0];
            }
        } else if (7 == uint16(v0 >> 160)) {
            v43 = v44 = varg7 >> 128;
            v45 = new struct(39);
            v45.word6 = 0;
            MEM[v3e940x55ffV0x22adV0x4b6V0x1a + 480:v3e940x55ffV0x22adV0x4b6V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            v46 = MEM[address(varg13 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v45) + 320];
            require(!((MEM[address(varg13 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v45) + 352] | v46) * (v46 ^ address(varg13 >> 96))), v46, address(varg13 >> 96));
            require(address(varg13 >> 96), ZeroToken());
            MEM[address(varg13 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v45) + 320] = address(varg13 >> 96);
            v45.word0 = address(varg13 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v45) + 288;
            v45.word1 = address(varg13 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v45) + 288;
            v45.word2 = address(varg13 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v45) + 288;
            v45.word4 = uint128(varg7);
            v45.word5 = varg10 >> 128;
            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + v45.word2]) {
                v47 = v48 = 179;
                v49 = v50 = varg3 - 89 - 22;
                if (0 != !v44) {
                    v51 = 0x89b(MEM[32 + v45.word2], this);
                    v43 = uint16(varg13 >> 80) * v51 / 10000;
                }
                MEM[v45.word2] = v43;
            } else {
                v47 = v52 = 179;
                v49 = v53 = varg3 - 89 - 22;
                if (0 != !v44) {
                    v43 = v54 = uint16(varg13 >> 80) * this.balance / 10000;
                }
                MEM[v45.word2] = v43;
            }
            require(uint24.max >= v49, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (varg10 & 0x1000000000000000000000000000000) {
                0x4bca(msg.sender, MEM[32 + v45.word2]);
                v55 = 0x4bf3(MEM[32 + v45.word2], MEM[v45.word2], varg11 >> 96);
                MEM[v45.word2] = v55;
            }
            v45.word3 = MEM[v45.word2];
            0x407e(v45);
            require(v49 >= 2, Error('Input too short'));
            v56 = 0x409b(varg15 >> 240);
            require(v49 >= uint16(v56), Error('Invalid length field'));
            v57 = 0x409b(varg15 >> 240);
            require(2 <= uint16(v57));
            require(uint16(v57) <= v49);
            v58 = v59 = 181;
            v60 = v61 = uint16(v57) - 2;
            v62 = 0x409b(varg15 >> 240);
            require(uint16(v62) <= v49);
            require(v49 <= v49);
            v63 = 0x38dd();
            v64 = 0x267b();
            while (v60 >= 32) {
                v65 = v66 = 1;
                v67 = v68 = msg.data[2 + v58];
                if (v68 >> 248) {
                    if (!MEM[64 + v45.word0]) {
                        v45.word6 += 1;
                        MEM[(1 + v45.word6 << 5) + (192 + v45)] = v45.word0;
                        MEM[64 + v45.word0] = (1 + v45.word6 << 5) + (192 + v45);
                    }
                    if (v68 >> 248 > v66) {
                        if (!MEM[v45.word1]) {
                            if (MEM[64 + v45.word1]) {
                                MEM[64 + v45.word1] = 0;
                                v45.word6 = v45.word6 - 1;
                                if ((v45.word6 << 5) + (192 + v45) - MEM[64 + v45.word1]) {
                                    MEM[MEM[64 + v45.word1]] = MEM[(v45.word6 << 5) + (192 + v45)];
                                    MEM[64 + MEM[(v45.word6 << 5) + (192 + v45)]] = MEM[64 + v45.word1];
                                }
                            }
                        }
                        if ((v68 >> 248) - 2) {
                            require(v68 >> 248 == 3, Panic(1)); // low-level assert failed
                            v67 = msg.data[22 + v58];
                            v65 = 21;
                            require(!((MEM[address(v68 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 352] | MEM[address(v68 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 320]) * (MEM[address(v68 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 320] ^ address(v68 >> 88))), MEM[address(v68 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 320], address(v68 >> 88));
                            require(address(v68 >> 88), ZeroToken());
                            MEM[address(v68 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 320] = address(v68 >> 88);
                            v45.word1 = address(v68 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 288;
                        } else {
                            v45.word1 = v45.word0;
                        }
                    }
                    v65 = v69 = v65 + 20;
                    require(!((MEM[address(v67 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 352] | MEM[address(v67 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 320]) * (MEM[address(v67 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 320] ^ address(v67 >> 88))), MEM[address(v67 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 320], address(v67 >> 88));
                    require(address(v67 >> 88), ZeroToken());
                    MEM[address(v67 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 320] = address(v67 >> 88);
                    v45.word0 = address(v67 >> 88) * v45.word4 % v45.word5 % 768 + (192 + v45) + 288;
                    if (v45.word0 == v45.word2) {
                        MEM[v45.word2] = 0x784cb7b8;
                        revert(28 + v45.word2, 36);
                    }
                }
                v70 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v45.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v45.word0] << 96) & (MEM[32 + v45.word1] << 96 < MEM[32 + v45.word0] << 96);
                v63.word1 = address(MEM[32 + v45.word1] ^ (MEM[32 + v45.word0] ^ MEM[32 + v45.word1]) * v70);
                v63.word0 = address(MEM[32 + v45.word0] ^ (MEM[32 + v45.word0] ^ MEM[32 + v45.word1]) * v70);
                v63.word2 = uint24(msg.data[v65 + (2 + v58)] >> 48 >> 184);
                v63.word3 = int24(uint24(msg.data[v65 + (2 + v58)] >> 48 >> 160));
                v63.word4 = address(msg.data[v65 + (2 + v58)] >> 48);
                v60 = v60 - 2 - v65 - 26 - (msg.data[26 + (v65 + (2 + v58))] >> 232) - 3;
                v58 = 3 + (26 + (v65 + (2 + v58)) + (msg.data[26 + (v65 + (2 + v58))] >> 232));
                require(uint24.max >= v60, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v64.word0 = bool(v70);
                v64.word1 = 0 - (msg.data[v58] >> 240) * MEM[v45.word1] / 10000;
                v64.word2 = address(0x1000276a4 ^ 0xfffd8963efd1fc6a506488495d951d53639afb81 * !v70);
                MCOPY(64 + MEM[64], 32 + v63, 128);
                MCOPY(192 + MEM[64], v64, 96);
                v71 = new uint256[](msg.data[26 + (v65 + (2 + v58))] >> 232);
                CALLDATACOPY(v71.data, 26 + (v65 + (2 + v58)) + 3, msg.data[26 + (v65 + (2 + v58))] >> 232);
                v72 = msg.sender.swap((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != v63.word0) * v63.word0, v32, v32, v32, v32, v32, v32, v32, v71).gas(msg.gas);
                if (!v72) {
                    v73 = RETURNDATASIZE();
                    revert(v32, v32, v32, v32, v32, v32, v32, v32, v32, msg.data[26 + (v65 + (2 + v58))] >> 232);
                } else {
                    v74 = _SafeSub(MEM[v45.word1], 0 - (int128(MEM[0]) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v70));
                    MEM[v45.word1] = v74;
                    if (int128(MEM[0] >> 128) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v70 < 0) {
                        MEM[v45.word0] = 0x4c085bf1;
                        revert(28 + v45.word0, 36);
                    } else {
                        MEM[v45.word0] += int128(MEM[0] >> 128) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v70;
                    }
                }
            }
            if (MEM[64 + v45.word0]) {
                MEM[64 + v45.word0] = 0;
                v45.word6 = v45.word6 - 1;
                if ((v45.word6 << 5) + (192 + v45) - MEM[64 + v45.word0]) {
                    MEM[MEM[64 + v45.word0]] = MEM[(v45.word6 << 5) + (192 + v45)];
                    MEM[64 + MEM[(v45.word6 << 5) + (192 + v45)]] = MEM[64 + v45.word0];
                }
            }
            if (!MEM[v45.word1]) {
                if (MEM[64 + v45.word1]) {
                    MEM[64 + v45.word1] = 0;
                    v45.word6 = v45.word6 - 1;
                    if ((v45.word6 << 5) + (192 + v45) - MEM[64 + v45.word1]) {
                        MEM[MEM[64 + v45.word1]] = MEM[(v45.word6 << 5) + (192 + v45)];
                        MEM[64 + MEM[(v45.word6 << 5) + (192 + v45)]] = MEM[64 + v45.word1];
                    }
                }
            }
            if (v45.word6) {
                require(v45.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v45.word7 - v45.word2) {
                    0x45fb(address(MEM[v45.word7 + 32]), v45.word7);
                }
                v75 = 1;
                while (v75 < v45.word6) {
                    0x45d0(MEM[MEM[(v75 << 5) + (192 + v45) + 32]], MEM[32 + MEM[(v75 << 5) + (192 + v45) + 32]]);
                    v75 = v75 + 1;
                }
            }
            require(MEM[v45.word0], MEM[32 + v45.word0]);
            v76, /* uint256 */ v77 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v45.word0] << 96) * (MEM[32 + v45.word0] << 96), varg5 >> 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v45.word0] << 96) * (MEM[32 + v45.word0] << 96), MEM[v45.word0]).gas(msg.gas);
            require(v76, MEM[64], RETURNDATASIZE());
            MEM[96] = 0;
            if (bool(!(varg10 & 0x1000000000000000000000000000000))) {
                require(MEM[v45.word2] != v45.word3, 0xfb772a88000000000000000000000000, MEM[32 + v45.word2]);
                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v45.word2])) {
                    0x4bca(msg.sender, MEM[32 + v45.word2]);
                    v78 = 0x4bf3(MEM[32 + v45.word2], v45.word3 - MEM[v45.word2], varg11 >> 96);
                } else {
                    0x4ba2(msg.sender);
                    v79 = msg.sender.settle().value(v45.word3 - MEM[v45.word2]).gas(msg.gas);
                    require(v79, MEM[64], RETURNDATASIZE());
                }
            } else if (MEM[v45.word2]) {
                require(MEM[v45.word2], MEM[32 + v45.word2]);
                v80, /* uint256 */ v81 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v45.word2] << 96) * (MEM[32 + v45.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v45.word2] << 96) * (MEM[32 + v45.word2] << 96), this, MEM[v45.word2]).gas(msg.gas);
                require(v80, MEM[64], RETURNDATASIZE());
                MEM[96] = 0;
            } else {
                v41 = v82 = new bytes[](96);
                MEM[v82.data] = 32;
                MEM[64 + v82] = 32;
                MEM[96 + v82] = MEM[v45.word0];
            }
            v41 = v83 = new bytes[](96);
            MEM[v83.data] = 32;
            MEM[64 + v83] = 32;
            MEM[96 + v83] = MEM[v45.word0];
            // Unknown jump to Block 0x19f92B0x1a. Refer to 3-address code (TAC);
        } else if (1 == uint16(v0 >> 160)) {
            v84 = v85 = varg2 >> 128;
            v86 = new struct(39);
            v86.word6 = 0;
            MEM[v30850x55ffV0x3014V0x1a + 480:v30850x55ffV0x3014V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v86) + 352] | MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v86) + 320]) * (MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v86) + 320] ^ address(varg8 >> 96))), MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v86) + 320], address(varg8 >> 96));
            require(address(varg8 >> 96), ZeroToken());
            MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v86) + 320] = address(varg8 >> 96);
            v86.word0 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v86) + 288;
            v86.word1 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v86) + 288;
            v86.word2 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v86) + 288;
            v86.word4 = uint128(varg2);
            v86.word5 = varg4 >> 128;
            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + v86.word2]) {
                v87 = v88 = 111;
                v89 = v90 = msg.data.length - 89 - 22;
                if (0 != !v85) {
                    v91 = 0x89b(MEM[32 + v86.word2], this);
                    v84 = uint16(varg8 >> 80) * v91 / 10000;
                }
                MEM[v86.word2] = v84;
            } else {
                v87 = v92 = 111;
                v89 = v93 = msg.data.length - 89 - 22;
                if (0 != !v85) {
                    v84 = v94 = uint16(varg8 >> 80) * this.balance / 10000;
                }
                MEM[v86.word2] = v84;
            }
            require(uint24.max >= v89, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (0x1000000000000000000000000000000 & varg4) {
                v95 = 0x5393(MEM[32 + v86.word2], MEM[v86.word2], varg6 >> 96);
                MEM[v86.word2] = v95;
            }
            v86.word3 = MEM[v86.word2];
            0x407e(v86);
            v96 = 0x38dd();
            v97 = new struct(7);
            require(!((v97 + 224 > uint64.max) | (v97 + 224 < v97)), Panic(65)); // failed memory allocation (too much memory)
            v97.word0 = 0;
            v97.word1 = 0;
            v97.word2 = 0;
            v97.word3 = 0;
            v97.word4 = 0;
            v97.word5 = 0;
            v97.word6 = 96;
            while (v89 >= 3) {
                v98 = v99 = 1;
                v100 = v101 = msg.data[2 + v87];
                if (v101 >> 248) {
                    if (!MEM[64 + v86.word0]) {
                        v86.word6 += 1;
                        MEM[(1 + v86.word6 << 5) + (192 + v86)] = v86.word0;
                        MEM[64 + v86.word0] = (1 + v86.word6 << 5) + (192 + v86);
                    }
                    if (v101 >> 248 > v99) {
                        if (!MEM[v86.word1]) {
                            if (MEM[64 + v86.word1]) {
                                MEM[64 + v86.word1] = 0;
                                v86.word6 = v86.word6 - 1;
                                if ((v86.word6 << 5) + (192 + v86) - MEM[64 + v86.word1]) {
                                    MEM[MEM[64 + v86.word1]] = MEM[(v86.word6 << 5) + (192 + v86)];
                                    MEM[64 + MEM[(v86.word6 << 5) + (192 + v86)]] = MEM[64 + v86.word1];
                                }
                            }
                        }
                        if ((v101 >> 248) - 2) {
                            require(v101 >> 248 == 3, Panic(1)); // low-level assert failed
                            v100 = msg.data[22 + v87];
                            v98 = 21;
                            require(!((MEM[address(v101 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 352] | MEM[address(v101 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320]) * (MEM[address(v101 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320] ^ address(v101 >> 88))), MEM[address(v101 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320], address(v101 >> 88));
                            require(address(v101 >> 88), ZeroToken());
                            MEM[address(v101 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320] = address(v101 >> 88);
                            v86.word1 = address(v101 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 288;
                        } else {
                            v86.word1 = v86.word0;
                        }
                    }
                    v98 = v102 = v98 + 20;
                    require(!((MEM[address(v100 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 352] | MEM[address(v100 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320]) * (MEM[address(v100 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320] ^ address(v100 >> 88))), MEM[address(v100 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320], address(v100 >> 88));
                    require(address(v100 >> 88), ZeroToken());
                    MEM[address(v100 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320] = address(v100 >> 88);
                    v86.word0 = address(v100 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 288;
                    if (v86.word0 == v86.word2) {
                        MEM[v86.word2] = 0x784cb7b8;
                        revert(28 + v86.word2, 36);
                    }
                }
                v87 = v98 + (2 + v87);
                v89 = v89 - 2 - v98;
                if (msg.data[v87] >> 240 & 0xc000) {
                    require(uint24.max >= v89, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (msg.data[v87] >> 240 & 0x4000) {
                        v96.word1 = 1;
                        v96.word2 = address(MEM[32 + v86.word1]);
                    } else {
                        v96.word1 = 0;
                        v96.word2 = address(MEM[32 + v86.word0]);
                    }
                    v96.word3 = MEM[v86.word1] * (msg.data[v87] >> 240 & 0x3fff) / 10000;
                    MEM[v96 - 32] = 0x43583be5;
                    v103 = msg.sender.call(MEM[v30bf_0x0V0x1a - 4:v30bf_0x0V0x1a - 4 + 164], MEM[0:96]).gas(msg.gas);
                    if (!v103) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        MEM[v96 - 32] = MEM[v96 - 32];
                        MEM[v86.word1] = MEM[v86.word1] - MEM[32];
                        require(MEM[v86.word0] <= MEM[v86.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                        MEM[v86.word0] = MEM[v86.word0] + MEM[64];
                    }
                } else {
                    v97.word1 = msg.data[v87] >> 96;
                    v97.word2 = address(MEM[32 + v86.word1]);
                    v97.word3 = address(MEM[32 + v86.word0]);
                    v97.word4 = MEM[v86.word1] * (msg.data[v87] >> 240) / 10000;
                    v89 = v89 - 20 - (msg.data[20 + v87] >> 232) - 3;
                    v87 = 3 + (20 + v87 + (msg.data[20 + v87] >> 232));
                    require(msg.data[20 + v87] >> 232 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v104 = new bytes[](msg.data[20 + v87] >> 232);
                    require(!((v104 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v87] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v104 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v87] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v104)), Panic(65)); // failed memory allocation (too much memory)
                    require(20 + v87 + 3 + (msg.data[20 + v87] >> 232) <= msg.data.length);
                    CALLDATACOPY(v104.data, 20 + v87 + 3, msg.data[20 + v87] >> 232);
                    v104[msg.data[20 + v87] >> 232] = 0;
                    v97.word6 = v104;
                    require(uint24.max >= v89, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[v97 - 64] = 0x2bfb780c;
                    MEM[v97 - 32] = 32;
                    v105 = v97.word6;
                    v97.word6 = v97.word6 - v97;
                    v106 = msg.sender.call(MEM[v3dbcV0x1a - 36:v3dbcV0x1a - 36 + v558aV0x1a.length + v3dbcV0x1a.word6 - v3dbcV0x1a + 68], MEM[0:96]).gas(msg.gas);
                    if (!v106) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        MEM[v97 - 64] = MEM[v97 - 64];
                        MEM[v97 - 32] = MEM[v97 - 32];
                        MEM[v86.word1] = MEM[v86.word1] - MEM[32];
                        require(MEM[v86.word0] <= MEM[v86.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                        MEM[v86.word0] = MEM[v86.word0] + MEM[64];
                        v97.word6 = 96;
                        MEM[64] = MEM[64];
                    }
                }
            }
            if (MEM[64 + v86.word0]) {
                MEM[64 + v86.word0] = 0;
                v86.word6 = v86.word6 - 1;
                if ((v86.word6 << 5) + (192 + v86) - MEM[64 + v86.word0]) {
                    MEM[MEM[64 + v86.word0]] = MEM[(v86.word6 << 5) + (192 + v86)];
                    MEM[64 + MEM[(v86.word6 << 5) + (192 + v86)]] = MEM[64 + v86.word0];
                }
            }
            if (!MEM[v86.word1]) {
                if (MEM[64 + v86.word1]) {
                    MEM[64 + v86.word1] = 0;
                    v86.word6 = v86.word6 - 1;
                    if ((v86.word6 << 5) + (192 + v86) - MEM[64 + v86.word1]) {
                        MEM[MEM[64 + v86.word1]] = MEM[(v86.word6 << 5) + (192 + v86)];
                        MEM[64 + MEM[(v86.word6 << 5) + (192 + v86)]] = MEM[64 + v86.word1];
                    }
                }
            }
            if (v86.word6) {
                require(v86.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v86.word7 - v86.word2) {
                    0x46d8(address(MEM[v86.word7 + 32]), v86.word7);
                }
                v107 = 1;
                while (v107 < v86.word6) {
                    0x46ad(MEM[MEM[(v107 << 5) + (192 + v86) + 32]], MEM[32 + MEM[(v107 << 5) + (192 + v86) + 32]]);
                    v107 = v107 + 1;
                }
            }
            require(MEM[v86.word0], MEM[32 + v86.word0]);
            v108, /* uint256 */ v109 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v86.word0] << 96) * (MEM[32 + v86.word0] << 96), function_selector >> 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v86.word0] << 96) * (MEM[32 + v86.word0] << 96), MEM[v86.word0]).gas(msg.gas);
            require(v108, MEM[64], RETURNDATASIZE());
            MEM[96] = 0;
            if (bool(!(0x1000000000000000000000000000000 & varg4))) {
                require(MEM[v86.word2] != v86.word3, 0xfb772a88000000000000000000000000, MEM[32 + v86.word2]);
                v110 = 0x5393(MEM[32 + v86.word2], v86.word3 - MEM[v86.word2], varg6 >> 96);
            } else if (MEM[v86.word2]) {
                require(MEM[v86.word2], MEM[32 + v86.word2]);
                v111, /* uint256 */ v112 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v86.word2] << 96) * (MEM[32 + v86.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v86.word2] << 96) * (MEM[32 + v86.word2] << 96), this, MEM[v86.word2]).gas(msg.gas);
                require(v111, MEM[64], RETURNDATASIZE());
                MEM[96] = 0;
            }
            v41 = v113 = new bytes[](32);
            MEM[v113.data] = MEM[v86.word0];
        } else if (5 == uint16(v0 >> 160)) {
            require(64 <= msg.data.length - 4);
            STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1, 0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1)] = 0;
            require(!bool(!address(STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1, 0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1)])), Error('Payer is 0'));
            if (this - address(STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1, 0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1)])) {
                v114, /* uint256 */ v115 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(varg1 << 96), bytes20(STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1, 0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1)] << 96), 0xbbcb91440523216e2b87052a99f69c604a7b6e00, bytes20(STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1, 0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1)] << 96), varg3).gas(msg.gas);
                require(v114, MEM[64], RETURNDATASIZE());
                v41 = v116 = MEM[64];
                require(!((v116 + 32 > uint64.max) | (v116 + 32 < v116)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v116 + 32;
                MEM[v116] = 0;
                CALLDATACOPY(v116 + 32, msg.data.length, 0);
            } else {
                0x2f0f(address(varg1), 0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg3);
                v41 = v117 = MEM[64];
                require(!((v117 + 32 > uint64.max) | (v117 + 32 < v117)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v117 + 32;
                MEM[v117] = 0;
                CALLDATACOPY(v117 + 32, msg.data.length, 0);
            }
        } else if (4 == uint16(v0 >> 160)) {
            require(64 <= msg.data.length - 4);
            STORAGE[keccak256(msg.sender, varg1, msg.sender, varg1)] = 0;
            require(!bool(!address(STORAGE[keccak256(msg.sender, varg1, msg.sender, varg1)])), Error('Payer is 0'));
            if (this - address(STORAGE[keccak256(msg.sender, varg1, msg.sender, varg1)])) {
                v118, /* uint256 */ v119 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(varg1 << 96), bytes20(STORAGE[keccak256(msg.sender, varg1, msg.sender, varg1)] << 96), 0x52aa899454998be5b000ad077a46bbe360f4e497, bytes20(STORAGE[keccak256(msg.sender, varg1, msg.sender, varg1)] << 96), varg3).gas(msg.gas);
                require(v118, MEM[64], RETURNDATASIZE());
                v41 = v120 = MEM[64];
                require(!((v120 + 32 > uint64.max) | (v120 + 32 < v120)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v120 + 32;
                MEM[v120] = 0;
                CALLDATACOPY(v120 + 32, msg.data.length, 0);
            } else {
                if (!0) {
                    v121 = v122 = 0x52aa899454998be5b000ad077a46bbe360f4e497;
                } else {
                    v121 = v123 = 0xbbcb91440523216e2b87052a99f69c604a7b6e00;
                }
                v124 = address(varg1).transfer(v121, 0xa9059cbb000000000000000000000000, varg3).gas(msg.gas);
                if (!v124) {
                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                    revert(uint24(MEM[64]), RETURNDATASIZE());
                } else {
                    require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                    MEM[52] = 0;
                    v41 = v125 = MEM[64];
                    require(!((v125 + 32 > uint64.max) | (v125 + 32 < v125)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v125 + 32;
                    MEM[v125] = 0;
                    CALLDATACOPY(v125 + 32, msg.data.length, 0);
                }
            }
        } else if (6 == uint16(v0 >> 160)) {
            require(128 <= msg.data.length - 4);
            if (this - (msg.data[36 + varg5] >> 96)) {
                v126, /* uint256 */ v127 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(msg.data[varg5 + 56]), bytes20(msg.data[36 + varg5]), msg.sender, bytes20(msg.data[36 + varg5]), (varg1 > 0) * (varg1 ^ varg3) ^ varg3).gas(msg.gas);
                require(v126, MEM[64], RETURNDATASIZE());
                v41 = v128 = MEM[64];
                require(!((v128 + 32 > uint64.max) | (v128 + 32 < v128)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v128 + 32;
                MEM[v128] = 0;
                CALLDATACOPY(v128 + 32, msg.data.length, 0);
            } else {
                0x2f0f(msg.data[varg5 + 56] >> 96, msg.sender, (varg1 > 0) * (varg1 ^ varg3) ^ varg3);
                v41 = v129 = MEM[64];
                require(!((v129 + 32 > uint64.max) | (v129 + 32 < v129)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v129 + 32;
                MEM[v129] = 0;
                CALLDATACOPY(v129 + 32, msg.data.length, 0);
            }
        } else {
            require(!(3 - uint16(v0 >> 160)), Panic(81)); // call to a zero-initialized variable of internal function type
            if (this - address(varg5)) {
                v130, /* uint256 */ v131 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(varg3 << 96), varg5, varg5 << 96, varg5, msg.sender, varg5 << 96, varg9).gas(msg.gas);
                require(v130, MEM[64], RETURNDATASIZE());
            } else {
                0x2f0f(varg3, msg.sender, varg9);
            }
            v41 = v132 = new bytes[](96);
            MEM[v132.data] = 32;
            MEM[64 + v132] = 32;
            MEM[96 + v132] = varg9;
        }
        return MEM[v20_0x0V0x21_0 + 32:v20_0x0V0x21_0 + 32 + MEM[v20_0x0V0x21_0]];
    }
}
