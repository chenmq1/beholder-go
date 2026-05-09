// Decompiled by library.dedaub.com
// 2025.12.16 01:31 UTC
// Compiled using the solidity compiler version 0.8.30





function 0xc028b46d(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 0;
    v2 = v3 = 0;
    v4 = v5 = 25;
    if ((byte(varg0, 0x0)) & 0x2) {
        v4 = v6 = 57;
    }
    if (0x4 & (byte(varg0, 0x0))) {
        v4 = v7 = v4 + 20;
        v2 = v8 = msg.data[v4] >> 96;
    }
    if (!v2) {
        v2 = v9 = this;
    }
    v10, v11, v11, v12, v13, v13, v12, /* uint256 */ v14 = (varg1 >> 96).getTradeInfo().gas(msg.gas);
    require(v10, MEM[64], RETURNDATASIZE());
    if (1 == (byte(varg0, 0x0)) & 0x1) {
        v15 = v16 = 10 ** 18;
    } else {
        v15 = v17 = 10 ** 18;
    }
    v18 = msg.data[v4] * (v15 - v14) / v15 * v13 / (v12 + msg.data[v4] * (v15 - v14) / v15);
    if (1 != (byte(varg0, 0x0)) & 0x1) {
    }
    v19, /* uint256 */ v20 = (varg1 >> 96).swap(0, v18, 0, v18, v2, 128, 0).gas(msg.gas);
    require(v19, MEM[64], RETURNDATASIZE());
    require(v18 >= v0, ReturnAmountIsNotEnough(v18, v0));
    return v18;
}

function 0xbdb69421(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    v0 = v1 = 0;
    CALLDATACOPY(MEM[64] + 4, 44, msg.data.length - 44);
    v2 = this.call(0x10c3405f00000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v2) {
        v0 = v3 = MEM[0];
    }
    if (!v2) {
        0x41bf(varg0 >> 96, varg1 >> 96, msg.data[msg.data.length - 32]);
        return v0;
    } else {
        return v0;
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
                    // Unknown jump to Block 0x14a7. Refer to 3-address code (TAC);
                }
            }
            revert(ApproveFailed());
        }
    }
    v12 = v13 = MEM[64] + (bool(varg0 >> 248) + 1 << 5) + 292;
    v14 = v15 = 0;
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
    v16 = v2.batchSwap(0, 288, 320 + 224 * bool(varg0 >> 248), this, 0, v0, 0, 224 * bool(varg0 >> 248) + (bool(varg0 >> 248) + 2 << 5) + 320, block.timestamp, bool(varg0 >> 248)).value(!msg.data[5 + (varg0 >> 243 & 0x1e0)] * msg.data[v5]).gas(msg.gas);
    if (!v16) {
        v17 = RETURNDATASIZE();
        revert(v18, v18, v18, v18, v18, v18, v18, v18, v18, bool(varg0 >> 248));
    } else {
        return 0 - MEM[RETURNDATASIZE() + MEM[64] - 32];
    }
}

function receive() public payable { 
    require(msg.sender != tx.origin, EthDepositRejected());
}

function 0xfd53121f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
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
    v11 = 0x46bf(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, v0);
    if (!v11) {
        v12 = 0x4723(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042);
        v13 = v14 = !v12;
        if (bool(v12)) {
            v15 = 0x46bf(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, v0);
            v13 = v16 = !v15;
        }
        require(!v13, ForceApproveFailed());
    }
    v17, /* uint256 */ v18 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.sellGem(v0, v0).gas(msg.gas);
    require(v17, MEM[64], RETURNDATASIZE());
    return v8;
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
    v18, /* uint256 */ v19 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v20, /* uint256 */ v21 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v22 = (varg0 >> 96).getOraclePrice().gas(msg.gas);
    v23 = (varg0 >> 96)._TARGET_QUOTE_TOKEN_AMOUNT_().gas(msg.gas);
    v24, v25 = 0x476a(v0);
    v0.word5 = v24;
    v0.word4 = v25;
    require(v16 < 3, Panic(33)); // failed convertion to enum type
    if (v16) {
        require(v17 < 3, Panic(33)); // failed convertion to enum type
        v26 = v27 = 0;
        v28 = v29 = 6381;
        v30 = v31 = 0x1685a;
        v32 = v33 = 10 ** 18;
        if (0 == (v17 == 1)) {
            if (0 == varg2 <= v0.word5 - v12) {
                v34 = 0x418a(varg2 - (v0.word5 - v12), v0);
                v35 = v36 = v34 + (v10 - v0.word4);
            } else {
                v37 = 0x3a89(v3);
                v38 = _SafeDiv(v0.word5 * v0.word5, v13 + varg2);
                v39 = 0x495d(v38 * v33, v14);
                v35 = v40 = (10 ** 18 + v6 * v39 / v33) * ((v13 + varg2 - v14) * v37 / v33) / v33;
            }
        } else {
            v41 = 0x3a89(v2);
            v42 = 0x4846(v0.word4, v8, v41 * varg2 / v33, v5);
            v35 = v43 = v9 - v42;
        }
    } else {
        v26 = v44 = 0;
        v32 = v45 = 10 ** 18;
        v28 = v46 = 6381;
        v30 = v47 = 0x1682e;
        v35 = v48 = 0x418a(varg2, v0);
    }
    require(10 ** 18, Panic(18)); // division by zero
    v49 = v35 * v32 / 10 ** 18;
    // Unknown jump to Block ['0x1682e', '0x1685a']. Refer to 3-address code (TAC);
    v50 = v51 = varg1 >> 96;
    v52 = 0x46bf(v50, varg0 >> 96, varg2);
    if (!v52) {
        v53 = 0x4723(v50, varg0 >> 96);
        v54 = !v53;
        if (bool(v53)) {
            v55 = 0x46bf(v50, varg0 >> 96, varg2);
            v54 = v56 = !v55;
        }
        require(!v54, ForceApproveFailed());
        // Unknown jump to Block 0x18ed. Refer to 3-address code (TAC);
    }
    v57 = (varg0 >> 96).buyBaseToken(v49, int256.min, 96, v26).value(v26).gas(msg.gas);
    require(v57, MEM[64], RETURNDATASIZE());
    if (v57) {
        v58 = v59 = 32;
        if (v59 > RETURNDATASIZE()) {
            v58 = v60 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v58 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v58 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v58 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v58 - MEM[64] >= v59);
    }
    return v49;
    v50 = v61 = varg1 >> 96;
    // Unknown jump to Block 0x3bbc0x172d. Refer to 3-address code (TAC);
}

function 0x9df46e8c(uint256 varg0, uint256 varg1, address varg2) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    v0 = new uint256[](0);
    CALLDATACOPY(v0.data, 36, 128);
    v1 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v0, v2, v2, v2, v2, v2, 0, 224, 0).gas(msg.gas);
    require(v1, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    RETURNDATACOPY(MEM[64], 0, 96);
    require(!(varg1 - address(varg1)));
    0x3c02(varg1, 0xba1333333333a1ba1108e8412f11850a5c319ba9, MEM[MEM[64] + 32]);
    v3 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.settle(varg1, MEM[MEM[64] + 32]).gas(msg.gas);
    require(v3, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v4 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(varg2, varg0, MEM[MEM[64] + 64]).gas(msg.gas);
    require(v4, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return 0x2bfb780c00000000000000000000000000000000000000000000000000000000;
}

function 0x98aed105(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 0;
    v2 = v3 = varg0 >> 96;
    v4 = v5 = msg.data[msg.data.length - 32];
    v6 = v7 = varg1 >> 16;
    while (v2) {
        if (uint16(v2) - uint16.max) {
            v0 = v0 + uint16(v2);
        }
        v2 = v2 >> 16;
    }
    v8 = v9 = 0;
    while (v6) {
        v8 = v10 = uint24(v6);
        if (uint16(v2) == uint16.max) {
            v0 = v11 = 0;
            v12 = v13 = 0;
            CALLDATACOPY(MEM[64], 54 + v8, v10 - v8);
            v14 = v15 = MEM[64] + (v10 - v8);
            v16 = v17 = MEM[64] + 2;
            if (v18 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v19 = v20 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v19 = v21 = MEM[v17] >> 96;
                    v16 = v22 = MEM[64] + 22;
                }
                v23 = v24 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v23 = v25 = MEM[v16] >> 128;
                    v16 = v26 = v16 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v16 = v27 = v16 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v19 = v28 = MEM[v27] >> 96;
                        v16 = v29 = v16 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v15] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v15 + 4] = v19;
                        MEM[v15 + 36] = v18;
                        v30 = (MEM[v16] >> 96).call(MEM[v43b7V0x1d55:v43b7V0x1d55 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v30, TransferFailed());
                    } else {
                        MEM[v15] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v15 + 4] = v19;
                        MEM[v15 + 36] = v18;
                        v31 = (MEM[v16] >> 96).call(MEM[v43b7V0x1d55:v43b7V0x1d55 + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v31)) {
                            MEM[v15 + 36] = 0;
                            v32 = (MEM[v16] >> 96).call(MEM[v43b7V0x1d55:v43b7V0x1d55 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v32, ApproveFailed());
                            MEM[v15 + 36] = v18;
                            v33 = (MEM[v16] >> 96).call(MEM[v43b7V0x1d55:v43b7V0x1d55 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v33, ApproveFailed());
                        }
                    }
                }
                v34 = v35 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v34 = v36 = MEM[v16];
                    v16 = v37 = v16 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v15] = v18;
                        v14 = v38 = 32 + v15;
                    } else {
                        v16 = v39 = v16 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v39 + (MEM[v16] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v15) {
                            MEM[v39] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v39, 4);
                        } else {
                            MEM[v39 + (MEM[v16] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v18;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v23 = v40 = v23 + v18;
                }
                if (v16 > v14) {
                    MEM[v16] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v16, 4);
                } else {
                    v41 = this.balance;
                    if (v23 > v41) {
                        MEM[v16] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v16, 4);
                    } else {
                        v42 = v19.call(MEM[v44ed_0x2V0x1d55:v44ed_0x2V0x1d55 + v445c_0x0V0x1d55 - v44ed_0x2V0x1d55], MEM[v44ed_0x2V0x1d55:v44ed_0x2V0x1d55 + uint8.max + 1]).value(v23).gas(msg.gas);
                        if (!v42) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v16, 0, RETURNDATASIZE());
                                revert(v16, RETURNDATASIZE());
                            }
                        } else if (1 == v42) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v16] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v16, 4);
                                } else {
                                    v0 = MEM[v16 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v12 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v0 = v43 = 0 - v0;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v12) {
                                MEM[v16] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v16, 4);
                            } else if (v0 < v34) {
                                MEM[v16] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v16 + 4] = v0;
                                revert(v16, 36);
                            }
                        }
                    }
                }
            }
        } else if (!uint16(v2)) {
            require(v2);
            v4 = v44 = 0;
            v45 = v46 = 0;
            CALLDATACOPY(MEM[64], 54 + v8, v10 - v8);
            v47 = v48 = MEM[64] + (v10 - v8);
            v49 = v50 = MEM[64] + 2;
            if (v51 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v52 = v53 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v52 = v54 = MEM[v50] >> 96;
                    v49 = v55 = MEM[64] + 22;
                }
                v56 = v57 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v56 = v58 = MEM[v49] >> 128;
                    v49 = v59 = v49 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v49 = v60 = v49 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v52 = v61 = MEM[v60] >> 96;
                        v49 = v62 = v49 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v48] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v48 + 4] = v52;
                        MEM[v48 + 36] = v51;
                        v63 = (MEM[v49] >> 96).call(MEM[v43b7V0x1d3f:v43b7V0x1d3f + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v63, TransferFailed());
                    } else {
                        MEM[v48] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v48 + 4] = v52;
                        MEM[v48 + 36] = v51;
                        v64 = (MEM[v49] >> 96).call(MEM[v43b7V0x1d3f:v43b7V0x1d3f + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v64)) {
                            MEM[v48 + 36] = 0;
                            v65 = (MEM[v49] >> 96).call(MEM[v43b7V0x1d3f:v43b7V0x1d3f + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v65, ApproveFailed());
                            MEM[v48 + 36] = v51;
                            v66 = (MEM[v49] >> 96).call(MEM[v43b7V0x1d3f:v43b7V0x1d3f + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v66, ApproveFailed());
                        }
                    }
                }
                v67 = v68 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v67 = v69 = MEM[v49];
                    v49 = v70 = v49 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v48] = v51;
                        v47 = v71 = 32 + v48;
                    } else {
                        v49 = v72 = v49 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v72 + (MEM[v49] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v48) {
                            MEM[v72] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v72, 4);
                        } else {
                            MEM[v72 + (MEM[v49] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v51;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v56 = v73 = v56 + v51;
                }
                if (v49 > v47) {
                    MEM[v49] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v49, 4);
                } else {
                    v74 = this.balance;
                    if (v56 > v74) {
                        MEM[v49] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v49, 4);
                    } else {
                        v75 = v52.call(MEM[v44ed_0x2V0x1d3f:v44ed_0x2V0x1d3f + v445c_0x0V0x1d3f - v44ed_0x2V0x1d3f], MEM[v44ed_0x2V0x1d3f:v44ed_0x2V0x1d3f + uint8.max + 1]).value(v56).gas(msg.gas);
                        if (!v75) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v49, 0, RETURNDATASIZE());
                                revert(v49, RETURNDATASIZE());
                            }
                        } else if (1 == v75) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v49] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v49, 4);
                                } else {
                                    v4 = MEM[v49 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v45 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v4 = v76 = 0 - v4;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v45) {
                                MEM[v49] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v49, 4);
                            } else if (v4 < v67) {
                                MEM[v49] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v49 + 4] = v4;
                                revert(v49, 36);
                            }
                        }
                    }
                }
            }
        } else {
            v77 = v78 = _SafeDiv(v4 * uint16(v2), v0);
            v0 = v0 - uint16(v2);
            v77 = v79 = 0;
            v80 = v81 = 0;
            CALLDATACOPY(MEM[64], 54 + v8, v10 - v8);
            v82 = v83 = MEM[64] + (v10 - v8);
            v84 = v85 = MEM[64] + 2;
            if (v78 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v86 = v87 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v86 = v88 = MEM[v85] >> 96;
                    v84 = v89 = MEM[64] + 22;
                }
                v90 = v91 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v90 = v92 = MEM[v84] >> 128;
                    v84 = v93 = v84 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v84 = v94 = v84 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v86 = v95 = MEM[v94] >> 96;
                        v84 = v96 = v84 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v83] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v83 + 4] = v86;
                        MEM[v83 + 36] = v78;
                        v97 = (MEM[v84] >> 96).call(MEM[v43b7V0x16886:v43b7V0x16886 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v97, TransferFailed());
                    } else {
                        MEM[v83] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v83 + 4] = v86;
                        MEM[v83 + 36] = v78;
                        v98 = (MEM[v84] >> 96).call(MEM[v43b7V0x16886:v43b7V0x16886 + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v98)) {
                            MEM[v83 + 36] = 0;
                            v99 = (MEM[v84] >> 96).call(MEM[v43b7V0x16886:v43b7V0x16886 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v99, ApproveFailed());
                            MEM[v83 + 36] = v78;
                            v100 = (MEM[v84] >> 96).call(MEM[v43b7V0x16886:v43b7V0x16886 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v100, ApproveFailed());
                        }
                    }
                }
                v101 = v102 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v101 = v103 = MEM[v84];
                    v84 = v104 = v84 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v83] = v78;
                        v82 = v105 = 32 + v83;
                    } else {
                        v84 = v106 = v84 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v106 + (MEM[v84] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v83) {
                            MEM[v106] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v106, 4);
                        } else {
                            MEM[v106 + (MEM[v84] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v78;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v90 = v107 = v90 + v78;
                }
                if (v84 > v82) {
                    MEM[v84] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v84, 4);
                } else {
                    v108 = this.balance;
                    if (v90 > v108) {
                        MEM[v84] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v84, 4);
                    } else {
                        v109 = v86.call(MEM[v44ed_0x2V0x16886:v44ed_0x2V0x16886 + v445c_0x0V0x16886 - v44ed_0x2V0x16886], MEM[v44ed_0x2V0x16886:v44ed_0x2V0x16886 + uint8.max + 1]).value(v90).gas(msg.gas);
                        if (!v109) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v84, 0, RETURNDATASIZE());
                                revert(v84, RETURNDATASIZE());
                            }
                        } else if (1 == v109) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v84] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v84, 4);
                                } else {
                                    v77 = MEM[v84 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v80 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v77 = v110 = 0 - v77;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v80) {
                                MEM[v84] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v84, 4);
                            } else if (v77 < v101) {
                                MEM[v84] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v84 + 4] = v77;
                                revert(v84, 36);
                            }
                        }
                    }
                }
            }
            v111 = v112 = bool(v77);
            if (!v77) {
                v111 = v113 = 1;
            }
            if (v111) {
                v0 = _SafeAdd(v0, v77);
                v4 = v4 - v78;
            }
        }
        v6 = v6 >> 24;
        v2 = v2 >> 16;
    }
    require(!v2);
    return v0;
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
    v2 = v3 = 0;
    v4 = v5 = this;
    v6 = v7 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    if ((byte(rawData.word1, 0x0)) & 0x1) {
        v6 = v8 = 0x1000276a4;
    }
    v9 = v10 = 4 + rawData + 32 + (msg.data[4 + rawData + 32 + 47] >> 240) + 49;
    if ((byte(rawData.word1, 0x0)) & 0x20) {
        v2 = v11 = msg.data[v10] >> 96;
        v9 = v12 = 4 + rawData + 32 + (msg.data[4 + rawData + 32 + 47] >> 240) + 69;
    }
    if ((byte(rawData.word1, 0x0)) & 0x80) {
        v4 = v13 = msg.data[v9] >> 96;
        v9 = v14 = v9 + 20;
    }
    if ((byte(rawData.word1, 0x0)) & 0x40) {
        v6 = v15 = msg.data[v9] >> 96;
    }
    v16 = v17 = msg.data[4 + rawData + 32 + 1] >> 96;
    v16 = v18 = msg.data[4 + rawData + 32 + 21] >> 96;
    v19 = new uint256[](msg.data[4 + rawData + 32 + 47] >> 240);
    CALLDATACOPY(v19.data, 49 + (4 + rawData + 32), msg.data[4 + rawData + 32 + 47] >> 240);
    v20 = address(0x4444c5dc75cb358380d2e3de08a90).swap(v17, v18, msg.data[4 + rawData + 32 + 41] >> 232, msg.data[4 + rawData + 32 + 44] >> 232, v2, (byte(rawData.word1, 0x0)) & 0x1, 0 - msg.data[4 + rawData + 32 + msg.data[4 + rawData] - 32], v6, v19).gas(msg.gas);
    require(v20, MEM[64], RETURNDATASIZE());
    v21 = v22 = MEM[0] >> 128;
    v21 = v23 = int128(MEM[0]);
    if (1 == (byte(rawData.word1, 0x0)) & 0x1) {
        v24 = v25 = 0 - v22;
    } else {
        v24 = v26 = 0 - v23;
    }
    v27, /* uint256 */ v28, v29, v29, v29, v29, v29, v29, v29, /* uint256 */ v19 = address(0x4444c5dc75cb358380d2e3de08a90).sync(v16).gas(msg.gas);
    require(v27, MEM[64], RETURNDATASIZE());
    if (0 == v16) {
        v30 = address(0x4444c5dc75cb358380d2e3de08a90).settle(0x11da60b400000000000000000000000000000000000000000000000000000000, v16).value(v24).gas(msg.gas);
        require(v30, MEM[64], RETURNDATASIZE());
        v31 = v32 = 0;
    } else {
        v33 = v16.transfer(address(0x4444c5dc75cb358380d2e3de08a90), v24).gas(msg.gas);
        require(v33, MEM[64], RETURNDATASIZE());
        v34 = address(0x4444c5dc75cb358380d2e3de08a90).settle(address(0x4444c5dc75cb358380d2e3de08a90), 0x11da60b400000000000000000000000000000000000000000000000000000000).gas(msg.gas);
        require(v34, MEM[64], RETURNDATASIZE());
        v31 = v35 = 0;
    }
    v36 = address(0x4444c5dc75cb358380d2e3de08a90).take(v16, v4, v21).value(v31).gas(msg.gas);
    require(v36, MEM[64], RETURNDATASIZE());
    v1.word1 = v21;
    v37 = new bytes[](v1.word0.length);
    v38 = v39 = 0;
    while (v38 < v1.word0.length) {
        v37[v38] = v1[v38];
        v38 += 32;
    }
    v37[v1.word0.length] = 0;
    return v37, v1.word0.length, v4, v21;
}

function limited(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(varg1 >> 232 <= msg.data.length - 71);
    v0 = v1 = varg0 ^ (msg.data[msg.data.length - 32] ^ varg0) * (msg.data[msg.data.length - 32] < varg0);
    v0 = v2 = 0;
    v3 = v4 = 0;
    CALLDATACOPY(MEM[64], 39, varg1 >> 232);
    v5 = v6 = MEM[64] + (varg1 >> 232);
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
                v20 = (MEM[v7] >> 96).call(MEM[v224a:v224a + 68], MEM[0:32]).gas(msg.gas);
                require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v20, TransferFailed());
            } else {
                MEM[v6] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                MEM[v6 + 4] = v9;
                MEM[v6 + 36] = v1;
                v21 = (MEM[v7] >> 96).call(MEM[v224a:v224a + 68], MEM[0:32]).gas(msg.gas);
                if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v21)) {
                    MEM[v6 + 36] = 0;
                    v22 = (MEM[v7] >> 96).call(MEM[v224a:v224a + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v22, ApproveFailed());
                    MEM[v6 + 36] = v1;
                    v23 = (MEM[v7] >> 96).call(MEM[v224a:v224a + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v23, ApproveFailed());
                }
            }
        }
        v24 = v25 = 0;
        if (MEM[MEM[64]] >> 240 & 0x200) {
            v24 = v26 = MEM[v7];
            v7 = v27 = v7 + 32;
        }
        if (0x3 & MEM[MEM[64]] >> 247) {
            if (1 == 0x3 & MEM[MEM[64]] >> 247) {
                MEM[v6] = v1;
                v5 = v28 = v6 + 32;
            } else {
                v7 = v29 = v7 + (0x3 & MEM[MEM[64]] >> 247);
                if ((MEM[v7] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + v29 + 32 > v6) {
                    MEM[v29] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                    revert(v29, 4);
                } else {
                    MEM[(MEM[v7] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + v29] = v1;
                }
            }
        }
        if (MEM[MEM[64]] >> 240 & 0x40) {
            v13 = v30 = v13 + v1;
        }
        if (v5 < v7) {
            MEM[v7] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
            revert(v7, 4);
        } else if (v13 > this.balance) {
            MEM[v7] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(v7, 4);
        } else {
            v31 = v9.call(MEM[v9f9f_0x8:v9f9f_0x8 + v2351_0x0 - v9f9f_0x8], MEM[v9f9f_0x8:v9f9f_0x8 + uint8.max + 1]).value(v13).gas(msg.gas);
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
    v35 = v36 = msg.data[msg.data.length - 32] > varg0;
    if (v36) {
        v35 = v37 = varg1 >> 232 < msg.data.length - 71;
    }
    if (v35) {
        v38 = v39 = msg.data[msg.data.length - 32] - varg0;
        v38 = v40 = 0;
        v41 = v42 = 0;
        CALLDATACOPY(MEM[64], 39 + (varg1 >> 232), msg.data.length - (varg1 >> 232) - 71);
        v43 = v44 = MEM[64] + (msg.data.length - (varg1 >> 232) - 71);
        v45 = v46 = MEM[64] + 2;
        if (v39 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
            v47 = v48 = this;
            if (MEM[MEM[64]] >> 240 & 0x4000) {
                v47 = v49 = MEM[v46] >> 96;
                v45 = v50 = MEM[64] + 22;
            }
            v51 = v52 = 0;
            if (MEM[MEM[64]] >> 240 & 0x2000) {
                v51 = v53 = MEM[v45] >> 128;
                v45 = v54 = v45 + 16;
            }
            if (MEM[MEM[64]] >> 240 & 0x1800) {
                v45 = v55 = v45 + 20;
                if (MEM[MEM[64]] >> 240 & 0x400) {
                    v47 = v56 = MEM[v55] >> 96;
                    v45 = v57 = v45 + 40;
                }
                if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                    MEM[v44] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v44 + 4] = v47;
                    MEM[v44 + 36] = v39;
                    v58 = (MEM[v45] >> 96).call(MEM[v43b7V0x2288:v43b7V0x2288 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v58, TransferFailed());
                } else {
                    MEM[v44] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v44 + 4] = v47;
                    MEM[v44 + 36] = v39;
                    v59 = (MEM[v45] >> 96).call(MEM[v43b7V0x2288:v43b7V0x2288 + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v59)) {
                        MEM[v44 + 36] = 0;
                        v60 = (MEM[v45] >> 96).call(MEM[v43b7V0x2288:v43b7V0x2288 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v60, ApproveFailed());
                        MEM[v44 + 36] = v39;
                        v61 = (MEM[v45] >> 96).call(MEM[v43b7V0x2288:v43b7V0x2288 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v61, ApproveFailed());
                    }
                }
            }
            v62 = v63 = 0;
            if (MEM[MEM[64]] >> 240 & 0x200) {
                v62 = v64 = MEM[v45];
                v45 = v65 = v45 + 32;
            }
            if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                    MEM[v44] = v39;
                    v43 = v66 = 32 + v44;
                } else {
                    v45 = v67 = v45 + (MEM[MEM[64]] >> 247 & 0x3);
                    if (v67 + (MEM[v45] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v44) {
                        MEM[v67] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                        revert(v67, 4);
                    } else {
                        MEM[v67 + (MEM[v45] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v39;
                    }
                }
            }
            if (MEM[MEM[64]] >> 240 & 0x40) {
                v51 = v68 = v51 + v39;
            }
            if (v45 > v43) {
                MEM[v45] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                revert(v45, 4);
            } else if (v51 > this.balance) {
                MEM[v45] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                revert(v45, 4);
            } else {
                v69 = v47.call(MEM[v44ed_0x2V0x2288:v44ed_0x2V0x2288 + v445c_0x0V0x2288 - v44ed_0x2V0x2288], MEM[v44ed_0x2V0x2288:v44ed_0x2V0x2288 + uint8.max + 1]).value(v51).gas(msg.gas);
                if (!v69) {
                    if (0x20 & MEM[MEM[64]] >> 240) {
                        RETURNDATACOPY(v45, 0, RETURNDATASIZE());
                        revert(v45, RETURNDATASIZE());
                    }
                } else if (1 == v69) {
                    if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                        if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                            MEM[v45] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                            revert(v45, 4);
                        } else {
                            v38 = MEM[v45 + (0xe0 & MEM[MEM[64]] >> 236)];
                            v41 = 1;
                            if (MEM[MEM[64]] >> 240 & 0x10) {
                                v38 = v70 = 0 - v38;
                            }
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    if (!v41) {
                        MEM[v45] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                        revert(v45, 4);
                    } else if (v38 < v62) {
                        MEM[v45] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                        MEM[v45 + 4] = v38;
                        revert(v45, 36);
                    }
                }
            }
        }
    }
    return v0;
}

function 0x773e7756(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    v0 = _SafeMul(varg5, varg2 >> 240);
    v1 = _SafeMul(varg5, varg4 >> 240);
    v2 = _SafeAdd(v0 / 0x186a0, v1 / 0x186a0);
    v3 = _SafeSub(varg5, v2);
    if (varg0 >> 96) {
        0x3c02(varg0 >> 96, varg1 >> 96, v0 / 0x186a0);
        0x3c02(varg0 >> 96, varg3 >> 96, v1 / 0x186a0);
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
        0x3c02(varg0 >> 96, varg1 >> 96, varg2);
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
        0x3c02(varg0 >> 96, varg1 >> 96, varg2);
        0x3c02(varg0 >> 96, varg3 >> 96, varg4);
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
    v4, v5 = 0x3d38();
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
    0x3c02(varg0 >> 96, varg1 >> 96, varg2);
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
    v2 = v3 = this;
    if ((byte(varg0, 0x0)) & 0x20) {
        v0 = v4 = 49;
        v2 = v5 = varg3 >> 96;
    }
    v6 = v7 = 0;
    if (0x10 & (byte(varg0, 0x0))) {
        v6 = v8 = msg.data[v0];
        v0 = v9 = 32 + v0;
    }
    v10 = v11 = msg.data[v0];
    v12 = (varg2 >> 96).getReserves().gas(msg.gas);
    require(v12, MEM[64], RETURNDATASIZE());
    if ((byte(varg0, 0x0)) & 0x8) {
        v13 = (v11 >> 96).getReserves(varg2 >> 96).gas(msg.gas);
        require(v13, MEM[64], RETURNDATASIZE());
        v10 = v14 = MEM[0] - MEM[!((byte(varg0, 0x0)) >> 7) << 5];
    }
    v15 = v16 = 1000;
    if (varg1 >> 224 > v16) {
        v15 = v17 = 10 ** 9;
    }
    v18 = (v15 - (varg1 >> 224)) * v10 * MEM[(byte(varg0, 0x0)) >> 2 & 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] / (MEM[!((byte(varg0, 0x0)) >> 7) << 5] * v15 + (v15 - (varg1 >> 224)) * v10);
    v19 = v20 = MEM[64];
    require(v18 >= v6, ReturnAmountIsNotEnough(v18, v6));
    MEM[v20] = 0x902f1ac022c0d9f6d9a640a70a0823100000000000000000000000000000000;
    if (1 == 0x1 & (byte(varg0, 0x0)) >> 6) {
        v19 = v21 = v20 + 8;
    } else if (!(0x1 & (byte(varg0, 0x0)) >> 6)) {
        v19 = v22 = v20 + 4;
    }
    MEM[v19 + 4] = v18 * !((byte(varg0, 0x0)) >> 7);
    MEM[v19 + 36] = v18 * ((byte(varg0, 0x0)) >> 7);
    MEM[v19 + 68] = v2;
    MEM[v19 + 100] = 128;
    MEM[v19 + 132] = 0;
    v23 = (varg2 >> 96).call(MEM[va413_0x1:va413_0x1 + 164 - 0x40 & 0x0 byte varg0], MEM[0:0]).gas(msg.gas);
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
    v0 = v1 = 29;
    v2 = v3 = this;
    if (0x40 & (byte(varg0, 0x0))) {
        v2 = v4 = varg1 >> 96;
        v0 = v5 = 49;
    }
    v6 = v7 = 0;
    if (0x20 & (byte(varg0, 0x0))) {
        v6 = v8 = msg.data[v0];
        v0 = v9 = v0 + 32;
    }
    v10 = v11 = 0;
    v12 = v13 = 0;
    if ((byte(varg0, 0x0)) >> 4 & 0x1) {
        v10 = v14 = 10 ** (msg.data[v0] >> 248);
        v12 = v15 = 10 ** uint8(msg.data[v0] >> 240);
        v0 = v16 = v0 + 2;
    }
    v17 = v18 = msg.data[v0];
    v19 = address(varg0 >> 56).getReserves().gas(msg.gas);
    require(v19, MEM[64], RETURNDATASIZE());
    v20 = v21 = MEM[0];
    v20 = v22 = MEM[32];
    if ((byte(varg0, 0x0)) & 0x8) {
        v23 = (v18 >> 96).getReserves(address(varg0 >> 56)).gas(msg.gas);
        require(v23, MEM[64], RETURNDATASIZE());
        v20 = v24 = 0;
        if (1 != (byte(varg0, 0x0)) >> 7) {
            if ((byte(varg0, 0x0)) >> 7) {
            }
        }
        v17 = v25 = MEM[0] - v20;
    }
    v26 = v27 = v17 - v17 * uint32(varg0 >> 216) / 10 ** 6;
    v28 = v29 = 0;
    if (1 == (byte(varg0, 0x0)) >> 4 & 0x1) {
        v30 = v31 = v21 * 10 ** 18 / v10;
        v30 = v32 = v22 * 10 ** 18 / v12;
        v30 = v33 = 0;
        v30 = v34 = 0;
        if (1 != (byte(varg0, 0x0)) >> 7) {
            if ((byte(varg0, 0x0)) >> 7) {
            }
        }
        if (1 == (byte(varg0, 0x0)) >> 7) {
            v26 = v35 = v27 * 10 ** 18 / v10;
        } else if (!((byte(varg0, 0x0)) >> 7)) {
            v26 = v36 = 10 ** 18 * v27 / v12;
        }
        v37 = v26 + v30;
        v38 = v39 = 0;
        while (v38 < uint8.max) {
            v40 = v37 * (v30 * v30 / 10 ** 18 * v30 / 10 ** 18) / 10 ** 18 + v37 * v37 / 10 ** 18 * v37 / 10 ** 18 * v30 / 10 ** 18;
            if (1 == v40 < v31 * v32 / 10 ** 18 * (v31 * v31 / 10 ** 18 + v32 * v32 / 10 ** 18) / 10 ** 18) {
                v30 += (v31 * v32 / 10 ** 18 * (v31 * v31 / 10 ** 18 + v32 * v32 / 10 ** 18) / 10 ** 18 - v40) * 10 ** 18 / (v30 * v30 / 10 ** 18 * v37 * 3 / 10 ** 18 + v37 * v37 / 10 ** 18 * v37 / 10 ** 18);
            } else if (v40 >= v31 * v32 / 10 ** 18 * (v31 * v31 / 10 ** 18 + v32 * v32 / 10 ** 18) / 10 ** 18) {
                v30 = v30 - (v40 - v31 * v32 / 10 ** 18 * (v31 * v31 / 10 ** 18 + v32 * v32 / 10 ** 18) / 10 ** 18) * 10 ** 18 / (v30 * v30 / 10 ** 18 * v37 * 3 / 10 ** 18 + v37 * v37 / 10 ** 18 * v37 / 10 ** 18);
            }
            if (1 == v30 > v30) {
                if (1 != v30 - v30 > 1) {
                    if (v30 - v30 > 1) {
                    }
                }
            } else if (v30 <= v30) {
                if (1 != v30 - v30 > 1) {
                    if (v30 - v30 > 1) {
                    }
                }
            }
            v41 = v42 = 1;
            v38 = v38 + v41;
            continue;
            break;
            v41 = v43 = 1;
            // Unknown jump to Block 0x2ec8. Refer to 3-address code (TAC);
        }
        if (1 == (byte(varg0, 0x0)) >> 7) {
            v28 = v44 = (v30 - v30) * v12 / 10 ** 18;
        } else if (!((byte(varg0, 0x0)) >> 7)) {
            v28 = v45 = v10 * (v30 - v30) / 10 ** 18;
        }
    } else if (!((byte(varg0, 0x0)) >> 4 & 0x1)) {
        v20 = v46 = 0;
        v20 = v47 = 0;
        if (1 != (byte(varg0, 0x0)) >> 7) {
            if ((byte(varg0, 0x0)) >> 7) {
            }
        }
        v28 = v48 = v27 * v20 / (v20 + v27);
    }
    require(v28 >= v6, ReturnAmountIsNotEnough(v28, v6));
    v49, /* uint256 */ v50 = address(varg0 >> 56).getReserves(v28 * !((byte(varg0, 0x0)) >> 7), v28 * ((byte(varg0, 0x0)) >> 7), v2, 128, 0).gas(msg.gas);
    require(v49, MEM[64] + 4, RETURNDATASIZE());
    return v28;
}

function execute(address varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0xad3b67bca8935cb510c8d18bd45f0b94f54a968f)));
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
                    v25 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b99V0x30e3:v43b7V0x3b99V0x30e3 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                } else {
                    MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v26 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b99V0x30e3:v43b7V0x3b99V0x30e3 + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                        MEM[v11 + 36] = 0;
                        v27 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b99V0x30e3:v43b7V0x3b99V0x30e3 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                        MEM[v11 + 36] = v2;
                        v28 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b99V0x30e3:v43b7V0x3b99V0x30e3 + 68], MEM[0:32]).gas(msg.gas);
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
                    v37 = v14.call(MEM[v44ed_0x2V0x3b99V0x30e3:v44ed_0x2V0x3b99V0x30e3 + v445c_0x0V0x3b99V0x30e3 - v44ed_0x2V0x3b99V0x30e3], MEM[v44ed_0x2V0x3b99V0x30e3:v44ed_0x2V0x3b99V0x30e3 + uint8.max + 1]).value(v18).gas(msg.gas);
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
    v1 = v2 = 0;
    v3 = v4 = 0;
    while (v3 < (varg2 >> 192) * 48) {
        v1 = v1 + (msg.data[v3 + 84] >> 128);
        v3 += 48;
    }
    v5 = v6 = msg.data[msg.data.length - 32];
    v7 = v8 = v0.data;
    v9 = v10 = 0;
    while (v9 < (varg2 >> 192) * 48) {
        MEM[v7] = msg.data[v9 + 52];
        MEM[v7 + 32] = v5 * (msg.data[v9 + 84] >> 128) / v1;
        v7 = v7 + 64;
        v5 = v5 - v5 * (msg.data[v9 + 84] >> 128) / v1;
        v1 = v1 - (msg.data[v9 + 84] >> 128);
        v9 += 48;
    }
    v11, /* uint256 */ v12 = 0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1.tradeBySourceAmount(varg0 >> 96, varg1 >> 96, v0, uint40.max, 1).value(msg.value).gas(msg.gas);
    require(v11, MEM[64], RETURNDATASIZE());
    return v12;
}

function d3MMSwapCallBack(address token, uint256 value, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    0x3c02(token, msg.sender, value);
}

function 0x3dd5cfd1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
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
    v8 = v9 = v0 / 10 ** 12 * 10 ** 12;
    if (v0) {
        v8 = v10 = v0 / 10 ** 12 * v0 * 10 ** 12 / 10 ** 18 + v9;
    }
    v11 = 0x46bf(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, v8);
    if (!v11) {
        v12 = 0x4723(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042);
        v13 = v14 = !v12;
        if (bool(v12)) {
            v15 = 0x46bf(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, v8);
            v13 = v16 = !v15;
        }
        require(!v13, ForceApproveFailed());
    }
    v17, /* uint256 */ v18 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.buyGem(v0, v0 / 10 ** 12).gas(msg.gas);
    require(v17, MEM[64], RETURNDATASIZE());
    return v0 / 10 ** 12;
}

function 0x26678dcd(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - this), OnlyThis());
    if (0 == !(varg0 >> 96)) {
        0x3c02(varg0 >> 96, varg1 >> 96, varg2);
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
    0x3bbc(varg0 >> 96, varg1 >> 96, varg2);
    return varg2;
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
                    v25 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b99V0x3820:v43b7V0x3b99V0x3820 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                } else {
                    MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v26 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b99V0x3820:v43b7V0x3b99V0x3820 + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                        MEM[v11 + 36] = 0;
                        v27 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b99V0x3820:v43b7V0x3b99V0x3820 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                        MEM[v11 + 36] = v2;
                        v28 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b99V0x3820:v43b7V0x3b99V0x3820 + 68], MEM[0:32]).gas(msg.gas);
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
                    v37 = v14.call(MEM[v44ed_0x2V0x3b99V0x3820:v44ed_0x2V0x3b99V0x3820 + v445c_0x0V0x3b99V0x3820 - v44ed_0x2V0x3b99V0x3820], MEM[v44ed_0x2V0x3b99V0x3820:v44ed_0x2V0x3b99V0x3820 + uint8.max + 1]).value(v18).gas(msg.gas);
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
                    v25 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b5eV0x3887:v43b7V0x3b5eV0x3887 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                } else {
                    MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 4] = v14;
                    MEM[v11 + 36] = v2;
                    v26 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b5eV0x3887:v43b7V0x3b5eV0x3887 + 68], MEM[0:32]).gas(msg.gas);
                    if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                        MEM[v11 + 36] = 0;
                        v27 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b5eV0x3887:v43b7V0x3b5eV0x3887 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                        MEM[v11 + 36] = v2;
                        v28 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b5eV0x3887:v43b7V0x3b5eV0x3887 + 68], MEM[0:32]).gas(msg.gas);
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
                    v37 = v14.call(MEM[v44ed_0x2V0x3b5eV0x3887:v44ed_0x2V0x3b5eV0x3887 + v445c_0x0V0x3b5eV0x3887 - v44ed_0x2V0x3b5eV0x3887], MEM[v44ed_0x2V0x3b5eV0x3887:v44ed_0x2V0x3b5eV0x3887 + uint8.max + 1]).value(v18).gas(msg.gas);
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

function 0x3a89(uint256 varg0) private { 
    require(varg0, Panic(18)); // division by zero
    return 10 ** 36 / varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x3bbc(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x46bf(varg0, varg1, varg2);
    if (!v0) {
        v1 = 0x4723(varg0, varg1);
        v2 = !v1;
        if (bool(v1)) {
            v3 = 0x46bf(varg0, varg1, varg2);
            v2 = v4 = !v3;
        }
        require(!v2, ForceApproveFailed());
        return ;
    } else {
        return ;
    }
}

function 0x3c02(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0x3d38() private { 
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
                v20 = (MEM[v7] >> 96).call(MEM[v3db0:v3db0 + 68], MEM[0:32]).gas(msg.gas);
                require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v20, TransferFailed());
            } else {
                MEM[v6] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                MEM[v6 + 4] = v9;
                MEM[v6 + 36] = v1;
                v21 = (MEM[v7] >> 96).call(MEM[v3db0:v3db0 + 68], MEM[0:32]).gas(msg.gas);
                if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v21)) {
                    MEM[v6 + 36] = 0;
                    v22 = (MEM[v7] >> 96).call(MEM[v3db0:v3db0 + 68], MEM[0:32]).gas(msg.gas);
                    require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v22, ApproveFailed());
                    MEM[v6 + 36] = v1;
                    v23 = (MEM[v7] >> 96).call(MEM[v3db0:v3db0 + 68], MEM[0:32]).gas(msg.gas);
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
            v31 = v9.call(MEM[vaf49_0x2:vaf49_0x2 + v3e57_0x0 - vaf49_0x2], MEM[vaf49_0x2:vaf49_0x2 + uint8.max + 1]).value(v13).gas(msg.gas);
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

function 0x418a(uint256 varg0, struct(11) varg1) private { 
    v0 = 0x3a89(varg1.word0);
    v1 = 0x4846(varg1.word4, varg1.word4, v0 * varg0 / 10 ** 18, varg1.word1);
    return varg1.word4 - v1;
}

function 0x41bf(uint256 varg0, address varg1, uint256 varg2) private { 
    if (varg2) {
        v0 = v1 = !address(varg0);
        if (bool(address(varg0))) {
            v0 = v2 = address(varg0) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
        }
        if (!v0) {
            0x3c02(varg0, varg1, varg2);
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

function 0x46bf(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0x4723(uint256 varg0, uint256 varg1) private { 
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

function 0x476a(struct(11) varg0) private { 
    require(varg0.word6 < 3, Panic(33)); // failed convertion to enum type
    if (varg0.word6) {
        require(varg0.word6 < 3, Panic(33)); // failed convertion to enum type
        if (2 - varg0.word6) {
            require(varg0.word6 < 3, Panic(33)); // failed convertion to enum type
            if (1 == varg0.word6) {
                v0 = _SafeDiv((varg0.word3 - varg0.word10) * 10 ** 18, varg0.word0);
                v1 = 0x48fb(varg0.word2, varg0.word1, v0);
                return varg0.word10, v1 - varg0.word2 + varg0.word2;
            } else {
                return 0, 0;
            }
        } else {
            v2 = 0x48fb(varg0.word3, varg0.word1, varg0.word0 * (varg0.word2 - varg0.word9) / 10 ** 18);
            return v2 - varg0.word3 + varg0.word3, varg0.word9;
        }
    } else {
        return varg0.word10, varg0.word9;
    }
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
        0x3bbc(varg2 >> 96, v2, msg.data[v5]);
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

function 0x4846(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg3 * varg0 / 10 ** 18 * varg0;
    v1 = _SafeDiv(v0, varg1);
    v2 = (10 ** 18 - varg3) * varg1 / 10 ** 18;
    if (v2 < v1 + varg2) {
        v3 = v4, v5 = v6, v7 = v8, v9 = v10, v11 = v12 = 0x4886(v0, 10 ** 18, 18581, v1 + varg2 - v2, 0, 10 ** 18);
    } else {
        v3 = v13, v5 = v14, v7 = v15, v9 = v16, v11 = v17 = 0x4886(v0, 10 ** 18, 18581, v2 - (v1 + varg2), 1, 10 ** 18);
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

function 0x4886(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
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

function 0x48c2(uint256 varg0) private { 
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

function 0x48fb(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x495d((varg1 * varg2 / 10 ** 18 << 2) * 10 ** 18, varg0);
    v1 = 0x48c2((v0 + 10 ** 18) * 10 ** 18);
    v2 = 0x495d((v1 + 0xfffffffffffffffffffffffffffffffffffffffffffffffff21f494c589c0000) * 10 ** 18, varg1 << 1);
    return (10 ** 18 + v2) * varg0 / 10 ** 18;
}

function 0x495d(uint256 varg0, uint256 varg1) private { 
    v0 = _SafeDiv(varg0, varg1);
    if (v0 * varg1 == varg0) {
        return v0;
    } else {
        return 1 + v0;
    }
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
    v4, v5 = v6 = 0x3d38();
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
    v0, v1 = v2 = 0x3d38();
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
                0x41bf(varg0 >> 96, 0xb01f8f528702d411d24c9bb8cc0e2fff779ec013, varg3 - varg1);
                v0 = v1 = varg3 - (varg3 - varg1);
            }
        }
    }
    return v0;
}

function 0xef35c31f(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0, v1 = 0x3d38();
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
        0x3c02(varg0 >> 96, varg1 >> 96, v0 / 0x186a0);
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
    v0 = v1 = 45;
    v2 = v3 = 0;
    if ((byte(varg0, 0x0)) & 0x80) {
        v2 = v4 = varg3 >> 96;
        v0 = v5 = 65;
    }
    if (!v2) {
        v2 = v6 = this;
    }
    if (!((byte(varg0, 0x0)) & 0x40)) {
        v7 = v8 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        if ((byte(varg0, 0x0)) & 0x1) {
            v7 = v9 = 0x1000276a4;
        }
    } else {
        v7 = v10 = msg.data[v0] >> 96;
        v0 = v11 = v0 + 20;
    }
    if (0 == (byte(varg0, 0x0)) & 0x20) {
        if ((byte(varg0, 0x0)) & 0x10) {
        }
    }
    MEM[MEM[64] + ((byte(varg0, 0x0)) & 0x20) + 36] = (byte(varg0, 0x0)) & 0x1;
    MEM[MEM[64] + (68 - ((byte(varg0, 0x0)) & 0x20))] = msg.data[v0];
    if (0 == (byte(varg0, 0x0)) & 0x10) {
        v12 = new uint256[](varg2 >> 96);
        MEM[v12.data] = varg2 >> 96;
        v13 = v14 = 0;
    } else {
        v15 = new uint256[](varg2 >> 96);
        v13 = v16 = 0;
    }
    v17 = (varg1 >> 96).swap(0x1f18b37100000000000000000000000000000000000000000000000000000000, 0x128acb0800000000000000000000000000000000000000000000000000000000, v2, v18, v18, 32, 32, v15, v12).value(v13).gas(msg.gas);
    require(v17, MEM[64], RETURNDATASIZE());
    return 0 - MEM[(byte(varg0, 0x0)) << 5 & 0x20];
}

function curveSwapCallback(address varg0, address varg1, address varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    0x3c02(varg2, msg.sender, varg3);
}

function 0xe2e1d3c6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = (varg0 >> 96).ocean().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    0x3bbc(varg1 >> 96, address(MEM[0x0]), varg4);
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
        exit;
    }
}

function callBytes(bytes callerCallData) public payable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - address(0xad3b67bca8935cb510c8d18bd45f0b94f54a968f)));
    v0 = v1 = callerCallData >> 16;
    v2 = v3 = msg.data[msg.data.length - 32];
    v4 = v5 = 0;
    while (1) {
        if (v0) {
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
                        v25 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b5eV0xd0f:v43b7V0x3b5eV0xd0f + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v25, TransferFailed());
                    } else {
                        MEM[v11] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v11 + 4] = v14;
                        MEM[v11 + 36] = v2;
                        v26 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b5eV0xd0f:v43b7V0x3b5eV0xd0f + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v26)) {
                            MEM[v11 + 36] = 0;
                            v27 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b5eV0xd0f:v43b7V0x3b5eV0xd0f + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v27, ApproveFailed());
                            MEM[v11 + 36] = v2;
                            v28 = (MEM[v12] >> 96).call(MEM[v43b7V0x3b5eV0xd0f:v43b7V0x3b5eV0xd0f + 68], MEM[0:32]).gas(msg.gas);
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
                        v37 = v14.call(MEM[v44ed_0x2V0x3b5eV0xd0f:v44ed_0x2V0x3b5eV0xd0f + v445c_0x0V0x3b5eV0xd0f - v44ed_0x2V0x3b5eV0xd0f], MEM[v44ed_0x2V0x3b5eV0xd0f:v44ed_0x2V0x3b5eV0xd0f + uint8.max + 1]).value(v18).gas(msg.gas);
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
            continue;
        } else {
            exit;
        }
    }
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
    require(v5, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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
                0x41bf(varg0 >> 96, 0xb01f8f528702d411d24c9bb8cc0e2fff779ec013, varg5 - varg1 - v0);
                v3 = v4 = varg5 - (varg5 - varg1 - v0);
            }
            if (v0 > varg2 >> 128) {
                0x41bf(varg0 >> 96, varg4 >> 96, v0);
                v3 = v5 = v3 - v0;
            }
        }
    }
    return v3;
}

function 0xc9e75c48(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 0;
    v2 = v3 = varg0 >> 96;
    v4 = v5 = msg.data[msg.data.length - 32];
    v6 = v7 = varg1 >> 16;
    while (v2) {
        if (uint16(v2) - uint16.max) {
            v0 = v0 + uint16(v2);
        }
        v2 = v2 >> 16;
    }
    v8 = v9 = 0;
    while (v6) {
        v8 = v10 = uint24(v6);
        if (uint16(v2) == uint16.max) {
            v0 = v11 = 0;
            v12 = v13 = 0;
            CALLDATACOPY(MEM[64], 54 + v8, v10 - v8);
            v14 = v15 = MEM[64] + (v10 - v8);
            v16 = v17 = MEM[64] + 2;
            if (v18 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v19 = v20 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v19 = v21 = MEM[v17] >> 96;
                    v16 = v22 = MEM[64] + 22;
                }
                v23 = v24 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v23 = v25 = MEM[v16] >> 128;
                    v16 = v26 = v16 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v16 = v27 = v16 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v19 = v28 = MEM[v27] >> 96;
                        v16 = v29 = v16 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v15] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v15 + 4] = v19;
                        MEM[v15 + 36] = v18;
                        v30 = (MEM[v16] >> 96).call(MEM[v43b7V0x1130:v43b7V0x1130 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v30, TransferFailed());
                    } else {
                        MEM[v15] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v15 + 4] = v19;
                        MEM[v15 + 36] = v18;
                        v31 = (MEM[v16] >> 96).call(MEM[v43b7V0x1130:v43b7V0x1130 + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v31)) {
                            MEM[v15 + 36] = 0;
                            v32 = (MEM[v16] >> 96).call(MEM[v43b7V0x1130:v43b7V0x1130 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v32, ApproveFailed());
                            MEM[v15 + 36] = v18;
                            v33 = (MEM[v16] >> 96).call(MEM[v43b7V0x1130:v43b7V0x1130 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v33, ApproveFailed());
                        }
                    }
                }
                v34 = v35 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v34 = v36 = MEM[v16];
                    v16 = v37 = v16 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v15] = v18;
                        v14 = v38 = 32 + v15;
                    } else {
                        v16 = v39 = v16 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v39 + (MEM[v16] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v15) {
                            MEM[v39] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v39, 4);
                        } else {
                            MEM[v39 + (MEM[v16] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v18;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v23 = v40 = v23 + v18;
                }
                if (v16 > v14) {
                    MEM[v16] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v16, 4);
                } else {
                    v41 = this.balance;
                    if (v23 > v41) {
                        MEM[v16] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v16, 4);
                    } else {
                        v42 = v19.call(MEM[v44ed_0x2V0x1130:v44ed_0x2V0x1130 + v445c_0x0V0x1130 - v44ed_0x2V0x1130], MEM[v44ed_0x2V0x1130:v44ed_0x2V0x1130 + uint8.max + 1]).value(v23).gas(msg.gas);
                        if (!v42) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v16, 0, RETURNDATASIZE());
                                revert(v16, RETURNDATASIZE());
                            }
                        } else if (1 == v42) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v16] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v16, 4);
                                } else {
                                    v0 = MEM[v16 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v12 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v0 = v43 = 0 - v0;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v12) {
                                MEM[v16] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v16, 4);
                            } else if (v0 < v34) {
                                MEM[v16] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v16 + 4] = v0;
                                revert(v16, 36);
                            }
                        }
                    }
                }
            }
        } else if (!uint16(v2)) {
            require(v2);
            v4 = v44 = 0;
            v45 = v46 = 0;
            CALLDATACOPY(MEM[64], 54 + v8, v10 - v8);
            v47 = v48 = MEM[64] + (v10 - v8);
            v49 = v50 = MEM[64] + 2;
            if (v51 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v52 = v53 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v52 = v54 = MEM[v50] >> 96;
                    v49 = v55 = MEM[64] + 22;
                }
                v56 = v57 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v56 = v58 = MEM[v49] >> 128;
                    v49 = v59 = v49 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v49 = v60 = v49 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v52 = v61 = MEM[v60] >> 96;
                        v49 = v62 = v49 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v48] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v48 + 4] = v52;
                        MEM[v48 + 36] = v51;
                        v63 = (MEM[v49] >> 96).call(MEM[v43b7V0x111a:v43b7V0x111a + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v63, TransferFailed());
                    } else {
                        MEM[v48] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v48 + 4] = v52;
                        MEM[v48 + 36] = v51;
                        v64 = (MEM[v49] >> 96).call(MEM[v43b7V0x111a:v43b7V0x111a + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v64)) {
                            MEM[v48 + 36] = 0;
                            v65 = (MEM[v49] >> 96).call(MEM[v43b7V0x111a:v43b7V0x111a + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v65, ApproveFailed());
                            MEM[v48 + 36] = v51;
                            v66 = (MEM[v49] >> 96).call(MEM[v43b7V0x111a:v43b7V0x111a + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v66, ApproveFailed());
                        }
                    }
                }
                v67 = v68 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v67 = v69 = MEM[v49];
                    v49 = v70 = v49 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v48] = v51;
                        v47 = v71 = 32 + v48;
                    } else {
                        v49 = v72 = v49 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v72 + (MEM[v49] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v48) {
                            MEM[v72] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v72, 4);
                        } else {
                            MEM[v72 + (MEM[v49] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v51;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v56 = v73 = v56 + v51;
                }
                if (v49 > v47) {
                    MEM[v49] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v49, 4);
                } else {
                    v74 = this.balance;
                    if (v56 > v74) {
                        MEM[v49] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v49, 4);
                    } else {
                        v75 = v52.call(MEM[v44ed_0x2V0x111a:v44ed_0x2V0x111a + v445c_0x0V0x111a - v44ed_0x2V0x111a], MEM[v44ed_0x2V0x111a:v44ed_0x2V0x111a + uint8.max + 1]).value(v56).gas(msg.gas);
                        if (!v75) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v49, 0, RETURNDATASIZE());
                                revert(v49, RETURNDATASIZE());
                            }
                        } else if (1 == v75) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v49] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v49, 4);
                                } else {
                                    v4 = MEM[v49 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v45 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v4 = v76 = 0 - v4;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v45) {
                                MEM[v49] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v49, 4);
                            } else if (v4 < v67) {
                                MEM[v49] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v49 + 4] = v4;
                                revert(v49, 36);
                            }
                        }
                    }
                }
            }
        } else {
            v77 = v78 = _SafeDiv(v4 * uint16(v2), v0);
            v0 = v0 - uint16(v2);
            v77 = v79 = 0;
            v80 = v81 = 0;
            CALLDATACOPY(MEM[64], 54 + v8, v10 - v8);
            v82 = v83 = MEM[64] + (v10 - v8);
            v84 = v85 = MEM[64] + 2;
            if (v78 | !(MEM[MEM[64]] >> 240 & 0x8000)) {
                v86 = v87 = this;
                if (MEM[MEM[64]] >> 240 & 0x4000) {
                    v86 = v88 = MEM[v85] >> 96;
                    v84 = v89 = MEM[64] + 22;
                }
                v90 = v91 = 0;
                if (MEM[MEM[64]] >> 240 & 0x2000) {
                    v90 = v92 = MEM[v84] >> 128;
                    v84 = v93 = v84 + 16;
                }
                if (MEM[MEM[64]] >> 240 & 0x1800) {
                    v84 = v94 = v84 + 20;
                    if (MEM[MEM[64]] >> 240 & 0x400) {
                        v86 = v95 = MEM[v94] >> 96;
                        v84 = v96 = v84 + 40;
                    }
                    if (!(MEM[MEM[64]] >> 240 & 0x1000)) {
                        MEM[v83] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v83 + 4] = v86;
                        MEM[v83 + 36] = v78;
                        v97 = (MEM[v84] >> 96).call(MEM[v43b7V0x16741:v43b7V0x16741 + 68], MEM[0:32]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v97, TransferFailed());
                    } else {
                        MEM[v83] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v83 + 4] = v86;
                        MEM[v83 + 36] = v78;
                        v98 = (MEM[v84] >> 96).call(MEM[v43b7V0x16741:v43b7V0x16741 + 68], MEM[0:32]).gas(msg.gas);
                        if (!((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v98)) {
                            MEM[v83 + 36] = 0;
                            v99 = (MEM[v84] >> 96).call(MEM[v43b7V0x16741:v43b7V0x16741 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v99, ApproveFailed());
                            MEM[v83 + 36] = v78;
                            v100 = (MEM[v84] >> 96).call(MEM[v43b7V0x16741:v43b7V0x16741 + 68], MEM[0:32]).gas(msg.gas);
                            require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (MEM[0] == 1)) & v100, ApproveFailed());
                        }
                    }
                }
                v101 = v102 = 0;
                if (MEM[MEM[64]] >> 240 & 0x200) {
                    v101 = v103 = MEM[v84];
                    v84 = v104 = v84 + 32;
                }
                if (0 != MEM[MEM[64]] >> 247 & 0x3) {
                    if (1 == MEM[MEM[64]] >> 247 & 0x3) {
                        MEM[v83] = v78;
                        v82 = v105 = 32 + v83;
                    } else {
                        v84 = v106 = v84 + (MEM[MEM[64]] >> 247 & 0x3);
                        if (v106 + (MEM[v84] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18)) + 32 > v83) {
                            MEM[v106] = 0xc700990000000000000000000000000000000000000000000000000000000000;
                            revert(v106, 4);
                        } else {
                            MEM[v106 + (MEM[v84] >> uint8.max + 1 - (MEM[MEM[64]] >> 244 & 0x18))] = v78;
                        }
                    }
                }
                if (MEM[MEM[64]] >> 240 & 0x40) {
                    v90 = v107 = v90 + v78;
                }
                if (v84 > v82) {
                    MEM[v84] = 0x31560a0e00000000000000000000000000000000000000000000000000000000;
                    revert(v84, 4);
                } else {
                    v108 = this.balance;
                    if (v90 > v108) {
                        MEM[v84] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                        revert(v84, 4);
                    } else {
                        v109 = v86.call(MEM[v44ed_0x2V0x16741:v44ed_0x2V0x16741 + v445c_0x0V0x16741 - v44ed_0x2V0x16741], MEM[v44ed_0x2V0x16741:v44ed_0x2V0x16741 + uint8.max + 1]).value(v90).gas(msg.gas);
                        if (!v109) {
                            if (0x20 & MEM[MEM[64]] >> 240) {
                                RETURNDATACOPY(v84, 0, RETURNDATASIZE());
                                revert(v84, RETURNDATASIZE());
                            }
                        } else if (1 == v109) {
                            if (0 != RETURNDATASIZE() * !(MEM[MEM[64]] >> 240 & 0x1)) {
                                if ((0xe0 & MEM[MEM[64]] >> 236) + 32 > RETURNDATASIZE()) {
                                    MEM[v84] = 0x310a48700000000000000000000000000000000000000000000000000000000;
                                    revert(v84, 4);
                                } else {
                                    v77 = MEM[v84 + (0xe0 & MEM[MEM[64]] >> 236)];
                                    v80 = 1;
                                    if (MEM[MEM[64]] >> 240 & 0x10) {
                                        v77 = v110 = 0 - v77;
                                    }
                                }
                            }
                        }
                        if (MEM[MEM[64]] >> 240 & 0x200) {
                            if (!v80) {
                                MEM[v84] = 0x2dd205a100000000000000000000000000000000000000000000000000000000;
                                revert(v84, 4);
                            } else if (v77 < v101) {
                                MEM[v84] = 0x9a44647500000000000000000000000000000000000000000000000000000000;
                                MEM[v84 + 4] = v77;
                                revert(v84, 36);
                            }
                        }
                    }
                }
            }
            v111 = v112 = bool(v77);
            if (!v77) {
                v111 = v113 = 0;
            }
            if (v111) {
                v0 = _SafeAdd(v0, v77);
                v4 = v4 - v78;
            }
        }
        v6 = v6 >> 24;
        v2 = v2 >> 16;
    }
    require(!v2);
    return v0;
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
        } else if (0x1c6eced5 == v0) {
            tokenApprove();
        } else {
            if (0x20b04554 != v0) {
                if (0x23a69e75 != v0) {
                    if (0x26367361 == v0) {
                        0x26367361();
                    } else if (0x26678dcd == v0) {
                        0x26678dcd();
                    } else if (0x2c8958f6 != v0) {
                        if (0x3dd5cfd1 == v0) {
                            0x3dd5cfd1();
                        } else if (0x3e88c8ab == v0) {
                            d3MMSwapCallBack(address,uint256,bytes);
                        } else if (0x454c96c2 == v0) {
                            0x454c96c2();
                        } else if (0x48c95033 == v0) {
                            0x48c95033();
                        } else if (0x4b02d2f6 == v0) {
                            0x4b02d2f6();
                        } else if (0x4b64e492 == v0) {
                            execute(address);
                        } else if (0x5109d8b6 == v0) {
                            swapSolidly();
                        } else if (0x54fd4d50 == v0) {
                            version();
                        } else if (0x654b6487 != v0) {
                            if (0x6ae40711 == v0) {
                                swapUniV2();
                            } else if (0x6b4be0b9 == v0) {
                                ethBalanceOf();
                            } else if (0x6c4eca27 == v0) {
                                tokenTransfer();
                            } else if (0x6f5ec5ce == v0) {
                                0x6f5ec5ce();
                            } else if (0x7225b0d0 == v0) {
                                0x7225b0d0();
                            } else if (0x744c8c09 == v0) {
                                chargeFee();
                            } else if (0x773e7756 == v0) {
                                0x773e7756();
                            } else if (0x860a32ec == v0) {
                                limited();
                            } else if (0x91dd7346 == v0) {
                                unlockCallback(bytes);
                            } else if (0x98aed105 == v0) {
                                0x98aed105();
                            } else if (0x9df46e8c == v0) {
                                0x9df46e8c();
                            } else if (0xa1dab4eb != v0) {
                                if (0xa87a1ae8 == v0) {
                                    0xa87a1ae8();
                                } else if (0xbd46a343 == v0) {
                                    0xbd46a343();
                                } else if (0xbdb69421 == v0) {
                                    0xbdb69421();
                                } else if (0xc028b46d == v0) {
                                    0xc028b46d();
                                } else if (0xc9e75c48 == v0) {
                                    0xc9e75c48();
                                } else if (0xcd211e1e == v0) {
                                    0xcd211e1e();
                                } else if (0xceaadabb == v0) {
                                    0xceaadabb();
                                } else if (0xd6bdbf78 == v0) {
                                    tokenBalanceOf();
                                } else if (0xd9c45357 == v0) {
                                    callBytes(bytes);
                                } else if (0xe2e1d3c6 == v0) {
                                    0xe2e1d3c6();
                                } else if (0xe413f48d == v0) {
                                    curveSwapCallback(address,address,address,uint256,uint256);
                                } else if (0xee63c1e5 == v0) {
                                    swapUniV3();
                                } else if (0xee777b01 == v0) {
                                    0xee777b01();
                                } else if (0xef35c31f == v0) {
                                    0xef35c31f();
                                } else if (0xf2fa6b66 == v0) {
                                    0xf2fa6b66();
                                } else if (0xf3e98cb3 == v0) {
                                    0xf3e98cb3();
                                } else if (0xf65ca39c == v0) {
                                    0xf65ca39c();
                                } else if (0xfa461e33 != v0) {
                                    if (0xfa483e72 != v0) {
                                        if (0xfbb7cd06 == v0) {
                                            0xfbb7cd06();
                                        } else if (!(0xfd53121f - v0)) {
                                            0xfd53121f();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            swapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
