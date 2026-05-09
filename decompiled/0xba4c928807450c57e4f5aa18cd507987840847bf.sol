// Decompiled by library.dedaub.com
// 2026.04.20 07:32 UTC
// Compiled using the solidity compiler version 0.8.21


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _onMorphoFlashLoan; // STORAGE[0x1]
address _setOwner; // STORAGE[0x0] bytes 0 to 19



function 0x1163(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = new uint256[](v2);
    v3 = v2 = 1;
    v0 = v4 = 0;
    v5 = v6 = v1.data;
    while (v3) {
        v7 = new struct(8);
        v7.word0 = 0;
        v7.word1 = 0;
        v7.word2 = 0;
        v7.word3 = 0;
        v7.word4 = 0;
        v7.word5 = 0;
        v7.word6 = 0;
        v7.word7 = 0;
        MEM[v5] = v7;
        v3 = v3 - 1;
        v5 += 32;
    }
    v0 = v8 = 1;
    while (v0 < MEM[v0]) {
        require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = v9 = MEM[32 + (v0 << 5) + v0];
        v0 = v10 = address(MEM[32 + v9]) < address(MEM[64 + v9]);
        require(0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[v0 + 32] = v9;
        if (uint8(MEM[v9])) {
            v11 = v12 = 1 == uint8(MEM[v9]);
            if (1 != uint8(MEM[v9])) {
                v11 = v13 = 10 == uint8(MEM[v9]);
            }
            if (!v11) {
                if (uint8(MEM[v9]) - 2) {
                    if (uint8(MEM[v9]) - 3) {
                        v14 = v15 = 5 == uint8(MEM[v9]);
                        if (5 != uint8(MEM[v9])) {
                            v14 = v16 = 6 == uint8(MEM[v9]);
                        }
                        if (!v14) {
                            if (uint8(MEM[v9]) - 20) {
                                if (uint8(MEM[v9]) - 21) {
                                    if (uint8(MEM[v9]) - 22) {
                                        if (uint8(MEM[v9]) - 23) {
                                            require(!(uint8(MEM[v9]) - 24), Error('Unknown Flag'));
                                            v0 = v17 = 0x2a4a(v0, v9);
                                            v18, /* uint256 */ v19 = address(MEM[v0 + 64]).balanceOf(this).gas(msg.gas);
                                            require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            v20 = v21 = MEM[96 + v0];
                                        } else {
                                            v0 = v22 = 0x2883(v0, v9);
                                            v0 = v23 = 0;
                                            v24 = address(MEM[96 + v0])._BASE_TOKEN_().gas(msg.gas);
                                            require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                            v25 = MEM[64];
                                            v0 = v26 = v25 + RETURNDATASIZE();
                                            v25 = v27 = 0x3dc3(v25, v26);
                                            v28 = MEM[96 + v0];
                                            require(v0 - v25 >= 32);
                                        }
                                    } else {
                                        v0 = v29 = 0x272d(v0, v9);
                                        v20 = v30 = MEM[96 + v0];
                                        // Unknown jump to Block 0x14610x1163. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    v0 = v31 = 0x2677(v0, v9);
                                    v20 = v32 = MEM[96 + v0];
                                }
                            } else {
                                v0 = v33 = 0x24d2(v0, v9);
                                v34, /* uint256 */ v35 = address(MEM[v0 + 64]).balanceOf(this).gas(msg.gas);
                                require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                v20 = v36 = MEM[96 + v0];
                            }
                        } else {
                            v0 = v37 = 0x21f9(v0, v9);
                            v38, /* uint256 */ v39 = address(MEM[v0 + 64]).balanceOf(this).gas(msg.gas);
                            require(bool(v38), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            v20 = MEM[96 + v0];
                        }
                        MEM[MEM[64] + 68] = v0;
                        v40 = MEM[64];
                        MEM[v40] = 68;
                        MEM[v40 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(v20));
                    } else {
                        v0 = v41 = MEM[96 + v9];
                        v0 = v42 = MEM[192 + v9];
                        v0 = v43 = 0x2128(v0, v42, v0, v10, v41);
                        if (msg.sender + 0xffffffffffffffffffffffffdc75ca77f7c868fdf77998cdd07f53b7452a193c) {
                            v44 = v45 = 0;
                            v44 = v46 = new struct(6);
                            v46.word0 = bool(v0);
                            v47 = 0x390c(v0);
                            v46.word1 = v47;
                            v46.word2 = v0;
                            v46.word3 = uint8(3);
                            v46.word4 = v0;
                            v46.word5 = address(v0);
                            v48 = v49 = 32 + MEM[64];
                            v48 = v50 = 0x3bdd(v49, v46);
                            v51 = v52 = MEM[64];
                            MEM[v52] = v48 - v52 - 32;
                            MEM[v48] = 0x8154831900000000000000000000000000000000000000000000000000000000;
                            v53 = v54 = 4 + v48;
                            // Unknown jump to Block 0x32b80x1163. Refer to 3-address code (TAC);
                        } else {
                            v0 = v55 = 8531;
                            v0 = v56 = 0x390c(v0);
                            MEM[MEM[64]] = 0;
                            MEM[MEM[64] + 32] = 0;
                            MEM[MEM[64] + 64] = 0;
                            MEM[MEM[64] + 96] = 0;
                            MEM[MEM[64] + 128] = 0;
                            MEM[MEM[64] + 160] = 0;
                            v57 = address(v0).poolIdToPoolKey(v0).gas(msg.gas);
                            require(bool(v57), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        }
                    }
                } else {
                    v0 = v58 = MEM[96 + v9];
                    v0 = v59 = MEM[192 + v9];
                    v0 = v60 = 0x1ffa(v0, v59, v0, v10, v58);
                    if (msg.sender + 0xfffffffffffffffffffffffffffffffffffbbbb3a238a34ca7c7f2d1c21f7570) {
                        v44 = 0;
                        v44 = v61 = new struct(6);
                        v61.word0 = bool(v0);
                        v62 = 0x390c(v0);
                        v61.word1 = v62;
                        v61.word2 = v0;
                        v61.word3 = uint8(2);
                        v61.word4 = v0;
                        v61.word5 = address(v0);
                        v48 = 32 + MEM[64];
                        v48 = v63 = 0x3bdd(v48, v61);
                        v51 = v64 = MEM[64];
                        MEM[v64] = v48 - v64 - 32;
                        MEM[v48] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                        v53 = 4 + v48;
                    } else {
                        v0 = v65 = 8224;
                        v0 = v66 = 0x390c(v0);
                        MEM[MEM[64]] = 0;
                        MEM[MEM[64] + 32] = 0;
                        MEM[MEM[64] + 64] = 0;
                        MEM[MEM[64] + 96] = 0;
                        MEM[MEM[64] + 128] = 0;
                        v67 = 0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e.poolKeys(bytes25(v0)).gas(msg.gas);
                        require(bool(v67), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    }
                }
                require(v0 + int256.min, Panic(17)); // arithmetic overflow or underflow
                MEM[v53] = 32;
                v68 = v53 + 32;
                // Unknown jump to Block 0x328d0x1163. Refer to 3-address code (TAC);
                MEM[v48] = 32;
                MEM[v48 + 32] = bool(MEM[v44]);
                MEM[v48 + 64] = MEM[v44 + 32];
                MEM[v48 + 96] = MEM[v44 + 64];
                MEM[v48 + 128] = uint8(MEM[v44 + 96]);
                MEM[v48 + 160] = 192;
            } else {
                v0 = v69 = 4910;
                v0 = v70 = MEM[96 + v9];
                v0 = v71 = 0x1eb6(v0, v0, v10, v70);
                v0 = v72 = 0;
                if (v0) {
                    v73 = v74 = 0x3aed(1, 0x1000276a3);
                } else {
                    v73 = v75 = 0x3acd(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                }
                v76 = 0;
                v76 = v77 = new struct(4);
                v77.word0 = bool(v0);
                require(0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v77.word1 = address(MEM[32 + MEM[32 + v0]]);
                v77.word2 = 0;
                v77.word3 = v0;
                v78 = 32 + MEM[64];
                v73 = v79 = 8013;
                v78 = v80 = 0x3988(v78, v77);
                v51 = MEM[64];
                MEM[v51] = v78 - v51 - 32;
                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = address(this);
                MEM[4 + MEM[64] + 32] = bool(v0);
                MEM[4 + MEM[64] + 64] = v0;
                MEM[4 + MEM[64] + 96] = address(v73);
                MEM[4 + MEM[64] + 128] = 160;
                v68 = v81 = 4 + MEM[64] + 160;
                MEM[v78] = 32;
                MEM[v78 + 32] = bool(MEM[v76]);
                MEM[v78 + 64] = address(MEM[v76 + 32]);
                MEM[v78 + 96] = MEM[v76 + 64];
                MEM[v78 + 128] = 128;
            }
        } else {
            v0 = v82 = v0 > 1;
            if (v82) {
                v83 = _SafeSub(v0, 1);
                require(v83 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v0 = v84 = 0 == uint8(MEM[MEM[32 + (v83 << 5) + v0]]);
            }
            v0 = v85 = 0;
            v86 = _SafeAdd(1, v0);
            v87 = v88 = v86 < MEM[v0];
            if (v88) {
                v89 = _SafeAdd(1, v0);
                require(v89 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v87 = v90 = 0 == uint8(MEM[MEM[32 + (v89 << 5) + v0]]);
            }
            if (v87) {
                v91 = _SafeAdd(1, v0);
                require(v91 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v0 = v92 = MEM[96 + MEM[32 + (v91 << 5) + v0]];
            }
            v0 = v93 = 0x2b2e(v0, v0, v0, v9);
            v94 = address(MEM[96 + v0]).getReserves().gas(msg.gas);
            require(bool(v94), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v95 = MEM[64];
            v96 = v95 + RETURNDATASIZE();
            v97 = v98 = 11157;
            v95 = v99, v96 = v100, v97 = v101 = 0x393c(v95, v96);
            if (v0) {
                if (address(MEM[32 + v0]) >= address(MEM[64 + v0])) {
                    v102, /* uint256 */ v103 = address(MEM[v0 + 32]).balanceOf(address(MEM[v0 + 96])).gas(msg.gas);
                    require(bool(v102), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    v104 = _SafeSub(v103, uint112(v96));
                    v105 = _SafeMul(v104, MEM[128 + v0]);
                    v106 = _SafeMul(10000, uint112(v96));
                    v107 = _SafeAdd(v106, v105);
                    v108 = _SafeMul(v104, MEM[128 + v0]);
                    v109 = _SafeMul(v108, uint112(v97));
                    v110 = v111 = _SafeDiv(v109, v107);
                } else {
                    v112, /* uint256 */ v113 = address(MEM[v0 + 32]).balanceOf(address(MEM[v0 + 96])).gas(msg.gas);
                    require(bool(v112), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    v114 = _SafeSub(v113, uint112(v97));
                    v115 = _SafeMul(v114, MEM[128 + v0]);
                    v116 = _SafeMul(10000, uint112(v97));
                    v117 = _SafeAdd(v116, v115);
                    v118 = _SafeMul(v114, MEM[128 + v0]);
                    v119 = _SafeMul(v118, uint112(v96));
                    v110 = v120 = _SafeDiv(v119, v117);
                }
                if (!address(v0)) {
                    v0 = v121 = this;
                }
                if (address(MEM[32 + v0]) >= address(MEM[64 + v0])) {
                    v51 = v122 = MEM[64];
                    v110 = v123 = 0;
                    MEM[v122] = v123;
                    MEM[64] = v122 + 32;
                    MEM[v122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    v124 = v125 = v122 + 36;
                } else {
                    v51 = v126 = MEM[64];
                    v110 = 0;
                    MEM[v126] = v110;
                    MEM[64] = v126 + 32;
                    MEM[v126 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    v124 = v126 + 36;
                }
                MEM[v124] = v110;
                MEM[v124 + 32] = v110;
                MEM[v124 + 64] = address(v0);
                MEM[v124 + 96] = 128;
                v68 = v127 = v124 + 128;
            } else {
                v28 = v128 = MEM[96 + v0];
            }
            require(v96 - v95 >= 96);
        }
        MEM[MEM[64] + 68] = v0;
        v40 = v129 = MEM[64];
        MEM[v129] = 68;
        MEM[64] = MEM[64] + 100;
        MEM[v129 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v28));
        require(v0 + 1, Panic(17)); // arithmetic overflow or underflow
        v0 += 1;
        MEM[v68] = MEM[v51];
    }
    return ;
}

function 0x1461(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4 = varg2.approve(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v5 = v6 = 96;
    } else {
        v5 = v7 = new bytes[](RETURNDATASIZE());
        v3 = v7.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v8 = v9 = !v2;
    if (v2) {
        v8 = v10 = bool(MEM[v5]);
        if (MEM[v5]) {
            require(v4 + MEM[v5] - v4 >= 32);
            require(MEM[v4] == bool(MEM[v4]));
            v8 = v11 = !MEM[v4];
        }
    }
    if (v8) {
        v12 = v13 = 0;
        while (v12 < 68) {
            MEM[v12 + MEM[64]] = MEM[v12 + (MEM[64] + 32)];
            v12 += 32;
        }
        MEM[68 + MEM[64]] = 0;
        v14, /* uint256 */ v15 = varg2.approve(varg1, 0).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v16 = new bytes[](RETURNDATASIZE());
            v15 = v16.data;
            RETURNDATACOPY(v15, 0, RETURNDATASIZE());
        }
        v17 = v18 = 0;
        while (v17 < 68) {
            MEM[v17 + MEM[64]] = MEM[v17 + (MEM[64] + 32)];
            v17 += 32;
        }
        MEM[68 + MEM[64]] = 0;
        v19 = v20, /* uint256 */ v21, /* uint256 */ v22 = varg2.approve(varg1, varg0).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v23 = v24 = 96;
        } else {
            v23 = v25 = new bytes[](RETURNDATASIZE());
            v21 = v25.data;
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
        }
        if (v20) {
            v19 = v26 = !MEM[v23];
            if (MEM[v23]) {
                require(v22 + MEM[v23] - v22 >= 32);
                v19 = MEM[v22];
                require(v19 == bool(v19));
            }
        }
        require(v19, Error(21313));
    }
    return ;
}

function 0x16b7(uint256 varg0, uint256 varg1, uint256 varg2, bytes25 varg3) private { 
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    v0, /* address */ v1, /* address */ v1, /* uint24 */ v2, /* int24 */ v3, /* address */ v4 = 0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e.poolKeys(varg3).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
    require(v1 == address(v1));
    require(v1 == address(v1));
    require(v2 == uint24(v2));
    require(v3 == int24(v3));
    require(v4 == address(v4));
    MEM[64] = MEM[64] + 160;
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[64] = MEM[64] + 160;
    if (!varg2) {
    }
    v5 = v6 = 0;
    if (varg1 < v6) {
        if (varg2) {
            v7 = v8 = 0x3aed(1, 0x1000276a3);
        } else {
            v7 = v9 = 0x3acd(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
        }
        v10 = new uint256[](0);
        v11, v12 = address(0x4444c5dc75cb358380d2e3de08a90).swap(address(v1), address(v1), uint24(v2), int24(v3), address(v4), bool(varg2), varg1, address(v7), v10).gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (varg2) {
            v5 = v13 = uint128(int128(v12));
        } else {
            v5 = v14 = uint128(v12 >> 128);
        }
        require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
        v15 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v1), this, v5).gas(msg.gas);
        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (varg0.length > 1) {
            0x1163(v5, varg0);
        }
        v16 = 0x390c(varg1);
        0x2ea2(v16, v1, 0x4444c5dc75cb358380d2e3de08a90);
    }
    return v5;
}

function depositEth(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _setOwner, Error(111));
    require(this.balance >= varg0, Error(100));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x1a3a(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    v0, v1, v1, /* address */ v2, /* address */ v3, /* uint24 */ v4, /* uint256 */ v5 = varg0.poolIdToPoolKey(varg4).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 192);
    require(v1 == address(v1));
    require(v1 == address(v1));
    require(MEM[MEM[64] + 64] == address(MEM[MEM[64] + 64]));
    require(MEM[MEM[64] + 96] == address(MEM[MEM[64] + 96]));
    require(v4 == uint24(v4));
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = 0;
    if (!varg3) {
    }
    v6 = v7 = 0;
    if (varg2 < v7) {
        if (varg3) {
            v8 = v9 = 0x3aed(1, 0x1000276a3);
        } else {
            v8 = v10 = 0x3acd(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
        }
        v11 = new uint256[](0);
        v12, v13 = varg0.swap(address(v1), address(v1), address(MEM[MEM[64] + 64]), varg0, uint24(v4), MEM[MEM[64] + 160], bool(varg3), varg2, address(v8), v11).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (varg3) {
            v6 = v14 = uint128(int128(v13));
        } else {
            v6 = v15 = uint128(v13 >> 128);
        }
        require(bool(0x238a358808379702088667322f80ac48bad5e6c4.code.size));
        v16 = 0x238a358808379702088667322f80ac48bad5e6c4.take(address(v1), this, v6).gas(msg.gas);
        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (varg1.length > 1) {
            0x1163(v6, varg1);
        }
        v17 = 0x390c(varg2);
        0x2ea2(v17, v1, 0x238a358808379702088667322f80ac48bad5e6c4);
    }
    return v6;
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(this == sender, Error('sender not this'));
    v1 = 4 + data + 32 + msg.data[4 + data];
    require(v1 - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(v1 - (4 + data + 32 + data.word1) >= 128);
    v2 = new struct(4);
    require(!((v2 + 128 > uint64.max) | (v2 + 128 < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] == bool(msg.data[4 + data + 32 + data.word1]));
    v2.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v2.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v2.word2 = msg.data[64 + (4 + data + 32 + data.word1)];
    require(msg.data[4 + data + 32 + data.word1 + 96] <= uint64.max);
    v3 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 96];
    require(v3 + 31 < v1);
    require(msg.data[v3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new uint256[](msg.data[v3]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v3] << 5) + 32 + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v3] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v6 = v4.data;
    require(32 + (v3 + (msg.data[v3] << 8)) <= v1);
    v7 = v8 = v3 + 32;
    while (v7 < 32 + (v3 + (msg.data[v3] << 8))) {
        require(v1 - v7 >= uint8.max + 1);
        v9 = new struct(8);
        require(!((v9 + (uint8.max + 1) < v9) | (v9 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v7] == uint8(msg.data[v7]));
        v9.word0 = msg.data[v7];
        require(msg.data[v7 + 32] == address(msg.data[v7 + 32]));
        v9.word1 = msg.data[v7 + 32];
        require(msg.data[64 + v7] == address(msg.data[64 + v7]));
        v9.word2 = msg.data[64 + v7];
        require(msg.data[96 + v7] == address(msg.data[96 + v7]));
        v9.word3 = msg.data[96 + v7];
        v9.word4 = msg.data[128 + v7];
        require(msg.data[v7 + 160] == int24(msg.data[v7 + 160]));
        v9.word5 = msg.data[v7 + 160];
        v9.word6 = msg.data[192 + v7];
        v9.word7 = msg.data[v7 + 224];
        MEM[v5] = v9;
        v5 += 32;
        v7 += uint8.max + 1;
    }
    v2.word3 = v4;
    if (amount0 <= 0) {
    }
    if (v10.length > 1) {
        v11 = v2.word3;
        0x1163(v12, v2.word3);
    }
    0x1dc2(v2.word2, msg.sender, v2.word1);
}

function setOwner(address _owner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _setOwner, Error(111));
    _setOwner = _owner;
}

function 0x1dc2(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.transfer(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        v4 = v8.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v9 = !MEM[v6];
        if (MEM[v6]) {
            require(v5 + MEM[v6] - v5 >= 32);
            v2 = MEM[v5];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x1eb6(uint256 varg0, uint256 varg1, uint256 varg2, address varg3) private { 
    if (varg2) {
        v0 = v1 = 0x3aed(1, 0x1000276a3);
    } else {
        v0 = v2 = 0x3acd(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
    }
    v3 = new struct(4);
    v3.word0 = bool(varg2);
    require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v4 = varg0.data;
    v3.word1 = address(MEM[32 + varg0[0]]);
    v3.word2 = 0;
    v3.word3 = varg0;
    v5 = 0x3988(32 + MEM[64], v3);
    v6 = new uint256[](v5 - MEM[64] - 32);
    v7 = v8 = 0;
    while (v7 < v5 - MEM[64] - 32) {
        MEM[v7 + v6.data] = MEM[v7 + (MEM[64] + 32)];
        v7 += 32;
    }
    MEM[v5 - MEM[64] - 32 + v6.data] = 0;
    v9, /* uint256 */ v10, /* uint256 */ v10 = varg3.swap(address(this), bool(varg2), varg1, address(v0), v6).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (!varg2) {
    }
    v11 = 0x390c(v10);
    return v11;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    0x40c(data.length, data.data, amount1Delta, amount0Delta);
}

function 0x1ffa(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    if (msg.sender + 0xfffffffffffffffffffffffffffffffffffbbbb3a238a34ca7c7f2d1c21f7570) {
        v0 = new struct(6);
        v0.word0 = bool(varg3);
        v1 = 0x390c(varg2);
        v0.word1 = v1;
        v0.word2 = varg1;
        v0.word3 = uint8(2);
        v0.word4 = varg0;
        v0.word5 = varg4;
        v2 = 0x3bdd(32 + MEM[64], v0);
        MEM[v2] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
        MEM[4 + v2] = 32;
        MEM[4 + v2 + 32] = v2 - MEM[64] - 32;
        v3 = v4 = 0;
        while (v3 < v2 - MEM[64] - 32) {
            MEM[v3 + (4 + v2 + 32 + 32)] = MEM[v3 + (MEM[64] + 32)];
            v3 += 32;
        }
        MEM[v2 - MEM[64] - 32 + (4 + v2 + 32 + 32)] = 0;
        v5, /* uint256 */ v6 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1ffa0x2082_0x0 - MEM[64] - 32 + 4 + v1ffa0x2082_0x0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(MEM[MEM[64]] <= uint64.max);
        require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
        require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](MEM[MEM[64] + MEM[MEM[64]]]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
        v8 = v9 = 0;
        while (v8 < MEM[MEM[64] + MEM[MEM[64]]]) {
            v7[v8] = MEM[v8 + (MEM[64] + MEM[MEM[64]] + 32)];
            v8 += 32;
        }
        v7[MEM[MEM[64] + MEM[MEM[64]]]] = 0;
        require(v7.data + v7.length - v7.data >= 32);
        v10 = MEM[v7.data];
    } else {
        v11 = 0x390c(varg2);
        v10 = v12 = 0x16b7(varg0, v11, varg3, varg1);
    }
    return v10;
}

function 0x2ffe292e(struct(2) varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(this == msg.sender, Error('Internal only'));
    require(4 + varg0 + 32 + msg.data[4 + varg0] - (4 + varg0 + 32) >= 32);
    require(varg0.word1 <= uint64.max);
    require(4 + varg0 + 32 + varg0.word1 + 31 < 4 + varg0 + 32 + msg.data[4 + varg0]);
    require(msg.data[4 + varg0 + 32 + varg0.word1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](msg.data[4 + varg0 + 32 + varg0.word1]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[4 + varg0 + 32 + varg0.word1] << 5) + 32 + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[4 + varg0 + 32 + varg0.word1] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(32 + (4 + varg0 + 32 + varg0.word1 + (msg.data[4 + varg0 + 32 + varg0.word1] << 8)) <= 4 + varg0 + 32 + msg.data[4 + varg0]);
    v4 = v5 = 4 + varg0 + 32 + varg0.word1 + 32;
    while (v4 < 32 + (4 + varg0 + 32 + varg0.word1 + (msg.data[4 + varg0 + 32 + varg0.word1] << 8))) {
        require(4 + varg0 + 32 + msg.data[4 + varg0] - v4 >= uint8.max + 1);
        v6 = new struct(8);
        require(!((v6 + (uint8.max + 1) < v6) | (v6 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v4] == uint8(msg.data[v4]));
        v6.word0 = msg.data[v4];
        require(msg.data[v4 + 32] == address(msg.data[v4 + 32]));
        v6.word1 = msg.data[v4 + 32];
        require(msg.data[64 + v4] == address(msg.data[64 + v4]));
        v6.word2 = msg.data[64 + v4];
        require(msg.data[96 + v4] == address(msg.data[96 + v4]));
        v6.word3 = msg.data[96 + v4];
        v6.word4 = msg.data[128 + v4];
        require(msg.data[v4 + 160] == int24(msg.data[v4 + 160]));
        v6.word5 = msg.data[v4 + 160];
        v6.word6 = msg.data[192 + v4];
        v6.word7 = msg.data[v4 + 224];
        MEM[v2] = v6;
        v2 += 32;
        v4 += uint8.max + 1;
    }
    require(v1.length > 0, Error('No steps'));
    require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v7 = v1.data;
    if (uint8(MEM[v1[0]]) - uint8(99)) {
        require(v1.length > 0, Error('No steps'));
        require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v8 = v1.data;
        v9 = address(MEM[32 + v1[0]]) < address(MEM[64 + v1[0]]);
        if (uint8(MEM[v1[0]]) - uint8(0)) {
            v10 = v11 = 1 == uint8(MEM[v1[0]]);
            if (1 != uint8(MEM[v1[0]])) {
                v10 = 10 == uint8(MEM[v1[0]]);
            }
            if (!v10) {
                if (uint8(MEM[v1[0]]) - 2) {
                    if (uint8(MEM[v1[0]]) - 3) {
                        v12 = v13 = 5 == uint8(MEM[v1[0]]);
                        if (5 != uint8(MEM[v1[0]])) {
                            v12 = 6 == uint8(MEM[v1[0]]);
                        }
                        if (!v12) {
                            if (uint8(MEM[v1[0]]) - 20) {
                                if (uint8(MEM[v1[0]]) - 21) {
                                    if (uint8(MEM[v1[0]]) - 22) {
                                        if (uint8(MEM[v1[0]]) - 23) {
                                            require(!(uint8(MEM[v1[0]]) - 24), Error('Unsupported'));
                                            v14 = 0x2a4a(varg1, v1[0]);
                                        } else {
                                            v14 = v15 = 0x2883(varg1, v1[0]);
                                        }
                                    } else {
                                        v14 = v16 = 0x272d(varg1, v1[0]);
                                    }
                                } else {
                                    v14 = v17 = 0x2677(varg1, v1[0]);
                                }
                            } else {
                                v14 = v18 = 0x24d2(varg1, v1[0]);
                            }
                        } else {
                            v14 = v19 = 0x21f9(varg1, v1[0]);
                        }
                        if (v1.length > 1) {
                            0x1163(v14, v1);
                        }
                    } else {
                        v20 = 0x2128(v1, MEM[192 + v1[0]], varg1, v9, MEM[96 + v1[0]]);
                    }
                } else {
                    v21 = 0x1ffa(v1, MEM[192 + v1[0]], varg1, v9, MEM[96 + v1[0]]);
                }
            } else {
                v22 = 0x1eb6(v1, varg1, v9, MEM[96 + v1[0]]);
            }
        } else {
            v23 = address(MEM[96 + v1[0]]).getReserves().gas(msg.gas);
            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v24, v25, v26 = 0x393c(MEM[64], MEM[64] + RETURNDATASIZE());
            if (v9) {
                v27 = _SafeMul(varg1, MEM[v1[0] + 128]);
                v28 = _SafeMul(10000, uint112(v26));
                v29 = _SafeAdd(v28, v27);
                v30 = _SafeMul(varg1, MEM[128 + v1[0]]);
                v31 = _SafeMul(v30, uint112(v25));
                v32 = v33 = _SafeDiv(v31, v29);
            } else {
                v34 = _SafeMul(varg1, MEM[v1[0] + 128]);
                v35 = _SafeMul(10000, uint112(v25));
                v36 = _SafeAdd(v35, v34);
                v37 = _SafeMul(varg1, MEM[128 + v1[0]]);
                v38 = _SafeMul(v37, uint112(v26));
                v32 = v39 = _SafeDiv(v38, v36);
            }
            v40 = new struct(4);
            v40.word0 = bool(v9);
            v40.word1 = address(MEM[32 + v1[0]]);
            v40.word2 = varg1;
            v40.word3 = v1;
            v41 = 0x3988(32 + MEM[64], v40);
            if (address(MEM[32 + v1[0]]) >= address(MEM[64 + v1[0]])) {
                v42 = new uint256[](v41 - MEM[64] - 32);
                v43 = v44 = 0;
                while (v43 < v41 - MEM[64] - 32) {
                    MEM[v43 + v42.data] = MEM[v43 + (MEM[64] + 32)];
                    v43 += 32;
                }
                MEM[v41 - MEM[64] - 32 + v42.data] = 0;
                require(bool((address(MEM[96 + v1[0]])).code.size));
                v45 = address(MEM[96 + v1[0]]).swap(v32, 0, address(this), v42).gas(msg.gas);
                require(bool(v45), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else {
                v46 = new uint256[](v41 - MEM[64] - 32);
                v47 = v48 = 0;
                while (v47 < v41 - MEM[64] - 32) {
                    MEM[v47 + v46.data] = MEM[v47 + (MEM[64] + 32)];
                    v47 += 32;
                }
                MEM[v41 - MEM[64] - 32 + v46.data] = 0;
                require(bool((address(MEM[96 + v1[0]])).code.size));
                v49 = address(MEM[96 + v1[0]]).swap(0, v32, address(this), v46).gas(msg.gas);
                require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
        }
    } else {
        MEM[32 + MEM[64]] = 32;
        MEM[32 + MEM[64] + 32] = v1.length;
        v50 = v51 = 32 + MEM[64] + 32 + 32;
        v52 = v53 = v1.data;
        v54 = 0;
        while (v54 < v1.length) {
            MEM[v50] = uint8(MEM[MEM[v52]]);
            MEM[v50 + 32] = address(MEM[MEM[v52] + 32]);
            MEM[v50 + 64] = address(MEM[MEM[v52] + 64]);
            MEM[v50 + 96] = address(MEM[MEM[v52] + 96]);
            MEM[v50 + 128] = MEM[MEM[v52] + 128];
            MEM[v50 + 160] = int24(MEM[MEM[v52] + 160]);
            MEM[v50 + 192] = MEM[192 + MEM[v52]];
            MEM[v50 + 224] = MEM[224 + MEM[v52]];
            v50 = v50 + (uint8.max + 1);
            v52 += 32;
            v54 += 1;
        }
        require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v55 = v1.data;
        require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v56 = v1.data;
        v57 = new uint256[](v50 - MEM[64] - 32);
        v58 = v59 = 0;
        while (v58 < v50 - MEM[64] - 32) {
            MEM[v58 + v57.data] = MEM[v58 + (MEM[64] + 32)];
            v58 += 32;
        }
        MEM[v50 - MEM[64] - 32 + v57.data] = 0;
        require(bool((address(MEM[96 + v1[0]])).code.size));
        v60 = address(MEM[96 + v1[0]]).flashLoan(address(MEM[32 + v1[0]]), varg1, v57).gas(msg.gas);
        require(bool(v60), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x2128(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (msg.sender + 0xffffffffffffffffffffffffdc75ca77f7c868fdf77998cdd07f53b7452a193c) {
        v0 = new struct(6);
        v0.word0 = bool(varg3);
        v1 = 0x390c(varg2);
        v0.word1 = v1;
        v0.word2 = varg1;
        v0.word3 = uint8(3);
        v0.word4 = varg0;
        v0.word5 = address(varg4);
        v2 = 0x3bdd(32 + MEM[64], v0);
        MEM[v2] = 0x8154831900000000000000000000000000000000000000000000000000000000;
        MEM[4 + v2] = 32;
        MEM[4 + v2 + 32] = v2 - MEM[64] - 32;
        v3 = v4 = 0;
        while (v3 < v2 - MEM[64] - 32) {
            MEM[v3 + (4 + v2 + 32 + 32)] = MEM[v3 + (MEM[64] + 32)];
            v3 += 32;
        }
        MEM[v2 - MEM[64] - 32 + (4 + v2 + 32 + 32)] = 0;
        v5, /* uint256 */ v6 = 0x238a358808379702088667322f80ac48bad5e6c4.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v21280x21af_0x0 - MEM[64] - 32 + 4 + v21280x21af_0x0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(MEM[MEM[64]] <= uint64.max);
        require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
        require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](MEM[MEM[64] + MEM[MEM[64]]]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
        v8 = v9 = 0;
        while (v8 < MEM[MEM[64] + MEM[MEM[64]]]) {
            v7[v8] = MEM[v8 + (MEM[64] + MEM[MEM[64]] + 32)];
            v8 += 32;
        }
        v7[MEM[MEM[64] + MEM[MEM[64]]]] = 0;
        require(v7.data + v7.length - v7.data >= 32);
        v10 = MEM[v7.data];
    } else {
        v11 = 0x390c(varg2);
        v10 = v12 = 0x1a3a(varg4, varg0, v11, varg3, varg1);
    }
    return v10;
}

function 0x21f9(uint256 varg0, uint256 varg1) private { 
    v0 = MEM[varg1 + 128];
    v1, /* uint256 */ v2 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1461(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v3 = v4 = 0;
    if (uint8(MEM[varg1]) - uint8(5)) {
        if (!(uint8(MEM[varg1]) - 6)) {
            v5 = v6 = 0;
            while (v5 < 132) {
                MEM[v5 + MEM[64]] = MEM[v5 + (MEM[64] + 32)];
                v5 += 32;
            }
            MEM[132 + MEM[64]] = 0;
            v3 = v7, /* uint256 */ v8 = address(MEM[varg1 + 96]).setMetaGold(v0, 0x5b41b90800000000000000000000000000000000000000000000000000000000 | uint224(v0), int24(MEM[varg1 + 160]), varg0, MEM[varg1 + 224]).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v9 = new bytes[](RETURNDATASIZE());
                v8 = v9.data;
                RETURNDATACOPY(v8, 0, RETURNDATASIZE());
            }
        }
    } else {
        v10 = v11 = 0;
        while (v10 < 132) {
            MEM[v10 + MEM[64]] = MEM[v10 + (MEM[64] + 32)];
            v10 += 32;
        }
        MEM[132 + MEM[64]] = 0;
        v3 = v12, /* uint256 */ v13 = address(MEM[varg1 + 96]).exchange(v0, 0x3df0212400000000000000000000000000000000000000000000000000000000 | uint224(v0), int24(MEM[varg1 + 160]), varg0, MEM[varg1 + 224]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v14 = new bytes[](RETURNDATASIZE());
            v13 = v14.data;
            RETURNDATACOPY(v13, 0, RETURNDATASIZE());
        }
    }
    require(v3, Error('Curve Failed'));
    v15, /* uint256 */ v16 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v17 = _SafeSub(v16, v2);
    return v17;
}

function onMorphoFlashLoan(uint256 varg0, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_onMorphoFlashLoan[tx.origin], Error(101));
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + data.word1 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](msg.data[4 + data + 32 + data.word1]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[4 + data + 32 + data.word1] << 5) + 32 + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[4 + data + 32 + data.word1] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(32 + (4 + data + 32 + data.word1 + (msg.data[4 + data + 32 + data.word1] << 8)) <= 4 + data + 32 + msg.data[4 + data]);
    v4 = v5 = 4 + data + 32 + data.word1 + 32;
    while (v4 < 32 + (4 + data + 32 + data.word1 + (msg.data[4 + data + 32 + data.word1] << 8))) {
        require(4 + data + 32 + msg.data[4 + data] - v4 >= uint8.max + 1);
        v6 = new struct(8);
        require(!((v6 + (uint8.max + 1) < v6) | (v6 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v4] == uint8(msg.data[v4]));
        v6.word0 = msg.data[v4];
        require(msg.data[v4 + 32] == address(msg.data[v4 + 32]));
        v6.word1 = msg.data[v4 + 32];
        require(msg.data[64 + v4] == address(msg.data[64 + v4]));
        v6.word2 = msg.data[64 + v4];
        require(msg.data[96 + v4] == address(msg.data[96 + v4]));
        v6.word3 = msg.data[96 + v4];
        v6.word4 = msg.data[128 + v4];
        require(msg.data[v4 + 160] == int24(msg.data[v4 + 160]));
        v6.word5 = msg.data[v4 + 160];
        v6.word6 = msg.data[192 + v4];
        v6.word7 = msg.data[v4 + 224];
        MEM[v2] = v6;
        v2 += 32;
        v4 += uint8.max + 1;
    }
    require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v7 = v1.data;
    require(msg.sender == address(MEM[96 + v1[0]]), Error('Unauthorized'));
    if (v1.length > 1) {
        0x1163(varg0, v1);
    }
    require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v8 = v1.data;
    0x1461(varg0, msg.sender, MEM[32 + v1[0]]);
}

function 0x24d2(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1461(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v2, /* uint256 */ v3 = address(MEM[varg1 + 96]).tradeBySourceAmount(address(MEM[varg1 + 32]), address(MEM[varg1 + 64]), varg0, MEM[varg1 + 224], block.timestamp, this).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v4, /* uint256 */ v5 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v5, v1);
    return v6;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    v0 = 0x676(rawData.length, rawData.data);
    v1 = new uint256[](MEM[v0]);
    v2 = v3 = 0;
    while (v2 < MEM[v0]) {
        MEM[v2 + v1.data] = MEM[v2 + (v0 + 32)];
        v2 += 32;
    }
    MEM[MEM[v0] + v1.data] = 0;
    return v1;
}

function 0x2677(uint256 varg0, uint256 varg1) private { 
    0x1461(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v0, /* uint256 */ v1, /* uint256 */ v2 = address(MEM[varg1 + 96]).swapExactAmountIn(address(MEM[varg1 + 32]), varg0, address(MEM[varg1 + 64]), MEM[varg1 + 224], uint256.max).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    return v1;
}

function 0x272d(uint256 varg0, uint256 varg1) private { 
    0x1461(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v0 = new struct(6);
    v0.word0 = MEM[192 + varg1];
    require(0 <= 1, Panic(33)); // failed convertion to enum type
    v0.word1 = 0;
    v0.word2 = address(MEM[32 + varg1]);
    v0.word3 = address(MEM[64 + varg1]);
    v0.word4 = varg0;
    require(0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new struct(1);
    v1.word0 = 0;
    if (0) {
        CALLDATACOPY(v1.data, msg.data.length, 0);
        v2 = v1.data;
    }
    v0.word5 = v1;
    v3 = new uint256[](v0.word0);
    require(v0.word1 < 2, Panic(33)); // failed convertion to enum type
    MEM[v3.data] = v0.word1;
    v4 = v5 = 0;
    while (v4 < v6.length) {
        MEM[v4 + (4 + MEM[64] + 416 + 32)] = v6[v4];
        v4 += 32;
    }
    MEM[v6.length + (4 + MEM[64] + 416 + 32)] = 0;
    v7, /* uint256 */ v8 = address(MEM[varg1 + 96]).swap(v3, address(this), False, address(this), False, MEM[varg1 + 224], block.timestamp, v9, v9, address(v0.word2), address(v0.word3), v0.word4, 192, v6.length).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v8;
}

function setOp(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _setOwner, Error(111));
    _onMorphoFlashLoan[account] = 1;
}

function 0x2883(uint256 varg0, uint256 varg1) private { 
    v0 = address(MEM[96 + varg1])._BASE_TOKEN_().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = 0x3dc3(MEM[64], MEM[64] + RETURNDATASIZE());
    0x1dc2(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    if (address(MEM[32 + varg1]) - address(v1)) {
        v2, /* uint256 */ v3 = address(MEM[varg1 + 96]).sellQuote(this).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v4, /* uint256 */ v3 = address(MEM[varg1 + 96]).sellBase(this).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    require(v3 >= MEM[224 + varg1], Error('GSP: Slippage'));
    return v3;
}

function lockAcquired(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(0x238a358808379702088667322f80ac48bad5e6c4 == msg.sender, Error('Unauthorized'));
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 32);
    require(rawData.word1 <= uint64.max);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32 + rawData.word1) >= 192);
    v1 = new struct(6);
    require(!((v1 + 192 < v1) | (v1 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + rawData + 32 + rawData.word1] == bool(msg.data[4 + rawData + 32 + rawData.word1]));
    v1.word0 = msg.data[4 + rawData + 32 + rawData.word1];
    v1.word1 = msg.data[4 + rawData + 32 + rawData.word1 + 32];
    v1.word2 = msg.data[4 + rawData + 32 + rawData.word1 + 64];
    require(msg.data[4 + rawData + 32 + rawData.word1 + 96] == uint8(msg.data[4 + rawData + 32 + rawData.word1 + 96]));
    v1.word3 = msg.data[4 + rawData + 32 + rawData.word1 + 96];
    require(msg.data[4 + rawData + 32 + rawData.word1 + 128] <= uint64.max);
    v2 = 4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 128];
    require(v2 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v2] << 5) + 32 + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v2] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(32 + (v2 + (msg.data[v2] << 8)) <= 4 + rawData + 32 + msg.data[4 + rawData]);
    v6 = v7 = v2 + 32;
    while (v6 < 32 + (v2 + (msg.data[v2] << 8))) {
        require(4 + rawData + 32 + msg.data[4 + rawData] - v6 >= uint8.max + 1);
        v8 = new struct(8);
        require(!((v8 + (uint8.max + 1) < v8) | (v8 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v6] == uint8(msg.data[v6]));
        v8.word0 = msg.data[v6];
        require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
        v8.word1 = msg.data[v6 + 32];
        require(msg.data[64 + v6] == address(msg.data[64 + v6]));
        v8.word2 = msg.data[64 + v6];
        require(msg.data[96 + v6] == address(msg.data[96 + v6]));
        v8.word3 = msg.data[96 + v6];
        v8.word4 = msg.data[128 + v6];
        require(msg.data[v6 + 160] == int24(msg.data[v6 + 160]));
        v8.word5 = msg.data[v6 + 160];
        v8.word6 = msg.data[192 + v6];
        v8.word7 = msg.data[v6 + 224];
        MEM[v4] = v8;
        v4 += 32;
        v6 += uint8.max + 1;
    }
    v1.word4 = v3;
    require(msg.data[4 + rawData + 32 + rawData.word1 + 160] == address(msg.data[4 + rawData + 32 + rawData.word1 + 160]));
    v1.word5 = msg.data[4 + rawData + 32 + rawData.word1 + 160];
    v9 = v1.word4;
    v10 = 0x1a3a(v1.word5, v1.word4, v1.word1, v1.word0, v1.word2);
    MEM[32 + MEM[64]] = v10;
    MEM[MEM[64]] = 32;
}

function 0x2a4a(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1461(varg0, MEM[96 + varg1], MEM[32 + varg1]);
    v2, /* uint256 */ v3 = address(MEM[varg1 + 96]).swap(address(MEM[varg1 + 32]), address(MEM[varg1 + 64]), varg0, MEM[varg1 + 224], this).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v4, /* uint256 */ v5 = address(MEM[varg1 + 64]).balanceOf(this).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v5, v1);
    return v6;
}

function 0x2b2e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = address(MEM[96 + varg3]).getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1, v2, v3 = 0x393c(MEM[64], MEM[64] + RETURNDATASIZE());
    if (!varg0) {
        0x1dc2(varg2, MEM[96 + varg3], MEM[32 + varg3]);
    }
    if (address(MEM[32 + varg3]) >= address(MEM[64 + varg3])) {
        v4, /* uint256 */ v5 = address(MEM[varg3 + 32]).balanceOf(address(MEM[varg3 + 96])).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v6 = _SafeSub(v5, uint112(v2));
        v7 = _SafeMul(v6, MEM[128 + varg3]);
        v8 = _SafeMul(10000, uint112(v2));
        v9 = _SafeAdd(v8, v7);
        v10 = _SafeMul(v6, MEM[128 + varg3]);
        v11 = _SafeMul(v10, uint112(v3));
        v12 = v13 = _SafeDiv(v11, v9);
    } else {
        v14, /* uint256 */ v15 = address(MEM[varg3 + 32]).balanceOf(address(MEM[varg3 + 96])).gas(msg.gas);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v16 = _SafeSub(v15, uint112(v3));
        v17 = _SafeMul(v16, MEM[128 + varg3]);
        v18 = _SafeMul(10000, uint112(v3));
        v19 = _SafeAdd(v18, v17);
        v20 = _SafeMul(v16, MEM[128 + varg3]);
        v21 = _SafeMul(v20, uint112(v2));
        v12 = v22 = _SafeDiv(v21, v19);
    }
    if (!address(varg1)) {
        varg1 = v23 = this;
    }
    if (address(MEM[32 + varg3]) >= address(MEM[64 + varg3])) {
        v24 = new uint256[](0);
        v25 = v26 = 0;
        while (v25 < 0) {
            MEM[v25 + v24.data] = MEM[v25 + (MEM[64] + 32)];
            v25 += 32;
        }
        MEM[v24.data] = 0;
        require(bool((address(MEM[varg3 + 96])).code.size));
        v27 = address(MEM[varg3 + 96]).swap(v12, 0, address(varg1), v24).gas(msg.gas);
        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v28 = new uint256[](0);
        v29 = v30 = 0;
        while (v29 < 0) {
            MEM[v29 + v28.data] = MEM[v29 + (MEM[64] + 32)];
            v29 += 32;
        }
        MEM[v28.data] = 0;
        require(bool((address(MEM[varg3 + 96])).code.size));
        v31 = address(MEM[varg3 + 96]).swap(0, v12, address(varg1), v28).gas(msg.gas);
        require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    return v12;
}

function 0xddd74a32(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);
    require(_onMorphoFlashLoan[msg.sender], Error(112));
    v0 = v1 = bool(varg0.length);
    if (varg0.length) {
        v0 = varg0.length == varg1.length;
    }
    require(v0, Error('Invalid len'));
    v2 = v3 = 0;
    while (v2 < varg0.length) {
        require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v2] < msg.data.length - varg0.data - 31);
        require(msg.data[varg0.data + varg0[v2]] <= uint64.max);
        require(32 + (varg0.data + varg0[v2]) <= msg.data.length - msg.data[varg0.data + varg0[v2]]);
        if (msg.data[varg0.data + varg0[v2]] > 0) {
            require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg0[v2] < msg.data.length - varg0.data - 31);
            require(msg.data[varg0.data + varg0[v2]] <= uint64.max);
            require(32 + (varg0.data + varg0[v2]) <= msg.data.length - msg.data[varg0.data + varg0[v2]]);
            require(v2 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v4 = new uint256[](msg.data[varg0.data + varg0[v2]]);
            CALLDATACOPY(v4.data, 32 + (varg0.data + varg0[v2]), msg.data[varg0.data + varg0[v2]]);
            MEM[4 + MEM[64] + msg.data[varg0.data + varg0[v2]] + 96] = 0;
            require(bool(this.code.size));
            v5 = v6 = this.call(uint32(0x2ffe292e), v4, varg1[v2]).gas(msg.gas);
            if (v6) {
                v5 = 1;
            }
            if (!v5) {
                break;
            }
        }
        v2 += 1;
    }
    v7, /* uint256 */ v8 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v8 > 0, Error(20048));
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v9 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v8).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v10 = _SafeSub(msg.gas, msg.gas);
    v11 = _SafeAdd(varg3, v10);
    v12 = _SafeMul(v11, tx.gasprice);
    require(v8 > v12, Error(20039));
    v13 = _SafeSub(v8, v12);
    v14 = _SafeMul(v13, varg2);
    v15 = _SafeDiv(v14, 10000);
    v16 = _SafeSub(v8, v15);
    if (v16) {
        v17, /* uint256 */ v18 = _setOwner.call().value(v16).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v19 = new bytes[](RETURNDATASIZE());
            v18 = v19.data;
            RETURNDATACOPY(v18, 0, RETURNDATASIZE());
        }
        require(v17, Error('send On failed'));
    }
    if (v15) {
        v20, /* uint256 */ v21 = block.coinbase.call().value(v15).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v22 = new bytes[](RETURNDATASIZE());
            v21 = v22.data;
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
        }
        require(v20, Error('bribe failed'));
    }
}

function 0x2ea2(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(bool((address(varg2)).code.size));
    v0 = address(varg2).sync(address(varg1)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = v2 = !address(varg1);
    if (address(varg1)) {
        v1 = v3 = !address(varg1);
    }
    if (!v1) {
        v4 = v5 = 12264;
        0x1dc2(varg0, varg2, varg1);
        MEM[MEM[64] + 68] = varg0;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(varg2));
        v6, /* uint256 */ v7 = address(varg2).settle().gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v8 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg0).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v9, /* uint256 */ v10 = address(varg2).settle().value(varg0).gas(msg.gas);
        require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    return ;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x390c(uint256 varg0) private { 
    require(varg0 + int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x393c(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(MEM[varg0] == uint112(MEM[varg0]));
    require(MEM[varg0 + 32] == uint112(MEM[varg0 + 32]));
    require(MEM[varg0 + 64] == uint32(MEM[varg0 + 64]));
    return MEM[varg0 + 64], MEM[varg0 + 32], MEM[varg0];
}

function 0x3988(uint256 varg0, struct(4) varg1) private { 
    MEM[varg0] = 32;
    MEM[varg0 + 32] = bool(varg1.word0);
    MEM[varg0 + 64] = address(varg1.word1);
    MEM[varg0 + 96] = varg1.word2;
    MEM[varg0 + 128] = 128;
    MEM[varg0 + 160] = v0.length;
    v1 = v2 = varg0 + 160 + 32;
    v3 = v4 = v0.data;
    v5 = 0;
    while (v5 < v0.length) {
        MEM[v1] = uint8(MEM[MEM[v3]]);
        MEM[v1 + 32] = address(MEM[MEM[v3] + 32]);
        MEM[v1 + 64] = address(MEM[MEM[v3] + 64]);
        MEM[v1 + 96] = address(MEM[MEM[v3] + 96]);
        MEM[v1 + 128] = MEM[MEM[v3] + 128];
        MEM[v1 + 160] = int24(MEM[MEM[v3] + 160]);
        MEM[v1 + 192] = MEM[192 + MEM[v3]];
        MEM[v1 + 224] = MEM[224 + MEM[v3]];
        v1 = v1 + (uint8.max + 1);
        v3 += 32;
        v5 += 1;
    }
    return v1;
}

function 0x3acd(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x3aed(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x3bdd(uint256 varg0, struct(6) varg1) private { 
    MEM[varg0] = 32;
    MEM[varg0 + 32] = bool(varg1.word0);
    MEM[varg0 + 64] = varg1.word1;
    MEM[varg0 + 96] = varg1.word2;
    MEM[varg0 + 128] = uint8(varg1.word3);
    MEM[varg0 + 160] = 192;
    MEM[varg0 + 224] = v0.length;
    v1 = v2 = varg0 + 224 + 32;
    v3 = v4 = v0.data;
    v5 = 0;
    while (v5 < v0.length) {
        MEM[v1] = uint8(MEM[MEM[v3]]);
        MEM[v1 + 32] = address(MEM[MEM[v3] + 32]);
        MEM[v1 + 64] = address(MEM[MEM[v3] + 64]);
        MEM[v1 + 96] = address(MEM[MEM[v3] + 96]);
        MEM[v1 + 128] = MEM[MEM[v3] + 128];
        MEM[v1 + 160] = int24(MEM[MEM[v3] + 160]);
        MEM[v1 + 192] = MEM[192 + MEM[v3]];
        MEM[v1 + 224] = MEM[224 + MEM[v3]];
        v1 = v1 + (uint8.max + 1);
        v3 += 32;
        v5 += 1;
    }
    MEM[192 + varg0] = address(varg1.word5);
    return v1;
}

function 0x3dc3(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] == address(MEM[varg0]));
    return MEM[varg0];
}

function 0x40c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(_onMorphoFlashLoan[tx.origin], Error(101));
    v0 = varg1 + varg0;
    require(v0 - varg1 >= 32);
    require(msg.data[varg1] <= uint64.max);
    v1 = varg1 + msg.data[varg1];
    require(v0 - v1 >= 128);
    v2 = new struct(4);
    require(!((v2 + 128 > uint64.max) | (v2 + 128 < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v1] == bool(msg.data[v1]));
    v2.word0 = msg.data[v1];
    require(msg.data[v1 + 32] == address(msg.data[v1 + 32]));
    v2.word1 = msg.data[v1 + 32];
    v2.word2 = msg.data[64 + v1];
    require(msg.data[v1 + 96] <= uint64.max);
    require(v1 + msg.data[v1 + 96] + 31 < v0);
    require(msg.data[v1 + msg.data[v1 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v1 + msg.data[v1 + 96]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v1 + msg.data[v1 + 96]] << 5) + 32 + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v1 + msg.data[v1 + 96]] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(32 + (v1 + msg.data[v1 + 96] + (msg.data[v1 + msg.data[v1 + 96]] << 8)) <= v0);
    v6 = v7 = v1 + msg.data[v1 + 96] + 32;
    while (v6 < 32 + (v1 + msg.data[v1 + 96] + (msg.data[v1 + msg.data[v1 + 96]] << 8))) {
        require(v0 - v6 >= uint8.max + 1);
        v8 = new struct(8);
        require(!((v8 + (uint8.max + 1) < v8) | (v8 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v6] == uint8(msg.data[v6]));
        v8.word0 = msg.data[v6];
        require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
        v8.word1 = msg.data[v6 + 32];
        require(msg.data[64 + v6] == address(msg.data[64 + v6]));
        v8.word2 = msg.data[64 + v6];
        require(msg.data[96 + v6] == address(msg.data[96 + v6]));
        v8.word3 = msg.data[96 + v6];
        v8.word4 = msg.data[128 + v6];
        require(msg.data[v6 + 160] == int24(msg.data[v6 + 160]));
        v8.word5 = msg.data[v6 + 160];
        v8.word6 = msg.data[192 + v6];
        v8.word7 = msg.data[v6 + 224];
        MEM[v4] = v8;
        v4 += 32;
        v6 += uint8.max + 1;
    }
    v2.word3 = v3;
    if (!v2.word0) {
    }
    if (v2.word0) {
        v9 = 0x390c(varg2);
    } else {
        v9 = v10 = 0x390c(varg3);
    }
    if (v11.length > 1) {
        v12 = v2.word3;
        0x1163(v9, v2.word3);
    }
    0x1dc2(varg2, msg.sender, v2.word1);
    return ;
}

function 0x676(uint256 varg0, uint256 varg1) private { 
    require(0x4444c5dc75cb358380d2e3de08a90 == msg.sender, Error('Unauthorized'));
    v0 = varg1 + varg0;
    require(v0 - varg1 >= 32);
    require(msg.data[varg1] <= uint64.max);
    v1 = varg1 + msg.data[varg1];
    require(v0 - v1 >= 192);
    v2 = new struct(6);
    require(!((v2 + 192 < v2) | (v2 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v1] == bool(msg.data[v1]));
    v2.word0 = msg.data[v1];
    v2.word1 = msg.data[v1 + 32];
    v2.word2 = msg.data[v1 + 64];
    require(msg.data[v1 + 96] == uint8(msg.data[v1 + 96]));
    v2.word3 = msg.data[v1 + 96];
    require(msg.data[v1 + 128] <= uint64.max);
    require(v1 + msg.data[v1 + 128] + 31 < v0);
    require(msg.data[v1 + msg.data[v1 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v1 + msg.data[v1 + 128]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v1 + msg.data[v1 + 128]] << 5) + 32 + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v1 + msg.data[v1 + 128]] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(32 + (v1 + msg.data[v1 + 128] + (msg.data[v1 + msg.data[v1 + 128]] << 8)) <= v0);
    v6 = v7 = v1 + msg.data[v1 + 128] + 32;
    while (v6 < 32 + (v1 + msg.data[v1 + 128] + (msg.data[v1 + msg.data[v1 + 128]] << 8))) {
        require(v0 - v6 >= uint8.max + 1);
        v8 = new struct(8);
        require(!((v8 + (uint8.max + 1) < v8) | (v8 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v6] == uint8(msg.data[v6]));
        v8.word0 = msg.data[v6];
        require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
        v8.word1 = msg.data[v6 + 32];
        require(msg.data[64 + v6] == address(msg.data[64 + v6]));
        v8.word2 = msg.data[64 + v6];
        require(msg.data[96 + v6] == address(msg.data[96 + v6]));
        v8.word3 = msg.data[96 + v6];
        v8.word4 = msg.data[128 + v6];
        require(msg.data[v6 + 160] == int24(msg.data[v6 + 160]));
        v8.word5 = msg.data[v6 + 160];
        v8.word6 = msg.data[192 + v6];
        v8.word7 = msg.data[v6 + 224];
        MEM[v4] = v8;
        v4 += 32;
        v6 += uint8.max + 1;
    }
    v2.word4 = v3;
    require(msg.data[v1 + 160] == address(msg.data[v1 + 160]));
    v2.word5 = msg.data[v1 + 160];
    v9 = v2.word4;
    v10 = 0x16b7(v2.word4, v2.word1, v2.word0, v2.word2);
    MEM[32 + MEM[64]] = v10;
    MEM[MEM[64]] = 32;
    return MEM[64];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
    } else {
        if (0x4b58a6e8 > function_selector >> 224) {
            if (0x2c8958f6 > function_selector >> 224) {
                if (0xf4d14e9 == function_selector >> 224) {
                    depositEth(uint256);
                } else if (0x10d1e85c != function_selector >> 224) {
                    if (0x13af4035 == function_selector >> 224) {
                        setOwner(address);
                    } else {
                        require(0x23a69e75 == function_selector >> 224);
                    }
                }
            } else if (0x2c8958f6 != function_selector >> 224) {
                if (0x2ffe292e == function_selector >> 224) {
                    0x2ffe292e();
                } else if (0x31f57072 == function_selector >> 224) {
                    onMorphoFlashLoan(uint256,bytes);
                } else {
                    require(0x3a1c453c == function_selector >> 224);
                }
            }
        } else if (0xab6291fe > function_selector >> 224) {
            if (0x4b58a6e8 != function_selector >> 224) {
                if (0x84800812 != function_selector >> 224) {
                    if (0x91dd7346 == function_selector >> 224) {
                        unlockCallback(bytes);
                    } else {
                        require(0xa36a7526 == function_selector >> 224);
                        setOp(address);
                    }
                }
            }
        } else if (0xab6291fe == function_selector >> 224) {
            lockAcquired(bytes);
        } else if (0xddd74a32 == function_selector >> 224) {
            0xddd74a32();
        } else if (0xe0154ff0 != function_selector >> 224) {
            if (0xfa461e33 != function_selector >> 224) {
                require(0xfa483e72 == function_selector >> 224);
            }
        }
        pancakeCall(address,uint256,uint256,bytes);
        swapCallback(int256,int256,bytes);
    }
}
