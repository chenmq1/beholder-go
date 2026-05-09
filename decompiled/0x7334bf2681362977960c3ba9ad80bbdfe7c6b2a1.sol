// Decompiled by library.dedaub.com
// 2026.04.26 07:40 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _rescueETH; // STORAGE[0x0]
uint256 _dexCallback; // TRANSIENT_STORAGE[0x1000]
uint256 tstor_1001; // TRANSIENT_STORAGE[0x1001]
uint256 tstor_2000; // TRANSIENT_STORAGE[0x2000]
uint256 _uniswapV3SwapCallback; // TRANSIENT_STORAGE[0x3000]



function 0xb743ed48(uint256 varg0) public payable { 
    require(!(msg.sender - _rescueETH));
    v0 = v1 = varg0 + 37;
    v2 = v3 = 0;
    v4 = v5 = 0;
    while (v4 < msg.data[varg0 + 36] >> 248) {
        v6 = v0 + 2;
        v7 = v8 = 0;
        if (!(msg.data[v6] >> 248)) {
            v9 = v10 = msg.data[v6 + 1] >> 96;
            v7 = v11 = msg.data[v6 + 21];
            0x494a(v10, v11);
            if (!v10) {
                MEM[0] = MEM[0];
                v9 = v12 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v13 = v14 = msg.data[v6 + 53] >> 248;
            v15 = v16 = v6 + 54;
            MEM[800] = 0;
            MEM[832] = 0;
            if ((v14 == 2) & (msg.data[v16] >> 248 == 1)) {
                if (msg.data[v16 + 64] >> 160) {
                    v9 = v17 = msg.data[v16 + 21] >> 96;
                    v9 = v18 = msg.data[v16 + 41] >> 96;
                    if (v17 <= v18) {
                    }
                    MEM[196] = address(v9);
                    MEM[228] = address(v9);
                    if (!(msg.data[v16 + 77] >> 248)) {
                        MEM8[260] = 0x0 & 0xFF;
                        MEM[261] = 0x10000000000000000000000 & msg.data[v16 + 130] >> 160 | bytes20(msg.data[v16 + 78]);
                        v7 = v19 = 0x3231(msg.data[v16 + 1] >> 96, msg.data[v16 + 76] >> 248 & 0x1, msg.data[v16 + 64] >> 160);
                        v15 = v20 = v16 + 131;
                        v13 = v21 = 0;
                        MEM[800] = 1;
                    }
                    if (msg.data[v16 + 77] >> 248 == 5) {
                        MEM8[260] = 0x5 & 0xFF;
                        MEM[261] = bytes20(msg.data[v16 + 78]);
                        MEM[281] = bytes20(msg.data[v16 + 98]);
                        MEM8[301] = msg.data[v16 + 138] >> 248 & 0xFF;
                        MEM8[302] = uint8(msg.data[v16 + 138] >> 240) & 0xFF;
                        MEM[303] = v11;
                        v7 = v22 = 0x32a6(msg.data[v16 + 1] >> 96, msg.data[v16 + 76] >> 248 & 0x1, msg.data[v16 + 64] >> 160);
                        v15 = v23 = v15 + 153;
                        v13 = v24 = 0;
                        MEM[800] = 1;
                    }
                    if (msg.data[v16 + 77] >> 248 == 6) {
                        MEM8[260] = 0x6 & 0xFF;
                        MEM[261] = bytes20(msg.data[v16 + 78]);
                        MEM[281] = bytes20(msg.data[v16 + 98]);
                        MEM8[301] = msg.data[v16 + 138] >> 248 & 0xFF;
                        MEM8[302] = uint8(msg.data[v16 + 138] >> 240) & 0xFF;
                        MEM[303] = v11;
                        v7 = v25 = 0x32a6(msg.data[v16 + 1] >> 96, msg.data[v16 + 76] >> 248 & 0x1, msg.data[v16 + 64] >> 160);
                        v15 = v26 = v15 + 153;
                        v13 = v27 = 0;
                        MEM[800] = 1;
                    }
                    if (msg.data[v16 + 77] >> 248 == 4) {
                        MEM8[260] = 0x4 & 0xFF;
                        MEM[261] = msg.data[v16 + 78];
                        MEM[293] = bytes20(msg.data[v16 + 110]);
                        MEM[313] = bytes20(msg.data[v16 + 130]);
                        MEM[333] = v11;
                        v7 = v28 = 0x3314(msg.data[v16 + 1] >> 96, msg.data[v16 + 76] >> 248 & 0x1, msg.data[v16 + 64] >> 160);
                        v15 = v29 = v15 + 163;
                        v13 = v30 = 0;
                        MEM[800] = 1;
                    }
                    if (7 == msg.data[v16 + 77] >> 248) {
                        MEM8[260] = 0x7 & 0xFF;
                        MEM[261] = bytes20(msg.data[v16 + 78]);
                        MEM[281] = bytes20(msg.data[v16 + 98]);
                        MEM[301] = bytes20(msg.data[v16 + 118]);
                        MEM8[321] = msg.data[v16 + 150] >> 248 & 0x1 & 0xFF;
                        MEM[322] = v11;
                        v7 = v31 = 0x3382(msg.data[v16 + 1] >> 96, msg.data[v16 + 76] >> 248 & 0x1, msg.data[v16 + 64] >> 160);
                        v15 = v32 = v15 + 151;
                        v13 = v33 = 0;
                        MEM[800] = 1;
                    }
                }
            }
            if ((v13 == 3) & (msg.data[v15] >> 248 == 1)) {
                v34 = msg.data[v15 + 64] >> 160;
                if (v34) {
                    v35 = msg.data[v15 + 21] >> 96;
                    v35 = v36 = msg.data[v15 + 41] >> 96;
                    if (v35 <= v36) {
                    }
                    MEM[196] = address(v35);
                    MEM[228] = address(v35);
                    if (!(msg.data[v15 + 77] >> 248)) {
                        MEM8[260] = 0x0 & 0xFF;
                        MEM[261] = 0x10000000000000000000000 & msg.data[v15 + 130] >> 160 | bytes20(msg.data[v15 + 78]);
                        v7 = v37 = 0x3231(msg.data[v15 + 1] >> 96, msg.data[v15 + 76] >> 248 & 0x1, v34);
                        v9 = v38 = msg.data[v15 + 98] >> 96;
                        v15 = v39 = v15 + 131;
                        v13 = v40 = 1;
                        MEM[800] = v40;
                    }
                    if (msg.data[v15 + 77] >> 248 == 5) {
                        MEM8[260] = 0x5 & 0xFF;
                        MEM[261] = bytes20(msg.data[v15 + 78]);
                        MEM[281] = bytes20(msg.data[v15 + 98]);
                        MEM8[301] = msg.data[v15 + 138] >> 248 & 0xFF;
                        MEM8[302] = uint8(msg.data[v15 + 138] >> 240) & 0xFF;
                        MEM[303] = v11;
                        v7 = v41 = 0x32a6(msg.data[v15 + 1] >> 96, msg.data[v15 + 76] >> 248 & 0x1, v34);
                        v9 = v42 = msg.data[v15 + 118] >> 96;
                        v15 = v43 = v15 + 153;
                        v13 = v44 = 1;
                        MEM[800] = v44;
                    }
                    if (msg.data[v15 + 77] >> 248 == 6) {
                        MEM8[260] = 0x6 & 0xFF;
                        MEM[261] = bytes20(msg.data[v15 + 78]);
                        MEM[281] = bytes20(msg.data[v15 + 98]);
                        MEM8[301] = msg.data[v15 + 138] >> 248 & 0xFF;
                        MEM8[302] = uint8(msg.data[v15 + 138] >> 240) & 0xFF;
                        MEM[303] = v11;
                        v7 = v45 = 0x32a6(msg.data[v15 + 1] >> 96, msg.data[v15 + 76] >> 248 & 0x1, v34);
                        v9 = v46 = msg.data[v15 + 118] >> 96;
                        v15 = v47 = v15 + 153;
                        v13 = v48 = 1;
                        MEM[800] = v48;
                    }
                    if (msg.data[v15 + 77] >> 248 == 4) {
                        MEM8[260] = 0x4 & 0xFF;
                        MEM[261] = msg.data[v15 + 78];
                        MEM[293] = bytes20(msg.data[v15 + 110]);
                        MEM[313] = bytes20(msg.data[v15 + 130]);
                        MEM[333] = v11;
                        v7 = v49 = 0x3314(msg.data[v15 + 1] >> 96, msg.data[v15 + 76] >> 248 & 0x1, v34);
                        v9 = v50 = msg.data[v15 + 130] >> 96;
                        v15 = v51 = v15 + 163;
                        v13 = v52 = 1;
                        MEM[800] = v52;
                    }
                    if (7 == msg.data[v15 + 77] >> 248) {
                        0x45b9(msg.data[v15 + 98] >> 96, msg.data[v15 + 78] >> 96);
                        MEM8[260] = 0x7 & 0xFF;
                        MEM[261] = bytes20(msg.data[v15 + 78]);
                        MEM[281] = bytes20(msg.data[v15 + 98]);
                        MEM[301] = bytes20(msg.data[v15 + 118]);
                        MEM8[321] = msg.data[v15 + 150] >> 248 & 0x1 & 0xFF;
                        MEM[322] = v11;
                        v7 = v53 = 0x3382(msg.data[v15 + 1] >> 96, msg.data[v15 + 76] >> 248 & 0x1, v34);
                        v9 = v54 = msg.data[v15 + 118] >> 96;
                        v15 = v55 = v15 + 151;
                        v13 = v56 = 1;
                        MEM[800] = v56;
                    }
                }
            }
            if ((v13 == 2) & !MEM[0x320] & (msg.data[v15] >> 248 == 2)) {
                v9 = v57 = msg.data[v15 + 1] >> 96;
                v9 = v58 = msg.data[v15 + 21] >> 96;
                if (msg.data[v15 + 79] >> 248 & 0x1) {
                }
                if (v57 <= v58) {
                }
                v59 = msg.data[v15 + 80] >> 248;
                if (!v59) {
                    MEM8[935] = 0x0 & 0xFF;
                    MEM[936] = bytes20(msg.data[v15 + 81]);
                    MEM8[956] = msg.data[v15 + 133] >> 248 & 0x1 & 0xFF;
                    MEM8[934] = 0x1 & (v9 == v9) & 0xFF;
                    v60 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 121, bytes20(v9 << 96), bytes20(v9 << 96), msg.data[v15 + 44] >> 232, msg.data[v15 + 41] >> 232, bytes20(msg.data[v15 + 47] >> 96 << 96), v7, address(v61)).gas(msg.gas);
                    if (!v60) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v7 = v62 = MEM[64];
                        v15 = v63 = v15 + 134;
                        v13 = v64 = 0;
                        MEM[832] = 1;
                    }
                }
                if ((v59 == 1) & !MEM[0x340]) {
                    if (msg.data[v15 + 101] >> 96 > msg.data[v15 + 121] >> 96) {
                        MEM8[935] = 0x1 & 0xFF;
                        MEM[936] = bytes20(msg.data[v15 + 81]);
                        MEM[956] = msg.data[v15 + 121] >> 96 << 96;
                        MEM[976] = msg.data[v15 + 101] >> 96 << 96;
                        MEM8[996] = msg.data[v15 + 156] >> 248 & 0x1 & 0xFF;
                    } else {
                        MEM8[935] = 0x1 & 0xFF;
                        MEM[936] = bytes20(msg.data[v15 + 81]);
                        MEM[956] = msg.data[v15 + 101] >> 96 << 96;
                        MEM[976] = msg.data[v15 + 121] >> 96 << 96;
                        MEM8[996] = msg.data[v15 + 156] >> 248 & 0x1 & 0xFF;
                    }
                    MEM8[934] = 0x1 & (v9 == v9) & 0xFF;
                    v65 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v9 << 96), bytes20(v9 << 96), bytes20(msg.data[v15 + 47] >> 96 << 96), msg.data[v15 + 44] >> 232, msg.data[v15 + 41] >> 232, v7, address(v61), v66, 0x48c89491).gas(msg.gas);
                    if (!v65) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v7 = v67 = MEM[64];
                        v15 = v68 = v15 + 157;
                        v13 = v69 = 0;
                        MEM[832] = 1;
                    }
                }
                if ((v59 == 4) & !MEM[0x340]) {
                    MEM8[935] = 0x4 & 0xFF;
                    MEM[936] = msg.data[v15 + 81];
                    MEM[968] = bytes20(msg.data[v15 + 113]);
                    v66 = bytes20(msg.data[v15 + 133]);
                    MEM8[934] = 0x1 & (v9 == v9) & 0xFF;
                    v70 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 172, bytes20(v9 << 96), bytes20(v9 << 96), msg.data[v15 + 44] >> 232, msg.data[v15 + 41] >> 232, bytes20(msg.data[v15 + 47] >> 96 << 96), v7, address(v61), v66, 0x48c89491).gas(msg.gas);
                    if (!v70) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v7 = v71 = MEM[64];
                        v15 = v72 = v15 + 166;
                        v13 = v73 = 0;
                        MEM[832] = 1;
                    }
                }
                if ((v59 == 5) & !MEM[0x340]) {
                    MEM8[935] = 0x5 & 0xFF;
                    MEM[936] = bytes20(msg.data[v15 + 81]);
                    MEM[956] = bytes20(msg.data[v15 + 101]);
                    MEM[976] = bytes20(msg.data[v15 + 121]);
                    MEM8[996] = msg.data[v15 + 141] >> 248 & 0xFF;
                    MEM8[997] = msg.data[v15 + 142] >> 248 & 0xFF;
                    MEM8[934] = 0x1 & (v9 == v9) & 0xFF;
                    v74 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v9 << 96), bytes20(v9 << 96), msg.data[v15 + 44] >> 232, msg.data[v15 + 41] >> 232, bytes20(msg.data[v15 + 47] >> 96 << 96), v7, address(v61), v66, 0x48c89491).gas(msg.gas);
                    if (!v74) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v7 = v75 = MEM[64];
                        v15 = v76 = v15 + 156;
                        v13 = v77 = 0;
                        MEM[832] = 1;
                    }
                }
                if ((v59 == 6) & !MEM[0x340]) {
                    MEM8[935] = 0x6 & 0xFF;
                    MEM[936] = bytes20(msg.data[v15 + 81]);
                    MEM[956] = bytes20(msg.data[v15 + 101]);
                    MEM[976] = bytes20(msg.data[v15 + 121]);
                    MEM8[996] = msg.data[v15 + 141] >> 248 & 0xFF;
                    MEM8[997] = msg.data[v15 + 142] >> 248 & 0xFF;
                    MEM8[934] = 0x1 & (v9 == v9) & 0xFF;
                    v78 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v9 << 96), bytes20(v9 << 96), msg.data[v15 + 44] >> 232, msg.data[v15 + 41] >> 232, bytes20(msg.data[v15 + 47] >> 96 << 96), v7, address(v61), v66, 0x48c89491).gas(msg.gas);
                    if (!v78) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v7 = v79 = MEM[64];
                        v15 = v80 = v15 + 156;
                        v13 = v81 = 0;
                        MEM[832] = 1;
                    }
                }
                if ((v59 == 7) & !MEM[0x340]) {
                    MEM8[935] = 0x7 & 0xFF;
                    MEM[936] = bytes20(msg.data[v15 + 81]);
                    MEM[956] = bytes20(msg.data[v15 + 101]);
                    MEM[976] = bytes20(msg.data[v15 + 121]);
                    MEM8[996] = msg.data[v15 + 153] >> 248 & 0x1 & 0xFF;
                    MEM8[934] = 0x1 & (v9 == v9) & 0xFF;
                    v82 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v9 << 96), bytes20(v9 << 96), msg.data[v15 + 44] >> 232, msg.data[v15 + 41] >> 232, bytes20(msg.data[v15 + 47] >> 96 << 96), v7, address(v61), v66, 0x48c89491).gas(msg.gas);
                    if (!v82) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v7 = v83 = MEM[64];
                        v15 = v84 = v15 + 154;
                        v13 = v85 = 0;
                        MEM[832] = 1;
                    }
                }
                if (MEM[832]) {
                }
            }
            v86 = v87 = 0;
            while (v86 < v13) {
                v88 = msg.data[v15] >> 248;
                v89 = 0;
                if (0 == v88) {
                    v89 = v90 = msg.data[v15 + 53] >> 248;
                } else if (1 == v88) {
                    v89 = v91 = msg.data[v15 + 76] >> 248;
                } else if (2 == v88) {
                    v89 = v92 = msg.data[v15 + 79] >> 248;
                } else if (3 == v88) {
                    v89 = v93 = msg.data[v15 + 73] >> 248;
                } else if (4 == v88) {
                    v89 = v94 = msg.data[v15 + 85] >> 248;
                } else if (5 == v88) {
                    v89 = v95 = msg.data[v15 + 75] >> 248;
                } else if (6 == v88) {
                    v89 = v96 = msg.data[v15 + 75] >> 248;
                } else if (7 == v88) {
                    v89 = v97 = msg.data[v15 + 73] >> 248;
                } else if (8 == v88) {
                    v89 = v98 = msg.data[v15 + 21] >> 248;
                } else if (9 == v88) {
                    v89 = v99 = msg.data[v15 + 86] >> 248;
                } else if (10 == v88) {
                    v89 = v100 = msg.data[v15 + 86] >> 248;
                }
                MEM[896] = this;
                v9 = v101 = msg.data[v15 + 1] >> 96;
                if (!v88) {
                    v7 = v102 = msg.data[v15 + 41] >> 160;
                    if (0 == (v86 + 1 == v13)) {
                        if (!(msg.data[v15 + 54] >> 248)) {
                            MEM[896] = msg.data[v15 + 55] >> 96;
                        }
                    } else {
                        MEM[896] = this;
                    }
                    if (!v102) {
                        v103 = v104, v103 = v105 = 0x49e8(v101);
                        if (v89 & 0x1) {
                        }
                        v7 = v7 * v103 * 997 / (v103 * 1000 + v7 * 997);
                    }
                    v106 = 0;
                    v106 = v107 = 1;
                    if (v86) {
                        if (!(v89 >> 2 & v107)) {
                        }
                    }
                    if (v106) {
                        0x48ba(v9, v101, v7);
                    }
                    v9 = v108 = msg.data[v15 + 21] >> 96;
                    MEM[v106] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    if (1 == v89 & 0x1) {
                        MEM[4] = v106;
                        MEM[36] = v7;
                    } else {
                        MEM[4] = v7;
                        MEM[36] = v106;
                    }
                    v109 = v101.call(v110, v110, v110, MEM[896], 128, v106).value(v106).gas(msg.gas);
                    if (!v109) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v111 = v112 = 1;
                        v15 = v15 + 54;
                    }
                } else if (1 == v88) {
                    v9 = v113 = msg.data[v15 + 21] >> 96;
                    v9 = v114 = msg.data[v15 + 41] >> 96;
                    if ((v13 == 3) & (v86 == 1) & (v9 != v113)) {
                        v115 = msg.data[v15 + 77] >> 248;
                        if (v113 <= v114) {
                        }
                        MEM[196] = address(v9);
                        MEM[228] = address(v9);
                        v116 = 0x1 & msg.data[v15 + 76] >> 248;
                        if (!v115) {
                            MEM8[260] = 0x0 & 0xFF;
                            MEM[261] = 0x10000000000000000000000 & msg.data[v15 + 130] >> 160 | bytes20(msg.data[v15 + 78]);
                            MEM[282] = v9 << 96;
                            v7 = v117 = 0x33f0(v101, v116, msg.data[v15 + 64] >> 160);
                            v15 = v15 + 131;
                            MEM[800] = 1;
                            v86 = v118 = 2;
                        }
                        if (v115 == 5) {
                            MEM8[260] = 0x5 & 0xFF;
                            MEM[261] = bytes20(msg.data[v15 + 78]);
                            MEM[281] = bytes20(msg.data[v15 + 98]);
                            MEM8[301] = msg.data[v15 + 138] >> 248 & 0xFF;
                            MEM8[302] = uint8(msg.data[v15 + 138] >> 240) & 0xFF;
                            MEM[303] = v7;
                            v7 = v119 = 0x32a6(v101, v116, msg.data[v15 + 64] >> 160);
                            v15 = v15 + 153;
                            MEM[800] = 1;
                            v86 = v120 = 2;
                        }
                        if (v115 == 6) {
                            MEM8[260] = 0x6 & 0xFF;
                            MEM[261] = bytes20(msg.data[v15 + 78]);
                            MEM[281] = bytes20(msg.data[v15 + 98]);
                            MEM8[301] = msg.data[v15 + 138] >> 248 & 0xFF;
                            MEM8[302] = uint8(msg.data[v15 + 138] >> 240) & 0xFF;
                            MEM[303] = v7;
                            v7 = v121 = 0x32a6(v101, v116, msg.data[v15 + 64] >> 160);
                            v15 = v15 + 153;
                            MEM[800] = 1;
                            v86 = v122 = 2;
                        }
                        if (v115 == 4) {
                            MEM8[260] = 0x4 & 0xFF;
                            MEM[261] = msg.data[v15 + 78];
                            MEM[293] = bytes20(msg.data[v15 + 110]);
                            MEM[313] = bytes20(msg.data[v15 + 130]);
                            MEM[333] = v7;
                            v7 = v123 = 0x3314(v101, v116, msg.data[v15 + 64] >> 160);
                            v15 = v15 + 163;
                            MEM[800] = 1;
                            v86 = v124 = 2;
                        }
                        if (7 == v115) {
                            MEM8[260] = 0x7 & 0xFF;
                            MEM[261] = bytes20(msg.data[v15 + 78]);
                            MEM[281] = bytes20(msg.data[v15 + 98]);
                            MEM[301] = bytes20(msg.data[v15 + 118]);
                            MEM8[321] = msg.data[v15 + 150] >> 248 & 0x1 & 0xFF;
                            MEM[322] = v7;
                            v7 = v125 = 0x3382(v101, v116, msg.data[v15 + 64] >> 160);
                            v15 = v15 + 151;
                            MEM[800] = 1;
                            v86 = v126 = 2;
                        }
                    }
                    if (v86 < v13) {
                        if ((v86 != 2) | !MEM[0x320]) {
                            if (v86 + 1 - v13) {
                                if (!(msg.data[v15 + 77] >> 248)) {
                                    MEM[896] = msg.data[v15 + 78] >> 96;
                                }
                                v127 = MEM[896];
                            } else {
                                v127 = v128 = MEM[896];
                            }
                            if (v113 <= v114) {
                            }
                            v129 = 0x1000276a4;
                            if (v113 >= v114) {
                                MEM[0] = MEM[0];
                                v129 = v130 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            }
                            v131 = v101.swap(address(v127), v113 < v114, v7, v129, 160, 64, address(v9), address(v9)).gas(msg.gas);
                            if (!v131) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            } else {
                                if (1 == v113 < v114) {
                                    v7 = v132 = 0 - MEM[32];
                                } else {
                                    v7 = v133 = 0 - MEM[0];
                                }
                                if (msg.data[v15 + 64] >> 160) {
                                    require(v7 >= msg.data[v15 + 64] >> 160);
                                }
                            }
                        }
                    }
                    if ((v86 != 2) | !MEM[0x320]) {
                        v15 = v15 + 77;
                    }
                    v111 = v134 = 1;
                } else if (2 == v88) {
                    v9 = v135 = msg.data[v15 + 21] >> 96;
                    if (v89 & 0x1) {
                    }
                    v111 = v136 = 1;
                    if (v101 > v135) {
                        v137 = v135 == v9;
                        v138 = msg.data[v15 + 47] >> 96;
                        v139 = msg.data[v15 + 44] >> 232;
                        v140 = msg.data[v15 + 41] >> 232;
                    } else {
                        v137 = v141 = v101 == v9;
                        v138 = v142 = msg.data[v15 + 47] >> 96;
                        v139 = v143 = msg.data[v15 + 44] >> 232;
                        v140 = v144 = msg.data[v15 + 41] >> 232;
                    }
                    v145 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 99, bytes20(v9 << 96), bytes20(v9 << 96), v140, v139, bytes20(v138 << 96), v7, uint248(MEM[1190]) | 0x100000000000000000000000000000000000000000000000000000000000000 & v137 << 248).gas(msg.gas);
                    if (!v145) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v7 = v146 = MEM[64];
                        v15 = v15 + 80;
                    }
                } else if (3 == v88) {
                    v147 = v148 = 1;
                    v149 = v150 = v15 + 74;
                    v13 = v151 = v86 + v148;
                    while (v13 < v13) {
                        if (msg.data[v149] >> 248 == 3) {
                        }
                        if (msg.data[v149] >> 248 == 3) {
                            v147 = v147 + 1;
                            v149 = v149 + 74;
                        }
                        v13 += 1;
                    }
                    if (1 == v147 > 1) {
                        v111 = v152 = 1;
                        MEM[768] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                        MEM[772] = 32;
                        MEM[804] = v147 * 96 + 68;
                        MEM[836] = 0x7b4e1e6700000000000000000000000000000000000000000000000000000000;
                        MEM[840] = v147;
                        MEM[872] = v7;
                        v153 = v154 = 0;
                        v155 = v156 = 904;
                        while (v153 < v147) {
                            MEM[v155] = msg.data[v15 + 1] >> 96;
                            MEM[v155 + 32] = msg.data[v15 + 21] >> 96;
                            MEM[v155 + 64] = msg.data[v15 + 41] >> 96;
                            v155 = v155 + 96;
                            v15 = v15 + 74;
                            v153 = v153 + 1;
                        }
                        MEM[0] = MEM[0];
                        v157 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[768:768 + v1dbc0x485_0x2V0x45f * 96 + 136], MEM[0:96]).gas(msg.gas);
                        if (!v157) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        } else {
                            v7 = v158 = MEM[64];
                            v9 = v159 = msg.data[v15 + (v147 - 1) * 74 + 41] >> 96;
                            v15 += v147 * 74;
                            v86 = v86 + v147 - 1;
                        }
                    } else {
                        v111 = v160 = 1;
                        v9 = v61 = msg.data[v15 + 41] >> 96;
                        MEM[0] = MEM[0];
                        v161 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, 164, 0x6aeb34df, address(v101), address(msg.data[v15 + 21] >> 96), address(v61), v7, msg.data[v15 + 61] >> 160).gas(msg.gas);
                        if (!v161) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        } else {
                            v7 = v162 = MEM[64];
                            v15 = v15 + 74;
                        }
                    }
                } else if (4 == v88) {
                    v111 = v163 = 1;
                    v9 = v164 = msg.data[v15 + 53] >> 96;
                    v7 = v165 = 0x3ff8(msg.data[v15 + v163], msg.data[v15 + 33] >> 96, v164, v7, msg.data[v15 + 73] >> 160);
                    v15 = v15 + 86;
                } else if (5 == v88) {
                    v111 = v166 = 1;
                    v9 = v167 = msg.data[v15 + 41] >> 96;
                    v7 = v168 = 0x4125(v101, msg.data[v15 + 21] >> 96, v167, msg.data[v15 + 61] >> 248, uint8(msg.data[v15 + 61] >> 240), v7, msg.data[v15 + 63] >> 160, v89 >> 2 & v166, v89 >> 3 & v166);
                    v15 = v15 + 76;
                } else if (6 == v88) {
                    v111 = v169 = 1;
                    v9 = v170 = msg.data[v15 + 41] >> 96;
                    v7 = v171 = 0x426c(v101, msg.data[v15 + 21] >> 96, v170, msg.data[v15 + 61] >> 248, uint8(msg.data[v15 + 61] >> 240), v7, msg.data[v15 + 63] >> 160, v89 >> 2 & v169);
                    v15 = v15 + 76;
                } else if (7 == v88) {
                    v7 = v172 = 0x43dc(v101, msg.data[v15 + 21] >> 96, v7, msg.data[v15 + 61] >> 160, v89 & 0x1);
                    v111 = v173 = 1;
                    v9 = v174 = msg.data[v15 + 41] >> 96;
                    v15 = v15 + 74;
                } else if (8 == v88) {
                    v111 = v175 = 1;
                    v7 = 0x4a09(v101, v7, v89 & v175);
                    v15 = v15 + 22;
                } else if (9 == v88) {
                    v9 = v176 = msg.data[v15 + 21] >> 96;
                    if (!(msg.data[v15 + 73] >> 248 & 0x1)) {
                    }
                    v111 = v177 = 1;
                    v7 = v178 = 0x4f8a(v101, v176, msg.data[v15 + 41], msg.data[v15 + 73] >> 248 & 0x1, v7, this);
                    v15 = v15 + 87;
                } else {
                    require(10 == v88);
                    v9 = v179 = msg.data[v15 + 21] >> 96;
                    if (!(msg.data[v15 + 73] >> 248 & 0x1)) {
                    }
                    v111 = v180 = 1;
                    v7 = v181 = 0x4fe0(v101, v179, msg.data[v15 + 41], msg.data[v15 + 73] >> 248 & 0x1, v7, this);
                    v15 = v15 + 87;
                }
                v86 = v86 + v111;
            }
            MEM[768] = v9;
            v182 = v183 = MEM[768];
            if (MEM[0x320] | MEM[0x340]) {
                if (!v183) {
                    MEM[0] = MEM[0];
                    v182 = v184 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                }
                v7 = v185 = 0x4d4c(v182, this);
            }
            if (v7) {
                0x48ba(v182, _rescueETH, v7);
            }
            if (!v10) {
                MEM[0] = MEM[0];
                v9 = v186 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            if (!v182) {
                MEM[0] = MEM[0];
                v182 = v187 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            if (v182 == v9) {
                if (v7 > v11) {
                    v7 = v188 = v7 - v11;
                }
            }
            if (v182 == v9) {
            }
        } else {
            if (1 == msg.data[v6] >> 248) {
                v189 = v190 = 0;
                v189 = v191 = MEM[64];
                if (v191 < 128) {
                    v189 = v192 = 128;
                }
                MEM[v189] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[v189 + 4] = msg.data[v6 + 21];
                MEM[v189 + 36] = msg.data[v6 + 53];
                MEM[v189 + 68] = this;
                MEM[v189 + 100] = 128;
                MEM[v189 + 132] = (msg.data[v0] >> 240) - 85;
                v193 = 1;
                CALLDATACOPY(v189 + 164, v6 + 85, (msg.data[v0] >> 240) - 85);
                v194 = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v0] >> 240) - 54;
                if (v194 > (msg.data[v0] >> 240) - 85) {
                    MEM[v189 + (msg.data[v0] >> 240) + 79] = v190;
                } else {
                    v195 = (msg.data[v6 + v193] >> 96).call(MEM[v628_0x4V0x45f:v628_0x4V0x45f + 164 + v620V0x45f], MEM[v5c1V0x45f:v5c1V0x45f + v5c1V0x45f]).value(v190).gas(msg.gas);
                    if (!v195) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v7 = v196 = tstor_2000;
                        tstor_2000 = 0;
                    }
                }
            } else if (2 == msg.data[v6] >> 248) {
                v189 = v197 = 0;
                v193 = v198 = 1;
                MEM[v197] = 0x490e6cbc00000000000000000000000000000000000000000000000000000000;
                MEM[4] = this;
                MEM[36] = msg.data[v6 + 21];
                MEM[68] = msg.data[v6 + 53];
                MEM[100] = 128;
                MEM[132] = (msg.data[v0] >> 240) - 85;
                CALLDATACOPY(164, v6 + 85, (msg.data[v0] >> 240) - 85);
                v194 = v199 = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v0] >> 240) - 54;
                if (v199 > (msg.data[v0] >> 240) - 85) {
                    MEM[(msg.data[v0] >> 240) + 79] = v197;
                }
            } else {
                require(3 == msg.data[v6] >> 248);
                MEM[0] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                MEM[4] = this;
                MEM[36] = 128;
                MEM[68] = 192;
                MEM[100] = uint8.max + 1;
                MEM[132] = 1;
                MEM[164] = msg.data[v6 + 1] >> 96;
                MEM[196] = 1;
                MEM[228] = msg.data[v6 + 21];
                MEM[260] = (msg.data[v0] >> 240) - 53;
                CALLDATACOPY(292, v6 + 53, (msg.data[v0] >> 240) - 53);
                if (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v0] >> 240) - 22 > (msg.data[v0] >> 240) - 53) {
                    MEM[(msg.data[v0] >> 240) + 239] = 0;
                }
                v200 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[0]).gas(msg.gas);
                if (!v200) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v7 = v201 = tstor_2000;
                    tstor_2000 = 0;
                }
            }
            v202 = (msg.data[v6 + v193] >> 96).call(MEM[v628_0x4V0x45f:v628_0x4V0x45f + 164 + v620V0x45f], MEM[v628_0x4V0x45f:v628_0x4V0x45f + v628_0x4V0x45f]).value(v189).gas(msg.gas);
            if (!v202) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                v7 = v203 = tstor_2000;
                tstor_2000 = 0;
            }
        }
        v2 += v7;
        v0 = v0 + (msg.data[v0] >> 240) + 2;
        v4 = v4 + 1;
    }
    if (msg.value) {
        v204 = block.coinbase.call().value(msg.value).gas(msg.gas);
        require(v204);
        return v2;
    } else {
        return v2;
    }
}

function exec(bytes payload) public payable { 
    require(!(msg.sender - _rescueETH));
    if (0 == msg.data[payload.data] >> 248) {
        v0 = v1 = msg.data[payload + 37] >> 96;
        v2 = v3 = msg.data[payload + 57];
        0x494a(v1, v3);
        if (!v1) {
            MEM[0] = MEM[0];
            v0 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
        v5 = v6 = msg.data[payload + 89] >> 248;
        v7 = v8 = payload + 90;
        MEM[800] = 0;
        MEM[832] = 0;
        if ((v6 == 2) & (msg.data[v8] >> 248 == 1)) {
            if (msg.data[v8 + 64] >> 160) {
                v0 = v9 = msg.data[v8 + 21] >> 96;
                v0 = v10 = msg.data[v8 + 41] >> 96;
                if (v9 <= v10) {
                }
                MEM[196] = address(v0);
                MEM[228] = address(v0);
                if (!(msg.data[v8 + 77] >> 248)) {
                    MEM8[260] = 0x0 & 0xFF;
                    MEM[261] = 0x10000000000000000000000 & msg.data[v8 + 130] >> 160 | bytes20(msg.data[v8 + 78]);
                    v2 = v11 = 0x3231(msg.data[v8 + 1] >> 96, msg.data[v8 + 76] >> 248 & 0x1, msg.data[v8 + 64] >> 160);
                    v7 = v12 = v8 + 131;
                    v5 = v13 = 0;
                    MEM[800] = 1;
                }
                if (msg.data[v8 + 77] >> 248 == 5) {
                    MEM8[260] = 0x5 & 0xFF;
                    MEM[261] = bytes20(msg.data[v8 + 78]);
                    MEM[281] = bytes20(msg.data[v8 + 98]);
                    MEM8[301] = msg.data[v8 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v8 + 138] >> 240) & 0xFF;
                    MEM[303] = v3;
                    v2 = v14 = 0x32a6(msg.data[v8 + 1] >> 96, msg.data[v8 + 76] >> 248 & 0x1, msg.data[v8 + 64] >> 160);
                    v7 = v15 = v7 + 153;
                    v5 = v16 = 0;
                    MEM[800] = 1;
                }
                if (msg.data[v8 + 77] >> 248 == 6) {
                    MEM8[260] = 0x6 & 0xFF;
                    MEM[261] = bytes20(msg.data[v8 + 78]);
                    MEM[281] = bytes20(msg.data[v8 + 98]);
                    MEM8[301] = msg.data[v8 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v8 + 138] >> 240) & 0xFF;
                    MEM[303] = v3;
                    v2 = v17 = 0x32a6(msg.data[v8 + 1] >> 96, msg.data[v8 + 76] >> 248 & 0x1, msg.data[v8 + 64] >> 160);
                    v7 = v18 = v7 + 153;
                    v5 = v19 = 0;
                    MEM[800] = 1;
                }
                if (msg.data[v8 + 77] >> 248 == 4) {
                    MEM8[260] = 0x4 & 0xFF;
                    MEM[261] = msg.data[v8 + 78];
                    MEM[293] = bytes20(msg.data[v8 + 110]);
                    MEM[313] = bytes20(msg.data[v8 + 130]);
                    MEM[333] = v3;
                    v2 = v20 = 0x3314(msg.data[v8 + 1] >> 96, msg.data[v8 + 76] >> 248 & 0x1, msg.data[v8 + 64] >> 160);
                    v7 = v21 = v7 + 163;
                    v5 = v22 = 0;
                    MEM[800] = 1;
                }
                if (7 == msg.data[v8 + 77] >> 248) {
                    MEM8[260] = 0x7 & 0xFF;
                    MEM[261] = bytes20(msg.data[v8 + 78]);
                    MEM[281] = bytes20(msg.data[v8 + 98]);
                    MEM[301] = bytes20(msg.data[v8 + 118]);
                    MEM8[321] = msg.data[v8 + 150] >> 248 & 0x1 & 0xFF;
                    MEM[322] = v3;
                    v2 = v23 = 0x3382(msg.data[v8 + 1] >> 96, msg.data[v8 + 76] >> 248 & 0x1, msg.data[v8 + 64] >> 160);
                    v7 = v24 = v7 + 151;
                    v5 = v25 = 0;
                    MEM[800] = 1;
                }
            }
        }
        if ((v5 == 3) & (msg.data[v7] >> 248 == 1)) {
            v26 = msg.data[v7 + 64] >> 160;
            if (v26) {
                v27 = msg.data[v7 + 21] >> 96;
                v27 = v28 = msg.data[v7 + 41] >> 96;
                if (v27 <= v28) {
                }
                MEM[196] = address(v27);
                MEM[228] = address(v27);
                if (!(msg.data[v7 + 77] >> 248)) {
                    MEM8[260] = 0x0 & 0xFF;
                    MEM[261] = 0x10000000000000000000000 & msg.data[v7 + 130] >> 160 | bytes20(msg.data[v7 + 78]);
                    v2 = v29 = 0x3231(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, v26);
                    v0 = v30 = msg.data[v7 + 98] >> 96;
                    v7 = v31 = v7 + 131;
                    v5 = v32 = 1;
                    MEM[800] = v32;
                }
                if (msg.data[v7 + 77] >> 248 == 5) {
                    MEM8[260] = 0x5 & 0xFF;
                    MEM[261] = bytes20(msg.data[v7 + 78]);
                    MEM[281] = bytes20(msg.data[v7 + 98]);
                    MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                    MEM[303] = v3;
                    v2 = v33 = 0x32a6(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, v26);
                    v0 = v34 = msg.data[v7 + 118] >> 96;
                    v7 = v35 = v7 + 153;
                    v5 = v36 = 1;
                    MEM[800] = v36;
                }
                if (msg.data[v7 + 77] >> 248 == 6) {
                    MEM8[260] = 0x6 & 0xFF;
                    MEM[261] = bytes20(msg.data[v7 + 78]);
                    MEM[281] = bytes20(msg.data[v7 + 98]);
                    MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                    MEM[303] = v3;
                    v2 = v37 = 0x32a6(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, v26);
                    v0 = v38 = msg.data[v7 + 118] >> 96;
                    v7 = v39 = v7 + 153;
                    v5 = v40 = 1;
                    MEM[800] = v40;
                }
                if (msg.data[v7 + 77] >> 248 == 4) {
                    MEM8[260] = 0x4 & 0xFF;
                    MEM[261] = msg.data[v7 + 78];
                    MEM[293] = bytes20(msg.data[v7 + 110]);
                    MEM[313] = bytes20(msg.data[v7 + 130]);
                    MEM[333] = v3;
                    v2 = v41 = 0x3314(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, v26);
                    v0 = v42 = msg.data[v7 + 130] >> 96;
                    v7 = v43 = v7 + 163;
                    v5 = v44 = 1;
                    MEM[800] = v44;
                }
                if (7 == msg.data[v7 + 77] >> 248) {
                    0x45b9(msg.data[v7 + 98] >> 96, msg.data[v7 + 78] >> 96);
                    MEM8[260] = 0x7 & 0xFF;
                    MEM[261] = bytes20(msg.data[v7 + 78]);
                    MEM[281] = bytes20(msg.data[v7 + 98]);
                    v45 = bytes20(msg.data[v7 + 118]);
                    MEM8[321] = msg.data[v7 + 150] >> 248 & 0x1 & 0xFF;
                    v2 = v46 = 0x3382(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, v26);
                    v0 = v47 = msg.data[v7 + 118] >> 96;
                    v7 = v48 = v7 + 151;
                    v5 = v49 = 1;
                    MEM[800] = v49;
                }
            }
        }
        if ((v5 == 2) & !MEM[0x320] & (msg.data[v7] >> 248 == 2)) {
            v0 = v50 = msg.data[v7 + 1] >> 96;
            v0 = v51 = msg.data[v7 + 21] >> 96;
            if (msg.data[v7 + 79] >> 248 & 0x1) {
            }
            if (v50 <= v51) {
            }
            v52 = msg.data[v7 + 80] >> 248;
            if (!v52) {
                MEM8[935] = 0x0 & 0xFF;
                MEM8[956] = msg.data[v7 + 133] >> 248 & 0x1 & 0xFF;
                MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
                v53 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 121, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v7 + 44] >> 232, msg.data[v7 + 41] >> 232, bytes20(msg.data[v7 + 47] >> 96 << 96), v2, bytes20(msg.data[v7 + 81])).gas(msg.gas);
                if (!v53) {
                    v54 = RETURNDATASIZE();
                    revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v3, v45);
                } else {
                    v2 = MEM[64];
                    v7 = v56 = v7 + 134;
                    v5 = v57 = 0;
                    MEM[832] = 1;
                }
            }
            if ((v52 == 1) & !MEM[0x340]) {
                if (msg.data[v7 + 101] >> 96 > msg.data[v7 + 121] >> 96) {
                    MEM8[935] = 0x1 & 0xFF;
                    MEM8[996] = msg.data[v7 + 156] >> 248 & 0x1 & 0xFF;
                } else {
                    MEM8[935] = 0x1 & 0xFF;
                    MEM8[996] = msg.data[v7 + 156] >> 248 & 0x1 & 0xFF;
                }
                MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
                v58 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), bytes20(msg.data[v7 + 47] >> 96 << 96), msg.data[v7 + 44] >> 232, msg.data[v7 + 41] >> 232, v2, msg.data[v7 + 101] >> 96 << 96, bytes20(msg.data[v7 + 81]), msg.data[v7 + 121] >> 96 << 96, bytes20(msg.data[v7 + 81]), msg.data[v7 + 121] >> 96 << 96, msg.data[v7 + 101] >> 96 << 96, msg.data[v7 + 101] >> 96 << 96, msg.data[v7 + 121] >> 96 << 96, msg.data[v7 + 121] >> 96 << 96, msg.data[v7 + 101] >> 96 << 96).gas(msg.gas);
                if (!v58) {
                    v59 = RETURNDATASIZE();
                    revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v3, v45);
                } else {
                    v2 = v60 = MEM[64];
                    v7 = v61 = v7 + 157;
                    v5 = v62 = 0;
                    MEM[832] = 1;
                }
            }
            if ((v52 == 4) & !MEM[0x340]) {
                MEM8[935] = 0x4 & 0xFF;
                v63 = bytes20(msg.data[v7 + 133]);
                MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
                v64 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 172, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v7 + 44] >> 232, msg.data[v7 + 41] >> 232, bytes20(msg.data[v7 + 47] >> 96 << 96), v2, msg.data[v7 + 81], v63, bytes20(msg.data[v7 + 113])).gas(msg.gas);
                if (!v64) {
                    v65 = RETURNDATASIZE();
                    revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v3, v45);
                } else {
                    v2 = v66 = MEM[64];
                    v7 = v67 = v7 + 166;
                    v5 = v68 = 0;
                    MEM[832] = 1;
                }
            }
            if ((v52 == 5) & !MEM[0x340]) {
                MEM8[935] = 0x5 & 0xFF;
                MEM8[996] = msg.data[v7 + 141] >> 248 & 0xFF;
                MEM8[997] = msg.data[v7 + 142] >> 248 & 0xFF;
                MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
                v69 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v7 + 44] >> 232, msg.data[v7 + 41] >> 232, bytes20(msg.data[v7 + 47] >> 96 << 96), v2, bytes20(msg.data[v7 + 101]), bytes20(msg.data[v7 + 81]), bytes20(msg.data[v7 + 121]), v63, bytes20(msg.data[v7 + 121])).gas(msg.gas);
                if (!v69) {
                    v70 = RETURNDATASIZE();
                    revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v3, v45);
                } else {
                    v2 = v71 = MEM[64];
                    v7 = v72 = v7 + 156;
                    v5 = v73 = 0;
                    MEM[832] = 1;
                }
            }
            if ((v52 == 6) & !MEM[0x340]) {
                MEM8[935] = 0x6 & 0xFF;
                MEM8[996] = msg.data[v7 + 141] >> 248 & 0xFF;
                MEM8[997] = msg.data[v7 + 142] >> 248 & 0xFF;
                MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
                v74 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v7 + 44] >> 232, msg.data[v7 + 41] >> 232, bytes20(msg.data[v7 + 47] >> 96 << 96), v2, bytes20(msg.data[v7 + 101]), bytes20(msg.data[v7 + 81]), bytes20(msg.data[v7 + 121]), v63, bytes20(msg.data[v7 + 121])).gas(msg.gas);
                if (!v74) {
                    v75 = RETURNDATASIZE();
                    revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v3, v45);
                } else {
                    v2 = v76 = MEM[64];
                    v7 = v77 = v7 + 156;
                    v5 = v78 = 0;
                    MEM[832] = 1;
                }
            }
            if ((v52 == 7) & !MEM[0x340]) {
                MEM8[935] = 0x7 & 0xFF;
                MEM8[996] = msg.data[v7 + 153] >> 248 & 0x1 & 0xFF;
                MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
                v79 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v7 + 44] >> 232, msg.data[v7 + 41] >> 232, bytes20(msg.data[v7 + 47] >> 96 << 96), v2, bytes20(msg.data[v7 + 101]), bytes20(msg.data[v7 + 81]), bytes20(msg.data[v7 + 121]), v63, bytes20(msg.data[v7 + 121])).gas(msg.gas);
                if (!v79) {
                    v80 = RETURNDATASIZE();
                    revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v3, v45);
                } else {
                    v2 = v81 = MEM[64];
                    v7 = v82 = v7 + 154;
                    v5 = v83 = 0;
                    MEM[832] = 1;
                }
            }
            if (MEM[832]) {
            }
        }
        v84 = 0;
        while (v84 < v5) {
            v85 = msg.data[v7] >> 248;
            v86 = 0;
            if (0 == v85) {
                v86 = v87 = msg.data[v7 + 53] >> 248;
            } else if (1 == v85) {
                v86 = v88 = msg.data[v7 + 76] >> 248;
            } else if (2 == v85) {
                v86 = v89 = msg.data[v7 + 79] >> 248;
            } else if (3 == v85) {
                v86 = v90 = msg.data[v7 + 73] >> 248;
            } else if (4 == v85) {
                v86 = v91 = msg.data[v7 + 85] >> 248;
            } else if (5 == v85) {
                v86 = v92 = msg.data[v7 + 75] >> 248;
            } else if (6 == v85) {
                v86 = v93 = msg.data[v7 + 75] >> 248;
            } else if (7 == v85) {
                v86 = v94 = msg.data[v7 + 73] >> 248;
            } else if (8 == v85) {
                v86 = v95 = msg.data[v7 + 21] >> 248;
            } else if (9 == v85) {
                v86 = v96 = msg.data[v7 + 86] >> 248;
            } else if (10 == v85) {
                v86 = v97 = msg.data[v7 + 86] >> 248;
            }
            MEM[896] = this;
            v0 = msg.data[v7 + 1] >> 96;
            if (!v85) {
                v2 = v98 = msg.data[v7 + 41] >> 160;
                if (0 == (v84 + 1 == v5)) {
                    if (!(msg.data[v7 + 54] >> 248)) {
                        MEM[896] = msg.data[v7 + 55] >> 96;
                    }
                } else {
                    MEM[896] = this;
                }
                if (!v98) {
                    v99 = v100, v99 = v101 = 0x49e8(v0);
                    if (v86 & 0x1) {
                    }
                    v2 = v2 * v99 * 997 / (v99 * 1000 + v2 * 997);
                }
                v102 = 0;
                v102 = v103 = 1;
                if (v84) {
                    if (!(v86 >> 2 & v103)) {
                    }
                }
                if (v102) {
                    0x48ba(v0, v0, v2);
                }
                v0 = v104 = msg.data[v7 + 21] >> 96;
                MEM[v102] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                if (1 == v86 & 0x1) {
                    MEM[4] = v102;
                    MEM[36] = v2;
                } else {
                    MEM[4] = v2;
                    MEM[36] = v102;
                }
                v105 = v0.call(v55, v55, v55, MEM[896], 128, v102).value(v102).gas(msg.gas);
                if (!v105) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v106 = RETURNDATASIZE();
                    revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v2, bytes20(msg.data[v7 + 130]));
                } else {
                    v107 = v108 = 1;
                    v7 = v7 + 54;
                }
            } else if (1 == v85) {
                v0 = v109 = msg.data[v7 + 21] >> 96;
                v0 = v110 = msg.data[v7 + 41] >> 96;
                if ((v5 == 3) & (v84 == 1) & (v0 != v109)) {
                    v111 = msg.data[v7 + 77] >> 248;
                    if (v109 <= v110) {
                    }
                    MEM[196] = address(v0);
                    MEM[228] = address(v0);
                    v112 = 0x1 & msg.data[v7 + 76] >> 248;
                    if (!v111) {
                        MEM8[260] = 0x0 & 0xFF;
                        MEM[261] = 0x10000000000000000000000 & msg.data[v7 + 130] >> 160 | bytes20(msg.data[v7 + 78]);
                        MEM[282] = v0 << 96;
                        v2 = v113 = 0x33f0(v0, v112, msg.data[v7 + 64] >> 160);
                        v7 = v7 + 131;
                        MEM[800] = 1;
                        v84 = v114 = 2;
                    }
                    if (v111 == 5) {
                        MEM8[260] = 0x5 & 0xFF;
                        MEM[261] = bytes20(msg.data[v7 + 78]);
                        MEM[281] = bytes20(msg.data[v7 + 98]);
                        MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                        MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                        MEM[303] = v2;
                        v2 = v115 = 0x32a6(v0, v112, msg.data[v7 + 64] >> 160);
                        v7 = v7 + 153;
                        MEM[800] = 1;
                        v84 = v116 = 2;
                    }
                    if (v111 == 6) {
                        MEM8[260] = 0x6 & 0xFF;
                        MEM[261] = bytes20(msg.data[v7 + 78]);
                        MEM[281] = bytes20(msg.data[v7 + 98]);
                        MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                        MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                        MEM[303] = v2;
                        v2 = v117 = 0x32a6(v0, v112, msg.data[v7 + 64] >> 160);
                        v7 = v7 + 153;
                        MEM[800] = 1;
                        v84 = v118 = 2;
                    }
                    if (v111 == 4) {
                        MEM8[260] = 0x4 & 0xFF;
                        MEM[261] = msg.data[v7 + 78];
                        MEM[293] = bytes20(msg.data[v7 + 110]);
                        MEM[333] = v2;
                        v2 = v119 = 0x3314(v0, v112, msg.data[v7 + 64] >> 160);
                        v7 = v7 + 163;
                        MEM[800] = 1;
                        v84 = v120 = 2;
                    }
                    if (7 == v111) {
                        MEM8[260] = 0x7 & 0xFF;
                        MEM[261] = bytes20(msg.data[v7 + 78]);
                        MEM[281] = bytes20(msg.data[v7 + 98]);
                        MEM[301] = bytes20(msg.data[v7 + 118]);
                        MEM8[321] = msg.data[v7 + 150] >> 248 & 0x1 & 0xFF;
                        v2 = v121 = 0x3382(v0, v112, msg.data[v7 + 64] >> 160);
                        v7 = v7 + 151;
                        MEM[800] = 1;
                        v84 = v122 = 2;
                    }
                }
                if (v84 < v5) {
                    if ((v84 != 2) | !MEM[0x320]) {
                        if (v84 + 1 - v5) {
                            if (!(msg.data[v7 + 77] >> 248)) {
                                MEM[896] = msg.data[v7 + 78] >> 96;
                            }
                            v123 = MEM[896];
                        } else {
                            v123 = v124 = MEM[896];
                        }
                        if (v109 <= v110) {
                        }
                        v125 = 0x1000276a4;
                        if (v109 >= v110) {
                            MEM[0] = MEM[0];
                            v125 = v126 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                        v127 = v0.swap(address(v123), v109 < v110, v2, v125, 160, 64, address(v0), address(v0)).gas(msg.gas);
                        if (!v127) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            v128 = RETURNDATASIZE();
                            revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v2, bytes20(msg.data[v7 + 130]));
                        } else {
                            if (1 == v109 < v110) {
                                v2 = v129 = 0 - MEM[32];
                            } else {
                                v2 = v130 = 0 - MEM[0];
                            }
                            if (msg.data[v7 + 64] >> 160) {
                                require(v2 >= msg.data[v7 + 64] >> 160);
                            }
                        }
                    }
                }
                if ((v84 != 2) | !MEM[0x320]) {
                    v7 = v7 + 77;
                }
                v107 = v131 = 1;
            } else if (2 == v85) {
                v0 = v132 = msg.data[v7 + 21] >> 96;
                if (v86 & 0x1) {
                }
                v107 = v133 = 1;
                if (v0 > v132) {
                    v134 = v132 == v0;
                    v135 = msg.data[v7 + 47] >> 96;
                    v136 = msg.data[v7 + 44] >> 232;
                    v137 = msg.data[v7 + 41] >> 232;
                } else {
                    v134 = v138 = v0 == v0;
                    v135 = v139 = msg.data[v7 + 47] >> 96;
                    v136 = v140 = msg.data[v7 + 44] >> 232;
                    v137 = v141 = msg.data[v7 + 41] >> 232;
                }
                v142 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 99, bytes20(v0 << 96), bytes20(v0 << 96), v137, v136, bytes20(v135 << 96), v2, uint248(MEM[1190]) | 0x100000000000000000000000000000000000000000000000000000000000000 & v134 << 248).gas(msg.gas);
                if (!v142) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v143 = RETURNDATASIZE();
                    revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v2, bytes20(msg.data[v7 + 130]));
                } else {
                    v2 = v144 = MEM[64];
                    v7 = v7 + 80;
                }
            } else if (3 == v85) {
                v145 = 1;
                v146 = v7 + 74;
                v5 = v84 + v145;
                while (v5 < v5) {
                    if (msg.data[v146] >> 248 == 3) {
                    }
                    if (msg.data[v146] >> 248 == 3) {
                        v145 = v145 + 1;
                        v146 = v146 + 74;
                    }
                    v5 += 1;
                }
                if (1 == v145 > 1) {
                    v107 = v147 = 1;
                    MEM[768] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                    MEM[772] = 32;
                    MEM[804] = v145 * 96 + 68;
                    MEM[836] = 0x7b4e1e6700000000000000000000000000000000000000000000000000000000;
                    MEM[840] = v145;
                    MEM[872] = v2;
                    v148 = v149 = 0;
                    v150 = v151 = 904;
                    while (v148 < v145) {
                        MEM[v150] = msg.data[v7 + 1] >> 96;
                        MEM[v150 + 32] = msg.data[v7 + 21] >> 96;
                        MEM[v150 + 64] = msg.data[v7 + 41] >> 96;
                        v150 = v150 + 96;
                        v7 = v7 + 74;
                        v148 = v148 + 1;
                    }
                    MEM[0] = MEM[0];
                    v152 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[768:768 + v1110x1dab * 96 + 136], MEM[0:96]).gas(msg.gas);
                    if (!v152) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        v153 = RETURNDATASIZE();
                        revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v2, bytes20(msg.data[v7 + 130]));
                    } else {
                        v2 = v154 = MEM[64];
                        v0 = v155 = msg.data[v7 + (v145 - 1) * 74 + 41] >> 96;
                        v7 += v145 * 74;
                        v84 = v84 + v145 - 1;
                    }
                } else {
                    v107 = v156 = 1;
                    v0 = v157 = msg.data[v7 + 41] >> 96;
                    MEM[0] = MEM[0];
                    v158 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, 164, 0x6aeb34df, address(v0), address(msg.data[v7 + 21] >> 96), address(v157), v2, msg.data[v7 + 61] >> 160).gas(msg.gas);
                    if (!v158) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        v159 = RETURNDATASIZE();
                        revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, v2, bytes20(msg.data[v7 + 130]));
                    } else {
                        v2 = v160 = MEM[64];
                        v7 = v7 + 74;
                    }
                }
            } else if (4 == v85) {
                v107 = v161 = 1;
                v0 = v162 = msg.data[v7 + 53] >> 96;
                v2 = v163 = 0x3ff8(msg.data[v7 + v161], msg.data[v7 + 33] >> 96, v162, v2, msg.data[v7 + 73] >> 160);
                v7 = v7 + 86;
            } else if (5 == v85) {
                v107 = v164 = 1;
                v0 = v165 = msg.data[v7 + 41] >> 96;
                v2 = v166 = 0x4125(v0, msg.data[v7 + 21] >> 96, v165, msg.data[v7 + 61] >> 248, uint8(msg.data[v7 + 61] >> 240), v2, msg.data[v7 + 63] >> 160, v86 >> 2 & v164, v86 >> 3 & v164);
                v7 = v7 + 76;
            } else if (6 == v85) {
                v107 = v167 = 1;
                v0 = v168 = msg.data[v7 + 41] >> 96;
                v2 = v169 = 0x426c(v0, msg.data[v7 + 21] >> 96, v168, msg.data[v7 + 61] >> 248, uint8(msg.data[v7 + 61] >> 240), v2, msg.data[v7 + 63] >> 160, v86 >> 2 & v167);
                v7 = v7 + 76;
            } else if (7 == v85) {
                v2 = v170 = 0x43dc(v0, msg.data[v7 + 21] >> 96, v2, msg.data[v7 + 61] >> 160, v86 & 0x1);
                v107 = v171 = 1;
                v0 = v172 = msg.data[v7 + 41] >> 96;
                v7 = v7 + 74;
            } else if (8 == v85) {
                v107 = v173 = 1;
                v2 = 0x4a09(v0, v2, v86 & v173);
                v7 = v7 + 22;
            } else if (9 == v85) {
                v0 = v174 = msg.data[v7 + 21] >> 96;
                if (!(msg.data[v7 + 73] >> 248 & 0x1)) {
                }
                v107 = v175 = 1;
                v2 = v176 = 0x4f8a(v0, v174, msg.data[v7 + 41], msg.data[v7 + 73] >> 248 & 0x1, v2, this);
                v7 = v7 + 87;
            } else {
                require(10 == v85);
                v0 = v177 = msg.data[v7 + 21] >> 96;
                if (!(msg.data[v7 + 73] >> 248 & 0x1)) {
                }
                v107 = 1;
                v2 = v178 = 0x4fe0(v0, v177, msg.data[v7 + 41], msg.data[v7 + 73] >> 248 & 0x1, v2, this);
                v7 = v7 + 87;
            }
            v84 = v84 + v107;
        }
        if (MEM[0x320] | MEM[0x340]) {
            if (!v179) {
                MEM[0] = MEM[0];
                v180 = v181 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v2 = v182 = 0x4d4c(v180, this);
        }
        if (v2) {
            0x48ba(v180, _rescueETH, v2);
        }
        v2 = v183 = 0;
        if (!v1) {
            MEM[0] = MEM[0];
            v0 = v184 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
        if (!v180) {
            MEM[0] = MEM[0];
            v180 = v185 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
        if (v180 == v0) {
            if (v2 > v3) {
                v2 = v186 = v2 - v3;
            }
        }
        if (v180 == v0) {
        }
        if (msg.value) {
            v187 = block.coinbase.call().value(msg.value).gas(msg.gas);
            require(v187);
        }
        return v2;
    } else {
        if (1 == msg.data[payload.data] >> 248) {
            v188 = v189 = 0;
            v188 = v190 = MEM[64];
            if (v190 < 128) {
                v188 = v191 = 128;
            }
            MEM[v188] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            MEM[v188 + 4] = msg.data[payload + 57];
            MEM[v188 + 36] = msg.data[payload + 89];
            MEM[v188 + 68] = this;
            MEM[v188 + 100] = 128;
            MEM[v188 + 132] = payload.length - 85;
            v192 = v193 = 37;
            CALLDATACOPY(v188 + 164, payload + 121, payload.length - 85);
            v194 = v195 = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & payload.length - 54;
            if (v195 > payload.length - 85) {
                MEM[v188 + payload.length + 79] = v189;
            } else {
                v196 = (msg.data[payload + v193] >> 96).call(MEM[v2f6_0x4:v2f6_0x4 + 164 + v2d7], MEM[v278:v278 + v278]).value(v189).gas(msg.gas);
                require(v196, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
        } else if (2 == msg.data[payload.data] >> 248) {
            v188 = v197 = 0;
            v192 = v198 = 37;
            MEM[v197] = 0x490e6cbc00000000000000000000000000000000000000000000000000000000;
            MEM[4] = this;
            MEM[36] = msg.data[payload + 57];
            MEM[68] = msg.data[payload + 89];
            MEM[100] = 128;
            MEM[132] = payload.length - 85;
            CALLDATACOPY(164, payload + 121, payload.length - 85);
            v194 = v199 = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & payload.length - 54;
            if (v199 > payload.length - 85) {
                MEM[payload.length + 79] = v197;
            }
        } else {
            require(3 == msg.data[payload.data] >> 248);
            CALLDATACOPY(292, payload + 89, payload.length - 53);
            if (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & payload.length - 22 > payload.length - 53) {
                MEM[payload.length + 239] = 0;
            }
            v200 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(0x5c38449e00000000000000000000000000000000000000000000000000000000, this, 0x5c38449e00000000000000000000000000000000000000000000000000000000, 128, 192, uint8.max + 1, 1, msg.data[payload + 37] >> 96, 1, msg.data[payload + 57], payload.length - 53).gas(msg.gas);
            require(v200, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        if (msg.value) {
            v201 = block.coinbase.call().value(msg.value).gas(msg.gas);
            require(v201);
        }
        return tstor_2000;
        v202 = (msg.data[payload + v192] >> 96).call(MEM[v2f6_0x4:v2f6_0x4 + 164 + v252_0x1], MEM[v2f6_0x4:v2f6_0x4 + v2f6_0x4]).value(v188).gas(msg.gas);
        require(v202, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x3231(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0x1000276a4;
    if (!varg1) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v3 = varg0.swap(this, varg1, 0 - varg2, v0, 160, 86).gas(msg.gas);
    require(v3, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (1 == varg1) {
        return 0 - MEM[32];
    } else {
        return 0 - MEM[0];
    }
}

function 0x32a6(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0x1000276a4;
    if (!varg1) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v3 = varg0.swap(this, varg1, 0 - varg2, v0, 160, 119).gas(msg.gas);
    require(v3, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (1 == varg1) {
        return 0 - MEM[32];
    } else {
        return 0 - MEM[0];
    }
}

function 0x3314(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0x1000276a4;
    if (!varg1) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v3 = varg0.swap(this, varg1, 0 - varg2, v0, 160, 149).gas(msg.gas);
    require(v3, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (1 == varg1) {
        return 0 - MEM[32];
    } else {
        return 0 - MEM[0];
    }
}

function 0x3382(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0x1000276a4;
    if (!varg1) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v3 = varg0.swap(this, varg1, 0 - varg2, v0, 160, 138).gas(msg.gas);
    require(v3, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (1 == varg1) {
        return 0 - MEM[32];
    } else {
        return 0 - MEM[0];
    }
}

function 0x33f0(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0x1000276a4;
    if (!varg1) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v3 = varg0.swap(this, varg1, 0 - varg2, v0, 160, 106).gas(msg.gas);
    require(v3, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (1 == varg1) {
        return 0 - MEM[32];
    } else {
        return 0 - MEM[0];
    }
}

function 0x3ff8(uint256 varg0, address varg1, address varg2, uint256 varg3, uint256 varg4) private { 
    0x4525(varg1);
    MEM[0] = MEM[0];
    v0 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.swap(224, this, 0, this, 0, varg4, uint256.max, varg0, 0, varg1, varg2, varg3, 192, 0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return MEM[0];
}

function 0x408d(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = 0x4d4c(varg2, this);
    0x45b9(varg1, varg0);
    if (1 != varg6) {
    }
    v1 = varg0.exchange(0xa6417ed600000000000000000000000000000000000000000000000000000000, varg3, varg4, varg5, 0).gas(msg.gas);
    require(v1, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (1 == bool(RETURNDATASIZE())) {
        return MEM[0];
    } else {
        v2 = 0x4d4c(varg2, this);
        return v2 - v0;
    }
}

function 0x4125(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = v1 = 0;
    if (!varg7) {
        v0 = v2 = 0x4d4c(varg2, this);
    }
    0x45b9(varg1, varg0);
    if (1 != varg8) {
    }
    v3 = varg0.exchange(0xa6417ed600000000000000000000000000000000000000000000000000000000, varg3, varg4, varg5, varg6).gas(msg.gas);
    require(v3, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (varg7) {
        v0 = MEM[0];
    }
    if (!varg7) {
        if (1 == bool(RETURNDATASIZE())) {
            return MEM[0];
        } else {
            v4 = 0x4d4c(varg2, this);
            return v4 - v0;
        }
    } else {
        return v0;
    }
}

function 0x41f6(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = 0x4d4c(varg2, this);
    0x45b9(varg1, varg0);
    v1 = varg0.setMetaGold(varg3, varg4, varg5, 0).gas(msg.gas);
    require(v1, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (1 == bool(RETURNDATASIZE())) {
        return MEM[0];
    } else {
        v2 = 0x4d4c(varg2, this);
        return v2 - v0;
    }
}

function 0x426c(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = v1 = 0;
    if (!varg7) {
        v0 = v2 = 0x4d4c(varg2, this);
    }
    0x45b9(varg1, varg0);
    v3 = varg0.setMetaGold(varg3, varg4, varg5, varg6).gas(msg.gas);
    require(v3, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (varg7) {
        if (varg7) {
            return MEM[0];
        }
    } else if (varg7) {
        return v1;
    }
    if (1 == bool(RETURNDATASIZE())) {
        return MEM[0];
    } else {
        v4 = 0x4d4c(varg2, this);
        return v4 - v0;
    }
}

function uniswapV2Call(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, bytes20 varg11, bytes20 varg12, bytes20 varg13, bytes20 varg14, bytes20 varg15, uint256 varg16, uint256 varg17) public payable { 
    v0 = v1 = varg2 >> 96;
    if (varg1) {
    }
    v2 = v3 = varg3 >> 248;
    v4 = v5 = 185;
    MEM[800] = 0;
    MEM[832] = 0;
    if ((v3 == 2) & (varg4 >> 248 == 1)) {
        if (varg8 >> 160) {
            v0 = v6 = varg6 >> 96;
            v0 = v7 = varg7 >> 96;
            if (v6 <= v7) {
            }
            MEM[196] = address(v0);
            MEM[228] = address(v0);
            if (!(varg10 >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & varg15 >> 160 | varg11;
                v8 = v9 = 0x3231(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v10 = 316;
                v2 = v11 = 0;
                MEM[800] = 1;
            }
            if (varg10 >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = varg11;
                MEM[281] = varg12;
                MEM8[301] = varg16 >> 248 & 0xFF;
                MEM8[302] = uint8(varg16 >> 240) & 0xFF;
                MEM[303] = v8;
                v8 = v12 = 0x32a6(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v13 = v4 + 153;
                v2 = v14 = 0;
                MEM[800] = 1;
            }
            if (varg10 >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = varg11;
                MEM[281] = varg12;
                MEM8[301] = varg16 >> 248 & 0xFF;
                MEM8[302] = uint8(varg16 >> 240) & 0xFF;
                MEM[303] = v8;
                v8 = v15 = 0x32a6(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v16 = v4 + 153;
                v2 = v17 = 0;
                MEM[800] = 1;
            }
            if (varg10 >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = varg11;
                MEM[293] = varg13;
                MEM[313] = varg15;
                MEM[333] = v8;
                v8 = v18 = 0x3314(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v19 = v4 + 163;
                v2 = v20 = 0;
                MEM[800] = 1;
            }
            if (7 == varg10 >> 248) {
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = varg11;
                MEM[281] = varg12;
                MEM[301] = varg14;
                MEM8[321] = varg17 >> 248 & 0x1 & 0xFF;
                MEM[322] = v8;
                v8 = v21 = 0x3382(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v22 = v4 + 151;
                v2 = v23 = 0;
                MEM[800] = 1;
            }
        }
    }
    if ((v2 == 3) & (msg.data[v4] >> 248 == 1)) {
        if (msg.data[v4 + 64] >> 160) {
            v24 = v25 = msg.data[v4 + 21] >> 96;
            v24 = v26 = msg.data[v4 + 41] >> 96;
            if (v25 <= v26) {
            }
            MEM[196] = address(v24);
            MEM[228] = address(v24);
            if (!(msg.data[v4 + 77] >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & msg.data[v4 + 130] >> 160 | bytes20(msg.data[v4 + 78]);
                v8 = v27 = 0x3231(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v28 = msg.data[v4 + 98] >> 96;
                v4 = v29 = v4 + 131;
                v2 = v30 = 1;
                MEM[800] = v30;
            }
            if (msg.data[v4 + 77] >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = bytes20(msg.data[v4 + 78]);
                MEM[281] = bytes20(msg.data[v4 + 98]);
                MEM8[301] = msg.data[v4 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v4 + 138] >> 240) & 0xFF;
                MEM[303] = v8;
                v8 = v31 = 0x32a6(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v32 = msg.data[v4 + 118] >> 96;
                v4 = v33 = v4 + 153;
                v2 = v34 = 1;
                MEM[800] = v34;
            }
            if (msg.data[v4 + 77] >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = bytes20(msg.data[v4 + 78]);
                MEM[281] = bytes20(msg.data[v4 + 98]);
                MEM8[301] = msg.data[v4 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v4 + 138] >> 240) & 0xFF;
                MEM[303] = v8;
                v8 = v35 = 0x32a6(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v36 = msg.data[v4 + 118] >> 96;
                v4 = v37 = v4 + 153;
                v2 = v38 = 1;
                MEM[800] = v38;
            }
            if (msg.data[v4 + 77] >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = msg.data[v4 + 78];
                MEM[293] = bytes20(msg.data[v4 + 110]);
                MEM[313] = bytes20(msg.data[v4 + 130]);
                MEM[333] = v8;
                v8 = v39 = 0x3314(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v40 = msg.data[v4 + 130] >> 96;
                v4 = v41 = v4 + 163;
                v2 = v42 = 1;
                MEM[800] = v42;
            }
            if (7 == msg.data[v4 + 77] >> 248) {
                0x45b9(msg.data[v4 + 98] >> 96, msg.data[v4 + 78] >> 96);
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = bytes20(msg.data[v4 + 78]);
                MEM[281] = bytes20(msg.data[v4 + 98]);
                MEM8[321] = msg.data[v4 + 150] >> 248 & 0x1 & 0xFF;
                v8 = v43 = 0x3382(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v44 = msg.data[v4 + 118] >> 96;
                v4 = v45 = v4 + 151;
                v2 = v46 = 1;
                MEM[800] = v46;
            }
        }
    }
    if ((v2 == 2) & !MEM[0x320] & (msg.data[v4] >> 248 == 2)) {
        v0 = v47 = msg.data[v4 + 1] >> 96;
        v0 = v48 = msg.data[v4 + 21] >> 96;
        if (msg.data[v4 + 79] >> 248 & 0x1) {
        }
        if (v47 <= v48) {
        }
        if (!(msg.data[v4 + 80] >> 248)) {
            MEM8[935] = 0x0 & 0xFF;
            MEM8[956] = msg.data[v4 + 133] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v49 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 121, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, bytes20(msg.data[v4 + 81])).gas(msg.gas);
            if (!v49) {
                v50 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v52 = MEM[64];
                v4 = v53 = v4 + 134;
                v2 = v54 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 1) & !MEM[0x340]) {
            v55 = v56 = msg.data[v4 + 101] >> 96;
            v55 = v57 = msg.data[v4 + 121] >> 96;
            if (v56 <= v57) {
            }
            MEM8[935] = 0x1 & 0xFF;
            MEM8[996] = msg.data[v4 + 156] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v58 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, v55, bytes20(msg.data[v4 + 81]), v55, v55 << 96, v55, v55 << 96).gas(msg.gas);
            if (!v58) {
                v59 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v60 = MEM[64];
                v4 = v61 = v4 + 157;
                v2 = v62 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 4) & !MEM[0x340]) {
            MEM8[935] = 0x4 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v63 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 172, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, msg.data[v4 + 81], bytes20(msg.data[v4 + 113]), bytes20(msg.data[v4 + 133])).gas(msg.gas);
            if (!v63) {
                v64 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v65 = MEM[64];
                v4 = v66 = v4 + 166;
                v2 = v67 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 5) & !MEM[0x340]) {
            MEM8[935] = 0x5 & 0xFF;
            MEM8[996] = msg.data[v4 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v4 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v68 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, bytes20(msg.data[v4 + 81]), bytes20(msg.data[v4 + 101]), bytes20(msg.data[v4 + 121]), bytes20(msg.data[v4 + 133]), bytes20(msg.data[v4 + 121])).gas(msg.gas);
            if (!v68) {
                v69 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v70 = MEM[64];
                v4 = v71 = v4 + 156;
                v2 = v72 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 6) & !MEM[0x340]) {
            MEM8[935] = 0x6 & 0xFF;
            MEM8[996] = msg.data[v4 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v4 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v73 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, bytes20(msg.data[v4 + 81]), bytes20(msg.data[v4 + 101]), bytes20(msg.data[v4 + 121]), bytes20(msg.data[v4 + 133]), bytes20(msg.data[v4 + 121])).gas(msg.gas);
            if (!v73) {
                v74 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v75 = MEM[64];
                v4 = v76 = v4 + 156;
                v2 = v77 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 7) & !MEM[0x340]) {
            MEM8[935] = 0x7 & 0xFF;
            MEM8[996] = msg.data[v4 + 153] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v78 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, bytes20(msg.data[v4 + 81]), bytes20(msg.data[v4 + 101]), bytes20(msg.data[v4 + 121]), bytes20(msg.data[v4 + 133]), bytes20(msg.data[v4 + 121])).gas(msg.gas);
            if (!v78) {
                v79 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v80 = MEM[64];
                v4 = v81 = v4 + 154;
                v2 = v82 = 0;
                MEM[832] = 1;
            }
        }
        if (MEM[832]) {
        }
    }
    v83 = v84 = 0;
    while (v83 < v2) {
        v85 = msg.data[v4] >> 248;
        v86 = v87 = 0;
        if (0 == v85) {
            v86 = v88 = msg.data[v4 + 53] >> 248;
        } else if (1 == v85) {
            v86 = v89 = msg.data[v4 + 76] >> 248;
        } else if (2 == v85) {
            v86 = v90 = msg.data[v4 + 79] >> 248;
        } else if (3 == v85) {
            v86 = v91 = msg.data[v4 + 73] >> 248;
        } else if (4 == v85) {
            v86 = v92 = msg.data[v4 + 85] >> 248;
        } else if (5 == v85) {
            v86 = v93 = msg.data[v4 + 75] >> 248;
        } else if (6 == v85) {
            v86 = v94 = msg.data[v4 + 75] >> 248;
        } else if (7 == v85) {
            v86 = v95 = msg.data[v4 + 73] >> 248;
        } else if (8 == v85) {
            v86 = v96 = msg.data[v4 + 21] >> 248;
        } else if (9 == v85) {
            v86 = v97 = msg.data[v4 + 86] >> 248;
        } else if (10 == v85) {
            v86 = v98 = msg.data[v4 + 86] >> 248;
        }
        MEM[896] = this;
        v0 = v99 = msg.data[v4 + 1] >> 96;
        if (!v85) {
            v8 = v100 = msg.data[v4 + 41] >> 160;
            if (0 == (v83 + 1 == v2)) {
                if (!(msg.data[v4 + 54] >> 248)) {
                    MEM[896] = msg.data[v4 + 55] >> 96;
                }
            } else {
                MEM[896] = this;
            }
            if (!v100) {
                v101 = v102, v101 = v103 = 0x49e8(v99);
                if (v86 & 0x1) {
                }
                v8 = v8 * v101 * 997 / (v101 * 1000 + v8 * 997);
            }
            v104 = v105 = 0;
            v104 = 1;
            if (v83) {
                if (!(v86 >> 2 & v104)) {
                }
            }
            if (v104) {
                0x48ba(v0, v99, v8);
            }
            v0 = v106 = msg.data[v4 + 21] >> 96;
            MEM[v105] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (1 == v86 & 0x1) {
                MEM[4] = v105;
                MEM[36] = v8;
            } else {
                MEM[4] = v8;
                MEM[36] = v105;
            }
            v107 = v99.call(v51, v51, v51, MEM[896], 128, v105).value(v105).gas(msg.gas);
            if (!v107) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v108 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
            } else {
                v109 = v110 = 1;
                v4 = v4 + 54;
            }
        } else if (1 == v85) {
            v0 = v111 = msg.data[v4 + 21] >> 96;
            v0 = v112 = msg.data[v4 + 41] >> 96;
            if ((v2 == 3) & (v83 == 1) & (v0 != v111)) {
                if (v111 <= v112) {
                }
                MEM[196] = address(v0);
                MEM[228] = address(v0);
                if (!(msg.data[v4 + 77] >> 248)) {
                    MEM8[260] = 0x0 & 0xFF;
                    MEM[261] = 0x10000000000000000000000 & msg.data[v4 + 130] >> 160 | bytes20(msg.data[v4 + 78]);
                    MEM[282] = v0 << 96;
                    v8 = v113 = 0x33f0(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 131;
                    MEM[800] = 1;
                    v83 = v114 = 2;
                }
                if (msg.data[v4 + 77] >> 248 == 5) {
                    MEM8[260] = 0x5 & 0xFF;
                    MEM[261] = bytes20(msg.data[v4 + 78]);
                    MEM[281] = bytes20(msg.data[v4 + 98]);
                    MEM8[301] = msg.data[v4 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v4 + 138] >> 240) & 0xFF;
                    MEM[303] = v8;
                    v8 = v115 = 0x32a6(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 153;
                    MEM[800] = 1;
                    v83 = v116 = 2;
                }
                if (msg.data[v4 + 77] >> 248 == 6) {
                    MEM8[260] = 0x6 & 0xFF;
                    MEM[261] = bytes20(msg.data[v4 + 78]);
                    MEM[281] = bytes20(msg.data[v4 + 98]);
                    MEM8[301] = msg.data[v4 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v4 + 138] >> 240) & 0xFF;
                    MEM[303] = v8;
                    v8 = v117 = 0x32a6(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 153;
                    MEM[800] = 1;
                    v83 = v118 = 2;
                }
                if (msg.data[v4 + 77] >> 248 == 4) {
                    MEM8[260] = 0x4 & 0xFF;
                    MEM[261] = msg.data[v4 + 78];
                    MEM[293] = bytes20(msg.data[v4 + 110]);
                    MEM[333] = v8;
                    v8 = v119 = 0x3314(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 163;
                    MEM[800] = 1;
                    v83 = v120 = 2;
                }
                if (7 == msg.data[v4 + 77] >> 248) {
                    MEM8[260] = 0x7 & 0xFF;
                    MEM[261] = bytes20(msg.data[v4 + 78]);
                    MEM[281] = bytes20(msg.data[v4 + 98]);
                    MEM[301] = bytes20(msg.data[v4 + 118]);
                    MEM8[321] = msg.data[v4 + 150] >> 248 & 0x1 & 0xFF;
                    v8 = v121 = 0x3382(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 151;
                    MEM[800] = 1;
                    v83 = v122 = 2;
                }
            }
            if (v83 < v2) {
                if ((v83 != 2) | !MEM[0x320]) {
                    if (v83 + 1 - v2) {
                        if (!(msg.data[v4 + 77] >> 248)) {
                            MEM[896] = msg.data[v4 + 78] >> 96;
                        }
                    }
                    if (v111 <= v112) {
                    }
                    v123 = 0x1000276a4;
                    if (v111 >= v112) {
                        MEM[0] = MEM[0];
                        v123 = v124 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                    v125 = v99.swap(address(MEM[0x380]), v111 < v112, v8, v123, 160, 64, address(v0), address(v0)).gas(msg.gas);
                    if (!v125) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        v126 = RETURNDATASIZE();
                        revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
                    } else {
                        if (1 == v111 < v112) {
                            v8 = v127 = 0 - MEM[32];
                        } else {
                            v8 = v128 = 0 - MEM[0];
                        }
                        if (msg.data[v4 + 64] >> 160) {
                            require(v8 >= msg.data[v4 + 64] >> 160);
                        }
                    }
                }
            }
            if ((v83 != 2) | !MEM[0x320]) {
                v4 = v4 + 77;
            }
            v109 = v129 = 1;
        } else if (2 == v85) {
            v0 = v130 = msg.data[v4 + 21] >> 96;
            if (v86 & 0x1) {
            }
            v109 = v131 = 1;
            if (v99 <= v130) {
            }
            v132 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 99, bytes20(v0 << 96), bytes20(v0 << 96), bytes20(msg.data[v4 + 47] >> 96 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, v8, uint248(MEM[1190]) | 0x100000000000000000000000000000000000000000000000000000000000000 & (v0 == v0) << 248).gas(msg.gas);
            if (!v132) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v133 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
            } else {
                v8 = v134 = MEM[64];
                v4 = v4 + 80;
            }
        } else if (3 == v85) {
            v135 = v136 = 1;
            v137 = v138 = v4 + 74;
            v2 = v139 = v83 + v136;
            while (v2 < v2) {
                if (msg.data[v137] >> 248 == 3) {
                }
                if (msg.data[v137] >> 248 == 3) {
                    v135 = v135 + 1;
                    v137 = v137 + 74;
                }
                v2 += 1;
            }
            if (1 == v135 > 1) {
                v109 = v140 = 1;
                MEM[768] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[772] = 32;
                MEM[804] = v135 * 96 + 68;
                MEM[836] = 0x7b4e1e6700000000000000000000000000000000000000000000000000000000;
                MEM[840] = v135;
                MEM[872] = v8;
                v141 = v142 = 0;
                v143 = v144 = 904;
                while (v141 < v135) {
                    MEM[v143] = msg.data[v4 + 1] >> 96;
                    MEM[v143 + 32] = msg.data[v4 + 21] >> 96;
                    MEM[v143 + 64] = msg.data[v4 + 41] >> 96;
                    v143 = v143 + 96;
                    v4 = v4 + 74;
                    v141 = v141 + 1;
                }
                MEM[0] = MEM[0];
                v145 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[768:768 + vc53_0x2V0x42f38 * 96 + 136], MEM[0:96]).gas(msg.gas);
                if (!v145) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v146 = RETURNDATASIZE();
                    revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
                } else {
                    v8 = v147 = MEM[64];
                    v0 = v148 = msg.data[v4 + (v135 - 1) * 74 + 41] >> 96;
                    v4 += v135 * 74;
                    v83 = v83 + v135 - 1;
                }
            } else {
                v109 = 1;
                v0 = v149 = msg.data[v4 + 41] >> 96;
                MEM[0] = MEM[0];
                v150 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, 164, 0x6aeb34df, address(v99), address(msg.data[v4 + 21] >> 96), address(v149), v8, msg.data[v4 + 61] >> 160).gas(msg.gas);
                if (!v150) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v151 = RETURNDATASIZE();
                    revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
                } else {
                    v8 = MEM[64];
                    v4 = v4 + 74;
                }
            }
        } else if (4 == v85) {
            v109 = v152 = 1;
            v0 = v153 = msg.data[v4 + 53] >> 96;
            v8 = v154 = 0x3ff8(msg.data[v4 + v152], msg.data[v4 + 33] >> 96, v153, v8, msg.data[v4 + 73] >> 160);
            v4 = v4 + 86;
        } else if (5 == v85) {
            v109 = v155 = 1;
            v0 = v156 = msg.data[v4 + 41] >> 96;
            v8 = v157 = 0x4125(v99, msg.data[v4 + 21] >> 96, v156, msg.data[v4 + 61] >> 248, uint8(msg.data[v4 + 61] >> 240), v8, msg.data[v4 + 63] >> 160, v86 >> 2 & v155, v86 >> 3 & v155);
            v4 = v4 + 76;
        } else if (6 == v85) {
            v109 = v158 = 1;
            v0 = v159 = msg.data[v4 + 41] >> 96;
            v8 = v160 = 0x426c(v99, msg.data[v4 + 21] >> 96, v159, msg.data[v4 + 61] >> 248, uint8(msg.data[v4 + 61] >> 240), v8, msg.data[v4 + 63] >> 160, v86 >> 2 & v158);
            v4 = v4 + 76;
        } else if (7 == v85) {
            v8 = v161 = 0x43dc(v99, msg.data[v4 + 21] >> 96, v8, msg.data[v4 + 61] >> 160, v86 & 0x1);
            v109 = v162 = 1;
            v0 = v163 = msg.data[v4 + 41] >> 96;
            v4 = v4 + 74;
        } else if (8 == v85) {
            v109 = v164 = 1;
            v8 = 0x4a09(v99, v8, v86 & v164);
            v4 = v4 + 22;
        } else if (9 == v85) {
            v0 = v165 = msg.data[v4 + 21] >> 96;
            if (!(msg.data[v4 + 73] >> 248 & 0x1)) {
            }
            v109 = v166 = 1;
            v8 = v167 = 0x4f8a(v99, v165, msg.data[v4 + 41], msg.data[v4 + 73] >> 248 & 0x1, v8, this);
            v4 = v4 + 87;
        } else {
            require(10 == v85);
            v0 = v168 = msg.data[v4 + 21] >> 96;
            if (!(msg.data[v4 + 73] >> 248 & 0x1)) {
            }
            v109 = v169 = 1;
            v8 = v170 = 0x4fe0(v99, v168, msg.data[v4 + 41], msg.data[v4 + 73] >> 248 & 0x1, v8, this);
            v4 = v4 + 87;
        }
        v83 = v83 + v109;
    }
    MEM[0] = MEM[0];
    if ((v1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) & !v0) {
        if (this.balance) {
            v171 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(this.balance).gas(msg.gas);
            require(v171);
        }
    }
    0x48ba(v1, msg.sender, (v8 * 1000 + 996) / 997);
    v172 = 0x4d4c(v1, this);
    tstor_2000 = v172;
    if (v172) {
        0x48ba(v1, _rescueETH, v172);
    }
}

function pancakeCall(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, bytes20 varg11, bytes20 varg12, bytes20 varg13, bytes20 varg14, uint256 varg15, uint256 varg16, uint256 varg17) public payable { 
    v0 = v1 = varg2 >> 96;
    if (varg1) {
    }
    v2 = v3 = varg3 >> 248;
    v4 = v5 = 185;
    MEM[800] = 0;
    MEM[832] = 0;
    if ((v3 == 2) & (varg4 >> 248 == 1)) {
        if (varg8 >> 160) {
            v0 = v6 = varg6 >> 96;
            v0 = v7 = varg7 >> 96;
            if (v6 <= v7) {
            }
            MEM[196] = address(v0);
            MEM[228] = address(v0);
            if (!(varg10 >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & varg15 >> 160 | varg11;
                v8 = v9 = 0x3231(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v10 = 316;
                v2 = v11 = 0;
                MEM[800] = 1;
            }
            if (varg10 >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = varg11;
                MEM[281] = varg12;
                MEM8[301] = varg16 >> 248 & 0xFF;
                MEM8[302] = uint8(varg16 >> 240) & 0xFF;
                MEM[303] = v8;
                v8 = v12 = 0x32a6(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v13 = v4 + 153;
                v2 = v14 = 0;
                MEM[800] = 1;
            }
            if (varg10 >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = varg11;
                MEM[281] = varg12;
                MEM8[301] = varg16 >> 248 & 0xFF;
                MEM8[302] = uint8(varg16 >> 240) & 0xFF;
                MEM[303] = v8;
                v8 = v15 = 0x32a6(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v16 = v4 + 153;
                v2 = v17 = 0;
                MEM[800] = 1;
            }
            if (varg10 >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = varg11;
                MEM[293] = varg13;
                MEM[313] = bytes20(varg15);
                MEM[333] = v8;
                v8 = v18 = 0x3314(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v19 = v4 + 163;
                v2 = v20 = 0;
                MEM[800] = 1;
            }
            if (7 == varg10 >> 248) {
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = varg11;
                MEM[281] = varg12;
                MEM[301] = varg14;
                MEM8[321] = varg17 >> 248 & 0x1 & 0xFF;
                MEM[322] = v8;
                v8 = v21 = 0x3382(varg5 >> 96, varg9 >> 248 & 0x1, varg8 >> 160);
                v4 = v22 = v4 + 151;
                v2 = v23 = 0;
                MEM[800] = 1;
            }
        }
    }
    if ((v2 == 3) & (msg.data[v4] >> 248 == 1)) {
        if (msg.data[v4 + 64] >> 160) {
            v24 = v25 = msg.data[v4 + 21] >> 96;
            v24 = v26 = msg.data[v4 + 41] >> 96;
            if (v25 <= v26) {
            }
            MEM[196] = address(v24);
            MEM[228] = address(v24);
            if (!(msg.data[v4 + 77] >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & msg.data[v4 + 130] >> 160 | bytes20(msg.data[v4 + 78]);
                v8 = v27 = 0x3231(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v28 = msg.data[v4 + 98] >> 96;
                v4 = v29 = v4 + 131;
                v2 = v30 = 1;
                MEM[800] = v30;
            }
            if (msg.data[v4 + 77] >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = bytes20(msg.data[v4 + 78]);
                MEM[281] = bytes20(msg.data[v4 + 98]);
                MEM8[301] = msg.data[v4 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v4 + 138] >> 240) & 0xFF;
                MEM[303] = v8;
                v8 = v31 = 0x32a6(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v32 = msg.data[v4 + 118] >> 96;
                v4 = v33 = v4 + 153;
                v2 = v34 = 1;
                MEM[800] = v34;
            }
            if (msg.data[v4 + 77] >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = bytes20(msg.data[v4 + 78]);
                MEM[281] = bytes20(msg.data[v4 + 98]);
                MEM8[301] = msg.data[v4 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v4 + 138] >> 240) & 0xFF;
                MEM[303] = v8;
                v8 = v35 = 0x32a6(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v36 = msg.data[v4 + 118] >> 96;
                v4 = v37 = v4 + 153;
                v2 = v38 = 1;
                MEM[800] = v38;
            }
            if (msg.data[v4 + 77] >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = msg.data[v4 + 78];
                MEM[293] = bytes20(msg.data[v4 + 110]);
                MEM[313] = bytes20(msg.data[v4 + 130]);
                MEM[333] = v8;
                v8 = v39 = 0x3314(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v40 = msg.data[v4 + 130] >> 96;
                v4 = v41 = v4 + 163;
                v2 = v42 = 1;
                MEM[800] = v42;
            }
            if (7 == msg.data[v4 + 77] >> 248) {
                0x45b9(msg.data[v4 + 98] >> 96, msg.data[v4 + 78] >> 96);
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = bytes20(msg.data[v4 + 78]);
                MEM[281] = bytes20(msg.data[v4 + 98]);
                MEM8[321] = msg.data[v4 + 150] >> 248 & 0x1 & 0xFF;
                v8 = v43 = 0x3382(msg.data[v4 + 1] >> 96, msg.data[v4 + 76] >> 248 & 0x1, msg.data[v4 + 64] >> 160);
                v0 = v44 = msg.data[v4 + 118] >> 96;
                v4 = v45 = v4 + 151;
                v2 = v46 = 1;
                MEM[800] = v46;
            }
        }
    }
    if ((v2 == 2) & !MEM[0x320] & (msg.data[v4] >> 248 == 2)) {
        v0 = v47 = msg.data[v4 + 1] >> 96;
        v0 = v48 = msg.data[v4 + 21] >> 96;
        if (msg.data[v4 + 79] >> 248 & 0x1) {
        }
        if (v47 <= v48) {
        }
        if (!(msg.data[v4 + 80] >> 248)) {
            MEM8[935] = 0x0 & 0xFF;
            MEM8[956] = msg.data[v4 + 133] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v49 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 121, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, bytes20(msg.data[v4 + 81])).gas(msg.gas);
            if (!v49) {
                v50 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v52 = MEM[64];
                v4 = v53 = v4 + 134;
                v2 = v54 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 1) & !MEM[0x340]) {
            v55 = v56 = msg.data[v4 + 101] >> 96;
            v55 = v57 = msg.data[v4 + 121] >> 96;
            if (v56 <= v57) {
            }
            MEM8[935] = 0x1 & 0xFF;
            MEM8[996] = msg.data[v4 + 156] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v58 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, v55, bytes20(msg.data[v4 + 81]), v55, v55 << 96, v55, v55 << 96).gas(msg.gas);
            if (!v58) {
                v59 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v60 = MEM[64];
                v4 = v61 = v4 + 157;
                v2 = v62 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 4) & !MEM[0x340]) {
            MEM8[935] = 0x4 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v63 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 172, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, msg.data[v4 + 81], bytes20(msg.data[v4 + 113]), bytes20(msg.data[v4 + 133])).gas(msg.gas);
            if (!v63) {
                v64 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v65 = MEM[64];
                v4 = v66 = v4 + 166;
                v2 = v67 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 5) & !MEM[0x340]) {
            MEM8[935] = 0x5 & 0xFF;
            MEM8[996] = msg.data[v4 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v4 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v68 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, bytes20(msg.data[v4 + 81]), bytes20(msg.data[v4 + 101]), bytes20(msg.data[v4 + 121]), bytes20(msg.data[v4 + 133]), bytes20(msg.data[v4 + 121])).gas(msg.gas);
            if (!v68) {
                v69 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v70 = MEM[64];
                v4 = v71 = v4 + 156;
                v2 = v72 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 6) & !MEM[0x340]) {
            MEM8[935] = 0x6 & 0xFF;
            MEM8[996] = msg.data[v4 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v4 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v73 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, bytes20(msg.data[v4 + 81]), bytes20(msg.data[v4 + 101]), bytes20(msg.data[v4 + 121]), bytes20(msg.data[v4 + 133]), bytes20(msg.data[v4 + 121])).gas(msg.gas);
            if (!v73) {
                v74 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v75 = MEM[64];
                v4 = v76 = v4 + 156;
                v2 = v77 = 0;
                MEM[832] = 1;
            }
        }
        if ((msg.data[v4 + 80] >> 248 == 7) & !MEM[0x340]) {
            MEM8[935] = 0x7 & 0xFF;
            MEM8[996] = msg.data[v4 + 153] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v78 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, bytes20(msg.data[v4 + 47] >> 96 << 96), v8, bytes20(msg.data[v4 + 81]), bytes20(msg.data[v4 + 101]), bytes20(msg.data[v4 + 121]), bytes20(msg.data[v4 + 133]), bytes20(msg.data[v4 + 121])).gas(msg.gas);
            if (!v78) {
                v79 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 118]), v8);
            } else {
                v8 = v80 = MEM[64];
                v4 = v81 = v4 + 154;
                v2 = v82 = 0;
                MEM[832] = 1;
            }
        }
        if (MEM[832]) {
        }
    }
    v83 = v84 = 0;
    while (v83 < v2) {
        v85 = msg.data[v4] >> 248;
        v86 = v87 = 0;
        if (0 == v85) {
            v86 = v88 = msg.data[v4 + 53] >> 248;
        } else if (1 == v85) {
            v86 = v89 = msg.data[v4 + 76] >> 248;
        } else if (2 == v85) {
            v86 = v90 = msg.data[v4 + 79] >> 248;
        } else if (3 == v85) {
            v86 = v91 = msg.data[v4 + 73] >> 248;
        } else if (4 == v85) {
            v86 = v92 = msg.data[v4 + 85] >> 248;
        } else if (5 == v85) {
            v86 = v93 = msg.data[v4 + 75] >> 248;
        } else if (6 == v85) {
            v86 = v94 = msg.data[v4 + 75] >> 248;
        } else if (7 == v85) {
            v86 = v95 = msg.data[v4 + 73] >> 248;
        } else if (8 == v85) {
            v86 = v96 = msg.data[v4 + 21] >> 248;
        } else if (9 == v85) {
            v86 = v97 = msg.data[v4 + 86] >> 248;
        } else if (10 == v85) {
            v86 = v98 = msg.data[v4 + 86] >> 248;
        }
        MEM[896] = this;
        v0 = v99 = msg.data[v4 + 1] >> 96;
        if (!v85) {
            v8 = v100 = msg.data[v4 + 41] >> 160;
            if (0 == (v83 + 1 == v2)) {
                if (!(msg.data[v4 + 54] >> 248)) {
                    MEM[896] = msg.data[v4 + 55] >> 96;
                }
            } else {
                MEM[896] = this;
            }
            if (!v100) {
                v101 = v102, v101 = v103 = 0x49e8(v99);
                if (v86 & 0x1) {
                }
                v8 = v8 * v101 * 997 / (v101 * 1000 + v8 * 997);
            }
            v104 = v105 = 0;
            v104 = 1;
            if (v83) {
                if (!(v86 >> 2 & v104)) {
                }
            }
            if (v104) {
                0x48ba(v0, v99, v8);
            }
            v0 = v106 = msg.data[v4 + 21] >> 96;
            MEM[v105] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (1 == v86 & 0x1) {
                MEM[4] = v105;
                MEM[36] = v8;
            } else {
                MEM[4] = v8;
                MEM[36] = v105;
            }
            v107 = v99.call(v51, v51, v51, MEM[896], 128, v105).value(v105).gas(msg.gas);
            if (!v107) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v108 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
            } else {
                v109 = v110 = 1;
                v4 = v4 + 54;
            }
        } else if (1 == v85) {
            v0 = v111 = msg.data[v4 + 21] >> 96;
            v0 = v112 = msg.data[v4 + 41] >> 96;
            if ((v2 == 3) & (v83 == 1) & (v0 != v111)) {
                if (v111 <= v112) {
                }
                MEM[196] = address(v0);
                MEM[228] = address(v0);
                if (!(msg.data[v4 + 77] >> 248)) {
                    MEM8[260] = 0x0 & 0xFF;
                    MEM[261] = 0x10000000000000000000000 & msg.data[v4 + 130] >> 160 | bytes20(msg.data[v4 + 78]);
                    MEM[282] = v0 << 96;
                    v8 = v113 = 0x33f0(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 131;
                    MEM[800] = 1;
                    v83 = v114 = 2;
                }
                if (msg.data[v4 + 77] >> 248 == 5) {
                    MEM8[260] = 0x5 & 0xFF;
                    MEM[261] = bytes20(msg.data[v4 + 78]);
                    MEM[281] = bytes20(msg.data[v4 + 98]);
                    MEM8[301] = msg.data[v4 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v4 + 138] >> 240) & 0xFF;
                    MEM[303] = v8;
                    v8 = v115 = 0x32a6(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 153;
                    MEM[800] = 1;
                    v83 = v116 = 2;
                }
                if (msg.data[v4 + 77] >> 248 == 6) {
                    MEM8[260] = 0x6 & 0xFF;
                    MEM[261] = bytes20(msg.data[v4 + 78]);
                    MEM[281] = bytes20(msg.data[v4 + 98]);
                    MEM8[301] = msg.data[v4 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v4 + 138] >> 240) & 0xFF;
                    MEM[303] = v8;
                    v8 = v117 = 0x32a6(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 153;
                    MEM[800] = 1;
                    v83 = v118 = 2;
                }
                if (msg.data[v4 + 77] >> 248 == 4) {
                    MEM8[260] = 0x4 & 0xFF;
                    MEM[261] = msg.data[v4 + 78];
                    MEM[293] = bytes20(msg.data[v4 + 110]);
                    MEM[333] = v8;
                    v8 = v119 = 0x3314(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 163;
                    MEM[800] = 1;
                    v83 = v120 = 2;
                }
                if (7 == msg.data[v4 + 77] >> 248) {
                    MEM8[260] = 0x7 & 0xFF;
                    MEM[261] = bytes20(msg.data[v4 + 78]);
                    MEM[281] = bytes20(msg.data[v4 + 98]);
                    MEM[301] = bytes20(msg.data[v4 + 118]);
                    MEM8[321] = msg.data[v4 + 150] >> 248 & 0x1 & 0xFF;
                    v8 = v121 = 0x3382(v99, 0x1 & msg.data[v4 + 76] >> 248, msg.data[v4 + 64] >> 160);
                    v4 = v4 + 151;
                    MEM[800] = 1;
                    v83 = v122 = 2;
                }
            }
            if (v83 < v2) {
                if ((v83 != 2) | !MEM[0x320]) {
                    if (v83 + 1 - v2) {
                        if (!(msg.data[v4 + 77] >> 248)) {
                            MEM[896] = msg.data[v4 + 78] >> 96;
                        }
                    }
                    if (v111 <= v112) {
                    }
                    v123 = 0x1000276a4;
                    if (v111 >= v112) {
                        MEM[0] = MEM[0];
                        v123 = v124 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                    v125 = v99.swap(address(MEM[0x380]), v111 < v112, v8, v123, 160, 64, address(v0), address(v0)).gas(msg.gas);
                    if (!v125) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        v126 = RETURNDATASIZE();
                        revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
                    } else {
                        if (1 == v111 < v112) {
                            v8 = v127 = 0 - MEM[32];
                        } else {
                            v8 = v128 = 0 - MEM[0];
                        }
                        if (msg.data[v4 + 64] >> 160) {
                            require(v8 >= msg.data[v4 + 64] >> 160);
                        }
                    }
                }
            }
            if ((v83 != 2) | !MEM[0x320]) {
                v4 = v4 + 77;
            }
            v109 = v129 = 1;
        } else if (2 == v85) {
            v0 = v130 = msg.data[v4 + 21] >> 96;
            if (v86 & 0x1) {
            }
            v109 = v131 = 1;
            if (v99 <= v130) {
            }
            v132 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 99, bytes20(v0 << 96), bytes20(v0 << 96), bytes20(msg.data[v4 + 47] >> 96 << 96), msg.data[v4 + 41] >> 232, msg.data[v4 + 44] >> 232, v8, uint248(MEM[1190]) | 0x100000000000000000000000000000000000000000000000000000000000000 & (v0 == v0) << 248).gas(msg.gas);
            if (!v132) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v133 = RETURNDATASIZE();
                revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
            } else {
                v8 = v134 = MEM[64];
                v4 = v4 + 80;
            }
        } else if (3 == v85) {
            v135 = v136 = 1;
            v137 = v138 = v4 + 74;
            v2 = v139 = v83 + v136;
            while (v2 < v2) {
                if (msg.data[v137] >> 248 == 3) {
                }
                if (msg.data[v137] >> 248 == 3) {
                    v135 = v135 + 1;
                    v137 = v137 + 74;
                }
                v2 += 1;
            }
            if (1 == v135 > 1) {
                v109 = v140 = 1;
                MEM[768] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[772] = 32;
                MEM[804] = v135 * 96 + 68;
                MEM[836] = 0x7b4e1e6700000000000000000000000000000000000000000000000000000000;
                MEM[840] = v135;
                MEM[872] = v8;
                v141 = v142 = 0;
                v143 = v144 = 904;
                while (v141 < v135) {
                    MEM[v143] = msg.data[v4 + 1] >> 96;
                    MEM[v143 + 32] = msg.data[v4 + 21] >> 96;
                    MEM[v143 + 64] = msg.data[v4 + 41] >> 96;
                    v143 = v143 + 96;
                    v4 = v4 + 74;
                    v141 = v141 + 1;
                }
                MEM[0] = MEM[0];
                v145 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[768:768 + vc53_0x2V0x42f60 * 96 + 136], MEM[0:96]).gas(msg.gas);
                if (!v145) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v146 = RETURNDATASIZE();
                    revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
                } else {
                    v8 = v147 = MEM[64];
                    v0 = v148 = msg.data[v4 + (v135 - 1) * 74 + 41] >> 96;
                    v4 += v135 * 74;
                    v83 = v83 + v135 - 1;
                }
            } else {
                v109 = 1;
                v0 = v149 = msg.data[v4 + 41] >> 96;
                MEM[0] = MEM[0];
                v150 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, 164, 0x6aeb34df, address(v99), address(msg.data[v4 + 21] >> 96), address(v149), v8, msg.data[v4 + 61] >> 160).gas(msg.gas);
                if (!v150) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v151 = RETURNDATASIZE();
                    revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, bytes20(msg.data[v4 + 130]), v8);
                } else {
                    v8 = MEM[64];
                    v4 = v4 + 74;
                }
            }
        } else if (4 == v85) {
            v109 = v152 = 1;
            v0 = v153 = msg.data[v4 + 53] >> 96;
            v8 = v154 = 0x3ff8(msg.data[v4 + v152], msg.data[v4 + 33] >> 96, v153, v8, msg.data[v4 + 73] >> 160);
            v4 = v4 + 86;
        } else if (5 == v85) {
            v109 = v155 = 1;
            v0 = v156 = msg.data[v4 + 41] >> 96;
            v8 = v157 = 0x4125(v99, msg.data[v4 + 21] >> 96, v156, msg.data[v4 + 61] >> 248, uint8(msg.data[v4 + 61] >> 240), v8, msg.data[v4 + 63] >> 160, v86 >> 2 & v155, v86 >> 3 & v155);
            v4 = v4 + 76;
        } else if (6 == v85) {
            v109 = v158 = 1;
            v0 = v159 = msg.data[v4 + 41] >> 96;
            v8 = v160 = 0x426c(v99, msg.data[v4 + 21] >> 96, v159, msg.data[v4 + 61] >> 248, uint8(msg.data[v4 + 61] >> 240), v8, msg.data[v4 + 63] >> 160, v86 >> 2 & v158);
            v4 = v4 + 76;
        } else if (7 == v85) {
            v8 = v161 = 0x43dc(v99, msg.data[v4 + 21] >> 96, v8, msg.data[v4 + 61] >> 160, v86 & 0x1);
            v109 = v162 = 1;
            v0 = v163 = msg.data[v4 + 41] >> 96;
            v4 = v4 + 74;
        } else if (8 == v85) {
            v109 = v164 = 1;
            v8 = 0x4a09(v99, v8, v86 & v164);
            v4 = v4 + 22;
        } else if (9 == v85) {
            v0 = v165 = msg.data[v4 + 21] >> 96;
            if (!(msg.data[v4 + 73] >> 248 & 0x1)) {
            }
            v109 = v166 = 1;
            v8 = v167 = 0x4f8a(v99, v165, msg.data[v4 + 41], msg.data[v4 + 73] >> 248 & 0x1, v8, this);
            v4 = v4 + 87;
        } else {
            require(10 == v85);
            v0 = v168 = msg.data[v4 + 21] >> 96;
            if (!(msg.data[v4 + 73] >> 248 & 0x1)) {
            }
            v109 = v169 = 1;
            v8 = v170 = 0x4fe0(v99, v168, msg.data[v4 + 41], msg.data[v4 + 73] >> 248 & 0x1, v8, this);
            v4 = v4 + 87;
        }
        v83 = v83 + v109;
    }
    MEM[0] = MEM[0];
    if ((v1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) & !v0) {
        if (this.balance) {
            v171 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(this.balance).gas(msg.gas);
            require(v171);
        }
    }
    0x48ba(v1, msg.sender, (v8 * 1000 + 996) / 997);
    v172 = 0x4d4c(v1, this);
    tstor_2000 = v172;
    if (v172) {
        0x48ba(v1, _rescueETH, v172);
    }
}

function uniswapV3FlashCallback(uint256 fee0, uint256 fee1, bytes data) public payable { 
    v0 = v1 = msg.data[data + 36] >> 96;
    v2 = v3 = msg.data[data + 56] >> 160;
    if (fee0) {
    }
    v4 = v5 = msg.data[data + 68] >> 248;
    v6 = v7 = data + 69;
    MEM[800] = 0;
    MEM[832] = 0;
    if ((v5 == 2) & (msg.data[v7] >> 248 == 1)) {
        if (msg.data[v7 + 64] >> 160) {
            v0 = v8 = msg.data[v7 + 21] >> 96;
            v0 = v9 = msg.data[v7 + 41] >> 96;
            if (v8 <= v9) {
            }
            MEM[196] = address(v0);
            MEM[228] = address(v0);
            if (!(msg.data[v7 + 77] >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & msg.data[v7 + 130] >> 160 | bytes20(msg.data[v7 + 78]);
                v2 = v10 = 0x3231(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v11 = v7 + 131;
                v4 = v12 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v13 = 0x32a6(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v14 = v6 + 153;
                v4 = v15 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v16 = 0x32a6(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v17 = v6 + 153;
                v4 = v18 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = msg.data[v7 + 78];
                MEM[293] = bytes20(msg.data[v7 + 110]);
                MEM[313] = bytes20(msg.data[v7 + 130]);
                MEM[333] = v3;
                v2 = v19 = 0x3314(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v20 = v6 + 163;
                v4 = v21 = 0;
                MEM[800] = 1;
            }
            if (7 == msg.data[v7 + 77] >> 248) {
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM[301] = bytes20(msg.data[v7 + 118]);
                MEM8[321] = msg.data[v7 + 150] >> 248 & 0x1 & 0xFF;
                MEM[322] = v3;
                v2 = v22 = 0x3382(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v23 = v6 + 151;
                v4 = v24 = 0;
                MEM[800] = 1;
            }
        }
    }
    if ((v4 == 3) & (msg.data[v6] >> 248 == 1)) {
        v25 = msg.data[v6 + 64] >> 160;
        if (v25) {
            v26 = msg.data[v6 + 21] >> 96;
            v26 = v27 = msg.data[v6 + 41] >> 96;
            if (v26 <= v27) {
            }
            MEM[196] = address(v26);
            MEM[228] = address(v26);
            if (!(msg.data[v6 + 77] >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & msg.data[v6 + 130] >> 160 | bytes20(msg.data[v6 + 78]);
                v2 = v28 = 0x3231(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v29 = msg.data[v6 + 98] >> 96;
                v6 = v30 = v6 + 131;
                v4 = v31 = 1;
                MEM[800] = v31;
            }
            if (msg.data[v6 + 77] >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v32 = 0x32a6(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v33 = msg.data[v6 + 118] >> 96;
                v6 = v34 = v6 + 153;
                v4 = v35 = 1;
                MEM[800] = v35;
            }
            if (msg.data[v6 + 77] >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v36 = 0x32a6(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v37 = msg.data[v6 + 118] >> 96;
                v6 = v38 = v6 + 153;
                v4 = v39 = 1;
                MEM[800] = v39;
            }
            if (msg.data[v6 + 77] >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = msg.data[v6 + 78];
                MEM[293] = bytes20(msg.data[v6 + 110]);
                MEM[313] = bytes20(msg.data[v6 + 130]);
                MEM[333] = v3;
                v2 = v40 = 0x3314(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v41 = msg.data[v6 + 130] >> 96;
                v6 = v42 = v6 + 163;
                v4 = v43 = 1;
                MEM[800] = v43;
            }
            if (7 == msg.data[v6 + 77] >> 248) {
                0x45b9(msg.data[v6 + 98] >> 96, msg.data[v6 + 78] >> 96);
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                v44 = bytes20(msg.data[v6 + 118]);
                MEM8[321] = msg.data[v6 + 150] >> 248 & 0x1 & 0xFF;
                v2 = v45 = 0x3382(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v46 = msg.data[v6 + 118] >> 96;
                v6 = v47 = v6 + 151;
                v4 = v48 = 1;
                MEM[800] = v48;
            }
        }
    }
    if ((v4 == 2) & !MEM[0x320] & (msg.data[v6] >> 248 == 2)) {
        v0 = v49 = msg.data[v6 + 1] >> 96;
        v0 = v50 = msg.data[v6 + 21] >> 96;
        if (msg.data[v6 + 79] >> 248 & 0x1) {
        }
        if (v49 <= v50) {
        }
        v51 = msg.data[v6 + 80] >> 248;
        if (!v51) {
            MEM8[935] = 0x0 & 0xFF;
            MEM8[956] = msg.data[v6 + 133] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v52 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 121, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 81])).gas(msg.gas);
            if (!v52) {
                v53 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = MEM[64];
                v6 = v55 = v6 + 134;
                v4 = v56 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 1) & !MEM[0x340]) {
            if (msg.data[v6 + 101] >> 96 > msg.data[v6 + 121] >> 96) {
                MEM8[935] = 0x1 & 0xFF;
                MEM8[996] = msg.data[v6 + 156] >> 248 & 0x1 & 0xFF;
            } else {
                MEM8[935] = 0x1 & 0xFF;
                MEM8[996] = msg.data[v6 + 156] >> 248 & 0x1 & 0xFF;
            }
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v57 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), bytes20(msg.data[v6 + 47] >> 96 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, v2, msg.data[v6 + 101] >> 96 << 96, bytes20(msg.data[v6 + 81]), msg.data[v6 + 121] >> 96 << 96, bytes20(msg.data[v6 + 81]), msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96, msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96).gas(msg.gas);
            if (!v57) {
                v58 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v59 = MEM[64];
                v6 = v60 = v6 + 157;
                v4 = v61 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 4) & !MEM[0x340]) {
            MEM8[935] = 0x4 & 0xFF;
            v62 = bytes20(msg.data[v6 + 133]);
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v63 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 172, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, msg.data[v6 + 81], v62, bytes20(msg.data[v6 + 113])).gas(msg.gas);
            if (!v63) {
                v64 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v65 = MEM[64];
                v6 = v66 = v6 + 166;
                v4 = v67 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 5) & !MEM[0x340]) {
            MEM8[935] = 0x5 & 0xFF;
            MEM8[996] = msg.data[v6 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v6 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v68 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v68) {
                v69 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v70 = MEM[64];
                v6 = v71 = v6 + 156;
                v4 = v72 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 6) & !MEM[0x340]) {
            MEM8[935] = 0x6 & 0xFF;
            MEM8[996] = msg.data[v6 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v6 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v73 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v73) {
                v74 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v75 = MEM[64];
                v6 = v76 = v6 + 156;
                v4 = v77 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 7) & !MEM[0x340]) {
            MEM8[935] = 0x7 & 0xFF;
            MEM8[996] = msg.data[v6 + 153] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v78 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v78) {
                v79 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v80 = MEM[64];
                v6 = v81 = v6 + 154;
                v4 = v82 = 0;
                MEM[832] = 1;
            }
        }
        if (MEM[832]) {
        }
    }
    v83 = v84 = 0;
    while (v83 < v4) {
        v85 = msg.data[v6] >> 248;
        v86 = 0;
        if (0 == v85) {
            v86 = v87 = msg.data[v6 + 53] >> 248;
        } else if (1 == v85) {
            v86 = v88 = msg.data[v6 + 76] >> 248;
        } else if (2 == v85) {
            v86 = v89 = msg.data[v6 + 79] >> 248;
        } else if (3 == v85) {
            v86 = v90 = msg.data[v6 + 73] >> 248;
        } else if (4 == v85) {
            v86 = v91 = msg.data[v6 + 85] >> 248;
        } else if (5 == v85) {
            v86 = v92 = msg.data[v6 + 75] >> 248;
        } else if (6 == v85) {
            v86 = v93 = msg.data[v6 + 75] >> 248;
        } else if (7 == v85) {
            v86 = v94 = msg.data[v6 + 73] >> 248;
        } else if (8 == v85) {
            v86 = v95 = msg.data[v6 + 21] >> 248;
        } else if (9 == v85) {
            v86 = v96 = msg.data[v6 + 86] >> 248;
        } else if (10 == v85) {
            v86 = v97 = msg.data[v6 + 86] >> 248;
        }
        MEM[896] = this;
        v0 = v98 = msg.data[v6 + 1] >> 96;
        if (!v85) {
            v2 = v99 = msg.data[v6 + 41] >> 160;
            if (0 == (v83 + 1 == v4)) {
                if (!(msg.data[v6 + 54] >> 248)) {
                    MEM[896] = msg.data[v6 + 55] >> 96;
                }
            } else {
                MEM[896] = this;
            }
            if (!v99) {
                v100 = v101, v100 = v102 = 0x49e8(v98);
                if (v86 & 0x1) {
                }
                v2 = v2 * v100 * 997 / (v100 * 1000 + v2 * 997);
            }
            v103 = 0;
            v103 = v104 = 1;
            if (v83) {
                if (!(v86 >> 2 & v104)) {
                }
            }
            if (v103) {
                0x48ba(v0, v98, v2);
            }
            v0 = v105 = msg.data[v6 + 21] >> 96;
            MEM[v103] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (1 == v86 & 0x1) {
                MEM[4] = v103;
                MEM[36] = v2;
            } else {
                MEM[4] = v2;
                MEM[36] = v103;
            }
            v106 = v98.call(v54, v54, v54, MEM[896], 128, v103).value(v103).gas(msg.gas);
            if (!v106) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v107 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
            } else {
                v108 = v109 = 1;
                v6 = v6 + 54;
            }
        } else if (1 == v85) {
            v0 = v110 = msg.data[v6 + 21] >> 96;
            v0 = v111 = msg.data[v6 + 41] >> 96;
            if ((v4 == 3) & (v83 == 1) & (v0 != v110)) {
                v112 = msg.data[v6 + 77] >> 248;
                if (v110 <= v111) {
                }
                MEM[196] = address(v0);
                MEM[228] = address(v0);
                v113 = 0x1 & msg.data[v6 + 76] >> 248;
                if (!v112) {
                    MEM8[260] = 0x0 & 0xFF;
                    MEM[261] = 0x10000000000000000000000 & msg.data[v6 + 130] >> 160 | bytes20(msg.data[v6 + 78]);
                    MEM[282] = v0 << 96;
                    v2 = v114 = 0x33f0(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 131;
                    MEM[800] = 1;
                    v83 = v115 = 2;
                }
                if (v112 == 5) {
                    MEM8[260] = 0x5 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                    MEM[303] = v2;
                    v2 = v116 = 0x32a6(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 153;
                    MEM[800] = 1;
                    v83 = v117 = 2;
                }
                if (v112 == 6) {
                    MEM8[260] = 0x6 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                    MEM[303] = v2;
                    v2 = v118 = 0x32a6(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 153;
                    MEM[800] = 1;
                    v83 = v119 = 2;
                }
                if (v112 == 4) {
                    MEM8[260] = 0x4 & 0xFF;
                    MEM[261] = msg.data[v6 + 78];
                    MEM[293] = bytes20(msg.data[v6 + 110]);
                    MEM[333] = v2;
                    v2 = v120 = 0x3314(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 163;
                    MEM[800] = 1;
                    v83 = v121 = 2;
                }
                if (7 == v112) {
                    MEM8[260] = 0x7 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM[301] = bytes20(msg.data[v6 + 118]);
                    MEM8[321] = msg.data[v6 + 150] >> 248 & 0x1 & 0xFF;
                    v2 = v122 = 0x3382(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 151;
                    MEM[800] = 1;
                    v83 = v123 = 2;
                }
            }
            if (v83 < v4) {
                if ((v83 != 2) | !MEM[0x320]) {
                    if (v83 + 1 - v4) {
                        if (!(msg.data[v6 + 77] >> 248)) {
                            MEM[896] = msg.data[v6 + 78] >> 96;
                        }
                        v124 = MEM[896];
                    } else {
                        v124 = v125 = MEM[896];
                    }
                    if (v110 <= v111) {
                    }
                    v126 = 0x1000276a4;
                    if (v110 >= v111) {
                        MEM[0] = MEM[0];
                        v126 = v127 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                    v128 = v98.swap(address(v124), v110 < v111, v2, v126, 160, 64, address(v0), address(v0)).gas(msg.gas);
                    if (!v128) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        v129 = RETURNDATASIZE();
                        revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                    } else {
                        if (1 == v110 < v111) {
                            v2 = v130 = 0 - MEM[32];
                        } else {
                            v2 = v131 = 0 - MEM[0];
                        }
                        if (msg.data[v6 + 64] >> 160) {
                            require(v2 >= msg.data[v6 + 64] >> 160);
                        }
                    }
                }
            }
            if ((v83 != 2) | !MEM[0x320]) {
                v6 = v6 + 77;
            }
            v108 = v132 = 1;
        } else if (2 == v85) {
            v0 = v133 = msg.data[v6 + 21] >> 96;
            if (v86 & 0x1) {
            }
            v108 = v134 = 1;
            if (v98 > v133) {
                v135 = v133 == v0;
                v136 = msg.data[v6 + 47] >> 96;
                v137 = msg.data[v6 + 44] >> 232;
                v138 = msg.data[v6 + 41] >> 232;
            } else {
                v135 = v139 = v98 == v0;
                v136 = v140 = msg.data[v6 + 47] >> 96;
                v137 = v141 = msg.data[v6 + 44] >> 232;
                v138 = v142 = msg.data[v6 + 41] >> 232;
            }
            v143 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 99, bytes20(v0 << 96), bytes20(v0 << 96), v138, v137, bytes20(v136 << 96), v2, uint248(MEM[1190]) | 0x100000000000000000000000000000000000000000000000000000000000000 & v135 << 248).gas(msg.gas);
            if (!v143) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v144 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
            } else {
                v2 = v145 = MEM[64];
                v6 = v6 + 80;
            }
        } else if (3 == v85) {
            v146 = v147 = 1;
            v148 = v149 = v6 + 74;
            v4 = v150 = v83 + v147;
            while (v4 < v4) {
                if (msg.data[v148] >> 248 == 3) {
                }
                if (msg.data[v148] >> 248 == 3) {
                    v146 = v146 + 1;
                    v148 = v148 + 74;
                }
                v4 += 1;
            }
            if (1 == v146 > 1) {
                v108 = v151 = 1;
                MEM[768] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[772] = 32;
                MEM[804] = v146 * 96 + 68;
                MEM[836] = 0x7b4e1e6700000000000000000000000000000000000000000000000000000000;
                MEM[840] = v146;
                MEM[872] = v2;
                v152 = v153 = 0;
                v154 = v155 = 904;
                while (v152 < v146) {
                    MEM[v154] = msg.data[v6 + 1] >> 96;
                    MEM[v154 + 32] = msg.data[v6 + 21] >> 96;
                    MEM[v154 + 64] = msg.data[v6 + 41] >> 96;
                    v154 = v154 + 96;
                    v6 = v6 + 74;
                    v152 = v152 + 1;
                }
                MEM[0] = MEM[0];
                v156 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[768:768 + v1dbc0x1ac5_0x2V0x83fV0x42f88 * 96 + 136], MEM[0:96]).gas(msg.gas);
                if (!v156) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v157 = RETURNDATASIZE();
                    revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                } else {
                    v2 = v158 = MEM[64];
                    v0 = v159 = msg.data[v6 + (v146 - 1) * 74 + 41] >> 96;
                    v6 += v146 * 74;
                    v83 = v83 + v146 - 1;
                }
            } else {
                v108 = v160 = 1;
                v0 = v161 = msg.data[v6 + 41] >> 96;
                MEM[0] = MEM[0];
                v162 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, 164, 0x6aeb34df, address(v98), address(msg.data[v6 + 21] >> 96), address(v161), v2, msg.data[v6 + 61] >> 160).gas(msg.gas);
                if (!v162) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v163 = RETURNDATASIZE();
                    revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                } else {
                    v2 = v164 = MEM[64];
                    v6 = v6 + 74;
                }
            }
        } else if (4 == v85) {
            v108 = v165 = 1;
            v0 = v166 = msg.data[v6 + 53] >> 96;
            v2 = v167 = 0x3ff8(msg.data[v6 + v165], msg.data[v6 + 33] >> 96, v166, v2, msg.data[v6 + 73] >> 160);
            v6 = v6 + 86;
        } else if (5 == v85) {
            v108 = v168 = 1;
            v0 = v169 = msg.data[v6 + 41] >> 96;
            v2 = v170 = 0x4125(v98, msg.data[v6 + 21] >> 96, v169, msg.data[v6 + 61] >> 248, uint8(msg.data[v6 + 61] >> 240), v2, msg.data[v6 + 63] >> 160, v86 >> 2 & v168, v86 >> 3 & v168);
            v6 = v6 + 76;
        } else if (6 == v85) {
            v108 = v171 = 1;
            v0 = v172 = msg.data[v6 + 41] >> 96;
            v2 = v173 = 0x426c(v98, msg.data[v6 + 21] >> 96, v172, msg.data[v6 + 61] >> 248, uint8(msg.data[v6 + 61] >> 240), v2, msg.data[v6 + 63] >> 160, v86 >> 2 & v171);
            v6 = v6 + 76;
        } else if (7 == v85) {
            v2 = v174 = 0x43dc(v98, msg.data[v6 + 21] >> 96, v2, msg.data[v6 + 61] >> 160, v86 & 0x1);
            v108 = v175 = 1;
            v0 = v176 = msg.data[v6 + 41] >> 96;
            v6 = v6 + 74;
        } else if (8 == v85) {
            v108 = v177 = 1;
            v2 = 0x4a09(v98, v2, v86 & v177);
            v6 = v6 + 22;
        } else if (9 == v85) {
            v0 = v178 = msg.data[v6 + 21] >> 96;
            if (!(msg.data[v6 + 73] >> 248 & 0x1)) {
            }
            v108 = v179 = 1;
            v2 = v180 = 0x4f8a(v98, v178, msg.data[v6 + 41], msg.data[v6 + 73] >> 248 & 0x1, v2, this);
            v6 = v6 + 87;
        } else {
            require(10 == v85);
            v0 = v181 = msg.data[v6 + 21] >> 96;
            if (!(msg.data[v6 + 73] >> 248 & 0x1)) {
            }
            v108 = v182 = 1;
            v2 = v183 = 0x4fe0(v98, v181, msg.data[v6 + 41], msg.data[v6 + 73] >> 248 & 0x1, v2, this);
            v6 = v6 + 87;
        }
        v83 = v83 + v108;
    }
    MEM[0] = MEM[0];
    if ((v1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) & !v0) {
        if (this.balance) {
            v184 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(this.balance).gas(msg.gas);
            require(v184);
        }
    }
    0x48ba(v1, msg.sender, v3 + v185);
    v186 = 0x4d4c(v1, this);
    tstor_2000 = v186;
    if (v186) {
        0x48ba(v1, _rescueETH, v186);
    }
}

function pancakeV3FlashCallback(uint256 fee0, uint256 fee1, bytes data) public payable { 
    v0 = v1 = msg.data[data + 36] >> 96;
    v2 = v3 = msg.data[data + 56] >> 160;
    if (fee0) {
    }
    v4 = v5 = msg.data[data + 68] >> 248;
    v6 = v7 = data + 69;
    MEM[800] = 0;
    MEM[832] = 0;
    if ((v5 == 2) & (msg.data[v7] >> 248 == 1)) {
        if (msg.data[v7 + 64] >> 160) {
            v0 = v8 = msg.data[v7 + 21] >> 96;
            v0 = v9 = msg.data[v7 + 41] >> 96;
            if (v8 <= v9) {
            }
            MEM[196] = address(v0);
            MEM[228] = address(v0);
            if (!(msg.data[v7 + 77] >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & msg.data[v7 + 130] >> 160 | bytes20(msg.data[v7 + 78]);
                v2 = v10 = 0x3231(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v11 = v7 + 131;
                v4 = v12 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v13 = 0x32a6(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v14 = v6 + 153;
                v4 = v15 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v16 = 0x32a6(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v17 = v6 + 153;
                v4 = v18 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = msg.data[v7 + 78];
                MEM[293] = bytes20(msg.data[v7 + 110]);
                MEM[313] = bytes20(msg.data[v7 + 130]);
                MEM[333] = v3;
                v2 = v19 = 0x3314(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v20 = v6 + 163;
                v4 = v21 = 0;
                MEM[800] = 1;
            }
            if (7 == msg.data[v7 + 77] >> 248) {
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM[301] = bytes20(msg.data[v7 + 118]);
                MEM8[321] = msg.data[v7 + 150] >> 248 & 0x1 & 0xFF;
                MEM[322] = v3;
                v2 = v22 = 0x3382(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v23 = v6 + 151;
                v4 = v24 = 0;
                MEM[800] = 1;
            }
        }
    }
    if ((v4 == 3) & (msg.data[v6] >> 248 == 1)) {
        v25 = msg.data[v6 + 64] >> 160;
        if (v25) {
            v26 = msg.data[v6 + 21] >> 96;
            v26 = v27 = msg.data[v6 + 41] >> 96;
            if (v26 <= v27) {
            }
            MEM[196] = address(v26);
            MEM[228] = address(v26);
            if (!(msg.data[v6 + 77] >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & msg.data[v6 + 130] >> 160 | bytes20(msg.data[v6 + 78]);
                v2 = v28 = 0x3231(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v29 = msg.data[v6 + 98] >> 96;
                v6 = v30 = v6 + 131;
                v4 = v31 = 1;
                MEM[800] = v31;
            }
            if (msg.data[v6 + 77] >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v32 = 0x32a6(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v33 = msg.data[v6 + 118] >> 96;
                v6 = v34 = v6 + 153;
                v4 = v35 = 1;
                MEM[800] = v35;
            }
            if (msg.data[v6 + 77] >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v36 = 0x32a6(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v37 = msg.data[v6 + 118] >> 96;
                v6 = v38 = v6 + 153;
                v4 = v39 = 1;
                MEM[800] = v39;
            }
            if (msg.data[v6 + 77] >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = msg.data[v6 + 78];
                MEM[293] = bytes20(msg.data[v6 + 110]);
                MEM[313] = bytes20(msg.data[v6 + 130]);
                MEM[333] = v3;
                v2 = v40 = 0x3314(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v41 = msg.data[v6 + 130] >> 96;
                v6 = v42 = v6 + 163;
                v4 = v43 = 1;
                MEM[800] = v43;
            }
            if (7 == msg.data[v6 + 77] >> 248) {
                0x45b9(msg.data[v6 + 98] >> 96, msg.data[v6 + 78] >> 96);
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                v44 = bytes20(msg.data[v6 + 118]);
                MEM8[321] = msg.data[v6 + 150] >> 248 & 0x1 & 0xFF;
                v2 = v45 = 0x3382(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v46 = msg.data[v6 + 118] >> 96;
                v6 = v47 = v6 + 151;
                v4 = v48 = 1;
                MEM[800] = v48;
            }
        }
    }
    if ((v4 == 2) & !MEM[0x320] & (msg.data[v6] >> 248 == 2)) {
        v0 = v49 = msg.data[v6 + 1] >> 96;
        v0 = v50 = msg.data[v6 + 21] >> 96;
        if (msg.data[v6 + 79] >> 248 & 0x1) {
        }
        if (v49 <= v50) {
        }
        v51 = msg.data[v6 + 80] >> 248;
        if (!v51) {
            MEM8[935] = 0x0 & 0xFF;
            MEM8[956] = msg.data[v6 + 133] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v52 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 121, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 81])).gas(msg.gas);
            if (!v52) {
                v53 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = MEM[64];
                v6 = v55 = v6 + 134;
                v4 = v56 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 1) & !MEM[0x340]) {
            if (msg.data[v6 + 101] >> 96 > msg.data[v6 + 121] >> 96) {
                MEM8[935] = 0x1 & 0xFF;
                MEM8[996] = msg.data[v6 + 156] >> 248 & 0x1 & 0xFF;
            } else {
                MEM8[935] = 0x1 & 0xFF;
                MEM8[996] = msg.data[v6 + 156] >> 248 & 0x1 & 0xFF;
            }
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v57 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), bytes20(msg.data[v6 + 47] >> 96 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, v2, msg.data[v6 + 101] >> 96 << 96, bytes20(msg.data[v6 + 81]), msg.data[v6 + 121] >> 96 << 96, bytes20(msg.data[v6 + 81]), msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96, msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96).gas(msg.gas);
            if (!v57) {
                v58 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v59 = MEM[64];
                v6 = v60 = v6 + 157;
                v4 = v61 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 4) & !MEM[0x340]) {
            MEM8[935] = 0x4 & 0xFF;
            v62 = bytes20(msg.data[v6 + 133]);
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v63 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 172, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, msg.data[v6 + 81], v62, bytes20(msg.data[v6 + 113])).gas(msg.gas);
            if (!v63) {
                v64 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v65 = MEM[64];
                v6 = v66 = v6 + 166;
                v4 = v67 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 5) & !MEM[0x340]) {
            MEM8[935] = 0x5 & 0xFF;
            MEM8[996] = msg.data[v6 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v6 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v68 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v68) {
                v69 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v70 = MEM[64];
                v6 = v71 = v6 + 156;
                v4 = v72 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 6) & !MEM[0x340]) {
            MEM8[935] = 0x6 & 0xFF;
            MEM8[996] = msg.data[v6 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v6 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v73 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v73) {
                v74 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v75 = MEM[64];
                v6 = v76 = v6 + 156;
                v4 = v77 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 7) & !MEM[0x340]) {
            MEM8[935] = 0x7 & 0xFF;
            MEM8[996] = msg.data[v6 + 153] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v78 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v78) {
                v79 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v80 = MEM[64];
                v6 = v81 = v6 + 154;
                v4 = v82 = 0;
                MEM[832] = 1;
            }
        }
        if (MEM[832]) {
        }
    }
    v83 = v84 = 0;
    while (v83 < v4) {
        v85 = msg.data[v6] >> 248;
        v86 = 0;
        if (0 == v85) {
            v86 = v87 = msg.data[v6 + 53] >> 248;
        } else if (1 == v85) {
            v86 = v88 = msg.data[v6 + 76] >> 248;
        } else if (2 == v85) {
            v86 = v89 = msg.data[v6 + 79] >> 248;
        } else if (3 == v85) {
            v86 = v90 = msg.data[v6 + 73] >> 248;
        } else if (4 == v85) {
            v86 = v91 = msg.data[v6 + 85] >> 248;
        } else if (5 == v85) {
            v86 = v92 = msg.data[v6 + 75] >> 248;
        } else if (6 == v85) {
            v86 = v93 = msg.data[v6 + 75] >> 248;
        } else if (7 == v85) {
            v86 = v94 = msg.data[v6 + 73] >> 248;
        } else if (8 == v85) {
            v86 = v95 = msg.data[v6 + 21] >> 248;
        } else if (9 == v85) {
            v86 = v96 = msg.data[v6 + 86] >> 248;
        } else if (10 == v85) {
            v86 = v97 = msg.data[v6 + 86] >> 248;
        }
        MEM[896] = this;
        v0 = v98 = msg.data[v6 + 1] >> 96;
        if (!v85) {
            v2 = v99 = msg.data[v6 + 41] >> 160;
            if (0 == (v83 + 1 == v4)) {
                if (!(msg.data[v6 + 54] >> 248)) {
                    MEM[896] = msg.data[v6 + 55] >> 96;
                }
            } else {
                MEM[896] = this;
            }
            if (!v99) {
                v100 = v101, v100 = v102 = 0x49e8(v98);
                if (v86 & 0x1) {
                }
                v2 = v2 * v100 * 997 / (v100 * 1000 + v2 * 997);
            }
            v103 = 0;
            v103 = v104 = 1;
            if (v83) {
                if (!(v86 >> 2 & v104)) {
                }
            }
            if (v103) {
                0x48ba(v0, v98, v2);
            }
            v0 = v105 = msg.data[v6 + 21] >> 96;
            MEM[v103] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (1 == v86 & 0x1) {
                MEM[4] = v103;
                MEM[36] = v2;
            } else {
                MEM[4] = v2;
                MEM[36] = v103;
            }
            v106 = v98.call(v54, v54, v54, MEM[896], 128, v103).value(v103).gas(msg.gas);
            if (!v106) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v107 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
            } else {
                v108 = v109 = 1;
                v6 = v6 + 54;
            }
        } else if (1 == v85) {
            v0 = v110 = msg.data[v6 + 21] >> 96;
            v0 = v111 = msg.data[v6 + 41] >> 96;
            if ((v4 == 3) & (v83 == 1) & (v0 != v110)) {
                v112 = msg.data[v6 + 77] >> 248;
                if (v110 <= v111) {
                }
                MEM[196] = address(v0);
                MEM[228] = address(v0);
                v113 = 0x1 & msg.data[v6 + 76] >> 248;
                if (!v112) {
                    MEM8[260] = 0x0 & 0xFF;
                    MEM[261] = 0x10000000000000000000000 & msg.data[v6 + 130] >> 160 | bytes20(msg.data[v6 + 78]);
                    MEM[282] = v0 << 96;
                    v2 = v114 = 0x33f0(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 131;
                    MEM[800] = 1;
                    v83 = v115 = 2;
                }
                if (v112 == 5) {
                    MEM8[260] = 0x5 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                    MEM[303] = v2;
                    v2 = v116 = 0x32a6(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 153;
                    MEM[800] = 1;
                    v83 = v117 = 2;
                }
                if (v112 == 6) {
                    MEM8[260] = 0x6 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                    MEM[303] = v2;
                    v2 = v118 = 0x32a6(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 153;
                    MEM[800] = 1;
                    v83 = v119 = 2;
                }
                if (v112 == 4) {
                    MEM8[260] = 0x4 & 0xFF;
                    MEM[261] = msg.data[v6 + 78];
                    MEM[293] = bytes20(msg.data[v6 + 110]);
                    MEM[333] = v2;
                    v2 = v120 = 0x3314(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 163;
                    MEM[800] = 1;
                    v83 = v121 = 2;
                }
                if (7 == v112) {
                    MEM8[260] = 0x7 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM[301] = bytes20(msg.data[v6 + 118]);
                    MEM8[321] = msg.data[v6 + 150] >> 248 & 0x1 & 0xFF;
                    v2 = v122 = 0x3382(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 151;
                    MEM[800] = 1;
                    v83 = v123 = 2;
                }
            }
            if (v83 < v4) {
                if ((v83 != 2) | !MEM[0x320]) {
                    if (v83 + 1 - v4) {
                        if (!(msg.data[v6 + 77] >> 248)) {
                            MEM[896] = msg.data[v6 + 78] >> 96;
                        }
                        v124 = MEM[896];
                    } else {
                        v124 = v125 = MEM[896];
                    }
                    if (v110 <= v111) {
                    }
                    v126 = 0x1000276a4;
                    if (v110 >= v111) {
                        MEM[0] = MEM[0];
                        v126 = v127 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                    v128 = v98.swap(address(v124), v110 < v111, v2, v126, 160, 64, address(v0), address(v0)).gas(msg.gas);
                    if (!v128) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        v129 = RETURNDATASIZE();
                        revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                    } else {
                        if (1 == v110 < v111) {
                            v2 = v130 = 0 - MEM[32];
                        } else {
                            v2 = v131 = 0 - MEM[0];
                        }
                        if (msg.data[v6 + 64] >> 160) {
                            require(v2 >= msg.data[v6 + 64] >> 160);
                        }
                    }
                }
            }
            if ((v83 != 2) | !MEM[0x320]) {
                v6 = v6 + 77;
            }
            v108 = v132 = 1;
        } else if (2 == v85) {
            v0 = v133 = msg.data[v6 + 21] >> 96;
            if (v86 & 0x1) {
            }
            v108 = v134 = 1;
            if (v98 > v133) {
                v135 = v133 == v0;
                v136 = msg.data[v6 + 47] >> 96;
                v137 = msg.data[v6 + 44] >> 232;
                v138 = msg.data[v6 + 41] >> 232;
            } else {
                v135 = v139 = v98 == v0;
                v136 = v140 = msg.data[v6 + 47] >> 96;
                v137 = v141 = msg.data[v6 + 44] >> 232;
                v138 = v142 = msg.data[v6 + 41] >> 232;
            }
            v143 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 99, bytes20(v0 << 96), bytes20(v0 << 96), v138, v137, bytes20(v136 << 96), v2, uint248(MEM[1190]) | 0x100000000000000000000000000000000000000000000000000000000000000 & v135 << 248).gas(msg.gas);
            if (!v143) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v144 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
            } else {
                v2 = v145 = MEM[64];
                v6 = v6 + 80;
            }
        } else if (3 == v85) {
            v146 = v147 = 1;
            v148 = v149 = v6 + 74;
            v4 = v150 = v83 + v147;
            while (v4 < v4) {
                if (msg.data[v148] >> 248 == 3) {
                }
                if (msg.data[v148] >> 248 == 3) {
                    v146 = v146 + 1;
                    v148 = v148 + 74;
                }
                v4 += 1;
            }
            if (1 == v146 > 1) {
                v108 = v151 = 1;
                MEM[768] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[772] = 32;
                MEM[804] = v146 * 96 + 68;
                MEM[836] = 0x7b4e1e6700000000000000000000000000000000000000000000000000000000;
                MEM[840] = v146;
                MEM[872] = v2;
                v152 = v153 = 0;
                v154 = v155 = 904;
                while (v152 < v146) {
                    MEM[v154] = msg.data[v6 + 1] >> 96;
                    MEM[v154 + 32] = msg.data[v6 + 21] >> 96;
                    MEM[v154 + 64] = msg.data[v6 + 41] >> 96;
                    v154 = v154 + 96;
                    v6 = v6 + 74;
                    v152 = v152 + 1;
                }
                MEM[0] = MEM[0];
                v156 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[768:768 + v1dbc0x1ac5_0x2V0x83fV0x42fb0 * 96 + 136], MEM[0:96]).gas(msg.gas);
                if (!v156) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v157 = RETURNDATASIZE();
                    revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                } else {
                    v2 = v158 = MEM[64];
                    v0 = v159 = msg.data[v6 + (v146 - 1) * 74 + 41] >> 96;
                    v6 += v146 * 74;
                    v83 = v83 + v146 - 1;
                }
            } else {
                v108 = v160 = 1;
                v0 = v161 = msg.data[v6 + 41] >> 96;
                MEM[0] = MEM[0];
                v162 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, 164, 0x6aeb34df, address(v98), address(msg.data[v6 + 21] >> 96), address(v161), v2, msg.data[v6 + 61] >> 160).gas(msg.gas);
                if (!v162) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v163 = RETURNDATASIZE();
                    revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                } else {
                    v2 = v164 = MEM[64];
                    v6 = v6 + 74;
                }
            }
        } else if (4 == v85) {
            v108 = v165 = 1;
            v0 = v166 = msg.data[v6 + 53] >> 96;
            v2 = v167 = 0x3ff8(msg.data[v6 + v165], msg.data[v6 + 33] >> 96, v166, v2, msg.data[v6 + 73] >> 160);
            v6 = v6 + 86;
        } else if (5 == v85) {
            v108 = v168 = 1;
            v0 = v169 = msg.data[v6 + 41] >> 96;
            v2 = v170 = 0x4125(v98, msg.data[v6 + 21] >> 96, v169, msg.data[v6 + 61] >> 248, uint8(msg.data[v6 + 61] >> 240), v2, msg.data[v6 + 63] >> 160, v86 >> 2 & v168, v86 >> 3 & v168);
            v6 = v6 + 76;
        } else if (6 == v85) {
            v108 = v171 = 1;
            v0 = v172 = msg.data[v6 + 41] >> 96;
            v2 = v173 = 0x426c(v98, msg.data[v6 + 21] >> 96, v172, msg.data[v6 + 61] >> 248, uint8(msg.data[v6 + 61] >> 240), v2, msg.data[v6 + 63] >> 160, v86 >> 2 & v171);
            v6 = v6 + 76;
        } else if (7 == v85) {
            v2 = v174 = 0x43dc(v98, msg.data[v6 + 21] >> 96, v2, msg.data[v6 + 61] >> 160, v86 & 0x1);
            v108 = v175 = 1;
            v0 = v176 = msg.data[v6 + 41] >> 96;
            v6 = v6 + 74;
        } else if (8 == v85) {
            v108 = v177 = 1;
            v2 = 0x4a09(v98, v2, v86 & v177);
            v6 = v6 + 22;
        } else if (9 == v85) {
            v0 = v178 = msg.data[v6 + 21] >> 96;
            if (!(msg.data[v6 + 73] >> 248 & 0x1)) {
            }
            v108 = v179 = 1;
            v2 = v180 = 0x4f8a(v98, v178, msg.data[v6 + 41], msg.data[v6 + 73] >> 248 & 0x1, v2, this);
            v6 = v6 + 87;
        } else {
            require(10 == v85);
            v0 = v181 = msg.data[v6 + 21] >> 96;
            if (!(msg.data[v6 + 73] >> 248 & 0x1)) {
            }
            v108 = v182 = 1;
            v2 = v183 = 0x4fe0(v98, v181, msg.data[v6 + 41], msg.data[v6 + 73] >> 248 & 0x1, v2, this);
            v6 = v6 + 87;
        }
        v83 = v83 + v108;
    }
    MEM[0] = MEM[0];
    if ((v1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) & !v0) {
        if (this.balance) {
            v184 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(this.balance).gas(msg.gas);
            require(v184);
        }
    }
    0x48ba(v1, msg.sender, v3 + v185);
    v186 = 0x4d4c(v1, this);
    tstor_2000 = v186;
    if (v186) {
        0x48ba(v1, _rescueETH, v186);
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    v0 = v1 = data.length;
    v0 = v2 = address(msg.data[data.data]);
    v0 = v3 = address(msg.data[data + 68]);
    v0 = v4 = bool(amount0Delta) & (amount0Delta < int256.min);
    v0 = v5 = bool(amount1Delta) & (amount1Delta < int256.min);
    if (v1 > 64) {
        if (!(msg.data[data + 100] >> 248)) {
            v0 = v6 = msg.data[data + 101] >> 96;
            v0 = v7 = msg.data[data + 101] >> 88 & 0x1;
            if (!v4) {
            }
            if (!v5) {
            }
            if (v1 > 105) {
                v0 = v8 = msg.data[122 + data] >> 96;
            }
            if (v4) {
                v9 = v10 = 12467;
                v0 = v11 = 12474;
                v12 = v13, v12 = v14 = 0x49e8(v6);
                v0 = v15 = !v7;
                if (v7) {
                }
            }
            if (v0) {
                v0 = v16 = 0;
                v0 = v17 = 12371;
                v9 = v18 = 12365;
                v0 = v19 = 164;
                v12 = v20, v12 = v21 = 0x49e8(v0);
                if (!v0) {
                }
            }
            require(!(!v0 | (v0 >= v12)));
            // Unknown jump to Block ['0x304dB0x42fd8', '0x30b3B0x42fd8']. Refer to 3-address code (TAC);
            v22 = v23 = address(v0);
            if (!v23) {
                MEM[0] = MEM[0];
                v24 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(1 + 1000 * (v0 * v12) / (997 * (v12 - v0))).gas(msg.gas);
                require(v24, TransferFailed());
                MEM[0] = MEM[0];
                v22 = v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v26 = v22.transfer(address(v0), 1 + 1000 * (v0 * v12) / (997 * (v12 - v0))).gas(msg.gas);
            require(v26, TransferFailed());
            if (!RETURNDATASIZE()) {
                // Unknown jump to Block ['0x3053B0x42fd8', '0x30baB0x42fd8']. Refer to 3-address code (TAC);
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                require(MEM[0], TransferFailed());
                // Unknown jump to Block ['0x3053B0x42fd8', '0x30baB0x42fd8']. Refer to 3-address code (TAC);
            }
            MEM[v0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            MEM[4] = v0;
            MEM[36] = v0;
            MEM[68] = msg.sender;
            MEM[100] = 128;
            MEM[132] = v0;
            v27 = v0.call(MEM[v438620x2bd7_0x0V0x42fd8:v438620x2bd7_0x0V0x42fd8 + v438620x2bd7_0x0V0x42fd8], MEM[v438620x2bd7_0x0V0x42fd8:v438620x2bd7_0x0V0x42fd8 + v438620x2bd7_0x0V0x42fd8]).value(v0).gas(msg.gas);
            if (!v27) {
                v28 = RETURNDATASIZE();
                revert(v29, v29, v29, v29, v29, v29, v29, v29, v29, 1 + 1000 * (v0 * v12) / (997 * (v12 - v0)));
            }
            MEM[0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (v0 == v0) {
                MEM[4] = v0;
                MEM[36] = 0;
            }
            if (v0 == v0) {
                MEM[4] = v0;
                MEM[36] = 0;
            }
            if ((v0 != v0) & (v0 != v0)) {
                if (v0) {
                    MEM[4] = 0;
                    MEM[36] = v0;
                }
                if (v0) {
                    MEM[4] = v0;
                    MEM[36] = 0;
                }
            }
            v30 = v0.call(v29, v29, v29, msg.sender, 128, 0).gas(msg.gas);
            if (!v30) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v31 = RETURNDATASIZE();
                revert(v29, v29, v29, v29, v29, v29, v29, v29, v29, 1 + 1000 * (v0 * v12) / (997 * (v12 - v0)));
            }
            // Unknown jump to Block 0x48ba0x2bd7B0x42fd8. Refer to 3-address code (TAC);
        } else {
            if (5 == msg.data[data + 100] >> 248) {
                v32 = v33 = msg.data[data + 143];
                if (!v33) {
                    v32 = v34 = 0x4d4c(msg.data[data + 121] >> 96, this);
                }
                0x45b9(msg.data[data + 121] >> 96, msg.data[data + 101] >> 96);
                v35 = (msg.data[data + 101] >> 96).exchange(msg.data[data + 141] >> 248, msg.data[data + 142] >> 248, v32, 0).gas(msg.gas);
                require(v35, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (!v4) {
                    if (v5) {
                        0x48ba(v3, msg.sender, amount1Delta);
                    }
                }
            } else if (6 == msg.data[data + 100] >> 248) {
                v36 = v37 = msg.data[data + 143];
                if (!v37) {
                    v36 = v38 = 0x4d4c(msg.data[data + 121] >> 96, this);
                }
                0x45b9(msg.data[data + 121] >> 96, msg.data[data + 101] >> 96);
                v39 = (msg.data[data + 101] >> 96).setMetaGold(msg.data[data + 141] >> 248, msg.data[data + 142] >> 248, v36, 0).gas(msg.gas);
                require(v39, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (v4) {
                    // Unknown jump to Block 0x2f15B0x42fd8. Refer to 3-address code (TAC);
                }
            } else if (4 == msg.data[data + 100] >> 248) {
                v40 = v41 = msg.data[data + 173];
                if (!v41) {
                    v40 = v42 = 0x4d4c(msg.data[data + 133] >> 96, this);
                }
                0x4525(msg.data[data + 133] >> 96);
                MEM[0] = MEM[0];
                v43 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.swap(224, this, 0, msg.sender, 0, 0, uint256.max, msg.data[data + 101], 0, msg.data[data + 133] >> 96, msg.data[data + 153] >> 96, v40, 192, 0).gas(msg.gas);
                require(v43, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else {
                require(7 == msg.data[data + 100] >> 248);
                v44 = v45 = msg.data[data + 162];
                if (!v45) {
                    v44 = v46 = 0x4d4c(msg.data[data + 121] >> 96, this);
                }
                _dexCallback = msg.data[data + 101] >> 96;
                tstor_1001 = msg.data[data + 121] >> 96;
                v47 = (msg.data[data + 101] >> 96).swapInWithCallback(msg.data[data + 161] >> 248 & 0x1, v44, 0, msg.sender).gas(msg.gas);
                if (!v47) {
                    _dexCallback = 0;
                    tstor_1001 = 0;
                    revert(0, RETURNDATASIZE());
                } else {
                    _dexCallback = 0;
                    tstor_1001 = 0;
                }
            }
            if (v5) {
                0x48ba(v3, msg.sender, amount1Delta);
            }
            0x48ba(v2, msg.sender, amount0Delta);
            // Unknown jump to Block 0x2f00B0x42fd8. Refer to 3-address code (TAC);
        }
    }
    if (65 > v0) {
        if (_uniswapV3SwapCallback) {
            if (v0) {
                v48 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, msg.sender, v0).gas(msg.gas);
                require(v48);
            }
            if (v0) {
                v49 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, msg.sender, v0).gas(msg.gas);
                require(v49);
            }
        }
        if (_uniswapV3SwapCallback) {
            // Unknown jump to Block 0x439d7. Refer to 3-address code (TAC);
        } else {
            if (v0) {
                0x48ba(v0, msg.sender, v0);
            }
            if (v0) {
                0x48ba(v0, msg.sender, v0);
            }
            // Unknown jump to Block 0x439d7. Refer to 3-address code (TAC);
        }
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    v0 = v1 = data.length;
    v0 = v2 = address(msg.data[data.data]);
    v0 = v3 = address(msg.data[data + 68]);
    v0 = v4 = bool(amount0Delta) & (amount0Delta < int256.min);
    v0 = v5 = bool(amount1Delta) & (amount1Delta < int256.min);
    if (v1 > 64) {
        if (!(msg.data[data + 100] >> 248)) {
            v0 = v6 = msg.data[data + 101] >> 96;
            v0 = v7 = msg.data[data + 101] >> 88 & 0x1;
            if (!v4) {
            }
            if (!v5) {
            }
            if (v1 > 105) {
                v0 = v8 = msg.data[122 + data] >> 96;
            }
            if (v4) {
                v9 = v10 = 12467;
                v0 = v11 = 12474;
                v12 = v13, v12 = v14 = 0x49e8(v6);
                v0 = v15 = !v7;
                if (v7) {
                }
            }
            if (v0) {
                v0 = v16 = 0;
                v0 = v17 = 12371;
                v9 = v18 = 12365;
                v0 = v19 = 164;
                v12 = v20, v12 = v21 = 0x49e8(v0);
                if (!v0) {
                }
            }
            require(!(!v0 | (v0 >= v12)));
            // Unknown jump to Block ['0x304dB0x43000', '0x30b3B0x43000']. Refer to 3-address code (TAC);
            v22 = v23 = address(v0);
            if (!v23) {
                MEM[0] = MEM[0];
                v24 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(1 + 1000 * (v0 * v12) / (997 * (v12 - v0))).gas(msg.gas);
                require(v24, TransferFailed());
                MEM[0] = MEM[0];
                v22 = v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v26 = v22.transfer(address(v0), 1 + 1000 * (v0 * v12) / (997 * (v12 - v0))).gas(msg.gas);
            require(v26, TransferFailed());
            if (!RETURNDATASIZE()) {
                // Unknown jump to Block ['0x3053B0x43000', '0x30baB0x43000']. Refer to 3-address code (TAC);
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                require(MEM[0], TransferFailed());
                // Unknown jump to Block ['0x3053B0x43000', '0x30baB0x43000']. Refer to 3-address code (TAC);
            }
            MEM[v0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            MEM[4] = v0;
            MEM[36] = v0;
            MEM[68] = msg.sender;
            MEM[100] = 128;
            MEM[132] = v0;
            v27 = v0.call(MEM[v438620x2bd7_0x0V0x43000:v438620x2bd7_0x0V0x43000 + v438620x2bd7_0x0V0x43000], MEM[v438620x2bd7_0x0V0x43000:v438620x2bd7_0x0V0x43000 + v438620x2bd7_0x0V0x43000]).value(v0).gas(msg.gas);
            if (!v27) {
                v28 = RETURNDATASIZE();
                revert(v29, v29, v29, v29, v29, v29, v29, v29, v29, 1 + 1000 * (v0 * v12) / (997 * (v12 - v0)));
            }
            MEM[0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (v0 == v0) {
                MEM[4] = v0;
                MEM[36] = 0;
            }
            if (v0 == v0) {
                MEM[4] = v0;
                MEM[36] = 0;
            }
            if ((v0 != v0) & (v0 != v0)) {
                if (v0) {
                    MEM[4] = 0;
                    MEM[36] = v0;
                }
                if (v0) {
                    MEM[4] = v0;
                    MEM[36] = 0;
                }
            }
            v30 = v0.call(v29, v29, v29, msg.sender, 128, 0).gas(msg.gas);
            if (!v30) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v31 = RETURNDATASIZE();
                revert(v29, v29, v29, v29, v29, v29, v29, v29, v29, 1 + 1000 * (v0 * v12) / (997 * (v12 - v0)));
            }
            // Unknown jump to Block 0x48ba0x2bd7B0x43000. Refer to 3-address code (TAC);
        } else {
            if (5 == msg.data[data + 100] >> 248) {
                v32 = v33 = msg.data[data + 143];
                if (!v33) {
                    v32 = v34 = 0x4d4c(msg.data[data + 121] >> 96, this);
                }
                0x45b9(msg.data[data + 121] >> 96, msg.data[data + 101] >> 96);
                v35 = (msg.data[data + 101] >> 96).exchange(msg.data[data + 141] >> 248, msg.data[data + 142] >> 248, v32, 0).gas(msg.gas);
                require(v35, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (!v4) {
                    if (v5) {
                        0x48ba(v3, msg.sender, amount1Delta);
                    }
                }
            } else if (6 == msg.data[data + 100] >> 248) {
                v36 = v37 = msg.data[data + 143];
                if (!v37) {
                    v36 = v38 = 0x4d4c(msg.data[data + 121] >> 96, this);
                }
                0x45b9(msg.data[data + 121] >> 96, msg.data[data + 101] >> 96);
                v39 = (msg.data[data + 101] >> 96).setMetaGold(msg.data[data + 141] >> 248, msg.data[data + 142] >> 248, v36, 0).gas(msg.gas);
                require(v39, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (v4) {
                    // Unknown jump to Block 0x2f15B0x43000. Refer to 3-address code (TAC);
                }
            } else if (4 == msg.data[data + 100] >> 248) {
                v40 = v41 = msg.data[data + 173];
                if (!v41) {
                    v40 = v42 = 0x4d4c(msg.data[data + 133] >> 96, this);
                }
                0x4525(msg.data[data + 133] >> 96);
                MEM[0] = MEM[0];
                v43 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.swap(224, this, 0, msg.sender, 0, 0, uint256.max, msg.data[data + 101], 0, msg.data[data + 133] >> 96, msg.data[data + 153] >> 96, v40, 192, 0).gas(msg.gas);
                require(v43, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else {
                require(7 == msg.data[data + 100] >> 248);
                v44 = v45 = msg.data[data + 162];
                if (!v45) {
                    v44 = v46 = 0x4d4c(msg.data[data + 121] >> 96, this);
                }
                _dexCallback = msg.data[data + 101] >> 96;
                tstor_1001 = msg.data[data + 121] >> 96;
                v47 = (msg.data[data + 101] >> 96).swapInWithCallback(msg.data[data + 161] >> 248 & 0x1, v44, 0, msg.sender).gas(msg.gas);
                if (!v47) {
                    _dexCallback = 0;
                    tstor_1001 = 0;
                    revert(0, RETURNDATASIZE());
                } else {
                    _dexCallback = 0;
                    tstor_1001 = 0;
                }
            }
            if (v5) {
                0x48ba(v3, msg.sender, amount1Delta);
            }
            0x48ba(v2, msg.sender, amount0Delta);
            // Unknown jump to Block 0x2f00B0x43000. Refer to 3-address code (TAC);
        }
    }
    if (65 > v0) {
        if (_uniswapV3SwapCallback) {
            if (v0) {
                v48 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, msg.sender, v0).gas(msg.gas);
                require(v48);
            }
            if (v0) {
                v49 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, msg.sender, v0).gas(msg.gas);
                require(v49);
            }
        }
        if (_uniswapV3SwapCallback) {
            // Unknown jump to Block 0x439f8. Refer to 3-address code (TAC);
        } else {
            if (v0) {
                0x48ba(v0, msg.sender, v0);
            }
            if (v0) {
                0x48ba(v0, msg.sender, v0);
            }
            // Unknown jump to Block 0x439f8. Refer to 3-address code (TAC);
        }
    }
}

function 0x43dc(address varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    _dexCallback = varg0;
    tstor_1001 = varg1;
    v0 = varg0.swapInWithCallback(varg4, varg2, varg3, this).gas(msg.gas);
    if (!v0) {
        _dexCallback = 0;
        tstor_1001 = 0;
        revert(0, RETURNDATASIZE());
    } else {
        _dexCallback = 0;
        tstor_1001 = 0;
        return MEM[0];
    }
}

function 0x4525(address varg0) private { 
    if (STORAGE[varg0 ^ 0xa445958a75a0704d566bf2c80000000000000000000000000000000000000000]) {
        return ;
    } else {
        v0 = varg0.staticcall(0xdd62ed3e00000000000000000000000000000000000000000000000000000000, this, 0xdd62ed3e00000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8).gas(msg.gas);
        if (v0) {
            if (MEM[0] > uint128.max) {
                STORAGE[varg0 ^ 0xa445958a75a0704d566bf2c80000000000000000000000000000000000000000] = 1;
                return ;
            }
        }
        v1 = varg0.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, uint256.max).gas(msg.gas);
        STORAGE[varg0 ^ 0xa445958a75a0704d566bf2c80000000000000000000000000000000000000000] = 1;
        return ;
    }
}

function 0x45b9(address varg0, uint256 varg1) private { 
    v0 = varg0 ^ bytes12(varg1 << 160);
    if (STORAGE[v0]) {
        return ;
    } else {
        v1 = varg0.allowance(this, address(varg1)).gas(msg.gas);
        if (v1) {
            if (MEM[0] > uint128.max) {
                STORAGE[v0] = 1;
                return ;
            }
        }
        v2 = varg0.approve(address(varg1), uint256.max).gas(msg.gas);
        STORAGE[v0] = 1;
        return ;
    }
}

function 0x463f(address varg0, uint256 varg1) private { 
    if (!varg0) {
        if (this.balance < varg1) {
            v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(varg1 - this.balance, varg1 - this.balance, varg1 - this.balance).gas(msg.gas);
            require(v0);
        }
        v1 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg1).gas(msg.gas);
        require(v1);
        return ;
    } else {
        0x48ba(varg0, 0x4444c5dc75cb358380d2e3de08a90, varg1);
        v2 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        require(v2);
        return ;
    }
}

function 0x46f7(address varg0, uint256 varg1) private { 
    v0 = v1 = varg0;
    if (!v1) {
        v2 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg1).gas(msg.gas);
        require(v2, TransferFailed());
        MEM[0] = MEM[0];
        v0 = v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
    MEM[0] = MEM[0];
    v4 = v0.transfer(0xba12222222228d8ba445958a75a0704d566bf2c8, varg1).gas(msg.gas);
    require(v4, TransferFailed());
    if (!RETURNDATASIZE()) {
        return ;
    } else {
        RETURNDATACOPY(0, 0, RETURNDATASIZE());
        require(MEM[0], TransferFailed());
        return ;
    }
}

function 0x4795(address varg0, uint256 varg1) private { 
    v0 = v1 = varg0;
    if (!v1) {
        v2 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg1).gas(msg.gas);
        require(v2, TransferFailed());
        MEM[0] = MEM[0];
        v0 = v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
    MEM[0] = MEM[0];
    v4 = v0.transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
    require(v4, TransferFailed());
    if (!RETURNDATASIZE()) {
        return ;
    } else {
        RETURNDATACOPY(0, 0, RETURNDATASIZE());
        require(MEM[0], TransferFailed());
        return ;
    }
}

function 0x4827(address varg0, uint256 varg1) private { 
    v0 = v1 = varg0;
    if (!v1) {
        v2 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg1).gas(msg.gas);
        require(v2, TransferFailed());
        MEM[0] = MEM[0];
        v0 = v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
    v4 = v0.transfer(0x14aa86c5d3c41765bb24e11bd701, varg1).gas(msg.gas);
    require(v4, TransferFailed());
    if (!RETURNDATASIZE()) {
        return ;
    } else {
        RETURNDATACOPY(0, 0, RETURNDATASIZE());
        require(MEM[0], TransferFailed());
        return ;
    }
}

function 0x48ba(address varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = varg0;
    if (!v1) {
        v2 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg2).gas(msg.gas);
        require(v2, TransferFailed());
        MEM[0] = MEM[0];
        v0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
    v3 = v0.transfer(varg1, varg2).gas(msg.gas);
    require(v3, TransferFailed());
    if (!RETURNDATASIZE()) {
        return ;
    } else {
        RETURNDATACOPY(0, 0, RETURNDATASIZE());
        require(MEM[0], TransferFailed());
        return ;
    }
}

function 0x494a(address varg0, uint256 varg1) private { 
    if (!varg0) {
        require(msg.value >= varg1, TransferFailed());
        MEM[0] = MEM[0];
        v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg1).gas(msg.gas);
        require(v0, TransferFailed());
        return ;
    } else {
        v1 = varg0.transferFrom(_rescueETH, this, varg1).gas(msg.gas);
        require(v1, TransferFailed());
        if (!RETURNDATASIZE()) {
            return ;
        } else {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            require(MEM[0], TransferFailed());
            return ;
        }
    }
}

function 0x49e8(uint256 varg0) private { 
    v0 = varg0.getReserves().gas(msg.gas);
    require(v0);
    return MEM[32], MEM[0];
}

function 0x4a09(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == varg0) {
        if (!varg2) {
            v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(varg1).gas(msg.gas);
            require(v0);
            return varg1;
        } else {
            v1 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, varg1).gas(msg.gas);
            require(v1);
            return varg1;
        }
    } else {
        MEM[0] = MEM[0];
        if (0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0 == varg0) {
            if (!varg2) {
                v2 = 0xae7ab96520de3a18e5e111b5eaab095312d7fe84.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, varg1).gas(msg.gas);
                v3 = 0x4cb7(this);
                v4 = 0x0000000000000000000000007f39c581f595b53c5cb19bd0b3f8da6c935e2ca0.call(0xea598cb000000000000000000000000000000000000000000000000000000000, 0xea598cb000000000000000000000000000000000000000000000000000000000, varg1).gas(msg.gas);
                require(v4);
                v5 = 0x4cb7(this);
                return v5 - v3;
            } else {
                v6 = 0x4ce4(this);
                v7 = 0x0000000000000000000000007f39c581f595b53c5cb19bd0b3f8da6c935e2ca0.call(0xde0e9a3e00000000000000000000000000000000000000000000000000000000, 0xde0e9a3e00000000000000000000000000000000000000000000000000000000, varg1).gas(msg.gas);
                require(v7);
                v8 = 0x4ce4(this);
                return v8 - v6;
            }
        } else if (0xae78736cd615f374d3085123a210448e74fc6393 == varg0) {
            if (!varg2) {
                v9 = 0x4d18(this);
                v10 = 0xae78736cd615f374d3085123a210448e74fc6393.deposit().value(varg1).gas(msg.gas);
                require(v10);
                v11 = 0x4d18(this);
                return v11 - v9;
            } else {
                v12 = this.balance;
                v13 = 0xae78736cd615f374d3085123a210448e74fc6393.burn(varg1).gas(msg.gas);
                require(v13);
                return this.balance - v12;
            }
        } else if (!varg2) {
            v14 = varg0.asset().gas(msg.gas);
            require(v14);
            v15 = address(MEM[0x0]).approve(varg0, varg1).gas(msg.gas);
            v16 = 0x4d4c(varg0, this);
            v17 = varg0.deposit(varg1, this).gas(msg.gas);
            require(v17);
            v18 = 0x4d4c(varg0, this);
            return v18 - v16;
        } else {
            v19 = varg0.asset().gas(msg.gas);
            require(v19);
            v20 = 0x4d4c(address(MEM[0x0]), this);
            v21 = varg0.redeem(varg1, this, this).gas(msg.gas);
            require(v21);
            v22 = 0x4d4c(address(MEM[0x0]), this);
            return v22 - v20;
        }
    }
}

function 0x4cb7(uint256 varg0) private { 
    v0 = 0x0000000000000000000000007f39c581f595b53c5cb19bd0b3f8da6c935e2ca0.staticcall(0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, varg0).gas(msg.gas);
    require(v0);
    return MEM[0];
}

function 0x4ce4(uint256 varg0) private { 
    v0 = 0xae7ab96520de3a18e5e111b5eaab095312d7fe84.balanceOf(varg0).gas(msg.gas);
    require(v0);
    return MEM[0];
}

function 0x4d18(uint256 varg0) private { 
    v0 = 0xae78736cd615f374d3085123a210448e74fc6393.balanceOf(varg0).gas(msg.gas);
    require(v0);
    return MEM[0];
}

function 0x4d4c(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.balanceOf(varg1).gas(msg.gas);
    require(v0);
    return MEM[0];
}

function 0x4f8a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    MEM8[1100] = varg3 & 0xFF;
    MEM8[1153] = 0x0 & 0xFF;
    v0 = 0x14aa86c5d3c41765bb24e11bd701.lock(varg0, varg1, varg2, varg4, varg5).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return MEM[0];
}

function 0x4fe0(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    MEM8[1100] = varg3 & 0xFF;
    MEM8[1153] = 0x1 & 0xFF;
    v0 = 0x14aa86c5d3c41765bb24e11bd701.lock(varg0, varg1, varg2, varg4, varg5).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return MEM[0];
}

function rescueETH() public payable { 
    require(!(msg.sender - _rescueETH));
    if (this.balance) {
        v0 = _rescueETH.call().value(this.balance).gas(msg.gas);
        require(v0);
        return 1;
    } else {
        return 1;
    }
}

function rescueTokens(address _tokenAddr, uint256 _amount) public payable { 
    require(!(msg.sender - _rescueETH));
    if (!_amount) {
        v0 = v1 = 0x4d4c(_tokenAddr, this);
    }
    if (v0) {
        0x48ba(_tokenAddr, _rescueETH, v0);
    }
    return 1;
}

function receiveFlashLoan(address[] varg0) public payable { 
    MEM[0] = MEM[0];
    require(!(msg.sender - 0xba12222222228d8ba445958a75a0704d566bf2c8));
    v0 = v1 = msg.data[varg0 + 36] >> 96;
    v2 = v3 = msg.data[varg0 + 56] >> 160;
    v4 = v5 = msg.data[varg0 + 68] >> 248;
    v6 = v7 = varg0 + 69;
    MEM[800] = 0;
    MEM[832] = 0;
    if ((v5 == 2) & (msg.data[v7] >> 248 == 1)) {
        if (msg.data[v7 + 64] >> 160) {
            v0 = v8 = msg.data[v7 + 21] >> 96;
            v0 = v9 = msg.data[v7 + 41] >> 96;
            if (v8 <= v9) {
            }
            MEM[196] = address(v0);
            MEM[228] = address(v0);
            if (!(msg.data[v7 + 77] >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & msg.data[v7 + 130] >> 160 | bytes20(msg.data[v7 + 78]);
                v2 = v10 = 0x3231(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v11 = v7 + 131;
                v4 = v12 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v13 = 0x32a6(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v14 = v6 + 153;
                v4 = v15 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM8[301] = msg.data[v7 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v7 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v16 = 0x32a6(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v17 = v6 + 153;
                v4 = v18 = 0;
                MEM[800] = 1;
            }
            if (msg.data[v7 + 77] >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = msg.data[v7 + 78];
                MEM[293] = bytes20(msg.data[v7 + 110]);
                MEM[313] = bytes20(msg.data[v7 + 130]);
                MEM[333] = v3;
                v2 = v19 = 0x3314(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v20 = v6 + 163;
                v4 = v21 = 0;
                MEM[800] = 1;
            }
            if (7 == msg.data[v7 + 77] >> 248) {
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = bytes20(msg.data[v7 + 78]);
                MEM[281] = bytes20(msg.data[v7 + 98]);
                MEM[301] = bytes20(msg.data[v7 + 118]);
                MEM8[321] = msg.data[v7 + 150] >> 248 & 0x1 & 0xFF;
                MEM[322] = v3;
                v2 = v22 = 0x3382(msg.data[v7 + 1] >> 96, msg.data[v7 + 76] >> 248 & 0x1, msg.data[v7 + 64] >> 160);
                v6 = v23 = v6 + 151;
                v4 = v24 = 0;
                MEM[800] = 1;
            }
        }
    }
    if ((v4 == 3) & (msg.data[v6] >> 248 == 1)) {
        v25 = msg.data[v6 + 64] >> 160;
        if (v25) {
            v26 = msg.data[v6 + 21] >> 96;
            v26 = v27 = msg.data[v6 + 41] >> 96;
            if (v26 <= v27) {
            }
            MEM[196] = address(v26);
            MEM[228] = address(v26);
            if (!(msg.data[v6 + 77] >> 248)) {
                MEM8[260] = 0x0 & 0xFF;
                MEM[261] = 0x10000000000000000000000 & msg.data[v6 + 130] >> 160 | bytes20(msg.data[v6 + 78]);
                v2 = v28 = 0x3231(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v29 = msg.data[v6 + 98] >> 96;
                v6 = v30 = v6 + 131;
                v4 = v31 = 1;
                MEM[800] = v31;
            }
            if (msg.data[v6 + 77] >> 248 == 5) {
                MEM8[260] = 0x5 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v32 = 0x32a6(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v33 = msg.data[v6 + 118] >> 96;
                v6 = v34 = v6 + 153;
                v4 = v35 = 1;
                MEM[800] = v35;
            }
            if (msg.data[v6 + 77] >> 248 == 6) {
                MEM8[260] = 0x6 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                MEM[303] = v3;
                v2 = v36 = 0x32a6(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v37 = msg.data[v6 + 118] >> 96;
                v6 = v38 = v6 + 153;
                v4 = v39 = 1;
                MEM[800] = v39;
            }
            if (msg.data[v6 + 77] >> 248 == 4) {
                MEM8[260] = 0x4 & 0xFF;
                MEM[261] = msg.data[v6 + 78];
                MEM[293] = bytes20(msg.data[v6 + 110]);
                MEM[313] = bytes20(msg.data[v6 + 130]);
                MEM[333] = v3;
                v2 = v40 = 0x3314(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v41 = msg.data[v6 + 130] >> 96;
                v6 = v42 = v6 + 163;
                v4 = v43 = 1;
                MEM[800] = v43;
            }
            if (7 == msg.data[v6 + 77] >> 248) {
                0x45b9(msg.data[v6 + 98] >> 96, msg.data[v6 + 78] >> 96);
                MEM8[260] = 0x7 & 0xFF;
                MEM[261] = bytes20(msg.data[v6 + 78]);
                MEM[281] = bytes20(msg.data[v6 + 98]);
                v44 = bytes20(msg.data[v6 + 118]);
                MEM8[321] = msg.data[v6 + 150] >> 248 & 0x1 & 0xFF;
                v2 = v45 = 0x3382(msg.data[v6 + 1] >> 96, msg.data[v6 + 76] >> 248 & 0x1, v25);
                v0 = v46 = msg.data[v6 + 118] >> 96;
                v6 = v47 = v6 + 151;
                v4 = v48 = 1;
                MEM[800] = v48;
            }
        }
    }
    if ((v4 == 2) & !MEM[0x320] & (msg.data[v6] >> 248 == 2)) {
        v0 = v49 = msg.data[v6 + 1] >> 96;
        v0 = v50 = msg.data[v6 + 21] >> 96;
        if (msg.data[v6 + 79] >> 248 & 0x1) {
        }
        if (v49 <= v50) {
        }
        v51 = msg.data[v6 + 80] >> 248;
        if (!v51) {
            MEM8[935] = 0x0 & 0xFF;
            MEM8[956] = msg.data[v6 + 133] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v52 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 121, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 81])).gas(msg.gas);
            if (!v52) {
                v53 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = MEM[64];
                v6 = v55 = v6 + 134;
                v4 = v56 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 1) & !MEM[0x340]) {
            if (msg.data[v6 + 101] >> 96 > msg.data[v6 + 121] >> 96) {
                MEM8[935] = 0x1 & 0xFF;
                MEM8[996] = msg.data[v6 + 156] >> 248 & 0x1 & 0xFF;
            } else {
                MEM8[935] = 0x1 & 0xFF;
                MEM8[996] = msg.data[v6 + 156] >> 248 & 0x1 & 0xFF;
            }
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v57 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), bytes20(msg.data[v6 + 47] >> 96 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, v2, msg.data[v6 + 101] >> 96 << 96, bytes20(msg.data[v6 + 81]), msg.data[v6 + 121] >> 96 << 96, bytes20(msg.data[v6 + 81]), msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96, msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 121] >> 96 << 96, msg.data[v6 + 101] >> 96 << 96).gas(msg.gas);
            if (!v57) {
                v58 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v59 = MEM[64];
                v6 = v60 = v6 + 157;
                v4 = v61 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 4) & !MEM[0x340]) {
            MEM8[935] = 0x4 & 0xFF;
            v62 = bytes20(msg.data[v6 + 133]);
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v63 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 172, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, msg.data[v6 + 81], v62, bytes20(msg.data[v6 + 113])).gas(msg.gas);
            if (!v63) {
                v64 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v65 = MEM[64];
                v6 = v66 = v6 + 166;
                v4 = v67 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 5) & !MEM[0x340]) {
            MEM8[935] = 0x5 & 0xFF;
            MEM8[996] = msg.data[v6 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v6 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v68 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v68) {
                v69 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v70 = MEM[64];
                v6 = v71 = v6 + 156;
                v4 = v72 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 6) & !MEM[0x340]) {
            MEM8[935] = 0x6 & 0xFF;
            MEM8[996] = msg.data[v6 + 141] >> 248 & 0xFF;
            MEM8[997] = msg.data[v6 + 142] >> 248 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v73 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 162, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v73) {
                v74 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v75 = MEM[64];
                v6 = v76 = v6 + 156;
                v4 = v77 = 0;
                MEM[832] = 1;
            }
        }
        if ((v51 == 7) & !MEM[0x340]) {
            MEM8[935] = 0x7 & 0xFF;
            MEM8[996] = msg.data[v6 + 153] >> 248 & 0x1 & 0xFF;
            MEM8[934] = 0x1 & (v0 == v0) & 0xFF;
            v78 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 161, bytes20(v0 << 96), bytes20(v0 << 96), msg.data[v6 + 44] >> 232, msg.data[v6 + 41] >> 232, bytes20(msg.data[v6 + 47] >> 96 << 96), v2, bytes20(msg.data[v6 + 101]), bytes20(msg.data[v6 + 81]), bytes20(msg.data[v6 + 121]), bytes20(msg.data[v6 + 121]), v62).gas(msg.gas);
            if (!v78) {
                v79 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v3, v44);
            } else {
                v2 = v80 = MEM[64];
                v6 = v81 = v6 + 154;
                v4 = v82 = 0;
                MEM[832] = 1;
            }
        }
        if (MEM[832]) {
        }
    }
    v83 = v84 = 0;
    while (v83 < v4) {
        v85 = msg.data[v6] >> 248;
        v86 = 0;
        if (0 == v85) {
            v86 = v87 = msg.data[v6 + 53] >> 248;
        } else if (1 == v85) {
            v86 = v88 = msg.data[v6 + 76] >> 248;
        } else if (2 == v85) {
            v86 = v89 = msg.data[v6 + 79] >> 248;
        } else if (3 == v85) {
            v86 = v90 = msg.data[v6 + 73] >> 248;
        } else if (4 == v85) {
            v86 = v91 = msg.data[v6 + 85] >> 248;
        } else if (5 == v85) {
            v86 = v92 = msg.data[v6 + 75] >> 248;
        } else if (6 == v85) {
            v86 = v93 = msg.data[v6 + 75] >> 248;
        } else if (7 == v85) {
            v86 = v94 = msg.data[v6 + 73] >> 248;
        } else if (8 == v85) {
            v86 = v95 = msg.data[v6 + 21] >> 248;
        } else if (9 == v85) {
            v86 = v96 = msg.data[v6 + 86] >> 248;
        } else if (10 == v85) {
            v86 = v97 = msg.data[v6 + 86] >> 248;
        }
        MEM[896] = this;
        v0 = v98 = msg.data[v6 + 1] >> 96;
        if (!v85) {
            v2 = v99 = msg.data[v6 + 41] >> 160;
            if (0 == (v83 + 1 == v4)) {
                if (!(msg.data[v6 + 54] >> 248)) {
                    MEM[896] = msg.data[v6 + 55] >> 96;
                }
            } else {
                MEM[896] = this;
            }
            if (!v99) {
                v100 = v101, v100 = v102 = 0x49e8(v98);
                if (v86 & 0x1) {
                }
                v2 = v2 * v100 * 997 / (v100 * 1000 + v2 * 997);
            }
            v103 = 0;
            v103 = v104 = 1;
            if (v83) {
                if (!(v86 >> 2 & v104)) {
                }
            }
            if (v103) {
                0x48ba(v0, v98, v2);
            }
            v0 = v105 = msg.data[v6 + 21] >> 96;
            MEM[v103] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (1 == v86 & 0x1) {
                MEM[4] = v103;
                MEM[36] = v2;
            } else {
                MEM[4] = v2;
                MEM[36] = v103;
            }
            v106 = v98.call(v54, v54, v54, MEM[896], 128, v103).value(v103).gas(msg.gas);
            if (!v106) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v107 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
            } else {
                v108 = v109 = 1;
                v6 = v6 + 54;
            }
        } else if (1 == v85) {
            v0 = v110 = msg.data[v6 + 21] >> 96;
            v0 = v111 = msg.data[v6 + 41] >> 96;
            if ((v4 == 3) & (v83 == 1) & (v0 != v110)) {
                v112 = msg.data[v6 + 77] >> 248;
                if (v110 <= v111) {
                }
                MEM[196] = address(v0);
                MEM[228] = address(v0);
                v113 = 0x1 & msg.data[v6 + 76] >> 248;
                if (!v112) {
                    MEM8[260] = 0x0 & 0xFF;
                    MEM[261] = 0x10000000000000000000000 & msg.data[v6 + 130] >> 160 | bytes20(msg.data[v6 + 78]);
                    MEM[282] = v0 << 96;
                    v2 = v114 = 0x33f0(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 131;
                    MEM[800] = 1;
                    v83 = v115 = 2;
                }
                if (v112 == 5) {
                    MEM8[260] = 0x5 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                    MEM[303] = v2;
                    v2 = v116 = 0x32a6(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 153;
                    MEM[800] = 1;
                    v83 = v117 = 2;
                }
                if (v112 == 6) {
                    MEM8[260] = 0x6 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM8[301] = msg.data[v6 + 138] >> 248 & 0xFF;
                    MEM8[302] = uint8(msg.data[v6 + 138] >> 240) & 0xFF;
                    MEM[303] = v2;
                    v2 = v118 = 0x32a6(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 153;
                    MEM[800] = 1;
                    v83 = v119 = 2;
                }
                if (v112 == 4) {
                    MEM8[260] = 0x4 & 0xFF;
                    MEM[261] = msg.data[v6 + 78];
                    MEM[293] = bytes20(msg.data[v6 + 110]);
                    MEM[333] = v2;
                    v2 = v120 = 0x3314(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 163;
                    MEM[800] = 1;
                    v83 = v121 = 2;
                }
                if (7 == v112) {
                    MEM8[260] = 0x7 & 0xFF;
                    MEM[261] = bytes20(msg.data[v6 + 78]);
                    MEM[281] = bytes20(msg.data[v6 + 98]);
                    MEM[301] = bytes20(msg.data[v6 + 118]);
                    MEM8[321] = msg.data[v6 + 150] >> 248 & 0x1 & 0xFF;
                    v2 = v122 = 0x3382(v98, v113, msg.data[v6 + 64] >> 160);
                    v6 = v6 + 151;
                    MEM[800] = 1;
                    v83 = v123 = 2;
                }
            }
            if (v83 < v4) {
                if ((v83 != 2) | !MEM[0x320]) {
                    if (v83 + 1 - v4) {
                        if (!(msg.data[v6 + 77] >> 248)) {
                            MEM[896] = msg.data[v6 + 78] >> 96;
                        }
                        v124 = MEM[896];
                    } else {
                        v124 = v125 = MEM[896];
                    }
                    if (v110 <= v111) {
                    }
                    v126 = 0x1000276a4;
                    if (v110 >= v111) {
                        MEM[0] = MEM[0];
                        v126 = v127 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                    v128 = v98.swap(address(v124), v110 < v111, v2, v126, 160, 64, address(v0), address(v0)).gas(msg.gas);
                    if (!v128) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        v129 = RETURNDATASIZE();
                        revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                    } else {
                        if (1 == v110 < v111) {
                            v2 = v130 = 0 - MEM[32];
                        } else {
                            v2 = v131 = 0 - MEM[0];
                        }
                        if (msg.data[v6 + 64] >> 160) {
                            require(v2 >= msg.data[v6 + 64] >> 160);
                        }
                    }
                }
            }
            if ((v83 != 2) | !MEM[0x320]) {
                v6 = v6 + 77;
            }
            v108 = v132 = 1;
        } else if (2 == v85) {
            v0 = v133 = msg.data[v6 + 21] >> 96;
            if (v86 & 0x1) {
            }
            v108 = v134 = 1;
            if (v98 > v133) {
                v135 = v133 == v0;
                v136 = msg.data[v6 + 47] >> 96;
                v137 = msg.data[v6 + 44] >> 232;
                v138 = msg.data[v6 + 41] >> 232;
            } else {
                v135 = v139 = v98 == v0;
                v136 = v140 = msg.data[v6 + 47] >> 96;
                v137 = v141 = msg.data[v6 + 44] >> 232;
                v138 = v142 = msg.data[v6 + 41] >> 232;
            }
            v143 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, 99, bytes20(v0 << 96), bytes20(v0 << 96), v138, v137, bytes20(v136 << 96), v2, uint248(MEM[1190]) | 0x100000000000000000000000000000000000000000000000000000000000000 & v135 << 248).gas(msg.gas);
            if (!v143) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                v144 = RETURNDATASIZE();
                revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
            } else {
                v2 = v145 = MEM[64];
                v6 = v6 + 80;
            }
        } else if (3 == v85) {
            v146 = v147 = 1;
            v148 = v149 = v6 + 74;
            v4 = v150 = v83 + v147;
            while (v4 < v4) {
                if (msg.data[v148] >> 248 == 3) {
                }
                if (msg.data[v148] >> 248 == 3) {
                    v146 = v146 + 1;
                    v148 = v148 + 74;
                }
                v4 += 1;
            }
            if (1 == v146 > 1) {
                v108 = v151 = 1;
                MEM[768] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[772] = 32;
                MEM[804] = v146 * 96 + 68;
                MEM[836] = 0x7b4e1e6700000000000000000000000000000000000000000000000000000000;
                MEM[840] = v146;
                MEM[872] = v2;
                v152 = v153 = 0;
                v154 = v155 = 904;
                while (v152 < v146) {
                    MEM[v154] = msg.data[v6 + 1] >> 96;
                    MEM[v154 + 32] = msg.data[v6 + 21] >> 96;
                    MEM[v154 + 64] = msg.data[v6 + 41] >> 96;
                    v154 = v154 + 96;
                    v6 = v6 + 74;
                    v152 = v152 + 1;
                }
                MEM[0] = MEM[0];
                v156 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[768:768 + v1dbc0x1ac5_0x2V0x8d4V0xcf * 96 + 136], MEM[0:96]).gas(msg.gas);
                if (!v156) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v157 = RETURNDATASIZE();
                    revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                } else {
                    v2 = v158 = MEM[64];
                    v0 = v159 = msg.data[v6 + (v146 - 1) * 74 + 41] >> 96;
                    v6 += v146 * 74;
                    v83 = v83 + v146 - 1;
                }
            } else {
                v108 = v160 = 1;
                v0 = v161 = msg.data[v6 + 41] >> 96;
                MEM[0] = MEM[0];
                v162 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, 164, 0x6aeb34df, address(v98), address(msg.data[v6 + 21] >> 96), address(v161), v2, msg.data[v6 + 61] >> 160).gas(msg.gas);
                if (!v162) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    v163 = RETURNDATASIZE();
                    revert(v54, v54, v54, v54, v54, v54, v54, v54, v54, v2, bytes20(msg.data[v6 + 130]));
                } else {
                    v2 = v164 = MEM[64];
                    v6 = v6 + 74;
                }
            }
        } else if (4 == v85) {
            v108 = v165 = 1;
            v0 = v166 = msg.data[v6 + 53] >> 96;
            v2 = v167 = 0x3ff8(msg.data[v6 + v165], msg.data[v6 + 33] >> 96, v166, v2, msg.data[v6 + 73] >> 160);
            v6 = v6 + 86;
        } else if (5 == v85) {
            v108 = v168 = 1;
            v0 = v169 = msg.data[v6 + 41] >> 96;
            v2 = v170 = 0x4125(v98, msg.data[v6 + 21] >> 96, v169, msg.data[v6 + 61] >> 248, uint8(msg.data[v6 + 61] >> 240), v2, msg.data[v6 + 63] >> 160, v86 >> 2 & v168, v86 >> 3 & v168);
            v6 = v6 + 76;
        } else if (6 == v85) {
            v108 = v171 = 1;
            v0 = v172 = msg.data[v6 + 41] >> 96;
            v2 = v173 = 0x426c(v98, msg.data[v6 + 21] >> 96, v172, msg.data[v6 + 61] >> 248, uint8(msg.data[v6 + 61] >> 240), v2, msg.data[v6 + 63] >> 160, v86 >> 2 & v171);
            v6 = v6 + 76;
        } else if (7 == v85) {
            v2 = v174 = 0x43dc(v98, msg.data[v6 + 21] >> 96, v2, msg.data[v6 + 61] >> 160, v86 & 0x1);
            v108 = v175 = 1;
            v0 = v176 = msg.data[v6 + 41] >> 96;
            v6 = v6 + 74;
        } else if (8 == v85) {
            v108 = v177 = 1;
            v2 = 0x4a09(v98, v2, v86 & v177);
            v6 = v6 + 22;
        } else if (9 == v85) {
            v0 = v178 = msg.data[v6 + 21] >> 96;
            if (!(msg.data[v6 + 73] >> 248 & 0x1)) {
            }
            v108 = v179 = 1;
            v2 = v180 = 0x4f8a(v98, v178, msg.data[v6 + 41], msg.data[v6 + 73] >> 248 & 0x1, v2, this);
            v6 = v6 + 87;
        } else {
            require(10 == v85);
            v0 = v181 = msg.data[v6 + 21] >> 96;
            if (!(msg.data[v6 + 73] >> 248 & 0x1)) {
            }
            v108 = v182 = 1;
            v2 = v183 = 0x4fe0(v98, v181, msg.data[v6 + 41], msg.data[v6 + 73] >> 248 & 0x1, v2, this);
            v6 = v6 + 87;
        }
        v83 = v83 + v108;
    }
    MEM[0] = MEM[0];
    if ((v1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) & !v0) {
        if (this.balance) {
            v184 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(this.balance).gas(msg.gas);
            require(v184);
        }
    }
    0x46f7(v1, v3);
    v185 = 0x4d4c(v1, this);
    tstor_2000 = v185;
    if (v185) {
        0x48ba(v1, _rescueETH, v185);
    }
}

function dexCallback(address token_, uint256 amount_) public payable { 
    require(!(msg.sender - _dexCallback));
    require(!(token_ - tstor_1001));
    v0 = token_.transfer(0x52aa899454998be5b000ad077a46bbe360f4e497, amount_).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (RETURNDATASIZE()) {
        require(MEM[0]);
    }
    _dexCallback = 0;
    tstor_1001 = 0;
}

function 0x8b8ddc05(uint256 varg0) public payable { 
    require(!(msg.sender - _rescueETH));
    require(varg0 <= 50);
    v0 = v1 = 0;
    while (v0 < varg0) {
        v2 = address(msg.data[36 + (v0 << 6)]).approve(address(msg.data[68 + (v0 << 6)]), uint256.max).gas(msg.gas);
        v0 = v0 + 1;
    }
    return 1;
}

function 0x7b4e1e67(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(!(msg.sender - 0xba1333333333a1ba1108e8412f11850a5c319ba9));
    require(!(!varg0 | (varg0 > 10)));
    v0 = v1 = 0;
    v2 = v3 = 0;
    v4 = v5 = 68;
    v6 = v7 = 0;
    while (v6 < varg0) {
        v0 = v8 = address(msg.data[v4 + 64]);
        MEM[0] = MEM[0];
        v9 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.swap(0, address(msg.data[v4]), address(msg.data[v4 + 32]), v8, v2, 0, 224, 0).gas(msg.gas);
        require(v9, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v2 = v10 = MEM[64];
        v4 = v4 + 96;
        v6 = v6 + 1;
    }
    0x4795(varg2, varg1);
    MEM[0] = MEM[0];
    v11 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.settle(varg2, varg1).gas(msg.gas);
    require(v11);
    MEM[0] = MEM[0];
    v12 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v0, this, v2).gas(msg.gas);
    require(v12);
    return v2;
}

function 0x6aeb34df(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(!(msg.sender - 0xba1333333333a1ba1108e8412f11850a5c319ba9));
    MEM[0] = MEM[0];
    v0 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.swap(0, varg0, varg1, varg2, varg3, varg4, 224, 0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    0x4795(varg1, MEM[32]);
    MEM[0] = MEM[0];
    v1 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.settle(varg1, MEM[32]).gas(msg.gas);
    require(v1);
    MEM[0] = MEM[0];
    v2 = 0x000000000000000000000000ba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(varg2, this, MEM[64]).gas(msg.gas);
    require(v2);
    return MEM[64];
}

function unlockCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15, uint256 varg16) public payable { 
    require(!(msg.sender - 0x4444c5dc75cb358380d2e3de08a90));
    v0 = v1 = varg2 >> 192 | 0xffffffffffffffffffffffff0000000000000000 & varg1 << 64;
    v0 = v2 = varg1 >> 96;
    if (0x1 & varg7 >> 248) {
    }
    v3 = 0x4444c5dc75cb358380d2e3de08a90.sync(v0).gas(msg.gas);
    require(v3);
    v4 = v5 = 0x1000276a4;
    if (!(0x1 & varg7 >> 248)) {
        MEM[0] = 0xa584119400000000000000000000000000000000000000000000000000000000;
        v4 = v6 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v7 = 0x4444c5dc75cb358380d2e3de08a90.swap(v2, v1, varg3 >> 232, varg4 >> 232, varg5 >> 96, 0x1 & varg7 >> 248, 0 - varg6, v4, 288, 0).gas(msg.gas);
    require(v7, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v8 = v9 = MEM[0] >> 128;
    v8 = v10 = int128(MEM[0]);
    if (0x1 & varg7 >> 248) {
    }
    if (varg0 > 99) {
        if (!(varg8 >> 248)) {
            v11 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, varg9 >> 96, v8).gas(msg.gas);
            require(v11);
            v12 = v13, v12 = v14 = 0x49e8(varg9 >> 96);
            if (varg10 >> 248 & 0x1) {
            }
            v15 = v8 * v12 * 997 / (997 * v8 + 1000 * v12);
            v16 = (varg9 >> 96).swap(v15 * !(varg10 >> 248 & 0x1), v15 * (varg10 >> 248 & 0x1), this, 128, 0).gas(msg.gas);
            require(v16, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            0x463f(v0, 0 - v8);
            return 32, 32, v15;
        } else if (1 == varg8 >> 248) {
            _uniswapV3SwapCallback = 1;
            v17 = v18 = 0x1000276a4;
            if (!(varg14 >> 248 & 0x1)) {
                MEM[0] = MEM[0];
                v17 = v19 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            v20 = (varg9 >> 96).swap(this, varg14 >> 248 & 0x1, v8, v17, 160, 64, varg10 >> 96, varg12 >> 96).gas(msg.gas);
            if (!v20) {
                _uniswapV3SwapCallback = 0;
                revert(0, RETURNDATASIZE());
            } else {
                _uniswapV3SwapCallback = 0;
                if (1 == varg14 >> 248 & 0x1) {
                    v21 = v22 = 0 - MEM[32];
                } else {
                    v21 = v23 = 0 - MEM[0];
                }
                if (!address(v0)) {
                    if (this.balance < 0 - v8) {
                        v24 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0 - v8 - this.balance, 0 - v8 - this.balance, 0 - v8 - this.balance).gas(msg.gas);
                        require(v24);
                    }
                    v25 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(0 - v8).gas(msg.gas);
                    require(v25);
                } else {
                    0x48ba(address(v0), 0x4444c5dc75cb358380d2e3de08a90, 0 - v8);
                    v26 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                    require(v26);
                }
                return 32, 32, v21;
            }
        } else if (4 == varg8 >> 248) {
            v27 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, this, v8).gas(msg.gas);
            require(v27);
            0x4525(address(varg11 >> 96));
            MEM[0] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000;
            v28 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.swap(224, this, 0, this, 0, 0, uint256.max, varg9, 0, address(varg11 >> 96), address(varg13 >> 96), v8, 192, 0).gas(msg.gas);
            require(v28, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            0x463f(v0, 0 - v8);
            return 32, 32, MEM[0];
        } else if (5 == varg8 >> 248) {
            v29 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, this, v8).gas(msg.gas);
            require(v29);
            v30 = 0x408d(varg9 >> 96, varg10 >> 96, varg12 >> 96, varg14 >> 248, varg15 >> 248, v8, varg16 >> 248 & 0x8);
            0x463f(v0, 0 - v8);
            return 32, 32, v30;
        } else if (6 == varg8 >> 248) {
            v31 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, this, v8).gas(msg.gas);
            require(v31);
            v32 = 0x41f6(varg9 >> 96, varg10 >> 96, varg12 >> 96, varg14 >> 248, varg15 >> 248, v8);
            0x463f(v0, 0 - v8);
            return 32, 32, v32;
        } else {
            require(7 == varg8 >> 248);
            v33 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, this, v8).gas(msg.gas);
            require(v33);
            _dexCallback = address(varg9 >> 96);
            tstor_1001 = address(varg10 >> 96);
            v34 = address(varg9 >> 96).swapInWithCallback(varg14 >> 248 & 0x1, v8, 0, this).gas(msg.gas);
            if (!v34) {
                _dexCallback = 0;
                tstor_1001 = 0;
                revert(0, RETURNDATASIZE());
            } else {
                _dexCallback = 0;
                tstor_1001 = 0;
                0x463f(v0, 0 - v8);
                return 32, 32, MEM[0];
            }
        }
    } else {
        0x463f(v0, 0 - v8);
        v35 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, this, v8).gas(msg.gas);
        require(v35);
        return 32, 32, v8;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, bytes20 varg6, uint256 varg7) public payable { 
    if (0x55f86501 == function_selector >> 224) {
        exec(bytes);
    } else if (0xb743ed48 == function_selector >> 224) {
        0xb743ed48();
    } else if (0x10d1e85c == function_selector >> 224) {
        uniswapV2Call(address,uint256,uint256,bytes);
    } else if (0x84800812 == function_selector >> 224) {
        pancakeCall(address,uint256,uint256,bytes);
    } else if (0x91dd7346 == function_selector >> 224) {
        unlockCallback(bytes);
    } else if (0xe9cbafb0 == function_selector >> 224) {
        uniswapV3FlashCallback(uint256,uint256,bytes);
    } else if (0xa1d48336 == function_selector >> 224) {
        pancakeV3FlashCallback(uint256,uint256,bytes);
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else if (0x23a69e75 == function_selector >> 224) {
        pancakeV3SwapCallback(int256,int256,bytes);
    } else if (0x6aeb34df == function_selector >> 224) {
        0x6aeb34df();
    } else if (0x7b4e1e67 == function_selector >> 224) {
        0x7b4e1e67();
    } else if (0x8b8ddc05 == function_selector >> 224) {
        0x8b8ddc05();
    } else if (0x9410ae88 == function_selector >> 224) {
        dexCallback(address,uint256);
    } else if (0xf04f2707 == function_selector >> 224) {
        receiveFlashLoan(address[],uint256[],uint256[],bytes);
    } else if (0x57376198 == function_selector >> 224) {
        rescueTokens(address,uint256);
    } else if (0x20800a00 == function_selector >> 224) {
        rescueETH();
    } else {
        require(!(function_selector >> 224));
        if (msg.data.length) {
            require(!(msg.sender - 0x14aa86c5d3c41765bb24e11bd701));
            v0 = v1 = varg1 >> 96;
            v0 = v2 = varg2 >> 96;
            v3 = v4 = 0x400065a8177fae27;
            if (varg4 >> 248 & 0x1) {
                v3 = v5 = 0xffff9a5889f795069a41a8a3;
            }
            v6 = 0x80000000 & varg4 >> 217 | (0xffffffffffffffffffffffffffffffff00000000 & varg5 << 32 | v3 << 160);
            if (!(0x1 & varg7 >> 248)) {
                v7 = v8 = 0x14aa86c5d3c41765bb24e11bd701.call(0, v1, v2, varg3, v6).gas(msg.gas);
            } else {
                v7 = v9 = 0x14aa86c5d3c41765bb24e11bd701.forward(0x5555ff9ff2757500bf4ee020dcfd0210cffa41be, v1, v2, varg3, v6).gas(msg.gas);
            }
            require(v7, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v10 = v11 = MEM[0] >> 128;
            v10 = v12 = int128(MEM[0]);
            v13 = v14 = 0 - v12;
            if (varg4 >> 248 & 0x1) {
                v13 = v15 = 0 - v11;
            }
            if (!(varg4 >> 248 & 0x1)) {
            }
            if (1 == !v0) {
                v16 = 0x14aa86c5d3c41765bb24e11bd701.call().value(v10).gas(msg.gas);
                require(v16);
            } else {
                v17 = 0x14aa86c5d3c41765bb24e11bd701.startPayments(v0).gas(msg.gas);
                require(v17);
                0x4827(v0, v10);
                v18 = 0x14aa86c5d3c41765bb24e11bd701.completePayments(v0).gas(msg.gas);
                require(v18);
            }
            v19 = 0x14aa86c5d3c41765bb24e11bd701.withdraw(varg6, v0, v13).gas(msg.gas);
            require(v19);
            return v13;
        } else {
            exit;
        }
    }
}
