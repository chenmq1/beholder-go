// Decompiled by library.dedaub.com
// 2025.12.13 20:12 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 tstor_cd1e9517bb0cb8d0d5cde893; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 tstor_cdccd5c65a7d4860ce3abbe9; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



function 0x103e(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) - 32);
    return v0;
}

function 0x10aa(uint256 varg0, address varg1, uint256 varg2, uint256 varg3) private { 
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

function 0x12cb(uint256 varg0, uint256 varg1, uint256 varg2, uint16 varg3, uint256 varg4, uint256 varg5) private { 
    if (!address(varg0)) {
        v0 = v1 = this;
    }
    varg2 = v2 = 0;
    if (varg3) {
        if (!varg2) {
            v3 = 0x5e1(varg1, this);
            varg2 = v4 = v3 * varg3 / 10000;
        }
    }
    if (varg2) {
        v5 = v6 = 0x1a680;
        v0 = v7 = 5088;
        v8 = v9 = 64;
        0x2760(varg1, address(varg4), varg2);
        if (varg5) {
            v0 = v10 = 0x3c4();
            v10.word0 = varg2;
            v10.word1 = bool(varg5);
            v10.word2 = 0;
            v10.word3 = int32(int32.max);
        }
    } else {
        v11 = 0x5e1(varg1, address(varg4));
        v12, /* uint128 */ v13, /* uint128 */ v14, /* int64 */ v15, /* int64 */ v16, /* uint40 */ v17, /* int32 */ v18, /* bool */ v19, /* uint32 */ v20, /* uint8 */ v21 = address(varg4).getState().gas(msg.gas);
        if (v12) {
            v0 = v22 = 5088;
            v5 = v23 = 0x1a5f7;
            v8 = v24 = 64;
            v25 = v26 = 0;
            if (v12) {
                v27 = 288;
                if (v27 > RETURNDATASIZE()) {
                    v27 = v28 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v27 - MEM[64] >= 288);
                v25 = v29 = 0x3b4();
                require(!0x1865c57d00000000000000000000000000000000000000000000000000000000);
                v29.word0 = v13;
                require(!(v14 - uint128(v14)));
                v29.word1 = v14;
                require(!(v15 - int64(v15)));
                v29.word2 = v15;
                require(!(v16 - int64(v16)));
                v29.word3 = v16;
                require(!(v17 - uint40(v17)));
                v29.word4 = v17;
                require(!(v18 - int32(v18)));
                v29.word5 = v18;
                require(!(v19 - bool(v19)));
                v29.word6 = v19;
                require(!(v20 - uint32(v20)));
                v29.word7 = v20;
                require(!(v21 - uint8(v21)));
                v29.word8 = v21;
                if (varg5) {
                    v30 = uint128(v29.word0);
                }
            } else if (varg5) {
                v30 = v31 = uint128(MEM[v26]);
            }
            v30 = v32 = uint128(MEM[32 + v25]);
            varg2 = v33 = v11 - uint128(v30);
            if (varg5) {
                v0 = v34 = 0x3c4();
                v34.word0 = v33;
                v34.word1 = bool(varg5);
                v34.word2 = 0;
                v34.word3 = int32(int32.max);
                // Unknown jump to Block 0x1a5f7. Refer to 3-address code (TAC);
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    v0 = v35 = 0x3c4();
    v35.word0 = varg2;
    v35.word1 = bool(varg5);
    v35.word2 = 0;
    v35.word3 = int32(int32.min);
    // Unknown jump to Block ['0x1a5f7', '0x1a680']. Refer to 3-address code (TAC);
    v8 = v36 = 0;
    v0 = v37 = uint160.max;
    v8 = v38 = MEM[64];
    require(!((v38 + 32 > uint64.max) | (v38 + 32 < v38)), Panic(65)); // failed memory allocation (too much memory)
    MEM[v38] = 0;
    CALLDATACOPY(v38 + 32, msg.data.length, 0);
    v0 = v39 = MEM[v8];
    v40 = v41 = v39 + 4;
    v40 = v42 = 0x10aa(v41, v0, v0, v8);
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
    v43 = (v0 & v0).call(MEM[v12cbarg0x6:v12cbarg0x6 + v10a7V0x10aa0x12cb - v12cbarg0x6], MEM[v12cbarg0x6:v12cbarg0x6 + v1026V0x1a680]).value(v8).gas(msg.gas);
    if (v43) {
        if (v43) {
            v44 = 64;
            if (64 > RETURNDATASIZE()) {
                v44 = v45 = RETURNDATASIZE();
            }
            require(!((v39 + (v44 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (v44 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v39 + (v44 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(v39 + v44 - v39 >= 64);
            return MEM[v39 + 32];
        } else {
            return 0;
        }
    }
    v8 = v46 = 0;
    v0 = v47 = uint160.max;
    v8 = MEM[64];
    require(!((v8 + 32 > uint64.max) | (v8 + 32 < v8)), Panic(65)); // failed memory allocation (too much memory)
    MEM[v8] = 0;
    CALLDATACOPY(v8 + 32, msg.data.length, 0);
}

function 0x16a8(address varg0, uint256 varg1, uint16 varg2, uint256 varg3, uint256 varg4) private { 
    v0, v1 = 0x27b2(varg4);
    if (!varg3) {
        if (0 != !varg1) {
            v2 = 0x5e1(address(v0), this);
            varg1 = v3 = varg2 * v2 / 10000;
        }
        v4 = v5 = address(v0);
        v6 = v7 = MEM[64];
        v8 = v5.convertToAssets(varg1).gas(msg.gas);
        if (v8) {
            v9 = v10 = 32;
            v9 = v11 = 0;
            if (v8) {
                v12 = v13 = 5793;
                if (v10 <= RETURNDATASIZE()) {
                    require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v7 + 32;
                    v14 = v15 = v7 + v10;
                }
            }
        }
    } else {
        if (0 == !varg1) {
            v16 = v17 = 0;
            v6 = v18 = MEM[64];
            MEM[v18] = 0x6e553f6500000000000000000000000000000000000000000000000000000000;
            v19 = v20 = v18 + 4 + 64;
            MEM[v18 + 4] = varg1;
            MEM[v18 + 4 + 32] = varg0;
        } else {
            v21 = 0x5e1(v1, this);
            v16 = v22 = 0;
            v6 = v23 = MEM[64];
            MEM[v23] = 0x6e553f6500000000000000000000000000000000000000000000000000000000;
            v19 = v24 = v23 + 4 + 64;
            MEM[v23 + 4] = varg2 * v21 / 10000;
            MEM[v23 + 4 + 32] = varg0;
        }
        v25 = address(v0).call(MEM[v16a80x160c:v16a80x160c + v15510x16a8_0x0 - v16a80x160c], MEM[v16a80x160c:v16a80x160c + 32]).value(v16).gas(msg.gas);
        if (v25) {
            if (v25) {
                v12 = v26 = 0x1a727;
                v27 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x158a0x16a8. Refer to 3-address code (TAC);
                }
            } else {
                return 0;
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    require(!((v6 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v6 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v14 = v6 + v27;
    require(v14 - v6 >= 32);
    v9 = MEM[v6];
    // Unknown jump to Block ['0x16a10x16a8', '0x1a7270x16a8', '0x1a7700x16a8']. Refer to 3-address code (TAC);
    return v9;
    return v9;
    v27 = v28 = RETURNDATASIZE();
    // Unknown jump to Block 0x15780x16a8. Refer to 3-address code (TAC);
    v6 = MEM[64];
    v29 = v4.withdraw(v9, varg0, this).gas(msg.gas);
    if (v29) {
        if (v29) {
            v12 = v30 = 0x1a770;
            if (32 <= RETURNDATASIZE()) {
                require(!((v6 + 32 > uint64.max) | (v6 + 32 < v6)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v6 + 32;
                v14 = v31 = v6 + 32;
            }
        } else {
            return v9;
        }
    }
}

function 0x17f5(uint256 varg0, uint256 varg1, uint16 varg2, uint256 varg3) private { 
    if (!varg3) {
        if (!varg1) {
            v0 = 0x548(this);
            varg1 = v1 = varg2 * v0 / 10000;
        }
        v2 = 0x3225737a9bbb6473cb4a45b7244aca2befdb276a.daiToUsds(0xf2c07aae000000000000000000000000, varg0, varg1).gas(msg.gas);
        require(v2, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return varg1;
    } else {
        if (!varg1) {
            v3 = 0x59a(this);
            varg1 = v4 = varg2 * v3 / 10000;
        }
        v5 = 0x3225737a9bbb6473cb4a45b7244aca2befdb276a.usdsToDai(0x68f30150000000000000000000000000, varg0, varg1).gas(msg.gas);
        require(v5, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return varg1;
    }
}

function 0x183e(uint256 varg0, uint256 varg1, uint16 varg2, uint256 varg3) private { 
    if (!varg1) {
        v0 = 0x5e1(varg3 * 0xcbaf3de52eb11ff28c7816df60735a0aa321f647 ^ 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, this);
        varg1 = v1 = varg2 * v0 / 10000;
    }
    if (!varg3) {
        v2 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.sellGem(0x95991276000000000000000000000000, varg0, varg1).gas(msg.gas);
        if (!v2) {
            RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
            revert(uint96(MEM[64]), RETURNDATASIZE());
        } else {
            require(RETURNDATASIZE() > 31);
            MEM[52] = 0;
            return MEM[0];
        }
    } else {
        v3 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.tout().gas(msg.gas);
        require(v3, MEM[64], RETURNDATASIZE());
        require(RETURNDATASIZE() > 31);
        v4 = varg1 * 10 ** 6 / (MEM[0] + 10 ** 18);
        if (varg1 > v4 * 10 ** 12) {
            0x26ec(varg3 * 0xcbaf3de52eb11ff28c7816df60735a0aa321f647 ^ 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, varg1 - v4 * 10 ** 12);
        }
        v5 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.buyGem(0x8d7ef9bb000000000000000000000000, varg0, v4).gas(msg.gas);
        if (!v5) {
            RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
            revert(uint96(MEM[64]), RETURNDATASIZE());
        } else {
            require(RETURNDATASIZE() > 31);
            MEM[52] = 0;
            return v4;
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
            v1 = v6 = 0x5e1(varg3, address(varg0));
        } else {
            v1 = v7 = (address(varg0)).balance;
        }
    }
    v8 = v9 = 0;
    while (v8 < varg5.length) {
        v10 = 0x75d(v8, msg.data[varg5.data + varg5[v8] + 32] >> 224, varg5.data + varg5[v8] + 36, msg.data[varg5.data + varg5[v8]] - 4, v0);
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
            v15 = 0x5e1(varg3, address(varg0));
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

function 0x1e0f(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0);
    require(!((v0 + (32 + (varg0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (varg0 << 5) - 32);
    return v0;
}

function 0x1e48() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    return v0;
}

function 0x1ec5(uint256 varg0) private { 
    require(43 <= 43 + varg0, Panic(17)); // arithmetic overflow or underflow
    return 43 + varg0;
}

function 0x1ed3(uint256 varg0) private { 
    require(varg0 <= varg0 + 32, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 32;
}

function 0x2258(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint16 varg4, uint8 varg5, bool varg6) private { 
    if (0 != !varg3) {
        if (address(varg0) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v0 = 0x5e1(address(varg0), this);
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
        v12 = v13 = address(keccak256(MEM[v57e5V0x22dc + 32:v57e5V0x22dc + 32 + MEM[v57e5V0x22dc]]));
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
        v16 = v17 = 0x1acdd;
        require(!((v15 + 192 > uint64.max) | (v15 + 192 < v15)), Panic(65)); // failed memory allocation (too much memory)
        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(v12)) << 96, ConfusedDeputy());
        require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
        tstor_cdccd5c65a7d4860ce3abbe9 = address(v12) | 0x9410ae8800000000000000030000000000000000000000000000000000000000;
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
        require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
        v24 = v25 = v22 + MEM[v22] + 32;
        v26 = v22 + 32;
    } else {
        v26 = v27 = MEM[64];
        v28 = address(v12).swapIn(varg6, varg3, 0, address(varg1)).value(varg3).gas(msg.gas);
        require(v28, MEM[64], RETURNDATASIZE());
        if (v28) {
            v16 = v29 = 0x1a727;
            v30 = 32;
            if (32 > RETURNDATASIZE()) {
                v30 = v31 = RETURNDATASIZE();
            }
            require(!((v27 + (v30 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v27 + (v30 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v27)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v27 + (v30 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v24 = v27 + v30;
        } else {
            return 0;
        }
    }
    require(v24 - v26 >= 32);
    // Unknown jump to Block ['0x1a7270x2258', '0x1acdd0x2258']. Refer to 3-address code (TAC);
    return MEM[v26];
    return MEM[v26];
}

function 0x2684(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * varg1;
    v1 = varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0);
    require(10000 > v1, Panic(17)); // arithmetic overflow or underflow
    if (varg0 * varg1 % uint256.max - v0 == varg0 * varg1 % uint256.max < v0) {
        return v0 / 10000;
    } else {
        return (v0 - varg0 * varg1 % 10000 >> 4 | v1 - (varg0 * varg1 % 10000 > v0) << 252) * 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91;
    }
}

function 0x26ec(uint256 varg0, uint256 varg1) private { 
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

function 0x2760(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0x27a3(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x27b2(uint256 varg0) private { 
    if (!varg0) {
        return 0x83f20f44975d03b1b09e64809b757c47f942beea, 0x6b175474e89094c44da98b954eedeac495271d0f;
    } else {
        return 0xa3931d71877c0e7a3148cb7eb4463524fec27fbd, 0xdc035d45d973e3ec169d2276ddab16f1e407384f;
    }
}

function 0x2813(uint256 varg0, uint256 varg1) private { 
    v0 = 0x3225737a9bbb6473cb4a45b7244aca2befdb276a.daiToUsds(0xf2c07aae000000000000000000000000, varg0, varg1).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return varg1;
}

function 0x285b(uint256 varg0, uint256 varg1) private { 
    v0 = 0x3225737a9bbb6473cb4a45b7244aca2befdb276a.usdsToDai(0x68f30150000000000000000000000000, varg0, varg1).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return varg1;
}

function 0x2952(uint256 varg0, uint256 varg1) private { 
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

function 0x29f6(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0x351a() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    return v0;
}

function 0x39b4(uint256 varg0, address[] varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    if (!address(varg0)) {
        varg0 = v0 = this;
    }
    require(varg3 <= int256.max, Panic(17)); // arithmetic overflow or underflow
    require(varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, address(MEM[varg1.data]), 0xbbcb91440523216e2b87052a99f69c604a7b6e00, address(MEM[varg1.data]))] = varg4;
    v1 = 0x1e0f(varg2.length);
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
    require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
    tstor_cdccd5c65a7d4860ce3abbe9 = 0xb6a545480000000000000004bbcb91440523216e2b87052a99f69c604a7b6e00;
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
    require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
    require(v18 + MEM[v18] + 32 - (v18 + 32) >= 32);
    return MEM[v18 + 32];
}

function 0x3a3() private { 
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
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

function 0x3c81(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0, /* uint256 */ v1 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, varg0 << 96, varg1 << 96, varg1, varg1 << 96, varg1, varg2, varg3).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x3d3() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3e76(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(varg0)) {
        v0 = new bytes[](100);
        MEM[36 + v0] = varg0;
        MEM[68 + v0] = varg1;
        MEM[100 + v0] = varg2;
        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ msg.sender) << 96, ConfusedDeputy());
        require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
        tstor_cdccd5c65a7d4860ce3abbe9 = msg.sender | 0x599d071400000000000000020000000000000000000000000000000000000000;
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
        require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
        return MEM[96 + v5];
    } else {
        0x27a3(msg.sender, varg2);
        return varg2;
    }
}

function 0x3f65(struct(39) varg0) private { 
    if (!MEM[varg0.word2]) {
        MEM[varg0.word2] = 0xfb772a88;
        revert(28 + varg0.word2, 36);
    } else {
        return ;
    }
}

function 0x3f95(uint16 varg0) private { 
    require(varg0 + 2 <= uint16.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 2;
}

function 0x409() private { 
    v0 = tstor_cdccd5c65a7d4860ce3abbe9;
    require(!((msg.data[0x0] ^ v0) >> 224 | (msg.sender ^ v0) << 96));
    tstor_cdccd5c65a7d4860ce3abbe9 = 0;
    require(4 <= msg.data.length);
    if (1 == uint16(v0 >> 160)) {
        v1 = v2 = msg.data[120] >> 128;
        v3 = new struct(39);
        v3.word6 = 0;
        MEM[v2af20x4f72V0x2a7fV0x4fe + 480:v2af20x4f72V0x2a7fV0x4fe + 480 + 768] = this.code[this.code.size:this.code.size + 768];
        require(!((MEM[address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v3) + 352] | MEM[address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v3) + 320]) * (MEM[address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v3) + 320] ^ address(msg.data[189] >> 96))), MEM[address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v3) + 320], address(msg.data[189] >> 96));
        require(address(msg.data[189] >> 96), ZeroToken());
        MEM[address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v3) + 320] = address(msg.data[189] >> 96);
        v3.word0 = address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v3) + 288;
        v3.word1 = address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v3) + 288;
        v3.word2 = address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v3) + 288;
        v3.word4 = uint128(msg.data[120]);
        v3.word5 = msg.data[152] >> 128;
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + v3.word2]) {
            v4 = v5 = 211;
            v6 = v7 = msg.data[68] - 89 - 22;
            if (0 != !v2) {
                v8 = 0x5e1(MEM[32 + v3.word2], this);
                v1 = uint16(msg.data[189] >> 80) * v8 / 10000;
            }
            MEM[v3.word2] = v1;
        } else {
            v4 = v9 = 211;
            v6 = v10 = msg.data[68] - 89 - 22;
            if (0 != !v2) {
                v1 = v11 = uint16(msg.data[189] >> 80) * this.balance / 10000;
            }
            MEM[v3.word2] = v1;
        }
        require(uint24.max >= v6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (0x1000000000000000000000000000000 & msg.data[152]) {
            v12 = 0x3e76(MEM[32 + v3.word2], msg.data[169] >> 96, MEM[v3.word2]);
            MEM[v3.word2] = v12;
        }
        if (!(MEM[v3.word2] >> int8.max)) {
            v3.word3 = MEM[v3.word2];
            0x3f65(v3);
            require(v6 >= 2, Error('Input too short'));
            require(2 + uint16(msg.data[v4] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
            require(v6 >= uint16(2 + uint16(msg.data[v4] >> 240)), Error('Invalid length field'));
            require(2 + uint16(msg.data[v4] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
            require(2 <= uint16(2 + uint16(msg.data[v4] >> 240)));
            require(uint16(2 + uint16(msg.data[v4] >> 240)) <= v6);
            v13 = 213;
            v14 = uint16(2 + uint16(msg.data[v4] >> 240)) - 2;
            require(2 + uint16(msg.data[v4] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
            require(uint16(2 + uint16(msg.data[v4] >> 240)) <= v6);
            require(v6 <= v6);
            v15 = 0x1e48();
            while (1) {
                revert(Panic(17));
                if (v14 >= 35) {
                    v16 = v17 = 1;
                    v18 = v19 = msg.data[2 + v13];
                    if (v19 >> 248) {
                        if (!MEM[64 + v3.word0]) {
                            v3.word6 += 1;
                            MEM[(1 + v3.word6 << 5) + (192 + v3)] = v3.word0;
                            MEM[64 + v3.word0] = (1 + v3.word6 << 5) + (192 + v3);
                        }
                        if (v19 >> 248 > v17) {
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
                            if ((v19 >> 248) - 2) {
                                require(v19 >> 248 == 3, Panic(1)); // low-level assert failed
                                v18 = msg.data[22 + v13];
                                v16 = 21;
                                require(!((MEM[address(v19 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 352] | MEM[address(v19 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320]) * (MEM[address(v19 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] ^ address(v19 >> 88))), MEM[address(v19 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320], address(v19 >> 88));
                                require(address(v19 >> 88), ZeroToken());
                                MEM[address(v19 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] = address(v19 >> 88);
                                v3.word1 = address(v19 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288;
                            } else {
                                v3.word1 = v3.word0;
                            }
                        }
                        v16 = v20 = v16 + 20;
                        require(!((MEM[address(v18 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 352] | MEM[address(v18 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320]) * (MEM[address(v18 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] ^ address(v18 >> 88))), MEM[address(v18 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320], address(v18 >> 88));
                        require(address(v18 >> 88), ZeroToken());
                        MEM[address(v18 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] = address(v18 >> 88);
                        v3.word0 = address(v18 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288;
                        if (v3.word0 == v3.word2) {
                            MEM[v3.word2] = 0x784cb7b8;
                            revert(28 + v3.word2, 36);
                        }
                    }
                    v21 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v3.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word1] << 96) & (MEM[32 + v3.word0] << 96 < MEM[32 + v3.word1] << 96);
                    v15.word1 = address(address(MEM[32 + v3.word0]) ^ (address(MEM[32 + v3.word1]) ^ address(MEM[32 + v3.word0])) * v21);
                    v15.word0 = address(address(MEM[32 + v3.word1]) ^ (address(MEM[32 + v3.word1]) ^ address(MEM[32 + v3.word0])) * v21);
                    v13 = 32 + (v16 + (2 + v13));
                    v14 = v14 - 2 - v16 - 32;
                    v15.word2 = msg.data[v16 + (2 + v13)];
                    require(uint24.max >= v14, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (0x8000 & msg.data[v13] >> 240) {
                        v22, v23 = 0x4214(msg.sender, v15, (msg.data[v13] >> 240 & 0x7fff) * MEM[v3.word1] / 10000, v21, uint96(!v21 * 0xffff9a58c9f7f0ae8d3e0684 ^ 0xffff9a5889f795069a41a8a3));
                        v24 = v25 = (v22 ^ v23) * v21 ^ v23;
                        v26 = v27 = v22 ^ (v22 ^ v23) * v21;
                    } else {
                        MCOPY(32 + MEM[64], v15, 96);
                        v28 = msg.sender.call(0, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + MEM[64]]) * MEM[32 + MEM[64]], v29, v29, (msg.data[v13] >> 240 & 0x7fff) * MEM[v3.word1] / 10000, v21, uint96(!v21 * 0xffff9a58c9f7f0ae8d3e0684 ^ 0xffff9a5889f795069a41a8a3), 0).gas(msg.gas);
                        require(v28, MEM[64], RETURNDATASIZE());
                        v24 = v21 * (MEM[0x20] ^ MEM[0x0]) ^ MEM[0x0];
                        v26 = MEM[0x20] ^ v21 * (MEM[0x20] ^ MEM[0x0]);
                    }
                    if (v24 < 0) {
                        MEM[v3.word1] = 0x4c085bf1;
                        revert(28 + v3.word1, 36);
                    } else {
                        MEM[v3.word1] = MEM[v3.word1] - v24;
                        if (!((v24 > (msg.data[v13] >> 240 & 0x7fff) * MEM[v3.word1] / 10000) | (v24 > MEM[v3.word1]))) {
                            if (v26 > 0) {
                                MEM[v3.word0] = 0x3351b260;
                                revert(28 + v3.word0, 36);
                            } else {
                                MEM[v3.word0] += 0 - v26;
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
                    0x4419(address(MEM[v3.word7 + 32]), v3.word7);
                }
                v30 = 1;
                while (v30 < v3.word6) {
                    0x43ee(MEM[MEM[(v30 << 5) + (192 + v3) + 32]], MEM[32 + MEM[(v30 << 5) + (192 + v3) + 32]]);
                    v30 = v30 + 1;
                }
            }
            require(MEM[v3.word0], MEM[32 + v3.word0]);
            v31, /* uint256 */ v32 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word0] << 96) * (MEM[32 + v3.word0] << 96), msg.data[100] >> 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word0] << 96) * (MEM[32 + v3.word0] << 96), MEM[v3.word0]).gas(msg.gas);
            require(v31, MEM[64], RETURNDATASIZE());
            MEM[96] = 0;
            if (bool(!(0x1000000000000000000000000000000 & msg.data[152]))) {
                require(v3.word3 != MEM[v3.word2], 0xfb772a88000000000000000000000000, MEM[32 + v3.word2]);
                v33 = 0x3e76(MEM[32 + v3.word2], msg.data[169] >> 96, v3.word3 - MEM[v3.word2]);
            } else if (MEM[v3.word2]) {
                require(MEM[v3.word2], MEM[32 + v3.word2]);
                v34, /* uint256 */ v35 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word2] << 96) * (MEM[32 + v3.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word2] << 96) * (MEM[32 + v3.word2] << 96), this, MEM[v3.word2]).gas(msg.gas);
                require(v34, MEM[64], RETURNDATASIZE());
                MEM[96] = 0;
            }
            v36 = new struct(4);
            v36.word0 = 96;
            v37 = v36.data;
            v36.word1 = 32;
            v36.word2 = 32;
            v36.word3 = MEM[v3.word0];
            return v36;
        }
    } else if (6 == uint16(v0 >> 160)) {
        v38 = v39 = msg.data[88] >> 128;
        v40 = new struct(39);
        v40.word6 = 0;
        MEM[v3d730x4f72V0x3555 + 480:v3d730x4f72V0x3555 + 480 + 768] = this.code[this.code.size:this.code.size + 768];
        require(!((MEM[address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v40) + 352] | MEM[address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v40) + 320]) * (MEM[address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v40) + 320] ^ address(msg.data[157] >> 96))), MEM[address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v40) + 320], address(msg.data[157] >> 96));
        require(address(msg.data[157] >> 96), ZeroToken());
        MEM[address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v40) + 320] = address(msg.data[157] >> 96);
        v40.word0 = address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v40) + 288;
        v40.word1 = address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v40) + 288;
        v40.word2 = address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v40) + 288;
        v40.word4 = uint128(msg.data[88]);
        v40.word5 = msg.data[120] >> 128;
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + v40.word2]) {
            v41 = v42 = 179;
            v43 = v44 = msg.data[36] - 89 - 22;
            if (0 != !v39) {
                v45 = 0x5e1(MEM[32 + v40.word2], this);
                v38 = uint16(msg.data[157] >> 80) * v45 / 10000;
            }
            MEM[v40.word2] = v38;
        } else {
            v41 = v46 = 179;
            v43 = v47 = msg.data[36] - 89 - 22;
            if (0 != !v39) {
                v38 = v48 = uint16(msg.data[157] >> 80) * this.balance / 10000;
            }
            MEM[v40.word2] = v38;
        }
        require(uint24.max >= v43, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (msg.data[120] & 0x1000000000000000000000000000000) {
            0x4694(msg.sender, MEM[32 + v40.word2]);
            v49 = 0x46bd(MEM[32 + v40.word2], MEM[v40.word2], msg.data[137] >> 96);
            MEM[v40.word2] = v49;
        }
        v40.word3 = MEM[v40.word2];
        0x3f65(v40);
        require(v43 >= 2, Error('Input too short'));
        require(2 + uint16(msg.data[v41] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(v43 >= uint16(2 + uint16(msg.data[v41] >> 240)), Error('Invalid length field'));
        require(2 + uint16(msg.data[v41] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(2 <= uint16(2 + uint16(msg.data[v41] >> 240)));
        require(uint16(2 + uint16(msg.data[v41] >> 240)) <= v43);
        v50 = 181;
        v51 = uint16(2 + uint16(msg.data[v41] >> 240)) - 2;
        require(2 + uint16(msg.data[v41] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(uint16(2 + uint16(msg.data[v41] >> 240)) <= v43);
        require(v43 <= v43);
        v52 = 0x351a();
        v53 = 0x1e48();
        while (v51 >= 32) {
            v54 = v55 = 1;
            v56 = v57 = msg.data[2 + v50];
            if (v57 >> 248) {
                if (!MEM[64 + v40.word0]) {
                    v40.word6 += 1;
                    MEM[(1 + v40.word6 << 5) + (192 + v40)] = v40.word0;
                    MEM[64 + v40.word0] = (1 + v40.word6 << 5) + (192 + v40);
                }
                if (v57 >> 248 > v55) {
                    if (!MEM[v40.word1]) {
                        if (MEM[64 + v40.word1]) {
                            MEM[64 + v40.word1] = 0;
                            v40.word6 = v40.word6 - 1;
                            if ((v40.word6 << 5) + (192 + v40) - MEM[64 + v40.word1]) {
                                MEM[MEM[64 + v40.word1]] = MEM[(v40.word6 << 5) + (192 + v40)];
                                MEM[64 + MEM[(v40.word6 << 5) + (192 + v40)]] = MEM[64 + v40.word1];
                            }
                        }
                    }
                    if ((v57 >> 248) - 2) {
                        require(v57 >> 248 == 3, Panic(1)); // low-level assert failed
                        v56 = msg.data[22 + v50];
                        v54 = 21;
                        require(!((MEM[address(v57 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 352] | MEM[address(v57 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 320]) * (MEM[address(v57 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 320] ^ address(v57 >> 88))), MEM[address(v57 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 320], address(v57 >> 88));
                        require(address(v57 >> 88), ZeroToken());
                        MEM[address(v57 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 320] = address(v57 >> 88);
                        v40.word1 = address(v57 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 288;
                    } else {
                        v40.word1 = v40.word0;
                    }
                }
                v54 = v58 = v54 + 20;
                require(!((MEM[address(v56 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 352] | MEM[address(v56 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 320]) * (MEM[address(v56 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 320] ^ address(v56 >> 88))), MEM[address(v56 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 320], address(v56 >> 88));
                require(address(v56 >> 88), ZeroToken());
                MEM[address(v56 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 320] = address(v56 >> 88);
                v40.word0 = address(v56 >> 88) * v40.word4 % v40.word5 % 768 + (192 + v40) + 288;
                if (v40.word0 == v40.word2) {
                    MEM[v40.word2] = 0x784cb7b8;
                    revert(28 + v40.word2, 36);
                }
            }
            v59 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v40.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v40.word0] << 96) & (MEM[32 + v40.word1] << 96 < MEM[32 + v40.word0] << 96);
            v52.word1 = address(MEM[32 + v40.word1] ^ (MEM[32 + v40.word0] ^ MEM[32 + v40.word1]) * v59);
            v52.word0 = address(MEM[32 + v40.word0] ^ (MEM[32 + v40.word0] ^ MEM[32 + v40.word1]) * v59);
            v52.word2 = uint24(msg.data[v54 + (2 + v50)] >> 48 >> 184);
            v52.word3 = int24(uint24(msg.data[v54 + (2 + v50)] >> 48 >> 160));
            v52.word4 = address(msg.data[v54 + (2 + v50)] >> 48);
            v51 = v51 - 2 - v54 - 26 - (msg.data[26 + (v54 + (2 + v50))] >> 232) - 3;
            v50 = 3 + (26 + (v54 + (2 + v50)) + (msg.data[26 + (v54 + (2 + v50))] >> 232));
            require(uint24.max >= v51, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v53.word0 = bool(v59);
            v53.word1 = 0 - (msg.data[v50] >> 240) * MEM[v40.word1] / 10000;
            v53.word2 = address(0x1000276a4 ^ 0xfffd8963efd1fc6a506488495d951d53639afb81 * !v59);
            v60 = 0x48a9(msg.sender, v52, v53, 26 + (v54 + (2 + v50)) + 3, msg.data[26 + (v54 + (2 + v50))] >> 232);
            v61 = _SafeSub(MEM[v40.word1], 0 - (int128(v60) ^ (int128(v60) ^ int128(v60 >> 128)) * v59));
            MEM[v40.word1] = v61;
            if (int128(v60 >> 128) ^ (int128(v60) ^ int128(v60 >> 128)) * v59 < 0) {
                MEM[v40.word0] = 0x4c085bf1;
                revert(28 + v40.word0, 36);
            } else {
                MEM[v40.word0] += int128(v60 >> 128) ^ (int128(v60) ^ int128(v60 >> 128)) * v59;
            }
        }
        if (MEM[64 + v40.word0]) {
            MEM[64 + v40.word0] = 0;
            v40.word6 = v40.word6 - 1;
            if ((v40.word6 << 5) + (192 + v40) - MEM[64 + v40.word0]) {
                MEM[MEM[64 + v40.word0]] = MEM[(v40.word6 << 5) + (192 + v40)];
                MEM[64 + MEM[(v40.word6 << 5) + (192 + v40)]] = MEM[64 + v40.word0];
            }
        }
        if (!MEM[v40.word1]) {
            if (MEM[64 + v40.word1]) {
                MEM[64 + v40.word1] = 0;
                v40.word6 = v40.word6 - 1;
                if ((v40.word6 << 5) + (192 + v40) - MEM[64 + v40.word1]) {
                    MEM[MEM[64 + v40.word1]] = MEM[(v40.word6 << 5) + (192 + v40)];
                    MEM[64 + MEM[(v40.word6 << 5) + (192 + v40)]] = MEM[64 + v40.word1];
                }
            }
        }
        if (v40.word6) {
            require(v40.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v40.word7 - v40.word2) {
                0x44f6(address(MEM[v40.word7 + 32]), v40.word7);
            }
            v62 = 1;
            while (v62 < v40.word6) {
                0x44cb(MEM[MEM[(v62 << 5) + (192 + v40) + 32]], MEM[32 + MEM[(v62 << 5) + (192 + v40) + 32]]);
                v62 = v62 + 1;
            }
        }
        require(MEM[v40.word0], MEM[32 + v40.word0]);
        v63, /* uint256 */ v64 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v40.word0] << 96) * (MEM[32 + v40.word0] << 96), msg.data[68] >> 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v40.word0] << 96) * (MEM[32 + v40.word0] << 96), MEM[v40.word0]).gas(msg.gas);
        require(v63, MEM[64], RETURNDATASIZE());
        MEM[96] = 0;
        if (bool(!(msg.data[120] & 0x1000000000000000000000000000000))) {
            require(MEM[v40.word2] != v40.word3, MEM[32 + v40.word2], 0xfb772a88000000000000000000000000);
            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v40.word2])) {
                0x4694(msg.sender, MEM[32 + v40.word2]);
                v65 = 0x46bd(MEM[32 + v40.word2], v40.word3 - MEM[v40.word2], msg.data[137] >> 96);
            } else {
                0x466c(msg.sender);
                v66 = 0x4932(msg.sender, v40.word3 - MEM[v40.word2]);
            }
        } else if (MEM[v40.word2]) {
            0x45a8(MEM[32 + v40.word2], this, MEM[v40.word2]);
        }
        v67 = new struct(4);
        v67.word0 = 96;
        v68 = v67.data;
        v67.word1 = 32;
        v67.word2 = 32;
        v67.word3 = MEM[v40.word0];
        return v67;
    } else if (4 == uint16(v0 >> 160)) {
        require(64 <= msg.data.length - 4);
        STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4], 0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4])] = 0;
        require(!bool(!address(STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4], 0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4])])), Error('Payer is 0'));
        if (this - address(STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4], 0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4])])) {
            v69, /* uint256 */ v70 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(msg.data[4] << 96), bytes20(STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4], 0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4])] << 96), 0xbbcb91440523216e2b87052a99f69c604a7b6e00, bytes20(STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4], 0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[4])] << 96), msg.data[36]).gas(msg.gas);
            require(v69, MEM[64], RETURNDATASIZE());
            v71 = v72 = MEM[64];
            require(!((v72 + 32 > uint64.max) | (v72 + 32 < v72)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v72 + 32;
            MEM[v72] = 0;
            CALLDATACOPY(v72 + 32, msg.data.length, 0);
        } else {
            0x2760(address(msg.data[4]), 0xbbcb91440523216e2b87052a99f69c604a7b6e00, msg.data[36]);
            v71 = v73 = MEM[64];
            require(!((v73 + 32 > uint64.max) | (v73 + 32 < v73)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v73 + 32;
            MEM[v73] = 0;
            CALLDATACOPY(v73 + 32, msg.data.length, 0);
        }
        return v71;
    } else if (3 == uint16(v0 >> 160)) {
        require(64 <= msg.data.length - 4);
        STORAGE[keccak256(msg.sender, msg.data[4], msg.sender, msg.data[4])] = 0;
        require(!bool(!address(STORAGE[keccak256(msg.sender, msg.data[4], msg.sender, msg.data[4])])), Error('Payer is 0'));
        if (this - address(STORAGE[keccak256(msg.sender, msg.data[4], msg.sender, msg.data[4])])) {
            v74, /* uint256 */ v75 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(msg.data[4] << 96), bytes20(STORAGE[keccak256(msg.sender, msg.data[4], msg.sender, msg.data[4])] << 96), 0x52aa899454998be5b000ad077a46bbe360f4e497, bytes20(STORAGE[keccak256(msg.sender, msg.data[4], msg.sender, msg.data[4])] << 96), msg.data[36]).gas(msg.gas);
            require(v74, MEM[64], RETURNDATASIZE());
            v76 = v77 = MEM[64];
            require(!((v77 + 32 > uint64.max) | (v77 + 32 < v77)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v77 + 32;
            MEM[v77] = 0;
            CALLDATACOPY(v77 + 32, msg.data.length, 0);
        } else {
            if (!0) {
                v78 = v79 = 0x52aa899454998be5b000ad077a46bbe360f4e497;
            } else {
                v78 = v80 = 0xbbcb91440523216e2b87052a99f69c604a7b6e00;
            }
            v81 = address(msg.data[4]).transfer(v78, 0xa9059cbb000000000000000000000000, msg.data[36]).gas(msg.gas);
            if (!v81) {
                RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                revert(uint24(MEM[64]), RETURNDATASIZE());
            } else {
                require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                MEM[52] = 0;
                v76 = v82 = MEM[64];
                require(!((v82 + 32 > uint64.max) | (v82 + 32 < v82)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v82 + 32;
                MEM[v82] = 0;
                CALLDATACOPY(v82 + 32, msg.data.length, 0);
            }
        }
        return v76;
    } else if (5 == uint16(v0 >> 160)) {
        require(128 <= msg.data.length - 4);
        if (this - (msg.data[36 + msg.data[68]] >> 96)) {
            v83, /* uint256 */ v84 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(msg.data[msg.data[68] + 56]), bytes20(msg.data[36 + msg.data[68]]), msg.sender, bytes20(msg.data[36 + msg.data[68]]), (msg.data[4] > 0) * (msg.data[4] ^ msg.data[0x24]) ^ msg.data[0x24]).gas(msg.gas);
            require(v83, MEM[64], RETURNDATASIZE());
            v85 = v86 = MEM[64];
            require(!((v86 + 32 > uint64.max) | (v86 + 32 < v86)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v86 + 32;
            MEM[v86] = 0;
            CALLDATACOPY(v86 + 32, msg.data.length, 0);
        } else {
            0x2760(msg.data[msg.data[68] + 56] >> 96, msg.sender, (msg.data[4] > 0) * (msg.data[4] ^ msg.data[0x24]) ^ msg.data[0x24]);
            v85 = v87 = MEM[64];
            require(!((v87 + 32 > uint64.max) | (v87 + 32 < v87)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v87 + 32;
            MEM[v87] = 0;
            CALLDATACOPY(v87 + 32, msg.data.length, 0);
        }
        return v85;
    } else if (2 == uint16(v0 >> 160)) {
        if (this - address(msg.data[68])) {
            v88, /* uint256 */ v89 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(msg.data[36] << 96), msg.data[68], msg.data[68] << 96, msg.data[68], msg.sender, msg.data[68] << 96, msg.data[100]).gas(msg.gas);
            require(v88, v89, RETURNDATASIZE());
        } else {
            0x2760(msg.data[36], msg.sender, msg.data[100]);
        }
        v90 = new struct(4);
        v90.word0 = 96;
        v91 = v90.data;
        v90.word1 = 32;
        v90.word2 = 32;
        v90.word3 = msg.data[100];
        return v90;
    } else if (7 == uint16(v0 >> 160)) {
        v92 = 0x59d9();
        return v92;
    } else if (9 == uint16(v0 >> 160)) {
        v93 = v94 = msg.data[88] >> 128;
        v95 = new struct(39);
        v95.word6 = 0;
        MEM[v3d730x4f72V0x5a62V0x4af + 480:v3d730x4f72V0x5a62V0x4af + 480 + 768] = this.code[this.code.size:this.code.size + 768];
        v96 = MEM[address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v95) + 320];
        require(!((MEM[address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v95) + 352] | v96) * (v96 ^ address(msg.data[157] >> 96))), v96, address(msg.data[157] >> 96));
        require(address(msg.data[157] >> 96), ZeroToken());
        MEM[address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v95) + 320] = address(msg.data[157] >> 96);
        v95.word0 = address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v95) + 288;
        v95.word1 = address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v95) + 288;
        v95.word2 = address(msg.data[157] >> 96) * uint128(msg.data[88]) % (msg.data[120] >> 128) % 768 + (192 + v95) + 288;
        v95.word4 = uint128(msg.data[88]);
        v95.word5 = msg.data[120] >> 128;
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + v95.word2]) {
            v97 = v98 = 179;
            v99 = v100 = msg.data[36] - 89 - 22;
            if (0 != !v94) {
                v101 = 0x5e1(MEM[32 + v95.word2], this);
                v93 = uint16(msg.data[157] >> 80) * v101 / 10000;
            }
            MEM[v95.word2] = v93;
        } else {
            v97 = v102 = 179;
            v99 = v103 = msg.data[36] - 89 - 22;
            if (0 != !v94) {
                v93 = v104 = uint16(msg.data[157] >> 80) * this.balance / 10000;
            }
            MEM[v95.word2] = v93;
        }
        require(uint24.max >= v99, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (msg.data[120] & 0x1000000000000000000000000000000) {
            0x4694(msg.sender, MEM[32 + v95.word2]);
            v105 = 0x46bd(MEM[32 + v95.word2], MEM[v95.word2], msg.data[137] >> 96);
            MEM[v95.word2] = v105;
        }
        v95.word3 = MEM[v95.word2];
        0x3f65(v95);
        require(v99 >= 2, Error('Input too short'));
        require(2 + uint16(msg.data[v97] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(v99 >= uint16(2 + uint16(msg.data[v97] >> 240)), Error('Invalid length field'));
        require(2 + uint16(msg.data[v97] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(2 <= uint16(2 + uint16(msg.data[v97] >> 240)));
        require(uint16(2 + uint16(msg.data[v97] >> 240)) <= v99);
        v106 = v107 = 181;
        v108 = v109 = uint16(2 + uint16(msg.data[v97] >> 240)) - 2;
        require(2 + uint16(msg.data[v97] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(uint16(2 + uint16(msg.data[v97] >> 240)) <= v99);
        require(v99 <= v99);
        v110 = 0x351a();
        v111 = 0x1e48();
        while (v108 >= 32) {
            v112 = v113 = 1;
            v114 = v115 = msg.data[2 + v106];
            if (v115 >> 248) {
                if (!MEM[64 + v95.word0]) {
                    v95.word6 += 1;
                    MEM[(1 + v95.word6 << 5) + (192 + v95)] = v95.word0;
                    MEM[64 + v95.word0] = (1 + v95.word6 << 5) + (192 + v95);
                }
                if (v115 >> 248 > v113) {
                    if (!MEM[v95.word1]) {
                        if (MEM[64 + v95.word1]) {
                            MEM[64 + v95.word1] = 0;
                            v95.word6 = v95.word6 - 1;
                            if ((v95.word6 << 5) + (192 + v95) - MEM[64 + v95.word1]) {
                                MEM[MEM[64 + v95.word1]] = MEM[(v95.word6 << 5) + (192 + v95)];
                                MEM[64 + MEM[(v95.word6 << 5) + (192 + v95)]] = MEM[64 + v95.word1];
                            }
                        }
                    }
                    if ((v115 >> 248) - 2) {
                        require(v115 >> 248 == 3, Panic(1)); // low-level assert failed
                        v114 = msg.data[22 + v106];
                        v112 = 21;
                        require(!((MEM[address(v115 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 352] | MEM[address(v115 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 320]) * (MEM[address(v115 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 320] ^ address(v115 >> 88))), MEM[address(v115 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 320], address(v115 >> 88));
                        require(address(v115 >> 88), ZeroToken());
                        MEM[address(v115 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 320] = address(v115 >> 88);
                        v95.word1 = address(v115 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 288;
                    } else {
                        v95.word1 = v95.word0;
                    }
                }
                v112 = v116 = v112 + 20;
                require(!((MEM[address(v114 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 352] | MEM[address(v114 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 320]) * (MEM[address(v114 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 320] ^ address(v114 >> 88))), MEM[address(v114 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 320], address(v114 >> 88));
                require(address(v114 >> 88), ZeroToken());
                MEM[address(v114 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 320] = address(v114 >> 88);
                v95.word0 = address(v114 >> 88) * v95.word4 % v95.word5 % 768 + (192 + v95) + 288;
                if (v95.word0 == v95.word2) {
                    MEM[v95.word2] = 0x784cb7b8;
                    revert(28 + v95.word2, 36);
                }
            }
            v117 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v95.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v95.word0] << 96) & (MEM[32 + v95.word1] << 96 < MEM[32 + v95.word0] << 96);
            v110.word1 = address(MEM[32 + v95.word1] ^ (MEM[32 + v95.word0] ^ MEM[32 + v95.word1]) * v117);
            v110.word0 = address(MEM[32 + v95.word0] ^ (MEM[32 + v95.word0] ^ MEM[32 + v95.word1]) * v117);
            v110.word2 = uint24(msg.data[v112 + (2 + v106)] >> 48 >> 184);
            v110.word3 = int24(uint24(msg.data[v112 + (2 + v106)] >> 48 >> 160));
            v110.word4 = address(msg.data[v112 + (2 + v106)] >> 48);
            v108 = v108 - 2 - v112 - 26 - (msg.data[26 + (v112 + (2 + v106))] >> 232) - 3;
            v106 = 3 + (26 + (v112 + (2 + v106)) + (msg.data[26 + (v112 + (2 + v106))] >> 232));
            require(uint24.max >= v108, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v111.word0 = bool(v117);
            v111.word1 = 0 - (msg.data[v106] >> 240) * MEM[v95.word1] / 10000;
            v111.word2 = address(0x1000276a4 ^ 0xfffd8963efd1fc6a506488495d951d53639afb81 * !v117);
            v118 = 0x48a9(msg.sender, v110, v111, 26 + (v112 + (2 + v106)) + 3, msg.data[26 + (v112 + (2 + v106))] >> 232);
            v119 = _SafeSub(MEM[v95.word1], 0 - (int128(v118) ^ (int128(v118) ^ int128(v118 >> 128)) * v117));
            MEM[v95.word1] = v119;
            if (int128(v118 >> 128) ^ (int128(v118) ^ int128(v118 >> 128)) * v117 < 0) {
                MEM[v95.word0] = 0x4c085bf1;
                revert(28 + v95.word0, 36);
            } else {
                MEM[v95.word0] += int128(v118 >> 128) ^ (int128(v118) ^ int128(v118 >> 128)) * v117;
            }
        }
        if (MEM[64 + v95.word0]) {
            MEM[64 + v95.word0] = 0;
            v95.word6 = v95.word6 - 1;
            if ((v95.word6 << 5) + (192 + v95) - MEM[64 + v95.word0]) {
                MEM[MEM[64 + v95.word0]] = MEM[(v95.word6 << 5) + (192 + v95)];
                MEM[64 + MEM[(v95.word6 << 5) + (192 + v95)]] = MEM[64 + v95.word0];
            }
        }
        if (!MEM[v95.word1]) {
            if (MEM[64 + v95.word1]) {
                MEM[64 + v95.word1] = 0;
                v95.word6 = v95.word6 - 1;
                if ((v95.word6 << 5) + (192 + v95) - MEM[64 + v95.word1]) {
                    MEM[MEM[64 + v95.word1]] = MEM[(v95.word6 << 5) + (192 + v95)];
                    MEM[64 + MEM[(v95.word6 << 5) + (192 + v95)]] = MEM[64 + v95.word1];
                }
            }
        }
        if (v95.word6) {
            require(v95.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v95.word7 - v95.word2) {
                0x44f6(address(MEM[v95.word7 + 32]), v95.word7);
            }
            v120 = 1;
            while (v120 < v95.word6) {
                0x44cb(MEM[MEM[(v120 << 5) + (192 + v95) + 32]], MEM[32 + MEM[(v120 << 5) + (192 + v95) + 32]]);
                v120 = v120 + 1;
            }
        }
        require(MEM[v95.word0], MEM[32 + v95.word0]);
        v121, /* uint256 */ v122 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v95.word0] << 96) * (MEM[32 + v95.word0] << 96), msg.data[68] >> 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v95.word0] << 96) * (MEM[32 + v95.word0] << 96), MEM[v95.word0]).gas(msg.gas);
        require(v121, MEM[64], RETURNDATASIZE());
        MEM[96] = 0;
        if (bool(!(msg.data[120] & 0x1000000000000000000000000000000))) {
            require(v95.word3 != MEM[v95.word2], 0xfb772a88000000000000000000000000, MEM[32 + v95.word2]);
            v123 = v124 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
            v125 = v126 = 23462;
            if (v124 - address(MEM[32 + v95.word2])) {
                0x4694(msg.sender, MEM[32 + v95.word2]);
            } else {
                0x466c(msg.sender);
            }
        } else {
            v125 = v127 = 23462;
            v123 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
            if (MEM[v95.word2]) {
                0x45a8(MEM[32 + v95.word2], this, MEM[v95.word2]);
            }
        }
        v128 = new struct(4);
        v128.word0 = 96;
        v129 = v128.data;
        v128.word1 = 32;
        v128.word2 = 32;
        v128.word3 = MEM[v95.word0];
        require(v99 - uint16(2 + uint16(msg.data[v97] >> 240)) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v130 = new bytes[](v99 - uint16(2 + uint16(msg.data[v97] >> 240)));
        require(!((v130 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (v99 - uint16(2 + uint16(msg.data[v97] >> 240)))) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v130 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (v99 - uint16(2 + uint16(msg.data[v97] >> 240)))) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v130)), Panic(65)); // failed memory allocation (too much memory)
        require(uint16(2 + uint16(msg.data[v97] >> 240)) + v97 + (v99 - uint16(2 + uint16(msg.data[v97] >> 240))) <= msg.data.length);
        CALLDATACOPY(v130.data, uint16(2 + uint16(msg.data[v97] >> 240)) + v97, v99 - uint16(2 + uint16(msg.data[v97] >> 240)));
        v130[v99 - uint16(2 + uint16(msg.data[v97] >> 240))] = 0;
        if (!uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240)))) {
            require(uint256.max + v130.length >= 40, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v131 = v132 = address(uint256.max + v130.length);
            v133 = v132 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
            if (v132 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                v133 = v134 = !v132;
            }
            if (!v133) {
                if (this - address(MEM[v130 + 1 + 40])) {
                    0x3c81(v132, MEM[v130 + 1 + 40], msg.sender, v94);
                    // Unknown jump to Block 0x5ba6B0x4af. Refer to 3-address code (TAC);
                } else {
                    v135 = 0x5e1(v132, this);
                    if (v135 > v94) {
                        v136 = _SafeSub(v135, v94);
                        0x26ec(v132, v136);
                    }
                    v137 = v132.transfer(msg.sender, 0xa9059cbb000000000000000000000000, v94).gas(msg.gas);
                    if (!v137) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                        MEM[52] = 0;
                        // Unknown jump to Block 0x5ba6B0x4af. Refer to 3-address code (TAC);
                    }
                }
            } else {
                0x27a3(msg.sender, v94);
                // Unknown jump to Block 0x5ba6B0x4af. Refer to 3-address code (TAC);
            }
        } else {
            v138 = v139 = msg.sender;
            if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 2) {
                if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 3) {
                    if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 4) {
                        if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 1) {
                            if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 5) {
                                if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 6) {
                                    if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 7) {
                                        if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 8) {
                                            if (uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240))) - 9) {
                                                require(!(10 - uint8(v99 - uint16(2 + uint16(msg.data[v97] >> 240)))), Error('Invalid action identifier'));
                                                0x513a(v139);
                                                // Unknown jump to Block 0x5e6e0x5a62B0x4af. Refer to 3-address code (TAC);
                                            } else {
                                                0x515c(v139, v130 + 1);
                                            }
                                        } else {
                                            require(uint256.max + v130.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(uint256.max + v130.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            MEM[v130 + 1 + 75] = uint256.max + v130.length - 75;
                                            if (!address(v139)) {
                                                v138 = v140 = this;
                                            }
                                            v141 = 0x5e1(uint256.max + v130.length, address(MEM[v130 + 1 + 40]));
                                            v142, /* uint128 */ v143, /* uint128 */ v144, /* int64 */ v145, /* int64 */ v146, /* uint40 */ v147, /* int32 */ v148, /* bool */ v149, /* uint32 */ v150, /* uint8 */ v151 = address(MEM[v130 + 1 + 40]).getState().gas(msg.gas);
                                            if (v142) {
                                                v152 = v153 = 0;
                                                if (v142) {
                                                    v154 = 288;
                                                    if (v154 > RETURNDATASIZE()) {
                                                        v154 = v155 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v154 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v154 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v154 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v154 - MEM[64] >= 288);
                                                    v152 = v156 = 0x3b4();
                                                    require(!0x1865c57d00000000000000000000000000000000000000000000000000000000);
                                                    v156.word0 = v143;
                                                    require(!(v144 - uint128(v144)));
                                                    v156.word1 = v144;
                                                    require(!(v145 - int64(v145)));
                                                    v156.word2 = v145;
                                                    require(!(v146 - int64(v146)));
                                                    v156.word3 = v146;
                                                    require(!(v147 - uint40(v147)));
                                                    v156.word4 = v147;
                                                    require(!(v148 - int32(v148)));
                                                    v156.word5 = v148;
                                                    require(!(v149 - bool(v149)));
                                                    v156.word6 = v149;
                                                    require(!(v150 - uint32(v150)));
                                                    v156.word7 = v150;
                                                    require(!(v151 - uint8(v151)));
                                                    v156.word8 = v151;
                                                }
                                                if (!MEM[v130 + 1 + 41]) {
                                                    v157 = v158 = uint128(MEM[32 + v152]);
                                                } else {
                                                    v157 = v159 = uint128(MEM[v152]);
                                                }
                                                if (!MEM[v130 + 1 + 41]) {
                                                    v160 = 0x3c4();
                                                    v160.word0 = v141 - uint128(v157);
                                                    v160.word1 = bool(MEM[v130 + 1 + 41]);
                                                    v160.word2 = 0;
                                                    v160.word3 = int32(int32.min);
                                                    // Unknown jump to Block 0x11c8B0x51a7B0x49e00x494eB0x5e610x5a62B0x4af. Refer to 3-address code (TAC);
                                                } else {
                                                    v160 = v161 = 0x3c4();
                                                    v161.word0 = v141 - uint128(v157);
                                                    v161.word1 = bool(MEM[v130 + 1 + 41]);
                                                    v161.word2 = 0;
                                                    v161.word3 = int32(int32.max);
                                                }
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                v162 = new uint256[](0);
                                                MCOPY(v162.data, MEM[64] + 32, 0);
                                                MEM[v162.data] = 0;
                                                v163, /* uint256 */ v164, /* uint256 */ v165 = address(MEM[v130 + 1 + 40]).call(0x3eece7db00000000000000000000000000000000000000000000000000000000, address(v138), MEM[v160], bool(MEM[v160 + 32]), bool(MEM[v160 + 64]), int32(MEM[v160 + 96]), v162).gas(msg.gas);
                                                if (v163) {
                                                    if (v163) {
                                                        v166 = 64;
                                                        if (64 > RETURNDATASIZE()) {
                                                            v166 = v167 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v166 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v166 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (v166 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + v166 - MEM[64] >= 64);
                                                    }
                                                }
                                            }
                                            revert(MEM[64], RETURNDATASIZE());
                                        }
                                    } else {
                                        0x51ad(v139, v130 + 1);
                                    }
                                } else {
                                    0x51bf(v130 + 1);
                                }
                            } else {
                                0x5224(v139, v130 + 1);
                            }
                        } else {
                            require(uint256.max + v130.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(uint256.max + v130.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            MEM[v130 + 1 + 75] = uint256.max + v130.length - 75;
                            if (!address(v139)) {
                                v138 = v168 = this;
                            }
                            v169 = MEM[v130 + 1 + 40].getReserves().gas(msg.gas);
                            if (v169) {
                                require(RETURNDATASIZE() >= 64);
                                if (0x1 | (uint24(0x1 & MEM[v130 + 1 + 43] >> 1) == 1)) {
                                    v170 = (uint256.max + v130.length).balanceOf(address(MEM[v130 + 1 + 40])).gas(msg.gas);
                                    if (v170) {
                                        require(RETURNDATASIZE() >= 32);
                                        require(MEM[0] >= MEM[0x20 ^ (MEM[v130 + 1 + 43] & 0x1 == 1) << 5], Panic(17)); // arithmetic overflow or underflow
                                        MEM[MEM[64] + ((MEM[v130 + 1 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v130 + 1 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v130 + 1 + 43] & 0x1 == 1) << 5]) * MEM[(MEM[v130 + 1 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v130 + 1 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v130 + 1 + 43] & 0x1 == 1) << 5]) + MEM[0x20 ^ (MEM[v130 + 1 + 43] & 0x1 == 1) << 5] * 10000);
                                        MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v130 + 1 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                        v171 = MEM[v130 + 1 + 40].swap(v29, v29, address(v138), 128, 0).gas(msg.gas);
                                        if (v171) {
                                        }
                                    }
                                } else {
                                    MEM[MEM[64] + ((MEM[v130 + 1 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v130 + 1 + 43] >> 8))) * 0 * MEM[(MEM[v130 + 1 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v130 + 1 + 43] >> 8))) * 0 + MEM[0x20 ^ (MEM[v130 + 1 + 43] & 0x1 == 1) << 5] * 10000);
                                    MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v130 + 1 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                    v172 = MEM[v130 + 1 + 40].swap(v29, v29, address(v138), 128, 0).gas(msg.gas);
                                    if (v172) {
                                    }
                                }
                            }
                            revert(MEM[64], RETURNDATASIZE());
                        }
                    } else {
                        0x5330(v139, this, v130 + 1);
                    }
                } else {
                    0x5364(v139, this, v130 + 1);
                }
            } else {
                if (uint256.max + v130.length >= 54) {
                    if (uint256.max + v130.length >= 54) {
                        if (uint8(uint256.max + v130.length)) {
                            if (uint8(uint256.max + v130.length) - 1) {
                                require(!(2 - uint8(uint256.max + v130.length)), UnknownForkId(uint8(uint256.max + v130.length)));
                                v173 = v174 = 0xfa461e33;
                            } else {
                                v173 = v175 = 0x23a69e75;
                            }
                        } else {
                            v173 = 0xfa461e33;
                        }
                        if (uint8(uint256.max + v130.length) != 1) {
                            v176 = v177 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v176 = v178 = 0x1000276a4;
                        }
                        v179 = new uint256[](uint256.max + v130.length - 54);
                        MCOPY(v179.data, v130 + 1 + 54 + 32, uint256.max + v130.length - 54);
                        MEM[v179 + (uint256.max + v130.length - 54) + 32] = 0;
                        require(!((MEM[64] + ((uint256.max + v130.length - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v179 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint256.max + v130.length - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v179 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(uint256.max + v130.length)) << 96, ConfusedDeputy());
                        require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
                        tstor_cdccd5c65a7d4860ce3abbe9 = v173 << 224 | address(uint256.max + v130.length) | 0xa0000000000000000000000000000000000000000;
                        v180, /* uint256 */ v181 = address(uint256.max + v130.length).swap(address(v139), uint8(uint256.max + v130.length) == 1, MEM[v130 + 1 + 54], address(v176), v179).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v182 = v183 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v182 = new bytes[](RETURNDATASIZE());
                            require(!((v182 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v182 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v182)), Panic(65)); // failed memory allocation (too much memory)
                            v181 = v182.data;
                            RETURNDATACOPY(v181, 0, RETURNDATASIZE());
                        }
                        require(v180, v182 + 32, MEM[v182]);
                        require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
                        MEM[64] = MEM[64];
                    }
                }
                revert(Panic(50));
            }
            v131 = 0;
        }
        if (address(v131) - v123) {
            v184 = 0x4916(msg.sender);
            // Unknown jump to Block 0x1a026. Refer to 3-address code (TAC);
        } else {
            v185 = 0x4932(msg.sender, v94);
        }
        return v128;
    } else if (10 == uint16(v0 >> 160)) {
        require(128 <= msg.data.length - 4);
        v186 = v187 = msg.data[4];
        if (v187 <= 0) {
            v186 = v188 = msg.data[36];
        }
        require((?).length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v189 = new bytes[]((?).length);
        require(!((v189 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (?).length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v189 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (?).length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v189)), Panic(65)); // failed memory allocation (too much memory)
        require((?).data + (?).length <= msg.data.length);
        CALLDATACOPY(v189.data, (?).data, (?).length);
        v189[(?).length] = 0;
        if (!uint8((?).length)) {
            require(uint256.max + v189.length >= 40, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v190 = address(uint256.max + v189.length) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
            if (address(uint256.max + v189.length) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                v190 = v191 = !address(uint256.max + v189.length);
            }
            if (!v190) {
                if (this - address(MEM[v189 + 1 + 40])) {
                    0x3c81(address(uint256.max + v189.length), MEM[v189 + 1 + 40], msg.sender, v186);
                } else {
                    v192 = 0x5e1(address(uint256.max + v189.length), this);
                    if (v192 > v186) {
                        v193 = _SafeSub(v192, v186);
                        0x26ec(address(uint256.max + v189.length), v193);
                    }
                    v194 = address(uint256.max + v189.length).transfer(msg.sender, 0xa9059cbb000000000000000000000000, v186).gas(msg.gas);
                    if (!v194) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                        MEM[52] = 0;
                    }
                }
            } else {
                0x27a3(msg.sender, v186);
            }
        } else {
            v195 = v196 = msg.sender;
            if (uint8((?).length) - 2) {
                if (uint8((?).length) - 3) {
                    if (uint8((?).length) - 4) {
                        if (uint8((?).length) - 1) {
                            if (uint8((?).length) - 5) {
                                if (uint8((?).length) - 6) {
                                    if (uint8((?).length) - 7) {
                                        if (uint8((?).length) - 8) {
                                            if (uint8((?).length) - 9) {
                                                require(!(10 - uint8((?).length)), Error('Invalid action identifier'));
                                                0x513a(v196);
                                                // Unknown jump to Block 0x5e6e0x5dc5B0x4a5. Refer to 3-address code (TAC);
                                            } else {
                                                0x515c(v196, v189 + 1);
                                            }
                                        } else {
                                            require(uint256.max + v189.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(uint256.max + v189.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            MEM[v189 + 1 + 75] = uint256.max + v189.length - 75;
                                            if (!address(v196)) {
                                                v195 = v197 = this;
                                            }
                                            v198 = 0x5e1(uint256.max + v189.length, address(MEM[v189 + 1 + 40]));
                                            v199, /* uint128 */ v200, /* uint128 */ v201, /* int64 */ v202, /* int64 */ v203, /* uint40 */ v204, /* int32 */ v205, /* bool */ v206, /* uint32 */ v207, /* uint8 */ v208 = address(MEM[v189 + 1 + 40]).getState().gas(msg.gas);
                                            if (v199) {
                                                v209 = v210 = 0;
                                                if (v199) {
                                                    v211 = 288;
                                                    if (v211 > RETURNDATASIZE()) {
                                                        v211 = v212 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v211 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v211 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v211 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v211 - MEM[64] >= 288);
                                                    v209 = v213 = 0x3b4();
                                                    require(!0x1865c57d00000000000000000000000000000000000000000000000000000000);
                                                    v213.word0 = v200;
                                                    require(!(v201 - uint128(v201)));
                                                    v213.word1 = v201;
                                                    require(!(v202 - int64(v202)));
                                                    v213.word2 = v202;
                                                    require(!(v203 - int64(v203)));
                                                    v213.word3 = v203;
                                                    require(!(v204 - uint40(v204)));
                                                    v213.word4 = v204;
                                                    require(!(v205 - int32(v205)));
                                                    v213.word5 = v205;
                                                    require(!(v206 - bool(v206)));
                                                    v213.word6 = v206;
                                                    require(!(v207 - uint32(v207)));
                                                    v213.word7 = v207;
                                                    require(!(v208 - uint8(v208)));
                                                    v213.word8 = v208;
                                                }
                                                if (!MEM[v189 + 1 + 41]) {
                                                    v214 = v215 = uint128(MEM[32 + v209]);
                                                } else {
                                                    v214 = v216 = uint128(MEM[v209]);
                                                }
                                                if (!MEM[v189 + 1 + 41]) {
                                                    v217 = 0x3c4();
                                                    v217.word0 = v198 - uint128(v214);
                                                    v217.word1 = bool(MEM[v189 + 1 + 41]);
                                                    v217.word2 = 0;
                                                    v217.word3 = int32(int32.min);
                                                    // Unknown jump to Block 0x11c8B0x51a7B0x49e00x494eB0x5e610x5dc5B0x4a5. Refer to 3-address code (TAC);
                                                } else {
                                                    v217 = v218 = 0x3c4();
                                                    v218.word0 = v198 - uint128(v214);
                                                    v218.word1 = bool(MEM[v189 + 1 + 41]);
                                                    v218.word2 = 0;
                                                    v218.word3 = int32(int32.max);
                                                }
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                v219 = new uint256[](0);
                                                MCOPY(v219.data, MEM[64] + 32, 0);
                                                MEM[v219.data] = 0;
                                                v220, /* uint256 */ v221, /* uint256 */ v222 = address(MEM[v189 + 1 + 40]).call(0x3eece7db00000000000000000000000000000000000000000000000000000000, address(v195), MEM[v217], bool(MEM[v217 + 32]), bool(MEM[v217 + 64]), int32(MEM[v217 + 96]), v219).gas(msg.gas);
                                                if (v220) {
                                                    if (v220) {
                                                        v223 = 64;
                                                        if (64 > RETURNDATASIZE()) {
                                                            v223 = v224 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v223 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v223 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (v223 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + v223 - MEM[64] >= 64);
                                                    }
                                                }
                                            }
                                            revert(MEM[64], RETURNDATASIZE());
                                        }
                                    } else {
                                        0x51ad(v196, v189 + 1);
                                    }
                                } else {
                                    0x51bf(v189 + 1);
                                }
                            } else {
                                0x5224(v196, v189 + 1);
                            }
                        } else {
                            require(uint256.max + v189.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(uint256.max + v189.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            MEM[v189 + 1 + 75] = uint256.max + v189.length - 75;
                            if (!address(v196)) {
                                v195 = v225 = this;
                            }
                            v226 = MEM[v189 + 1 + 40].getReserves().gas(msg.gas);
                            if (v226) {
                                require(RETURNDATASIZE() >= 64);
                                if (0x1 | (uint24(0x1 & MEM[v189 + 1 + 43] >> 1) == 1)) {
                                    v227 = (uint256.max + v189.length).balanceOf(address(MEM[v189 + 1 + 40])).gas(msg.gas);
                                    if (v227) {
                                        require(RETURNDATASIZE() >= 32);
                                        require(MEM[0] >= MEM[0x20 ^ (MEM[v189 + 1 + 43] & 0x1 == 1) << 5], Panic(17)); // arithmetic overflow or underflow
                                        MEM[MEM[64] + ((MEM[v189 + 1 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v189 + 1 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v189 + 1 + 43] & 0x1 == 1) << 5]) * MEM[(MEM[v189 + 1 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v189 + 1 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v189 + 1 + 43] & 0x1 == 1) << 5]) + MEM[0x20 ^ (MEM[v189 + 1 + 43] & 0x1 == 1) << 5] * 10000);
                                        MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v189 + 1 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                        v228 = MEM[v189 + 1 + 40].swap(v29, v29, address(v195), 128, 0).gas(msg.gas);
                                        if (v228) {
                                        }
                                    }
                                } else {
                                    MEM[MEM[64] + ((MEM[v189 + 1 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v189 + 1 + 43] >> 8))) * 0 * MEM[(MEM[v189 + 1 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v189 + 1 + 43] >> 8))) * 0 + MEM[0x20 ^ (MEM[v189 + 1 + 43] & 0x1 == 1) << 5] * 10000);
                                    MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v189 + 1 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                    v229 = MEM[v189 + 1 + 40].swap(v29, v29, address(v195), 128, 0).gas(msg.gas);
                                    if (v229) {
                                    }
                                }
                            }
                            revert(MEM[64], RETURNDATASIZE());
                        }
                    } else {
                        0x5330(v196, this, v189 + 1);
                    }
                } else {
                    0x5364(v196, this, v189 + 1);
                }
            } else {
                if (uint256.max + v189.length >= 54) {
                    if (uint256.max + v189.length >= 54) {
                        if (uint8(uint256.max + v189.length)) {
                            if (uint8(uint256.max + v189.length) - 1) {
                                require(!(2 - uint8(uint256.max + v189.length)), UnknownForkId(uint8(uint256.max + v189.length)));
                                v230 = v231 = 0xfa461e33;
                            } else {
                                v230 = v232 = 0x23a69e75;
                            }
                        } else {
                            v230 = 0xfa461e33;
                        }
                        if (uint8(uint256.max + v189.length) != 1) {
                            v233 = v234 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v233 = v235 = 0x1000276a4;
                        }
                        v236 = new uint256[](uint256.max + v189.length - 54);
                        MCOPY(v236.data, v189 + 1 + 54 + 32, uint256.max + v189.length - 54);
                        MEM[v236 + (uint256.max + v189.length - 54) + 32] = 0;
                        require(!((MEM[64] + ((uint256.max + v189.length - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v236 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint256.max + v189.length - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v236 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(uint256.max + v189.length)) << 96, ConfusedDeputy());
                        require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
                        tstor_cdccd5c65a7d4860ce3abbe9 = v230 << 224 | address(uint256.max + v189.length) | 0xa0000000000000000000000000000000000000000;
                        v237, /* uint256 */ v238 = address(uint256.max + v189.length).swap(address(v196), uint8(uint256.max + v189.length) == 1, MEM[v189 + 1 + 54], address(v233), v236).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v239 = v240 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v239 = new bytes[](RETURNDATASIZE());
                            require(!((v239 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v239 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v239)), Panic(65)); // failed memory allocation (too much memory)
                            v238 = v239.data;
                            RETURNDATACOPY(v238, 0, RETURNDATASIZE());
                        }
                        require(v237, v239 + 32, MEM[v239]);
                        require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
                        MEM[64] = MEM[64];
                    }
                }
                revert(Panic(50));
            }
        }
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + 32;
        MEM[MEM[64]] = 0;
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        return MEM[64];
    } else {
        require(!(8 - uint16(v0 >> 160)), Panic(81)); // call to a zero-initialized variable of internal function type
        require(msg.data.length - 4 - 96 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v241 = new bytes[](msg.data.length - 4 - 96);
        require(!((v241 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data.length - 4 - 96)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v241 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data.length - 4 - 96)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v241)), Panic(65)); // failed memory allocation (too much memory)
        require(100 + (msg.data.length - 4 - 96) <= msg.data.length);
        CALLDATACOPY(v241.data, 100, msg.data.length - 4 - 96);
        v241[msg.data.length - 4 - 96] = 0;
        if (!uint8(msg.data.length - 4 - 96)) {
            require(uint256.max + v241.length >= 40, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v242 = v243 = address(uint256.max + v241.length);
            v244 = v243 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
            if (v243 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                v244 = v245 = !v243;
            }
            if (!v244) {
                if (this - address(MEM[v241 + 1 + 40])) {
                    0x3c81(v243, MEM[v241 + 1 + 40], msg.sender, msg.data[68]);
                } else {
                    v246 = 0x5e1(v243, this);
                    if (v246 > msg.data[68]) {
                        v247 = _SafeSub(v246, msg.data[68]);
                        0x26ec(v243, v247);
                    }
                    v248 = v243.transfer(msg.sender, 0xa9059cbb000000000000000000000000, msg.data[68]).gas(msg.gas);
                    if (!v248) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                        MEM[52] = 0;
                    }
                }
            } else {
                0x27a3(msg.sender, msg.data[68]);
            }
        } else {
            v249 = v250 = msg.sender;
            if (uint8(msg.data.length - 4 - 96) - 2) {
                if (uint8(msg.data.length - 4 - 96) - 3) {
                    if (uint8(msg.data.length - 4 - 96) - 4) {
                        if (uint8(msg.data.length - 4 - 96) - 1) {
                            if (uint8(msg.data.length - 4 - 96) - 5) {
                                if (uint8(msg.data.length - 4 - 96) - 6) {
                                    if (uint8(msg.data.length - 4 - 96) - 7) {
                                        if (uint8(msg.data.length - 4 - 96) - 8) {
                                            if (uint8(msg.data.length - 4 - 96) - 9) {
                                                require(!(10 - uint8(msg.data.length - 4 - 96)), Error('Invalid action identifier'));
                                                0x513a(v250);
                                                // Unknown jump to Block 0x5e6e0x5e35B0x5f2b. Refer to 3-address code (TAC);
                                            } else {
                                                0x515c(v250, v241 + 1);
                                            }
                                        } else {
                                            require(uint256.max + v241.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(uint256.max + v241.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            MEM[v241 + 1 + 75] = uint256.max + v241.length - 75;
                                            if (!address(v250)) {
                                                v249 = v251 = this;
                                            }
                                            v252 = 0x5e1(uint256.max + v241.length, address(MEM[v241 + 1 + 40]));
                                            v253, /* uint128 */ v254, /* uint128 */ v255, /* int64 */ v256, /* int64 */ v257, /* uint40 */ v258, /* int32 */ v259, /* bool */ v260, /* uint32 */ v261, /* uint8 */ v262 = address(MEM[v241 + 1 + 40]).getState().gas(msg.gas);
                                            if (v253) {
                                                v263 = v264 = 0;
                                                if (v253) {
                                                    v265 = 288;
                                                    if (v265 > RETURNDATASIZE()) {
                                                        v265 = v266 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v265 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v265 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v265 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v265 - MEM[64] >= 288);
                                                    v263 = v267 = 0x3b4();
                                                    require(!0x1865c57d00000000000000000000000000000000000000000000000000000000);
                                                    v267.word0 = v254;
                                                    require(!(v255 - uint128(v255)));
                                                    v267.word1 = v255;
                                                    require(!(v256 - int64(v256)));
                                                    v267.word2 = v256;
                                                    require(!(v257 - int64(v257)));
                                                    v267.word3 = v257;
                                                    require(!(v258 - uint40(v258)));
                                                    v267.word4 = v258;
                                                    require(!(v259 - int32(v259)));
                                                    v267.word5 = v259;
                                                    require(!(v260 - bool(v260)));
                                                    v267.word6 = v260;
                                                    require(!(v261 - uint32(v261)));
                                                    v267.word7 = v261;
                                                    require(!(v262 - uint8(v262)));
                                                    v267.word8 = v262;
                                                }
                                                if (!MEM[v241 + 1 + 41]) {
                                                    v268 = v269 = uint128(MEM[32 + v263]);
                                                } else {
                                                    v268 = v270 = uint128(MEM[v263]);
                                                }
                                                if (!MEM[v241 + 1 + 41]) {
                                                    v271 = 0x3c4();
                                                    v271.word0 = v252 - uint128(v268);
                                                    v271.word1 = bool(MEM[v241 + 1 + 41]);
                                                    v271.word2 = 0;
                                                    v271.word3 = int32(int32.min);
                                                    // Unknown jump to Block 0x11c8B0x51a7B0x49e00x494eB0x5e610x5e35B0x5f2b. Refer to 3-address code (TAC);
                                                } else {
                                                    v271 = v272 = 0x3c4();
                                                    v272.word0 = v252 - uint128(v268);
                                                    v272.word1 = bool(MEM[v241 + 1 + 41]);
                                                    v272.word2 = 0;
                                                    v272.word3 = int32(int32.max);
                                                }
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                v273 = new uint256[](0);
                                                MCOPY(v273.data, MEM[64] + 32, 0);
                                                MEM[v273.data] = 0;
                                                v274, /* uint256 */ v275, /* uint256 */ v276 = address(MEM[v241 + 1 + 40]).call(0x3eece7db00000000000000000000000000000000000000000000000000000000, address(v249), MEM[v271], bool(MEM[v271 + 32]), bool(MEM[v271 + 64]), int32(MEM[v271 + 96]), v273).gas(msg.gas);
                                                if (v274) {
                                                    if (v274) {
                                                        v277 = 64;
                                                        if (64 > RETURNDATASIZE()) {
                                                            v277 = v278 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v277 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v277 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (v277 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + v277 - MEM[64] >= 64);
                                                    }
                                                }
                                            }
                                            revert(MEM[64], RETURNDATASIZE());
                                        }
                                    } else {
                                        0x51ad(v250, v241 + 1);
                                    }
                                } else {
                                    0x51bf(v241 + 1);
                                }
                            } else {
                                0x5224(v250, v241 + 1);
                            }
                        } else {
                            require(uint256.max + v241.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(uint256.max + v241.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            MEM[v241 + 1 + 75] = uint256.max + v241.length - 75;
                            if (!address(v250)) {
                                v249 = v279 = this;
                            }
                            v280 = MEM[v241 + 1 + 40].getReserves().gas(msg.gas);
                            if (v280) {
                                require(RETURNDATASIZE() >= 64);
                                if (0x1 | (uint24(0x1 & MEM[v241 + 1 + 43] >> 1) == 1)) {
                                    v281 = (uint256.max + v241.length).balanceOf(address(MEM[v241 + 1 + 40])).gas(msg.gas);
                                    if (v281) {
                                        require(RETURNDATASIZE() >= 32);
                                        require(MEM[0] >= MEM[0x20 ^ (MEM[v241 + 1 + 43] & 0x1 == 1) << 5], Panic(17)); // arithmetic overflow or underflow
                                        MEM[MEM[64] + ((MEM[v241 + 1 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v241 + 1 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v241 + 1 + 43] & 0x1 == 1) << 5]) * MEM[(MEM[v241 + 1 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v241 + 1 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v241 + 1 + 43] & 0x1 == 1) << 5]) + MEM[0x20 ^ (MEM[v241 + 1 + 43] & 0x1 == 1) << 5] * 10000);
                                        MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v241 + 1 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                        v282 = MEM[v241 + 1 + 40].swap(v29, v29, address(v249), 128, 0).gas(msg.gas);
                                        if (v282) {
                                        }
                                    }
                                } else {
                                    MEM[MEM[64] + ((MEM[v241 + 1 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v241 + 1 + 43] >> 8))) * 0 * MEM[(MEM[v241 + 1 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v241 + 1 + 43] >> 8))) * 0 + MEM[0x20 ^ (MEM[v241 + 1 + 43] & 0x1 == 1) << 5] * 10000);
                                    MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v241 + 1 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                    v283 = MEM[v241 + 1 + 40].swap(v29, v29, address(v249), 128, 0).gas(msg.gas);
                                    if (v283) {
                                    }
                                }
                            }
                            revert(MEM[64], RETURNDATASIZE());
                        }
                    } else {
                        0x5330(v250, this, v241 + 1);
                    }
                } else {
                    0x5364(v250, this, v241 + 1);
                }
            } else {
                if (uint256.max + v241.length >= 54) {
                    if (uint256.max + v241.length >= 54) {
                        if (uint8(uint256.max + v241.length)) {
                            if (uint8(uint256.max + v241.length) - 1) {
                                require(!(2 - uint8(uint256.max + v241.length)), UnknownForkId(uint8(uint256.max + v241.length)));
                                v284 = v285 = 0xfa461e33;
                            } else {
                                v284 = v286 = 0x23a69e75;
                            }
                        } else {
                            v284 = 0xfa461e33;
                        }
                        if (uint8(uint256.max + v241.length) != 1) {
                            v287 = v288 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v287 = v289 = 0x1000276a4;
                        }
                        v290 = new uint256[](uint256.max + v241.length - 54);
                        MCOPY(v290.data, v241 + 1 + 54 + 32, uint256.max + v241.length - 54);
                        MEM[v290 + (uint256.max + v241.length - 54) + 32] = 0;
                        require(!((MEM[64] + ((uint256.max + v241.length - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v290 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint256.max + v241.length - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v290 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(uint256.max + v241.length)) << 96, ConfusedDeputy());
                        require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
                        tstor_cdccd5c65a7d4860ce3abbe9 = v284 << 224 | address(uint256.max + v241.length) | 0xa0000000000000000000000000000000000000000;
                        v291, /* uint256 */ v292 = address(uint256.max + v241.length).swap(address(v250), uint8(uint256.max + v241.length) == 1, MEM[v241 + 1 + 54], address(v287), v290).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v293 = v294 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v293 = new bytes[](RETURNDATASIZE());
                            require(!((v293 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v293 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v293)), Panic(65)); // failed memory allocation (too much memory)
                            v292 = v293.data;
                            RETURNDATACOPY(v292, 0, RETURNDATASIZE());
                        }
                        require(v291, v293 + 32, MEM[v293]);
                        require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
                        MEM[64] = MEM[64];
                    }
                }
                revert(Panic(50));
            }
        }
        v295 = new struct(4);
        v295.word0 = 96;
        v296 = v295.data;
        v295.word1 = 32;
        v295.word2 = 32;
        v295.word3 = msg.data[68];
        return v295;
    }
}

function 0x4214(uint256 varg0, struct(3) varg1, uint256 varg2, uint256 varg3, uint96 varg4) private { 
    MCOPY(32 + MEM[64], 64 + varg1, 20);
    MCOPY(52 + MEM[64], varg1, 96);
    v0 = varg0.forward(v1, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[52 + MEM[64]]) * MEM[52 + MEM[64]], v1, v1, varg2, varg3, varg4, 0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(!((64 > RETURNDATASIZE()) | int128(varg2) ^ varg2 | (int128(MEM[0]) ^ MEM[0] | int128(MEM[32]) ^ MEM[32])));
    return MEM[32], MEM[0];
}

function 0x43ee(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x4419(uint256 varg0, uint256 varg1) private { 
    require(MEM[varg1], varg0);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), MEM[varg1]).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x44cb(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x44f6(uint256 varg0, uint256 varg1) private { 
    require(MEM[varg1], varg0);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), MEM[varg1]).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x45a8(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, varg0);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), varg1, varg2).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x466c(uint256 varg0) private { 
    v0, /* uint256 */ v1 = varg0.sync(0, 0xa5841194000000000000000000000000).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x4694(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.sync(0xa5841194000000000000000000000000, varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x46bd(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (this - address(varg2)) {
        v0, /* uint256 */ v1 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, bytes20(varg0 << 96), varg2 << 96, varg2, msg.sender, varg2 << 96, varg2, varg1).gas(msg.gas);
        require(v0, v1, RETURNDATASIZE());
    } else {
        0x2760(varg0, msg.sender, varg1);
    }
    v2 = 0x4916(msg.sender);
    return v2;
}

function 0x48a9(uint256 varg0, struct(5) varg1, struct(3) varg2, uint256 varg3, uint256 varg4) private { 
    MCOPY(64 + MEM[64], 32 + varg1, 128);
    MCOPY(192 + MEM[64], varg2, 96);
    v0 = new uint256[](varg4);
    CALLDATACOPY(v0.data, varg3, varg4);
    v1 = varg0.swap((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg1.word0) * varg1.word0, v2, v2, v2, v2, v2, v2, v2, v0).gas(msg.gas);
    if (!v1) {
        v3 = RETURNDATASIZE();
        revert(v2, v2, v2, v2, v2, v2, v2, v2, v2, varg4);
    } else {
        return MEM[0];
    }
}

function 0x4916(uint256 varg0) private { 
    v0 = varg0.settle().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return MEM[0];
}

function 0x4932(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.settle().value(varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return MEM[0];
}

function 0x513a(address varg0) private { 
    require(MEM[v0] >= 4, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1 = v2 = 0x1ba68;
    v3, v4 = 0x27b2(MEM[v0 + 4]);
    if (!MEM[v0 + 3]) {
        v1 = v5 = address(v3);
        v6 = 0x5e1(v5, this);
        v7 = v8 = MEM[64];
        v9 = v5.convertToAssets(uint16(MEM[v0 + 2]) * v6 / 10000).gas(msg.gas);
        if (v9) {
            v10 = v11 = 32;
            v10 = v12 = 0;
            if (v9) {
                v13 = v14 = 5793;
                if (v11 <= RETURNDATASIZE()) {
                    require(!((v8 + 32 > uint64.max) | (v8 + 32 < v8)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v8 + 32;
                    v15 = v16 = v8 + v11;
                }
            }
        }
    } else {
        v17 = 0x5e1(v4, this);
        v7 = v18 = MEM[64];
        v19 = address(v3).deposit(uint16(MEM[v0 + 2]) * v17 / 10000, varg0).gas(msg.gas);
        if (v19) {
            if (v19) {
                v13 = 0x1a727;
                v20 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x158a0x14ceB0x5144. Refer to 3-address code (TAC);
                }
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    return;
    require(!((v7 + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v7 + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v15 = v21 = v7 + v20;
    require(v15 - v7 >= 32);
    v10 = v22 = MEM[v7];
    // Unknown jump to Block ['0x16a10x14ceB0x5144', '0x1a7270x14ceB0x5144', '0x1a7700x14ceB0x5144']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1ba68. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1ba68. Refer to 3-address code (TAC);
    v20 = v23 = RETURNDATASIZE();
    // Unknown jump to Block 0x15780x14ceB0x5144. Refer to 3-address code (TAC);
    v7 = MEM[64];
    v24 = v1.withdraw(v10, varg0, this).gas(msg.gas);
    if (v24) {
        if (v24) {
            v13 = v25 = 0x1a770;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v15 = v26 = v7 + 32;
            }
        }
    }
}

function 0x515c(uint256 varg0, uint256 varg1) private { 
    require(MEM[varg1] >= 22, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0 == (address(MEM[varg1 + 20]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0 = 0x5e1(address(MEM[varg1 + 20]), this);
        v1 = _SafeMul(v0, 0);
        v2 = v3 = v1 / 10000;
    } else {
        v4 = _SafeMul(this.balance, 0);
        v2 = v5 = v4 / 10000;
    }
    if (!address(varg0)) {
        varg0 = v6 = this;
    }
    require(v2 <= int256.max, Panic(17)); // arithmetic overflow or underflow
    if (uint8(MEM[varg1 + 21])) {
        if (uint8(MEM[varg1 + 21]) > int8.max) {
            if (uint8(MEM[varg1 + 21]) > uint8.max) {
                if (uint8(MEM[varg1 + 21]) > uint16.max) {
                    if (uint8(MEM[varg1 + 21]) > uint24.max) {
                        v7 = 0xda0000000000000000000000000000000000000000000000000000;
                        MEM[v7 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
                        MEM[v7 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
                        MEM[v7 + 54] = 0x8400000000000000000000000000000000000000000000000000000000000000;
                        MEM[v7 + 55] = bytes4(uint8(MEM[varg1 + 21]) << 224);
                        require(!((v7 + 64 > uint64.max) | (v7 + 64 < v7)), Panic(65)); // failed memory allocation (too much memory)
                    } else {
                        v7 = v8 = 0xd900000000000000000000000000000000000000000000000000;
                        MEM[v8 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
                        MEM[v8 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
                        MEM[v8 + 54] = 0x8300000000000000000000000000000000000000000000000000000000000000;
                        MEM[v8 + 55] = bytes3(uint8(MEM[varg1 + 21]) << 232);
                        require(!((v8 + 64 > uint64.max) | (v8 + 64 < v8)), Panic(65)); // failed memory allocation (too much memory)
                    }
                } else {
                    v7 = v9 = 0xd8000000000000000000000000000000000000000000000000;
                    MEM[v9 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
                    MEM[v9 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
                    MEM[v9 + 54] = 0x8200000000000000000000000000000000000000000000000000000000000000;
                    MEM[v9 + 55] = bytes2(uint8(MEM[varg1 + 21]) << 240);
                    require(!((v9 + 64 > uint64.max) | (v9 + 64 < v9)), Panic(65)); // failed memory allocation (too much memory)
                }
            } else {
                v7 = v10 = 0xd70000000000000000000000000000000000000000000000;
                MEM[v10 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
                MEM[v10 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
                MEM[v10 + 54] = 0x8100000000000000000000000000000000000000000000000000000000000000;
                MEM[v10 + 55] = bytes1(uint8(MEM[varg1 + 21]) << 248);
                require(!((v10 + 64 > uint64.max) | (v10 + 64 < v10)), Panic(65)); // failed memory allocation (too much memory)
            }
        } else {
            v7 = v11 = 0xd600000000000000000000000000000000000000000000;
            MEM[v11 + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000;
            MEM[v11 + 34] = 0x91716c4eda1fb55e84bf8b4c7085f84285c19085000000000000000000000000;
            MEM[v11 + 54] = bytes1(uint8(MEM[varg1 + 21]) << 248);
            require(!((v11 + 64 > uint64.max) | (v11 + 64 < v11)), Panic(65)); // failed memory allocation (too much memory)
        }
        v12 = v13 = address(keccak256(MEM[v57e5V0x20fbV0x5166 + 32:v57e5V0x20fbV0x5166 + 32 + MEM[v57e5V0x20fbV0x5166]]));
    } else {
        v12 = 0;
    }
    STORAGE[keccak256(address(v12), MEM[varg1 + 20], address(v12), MEM[varg1 + 20])] = address(this);
    if (address(MEM[varg1 + 20]) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v14 = new bytes[](132);
        MEM[v14.data] = 0xbe17c79c00000000000000000000000000000000000000000000000000000000;
        MEM[v14 + 36] = bool(MEM[varg1 + 22]);
        MEM[v14 + 68] = v2;
        MEM[v14 + 100] = 0;
        MEM[v14 + 132] = address(varg0);
        v15 = v16 = 0x1acdd;
        require(!((v14 + 192 > uint64.max) | (v14 + 192 < v14)), Panic(65)); // failed memory allocation (too much memory)
        require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(v12)) << 96, ConfusedDeputy());
        require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
        tstor_cdccd5c65a7d4860ce3abbe9 = address(v12) | 0x9410ae8800000000000000030000000000000000000000000000000000000000;
        v17 = v14.length;
        v18 = v14.data;
        v19, /* uint256 */ v20 = address(v12).swapInWithCallback(bool(MEM[varg1 + 22]), v2, 0, address(varg0)).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v21 = v22 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v21 = new bytes[](RETURNDATASIZE());
            require(!((v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
            v20 = v21.data;
            RETURNDATACOPY(v20, 0, RETURNDATASIZE());
        }
        require(v19, v21 + 32, MEM[v21]);
        require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
        v23 = v24 = v21 + MEM[v21] + 32;
        v25 = v26 = v21 + 32;
    } else {
        v25 = v27 = MEM[64];
        v28 = address(v12).swapIn(bool(MEM[varg1 + 22]), v2, 0, address(varg0)).value(v2).gas(msg.gas);
        require(v28, MEM[64], RETURNDATASIZE());
        if (v28) {
            v15 = 0x1a727;
            v29 = 32;
            if (32 > RETURNDATASIZE()) {
                v29 = v30 = RETURNDATASIZE();
            }
            require(!((v27 + (v29 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v27 + (v29 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v27)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v27 + (v29 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v23 = v31 = v27 + v29;
        }
    }
    require(v23 - v25 >= 32);
    // Unknown jump to Block ['0x1a7270x2083B0x5166', '0x1acdd0x2083B0x5166']. Refer to 3-address code (TAC);
    return ;
}

function 0x51ad(uint256 varg0, uint256 varg1) private { 
    require(MEM[varg1] >= 3, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (!MEM[varg1 + 3]) {
        v0 = 0x548(this);
        v1 = v2 = 0x2813(varg0, uint16(MEM[varg1 + 2]) * v0 / 10000);
    } else {
        v3 = 0x59a(this);
        v1 = v4 = 0x285b(varg0, uint16(MEM[varg1 + 2]) * v3 / 10000);
    }
    return ;
}

function 0x51bf(uint256 varg0) private { 
    require(MEM[varg0] >= 110, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = v1 = MEM[varg0 + 52];
    v2 = MEM[varg0 + 74];
    v3 = MEM[varg0 + 106];
    v4 = 0x103e(uint16(MEM[varg0 + 110]));
    v5 = v6 = 0;
    while (v5 < uint16(MEM[varg0 + 110])) {
        v4[v5] = MEM[varg0 + v5 + 142];
        v5 = v5 + 32;
    }
    v0 = v7 = 0;
    if (address(MEM[varg0 + 20]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        if (0 == !address(MEM[varg0 + 20])) {
            if (!v1) {
                v8 = 0x5e1(MEM[varg0 + 20], this);
                v0 = v9 = 0x2684(v8, uint16(MEM[varg0 + 54]));
            }
            require(v3 <= v3 + 32, Panic(17)); // arithmetic overflow or underflow
            if (v3 + 32 <= v4.length) {
                v10 = 0;
                v4[v3] = v0;
                if (address(v2) - address(MEM[varg0 + 20])) {
                    0x29f6(MEM[varg0 + 20], v2, v0);
                }
            }
        } else {
            require(!v3, InvalidOffset());
            v10 = v11 = 0;
        }
    } else {
        if (!v1) {
            v12 = _SafeMul(this.balance, uint16(MEM[varg0 + 54]));
            v0 = v13 = v12 / 10000;
        }
        if (0 == !v4.length) {
            v14 = 0x1ed3(v3);
            if (v14 <= v4.length) {
                v10 = v15 = 0;
                MEM[v4 + v14] = v0;
            }
        } else {
            require(!v3, InvalidOffset());
            v16, /* uint256 */ v17 = address(v2).call().value(v0).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v18 = v19 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v18 = new bytes[](RETURNDATASIZE());
                require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                v17 = v18.data;
                RETURNDATACOPY(v17, 0, RETURNDATASIZE());
            }
            require(v16, v18 + 32, MEM[v18]);
        }
    }
    return ;
    revert(Panic(50));
    v20 = address(v2).call(MEM[v51f6_0x0.data:v51f6_0x0.data + v51f6_0x0.length], MEM[v264cV0x5202:v264cV0x5202 + v264cV0x5202]).value(v0).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v21 = v22 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v21 = new bytes[](RETURNDATASIZE());
        require(!((v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
        RETURNDATACOPY(v21.data, 0, RETURNDATASIZE());
    }
    require(v20, v21 + 32, MEM[v21]);
    v23 = v24 = !MEM[v21];
    if (v24) {
        v23 = v25 = !v2.code.size;
    }
    require(!v23, InvalidTarget());
}

function 0x5224(uint256 varg0, uint256 varg1) private { 
    require(MEM[varg1] >= 3, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = 0x5e1(MEM[varg1 + 3] * 0xcbaf3de52eb11ff28c7816df60735a0aa321f647 ^ 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, this);
    v1 = uint16(MEM[varg1 + 2]) * v0 / 10000;
    if (!MEM[varg1 + 3]) {
        v2 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.sellGem(0x95991276000000000000000000000000, varg0, v1).gas(msg.gas);
        if (!v2) {
            RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
            revert(uint96(MEM[64]), RETURNDATASIZE());
        } else {
            require(RETURNDATASIZE() > 31);
            MEM[52] = 0;
        }
    } else {
        v3 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.tout().gas(msg.gas);
        require(v3, MEM[64], RETURNDATASIZE());
        require(RETURNDATASIZE() > 31);
        v4 = v5 = v1 * 10 ** 6 / (MEM[0] + 10 ** 18);
        if (v1 > v5 * 10 ** 12) {
            0x26ec(MEM[varg1 + 3] * 0xcbaf3de52eb11ff28c7816df60735a0aa321f647 ^ 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, v1 - v5 * 10 ** 12);
        }
        v6 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.buyGem(0x8d7ef9bb000000000000000000000000, varg0, v5).gas(msg.gas);
        if (!v6) {
            RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
            revert(uint96(MEM[64]), RETURNDATASIZE());
        } else {
            require(RETURNDATASIZE() > 31);
            MEM[52] = 0;
        }
    }
    return ;
}

function 0x5330(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(MEM[varg2] >= 119, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = 0x3f95(MEM[varg2 + 119]);
    v1 = 0x5978(varg2, uint16(v0));
    v2 = 0x829(MEM[varg2 + 85]);
    v3 = 0x829(MEM[varg2 + 117]);
    require(!(bool(v3 >> 128) | (bool(v2 >> 128) | ((uint16(0) > 10000) | bool(MEM[varg2 + 52] >> 128)))), Panic(17)); // arithmetic overflow or underflow
    MCOPY(211 + MEM[64], v1.data, v1.length);
    MEM8[168 + MEM[64]] = MEM[varg2 + 53] & 0xFF;
    MEM[64] = MEM[64] + v1.length + 211;
    require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
    require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
    tstor_cdccd5c65a7d4860ce3abbe9 = 0xb45a3c0e0000000000000007e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
    v4, /* uint256 */ v5 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(32, 111 + v1.length, varg0, MEM[varg2 + 52], varg0, v2, v3, 0, MEM[varg2 + 20], varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v6 = v7 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v5 = v6.data;
        RETURNDATACOPY(v5, 0, RETURNDATASIZE());
    }
    require(v4, v6 + 32, MEM[v6]);
    require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
    return ;
}

function 0x5364(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(MEM[varg2] >= 119, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = 0x3f95(MEM[varg2 + 119]);
    v1 = 0x5978(varg2, uint16(v0));
    v2 = 0x829(MEM[varg2 + 85]);
    v3 = 0x829(MEM[varg2 + 117]);
    require(!(bool(v3 >> 128) | (bool(v2 >> 128) | ((uint16(0) > 10000) | bool(MEM[varg2 + 52] >> 128)))), Panic(17)); // arithmetic overflow or underflow
    MCOPY(211 + MEM[64], v1.data, v1.length);
    MEM8[168 + MEM[64]] = MEM[varg2 + 53] & 0xFF;
    MEM[64] = MEM[64] + v1.length + 211;
    require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
    require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
    tstor_cdccd5c65a7d4860ce3abbe9 = 0x91dd73460000000000000009000000000004444c5dc75cb358380d2e3de08a90;
    v4, /* uint256 */ v5 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 111 + v1.length, varg0, MEM[varg2 + 52], varg0, v2, v3, 0, MEM[varg2 + 20], varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v6 = v7 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v5 = v6.data;
        RETURNDATACOPY(v5, 0, RETURNDATASIZE());
    }
    require(v4, v6 + 32, MEM[v6]);
    require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
    return ;
}

function 0x548(uint256 varg0) private { 
    v0 = 0x6b175474e89094c44da98b954eedeac495271d0f.balanceOf(0x70a08231000000000000000000000000, varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(31 < RETURNDATASIZE());
    return MEM[0];
}

function 0x67c4a3b0() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x352650ac2653508d946c4912b07895b22edd84cd;
}

function 0x5978(uint256 varg0, uint256 varg1) private { 
    v0 = 0x103e(varg1);
    v1 = v2 = 0;
    while (v1 < varg1) {
        v0[v1] = MEM[varg0 + v1 + 151];
        v1 = v1 + 32;
    }
    return v0;
}

function 0x59a(uint256 varg0) private { 
    v0 = 0xdc035d45d973e3ec169d2276ddab16f1e407384f.balanceOf(0x70a08231000000000000000000000000, varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(31 < RETURNDATASIZE());
    return MEM[0];
}

function 0x59d9() private { 
    v0 = v1 = msg.data[120] >> 128;
    v2 = new struct(39);
    v2.word6 = 0;
    MEM[v2af20x4f72V0x2dcfV0x59d9 + 480:v2af20x4f72V0x2dcfV0x59d9 + 480 + 768] = this.code[this.code.size:this.code.size + 768];
    v3 = MEM[address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v2) + 320];
    require(!((MEM[address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v2) + 352] | v3) * (v3 ^ address(msg.data[189] >> 96))), v3, address(msg.data[189] >> 96));
    require(address(msg.data[189] >> 96), ZeroToken());
    MEM[address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v2) + 320] = address(msg.data[189] >> 96);
    v2.word0 = address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v2) + 288;
    v2.word1 = address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v2) + 288;
    v2.word2 = address(msg.data[189] >> 96) * uint128(msg.data[120]) % (msg.data[152] >> 128) % 768 + (192 + v2) + 288;
    v2.word4 = uint128(msg.data[120]);
    v2.word5 = msg.data[152] >> 128;
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + v2.word2]) {
        v4 = v5 = 211;
        v6 = v7 = msg.data[68] - 89 - 22;
        if (0 != !v1) {
            v8 = 0x5e1(MEM[32 + v2.word2], this);
            v0 = uint16(msg.data[189] >> 80) * v8 / 10000;
        }
        MEM[v2.word2] = v0;
    } else {
        v4 = v9 = 211;
        v6 = v10 = msg.data[68] - 89 - 22;
        if (0 != !v1) {
            v0 = v11 = uint16(msg.data[189] >> 80) * this.balance / 10000;
        }
        MEM[v2.word2] = v0;
    }
    require(uint24.max >= v6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0x1000000000000000000000000000000 & msg.data[152]) {
        v12 = 0x3e76(MEM[32 + v2.word2], msg.data[169] >> 96, MEM[v2.word2]);
        MEM[v2.word2] = v12;
    }
    if (!(MEM[v2.word2] >> int8.max)) {
        v2.word3 = MEM[v2.word2];
        0x3f65(v2);
        require(v6 >= 2, Error('Input too short'));
        require(2 + uint16(msg.data[v4] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(v6 >= uint16(2 + uint16(msg.data[v4] >> 240)), Error('Invalid length field'));
        require(2 + uint16(msg.data[v4] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(2 <= uint16(2 + uint16(msg.data[v4] >> 240)));
        require(uint16(2 + uint16(msg.data[v4] >> 240)) <= v6);
        v13 = 213;
        v14 = uint16(2 + uint16(msg.data[v4] >> 240)) - 2;
        require(2 + uint16(msg.data[v4] >> 240) <= uint16.max, Panic(17)); // arithmetic overflow or underflow
        require(uint16(2 + uint16(msg.data[v4] >> 240)) <= v6);
        require(v6 <= v6);
        v15 = v16 = uint16(2 + uint16(msg.data[v4] >> 240)) + v4;
        v17 = v18 = v6 - uint16(2 + uint16(msg.data[v4] >> 240));
        v19 = 0x1e48();
        while (1) {
            revert(Panic(17));
            if (v14 >= 35) {
                v20 = v21 = 1;
                v22 = v23 = msg.data[2 + v13];
                if (v23 >> 248) {
                    if (!MEM[64 + v2.word0]) {
                        v2.word6 += 1;
                        MEM[(1 + v2.word6 << 5) + (192 + v2)] = v2.word0;
                        MEM[64 + v2.word0] = (1 + v2.word6 << 5) + (192 + v2);
                    }
                    if (v23 >> 248 > v21) {
                        if (!MEM[v2.word1]) {
                            if (MEM[64 + v2.word1]) {
                                MEM[64 + v2.word1] = 0;
                                v2.word6 = v2.word6 - 1;
                                if ((v2.word6 << 5) + (192 + v2) - MEM[64 + v2.word1]) {
                                    MEM[MEM[64 + v2.word1]] = MEM[(v2.word6 << 5) + (192 + v2)];
                                    MEM[64 + MEM[(v2.word6 << 5) + (192 + v2)]] = MEM[64 + v2.word1];
                                }
                            }
                        }
                        if ((v23 >> 248) - 2) {
                            require(v23 >> 248 == 3, Panic(1)); // low-level assert failed
                            v22 = msg.data[22 + v13];
                            v20 = 21;
                            require(!((MEM[address(v23 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 352] | MEM[address(v23 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 320]) * (MEM[address(v23 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 320] ^ address(v23 >> 88))), MEM[address(v23 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 320], address(v23 >> 88));
                            require(address(v23 >> 88), ZeroToken());
                            MEM[address(v23 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 320] = address(v23 >> 88);
                            v2.word1 = address(v23 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 288;
                        } else {
                            v2.word1 = v2.word0;
                        }
                    }
                    v20 = v24 = v20 + 20;
                    require(!((MEM[address(v22 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 352] | MEM[address(v22 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 320]) * (MEM[address(v22 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 320] ^ address(v22 >> 88))), MEM[address(v22 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 320], address(v22 >> 88));
                    require(address(v22 >> 88), ZeroToken());
                    MEM[address(v22 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 320] = address(v22 >> 88);
                    v2.word0 = address(v22 >> 88) * v2.word4 % v2.word5 % 768 + (192 + v2) + 288;
                    if (v2.word0 == v2.word2) {
                        MEM[v2.word2] = 0x784cb7b8;
                        revert(28 + v2.word2, 36);
                    }
                }
                v25 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v2.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v2.word1] << 96) & (MEM[32 + v2.word0] << 96 < MEM[32 + v2.word1] << 96);
                v19.word1 = address(address(MEM[32 + v2.word0]) ^ (address(MEM[32 + v2.word1]) ^ address(MEM[32 + v2.word0])) * v25);
                v19.word0 = address(address(MEM[32 + v2.word1]) ^ (address(MEM[32 + v2.word1]) ^ address(MEM[32 + v2.word0])) * v25);
                v13 = 32 + (v20 + (2 + v13));
                v14 = v14 - 2 - v20 - 32;
                v19.word2 = msg.data[v20 + (2 + v13)];
                require(uint24.max >= v14, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (0x8000 & msg.data[v13] >> 240) {
                    v26, v27 = 0x4214(msg.sender, v19, (msg.data[v13] >> 240 & 0x7fff) * MEM[v2.word1] / 10000, v25, uint96(!v25 * 0xffff9a58c9f7f0ae8d3e0684 ^ 0xffff9a5889f795069a41a8a3));
                    v28 = v29 = (v26 ^ v27) * v25 ^ v27;
                    v30 = v31 = v26 ^ (v26 ^ v27) * v25;
                } else {
                    MCOPY(32 + MEM[64], v19, 96);
                    v32 = msg.sender.call(0, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != MEM[32 + MEM[64]]) * MEM[32 + MEM[64]], v33, v33, (msg.data[v13] >> 240 & 0x7fff) * MEM[v2.word1] / 10000, v25, uint96(!v25 * 0xffff9a58c9f7f0ae8d3e0684 ^ 0xffff9a5889f795069a41a8a3), 0).gas(msg.gas);
                    require(v32, MEM[64], RETURNDATASIZE());
                    v28 = v25 * (MEM[0x20] ^ MEM[0x0]) ^ MEM[0x0];
                    v30 = MEM[0x20] ^ v25 * (MEM[0x20] ^ MEM[0x0]);
                }
                if (v28 < 0) {
                    MEM[v2.word1] = 0x4c085bf1;
                    revert(28 + v2.word1, 36);
                } else {
                    MEM[v2.word1] = MEM[v2.word1] - v28;
                    if (!((v28 > (msg.data[v13] >> 240 & 0x7fff) * MEM[v2.word1] / 10000) | (v28 > MEM[v2.word1]))) {
                        if (v30 > 0) {
                            MEM[v2.word0] = 0x3351b260;
                            revert(28 + v2.word0, 36);
                        } else {
                            MEM[v2.word0] += 0 - v30;
                        }
                    }
                }
            } else {
                break;
            }
        }
        v34 = v35 = MEM[32 + v2.word2];
        if (MEM[64 + v2.word0]) {
            MEM[64 + v2.word0] = 0;
            v2.word6 = v2.word6 - 1;
            if ((v2.word6 << 5) + (192 + v2) - MEM[64 + v2.word0]) {
                MEM[MEM[64 + v2.word0]] = MEM[(v2.word6 << 5) + (192 + v2)];
                MEM[64 + MEM[(v2.word6 << 5) + (192 + v2)]] = MEM[64 + v2.word0];
            }
        }
        if (!MEM[v2.word1]) {
            if (MEM[64 + v2.word1]) {
                MEM[64 + v2.word1] = 0;
                v2.word6 = v2.word6 - 1;
                if ((v2.word6 << 5) + (192 + v2) - MEM[64 + v2.word1]) {
                    MEM[MEM[64 + v2.word1]] = MEM[(v2.word6 << 5) + (192 + v2)];
                    MEM[64 + MEM[(v2.word6 << 5) + (192 + v2)]] = MEM[64 + v2.word1];
                }
            }
        }
        if (v2.word6) {
            require(v2.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v2.word7 - v2.word2) {
                0x4419(address(MEM[v2.word7 + 32]), v2.word7);
            }
            v36 = 1;
            while (v36 < v2.word6) {
                0x43ee(MEM[MEM[(v36 << 5) + (192 + v2) + 32]], MEM[32 + MEM[(v36 << 5) + (192 + v2) + 32]]);
                v36 = v36 + 1;
            }
        }
        require(MEM[v2.word0], MEM[32 + v2.word0]);
        v37, /* uint256 */ v38 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v2.word0] << 96) * (MEM[32 + v2.word0] << 96), msg.data[100] >> 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v2.word0] << 96) * (MEM[32 + v2.word0] << 96), MEM[v2.word0]).gas(msg.gas);
        require(v37, MEM[64], RETURNDATASIZE());
        MEM[96] = 0;
        if (bool(!(0x1000000000000000000000000000000 & msg.data[152]))) {
            require(v2.word3 - MEM[v2.word2], v35, 0xfb772a88000000000000000000000000);
        } else if (MEM[v2.word2]) {
            require(MEM[v2.word2], v35);
            v39, /* uint256 */ v40 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != v35 << 96) * (v35 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != v35 << 96) * (v35 << 96), this, MEM[v2.word2]).gas(msg.gas);
            require(v39, MEM[64], RETURNDATASIZE());
            MEM[96] = 0;
        } else {
            v41 = v42 = new struct(4);
            v42.word0 = 96;
            v43 = v42.data;
            v42.word1 = 32;
            v42.word2 = 32;
            v42.word3 = MEM[v2.word0];
        }
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v34)) {
            require(v17 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v44 = new bytes[](v17);
            require(!((v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v17) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v17) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
            require(v15 + v17 <= msg.data.length);
            CALLDATACOPY(v44.data, v15, v17);
            v44[v17] = 0;
            if (!uint8(v17)) {
                require(uint256.max + v44.length >= 40, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v45 = v46 = address(uint256.max + v44.length);
                v47 = v46 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                if (v46 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                    v47 = v48 = !v46;
                }
                if (!v47) {
                    if (this - address(MEM[v44 + 1 + 40])) {
                        0x3c81(v46, MEM[v44 + 1 + 40], msg.sender, msg.data[120] >> 128);
                    } else {
                        v49 = 0x5e1(v46, this);
                        if (v49 > msg.data[120] >> 128) {
                            v50 = _SafeSub(v49, msg.data[120] >> 128);
                            0x26ec(v46, v50);
                        }
                        v51 = v46.transfer(msg.sender, msg.data[120] >> 128).gas(msg.gas);
                        if (!v51) {
                            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                            revert(uint24(MEM[64]), RETURNDATASIZE());
                        } else {
                            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                            MEM[52] = 0;
                        }
                    }
                } else {
                    0x27a3(msg.sender, msg.data[120] >> 128);
                }
            } else {
                v52 = v53 = msg.sender;
                if (uint8(v17) - 2) {
                    if (uint8(v17) - 3) {
                        if (uint8(v17) - 4) {
                            if (uint8(v17) - 1) {
                                if (uint8(v17) - 5) {
                                    if (uint8(v17) - 6) {
                                        if (uint8(v17) - 7) {
                                            if (uint8(v17) - 8) {
                                                if (uint8(v17) - 9) {
                                                    require(!(10 - uint8(v17)), Error('Invalid action identifier'));
                                                    0x513a(v53);
                                                    // Unknown jump to Block 0x5e6e0x5e35B0x5a58. Refer to 3-address code (TAC);
                                                } else {
                                                    0x515c(v53, v44 + 1);
                                                }
                                            } else {
                                                require(uint256.max + v44.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                require(uint256.max + v44.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                MEM[v44 + 1 + 75] = uint256.max + v44.length - 75;
                                                if (!address(v53)) {
                                                    v52 = v54 = this;
                                                }
                                                v55 = 0x5e1(uint256.max + v44.length, address(MEM[v44 + 1 + 40]));
                                                v56, /* uint128 */ v57, /* uint128 */ v58, /* int64 */ v59, /* int64 */ v60, /* uint40 */ v61, /* int32 */ v62, /* bool */ v63, /* uint32 */ v64, /* uint8 */ v65 = address(MEM[v44 + 1 + 40]).getState().gas(msg.gas);
                                                if (v56) {
                                                    v66 = v67 = 0;
                                                    if (v56) {
                                                        v68 = 288;
                                                        if (v68 > RETURNDATASIZE()) {
                                                            v68 = v69 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + v68 - MEM[64] >= 288);
                                                        v66 = v70 = 0x3b4();
                                                        require(!0x1865c57d00000000000000000000000000000000000000000000000000000000);
                                                        v70.word0 = v57;
                                                        require(!(v58 - uint128(v58)));
                                                        v70.word1 = v58;
                                                        require(!(v59 - int64(v59)));
                                                        v70.word2 = v59;
                                                        require(!(v60 - int64(v60)));
                                                        v70.word3 = v60;
                                                        require(!(v61 - uint40(v61)));
                                                        v70.word4 = v61;
                                                        require(!(v62 - int32(v62)));
                                                        v70.word5 = v62;
                                                        require(!(v63 - bool(v63)));
                                                        v70.word6 = v63;
                                                        require(!(v64 - uint32(v64)));
                                                        v70.word7 = v64;
                                                        require(!(v65 - uint8(v65)));
                                                        v70.word8 = v65;
                                                    }
                                                    if (!MEM[v44 + 1 + 41]) {
                                                        v71 = v72 = uint128(MEM[32 + v66]);
                                                    } else {
                                                        v71 = v73 = uint128(MEM[v66]);
                                                    }
                                                    if (!MEM[v44 + 1 + 41]) {
                                                        v74 = 0x3c4();
                                                        v74.word0 = v55 - uint128(v71);
                                                        v74.word1 = bool(MEM[v44 + 1 + 41]);
                                                        v74.word2 = 0;
                                                        v74.word3 = int32(int32.min);
                                                        // Unknown jump to Block 0x11c8B0x51a7B0x49e00x494eB0x5e610x5e35B0x5a58. Refer to 3-address code (TAC);
                                                    } else {
                                                        v74 = v75 = 0x3c4();
                                                        v75.word0 = v55 - uint128(v71);
                                                        v75.word1 = bool(MEM[v44 + 1 + 41]);
                                                        v75.word2 = 0;
                                                        v75.word3 = int32(int32.max);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                    v76 = new uint256[](0);
                                                    MCOPY(v76.data, MEM[64] + 32, 0);
                                                    MEM[v76.data] = 0;
                                                    v77, /* uint256 */ v78, /* uint256 */ v79 = address(MEM[v44 + 1 + 40]).call(0x3eece7db00000000000000000000000000000000000000000000000000000000, address(v52), MEM[v74], bool(MEM[v74 + 32]), bool(MEM[v74 + 64]), int32(MEM[v74 + 96]), v76).gas(msg.gas);
                                                    if (v77) {
                                                        if (v77) {
                                                            v80 = 64;
                                                            if (64 > RETURNDATASIZE()) {
                                                                v80 = v81 = RETURNDATASIZE();
                                                            }
                                                            require(!((MEM[64] + (v80 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v80 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64] + (v80 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            require(MEM[64] + v80 - MEM[64] >= 64);
                                                        }
                                                    }
                                                }
                                                revert(MEM[64], RETURNDATASIZE());
                                            }
                                        } else {
                                            0x51ad(v53, v44 + 1);
                                        }
                                    } else {
                                        0x51bf(v44 + 1);
                                    }
                                } else {
                                    0x5224(v53, v44 + 1);
                                }
                            } else {
                                require(uint256.max + v44.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(uint256.max + v44.length >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                MEM[v44 + 1 + 75] = uint256.max + v44.length - 75;
                                if (!address(v53)) {
                                    v52 = v82 = this;
                                }
                                v83 = MEM[v44 + 1 + 40].getReserves().gas(msg.gas);
                                if (v83) {
                                    require(RETURNDATASIZE() >= 64);
                                    if (0x1 | (uint24(0x1 & MEM[v44 + 1 + 43] >> 1) == 1)) {
                                        v84 = (uint256.max + v44.length).balanceOf(address(MEM[v44 + 1 + 40])).gas(msg.gas);
                                        if (v84) {
                                            require(RETURNDATASIZE() >= 32);
                                            require(MEM[0] >= MEM[0x20 ^ (MEM[v44 + 1 + 43] & 0x1 == 1) << 5], Panic(17)); // arithmetic overflow or underflow
                                            MEM[MEM[64] + ((MEM[v44 + 1 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v44 + 1 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v44 + 1 + 43] & 0x1 == 1) << 5]) * MEM[(MEM[v44 + 1 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v44 + 1 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v44 + 1 + 43] & 0x1 == 1) << 5]) + MEM[0x20 ^ (MEM[v44 + 1 + 43] & 0x1 == 1) << 5] * 10000);
                                            MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v44 + 1 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                            v85 = MEM[v44 + 1 + 40].swap(v33, v33, address(v52), 128, 0).gas(msg.gas);
                                            if (v85) {
                                            }
                                        }
                                    } else {
                                        MEM[MEM[64] + ((MEM[v44 + 1 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v44 + 1 + 43] >> 8))) * 0 * MEM[(MEM[v44 + 1 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v44 + 1 + 43] >> 8))) * 0 + MEM[0x20 ^ (MEM[v44 + 1 + 43] & 0x1 == 1) << 5] * 10000);
                                        MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v44 + 1 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                        v86 = MEM[v44 + 1 + 40].swap(v33, v33, address(v52), 128, 0).gas(msg.gas);
                                        if (v86) {
                                        }
                                    }
                                }
                                revert(MEM[64], RETURNDATASIZE());
                            }
                        } else {
                            0x5330(v53, this, v44 + 1);
                        }
                    } else {
                        0x5364(v53, this, v44 + 1);
                    }
                } else {
                    if (uint256.max + v44.length >= 54) {
                        if (uint256.max + v44.length >= 54) {
                            if (uint8(uint256.max + v44.length)) {
                                if (uint8(uint256.max + v44.length) - 1) {
                                    require(!(2 - uint8(uint256.max + v44.length)), UnknownForkId(uint8(uint256.max + v44.length)));
                                    v87 = v88 = 0xfa461e33;
                                } else {
                                    v87 = v89 = 0x23a69e75;
                                }
                            } else {
                                v87 = 0xfa461e33;
                            }
                            if (uint8(uint256.max + v44.length) != 1) {
                                v90 = v91 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            } else {
                                v90 = v92 = 0x1000276a4;
                            }
                            v93 = new uint256[](uint256.max + v44.length - 54);
                            MCOPY(v93.data, v44 + 1 + 54 + 32, uint256.max + v44.length - 54);
                            MEM[v93 + (uint256.max + v44.length - 54) + 32] = 0;
                            require(!((MEM[64] + ((uint256.max + v44.length - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v93 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint256.max + v44.length - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v93 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(uint256.max + v44.length)) << 96, ConfusedDeputy());
                            require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
                            tstor_cdccd5c65a7d4860ce3abbe9 = v87 << 224 | address(uint256.max + v44.length) | 0xa0000000000000000000000000000000000000000;
                            v94, /* uint256 */ v95 = address(uint256.max + v44.length).swap(address(v53), uint8(uint256.max + v44.length) == 1, MEM[v44 + 1 + 54], address(v90), v93).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v96 = v97 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v96 = new bytes[](RETURNDATASIZE());
                                require(!((v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v96)), Panic(65)); // failed memory allocation (too much memory)
                                v95 = v96.data;
                                RETURNDATACOPY(v95, 0, RETURNDATASIZE());
                            }
                            require(v94, v96 + 32, MEM[v96]);
                            require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
                            MEM[64] = MEM[64];
                        }
                    }
                    revert(Panic(50));
                }
            }
            return v41;
        } else {
            CALLDATACOPY(100 + MEM[64], v15, v17);
            require((tstor_cd1e9517bb0cb8d0d5cde893 ^ msg.sender) << 96, ConfusedDeputy());
            require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
            tstor_cdccd5c65a7d4860ce3abbe9 = msg.sender | 0x599d071400000000000000080000000000000000000000000000000000000000;
            v98, /* uint256 */ v99 = msg.sender.pay(0xc11dedd000000000000000000000000, v34, msg.data[120] >> 128).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v100 = v101 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v100 = new bytes[](RETURNDATASIZE());
                require(!((v100 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v100 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v100)), Panic(65)); // failed memory allocation (too much memory)
                v99 = v100.data;
                RETURNDATACOPY(v99, 0, RETURNDATASIZE());
            }
            require(v98, v100 + 32, MEM[v100]);
            require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
            return v41;
        }
        v41 = v102 = new struct(4);
        v102.word0 = 96;
        v103 = v102.data;
        v102.word1 = 32;
        v102.word2 = 32;
        v102.word3 = MEM[v2.word0];
        // Unknown jump to Block 0x59ec. Refer to 3-address code (TAC);
    }
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
        v3 = 0x75d(v1, msg.data[32 + (varg2.data + varg2[v1])] >> 224, varg2.data + varg2[v1] + 36, msg.data[varg2.data + varg2[v1]] - 4, v0);
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

function 0x5e1(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.balanceOf(0x70a08231000000000000000000000000, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(31 < RETURNDATASIZE());
    return MEM[0];
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x75d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, struct(2) varg4) private { 
    v0 = 0x852(varg1, varg2, varg3, varg4);
    MEM[64] = MEM[64];
    return v0;
}

function 0x813(uint256 varg0) private { 
    require(!varg0 | (20 == varg0 * 20 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * 20;
}

function 0x829(uint256 varg0) private { 
    require(!varg0 | (96 == varg0 * 96 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * 96;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x852(uint256 varg0, uint256 varg1, uint256 varg2, struct(2) varg3) private { 
    if (varg0 - 0x601b02a6) {
        if (varg0 - 0x9b9cccbc) {
            if (varg0 - 0xb31621dd) {
                if (varg0 - 0x62906fe8) {
                    if (varg0 - 0x39cbfb2) {
                        if (varg0 - 0x6dd1879b) {
                            if (varg0 - 0x60802342) {
                                if (varg0 - 0xe411453b) {
                                    if (varg0 - 0x61988d9c) {
                                        if (varg0 - 0xe406bf50) {
                                            if (varg0 - 0x84159350) {
                                                if (varg0 - 0x7e94da7c) {
                                                    if (varg0 - 0x41131210) {
                                                        if (varg0 - 0x952b642f) {
                                                            if (varg0 - 0xe2136806) {
                                                                if (varg0 - 0x512c72a3) {
                                                                    if (varg0 - 0xaa782407) {
                                                                        if (0xa8a682c2 - varg0) {
                                                                            return 0;
                                                                        } else {
                                                                            v0, v1, v2, v3, v4, v5 = 0xe46(byte(msg.data[varg1 + 62], 0x0), msg.data[varg1 + 42] >> 96, msg.data[varg1 + 40] >> 240, msg.data[varg1 + 20] >> 96, msg.data[varg1] >> 96, varg3);
                                                                            v6 = 0x12cb(v2, v1, v0, v3, v4, v5);
                                                                            return 1;
                                                                        }
                                                                    } else {
                                                                        CALLDATACOPY(MEM[64] + 32, varg1 + 52, varg2 - 52);
                                                                        v7, /* uint256 */ v8 = address(msg.data[varg1] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + v852arg0x2 - 52], MEM[0:0]).value(msg.data[varg1 + 20]).gas(msg.gas);
                                                                        if (!RETURNDATASIZE()) {
                                                                            v9 = v10 = 96;
                                                                        } else {
                                                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                            v9 = v11 = new bytes[](RETURNDATASIZE());
                                                                            require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
                                                                            v8 = v11.data;
                                                                            RETURNDATACOPY(v8, 0, RETURNDATASIZE());
                                                                        }
                                                                        require(v7, v9 + 32, MEM[v9]);
                                                                        v12 = v13 = !MEM[v9];
                                                                        if (v13) {
                                                                            v12 = v14 = !(msg.data[varg1] >> 96).code.size;
                                                                        }
                                                                        require(!v12, InvalidTarget());
                                                                        return 1;
                                                                    }
                                                                } else {
                                                                    v15, v16, v17, v18, v19 = 0xd6b(byte(msg.data[varg1 + 23], 0x0), byte(msg.data[varg1 + 22], 0x0), msg.data[varg1 + 20] >> 240, msg.data[varg1] >> 96, varg3);
                                                                    v20 = 0x16a8(v16, v15, v17, v18, v19);
                                                                    return 1;
                                                                }
                                                            } else {
                                                                v21, v22, v23, v24 = 0xd23(byte(msg.data[varg1 + 22], 0x0), msg.data[varg1 + 20] >> 240, msg.data[varg1] >> 96, varg3);
                                                                v25 = 0x17f5(v22, v21, v23, v24);
                                                                return 1;
                                                            }
                                                        } else {
                                                            v26, v27, v28, v29 = 0xcae(byte(msg.data[varg1 + 22], 0x0), msg.data[varg1 + 20] >> 240, msg.data[varg1] >> 96, varg3);
                                                            v30 = 0x183e(v27, v26, v28, v29);
                                                            return 1;
                                                        }
                                                    } else {
                                                        CALLDATACOPY(MEM[64] + 32, varg1 + 106, varg2 - 106);
                                                        MEM[64] = MEM[64] + varg2 - 74;
                                                        v31 = v32 = 0xed8(address(msg.data[varg1] >> 96), varg3, msg.data[varg1 + 40] >> 240);
                                                        0x2952(msg.data[varg1] >> 96, msg.data[varg1 + 20] >> 96);
                                                        if (0 != !v32) {
                                                            v33 = 0x5e1(msg.data[varg1] >> 96, this);
                                                            v34 = _SafeMul(v33, uint16(msg.data[varg1 + 40] >> 240));
                                                            v31 = v35 = v34 / 10000;
                                                        }
                                                        if (0 == v31 > msg.data[varg1 + 42]) {
                                                            if (v31 < msg.data[varg1 + 42]) {
                                                                MEM[32 + (MEM[64] + msg.data[varg1 + 74])] = v31;
                                                            }
                                                        } else {
                                                            v36 = _SafeSub(v31, msg.data[varg1 + 42]);
                                                            0x26ec(msg.data[varg1] >> 96, v36);
                                                        }
                                                        v37, /* uint256 */ v38 = (msg.data[varg1 + 20] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + v852arg0x2 - 106], MEM[0:0]).gas(msg.gas);
                                                        if (!RETURNDATASIZE()) {
                                                            v39 = v40 = 96;
                                                        } else {
                                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                            v39 = new bytes[](RETURNDATASIZE());
                                                            require(!((v39 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
                                                            v38 = v39.data;
                                                            RETURNDATACOPY(v38, 0, RETURNDATASIZE());
                                                        }
                                                        if (!v37) {
                                                            v41 = new uint256[](MEM[v39]);
                                                            MCOPY(v41.data, v39 + 32, MEM[v39]);
                                                            MEM[v41 + MEM[v39] + 32] = 0;
                                                            revert(Error(v41));
                                                        } else {
                                                            return 1;
                                                        }
                                                    }
                                                } else {
                                                    v42 = v43, v44, v45 = v46, v47, v48, v49 = 0xc29(msg.data[varg1 + 62] >> 232, msg.data[varg1 + 42] >> 96, msg.data[varg1 + 40] >> 240, msg.data[varg1 + 20] >> 96, msg.data[varg1] >> 96, varg3);
                                                    if (!address(v46)) {
                                                        v45 = v50 = this;
                                                    }
                                                    v42 = v51 = 0;
                                                    if (uint16(v47)) {
                                                        if (!v43) {
                                                            v52 = 0x5e1(address(v44), this);
                                                            v42 = v53 = v52 * uint16(v47) / 10000;
                                                        }
                                                    }
                                                    if (v42) {
                                                        v54 = v44.transfer(v48, v42).gas(msg.gas);
                                                        if (v54) {
                                                            require(!RETURNDATASIZE() | (RETURNDATASIZE() >= 32) & (MEM[0] == 1));
                                                        }
                                                    }
                                                    v55 = v48.getReserves().gas(msg.gas);
                                                    if (v55) {
                                                        require(RETURNDATASIZE() >= 64);
                                                        if (!v42 | (uint24(0x1 & v49 >> 1) == 1)) {
                                                            v56 = v44.balanceOf(address(v48)).gas(msg.gas);
                                                            if (v56) {
                                                                require(RETURNDATASIZE() >= 32);
                                                                require(MEM[0] >= MEM[0x20 ^ (v49 & 0x1 == 1) << 5], Panic(17)); // arithmetic overflow or underflow
                                                                v42 = v57 = MEM[0] - MEM[0x20 ^ (v49 & 0x1 == 1) << 5];
                                                            }
                                                        }
                                                        MEM[MEM[64] + ((v49 & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(v49 >> 8))) * v42 * MEM[(v49 & 0x1 == 1) << 5] / ((10000 - uint24(uint16(v49 >> 8))) * v42 + MEM[0x20 ^ (v49 & 0x1 == 1) << 5] * 10000);
                                                        MEM[MEM[64] + (0x20 ^ 4 + ((v49 & 0x1 == 1) << 5)) + 28] = 0;
                                                        v58 = v48.swap(v48, v42, address(v45), 128, 0).gas(msg.gas);
                                                        if (v58) {
                                                            return 1;
                                                        }
                                                    }
                                                    revert(MEM[64], RETURNDATASIZE());
                                                }
                                            } else {
                                                CALLDATACOPY(MEM[64] + 32, varg1 + int8.max, varg2 - 127);
                                                MEM[64] = MEM[64] + varg2 - 95;
                                                v59 = 0xed8(address(msg.data[varg1 + 40] >> 96), varg3, msg.data[varg1 + 60] >> 240);
                                                v60 = 0x829(msg.data[varg1 + 63]);
                                                v61 = 0x829(msg.data[varg1 + 95]);
                                                require(!(bool(v61 >> 128) | (bool(v60 >> 128) | ((uint16(msg.data[varg1 + 60] >> 240) > 10000) | bool(v59 >> 128)))), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], 32 + MEM[64], varg2 - 127);
                                                MEM8[168 + MEM[64]] = (byte(msg.data[varg1 + 62], 0x0)) & 0xFF;
                                                MEM[64] = MEM[64] + (varg2 - 127) + 211;
                                                require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
                                                tstor_cdccd5c65a7d4860ce3abbe9 = 0xb45a3c0e0000000000000001e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                v62, /* uint256 */ v63 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(32, 111 + (varg2 - 127), msg.data[varg1] >> 96, v59, msg.data[varg1] >> 96, v60, v61, msg.data[varg1 + 20] >> 96, msg.data[varg1 + 40] >> 96, msg.data[varg1 + 60] >> 240).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v64 = v65 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v64 = new bytes[](RETURNDATASIZE());
                                                    require(!((v64 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v64 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v64)), Panic(65)); // failed memory allocation (too much memory)
                                                    v63 = v64.data;
                                                    RETURNDATACOPY(v63, 0, RETURNDATASIZE());
                                                }
                                                require(v62, v64 + 32, MEM[v64]);
                                                require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
                                                return 1;
                                            }
                                        } else {
                                            CALLDATACOPY(MEM[64] + 32, varg1 + int8.max, varg2 - 127);
                                            MEM[64] = MEM[64] + varg2 - 95;
                                            v66 = 0xed8(address(msg.data[varg1 + 40] >> 96), varg3, msg.data[varg1 + 60] >> 240);
                                            v67 = 0x829(msg.data[varg1 + 63]);
                                            v68 = 0x829(msg.data[varg1 + 95]);
                                            require(!(bool(v68 >> 128) | (bool(v67 >> 128) | ((uint16(msg.data[varg1 + 60] >> 240) > 10000) | bool(v66 >> 128)))), Panic(17)); // arithmetic overflow or underflow
                                            MCOPY(211 + MEM[64], 32 + MEM[64], varg2 - 127);
                                            MEM8[168 + MEM[64]] = (byte(msg.data[varg1 + 62], 0x0)) & 0xFF;
                                            MEM[64] = MEM[64] + (varg2 - 127) + 211;
                                            require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                            require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
                                            tstor_cdccd5c65a7d4860ce3abbe9 = 0x91dd73460000000000000006000000000004444c5dc75cb358380d2e3de08a90;
                                            v69, /* uint256 */ v70 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 111 + (varg2 - 127), msg.data[varg1] >> 96, v66, msg.data[varg1] >> 96, v67, v68, msg.data[varg1 + 20] >> 96, msg.data[varg1 + 40] >> 96, msg.data[varg1 + 60] >> 240).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v71 = v72 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v71 = new bytes[](RETURNDATASIZE());
                                                require(!((v71 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v71 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v71)), Panic(65)); // failed memory allocation (too much memory)
                                                v70 = v71.data;
                                                RETURNDATACOPY(v70, 0, RETURNDATASIZE());
                                            }
                                            require(v69, v71 + 32, MEM[v71]);
                                            require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
                                            return 1;
                                        }
                                    } else {
                                        v73 = v74 = msg.data[varg1 + 20] >> 96;
                                        CALLDATACOPY(MEM[64] + 32, varg1 + 62, varg2 - 62);
                                        MEM[64] = MEM[64] + varg2 - 30;
                                        v75 = 0xed8(msg.data[varg1] >> 96, varg3, msg.data[varg1 + 60] >> 240);
                                        if (!address(v74)) {
                                            v73 = v76 = this;
                                        }
                                        v77 = MEM[64] + 1;
                                        v78 = uint256.max + (varg2 - 62);
                                        v79 = uint8(varg2 - 62);
                                        if (v79 - 2) {
                                            if (v79 - 3) {
                                                if (v79 - 4) {
                                                    if (v79 - 1) {
                                                        if (v79 - 5) {
                                                            if (v79 - 6) {
                                                                if (v79 - 7) {
                                                                    if (v79 - 8) {
                                                                        if (v79 - 9) {
                                                                            require(!(10 - v79), Error('Invalid action identifier'));
                                                                            0x513a(v73);
                                                                            // Unknown jump to Block 0x1b2d7B0xb7d. Refer to 3-address code (TAC);
                                                                        } else {
                                                                            0x515c(v73, v77);
                                                                        }
                                                                    } else {
                                                                        require(v78 >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                        require(v78 >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                        MEM[v77 + 75] = v78 - 75;
                                                                        if (!address(v80)) {
                                                                            v73 = v81 = this;
                                                                        }
                                                                        v82 = 0x5e1(v78, address(MEM[v77 + 40]));
                                                                        v83, /* uint128 */ v84, /* uint128 */ v85, /* int64 */ v86, /* int64 */ v87, /* uint40 */ v88, /* int32 */ v89, /* bool */ v90, /* uint32 */ v91, /* uint8 */ v92 = address(MEM[v77 + 40]).getState().gas(msg.gas);
                                                                        if (v83) {
                                                                            v93 = v94 = 0;
                                                                            if (v83) {
                                                                                v95 = 288;
                                                                                if (v95 > RETURNDATASIZE()) {
                                                                                    v95 = v96 = RETURNDATASIZE();
                                                                                }
                                                                                require(!((MEM[64] + (v95 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v95 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                                MEM[64] = MEM[64] + (v95 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                                require(MEM[64] + v95 - MEM[64] >= 288);
                                                                                v93 = v97 = 0x3b4();
                                                                                require(!0x1865c57d00000000000000000000000000000000000000000000000000000000);
                                                                                v97.word0 = v84;
                                                                                require(!(v85 - uint128(v85)));
                                                                                v97.word1 = v85;
                                                                                require(!(v86 - int64(v86)));
                                                                                v97.word2 = v86;
                                                                                require(!(v87 - int64(v87)));
                                                                                v97.word3 = v87;
                                                                                require(!(v88 - uint40(v88)));
                                                                                v97.word4 = v88;
                                                                                require(!(v89 - int32(v89)));
                                                                                v97.word5 = v89;
                                                                                require(!(v90 - bool(v90)));
                                                                                v97.word6 = v90;
                                                                                require(!(v91 - uint32(v91)));
                                                                                v97.word7 = v91;
                                                                                require(!(v92 - uint8(v92)));
                                                                                v97.word8 = v92;
                                                                            }
                                                                            if (!MEM[v77 + 41]) {
                                                                                v98 = v99 = uint128(MEM[32 + v93]);
                                                                            } else {
                                                                                v98 = v100 = uint128(MEM[v93]);
                                                                            }
                                                                            if (!MEM[v77 + 41]) {
                                                                                v101 = 0x3c4();
                                                                                v101.word0 = v82 - uint128(v98);
                                                                                v101.word1 = bool(MEM[v77 + 41]);
                                                                                v101.word2 = 0;
                                                                                v101.word3 = int32(int32.min);
                                                                                // Unknown jump to Block 0x11c8B0x51a7B0x49e00x3827B0xb7d. Refer to 3-address code (TAC);
                                                                            } else {
                                                                                v101 = v102 = 0x3c4();
                                                                                v102.word0 = v82 - uint128(v98);
                                                                                v102.word1 = bool(MEM[v77 + 41]);
                                                                                v102.word2 = 0;
                                                                                v102.word3 = int32(int32.max);
                                                                            }
                                                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                                            v103 = new uint256[](0);
                                                                            MCOPY(v103.data, MEM[64] + 32, 0);
                                                                            MEM[v103.data] = 0;
                                                                            v104, /* uint256 */ v105, /* uint256 */ v106 = address(MEM[v77 + 40]).call(0x3eece7db00000000000000000000000000000000000000000000000000000000, address(v73), MEM[v101], bool(MEM[v101 + 32]), bool(MEM[v101 + 64]), int32(MEM[v101 + 96]), v103).gas(msg.gas);
                                                                            if (v104) {
                                                                                if (v104) {
                                                                                    v107 = 64;
                                                                                    if (64 > RETURNDATASIZE()) {
                                                                                        v107 = v108 = RETURNDATASIZE();
                                                                                    }
                                                                                    require(!((MEM[64] + (v107 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v107 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                                    MEM[64] = MEM[64] + (v107 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                                    require(MEM[64] + v107 - MEM[64] >= 64);
                                                                                }
                                                                            }
                                                                        }
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    }
                                                                } else {
                                                                    0x51ad(v73, v77);
                                                                }
                                                            } else {
                                                                0x51bf(v77);
                                                            }
                                                        } else {
                                                            0x5224(v73, v77);
                                                        }
                                                    } else {
                                                        require(v78 >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        require(v78 >= 75, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        MEM[v77 + 75] = v78 - 75;
                                                        if (!address(v109)) {
                                                            v73 = v110 = this;
                                                        }
                                                        v111 = MEM[v77 + 40].getReserves().gas(msg.gas);
                                                        if (v111) {
                                                            require(RETURNDATASIZE() >= 64);
                                                            if (0x1 | (uint24(0x1 & MEM[v77 + 43] >> 1) == 1)) {
                                                                v112 = v78.balanceOf(address(MEM[v77 + 40])).gas(msg.gas);
                                                                if (v112) {
                                                                    require(RETURNDATASIZE() >= 32);
                                                                    require(MEM[0] >= MEM[0x20 ^ (MEM[v77 + 43] & 0x1 == 1) << 5], Panic(17)); // arithmetic overflow or underflow
                                                                    MEM[MEM[64] + ((MEM[v77 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v77 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v77 + 43] & 0x1 == 1) << 5]) * MEM[(MEM[v77 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v77 + 43] >> 8))) * (MEM[0] - MEM[0x20 ^ (MEM[v77 + 43] & 0x1 == 1) << 5]) + MEM[0x20 ^ (MEM[v77 + 43] & 0x1 == 1) << 5] * 10000);
                                                                    MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v77 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                                                    v113 = MEM[v77 + 40].swap(v114, v114, address(v73), 128, 0).gas(msg.gas);
                                                                    if (v113) {
                                                                    }
                                                                }
                                                            } else {
                                                                MEM[MEM[64] + ((MEM[v77 + 43] & 0x1 == 1) << 5) + 32] = (10000 - uint24(uint16(MEM[v77 + 43] >> 8))) * 0 * MEM[(MEM[v77 + 43] & 0x1 == 1) << 5] / ((10000 - uint24(uint16(MEM[v77 + 43] >> 8))) * 0 + MEM[0x20 ^ (MEM[v77 + 43] & 0x1 == 1) << 5] * 10000);
                                                                MEM[MEM[64] + (0x20 ^ 4 + ((MEM[v77 + 43] & 0x1 == 1) << 5)) + 28] = 0;
                                                                v115 = MEM[v77 + 40].swap(v114, v114, address(v73), 128, 0).gas(msg.gas);
                                                                if (v115) {
                                                                }
                                                            }
                                                        }
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    }
                                                } else {
                                                    0x5330(v73, msg.data[varg1 + 40] >> 96, v77);
                                                }
                                            } else {
                                                0x5364(v73, msg.data[varg1 + 40] >> 96, v77);
                                            }
                                        } else {
                                            if (v78 >= 54) {
                                                if (v78 >= 54) {
                                                    if (uint8(v78)) {
                                                        if (uint8(v78) - 1) {
                                                            require(!(2 - uint8(v78)), UnknownForkId(uint8(v78)));
                                                            v116 = v117 = 0xfa461e33;
                                                        } else {
                                                            v116 = v118 = 0x23a69e75;
                                                        }
                                                    } else {
                                                        v116 = 0xfa461e33;
                                                    }
                                                    if (uint8(v78) != 1) {
                                                        v119 = v120 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                    } else {
                                                        v119 = v121 = 0x1000276a4;
                                                    }
                                                    v122 = new uint256[](v78 - 54);
                                                    MCOPY(v122.data, v77 + 54 + 32, v78 - 54);
                                                    MEM[v122 + (v78 - 54) + 32] = 0;
                                                    require(!((MEM[64] + ((v78 - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v122 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v78 - 54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v122 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(v78)) << 96, ConfusedDeputy());
                                                    require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
                                                    tstor_cdccd5c65a7d4860ce3abbe9 = v116 << 224 | address(v78) | 0xa0000000000000000000000000000000000000000;
                                                    v123, /* uint256 */ v124 = address(v78).swap(address(v73), uint8(v78) == 1, MEM[v77 + 54], address(v119), v122).gas(msg.gas);
                                                    if (!RETURNDATASIZE()) {
                                                        v125 = v126 = 96;
                                                    } else {
                                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v125 = new bytes[](RETURNDATASIZE());
                                                        require(!((v125 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v125 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v125)), Panic(65)); // failed memory allocation (too much memory)
                                                        v124 = v125.data;
                                                        RETURNDATACOPY(v124, 0, RETURNDATASIZE());
                                                    }
                                                    require(v123, v125 + 32, MEM[v125]);
                                                    require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
                                                    MEM[64] = MEM[64];
                                                }
                                            }
                                            revert(Panic(50));
                                        }
                                        return 1;
                                    }
                                } else {
                                    v127 = v128 = msg.data[varg1] >> 96;
                                    v129 = msg.data[varg1 + 42] >> 248;
                                    v130 = 0x813(v129);
                                    v131 = 0x1e0f(v129);
                                    v132 = v133 = 0;
                                    while (v132 < v129) {
                                        require(v132 < v131.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v131[v132] = address(msg.data[varg1 + v132 * 20 + 43] >> 96);
                                        v132 = v132 + 1;
                                    }
                                    require(uint8(v129) - 1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
                                    require(uint8(uint8(v129) - 1) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v134 = new uint256[](uint8(uint8(v129) - 1));
                                    require(!((v134 + (32 + (uint8(uint8(v129) - 1) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v134 + (32 + (uint8(uint8(v129) - 1) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v134)), Panic(65)); // failed memory allocation (too much memory)
                                    require(uint8(uint8(v129) - 1) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v135 = v136 = 0;
                                    while (v135 < 32 + (uint8(uint8(v129) - 1) << 5) - 32) {
                                        v137 = 0x1e48();
                                        MEM[v134 + v135 + 32] = v137;
                                        v135 = v135 + 32;
                                    }
                                    v138 = 0x1ec5(v130);
                                    v139 = v140 = 0;
                                    while (1) {
                                        require(uint8(v129) - 1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
                                        if (v139 >= uint8(uint8(v129) - 1)) {
                                            require(v131.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v141 = 0xed8(address(MEM[v131.data]), varg3, msg.data[varg1 + 40] >> 240);
                                            if (0 == !v141) {
                                                v142 = v143 = 0x39b4(v128, v131, v134, v141, msg.data[varg1 + 20] >> 96);
                                            } else {
                                                require(v131.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[v131.data])) {
                                                    require(v131.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v144 = 0x5e1(address(MEM[v131.data]), this);
                                                    v145 = _SafeMul(v144, uint16(msg.data[varg1 + 40] >> 240));
                                                    v146 = v147 = v145 / 10000;
                                                } else {
                                                    v148 = _SafeMul(this.balance, uint16(msg.data[varg1 + 40] >> 240));
                                                    v146 = v149 = v148 / 10000;
                                                }
                                                if (!address(v128)) {
                                                    v127 = v150 = this;
                                                }
                                                require(v146 <= int256.max, Panic(17)); // arithmetic overflow or underflow
                                                require(v131.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                STORAGE[keccak256(0xbbcb91440523216e2b87052a99f69c604a7b6e00, address(MEM[v131.data]), 0xbbcb91440523216e2b87052a99f69c604a7b6e00, address(MEM[v131.data]))] = address(msg.data[varg1 + 20] >> 96);
                                                v151 = 0x1e0f(v134.length);
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + 32;
                                                MEM[MEM[64]] = 0;
                                                CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + 32;
                                                MEM[MEM[64]] = 0;
                                                CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                v152 = 0x3c4();
                                                v152.word0 = address(v127);
                                                v152.word1 = 1;
                                                v152.word2 = MEM[64];
                                                v152.word3 = MEM[64];
                                                v153 = new address[](v131.length);
                                                v154 = v153.data;
                                                v155 = v131.data;
                                                v156 = 0;
                                                while (v156 < v131.length) {
                                                    MEM[v154] = address(MEM[v155]);
                                                    v154 += 32;
                                                    v155 = v155 + 32;
                                                    v156 += 1;
                                                }
                                                MEM[v154] = v134.length;
                                                v157 = v158 = v154 + 32;
                                                v159 = v134.data;
                                                v160 = 0;
                                                while (v160 < v134.length) {
                                                    MEM[v157] = address(MEM[MEM[v159]]);
                                                    MEM[v157 + 32] = address(MEM[MEM[v159] + 32]);
                                                    MEM[v157 + 64] = MEM[MEM[v159] + 64];
                                                    v157 = v157 + 96;
                                                    v159 = v159 + 32;
                                                    v160 = v160 + 1;
                                                }
                                                MEM[v157] = v151.length;
                                                v161 = v162 = v157 + 32;
                                                v163 = v151.data;
                                                v164 = 0;
                                                while (v164 < v151.length) {
                                                    MEM[v161] = MEM[v163];
                                                    v161 += 32;
                                                    v163 = v163 + 32;
                                                    v164 += 1;
                                                }
                                                MEM[v161] = address(v152.word0);
                                                MEM[v161 + 32] = bool(v152.word1);
                                                MEM[v161 + 64] = 128;
                                                MEM[v161 + 128] = MEM[v152.word2];
                                                MCOPY(v161 + 128 + 32, v152.word2 + 32, MEM[v152.word2]);
                                                MEM[v161 + 128 + MEM[v152.word2] + 32] = 0;
                                                v165 = (MEM[v152.word2] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v161 + 128) + 32;
                                                MEM[v161 + 96] = v165 - v161;
                                                MEM[v165] = MEM[v152.word3];
                                                MCOPY(v165 + 32, v152.word3 + 32, MEM[v152.word3]);
                                                MEM[v165 + MEM[v152.word3] + 32] = 0;
                                                require(!((MEM[64] + ((MEM[v152.word3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v165 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((MEM[v152.word3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v165 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                require((tstor_cd1e9517bb0cb8d0d5cde893 ^ 0xbbcb91440523216e2b87052a99f69c604a7b6e00) << 96, ConfusedDeputy());
                                                require(!tstor_cdccd5c65a7d4860ce3abbe9, ReentrantCallback(tstor_cdccd5c65a7d4860ce3abbe9));
                                                tstor_cdccd5c65a7d4860ce3abbe9 = 0xb6a545480000000000000004bbcb91440523216e2b87052a99f69c604a7b6e00;
                                                v166, /* uint256 */ v167 = 0xbbcb91440523216e2b87052a99f69c604a7b6e00.call(0xa3c779fd00000000000000000000000000000000000000000000000000000000, v153, v154 - (MEM[64] + 36), v146, v157 - (MEM[64] + 36), v161 - (MEM[64] + 36)).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v168 = v169 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v168 = new bytes[](RETURNDATASIZE());
                                                    require(!((v168 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v168 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v168)), Panic(65)); // failed memory allocation (too much memory)
                                                    v167 = v168.data;
                                                    RETURNDATACOPY(v167, 0, RETURNDATASIZE());
                                                }
                                                require(v166, v168 + 32, MEM[v168]);
                                                require(!tstor_cdccd5c65a7d4860ce3abbe9, CallbackNotSpent(tstor_cdccd5c65a7d4860ce3abbe9));
                                                require(v168 + MEM[v168] + 32 - (v168 + 32) >= 32);
                                            }
                                            return 1;
                                        } else {
                                            v170 = 0x3d3();
                                            v170.word0 = msg.data[varg1 + v138 + v139 * 40] >> 96;
                                            v170.word1 = msg.data[varg1 + v138 + v139 * 40 + 20] >> 96;
                                            v170.word2 = msg.data[varg1 + v138 + v139 * 40 + 40];
                                            require(v139 < v134.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v134[v139] = v170;
                                            require(v139 < v134.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v139 = v139 + 1;
                                        }
                                    }
                                }
                            } else {
                                v171, v172, v173, v174, v175, v176, v177 = 0xaf4(msg.data[varg1 + 63] >> 248, msg.data[varg1 + 62] >> 248, msg.data[varg1 + 60] >> 240, msg.data[varg1 + 40] >> 96, msg.data[varg1 + 20] >> 96, msg.data[varg1] >> 96, varg3);
                                v178 = 0x2258(v174, v172, v173, v171, v175, v176, v177);
                                return 1;
                            }
                        } else {
                            v179 = v180 = msg.data[varg1 + 20] >> 96;
                            v181 = v182 = msg.data[varg1 + 40] >> 96;
                            v183 = v184 = MEM[64];
                            CALLDATACOPY(v184 + 32, varg1 + 62, varg2 - 62);
                            MEM[64] = v184 + varg2 - 30;
                            v185 = v186 = 0xed8(msg.data[varg1] >> 96, varg3, msg.data[varg1 + 60] >> 240);
                            v187 = v188 = 0x1adaa;
                            if (0 != !v186) {
                                v189 = bytes20(MEM[v184 + 32]);
                                if (varg2 - 62 < 20) {
                                    v189 = v190 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (varg2 - 62) << 3) & MEM[v184 + 32]);
                                }
                                v191 = (v189 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                                require(v191, MEM[64], RETURNDATASIZE());
                                require(31 < RETURNDATASIZE());
                                require((MEM[0] * uint16(msg.data[varg1 + 60] >> 240) / MEM[0] == uint16(msg.data[varg1 + 60] >> 240)) | !MEM[0], Panic(17)); // arithmetic overflow or underflow
                                v185 = v192 = MEM[0] * uint16(msg.data[varg1 + 60] >> 240) / 10000;
                            }
                            require(40 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v193 = v194 = new bytes[](40);
                            require(!((v194 + 96 > uint64.max) | (v194 + 96 < v194)), Panic(65)); // failed memory allocation (too much memory)
                            require(40 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(v194.data, msg.data.length, 64);
                            if (!address(v180)) {
                                v179 = v195 = this;
                            }
                            if (v185 <= int256.max) {
                                while (1) {
                                    revert(Panic(17));
                                    require(MEM[v183] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v196 = v197 = MEM[v183 + 20];
                                    v196 = v198 = MEM[v183 + 44];
                                    if (address(v197) < address(v198)) {
                                    }
                                    if (uint8(MEM[v183 + 21])) {
                                        if (uint8(MEM[v183 + 21]) - 1) {
                                            require(!(2 - uint8(MEM[v183 + 21])), UnknownForkId(uint8(MEM[v183 + 21])));
                                            v199 = 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f;
                                            v200 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                            v201 = 0xfa461e33;
                                        } else {
                                            v199 = v202 = 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9;
                                            v200 = v203 = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
                                            v201 = v204 = 0x23a69e75;
                                        }
                                    } else {
                                        v199 = v205 = 0x1f98431c8ad98523631ae4a59f267346ea31f984;
                                        v200 = v206 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                        v201 = v207 = 0xfa461e33;
                                    }
                                    MEM[32] = v196;
                                    MEM[0] = 0;
                                    MEM[12] = v196 << 96;
                                    MEM8[11] = 0xff & 0xFF;
                                    MEM[40 + v193] = v197;
                                    MEM[20 + v193] = v181;
                                    MEM[v193] = MEM[v193];
                                    MCOPY(196 + MEM[64], v193, 32 + MEM[v193]);
                                    require((tstor_cd1e9517bb0cb8d0d5cde893 ^ address(keccak256(v114, v199, keccak256(MEM[0x0:96 - !uint24(MEM[v3b0d_0x2V0xa98 + 24]) << 5]), v200))) << 96, ConfusedDeputy());
                                    v208 = tstor_cdccd5c65a7d4860ce3abbe9;
                                    require(!v208, ReentrantCallback(v208));
                                    tstor_cdccd5c65a7d4860ce3abbe9 = v201 << 224 | address(keccak256(v114, v199, keccak256(MEM[0x0:96 - !uint24(MEM[v3b0d_0x2V0xa98 + 24]) << 5]), v200)) | 0x50000000000000000000000000000000000000000;
                                    v209, /* uint256 */ v210 = address(keccak256(v114, v199, keccak256(MEM[0x0:96 - !uint24(MEM[v3b0d_0x2V0xa98 + 24]) << 5]), v200)).swap(v179 ^ (this ^ v179) * (MEM[v183] > 44), 0x128acb08000000000000000000000000, address(v197) < address(v198), v185, 0x1000276a4 ^ 0xfffd8963efd1fc6a506488495d951d53639afb81 * (address(v197) >= address(v198)), 160).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v211 = v212 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v211 = new bytes[](RETURNDATASIZE());
                                        require(!((v211 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v211 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v211)), Panic(65)); // failed memory allocation (too much memory)
                                        v210 = v211.data;
                                        RETURNDATACOPY(v210, 0, RETURNDATASIZE());
                                    }
                                    require(v209, v211 + 32, MEM[v211]);
                                    v213 = tstor_cdccd5c65a7d4860ce3abbe9;
                                    require(!v213, CallbackNotSpent(v213));
                                    require(v211 + MEM[v211] + 32 - (v211 + 32) >= 64);
                                    v185 = v214 = 0 - ((MEM[v211 + 32 + 32] ^ MEM[v211 + 32]) * (address(v197) < address(v198)) ^ MEM[v211 + 32]);
                                    if (v214 >= 0) {
                                        if (MEM[v183] <= 44) {
                                            return 1;
                                        } else {
                                            v181 = this;
                                            require(MEM[v183] >= 24, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v183 = v183 + 24;
                                            MEM[v183] = MEM[v183] - 24;
                                            MEM[v193] = 40;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        v215 = msg.data[varg1 + 22] >> 96;
                        v216 = msg.data[varg1 + 42];
                        v217 = varg2 - 74;
                        CALLDATACOPY(MEM[64] + 32, varg1 + 74, v217);
                        MEM[64] = MEM[64] + varg2 - 42;
                        v218 = v219 = 0xed8(address(msg.data[varg1] >> 96), varg3, msg.data[varg1 + 20] >> 240);
                        v218 = v220 = 0;
                        if (address(msg.data[varg1] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            if (0 == !address(msg.data[varg1] >> 96)) {
                                if (!v219) {
                                    v221 = 0x5e1(msg.data[varg1] >> 96, this);
                                    v218 = v222 = 0x2684(v221, uint16(msg.data[varg1 + 20] >> 240));
                                }
                                require(v216 <= v216 + 32, Panic(17)); // arithmetic overflow or underflow
                                if (v216 + 32 <= v217) {
                                    v223 = 0;
                                    MEM[MEM[64] + (v216 + 32)] = v218;
                                    if (address(v215) - address(msg.data[varg1] >> 96)) {
                                        0x29f6(msg.data[varg1] >> 96, v215, v218);
                                    }
                                }
                            } else {
                                require(!v216, InvalidOffset());
                                v223 = v224 = 0;
                            }
                        } else {
                            if (!v219) {
                                v225 = _SafeMul(this.balance, uint16(msg.data[varg1 + 20] >> 240));
                                v218 = v226 = v225 / 10000;
                            }
                            if (0 == !v217) {
                                v227 = 0x1ed3(v216);
                                if (v227 <= v217) {
                                    v223 = v228 = 0;
                                    MEM[MEM[64] + v227] = v218;
                                }
                            } else {
                                require(!v216, InvalidOffset());
                                v229, /* uint256 */ v230 = address(v215).call().value(v218).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v231 = v232 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v231 = new bytes[](RETURNDATASIZE());
                                    require(!((v231 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v231 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v231)), Panic(65)); // failed memory allocation (too much memory)
                                    v230 = v231.data;
                                    RETURNDATACOPY(v230, 0, RETURNDATASIZE());
                                }
                                require(v229, v231 + 32, MEM[v231]);
                            }
                        }
                        return 1;
                        revert(Panic(50));
                        v233 = address(v215).call(MEM[MEM[64] + 32:MEM[64] + 32 + v24de], MEM[v264cV0xa6b:v264cV0xa6b + v264cV0xa6b]).value(v218).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v234 = v235 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v234 = new bytes[](RETURNDATASIZE());
                            require(!((v234 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v234 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v234)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v234.data, 0, RETURNDATASIZE());
                        }
                        require(v233, v234 + 32, MEM[v234]);
                        v236 = v237 = !MEM[v234];
                        if (v237) {
                            v236 = v238 = !v215.code.size;
                        }
                        require(!v236, InvalidTarget());
                    }
                } else if (address(msg.data[varg1] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                    v239 = 0x5e1(address(msg.data[varg1] >> 96), this);
                    v240 = 0x2684(v239, uint16(msg.data[varg1 + 40] >> 240));
                    0x2760(address(msg.data[varg1] >> 96), msg.data[varg1 + 20] >> 96, v240);
                    return 1;
                } else {
                    v241 = _SafeMul(this.balance, uint16(msg.data[varg1 + 40] >> 240));
                    0x27a3(address(msg.data[varg1 + 20] >> 96), v241 / 10000);
                    return 1;
                }
            } else {
                v242 = v243 = msg.data[varg1 + 40];
                if (address(msg.data[varg1] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                    if (0 != !v243) {
                        v242 = v244 = 0x5e1(address(msg.data[varg1] >> 96), this);
                    }
                    v245 = address(msg.data[varg1] >> 96).transfer(msg.data[varg1 + 20] >> 96, 0xa9059cbb000000000000000000000000, v242).gas(msg.gas);
                    if (!v245) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                        MEM[52] = 0;
                        return 1;
                    }
                } else {
                    if (!v243) {
                        v242 = v246 = this.balance;
                    }
                    v247, /* uint256 */ v248 = address(msg.data[varg1 + 20] >> 96).call().value(v242).gas(msg.gas);
                    require(v247, v248, RETURNDATASIZE());
                    return 1;
                }
            }
        } else {
            v249, v250, v251, v252 = v253 = 0x8e8(msg.data[varg1 + 60] >> 240, msg.data[varg1 + 40] >> 96, msg.data[varg1 + 20] >> 96, msg.data[varg1] >> 96, 2291);
            if (!address(v253)) {
                v252 = v254 = this;
            }
            v255, /* uint256 */ v256 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, v251 << 96, v250, v250 << 96, v250, v252, v250 << 96, v249).gas(msg.gas);
            require(v255, v256, RETURNDATASIZE());
            return 1;
        }
    } else {
        0x88b(msg.data[varg1 + 60], msg.data[varg1 + 40] >> 96, msg.data[varg1 + 20] >> 96, msg.data[varg1] >> 96);
        return 1;
    }
}

function 0x88b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (!address(varg2)) {
        varg2 = v0 = this;
    }
    v1, /* uint256 */ v2 = 0xd524f98f554bd34f4185678f64a85bb98971d314.call(0x381fef89000000000000000000000000, varg3 << 96, varg1 << 96, varg1, varg2, varg1 << 96, varg1, varg0).gas(msg.gas);
    require(v1, v2, RETURNDATASIZE());
    return ;
}

function 0x8e8(uint16 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (address(varg3) - address(v0.word0)) {
        return 0, varg1, varg3, varg2;
    } else {
        v1 = 0x2684(v0.word1, varg0);
        require(v0.word1 - v1 <= v0.word1, Panic(17)); // arithmetic overflow or underflow
        v0.word1 = v0.word1 - v1;
        return v1, varg1, varg3, varg2;
    }
}

function 0xaf4(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, struct(2) varg6) private { 
    if (address(varg5) - address(varg6.word0)) {
        return 0, varg4, varg3, varg5, varg2, varg1, varg0;
    } else {
        v0 = 0x2684(varg6.word1, uint16(varg2));
        require(varg6.word1 - v0 <= varg6.word1, Panic(17)); // arithmetic overflow or underflow
        varg6.word1 = varg6.word1 - v0;
        return v0, varg4, varg3, varg5, varg2, varg1, varg0;
    }
}

function 0xc29(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, struct(2) varg5) private { 
    if (address(varg3) - address(varg5.word0)) {
        return 0, varg3, varg4, varg2, varg1, varg0;
    } else {
        v0 = 0x2684(varg5.word1, uint16(varg2));
        require(varg5.word1 - v0 <= varg5.word1, Panic(17)); // arithmetic overflow or underflow
        varg5.word1 = varg5.word1 - v0;
        return v0, varg3, varg4, varg2, varg1, varg0;
    }
}

function 0xcae(uint256 varg0, uint256 varg1, uint256 varg2, struct(2) varg3) private { 
    if (0 == varg0) {
        v0 = v1 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
    } else {
        v0 = v2 = 0x6b175474e89094c44da98b954eedeac495271d0f;
    }
    if (address(v0) - address(varg3.word0)) {
        return 0, varg2, varg1, varg0;
    } else {
        v3 = 0x2684(varg3.word1, uint16(varg1));
        require(varg3.word1 - v3 <= varg3.word1, Panic(17)); // arithmetic overflow or underflow
        varg3.word1 = varg3.word1 - v3;
        return v3, varg2, varg1, varg0;
    }
}

function 0xd23(uint256 varg0, uint256 varg1, uint256 varg2, struct(2) varg3) private { 
    if (0x6b175474e89094c44da98b954eedeac495271d0f - address(varg3.word0)) {
        return 0, varg2, varg1, varg0;
    } else {
        v0 = 0x2684(varg3.word1, uint16(varg1));
        require(varg3.word1 - v0 <= varg3.word1, Panic(17)); // arithmetic overflow or underflow
        varg3.word1 = varg3.word1 - v0;
        return v0, varg2, varg1, varg0;
    }
}

function 0xd6b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, struct(2) varg4) private { 
    if (0x6b175474e89094c44da98b954eedeac495271d0f - address(varg4.word0)) {
        return 0, varg3, varg2, varg1, varg0;
    } else {
        v0 = 0x2684(varg4.word1, uint16(varg2));
        require(varg4.word1 - v0 <= varg4.word1, Panic(17)); // arithmetic overflow or underflow
        varg4.word1 = varg4.word1 - v0;
        return v0, varg3, varg2, varg1, varg0;
    }
}

function 0xe46(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, struct(2) varg5) private { 
    if (address(varg3) - address(varg5.word0)) {
        return 0, varg3, varg4, varg2, varg1, varg0;
    } else {
        v0 = 0x2684(varg5.word1, uint16(varg2));
        require(varg5.word1 - v0 <= varg5.word1, Panic(17)); // arithmetic overflow or underflow
        varg5.word1 = varg5.word1 - v0;
        return v0, varg3, varg4, varg2, varg1, varg0;
    }
}

function 0xed8(address varg0, struct(2) varg1, uint16 varg2) private { 
    if (varg0 - address(varg1.word0)) {
        return 0;
    } else {
        v0 = 0x2684(varg1.word1, varg2);
        require(varg1.word1 - v0 <= varg1.word1, Panic(17)); // arithmetic overflow or underflow
        varg1.word1 = varg1.word1 - v0;
        return v0;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
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
        v0 = 0x409();
        return MEM[v20_0x0.data:v20_0x0.data + v20_0x0.word0.length];
    }
}
