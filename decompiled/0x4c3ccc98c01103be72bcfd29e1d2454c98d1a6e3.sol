// Decompiled by library.dedaub.com
// 2026.04.18 02:40 UTC
// Compiled using the solidity compiler version 0.8.30





function 0xc028b46d(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 25;
    if ((byte(varg0, 0x0)) & 0x2) {
        v0 = v2 = 57;
    }
    if (0x4 & (byte(varg0, 0x0))) {
        v0 = v3 = v0 + 20;
        v4 = v5 = msg.data[v0] >> 96;
    }
    if (!v4) {
        v4 = v6 = this;
    }
    v7, v8, v8, v9, v10, v10, v9, /* uint256 */ v11 = (varg1 >> 96).getTradeInfo().gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    if (1 == (byte(varg0, 0x0)) & 0x1) {
        v12 = v13 = 10 ** 18;
    } else {
        v12 = v14 = 10 ** 18;
    }
    v15 = msg.data[v0] * (v12 - v11) / v12 * v10 / (v9 + msg.data[v0] * (v12 - v11) / v12);
    if (1 != (byte(varg0, 0x0)) & 0x1) {
    }
    v16, /* uint256 */ v17 = (varg1 >> 96).swap(v15, 0, v15, 0, v4, 128, 0).gas(msg.gas);
    require(v16, MEM[64], RETURNDATASIZE());
    require(v15 >= v4, ReturnAmountIsNotEnough(v15, v4));
    return v15;
}

function 0xbdb69421(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    CALLDATACOPY(MEM[64] + 4, 44, msg.data.length - 44);
    v0 = this.call(0x10c3405f00000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v0) {
        v1 = v2 = MEM[0];
    }
    if (!v0) {
        0x4c26(varg0 >> 96, varg1 >> 96, msg.data[msg.data.length - 32]);
        return v1;
    } else {
        return v1;
    }
}

function 0xbd46a343(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = this;
    v2 = v3 = 0xba12222222228d8ba445958a75a0704d566bf2c8;
    v4 = v5 = msg.data.length - 32;
    if (varg0 >> 248 & 0x40) {
        v4 = v6 = msg.data.length - 52;
        v2 = v7 = msg.data[v6] >> 96;
    }
    if (0x80 & varg0 >> 248) {
        v0 = v8 = msg.data[v4 - 20] >> 96;
    }
    if (msg.data[5 + (varg0 >> 243 & 0x1e0)]) {
        v9 = msg.data[5 + (varg0 >> 243 & 0x1e0)].approve(v2, msg.data[v5]).gas(msg.gas);
        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v9)) {
            v10 = msg.data[5 + (varg0 >> 243 & 0x1e0)].approve(v2, 0).gas(msg.gas);
            if ((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v10) {
                v11 = msg.data[5 + (varg0 >> 243 & 0x1e0)].approve(v2, msg.data[v5]).gas(msg.gas);
                if ((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v11) {
                    // Unknown jump to Block 0x14c4. Refer to 3-address code (TAC);
                }
            }
            revert(ApproveFailed());
        }
    }
    v12 = v13 = MEM[64] + (bool(varg0 >> 248) + 1 << 5) + 292;
    while (v14 < bool(varg0 >> 248)) {
        MEM[MEM[64] + (v14 << 5) + 324] = v14 * 192 + (varg0 >> 243 & 0x1e0);
        MEM[v12] = msg.data[5 + (v14 << 5)];
        MEM[v12 + 32] = v14;
        MEM[v12 + 64] = v14 + 1;
        MEM[v12 + 96] = !v14 * msg.data[v5];
        MEM[v12 + 128] = 160;
        MEM[v12 + 160] = 0;
        v12 = v12 + 192;
        v14 = v14 + 1;
    }
    MEM[MEM[64] + 224 * bool(varg0 >> 248) + 324] = bool(varg0 >> 248) + 1;
    CALLDATACOPY(MEM[64] + 224 * bool(varg0 >> 248) + 356, 5 + (varg0 >> 243 & 0x1e0), bool(varg0 >> 248) + 1 << 5);
    MEM[MEM[64] + (224 * bool(varg0 >> 248) + (bool(varg0 >> 248) + 2 << 5)) + 324] = bool(varg0 >> 248) + 1;
    MEM[MEM[64] + (224 * bool(varg0 >> 248) + (bool(varg0 >> 248) + 2 << 5)) + 356] = int256.max;
    CALLDATACOPY(MEM[64] + (224 * bool(varg0 >> 248) + (bool(varg0 >> 248) + 2 << 5)) + 388, msg.data.length, varg0 >> 243 & 0x1e0);
    v15 = v2.batchSwap(0, 288, 320 + 224 * bool(varg0 >> 248), this, 0, v0, 0, 224 * bool(varg0 >> 248) + (bool(varg0 >> 248) + 2 << 5) + 320, block.timestamp, bool(varg0 >> 248)).value(!msg.data[5 + (varg0 >> 243 & 0x1e0)] * msg.data[v5]).gas(msg.gas);
    if (!v15) {
        v16 = RETURNDATASIZE();
        revert(v17, v17, v17, v17, v17, v17, v17, v17, v17, bool(varg0 >> 248));
    } else {
        return 0 - MEM[RETURNDATASIZE() + MEM[64] - 32];
    }
}

function 0xa87a1ae8(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = new struct(11);
    require(!((v0 + 352 < v0) | (v0 + 352 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    v0.word6 = 0;
    v0.word7 = 0;
    v0.word8 = 0;
    v0.word9 = 0;
    v0.word10 = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v4, /* uint256 */ v5, /* uint256 */ v6 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v7, /* uint256 */ v8, /* uint256 */ v9, /* uint256 */ v10 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v11, /* uint256 */ v12, /* uint256 */ v13, /* uint256 */ v14 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v15, /* uint256 */ v16, /* uint256 */ v17 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v18, /* uint256 */ v19, /* uint256 */ v20 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v21, /* uint256 */ v22, /* uint256 */ v23 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v24 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v25 = (varg0 >> 96)._TARGET_QUOTE_TOKEN_AMOUNT_().gas(msg.gas);
    v26, v27 = 0x51d1(v0);
    v0.word5 = v26;
    v0.word4 = v27;
    require(v16 < 3, Panic(33)); // failed convertion to enum type
    if (v16) {
        require(v17 < 3, Panic(33)); // failed convertion to enum type
        if (0 == (v17 == 1)) {
            if (0 == varg2 <= v0.word5 - v12) {
                v28 = 0x4bf1(varg2 - (v0.word5 - v12), v0);
                v29 = v30 = v28 + (v10 - v0.word4);
            } else {
                v31 = 0x451d(v3);
                v32 = _SafeDiv(v0.word5 * v0.word5, v13 + varg2);
                v33 = 0x53f1(v32 * 10 ** 18, v14);
                v29 = v34 = (10 ** 18 + v6 * v33 / 10 ** 18) * ((v13 + varg2 - v14) * v31 / 10 ** 18) / 10 ** 18;
            }
        } else {
            v35 = 0x451d(v2);
            v36 = 0x52da(v0.word4, v8, v35 * varg2 / 10 ** 18, v5);
            v29 = v37 = v9 - v36;
        }
        require(10 ** 18, Panic(18)); // division by zero
        v38 = v39 = v29 * 10 ** 18 / 10 ** 18;
        v40 = 0x5126(varg1 >> 96, varg0 >> 96, varg2);
        if (!v40) {
            v41 = 0x518a(varg1 >> 96, varg0 >> 96);
            v42 = !v41;
            if (bool(v41)) {
                v43 = 0x5126(varg1 >> 96, varg0 >> 96, varg2);
                v42 = v44 = !v43;
            }
            require(!v42, ForceApproveFailed());
        }
    } else {
        v45 = 0x4bf1(varg2, v0);
        require(10 ** 18, Panic(18)); // division by zero
        v38 = v45 * 10 ** 18 / 10 ** 18;
        0x4650(varg1 >> 96, varg0 >> 96, varg2);
    }
    v46 = (varg0 >> 96).buyBaseToken(v38, int256.min, 96, 0).gas(msg.gas);
    require(v46, MEM[64], RETURNDATASIZE());
    if (v46) {
        v47 = v48 = 32;
        if (v48 > RETURNDATASIZE()) {
            v47 = v49 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v47 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v47 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v47 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v47 - MEM[64] >= v48);
    }
    return v38;
}

function 0x9df46e8c(uint256 varg0, uint256 varg1, address varg2) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    v0 = new uint256[](0);
    CALLDATACOPY(v0.data, 36, 128);
    v1, /* uint256 */ v2, /* uint256 */ v0 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v0, v3, v3, v3, v3, v3, 0, 224, 0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    RETURNDATACOPY(MEM[64], 0, 96);
    require(!(varg1 - address(varg1)));
    0x4696(varg1, 0xba1333333333a1ba1108e8412f11850a5c319ba9, MEM[MEM[64] + 32]);
    v4, /* uint256 */ v5 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.settle(varg1, MEM[MEM[64] + 32]).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v6, /* uint256 */ v5 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(varg2, varg0, MEM[MEM[64] + 64]).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    return 0x2bfb780c00000000000000000000000000000000000000000000000000000000;
}

function 0x98aed105(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = varg0 >> 96;
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = varg1 >> 16;
    while (v0) {
        if (uint16(v0) - uint16.max) {
            v6 = v6 + uint16(v0);
        }
        v0 = v0 >> 16;
    }
    while (v4) {
        v6 = v7 = uint24(v4);
        if (uint16(v0) == uint16.max) {
            v6 = v8 = 0;
            v9 = v10 = 0;
            CALLDATACOPY(MEM[64], 54 + v6, v7 - v6);
            v11 = v12 = MEM[64] + (v7 - v6);
            v13 = v14 = MEM[64] + 2;
            if (v15 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v16 = v17 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v16 = v18 = MEM[v14] >> 96;
                    v13 = v19 = MEM[64] + 22;
                }
                v20 = v21 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v20 = v22 = MEM[v13] >> 128;
                    v13 = v23 = v13 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v13 = v24 = v13 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v16 = v25 = MEM[v24] >> 96;
                        v13 = v26 = v13 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v12] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v12 + 4] = v16;
                        MEM[v12 + 36] = v15;
                        v27 = (MEM[v13] >> 96).call(MEM[v4e1eV0x1dad:v4e1eV0x1dad + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, TransferFailed());
                    } else {
                        MEM[v12] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v12 + 4] = v16;
                        MEM[v12 + 36] = v15;
                        v28 = (MEM[v13] >> 96).call(MEM[v4e1eV0x1dad:v4e1eV0x1dad + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v28)) {
                            MEM[v12 + 36] = 0;
                            v29 = (MEM[v13] >> 96).call(MEM[v4e1eV0x1dad:v4e1eV0x1dad + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v29, ApproveFailed());
                            MEM[v12 + 36] = v15;
                            v30 = (MEM[v13] >> 96).call(MEM[v4e1eV0x1dad:v4e1eV0x1dad + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v30, ApproveFailed());
                        }
                    }
                }
                v31 = v32 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v31 = v33 = MEM[v13];
                    v13 = v34 = v13 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v12] = v15;
                        v11 = v35 = 32 + v12;
                    } else {
                        v13 = v36 = v13 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v36 + (MEM[v13] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v12) {
                            MEM[v36] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v36, 4);
                        } else {
                            MEM[v36 + (MEM[v13] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v15;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v20 = v37 = v20 + v15;
                }
                if (v13 > v11) {
                    MEM[v13] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v13, 4);
                } else {
                    v38 = this.balance;
                    if (v20 > v38) {
                        MEM[v13] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v13, 4);
                    } else {
                        v39 = v16.call(MEM[v4f54_0x2V0x1dad:v4f54_0x2V0x1dad + v4ec3_0x0V0x1dad - v4f54_0x2V0x1dad], MEM[v4f54_0x2V0x1dad:v4f54_0x2V0x1dad + uint8.max + 1]).value(v20).gas(msg.gas);
                        if (!v39) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v13, 0, RETURNDATASIZE());
                                revert(v13, RETURNDATASIZE());
                            }
                        } else if (1 == v39) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v13] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v13, 4);
                                } else {
                                    v6 = v40 = MEM[v13 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v9 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v6 = v41 = 0 - v40;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v9) {
                                MEM[v13] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v13, 4);
                            } else if (v6 < v31) {
                                MEM[v13] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v13 + 4] = v6;
                                revert(v13, 36);
                            }
                        }
                    }
                }
            }
        } else if (!uint16(v0)) {
            require(v0);
            v2 = v42 = 0;
            v43 = v44 = 0;
            CALLDATACOPY(MEM[64], 54 + v6, v7 - v6);
            v45 = v46 = MEM[64] + (v7 - v6);
            v47 = v48 = MEM[64] + 2;
            if (v49 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v50 = v51 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v50 = v52 = MEM[v48] >> 96;
                    v47 = v53 = MEM[64] + 22;
                }
                v54 = v55 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v54 = v56 = MEM[v47] >> 128;
                    v47 = v57 = v47 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v47 = v58 = v47 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v50 = v59 = MEM[v58] >> 96;
                        v47 = v60 = v47 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v46] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v46 + 4] = v50;
                        MEM[v46 + 36] = v49;
                        v61 = (MEM[v47] >> 96).call(MEM[v4e1eV0x1d97:v4e1eV0x1d97 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v61, TransferFailed());
                    } else {
                        MEM[v46] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v46 + 4] = v50;
                        MEM[v46 + 36] = v49;
                        v62 = (MEM[v47] >> 96).call(MEM[v4e1eV0x1d97:v4e1eV0x1d97 + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v62)) {
                            MEM[v46 + 36] = 0;
                            v63 = (MEM[v47] >> 96).call(MEM[v4e1eV0x1d97:v4e1eV0x1d97 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v63, ApproveFailed());
                            MEM[v46 + 36] = v49;
                            v64 = (MEM[v47] >> 96).call(MEM[v4e1eV0x1d97:v4e1eV0x1d97 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v64, ApproveFailed());
                        }
                    }
                }
                v65 = v66 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v65 = v67 = MEM[v47];
                    v47 = v68 = v47 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v46] = v49;
                        v45 = v69 = 32 + v46;
                    } else {
                        v47 = v70 = v47 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v70 + (MEM[v47] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v46) {
                            MEM[v70] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v70, 4);
                        } else {
                            MEM[v70 + (MEM[v47] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v49;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v54 = v71 = v54 + v49;
                }
                if (v47 > v45) {
                    MEM[v47] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v47, 4);
                } else {
                    v72 = this.balance;
                    if (v54 > v72) {
                        MEM[v47] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v47, 4);
                    } else {
                        v73 = v50.call(MEM[v4f54_0x2V0x1d97:v4f54_0x2V0x1d97 + v4ec3_0x0V0x1d97 - v4f54_0x2V0x1d97], MEM[v4f54_0x2V0x1d97:v4f54_0x2V0x1d97 + uint8.max + 1]).value(v54).gas(msg.gas);
                        if (!v73) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v47, 0, RETURNDATASIZE());
                                revert(v47, RETURNDATASIZE());
                            }
                        } else if (1 == v73) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v47] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v47, 4);
                                } else {
                                    v2 = MEM[v47 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v43 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v2 = v74 = 0 - v2;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v43) {
                                MEM[v47] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v47, 4);
                            } else if (v2 < v65) {
                                MEM[v47] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v47 + 4] = v2;
                                revert(v47, 36);
                            }
                        }
                    }
                }
            }
        } else {
            v75 = v76 = _SafeDiv(v2 * uint16(v0), v6);
            v6 = v6 - uint16(v0);
            v75 = v77 = 0;
            v78 = v79 = 0;
            CALLDATACOPY(MEM[64], 54 + v6, v7 - v6);
            v80 = v81 = MEM[64] + (v7 - v6);
            v82 = v83 = MEM[64] + 2;
            if (v76 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v84 = v85 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v84 = v86 = MEM[v83] >> 96;
                    v82 = v87 = MEM[64] + 22;
                }
                v88 = v89 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v88 = v90 = MEM[v82] >> 128;
                    v82 = v91 = v82 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v82 = v92 = v82 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v84 = v93 = MEM[v92] >> 96;
                        v82 = v94 = v82 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v81] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v81 + 4] = v84;
                        MEM[v81 + 36] = v76;
                        v95 = (MEM[v82] >> 96).call(MEM[v4e1eV0x1d3b:v4e1eV0x1d3b + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v95, TransferFailed());
                    } else {
                        MEM[v81] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v81 + 4] = v84;
                        MEM[v81 + 36] = v76;
                        v96 = (MEM[v82] >> 96).call(MEM[v4e1eV0x1d3b:v4e1eV0x1d3b + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v96)) {
                            MEM[v81 + 36] = 0;
                            v97 = (MEM[v82] >> 96).call(MEM[v4e1eV0x1d3b:v4e1eV0x1d3b + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v97, ApproveFailed());
                            MEM[v81 + 36] = v76;
                            v98 = (MEM[v82] >> 96).call(MEM[v4e1eV0x1d3b:v4e1eV0x1d3b + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v98, ApproveFailed());
                        }
                    }
                }
                v99 = v100 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v99 = v101 = MEM[v82];
                    v82 = v102 = v82 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v81] = v76;
                        v80 = v103 = 32 + v81;
                    } else {
                        v82 = v104 = v82 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v104 + (MEM[v82] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v81) {
                            MEM[v104] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v104, 4);
                        } else {
                            MEM[v104 + (MEM[v82] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v76;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v88 = v105 = v88 + v76;
                }
                if (v82 > v80) {
                    MEM[v82] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v82, 4);
                } else {
                    v106 = this.balance;
                    if (v88 > v106) {
                        MEM[v82] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v82, 4);
                    } else {
                        v107 = v84.call(MEM[v4f54_0x2V0x1d3b:v4f54_0x2V0x1d3b + v4ec3_0x0V0x1d3b - v4f54_0x2V0x1d3b], MEM[v4f54_0x2V0x1d3b:v4f54_0x2V0x1d3b + uint8.max + 1]).value(v88).gas(msg.gas);
                        if (!v107) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                                revert(v82, RETURNDATASIZE());
                            }
                        } else if (1 == v107) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v82] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v82, 4);
                                } else {
                                    v75 = MEM[v82 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v78 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v75 = v108 = 0 - v75;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v78) {
                                MEM[v82] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v82, 4);
                            } else if (v75 < v99) {
                                MEM[v82] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v82 + 4] = v75;
                                revert(v82, 36);
                            }
                        }
                    }
                }
            }
            v109 = v110 = bool(v75);
            if (!v75) {
                v109 = v111 = 1;
            }
            if (v109) {
                v6 = _SafeAdd(v6, v75);
                v2 = v2 - v76;
            }
        }
        v4 = v4 >> 24;
        v0 = v0 >> 16;
    }
    require(!v0);
    return v6;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = new struct(2);
    require(!((v1 + 64 > uint64.max) | (v1 + 64 < v1)), Panic(65)); // failed memory allocation (too much memory)
    v1.word0 = 32;
    CALLDATACOPY(v1.data, msg.data.length, 32);
    v2 = v3 = this;
    v4 = v5 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    if ((byte(rawData.word1, 0x0)) & 0x1) {
        v4 = v6 = 0x1000276a4;
    }
    v7 = v8 = 4 + rawData + 32 + (msg.data[4 + rawData + 32 + 47] >> 240) + 49;
    if ((byte(rawData.word1, 0x0)) & 0x20) {
        v9 = v10 = msg.data[v8] >> 96;
        v7 = v11 = 4 + rawData + 32 + (msg.data[4 + rawData + 32 + 47] >> 240) + 69;
    }
    if ((byte(rawData.word1, 0x0)) & 0x80) {
        v2 = v12 = msg.data[v7] >> 96;
        v7 = v13 = v7 + 20;
    }
    if ((byte(rawData.word1, 0x0)) & 0x40) {
        v4 = v14 = msg.data[v7] >> 96;
    }
    v15 = v16 = msg.data[4 + rawData + 32 + 1] >> 96;
    v15 = v17 = msg.data[4 + rawData + 32 + 21] >> 96;
    v18 = new uint256[](msg.data[4 + rawData + 32 + 47] >> 240);
    CALLDATACOPY(v18.data, 49 + (4 + rawData + 32), msg.data[4 + rawData + 32 + 47] >> 240);
    v19 = address(0x4444c5dc75cb358380d2e3de08a90).swap(v16, v17, msg.data[4 + rawData + 32 + 41] >> 232, msg.data[4 + rawData + 32 + 44] >> 232, v9, (byte(rawData.word1, 0x0)) & 0x1, 0 - msg.data[4 + rawData + 32 + msg.data[4 + rawData] - 32], v4, v18).gas(msg.gas);
    require(v19, MEM[64], RETURNDATASIZE());
    v20 = v21 = MEM[0] >> 128;
    v20 = v22 = int128(MEM[0]);
    if (1 == (byte(rawData.word1, 0x0)) & 0x1) {
        v23 = v24 = 0 - v21;
    } else {
        v23 = v25 = 0 - v22;
    }
    v26, /* uint256 */ v27, v28, v28, v28, v28, v28, v28, v28, /* uint256 */ v18 = address(0x4444c5dc75cb358380d2e3de08a90).sync(v15).gas(msg.gas);
    require(v26, MEM[64], RETURNDATASIZE());
    if (0 == v15) {
        v29 = address(0x4444c5dc75cb358380d2e3de08a90).settle(0x11da60b400000000000000000000000000000000000000000000000000000000, v15).value(v23).gas(msg.gas);
        require(v29, MEM[64], RETURNDATASIZE());
    } else {
        v30 = v15.transfer(address(0x4444c5dc75cb358380d2e3de08a90), v23).gas(msg.gas);
        require(v30, MEM[64], RETURNDATASIZE());
        v31 = address(0x4444c5dc75cb358380d2e3de08a90).settle(address(0x4444c5dc75cb358380d2e3de08a90), 0x11da60b400000000000000000000000000000000000000000000000000000000).gas(msg.gas);
        require(v31, MEM[64], RETURNDATASIZE());
    }
    v32 = address(0x4444c5dc75cb358380d2e3de08a90).take(v15, v2, v20).gas(msg.gas);
    require(v32, MEM[64], RETURNDATASIZE());
    v1.word1 = v20;
    v33 = new bytes[](v1.word0.length);
    MCOPY(v33.data, v1.data, v1.word0.length);
    v33[v1.word0.length] = 0;
    return v33, v1.word0.length, v2, v20;
}

function limited(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(varg1 >> 232 <= msg.data.length - 71);
    CALLDATACOPY(MEM[64], 39, varg1 >> 232);
    v0 = v1 = MEM[64] + (varg1 >> 232);
    v2 = MEM[MEM[64]];
    v3 = v4 = MEM[64] + 2;
    if (varg0 ^ (msg.data[msg.data.length - 32] ^ varg0) * (msg.data[msg.data.length - 32] < varg0) | !(v2 >> 240 & 0x8000)) {
        v5 = v6 = this;
        if (v2 >> 240 & 0x4000) {
            v5 = v7 = MEM[v4] >> 96;
            v3 = v8 = MEM[64] + 22;
        }
        if (v2 >> 240 & 0x2000) {
            v9 = v10 = MEM[v3] >> 128;
            v3 = v11 = v3 + 16;
        }
        if (v2 >> 240 & 0x1800) {
            v3 = v12 = v3 + 20;
            if (v2 >> 240 & 0x400) {
                v5 = v13 = MEM[v12] >> 96;
                v3 = v14 = v3 + 40;
            }
            if (0 == v2 >> 240 & 0x1000) {
                MEM[v1] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                MEM[v1 + 4] = v5;
                MEM[v1 + 36] = varg0 ^ (msg.data[msg.data.length - 32] ^ varg0) * (msg.data[msg.data.length - 32] < varg0);
                v15 = (MEM[v3] >> 96).call(MEM[v2266:v2266 + 68], MEM[0:32]).gas(msg.gas);
                require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v15, TransferFailed());
            } else {
                MEM[v1] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                MEM[v1 + 4] = v5;
                MEM[v1 + 36] = varg0 ^ (msg.data[msg.data.length - 32] ^ varg0) * (msg.data[msg.data.length - 32] < varg0);
                v16 = (MEM[v3] >> 96).call(MEM[v2266:v2266 + 68], MEM[0:32]).gas(msg.gas);
                if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v16)) {
                    MEM[v1 + 36] = 0;
                    v17 = (MEM[v3] >> 96).call(MEM[v2266:v2266 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v17, ApproveFailed());
                    MEM[v1 + 36] = varg0 ^ (msg.data[msg.data.length - 32] ^ varg0) * (msg.data[msg.data.length - 32] < varg0);
                    v18 = (MEM[v3] >> 96).call(MEM[v2266:v2266 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v18, ApproveFailed());
                }
            }
        }
        if (v2 >> 240 & 0x200) {
            v9 = v19 = MEM[v3];
            v3 = v20 = v3 + 32;
        }
        if (0 != v2 >> 247 & 0x3) {
            if (1 == v2 >> 247 & 0x3) {
                MEM[v1] = (varg0 > msg.data[msg.data.length - 32]) * (varg0 ^ msg.data[msg.data.length - 32]) ^ varg0;
                v0 = v21 = 32 + v1;
            } else {
                v3 = v22 = v3 + (v2 >> 247 & 0x3);
                if (v22 + (MEM[v3] >> uint8.max + 1 - (v2 >> 244 & 0x18)) + 32 > v1) {
                    MEM[v22] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                    revert(v22, 4);
                } else {
                    MEM[v22 + (MEM[v3] >> uint8.max + 1 - (v2 >> 244 & 0x18))] = varg0 ^ (msg.data[msg.data.length - 32] ^ varg0) * (msg.data[msg.data.length - 32] < varg0);
                }
            }
        }
        if (v2 >> 240 & 0x40) {
            v9 = v23 = (varg0 ^ (msg.data[msg.data.length - 32] ^ varg0) * (msg.data[msg.data.length - 32] < varg0)) + v9;
        }
        if (v3 > v0) {
            MEM[v3] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
            revert(v3, 4);
        } else if (v9 > this.balance) {
            MEM[v3] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(v3, 4);
        } else {
            v24 = v5.call(MEM[vb398_0x0:vb398_0x0 + v249f_0x0 - vb398_0x0], MEM[vb398_0x0:vb398_0x0 + uint8.max + 1]).value(v9).gas(msg.gas);
            if (!v24) {
                if (v2 >> 240 & 0x20) {
                    RETURNDATACOPY(v3, 0, RETURNDATASIZE());
                    revert(v3, RETURNDATASIZE());
                }
            } else if (1 == v24) {
                if (0 == RETURNDATASIZE() * !(v2 >> 240 & 0x1)) {
                    v9 = v25 = varg0 ^ (msg.data[msg.data.length - 32] ^ varg0) * (msg.data[msg.data.length - 32] < varg0);
                } else if ((v2 >> 236 & 0xe0) + 32 > RETURNDATASIZE()) {
                    MEM[v3] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                    revert(v3, 4);
                } else {
                    v9 = v26 = MEM[v3 + (v2 >> 236 & 0xe0)];
                    v9 = v27 = 1;
                    if (v2 >> 240 & 0x10) {
                        v9 = v28 = 0 - v26;
                    }
                }
            }
            if (0x200 & v2 >> 240) {
                if (!v9) {
                    MEM[v3] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                    revert(v3, 4);
                } else if (v9 < v9) {
                    MEM[v3] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                    MEM[v3 + 4] = v9;
                    revert(v3, 36);
                }
            }
        }
    }
    v29 = v30 = msg.data[msg.data.length - 32] > varg0;
    if (v30) {
        v29 = v31 = varg1 >> 232 < msg.data.length - 71;
    }
    if (v29) {
        v32 = v33 = msg.data[msg.data.length - 32] - varg0;
        v32 = v34 = 0;
        v35 = v36 = 0;
        CALLDATACOPY(MEM[64], 39 + (varg1 >> 232), msg.data.length - (varg1 >> 232) - 71);
        v37 = v38 = MEM[64] + (msg.data.length - (varg1 >> 232) - 71);
        v39 = v40 = MEM[64] + 2;
        if (v33 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
            v41 = v42 = this;
            if (MEM[MEM[64]] >> 240 & 0x4000) {
                v41 = v43 = MEM[v40] >> 96;
                v39 = v44 = MEM[64] + 22;
            }
            v45 = v46 = 0;
            if (MEM[MEM[64]] >> 240 & 0x2000) {
                v45 = v47 = MEM[v39] >> 128;
                v39 = v48 = v39 + 16;
            }
            if (MEM[MEM[64]] >> 240 & 0x1800) {
                v39 = v49 = v39 + 20;
                if (MEM[MEM[64]] >> 240 & 0x400) {
                    v41 = v50 = MEM[v49] >> 96;
                    v39 = v51 = v39 + 40;
                }
                if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                    MEM[v38] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v38 + 4] = v41;
                    MEM[v38 + 36] = v33;
                    v52 = (MEM[v39] >> 96).call(MEM[v4e1eV0x2315:v4e1eV0x2315 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v52, TransferFailed());
                } else {
                    MEM[v38] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v38 + 4] = v41;
                    MEM[v38 + 36] = v33;
                    v53 = (MEM[v39] >> 96).call(MEM[v4e1eV0x2315:v4e1eV0x2315 + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v53)) {
                        MEM[v38 + 36] = 0;
                        v54 = (MEM[v39] >> 96).call(MEM[v4e1eV0x2315:v4e1eV0x2315 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v54, ApproveFailed());
                        MEM[v38 + 36] = v33;
                        v55 = (MEM[v39] >> 96).call(MEM[v4e1eV0x2315:v4e1eV0x2315 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v55, ApproveFailed());
                    }
                }
            }
            v56 = v57 = 0;
            if (MEM[MEM[64]] >> 240 & 0x200) {
                v56 = v58 = MEM[v39];
                v39 = v59 = v39 + 32;
            }
            if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                    MEM[v38] = v33;
                    v37 = v60 = 32 + v38;
                } else {
                    v39 = v61 = v39 + (MEM[MEM[64]] >> 247 & 0x3);
                    if (v61 + (MEM[v39] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v38) {
                        MEM[v61] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                        revert(v61, 4);
                    } else {
                        MEM[v61 + (MEM[v39] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v33;
                    }
                }
            }
            if (MEM[MEM[64]] >> 240 & 0x40) {
                v45 = v62 = v45 + v33;
            }
            if (v39 > v37) {
                MEM[v39] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                revert(v39, 4);
            } else if (v45 > this.balance) {
                MEM[v39] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                revert(v39, 4);
            } else {
                v63 = v41.call(MEM[v4f54_0x2V0x2315:v4f54_0x2V0x2315 + v4ec3_0x0V0x2315 - v4f54_0x2V0x2315], MEM[v4f54_0x2V0x2315:v4f54_0x2V0x2315 + uint8.max + 1]).value(v45).gas(msg.gas);
                if (!v63) {
                    if (0x20 & MEM[MEM[64]] >> 240) {
                        RETURNDATACOPY(v39, 0, RETURNDATASIZE());
                        revert(v39, RETURNDATASIZE());
                    }
                } else if (1 == v63) {
                    if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                        if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                            MEM[v39] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                            revert(v39, 4);
                        } else {
                            v32 = MEM[v39 + (0xe0 & MEM[MEM[64]] >> 236)];
                            v35 = 1;
                            if (MEM[MEM[64]] >> 240 & 0x10) {
                                v32 = v64 = 0 - v32;
                            }
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    if (!v35) {
                        MEM[v39] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                        revert(v39, 4);
                    } else if (v32 < v56) {
                        MEM[v39] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                        MEM[v39 + 4] = v32;
                        revert(v39, 36);
                    }
                }
            }
        }
        return v9;
    } else {
        return v9;
    }
}

function 0x7904d91b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (msg.data.length == 36) {
        v0 = v1 = this;
    } else if (56 == msg.data.length) {
        v0 = v2 = varg0 >> 96;
    } else if (44 == msg.data.length) {
        v0 = v3 = this;
        v0 = v4 = varg0 >> 192;
    } else if (64 == msg.data.length) {
        v0 = v5 = varg0 >> 96;
        v0 = v6 = varg2 >> 192;
    }
    v7 = v0 / 10 ** 12;
    v8 = v9 = v7 * 10 ** 12;
    if (v0) {
        v8 = v10 = v7 * v0 * 10 ** 12 / 10 ** 18 + v9;
    }
    v11 = 0x5126(0xdc035d45d973e3ec169d2276ddab16f1e407384f, 0xa188eec8f81263234da3622a406892f3d630f98c, v8);
    if (!v11) {
        v12 = 0x518a(0xdc035d45d973e3ec169d2276ddab16f1e407384f, 0xa188eec8f81263234da3622a406892f3d630f98c);
        v13 = v14 = !v12;
        if (bool(v12)) {
            v15 = 0x5126(0xdc035d45d973e3ec169d2276ddab16f1e407384f, 0xa188eec8f81263234da3622a406892f3d630f98c, v8);
            v13 = v16 = !v15;
        }
        require(!v13, ForceApproveFailed());
    }
    v17, /* uint256 */ v18 = 0xa188eec8f81263234da3622a406892f3d630f98c.buyGem(v0, v7).gas(msg.gas);
    require(v17, MEM[64], RETURNDATASIZE());
    return v7;
}

function 0xfd53121f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (msg.data.length == 36) {
        v0 = v1 = this;
    } else if (56 == msg.data.length) {
        v0 = v2 = varg0 >> 96;
    } else if (44 == msg.data.length) {
        v0 = v3 = this;
        v0 = v4 = varg0 >> 192;
    } else if (64 == msg.data.length) {
        v0 = v5 = varg0 >> 96;
        v0 = v6 = varg2 >> 192;
    }
    v7 = v8 = v0 * 10 ** 12;
    if (v0) {
        v7 = v9 = v8 - v0 * v0 / 10 ** 18;
    }
    v10 = 0x5126(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, v0);
    if (!v10) {
        v11 = 0x518a(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042);
        v12 = v13 = !v11;
        if (bool(v11)) {
            v14 = 0x5126(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, v0);
            v12 = v15 = !v14;
        }
        require(!v12, ForceApproveFailed());
    }
    v16, /* uint256 */ v17 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.sellGem(v0, v0).gas(msg.gas);
    require(v16, MEM[64], RETURNDATASIZE());
    return v7;
}

function 0x773e7756(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    v0 = _SafeMul(varg5, varg2 >> 240);
    v1 = _SafeMul(varg5, varg4 >> 240);
    v2 = _SafeAdd(v0 / 0x186a0, v1 / 0x186a0);
    v3 = _SafeSub(varg5, v2);
    if (varg0 >> 96) {
        0x4696(varg0 >> 96, varg1 >> 96, v0 / 0x186a0);
        0x4696(varg0 >> 96, varg3 >> 96, v1 / 0x186a0);
        return v3;
    } else {
        v4, /* uint256 */ v5 = (varg1 >> 96).call().value(v0 / 0x186a0).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v6 = v7 = new bytes[](RETURNDATASIZE());
            require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
            v5 = v7.data;
            RETURNDATACOPY(v5, 0, RETURNDATASIZE());
        }
        require(v4, ETHTransferFailed());
        v8, /* uint256 */ v9 = (varg3 >> 96).call().value(v1 / 0x186a0).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v10 = v11 = new bytes[](RETURNDATASIZE());
            require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
            v9 = v11.data;
            RETURNDATACOPY(v9, 0, RETURNDATASIZE());
        }
        require(v8, ETHTransferFailed());
        return v3;
    }
}

function chargeFee(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    v0 = _SafeSub(varg3, varg2);
    if (varg0 >> 96) {
        0x4696(varg0 >> 96, varg1 >> 96, varg2);
        return v0;
    } else {
        v1, /* uint256 */ v2 = (varg1 >> 96).call().value(varg2).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = v4 = new bytes[](RETURNDATASIZE());
            require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
            v2 = v4.data;
            RETURNDATACOPY(v2, 0, RETURNDATASIZE());
        }
        require(v1, ETHTransferFailed());
        return v0;
    }
}

function 0x7225b0d0(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    v0 = _SafeAdd(varg2, varg4);
    v1 = _SafeSub(varg5, v0);
    if (varg0 >> 96) {
        0x4696(varg0 >> 96, varg1 >> 96, varg2);
        0x4696(varg0 >> 96, varg3 >> 96, varg4);
        return v1;
    } else {
        v2, /* uint256 */ v3 = (varg1 >> 96).call().value(varg2).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v4 = v5 = new bytes[](RETURNDATASIZE());
            require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
            v3 = v5.data;
            RETURNDATACOPY(v3, 0, RETURNDATASIZE());
        }
        require(v2, ETHTransferFailed());
        v6, /* uint256 */ v7 = (varg3 >> 96).call().value(varg4).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v8 = v9 = new bytes[](RETURNDATASIZE());
            require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
            v7 = v9.data;
            RETURNDATACOPY(v7, 0, RETURNDATASIZE());
        }
        require(v6, ETHTransferFailed());
        return v1;
    }
}

function 0x6f5ec5ce(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (!(varg0 >> 96)) {
        v0 = v1 = this.balance;
    } else {
        v2 = (varg0 >> 96).balanceOf(this).gas(msg.gas);
        require(v2, MEM[64], RETURNDATASIZE());
        require(!(RETURNDATASIZE() - 32));
        v0 = v3 = MEM[0];
    }
    v4, v5 = 0x47cc();
    if (!(varg0 >> 96)) {
        v6 = v7 = this.balance;
    } else {
        v8 = (varg0 >> 96).balanceOf(this).gas(msg.gas);
        require(v8, MEM[64], RETURNDATASIZE());
        require(!(RETURNDATASIZE() - 32));
        v6 = v9 = MEM[0];
    }
    v10 = _SafeSub(v6, v0);
    return v10;
}

function tokenTransfer(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    0x4696(varg0 >> 96, varg1 >> 96, varg2);
    return varg2;
}

function ethBalanceOf( varg0) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = varg0 >> 96;
    if (!v1) {
        v0 = v2 = this;
    }
    v3 = v4 = v0.balance;
    if (this == v0) {
        if (v4) {
            v3 = uint256.max + v4;
        }
        return v3;
    } else {
        return v4;
    }
}

function swapUniV2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 29;
    v2 = byte(varg0, 0x0);
    v3 = v4 = this;
    if (v2 & 0x20) {
        v0 = v5 = 49;
        v3 = v6 = varg3 >> 96;
    }
    if (0x10 & v2) {
        v7 = v8 = msg.data[v0];
        v0 = v9 = 32 + v0;
    }
    v10 = v11 = msg.data[v0];
    v12 = (varg2 >> 96).getReserves().gas(msg.gas);
    require(v12, MEM[64], RETURNDATASIZE());
    if (v2 & 0x8) {
        v13 = (v11 >> 96).getReserves(varg2 >> 96).gas(msg.gas);
        require(v13, MEM[64], RETURNDATASIZE());
        v10 = v14 = MEM[0] - MEM[!(v2 >> 7) << 5];
    }
    v15 = v16 = 1000;
    if (varg1 >> 224 > v16) {
        v15 = v17 = 10 ** 9;
    }
    v18 = (v15 - (varg1 >> 224)) * v10 * MEM[v2 >> 2 & 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] / (MEM[!(v2 >> 7) << 5] * v15 + (v15 - (varg1 >> 224)) * v10);
    v19 = v20 = MEM[64];
    require(v18 >= v7, ReturnAmountIsNotEnough(v18, v7));
    MEM[v20] = 0x902f1ac022c0d9f6d9a640a70a0823100000000000000000000000000000000;
    if (1 == 0x1 & v2 >> 6) {
        v19 = v21 = v20 + 8;
    } else if (!(0x1 & v2 >> 6)) {
        v19 = v22 = v20 + 4;
    }
    MEM[v19 + 4] = v18 * !(v2 >> 7);
    MEM[v19 + 36] = v18 * (v2 >> 7);
    MEM[v19 + 68] = v3;
    MEM[v19 + 100] = 128;
    MEM[v19 + 132] = 0;
    v23 = (varg2 >> 96).call(MEM[vb7d6_0x2:vb7d6_0x2 + 164 - 0x40 & v2f70], MEM[0:0]).gas(msg.gas);
    if (!v23) {
        RETURNDATACOPY(v19, 0, RETURNDATASIZE());
        revert(v19, RETURNDATASIZE());
    } else {
        return v18;
    }
}

function version() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 1;
}

function swapSolidly(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = byte(varg0, 0x0);
    v1 = v2 = 29;
    v3 = v4 = this;
    if (0x40 & v0) {
        v3 = v5 = varg1 >> 96;
        v1 = v6 = 49;
    }
    if (0x20 & v0) {
        v7 = v8 = msg.data[v1];
        v1 = v9 = v1 + 32;
    }
    if (v0 >> 4 & 0x1) {
        v7 = v10 = 10 ** (msg.data[v1] >> 248);
        v7 = v11 = 10 ** uint8(msg.data[v1] >> 240);
        v1 = v12 = v1 + 2;
    }
    v13 = v14 = msg.data[v1];
    v15 = address(varg0 >> 56).getReserves().gas(msg.gas);
    require(v15, MEM[64], RETURNDATASIZE());
    v7 = v16 = MEM[0];
    v7 = v17 = MEM[32];
    if (v0 & 0x8) {
        v18 = (v14 >> 96).getReserves(address(varg0 >> 56)).gas(msg.gas);
        require(v18, MEM[64], RETURNDATASIZE());
        if (1 != v0 >> 7) {
            if (v0 >> 7) {
            }
        }
        v13 = v19 = MEM[0] - v7;
    }
    v20 = v21 = v13 - v13 * uint32(varg0 >> 216) / 10 ** 6;
    if (1 == v0 >> 4 & 0x1) {
        v7 = v22 = v16 * 10 ** 18 / v7;
        v7 = v23 = v17 * 10 ** 18 / v7;
        if (1 != v0 >> 7) {
            if (v0 >> 7) {
            }
        }
        if (1 == v0 >> 7) {
            v20 = v24 = v21 * 10 ** 18 / v7;
        } else if (!(v0 >> 7)) {
            v20 = v25 = 10 ** 18 * v21 / v7;
        }
        v26 = v20 + v7;
        while (v7 < uint8.max) {
            v27 = v26 * (v7 * v7 / 10 ** 18 * v7 / 10 ** 18) / 10 ** 18 + v26 * v26 / 10 ** 18 * v26 / 10 ** 18 * v7 / 10 ** 18;
            if (1 == v27 < v22 * v23 / 10 ** 18 * (v22 * v22 / 10 ** 18 + v23 * v23 / 10 ** 18) / 10 ** 18) {
                v7 += (v22 * v23 / 10 ** 18 * (v22 * v22 / 10 ** 18 + v23 * v23 / 10 ** 18) / 10 ** 18 - v27) * 10 ** 18 / (v7 * v7 / 10 ** 18 * v26 * 3 / 10 ** 18 + v26 * v26 / 10 ** 18 * v26 / 10 ** 18);
            } else if (v27 >= v22 * v23 / 10 ** 18 * (v22 * v22 / 10 ** 18 + v23 * v23 / 10 ** 18) / 10 ** 18) {
                v7 = v7 - (v27 - v22 * v23 / 10 ** 18 * (v22 * v22 / 10 ** 18 + v23 * v23 / 10 ** 18) / 10 ** 18) * 10 ** 18 / (v7 * v7 / 10 ** 18 * v26 * 3 / 10 ** 18 + v26 * v26 / 10 ** 18 * v26 / 10 ** 18);
            }
            v28 = v7 > v7;
            if (1 == v28) {
                v29 = v7 - v7 > 1;
                if (1 != v29) {
                    if (v29) {
                    }
                }
            } else if (v7 <= v7) {
                v30 = v7 - v7 > 1;
                if (1 != v30) {
                    if (v30) {
                    }
                }
            }
            v31 = v32 = 1;
            v7 = v7 + v31;
            continue;
            break;
            v31 = v33 = 1;
            // Unknown jump to Block 0x349a. Refer to 3-address code (TAC);
        }
        if (1 == v0 >> 7) {
            v7 = v34 = (v7 - v7) * v7 / 10 ** 18;
        } else if (!(v0 >> 7)) {
            v7 = v35 = v7 * (v7 - v7) / 10 ** 18;
        }
    } else if (!(v0 >> 4 & 0x1)) {
        if (1 != v0 >> 7) {
            if (v0 >> 7) {
            }
        }
        v7 = v36 = v21 * v7 / (v7 + v21);
    }
    require(v7 >= v7, ReturnAmountIsNotEnough(v7, v7));
    v37, /* uint256 */ v38 = address(varg0 >> 56).getReserves(v7 * !(v0 >> 7), v7 * (v0 >> 7), v3, 128, 0).gas(msg.gas);
    require(v37, MEM[64] + 4, RETURNDATASIZE());
    return v7;
}

function execute(address varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = varg1 >> 16;
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = 0;
    while (v0) {
        v4 = v6 = uint24(v0);
        v2 = v7 = 0;
        v8 = v9 = 0;
        CALLDATACOPY(MEM[64], 66 + v4, v6 - v4);
        v10 = v11 = MEM[64] + (v6 - v4);
        v12 = v13 = MEM[64] + 2;
        if (v2 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
            v14 = v15 = this;
            if (MEM[MEM[64]] >> 240 & 0x4000) {
                v14 = v16 = MEM[v13] >> 96;
                v12 = v17 = MEM[64] + 22;
            }
            v18 = v19 = 0;
            if (MEM[MEM[64]] >> 240 & 0x2000) {
                v18 = v20 = MEM[v12] >> 128;
                v12 = v21 = v12 + 16;
            }
            if (MEM[MEM[64]] >> 240 & 0x1800) {
                v12 = v22 = v12 + 20;
                if (MEM[MEM[64]] >> 240 & 0x400) {
                    v14 = v23 = MEM[v22] >> 96;
                    v12 = v24 = v12 + 40;
                }
                if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                    MEM[v11] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v25 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x3682:v4e1eV0x462dV0x3682 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                } else {
                    MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v26 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x3682:v4e1eV0x462dV0x3682 + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                        MEM[v11 + 36] = 0;
                        v27 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x3682:v4e1eV0x462dV0x3682 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                        MEM[v11 + 36] = v2;
                        v28 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x3682:v4e1eV0x462dV0x3682 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v28, ApproveFailed());
                    }
                }
            }
            v29 = v30 = 0;
            if (MEM[MEM[64]] >> 240 & 0x200) {
                v29 = v31 = MEM[v12];
                v12 = v32 = v12 + 32;
            }
            if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                    MEM[v11] = v2;
                    v10 = v33 = 32 + v11;
                } else {
                    v12 = v34 = v12 + (MEM[MEM[64]] >> 247 & 0x3);
                    if (v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v11) {
                        MEM[v34] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                        revert(v34, 4);
                    } else {
                        MEM[v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v2;
                    }
                }
            }
            if (MEM[MEM[64]] >> 240 & 0x40) {
                v18 = v35 = v18 + v2;
            }
            if (v12 > v10) {
                MEM[v12] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                revert(v12, 4);
            } else {
                v36 = this.balance;
                if (v18 > v36) {
                    MEM[v12] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                    revert(v12, 4);
                } else {
                    v37 = v14.call(MEM[v4f54_0x2V0x462dV0x3682:v4f54_0x2V0x462dV0x3682 + v4ec3_0x0V0x462dV0x3682 - v4f54_0x2V0x462dV0x3682], MEM[v4f54_0x2V0x462dV0x3682:v4f54_0x2V0x462dV0x3682 + uint8.max + 1]).value(v18).gas(msg.gas);
                    if (!v37) {
                        if (0x20 & MEM[MEM[64]] >> 240) {
                            RETURNDATACOPY(v12, 0, RETURNDATASIZE());
                            revert(v12, RETURNDATASIZE());
                        }
                    } else if (1 == v37) {
                        if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                            if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                MEM[v12] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                revert(v12, 4);
                            } else {
                                v2 = MEM[v12 + (0xe0 & MEM[MEM[64]] >> 236)];
                                v8 = 1;
                                if (MEM[MEM[64]] >> 240 & 0x10) {
                                    v2 = v38 = 0 - v2;
                                }
                            }
                        }
                    }
                    if (MEM[MEM[64]] >> 240 & 0x200) {
                        if (!v8) {
                            MEM[v12] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                            revert(v12, 4);
                        } else if (v2 < v29) {
                            MEM[v12] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                            MEM[v12 + 4] = v2;
                            revert(v12, 36);
                        }
                    }
                }
            }
        }
        v0 = v0 >> 24;
    }
    return v2;
}

function 0x4b02d2f6() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(block.timestamp % 12 - 11));
    CALLDATACOPY(0, 4, 32);
    return MEM[0:32];
}

function 0x48c95033() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = new uint256[](msg.data.length - 4);
    CALLDATACOPY(v0.data, 4, msg.data.length - 4);
    v1 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(v0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    return MEM[MEM[64] + 64];
}

function 0x454c96c2(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = new uint256[](varg2 >> 192);
    while (v1 < (varg2 >> 192) * 48) {
        v1 = v1 + (msg.data[v1 + 84] >> 128);
        v1 += 48;
    }
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = v0.data;
    while (v1 < (varg2 >> 192) * 48) {
        MEM[v4] = msg.data[v1 + 52];
        v6 = v2 * (msg.data[v1 + 84] >> 128) / v1;
        MEM[v4 + 32] = v6;
        v4 = v4 + 64;
        v2 = v2 - v6;
        v1 = v1 - (msg.data[v1 + 84] >> 128);
        v1 += 48;
    }
    v7, /* uint256 */ v8 = 0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1.tradeBySourceAmount(varg0 >> 96, varg1 >> 96, v0, uint40.max, 1).value(msg.value).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    return v8;
}

function d3MMSwapCallBack(address token, uint256 value, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    0x4696(token, msg.sender, value);
    return ;
}

function 0x3dd5cfd1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (msg.data.length == 36) {
        v0 = v1 = this;
    } else if (56 == msg.data.length) {
        v0 = v2 = varg0 >> 96;
    } else if (44 == msg.data.length) {
        v0 = v3 = this;
        v0 = v4 = varg0 >> 192;
    } else if (64 == msg.data.length) {
        v0 = v5 = varg0 >> 96;
        v0 = v6 = varg2 >> 192;
    }
    v7 = v0 / 10 ** 12;
    v8 = v9 = v7 * 10 ** 12;
    if (v0) {
        v8 = v10 = v7 * v0 * 10 ** 12 / 10 ** 18 + v9;
    }
    v11 = 0x5126(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, v8);
    if (!v11) {
        v12 = 0x518a(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042);
        v13 = v14 = !v12;
        if (bool(v12)) {
            v15 = 0x5126(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, v8);
            v13 = v16 = !v15;
        }
        require(!v13, ForceApproveFailed());
    }
    v17, /* uint256 */ v18 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.buyGem(v0, v7).gas(msg.gas);
    require(v17, MEM[64], RETURNDATASIZE());
    return v7;
}

function 0x26f079f1(address varg0, address varg1, address varg2, address varg3, uint256 varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    require(varg6 <= uint64.max);
    require(4 + varg6 + 31 < msg.data.length);
    require(varg6.length <= uint64.max);
    v0 = varg6.data;
    require(4 + varg6 + varg6.length + 32 <= msg.data.length);
    0x4650(varg2, 0x4a055aa172c98ec32de118b9b5b6ac8b4099a580, varg4);
    require((address(0x4a055aa172c98ec32de118b9b5b6ac8b4099a580)).code.size);
    v1, /* uint256 */ v2 = address(0x4a055aa172c98ec32de118b9b5b6ac8b4099a580).push(varg0, address(0xdfd05fe230bfe7b212878414270c72c8345506fa), varg5, varg2, varg4).gas(msg.gas);
    require(v1, v2, RETURNDATASIZE());
    if (v1) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        exit;
    } else {
        return ;
    }
}

function 0x26678dcd(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    if (0 == !(varg0 >> 96)) {
        0x4696(varg0 >> 96, varg1 >> 96, varg2);
        return varg2;
    } else {
        v0, /* uint256 */ v1 = (varg1 >> 96).call().value(varg2).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v2 = v3 = new bytes[](RETURNDATASIZE());
            require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
            v1 = v3.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        require(v0, ETHTransferFailed());
        return varg2;
    }
}

function callBytes(address _receiver, bytes _data) public payable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = _data >> 16;
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = 0;
    while (v0) {
        v4 = v6 = uint24(v0);
        v2 = v7 = 0;
        v8 = v9 = 0;
        CALLDATACOPY(MEM[64], 66 + v4, v6 - v4);
        v10 = v11 = MEM[64] + (v6 - v4);
        v12 = v13 = MEM[64] + 2;
        if (v2 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
            v14 = v15 = this;
            if (MEM[MEM[64]] >> 240 & 0x4000) {
                v14 = v16 = MEM[v13] >> 96;
                v12 = v17 = MEM[64] + 22;
            }
            v18 = v19 = 0;
            if (MEM[MEM[64]] >> 240 & 0x2000) {
                v18 = v20 = MEM[v12] >> 128;
                v12 = v21 = v12 + 16;
            }
            if (MEM[MEM[64]] >> 240 & 0x1800) {
                v12 = v22 = v12 + 20;
                if (MEM[MEM[64]] >> 240 & 0x400) {
                    v14 = v23 = MEM[v22] >> 96;
                    v12 = v24 = v12 + 40;
                }
                if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                    MEM[v11] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v25 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x3e3e:v4e1eV0x462dV0x3e3e + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                } else {
                    MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v26 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x3e3e:v4e1eV0x462dV0x3e3e + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                        MEM[v11 + 36] = 0;
                        v27 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x3e3e:v4e1eV0x462dV0x3e3e + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                        MEM[v11 + 36] = v2;
                        v28 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x3e3e:v4e1eV0x462dV0x3e3e + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v28, ApproveFailed());
                    }
                }
            }
            v29 = v30 = 0;
            if (MEM[MEM[64]] >> 240 & 0x200) {
                v29 = v31 = MEM[v12];
                v12 = v32 = v12 + 32;
            }
            if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                    MEM[v11] = v2;
                    v10 = v33 = 32 + v11;
                } else {
                    v12 = v34 = v12 + (MEM[MEM[64]] >> 247 & 0x3);
                    if (v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v11) {
                        MEM[v34] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                        revert(v34, 4);
                    } else {
                        MEM[v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v2;
                    }
                }
            }
            if (MEM[MEM[64]] >> 240 & 0x40) {
                v18 = v35 = v18 + v2;
            }
            if (v12 > v10) {
                MEM[v12] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                revert(v12, 4);
            } else {
                v36 = this.balance;
                if (v18 > v36) {
                    MEM[v12] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                    revert(v12, 4);
                } else {
                    v37 = v14.call(MEM[v4f54_0x2V0x462dV0x3e3e:v4f54_0x2V0x462dV0x3e3e + v4ec3_0x0V0x462dV0x3e3e - v4f54_0x2V0x462dV0x3e3e], MEM[v4f54_0x2V0x462dV0x3e3e:v4f54_0x2V0x462dV0x3e3e + uint8.max + 1]).value(v18).gas(msg.gas);
                    if (!v37) {
                        if (0x20 & MEM[MEM[64]] >> 240) {
                            RETURNDATACOPY(v12, 0, RETURNDATASIZE());
                            revert(v12, RETURNDATASIZE());
                        }
                    } else if (1 == v37) {
                        if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                            if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                MEM[v12] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                revert(v12, 4);
                            } else {
                                v2 = MEM[v12 + (0xe0 & MEM[MEM[64]] >> 236)];
                                v8 = 1;
                                if (MEM[MEM[64]] >> 240 & 0x10) {
                                    v2 = v38 = 0 - v2;
                                }
                            }
                        }
                    }
                    if (MEM[MEM[64]] >> 240 & 0x200) {
                        if (!v8) {
                            MEM[v12] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                            revert(v12, 4);
                        } else if (v2 < v29) {
                            MEM[v12] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                            MEM[v12 + 4] = v2;
                            revert(v12, 36);
                        }
                    }
                }
            }
        }
        v0 = v0 >> 24;
    }
    exit;
}

function 0x26367361(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 0;
    if (!((varg1 ^ 0x27a9b42400000000000000000000000000000000000000000000000000000000) >> 224)) {
        v0 = v2 = msg.data[msg.data.length - 224];
    }
    CALLDATACOPY(MEM[64], 24, msg.data.length - 24);
    MEM[MEM[64] + msg.data.length - 24] = msg.data.length + 4;
    MEM[MEM[64] + msg.data.length + 39] = 0x531696e63680000000000000000000000000000000000000000000000000000;
    v3, /* uint256 */ v4 = (varg0 >> 96).call(MEM[MEM[64]:MEM[64] + msg.data.length + 45], MEM[MEM[64]:MEM[64]]).value(v0).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    return msg.data[msg.data.length - 192];
}

function tokenApprove(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    0x4650(varg0 >> 96, varg1 >> 96, varg2);
    return varg2;
}

function 0x163af3a2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 0;
    if (msg.data.length == 36) {
        v0 = v2 = this;
    } else if (56 == msg.data.length) {
        v0 = v3 = varg0 >> 96;
    } else if (44 == msg.data.length) {
        v0 = v4 = this;
        v0 = v5 = varg0 >> 192;
    } else if (64 == msg.data.length) {
        v0 = v6 = varg0 >> 96;
        v0 = v7 = varg2 >> 192;
    }
    v8 = v9 = v0 * 10 ** 12;
    if (v0) {
        v8 = v10 = v9 - v0 * v0 / 10 ** 18;
    }
    v11 = 0x5126(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa188eec8f81263234da3622a406892f3d630f98c, v0);
    if (!v11) {
        v12 = 0x518a(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa188eec8f81263234da3622a406892f3d630f98c);
        v13 = v14 = !v12;
        if (bool(v12)) {
            v15 = 0x5126(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa188eec8f81263234da3622a406892f3d630f98c, v0);
            v13 = v16 = !v15;
        }
        require(!v13, ForceApproveFailed());
    }
    v17, /* uint256 */ v18 = 0xa188eec8f81263234da3622a406892f3d630f98c.sellGem(v0, v0).gas(msg.gas);
    require(v17, MEM[64], RETURNDATASIZE());
    return v8;
}

function 0x10c3405f(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    v0 = v1 = varg1 >> 16;
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = 0;
    while (v0) {
        v4 = v6 = uint24(v0);
        v2 = v7 = 0;
        v8 = v9 = 0;
        CALLDATACOPY(MEM[64], 66 + v4, v6 - v4);
        v10 = v11 = MEM[64] + (v6 - v4);
        v12 = v13 = MEM[64] + 2;
        if (v2 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
            v14 = v15 = this;
            if (MEM[MEM[64]] >> 240 & 0x4000) {
                v14 = v16 = MEM[v13] >> 96;
                v12 = v17 = MEM[64] + 22;
            }
            v18 = v19 = 0;
            if (MEM[MEM[64]] >> 240 & 0x2000) {
                v18 = v20 = MEM[v12] >> 128;
                v12 = v21 = v12 + 16;
            }
            if (MEM[MEM[64]] >> 240 & 0x1800) {
                v12 = v22 = v12 + 20;
                if (MEM[MEM[64]] >> 240 & 0x400) {
                    v14 = v23 = MEM[v22] >> 96;
                    v12 = v24 = v12 + 40;
                }
                if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                    MEM[v11] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v25 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x4241:v4e1eV0x462dV0x4241 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                } else {
                    MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v26 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x4241:v4e1eV0x462dV0x4241 + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                        MEM[v11 + 36] = 0;
                        v27 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x4241:v4e1eV0x462dV0x4241 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                        MEM[v11 + 36] = v2;
                        v28 = (MEM[v12] >> 96).call(MEM[v4e1eV0x462dV0x4241:v4e1eV0x462dV0x4241 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v28, ApproveFailed());
                    }
                }
            }
            v29 = v30 = 0;
            if (MEM[MEM[64]] >> 240 & 0x200) {
                v29 = v31 = MEM[v12];
                v12 = v32 = v12 + 32;
            }
            if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                    MEM[v11] = v2;
                    v10 = v33 = 32 + v11;
                } else {
                    v12 = v34 = v12 + (MEM[MEM[64]] >> 247 & 0x3);
                    if (v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v11) {
                        MEM[v34] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                        revert(v34, 4);
                    } else {
                        MEM[v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v2;
                    }
                }
            }
            if (MEM[MEM[64]] >> 240 & 0x40) {
                v18 = v35 = v18 + v2;
            }
            if (v12 > v10) {
                MEM[v12] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                revert(v12, 4);
            } else {
                v36 = this.balance;
                if (v18 > v36) {
                    MEM[v12] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                    revert(v12, 4);
                } else {
                    v37 = v14.call(MEM[v4f54_0x2V0x462dV0x4241:v4f54_0x2V0x462dV0x4241 + v4ec3_0x0V0x462dV0x4241 - v4f54_0x2V0x462dV0x4241], MEM[v4f54_0x2V0x462dV0x4241:v4f54_0x2V0x462dV0x4241 + uint8.max + 1]).value(v18).gas(msg.gas);
                    if (!v37) {
                        if (0x20 & MEM[MEM[64]] >> 240) {
                            RETURNDATACOPY(v12, 0, RETURNDATASIZE());
                            revert(v12, RETURNDATASIZE());
                        }
                    } else if (1 == v37) {
                        if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                            if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                MEM[v12] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                revert(v12, 4);
                            } else {
                                v2 = MEM[v12 + (0xe0 & MEM[MEM[64]] >> 236)];
                                v8 = 1;
                                if (MEM[MEM[64]] >> 240 & 0x10) {
                                    v2 = v38 = 0 - v2;
                                }
                            }
                        }
                    }
                    if (MEM[MEM[64]] >> 240 & 0x200) {
                        if (!v8) {
                            MEM[v12] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                            revert(v12, 4);
                        } else if (v2 < v29) {
                            MEM[v12] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                            MEM[v12 + 4] = v2;
                            revert(v12, 36);
                        }
                    }
                }
            }
        }
        v0 = v0 >> 24;
    }
    require(v2 >= varg0, ReturnAmountIsNotEnough(v2, varg0));
    return v2;
}

function 0x07e5c0d2(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = varg0 >> 16;
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = 0;
    while (v0) {
        v4 = v6 = uint24(v0);
        v2 = v7 = 0;
        v8 = v9 = 0;
        CALLDATACOPY(MEM[64], 34 + v4, v6 - v4);
        v10 = v11 = MEM[64] + (v6 - v4);
        v12 = v13 = MEM[64] + 2;
        if (v2 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
            v14 = v15 = this;
            if (MEM[MEM[64]] >> 240 & 0x4000) {
                v14 = v16 = MEM[v13] >> 96;
                v12 = v17 = MEM[64] + 22;
            }
            v18 = v19 = 0;
            if (MEM[MEM[64]] >> 240 & 0x2000) {
                v18 = v20 = MEM[v12] >> 128;
                v12 = v21 = v12 + 16;
            }
            if (MEM[MEM[64]] >> 240 & 0x1800) {
                v12 = v22 = v12 + 20;
                if (MEM[MEM[64]] >> 240 & 0x400) {
                    v14 = v23 = MEM[v22] >> 96;
                    v12 = v24 = v12 + 40;
                }
                if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                    MEM[v11] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v25 = (MEM[v12] >> 96).call(MEM[v4e1eV0x45f2V0x42a8:v4e1eV0x45f2V0x42a8 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                } else {
                    MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v26 = (MEM[v12] >> 96).call(MEM[v4e1eV0x45f2V0x42a8:v4e1eV0x45f2V0x42a8 + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                        MEM[v11 + 36] = 0;
                        v27 = (MEM[v12] >> 96).call(MEM[v4e1eV0x45f2V0x42a8:v4e1eV0x45f2V0x42a8 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                        MEM[v11 + 36] = v2;
                        v28 = (MEM[v12] >> 96).call(MEM[v4e1eV0x45f2V0x42a8:v4e1eV0x45f2V0x42a8 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v28, ApproveFailed());
                    }
                }
            }
            v29 = v30 = 0;
            if (MEM[MEM[64]] >> 240 & 0x200) {
                v29 = v31 = MEM[v12];
                v12 = v32 = v12 + 32;
            }
            if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                    MEM[v11] = v2;
                    v10 = v33 = 32 + v11;
                } else {
                    v12 = v34 = v12 + (MEM[MEM[64]] >> 247 & 0x3);
                    if (v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v11) {
                        MEM[v34] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                        revert(v34, 4);
                    } else {
                        MEM[v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v2;
                    }
                }
            }
            if (MEM[MEM[64]] >> 240 & 0x40) {
                v18 = v35 = v18 + v2;
            }
            if (v12 > v10) {
                MEM[v12] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                revert(v12, 4);
            } else {
                v36 = this.balance;
                if (v18 > v36) {
                    MEM[v12] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                    revert(v12, 4);
                } else {
                    v37 = v14.call(MEM[v4f54_0x2V0x45f2V0x42a8:v4f54_0x2V0x45f2V0x42a8 + v4ec3_0x0V0x45f2V0x42a8 - v4f54_0x2V0x45f2V0x42a8], MEM[v4f54_0x2V0x45f2V0x42a8:v4f54_0x2V0x45f2V0x42a8 + uint8.max + 1]).value(v18).gas(msg.gas);
                    if (!v37) {
                        if (0x20 & MEM[MEM[64]] >> 240) {
                            RETURNDATACOPY(v12, 0, RETURNDATASIZE());
                            revert(v12, RETURNDATASIZE());
                        }
                    } else if (1 == v37) {
                        if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                            if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                MEM[v12] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                revert(v12, 4);
                            } else {
                                v2 = MEM[v12 + (0xe0 & MEM[MEM[64]] >> 236)];
                                v8 = 1;
                                if (MEM[MEM[64]] >> 240 & 0x10) {
                                    v2 = v38 = 0 - v2;
                                }
                            }
                        }
                    }
                    if (MEM[MEM[64]] >> 240 & 0x200) {
                        if (!v8) {
                            MEM[v12] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                            revert(v12, 4);
                        } else if (v2 < v29) {
                            MEM[v12] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                            MEM[v12 + 4] = v2;
                            revert(v12, 36);
                        }
                    }
                }
            }
        }
        v0 = v0 >> 24;
    }
    return v2;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x451d(uint256 varg0) private { 
    require(varg0, Panic(18)); // division by zero
    return 10 ** 36 / varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x4650(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x5126(varg0, varg1, varg2);
    if (!v0) {
        v1 = 0x518a(varg0, varg1);
        v2 = !v1;
        if (bool(v1)) {
            v3 = 0x5126(varg0, varg1, varg2);
            v2 = v4 = !v3;
        }
        require(!v2, ForceApproveFailed());
        return ;
    } else {
        return ;
    }
}

function 0x4696(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (v1) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool(varg0.code.size);
        } else {
            v0 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
    return ;
}

function 0x47cc() private { 
    v0 = v1 = msg.data[msg.data.length - 32];
    v0 = v2 = 0;
    v3 = v4 = 0;
    CALLDATACOPY(MEM[64], 24, msg.data.length - 56);
    v5 = v6 = MEM[64] + msg.data.length - 56;
    v7 = v8 = MEM[64] + 2;
    if (v1 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
        v9 = v10 = this;
        if (MEM[MEM[64]] >> 240 & 0x4000) {
            v9 = v11 = MEM[v8] >> 96;
            v7 = v12 = MEM[64] + 22;
        }
        v13 = v14 = 0;
        if (MEM[MEM[64]] >> 240 & 0x2000) {
            v13 = v15 = MEM[v7] >> 128;
            v7 = v16 = v7 + 16;
        }
        if (MEM[MEM[64]] >> 240 & 0x1800) {
            v7 = v17 = v7 + 20;
            if (MEM[MEM[64]] >> 240 & 0x400) {
                v9 = v18 = MEM[v17] >> 96;
                v7 = v19 = v7 + 40;
            }
            if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                MEM[v6] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                MEM[v6 + 4] = v9;
                MEM[v6 + 36] = v1;
                v20 = (MEM[v7] >> 96).call(MEM[v4844:v4844 + 68], MEM[0:32]).gas(msg.gas);
                require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v20, TransferFailed());
            } else {
                MEM[v6] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                MEM[v6 + 4] = v9;
                MEM[v6 + 36] = v1;
                v21 = (MEM[v7] >> 96).call(MEM[v4844:v4844 + 68], MEM[0:32]).gas(msg.gas);
                if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v21)) {
                    MEM[v6 + 36] = 0;
                    v22 = (MEM[v7] >> 96).call(MEM[v4844:v4844 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v22, ApproveFailed());
                    MEM[v6 + 36] = v1;
                    v23 = (MEM[v7] >> 96).call(MEM[v4844:v4844 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v23, ApproveFailed());
                }
            }
        }
        v24 = v25 = 0;
        if (MEM[MEM[64]] >> 240 & 0x200) {
            v24 = v26 = MEM[v7];
            v7 = v27 = v7 + 32;
        }
        if (0 != MEM[MEM[64]] >> 247 & 0x3) {
            if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                MEM[v6] = v1;
                v5 = v28 = 32 + v6;
            } else {
                v7 = v29 = v7 + (MEM[MEM[64]] >> 247 & 0x3);
                if (v29 + (MEM[v7] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v6) {
                    MEM[v29] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                    revert(v29, 4);
                } else {
                    MEM[v29 + (MEM[v7] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v1;
                }
            }
        }
        if (MEM[MEM[64]] >> 240 & 0x40) {
            v13 = v30 = v13 + v1;
        }
        if (v7 > v5) {
            MEM[v7] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
            revert(v7, 4);
        } else if (v13 > this.balance) {
            MEM[v7] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(v7, 4);
        } else {
            v31 = v9.call(MEM[vc3f0_0x2:vc3f0_0x2 + v48eb_0x0 - vc3f0_0x2], MEM[vc3f0_0x2:vc3f0_0x2 + uint8.max + 1]).value(v13).gas(msg.gas);
            if (!v31) {
                if (0x20 & MEM[MEM[64]] >> 240) {
                    RETURNDATACOPY(v7, 0, RETURNDATASIZE());
                    revert(v7, RETURNDATASIZE());
                }
            } else if (1 == v31) {
                if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                    if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                        MEM[v7] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                        revert(v7, 4);
                    } else {
                        v0 = v32 = MEM[v7 + (0xe0 & MEM[MEM[64]] >> 236)];
                        v3 = v33 = 1;
                        if (MEM[MEM[64]] >> 240 & 0x10) {
                            v0 = v34 = 0 - v32;
                        }
                    }
                }
            }
            if (MEM[MEM[64]] >> 240 & 0x200) {
                if (!v3) {
                    MEM[v7] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                    revert(v7, 4);
                } else if (v0 < v24) {
                    MEM[v7] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                    MEM[v7 + 4] = v0;
                    revert(v7, 36);
                }
            }
        }
    }
    return v3, v0;
}

function 0xfbb7cd06(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = this;
    v2 = v3 = 0xba12222222228d8ba445958a75a0704d566bf2c8;
    v4 = v5 = msg.data.length - 32;
    if (varg0 >> 248 & 0x40) {
        v4 = v6 = msg.data.length - 52;
        v2 = v7 = msg.data[v6] >> 96;
    }
    if (0x80 & varg0 >> 248) {
        v0 = v8 = msg.data[v4 - 20] >> 96;
    }
    if (bool(varg2 >> 96)) {
        0x4650(varg2 >> 96, v2, msg.data[v5]);
    }
    v9 = new uint256[](varg1);
    MEM[v9.data] = 0;
    v10 = v2.swap(v9, this, 0, v0, 0, 0, block.timestamp, v11, v11, varg2 >> 96, varg3 >> 96, msg.data[v5], 192, 0).value(!(varg2 >> 96) * msg.data[v5]).gas(msg.gas);
    if (!v10) {
        v12 = RETURNDATASIZE();
        revert(v11, v11, v11, v11, v11, v11, v11, v11, v11, varg2 >> 96, varg3 >> 96);
    } else {
        return MEM[0];
    }
}

function 0x4bf1(uint256 varg0, struct(11) varg1) private { 
    v0 = 0x451d(varg1.word0);
    v1 = 0x52da(varg1.word4, varg1.word4, v0 * varg0 / 10 ** 18, varg1.word1);
    return varg1.word4 - v1;
}

function 0x4c26(uint256 varg0, address varg1, uint256 varg2) private { 
    if (varg2) {
        v0 = v1 = !address(varg0);
        if (bool(address(varg0))) {
            v0 = v2 = address(varg0) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
        }
        if (!v0) {
            0x4696(varg0, varg1, varg2);
            return ;
        } else {
            require(this.balance >= varg2, InsufficientBalance());
            v3, /* uint256 */ v4 = varg1.call().value(varg2).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v5 = v6 = new bytes[](RETURNDATASIZE());
                require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
                v4 = v6.data;
                RETURNDATACOPY(v4, 0, RETURNDATASIZE());
            }
            require(v3, ETHTransferFailed());
            return ;
        }
    } else {
        return ;
    }
}

function 0x5126(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.approve(varg1, varg2).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            return bool(varg0.code.size);
        } else {
            return (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    } else {
        return v0;
    }
}

function 0x518a(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.approve(varg1, 0).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            return bool(varg0.code.size);
        } else {
            return (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    } else {
        return v0;
    }
}

function 0x51d1(struct(11) varg0) private { 
    require(varg0.word6 < 3, Panic(33)); // failed convertion to enum type
    if (varg0.word6) {
        require(varg0.word6 < 3, Panic(33)); // failed convertion to enum type
        if (2 - varg0.word6) {
            require(varg0.word6 < 3, Panic(33)); // failed convertion to enum type
            if (1 == varg0.word6) {
                v0 = _SafeDiv((varg0.word3 - varg0.word10) * 10 ** 18, varg0.word0);
                v1 = 0x538f(varg0.word2, varg0.word1, v0);
                return varg0.word10, v1 - varg0.word2 + varg0.word2;
            } else {
                return 0, 0;
            }
        } else {
            v2 = 0x538f(varg0.word3, varg0.word1, varg0.word0 * (varg0.word2 - varg0.word9) / 10 ** 18);
            return v2 - varg0.word3 + varg0.word3, varg0.word9;
        }
    } else {
        return varg0.word10, varg0.word9;
    }
}

function 0x52da(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg3 * varg0 / 10 ** 18 * varg0;
    v1 = _SafeDiv(v0, varg1);
    v2 = (10 ** 18 - varg3) * varg1 / 10 ** 18;
    if (v2 < v1 + varg2) {
        v3 = v4, v5 = v6, v7 = v8, v9 = v10, v11 = v12 = 0x531a(v0, 10 ** 18, 21289, v1 + varg2 - v2, 0, 10 ** 18);
    } else {
        v3 = v13, v5 = v14, v7 = v15, v9 = v16, v11 = v17 = 0x531a(v0, 10 ** 18, 21289, v2 - (v1 + varg2), 1, 10 ** 18);
    }
    if (!v7) {
        v18 = v19 = v3 - v5;
    } else {
        v18 = v20 = v5 + v3;
    }
    v21 = v22 = _SafeDiv(v18 * v9, v11 << 1);
    if (v22 * (v11 << 1) != v18 * v9) {
        v21 = 1 + v22;
    }
    return v21;
}

function 0x531a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = v1 = varg3 * varg3 + (v2 << 2) * varg0 / varg1;
    if (1 == v1 > 2) {
        v0 = (v1 >> 1) + 1;
        while (v0 < v0) {
            v0 = v0 + v1 / v0 >> 1;
        }
        return v0, varg3, varg4, varg5, v2;
    } else {
        return 1 + v1 >> 1, varg3, varg4, varg5, v2;
    }
}

function 0x5356(uint256 varg0) private { 
    if (1 == varg0 > 2) {
        varg0 = v0 = (varg0 >> 1) + 1;
        while (varg0 < varg0) {
            varg0 = varg0 + varg0 / varg0 >> 1;
        }
        return varg0;
    } else {
        return 1 + varg0 >> 1;
    }
}

function 0x538f(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x53f1((varg1 * varg2 / 10 ** 18 << 2) * 10 ** 18, varg0);
    v1 = 0x5356((v0 + 10 ** 18) * 10 ** 18);
    v2 = 0x53f1((v1 + 0xfffffffffffffffffffffffffffffffffffffffffffffffff21f494c589c0000) * 10 ** 18, varg1 << 1);
    return (10 ** 18 + v2) * varg0 / 10 ** 18;
}

function 0x53f1(uint256 varg0, uint256 varg1) private { 
    v0 = _SafeDiv(varg0, varg1);
    if (v0 * varg1 == varg0) {
        return v0;
    } else {
        return 1 + v0;
    }
}

function AlgebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes path) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (amount1Delta <= amount0Delta) {
    }
    v0 = msg.data[36 + path].transfer(msg.sender, v1).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool((msg.data[36 + path]).code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (amount1Delta <= amount0Delta) {
    }
    v0 = msg.data[36 + data].transfer(msg.sender, v1).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool((msg.data[36 + data]).code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (amount1Delta <= amount0Delta) {
    }
    v0 = msg.data[36 + data].transfer(msg.sender, v1).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool((msg.data[36 + data]).code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
}

function ramsesV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (amount1Delta <= amount0Delta) {
    }
    v0 = msg.data[36 + data].transfer(msg.sender, v1).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool((msg.data[36 + data]).code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
}

function smardexSwapCallback(int256 _amount0Delta, int256 _amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (_amount1Delta <= _amount0Delta) {
    }
    v0 = msg.data[36 + _data].transfer(msg.sender, v1).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool((msg.data[36 + _data]).code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (amount1Delta <= amount0Delta) {
    }
    v0 = msg.data[36 + data].transfer(msg.sender, v1).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool((msg.data[36 + data]).code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (amount1Delta <= amount0Delta) {
    }
    v0 = msg.data[36 + _data].transfer(msg.sender, v1).gas(msg.gas);
    if (v0) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool((msg.data[36 + _data]).code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
}

function 0xf65ca39c(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (!(varg0 >> 96)) {
        v0 = v1 = this.balance;
    } else {
        v2 = (varg0 >> 96).balanceOf(this).gas(msg.gas);
        require(v2, MEM[64], RETURNDATASIZE());
        require(!(RETURNDATASIZE() - 32));
        v0 = v3 = MEM[0];
    }
    v4, v5 = v6 = 0x47cc();
    if (!v4) {
        if (!(varg0 >> 96)) {
            v7 = v8 = this.balance;
        } else {
            v9 = (varg0 >> 96).balanceOf(this).gas(msg.gas);
            require(v9, MEM[64], RETURNDATASIZE());
            require(!(RETURNDATASIZE() - 32));
            v7 = v10 = MEM[0];
        }
        v5 = v11 = _SafeSub(v7, v0);
    }
    return v5;
}

function 0xf3e98cb3(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0, v1 = v2 = 0x47cc();
    if (!v0) {
        if (!(varg0 >> 96)) {
            v1 = v3 = this.balance;
        } else {
            v4 = (varg0 >> 96).balanceOf(this).gas(msg.gas);
            require(v4, MEM[64], RETURNDATASIZE());
            require(!(RETURNDATASIZE() - 32));
            v1 = v5 = MEM[0];
        }
    }
    return v1;
}

function 0xf2fa6b66(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (varg3 > varg1) {
        if (varg3 - varg1 > varg2 >> 128) {
            if (varg3 - varg1 > varg2 >> 128) {
                0x4c26(varg0 >> 96, 0xb01f8f528702d411d24c9bb8cc0e2fff779ec013, varg3 - varg1);
                v0 = v1 = varg3 - (varg3 - varg1);
            }
        }
    }
    return v0;
}

function 0xef35c31f(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0, v1 = 0x47cc();
    if (!(varg0 >> 96)) {
        v2 = v3 = this.balance;
    } else {
        v4 = (varg0 >> 96).balanceOf(this).gas(msg.gas);
        require(v4, MEM[64], RETURNDATASIZE());
        require(!(RETURNDATASIZE() - 32));
        v2 = v5 = MEM[0];
    }
    return v2;
}

function 0xee777b01(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    v0 = _SafeMul(varg3, varg2 >> 240);
    if (varg0 >> 96) {
        0x4696(varg0 >> 96, varg1 >> 96, v0 / 0x186a0);
    } else {
        v1, /* uint256 */ v2 = (varg1 >> 96).call().value(v0 / 0x186a0).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = v4 = new bytes[](RETURNDATASIZE());
            require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
            v2 = v4.data;
            RETURNDATACOPY(v2, 0, RETURNDATASIZE());
        }
        require(v1, ETHTransferFailed());
    }
    return varg3 - v0 / 0x186a0;
}

function swapUniV3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = byte(varg0, 0x0);
    v1 = v2 = 45;
    if (v0 & 0x80) {
        v3 = v4 = varg3 >> 96;
        v1 = v5 = 65;
    }
    if (!v3) {
        v3 = v6 = this;
    }
    if (!(v0 & 0x40)) {
        v7 = v8 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        if (v0 & 0x1) {
            v7 = v9 = 0x1000276a4;
        }
    } else {
        v7 = v10 = msg.data[v1] >> 96;
        v1 = v11 = v1 + 20;
    }
    if (0 == v0 & 0x20) {
        if (v0 & 0x10) {
        }
    }
    MEM[MEM[64] + (v0 & 0x20) + 36] = v0 & 0x1;
    MEM[MEM[64] + (68 - (v0 & 0x20))] = msg.data[v1];
    if (0 == v0 & 0x10) {
        v12 = new uint256[](varg2 >> 96);
        MEM[v12.data] = varg2 >> 96;
    } else {
        v13 = new uint256[](varg2 >> 96);
    }
    v14 = (varg1 >> 96).swap(0x1f18b37100000000000000000000000000000000000000000000000000000000, 0x128acb0800000000000000000000000000000000000000000000000000000000, v3, v15, v15, 32, 32, v13, v12).gas(msg.gas);
    require(v14, MEM[64], RETURNDATASIZE());
    return 0 - MEM[v0 << 5 & 0x20];
}

function curveSwapCallback(address varg0, address varg1, address varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    0x4696(varg2, msg.sender, varg3);
    return ;
}

function 0xe2e1d3c6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = (varg0 >> 96).ocean().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    0x4650(varg1 >> 96, address(MEM[0x0]), varg4);
    v1 = new uint256[](3);
    MEM[v1.data] = varg1 >> 96;
    MEM[MEM[64] + 132] = 0;
    v2 = new uint256[](2);
    MEM[v2.data] = keccak256(varg1 >> 96, 0);
    MEM[MEM[64] + 644] = keccak256(varg2 >> 96, 0);
    v3, /* uint256 */ v4, /* uint256 */ v1, /* uint256 */ v2 = MEM[0x0].doMultipleInteractions(v1, v2, v5, v5, v5, 0, 10 ** (varg3 >> 248) * varg4, 0, 0x700000000000000000000000000000000000000000000000000000000000000 | varg0 >> 96, keccak256(varg1 >> 96, 0), keccak256(varg2 >> 96, 0), uint256.max, 0, 0x100000000000000000000000000000000000000000000000000000000000000 | varg2 >> 96, 0, 0, uint256.max, 0).gas(msg.gas);
    if (!v3) {
        v6 = RETURNDATASIZE();
        revert(v5, v5, v5, v5, v5, v5, v5, v5, v5, keccak256(varg1 >> 96, 0), keccak256(varg2 >> 96, 0));
    } else {
        return ;
    }
}

function receive() public payable { 
    require(msg.sender != tx.origin, EthDepositRejected());
}

function callBytes(bytes callerCallData) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = callerCallData >> 16;
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = 0;
    while (v0) {
        v4 = v6 = uint24(v0);
        v2 = v7 = 0;
        v8 = v9 = 0;
        CALLDATACOPY(MEM[64], 34 + v4, v6 - v4);
        v10 = v11 = MEM[64] + (v6 - v4);
        v12 = v13 = MEM[64] + 2;
        if (v2 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
            v14 = v15 = this;
            if (MEM[MEM[64]] >> 240 & 0x4000) {
                v14 = v16 = MEM[v13] >> 96;
                v12 = v17 = MEM[64] + 22;
            }
            v18 = v19 = 0;
            if (MEM[MEM[64]] >> 240 & 0x2000) {
                v18 = v20 = MEM[v12] >> 128;
                v12 = v21 = v12 + 16;
            }
            if (MEM[MEM[64]] >> 240 & 0x1800) {
                v12 = v22 = v12 + 20;
                if (MEM[MEM[64]] >> 240 & 0x400) {
                    v14 = v23 = MEM[v22] >> 96;
                    v12 = v24 = v12 + 40;
                }
                if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                    MEM[v11] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v25 = (MEM[v12] >> 96).call(MEM[v4e1eV0x45f2V0xd1e:v4e1eV0x45f2V0xd1e + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                } else {
                    MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v26 = (MEM[v12] >> 96).call(MEM[v4e1eV0x45f2V0xd1e:v4e1eV0x45f2V0xd1e + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                        MEM[v11 + 36] = 0;
                        v27 = (MEM[v12] >> 96).call(MEM[v4e1eV0x45f2V0xd1e:v4e1eV0x45f2V0xd1e + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                        MEM[v11 + 36] = v2;
                        v28 = (MEM[v12] >> 96).call(MEM[v4e1eV0x45f2V0xd1e:v4e1eV0x45f2V0xd1e + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v28, ApproveFailed());
                    }
                }
            }
            v29 = v30 = 0;
            if (MEM[MEM[64]] >> 240 & 0x200) {
                v29 = v31 = MEM[v12];
                v12 = v32 = v12 + 32;
            }
            if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                    MEM[v11] = v2;
                    v10 = v33 = 32 + v11;
                } else {
                    v12 = v34 = v12 + (MEM[MEM[64]] >> 247 & 0x3);
                    if (v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v11) {
                        MEM[v34] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                        revert(v34, 4);
                    } else {
                        MEM[v34 + (MEM[v12] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v2;
                    }
                }
            }
            if (MEM[MEM[64]] >> 240 & 0x40) {
                v18 = v35 = v18 + v2;
            }
            if (v12 > v10) {
                MEM[v12] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                revert(v12, 4);
            } else {
                v36 = this.balance;
                if (v18 > v36) {
                    MEM[v12] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                    revert(v12, 4);
                } else {
                    v37 = v14.call(MEM[v4f54_0x2V0x45f2V0xd1e:v4f54_0x2V0x45f2V0xd1e + v4ec3_0x0V0x45f2V0xd1e - v4f54_0x2V0x45f2V0xd1e], MEM[v4f54_0x2V0x45f2V0xd1e:v4f54_0x2V0x45f2V0xd1e + uint8.max + 1]).value(v18).gas(msg.gas);
                    if (!v37) {
                        if (0x20 & MEM[MEM[64]] >> 240) {
                            RETURNDATACOPY(v12, 0, RETURNDATASIZE());
                            revert(v12, RETURNDATASIZE());
                        }
                    } else if (1 == v37) {
                        if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                            if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                MEM[v12] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                revert(v12, 4);
                            } else {
                                v2 = MEM[v12 + (0xe0 & MEM[MEM[64]] >> 236)];
                                v8 = 1;
                                if (MEM[MEM[64]] >> 240 & 0x10) {
                                    v2 = v38 = 0 - v2;
                                }
                            }
                        }
                    }
                    if (MEM[MEM[64]] >> 240 & 0x200) {
                        if (!v8) {
                            MEM[v12] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                            revert(v12, 4);
                        } else if (v2 < v29) {
                            MEM[v12] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                            MEM[v12 + 4] = v2;
                            revert(v12, 36);
                        }
                    }
                }
            }
        }
        v0 = v0 >> 24;
    }
    return ;
}

function tokenBalanceOf(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = varg1 >> 96;
    if (!v1) {
        v0 = v2 = this;
    }
    v3 = (varg0 >> 96).balanceOf(v0).gas(msg.gas);
    require(!((RETURNDATASIZE() <= 31) | !v3));
    v4 = v5 = MEM[0];
    if (this == v0) {
        if (v5) {
            v4 = uint256.max + v5;
        }
        return v4;
    } else {
        return v5;
    }
}

function 0xceaadabb(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = this;
    if (varg0 >> 248 & 0x80) {
        v0 = v2 = msg.data[msg.data.length - 52] >> 96;
    }
    v3 = new uint256[](164);
    MEM[v3.data] = 0x9df46e8c00000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 72] = v0;
    MEM[MEM[64] + 104] = varg1 >> 96;
    MEM[MEM[64] + 136] = varg2 >> 96;
    v4 = new uint256[](varg3 >> 96);
    MEM[v4.data] = msg.data[msg.data.length - 32];
    v5, /* uint256 */ v6, /* uint256 */ v3, /* uint256 */ v4 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(v3, v4).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    return MEM[MEM[64] + 64];
}

function 0xcd211e1e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (varg5 > varg1) {
        if (varg5 - varg1 > varg2 >> 128) {
            if (!address(varg4 >> 96)) {
                v0 = v1 = 0;
            } else {
                v0 = v2 = _SafeDiv((varg5 - varg1) * (byte(varg3, 0x0)), byte(varg3, 0x1));
            }
            if (varg5 - varg1 - v0 > varg2 >> 128) {
                0x4c26(varg0 >> 96, 0xb01f8f528702d411d24c9bb8cc0e2fff779ec013, varg5 - varg1 - v0);
                v3 = v4 = varg5 - (varg5 - varg1 - v0);
            }
            if (v0 > varg2 >> 128) {
                0x4c26(varg0 >> 96, varg4 >> 96, v0);
                v3 = v5 = v3 - v0;
            }
        }
    }
    return v3;
}

function 0xc9e75c48(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = varg0 >> 96;
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = varg1 >> 16;
    while (v0) {
        if (uint16(v0) - uint16.max) {
            v6 = v6 + uint16(v0);
        }
        v0 = v0 >> 16;
    }
    while (v4) {
        v6 = v7 = uint24(v4);
        if (uint16(v0) == uint16.max) {
            v6 = v8 = 0;
            v9 = v10 = 0;
            CALLDATACOPY(MEM[64], 54 + v6, v7 - v6);
            v11 = v12 = MEM[64] + (v7 - v6);
            v13 = v14 = MEM[64] + 2;
            if (v15 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v16 = v17 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v16 = v18 = MEM[v14] >> 96;
                    v13 = v19 = MEM[64] + 22;
                }
                v20 = v21 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v20 = v22 = MEM[v13] >> 128;
                    v13 = v23 = v13 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v13 = v24 = v13 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v16 = v25 = MEM[v24] >> 96;
                        v13 = v26 = v13 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v12] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v12 + 4] = v16;
                        MEM[v12 + 36] = v15;
                        v27 = (MEM[v13] >> 96).call(MEM[v4e1eV0x1141:v4e1eV0x1141 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, TransferFailed());
                    } else {
                        MEM[v12] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v12 + 4] = v16;
                        MEM[v12 + 36] = v15;
                        v28 = (MEM[v13] >> 96).call(MEM[v4e1eV0x1141:v4e1eV0x1141 + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v28)) {
                            MEM[v12 + 36] = 0;
                            v29 = (MEM[v13] >> 96).call(MEM[v4e1eV0x1141:v4e1eV0x1141 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v29, ApproveFailed());
                            MEM[v12 + 36] = v15;
                            v30 = (MEM[v13] >> 96).call(MEM[v4e1eV0x1141:v4e1eV0x1141 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v30, ApproveFailed());
                        }
                    }
                }
                v31 = v32 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v31 = v33 = MEM[v13];
                    v13 = v34 = v13 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v12] = v15;
                        v11 = v35 = 32 + v12;
                    } else {
                        v13 = v36 = v13 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v36 + (MEM[v13] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v12) {
                            MEM[v36] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v36, 4);
                        } else {
                            MEM[v36 + (MEM[v13] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v15;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v20 = v37 = v20 + v15;
                }
                if (v13 > v11) {
                    MEM[v13] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v13, 4);
                } else {
                    v38 = this.balance;
                    if (v20 > v38) {
                        MEM[v13] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v13, 4);
                    } else {
                        v39 = v16.call(MEM[v4f54_0x2V0x1141:v4f54_0x2V0x1141 + v4ec3_0x0V0x1141 - v4f54_0x2V0x1141], MEM[v4f54_0x2V0x1141:v4f54_0x2V0x1141 + uint8.max + 1]).value(v20).gas(msg.gas);
                        if (!v39) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v13, 0, RETURNDATASIZE());
                                revert(v13, RETURNDATASIZE());
                            }
                        } else if (1 == v39) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v13] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v13, 4);
                                } else {
                                    v6 = v40 = MEM[v13 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v9 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v6 = v41 = 0 - v40;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v9) {
                                MEM[v13] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v13, 4);
                            } else if (v6 < v31) {
                                MEM[v13] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v13 + 4] = v6;
                                revert(v13, 36);
                            }
                        }
                    }
                }
            }
        } else if (!uint16(v0)) {
            require(v0);
            v2 = v42 = 0;
            v43 = v44 = 0;
            CALLDATACOPY(MEM[64], 54 + v6, v7 - v6);
            v45 = v46 = MEM[64] + (v7 - v6);
            v47 = v48 = MEM[64] + 2;
            if (v49 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v50 = v51 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v50 = v52 = MEM[v48] >> 96;
                    v47 = v53 = MEM[64] + 22;
                }
                v54 = v55 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v54 = v56 = MEM[v47] >> 128;
                    v47 = v57 = v47 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v47 = v58 = v47 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v50 = v59 = MEM[v58] >> 96;
                        v47 = v60 = v47 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v46] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v46 + 4] = v50;
                        MEM[v46 + 36] = v49;
                        v61 = (MEM[v47] >> 96).call(MEM[v4e1eV0x1103:v4e1eV0x1103 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v61, TransferFailed());
                    } else {
                        MEM[v46] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v46 + 4] = v50;
                        MEM[v46 + 36] = v49;
                        v62 = (MEM[v47] >> 96).call(MEM[v4e1eV0x1103:v4e1eV0x1103 + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v62)) {
                            MEM[v46 + 36] = 0;
                            v63 = (MEM[v47] >> 96).call(MEM[v4e1eV0x1103:v4e1eV0x1103 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v63, ApproveFailed());
                            MEM[v46 + 36] = v49;
                            v64 = (MEM[v47] >> 96).call(MEM[v4e1eV0x1103:v4e1eV0x1103 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v64, ApproveFailed());
                        }
                    }
                }
                v65 = v66 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v65 = v67 = MEM[v47];
                    v47 = v68 = v47 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v46] = v49;
                        v45 = v69 = 32 + v46;
                    } else {
                        v47 = v70 = v47 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v70 + (MEM[v47] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v46) {
                            MEM[v70] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v70, 4);
                        } else {
                            MEM[v70 + (MEM[v47] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v49;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v54 = v71 = v54 + v49;
                }
                if (v47 > v45) {
                    MEM[v47] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v47, 4);
                } else {
                    v72 = this.balance;
                    if (v54 > v72) {
                        MEM[v47] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v47, 4);
                    } else {
                        v73 = v50.call(MEM[v4f54_0x2V0x1103:v4f54_0x2V0x1103 + v4ec3_0x0V0x1103 - v4f54_0x2V0x1103], MEM[v4f54_0x2V0x1103:v4f54_0x2V0x1103 + uint8.max + 1]).value(v54).gas(msg.gas);
                        if (!v73) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v47, 0, RETURNDATASIZE());
                                revert(v47, RETURNDATASIZE());
                            }
                        } else if (1 == v73) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v47] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v47, 4);
                                } else {
                                    v2 = MEM[v47 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v43 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v2 = v74 = 0 - v2;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v43) {
                                MEM[v47] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v47, 4);
                            } else if (v2 < v65) {
                                MEM[v47] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v47 + 4] = v2;
                                revert(v47, 36);
                            }
                        }
                    }
                }
            }
        } else {
            v75 = v76 = _SafeDiv(v2 * uint16(v0), v6);
            v6 = v6 - uint16(v0);
            v75 = v77 = 0;
            v78 = v79 = 0;
            CALLDATACOPY(MEM[64], 54 + v6, v7 - v6);
            v80 = v81 = MEM[64] + (v7 - v6);
            v82 = v83 = MEM[64] + 2;
            if (v76 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v84 = v85 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v84 = v86 = MEM[v83] >> 96;
                    v82 = v87 = MEM[64] + 22;
                }
                v88 = v89 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v88 = v90 = MEM[v82] >> 128;
                    v82 = v91 = v82 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v82 = v92 = v82 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v84 = v93 = MEM[v92] >> 96;
                        v82 = v94 = v82 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v81] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v81 + 4] = v84;
                        MEM[v81 + 36] = v76;
                        v95 = (MEM[v82] >> 96).call(MEM[v4e1eV0x10a8:v4e1eV0x10a8 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v95, TransferFailed());
                    } else {
                        MEM[v81] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v81 + 4] = v84;
                        MEM[v81 + 36] = v76;
                        v96 = (MEM[v82] >> 96).call(MEM[v4e1eV0x10a8:v4e1eV0x10a8 + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v96)) {
                            MEM[v81 + 36] = 0;
                            v97 = (MEM[v82] >> 96).call(MEM[v4e1eV0x10a8:v4e1eV0x10a8 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v97, ApproveFailed());
                            MEM[v81 + 36] = v76;
                            v98 = (MEM[v82] >> 96).call(MEM[v4e1eV0x10a8:v4e1eV0x10a8 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v98, ApproveFailed());
                        }
                    }
                }
                v99 = v100 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v99 = v101 = MEM[v82];
                    v82 = v102 = v82 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v81] = v76;
                        v80 = v103 = 32 + v81;
                    } else {
                        v82 = v104 = v82 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v104 + (MEM[v82] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v81) {
                            MEM[v104] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v104, 4);
                        } else {
                            MEM[v104 + (MEM[v82] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v76;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v88 = v105 = v88 + v76;
                }
                if (v82 > v80) {
                    MEM[v82] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v82, 4);
                } else {
                    v106 = this.balance;
                    if (v88 > v106) {
                        MEM[v82] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v82, 4);
                    } else {
                        v107 = v84.call(MEM[v4f54_0x2V0x10a8:v4f54_0x2V0x10a8 + v4ec3_0x0V0x10a8 - v4f54_0x2V0x10a8], MEM[v4f54_0x2V0x10a8:v4f54_0x2V0x10a8 + uint8.max + 1]).value(v88).gas(msg.gas);
                        if (!v107) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                                revert(v82, RETURNDATASIZE());
                            }
                        } else if (1 == v107) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v82] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v82, 4);
                                } else {
                                    v75 = MEM[v82 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v78 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v75 = v108 = 0 - v75;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v78) {
                                MEM[v82] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v82, 4);
                            } else if (v75 < v99) {
                                MEM[v82] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v82 + 4] = v75;
                                revert(v82, 36);
                            }
                        }
                    }
                }
            }
            v6 = v109 = bool(v75);
            if (v75) {
            }
            if (v6) {
                v6 = _SafeAdd(v6, v75);
                v2 = v2 - v76;
            }
        }
        v4 = v4 >> 24;
        v0 = v0 >> 16;
    }
    require(!v0);
    return v6;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x7e5c0d2 == v0) {
            0x07e5c0d2();
        } else if (0x10c3405f == v0) {
            0x10c3405f();
        } else if (0x163af3a2 == v0) {
            0x163af3a2();
        } else if (0x1c6eced5 == v0) {
            tokenApprove();
        } else if (0x20b04554 == v0) {
            AlgebraSwapCallback(int256,int256,bytes);
        } else if (0x23a69e75 == v0) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x26367361 == v0) {
            0x26367361();
        } else if (0x2636f7f8 == v0) {
            callBytes(address,bytes);
        } else if (0x26678dcd == v0) {
            0x26678dcd();
        } else if (0x26f079f1 == v0) {
            0x26f079f1(v0);
        } else if (0x2c8958f6 == v0) {
            algebraSwapCallback(int256,int256,bytes);
        } else if (0x3dd5cfd1 == v0) {
            0x3dd5cfd1(v0);
        } else if (0x3e88c8ab == v0) {
            d3MMSwapCallBack(address,uint256,bytes);
        } else if (0x454c96c2 == v0) {
            0x454c96c2(v0);
        } else if (0x48c95033 == v0) {
            0x48c95033(v0);
        } else if (0x4b02d2f6 == v0) {
            0x4b02d2f6(v0);
        } else if (0x4b64e492 == v0) {
            execute(address);
        } else if (0x5109d8b6 == v0) {
            swapSolidly();
        } else if (0x54fd4d50 == v0) {
            version();
        } else if (0x654b6487 == v0) {
            ramsesV2SwapCallback(int256,int256,bytes);
        } else if (0x6ae40711 == v0) {
            swapUniV2();
        } else if (0x6b4be0b9 == v0) {
            ethBalanceOf();
        } else if (0x6c4eca27 == v0) {
            tokenTransfer();
        } else if (0x6f5ec5ce == v0) {
            0x6f5ec5ce(v0);
        } else if (0x7225b0d0 == v0) {
            0x7225b0d0(v0);
        } else if (0x744c8c09 == v0) {
            chargeFee();
        } else if (0x773e7756 == v0) {
            0x773e7756(v0);
        } else if (0x7904d91b == v0) {
            0x7904d91b(v0);
        } else if (0x860a32ec == v0) {
            limited();
        } else if (0x91dd7346 == v0) {
            unlockCallback(bytes);
        } else if (0x98aed105 == v0) {
            0x98aed105(v0);
        } else if (0x9df46e8c == v0) {
            0x9df46e8c(v0);
        } else if (0xa1dab4eb == v0) {
            smardexSwapCallback(int256,int256,bytes);
        } else if (0xa87a1ae8 == v0) {
            0xa87a1ae8(v0);
        } else if (0xbd46a343 == v0) {
            0xbd46a343(v0);
        } else if (0xbdb69421 == v0) {
            0xbdb69421(v0);
        } else if (0xc028b46d == v0) {
            0xc028b46d(v0);
        } else if (0xc9e75c48 == v0) {
            0xc9e75c48(v0);
        } else if (0xcd211e1e == v0) {
            0xcd211e1e(v0);
        } else if (0xceaadabb == v0) {
            0xceaadabb(v0);
        } else if (0xd6bdbf78 == v0) {
            tokenBalanceOf();
        } else if (0xd9c45357 == v0) {
            callBytes(bytes);
        } else if (0xe2e1d3c6 == v0) {
            0xe2e1d3c6(v0);
        } else if (0xe413f48d == v0) {
            curveSwapCallback(address,address,address,uint256,uint256);
        } else if (0xee63c1e5 == v0) {
            swapUniV3();
        } else if (0xee777b01 == v0) {
            0xee777b01(v0);
        } else if (0xef35c31f == v0) {
            0xef35c31f(v0);
        } else if (0xf2fa6b66 == v0) {
            0xf2fa6b66(v0);
        } else if (0xf3e98cb3 == v0) {
            0xf3e98cb3(v0);
        } else if (0xf65ca39c == v0) {
            0xf65ca39c(v0);
        } else if (0xfa461e33 == v0) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else if (0xfa483e72 == v0) {
            swapCallback(int256,int256,bytes);
        } else if (0xfbb7cd06 == v0) {
            0xfbb7cd06(v0);
        } else if (0xfd53121f == v0) {
            0xfd53121f();
        }
    }
    require(!msg.data.length);
    receive();
}
