// Decompiled by library.dedaub.com
// 2024.09.18 12:18 UTC




function callFunction(address varg0) public payable { 
    CALLDATACOPY(288, 164, varg0);
    v0 = 288 + varg0;
    v0 = v1 = 288;
    while (1) {
        v2 = MEM[v0];
        if (bool(0x8000 & v2 >> 240)) {
            // Unknown jump to Block 0x17720x15aa. Refer to 3-address code (TAC);
        }
        if (uint24(v2 >> 176)) {
            if (uint24.max != uint24(v2 >> 176)) {
                v3 = (0xfff & uint24(v2 >> 176)) + v0;
                v4 = uint8(uint24(v2 >> 176) >> 12);
                if (v4) {
                    v5 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
                    if (0x800000 & uint24(v2 >> 176)) {
                        v5 = v6 = MEM[0] - (v5 - 32);
                    }
                    while (!bool(v4)) {
                        if (32 > v4) {
                            MEM[v3] = MEM[v3] & ~((1 << (v4 << 3)) - 1) | MEM[v5] & (1 << (v4 << 3)) - 1;
                        } else {
                            MEM[v3] = MEM[v5];
                            v3 += 32;
                            v5 += 32;
                            v4 = v4 - 32;
                        }
                    }
                    // Unknown jump to Block 0x17300x15aa. Refer to 3-address code (TAC);
                }
            }
        }
        if (!uint16(v2 >> 240)) {
            v0 = v7 = uint16.max + v2;
        } else if (32764 == uint16(v2 >> 240)) {
            v8 = address(v2).call(MEM[v15aa0x1679 + 32:v15aa0x1679 + 32 + uint16(v15aa0x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v8) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!False) {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            v9 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v2 >> 200)) {
                                v9 = v10 = MEM[0] - v9;
                                v11 = uint8(uint24(v2 >> 200) >> 12) + v10 >> 5 << 5;
                                if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                    v11 = v12 = 32 + v11;
                                    MEM[v12] = 0;
                                }
                                MEM[0] = v11;
                            }
                            RETURNDATACOPY(32 + v9, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                }
                v0 = v13 = 32 + uint16(v2 >> 160);
            }
        } else if (32766 == uint16(v2 >> 240)) {
            v14 = address(v2).staticcall(MEM[v15aa0x1679 + 32:v15aa0x1679 + 32 + uint16(v15aa0x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v14) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v15 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v15 = v16 = MEM[0] - v15;
                            v17 = uint8(uint24(v2 >> 200) >> 12) + v16 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v17 = v18 = 32 + v17;
                                MEM[v18] = 0;
                            }
                            MEM[0] = v17;
                        }
                        RETURNDATACOPY(32 + v15, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
                v0 = v19 = 32 + uint16(v2 >> 160);
            }
        } else if (32763 == uint16(v2 >> 240)) {
            v0 = v20 = 12 + uint16(v2 >> 160);
            v0 += 12;
            while (1) {
                v21 = MEM[v0] >> 248;
                if (!v21) {
                    break;
                }
                if (v21 > 16) {
                    if (v21 >= 32) {
                        if (v21 >= 48) {
                            if (v21 >= 48) {
                                if (v21 >= 80) {
                                    if (v21 < 96) {
                                        if (80 == v21) {
                                            v22 = MEM[1 + v0] >> 248;
                                            v23 = MEM[0] - (v22 << 5);
                                            MEM[0] = v23;
                                            v0 = v24 = 0;
                                            do {
                                                v23 += 32;
                                                v0 += MEM[v23];
                                                v22 = v22 - 1;
                                            } while (!bool(v22));
                                            v25 = v26 = 2;
                                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                                        } else if (81 == v21) {
                                            v27 = MEM[1 + v0] >> 248;
                                            v28 = MEM[0];
                                            v0 = v29 = 0;
                                            do {
                                                v0 += MEM[v28];
                                                v28 = v28 - 32;
                                                v27 = v27 - 1;
                                            } while (!bool(v27));
                                            v25 = v30 = 2;
                                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else if (64 == v21) {
                                    v0 = v31 = 1;
                                    v25 = v32 = 1;
                                } else if (65 == v21) {
                                    require(v0 != v0, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                    v0 = v33 = 1;
                                    v25 = v34 = 1;
                                } else if (66 == v21) {
                                    require(v0 < v0, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v35 = 1;
                                    v25 = v36 = 1;
                                } else if (67 == v21) {
                                    require(v0 >= v0, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                    v0 = v37 = 1;
                                    v25 = v38 = 1;
                                } else if (68 == v21) {
                                    require(v0 > v0, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v39 = 1;
                                    v25 = v40 = 1;
                                } else if (69 == v21) {
                                    require(v0 <= v0, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                    v0 = v41 = 1;
                                    v25 = v42 = 1;
                                } else if (70 == v21) {
                                    require(!v0, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v43 = 1;
                                    v25 = v44 = 1;
                                } else if (71 == v21) {
                                    require(v0, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                    v0 = v45 = 1;
                                    v25 = v46 = 1;
                                } else if (72 == v21) {
                                    if (v0 != v0) {
                                        return 0;
                                    } else {
                                        v0 = v47 = 1;
                                        v25 = v48 = 1;
                                    }
                                } else if (73 == v21) {
                                    if (v0 == v0) {
                                        return 0;
                                    } else {
                                        v0 = v49 = 1;
                                        v25 = v50 = 1;
                                    }
                                } else if (74 == v21) {
                                    if (v0 >= v0) {
                                        return 0;
                                    } else {
                                        v0 = v51 = 1;
                                        v25 = v52 = 1;
                                    }
                                } else if (75 == v21) {
                                    if (v0 < v0) {
                                        return 0;
                                    } else {
                                        v0 = v53 = 1;
                                        v25 = v54 = 1;
                                    }
                                } else if (76 == v21) {
                                    if (v0 <= v0) {
                                        return 0;
                                    } else {
                                        v0 = v55 = 1;
                                        v25 = v56 = 1;
                                    }
                                } else if (77 == v21) {
                                    if (v0 > v0) {
                                        return 0;
                                    } else {
                                        v0 = v57 = 1;
                                        v25 = v58 = 1;
                                    }
                                } else if (78 == v21) {
                                    if (v0) {
                                        return 0;
                                    } else {
                                        v0 = v59 = 1;
                                        v25 = v60 = 1;
                                    }
                                } else if (79 == v21) {
                                    if (!v0) {
                                        return 0;
                                    } else {
                                        v0 = v61 = 1;
                                        v25 = v62 = 1;
                                    }
                                }
                            } else if (49 == v21) {
                                v0 = uint8(v0);
                                v25 = v63 = 1;
                                // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                            } else if (50 == v21) {
                                v0 = uint16(v0);
                                v25 = v64 = 1;
                                // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                            } else if (51 == v21) {
                                v0 = uint64(v0);
                                v25 = v65 = 1;
                                // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                            } else if (52 == v21) {
                                v0 = uint112(v0);
                                v25 = v66 = 1;
                                // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                            } else if (53 == v21) {
                                v0 = uint128(v0);
                                v25 = v67 = 1;
                                // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                            }
                        } else if (32 == v21) {
                            v0 = v68 = MEM[1 + v0];
                            v25 = v69 = 33;
                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                        } else if (33 == v21) {
                            v0 = v70 = uint8(MEM[1 + v0]);
                            v25 = v71 = 2;
                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                        } else if (34 == v21) {
                            v0 = v72 = uint16(MEM[1 + v0]);
                            v25 = v73 = 3;
                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                        } else if (35 == v21) {
                            v0 = v74 = uint64(MEM[1 + v0]);
                            v25 = v75 = 9;
                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                        } else if (36 == v21) {
                            v0 = v76 = uint112(MEM[1 + v0]);
                            v25 = v77 = 7;
                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                        } else if (37 == v21) {
                            v0 = v78 = uint128(MEM[1 + v0]);
                            v25 = v79 = 9;
                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                        } else if (38 == v21) {
                            v0 = v80 = address(MEM[1 + v0]);
                            v25 = v81 = 13;
                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                        } else if (42 == v21) {
                            v0 = v0 << 256;
                            v25 = v82 = 1;
                            // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                        }
                    } else if (17 == v21) {
                        v0 += v0;
                        v25 = v83 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (18 == v21) {
                        v0 = v0 - v0;
                        v25 = v84 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (19 == v21) {
                        v0 *= v0;
                        v25 = v85 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (20 == v21) {
                        v0 = v0 / v0;
                        v25 = v86 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (21 == v21) {
                        v0 = v0 / v0;
                        v25 = v87 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (22 == v21) {
                        v0 = v0 & v0;
                        v25 = v88 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (23 == v21) {
                        v0 = v0 | v0;
                        v25 = v89 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (24 == v21) {
                        v0 = v0 ^ v0;
                        v25 = v90 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (25 == v21) {
                        v0 = ~v0;
                        v25 = v91 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (26 == v21) {
                        v0 = v0 << (MEM[1 + v0] >> 248);
                        v25 = v92 = 2;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (27 == v21) {
                        v0 = v0 >> (MEM[1 + v0] >> 248);
                        v25 = v93 = 2;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (28 == v21) {
                        v0 = v0 + 1;
                        v25 = v94 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (29 == v21) {
                        v0 = v0 - 1;
                        v25 = v95 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (30 == v21) {
                        v0 = v0 - v0;
                        v25 = v96 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    } else if (31 == v21) {
                        v0 = v0 / v0;
                        v25 = v97 = 1;
                        // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                    }
                } else if (1 == v21) {
                    v0 = v98 = MEM[32];
                    v25 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (2 == v21) {
                    v0 = v99 = MEM[64];
                    v25 = v100 = 1;
                } else if (3 == v21) {
                    v0 = v101 = MEM[96];
                    v25 = v102 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (4 == v21) {
                    v0 = v103 = MEM[128];
                    v25 = v104 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (5 == v21) {
                    v0 = v105 = MEM[160];
                    v25 = v106 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (6 == v21) {
                    v0 = v107 = MEM[192];
                    v25 = v108 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (7 == v21) {
                    v0 = v109 = MEM[224];
                    v25 = v110 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (8 == v21) {
                    v0 = v111 = MEM[MEM[0]];
                    MEM[0] = MEM[0] - 32;
                    v25 = v112 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (10 == v21) {
                    v0 = v113 = this.balance;
                    v25 = v114 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (11 == v21) {
                    v0 = v115 = block.coinbase;
                    v25 = v116 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (12 == v21) {
                    v0 = v117 = block.timestamp;
                    v25 = v118 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (13 == v21) {
                    v0 = v119 = block.number;
                    v25 = v120 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (14 == v21) {
                    v0 = v121 = BASEFEE();
                    v25 = v122 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                } else if (15 == v21) {
                    v0 = v123 = msg.gas;
                    v25 = v124 = 1;
                    // Unknown jump to Block 0x23220x15aa. Refer to 3-address code (TAC);
                }
                v0 = v0 + v25;
            }
            MEM[32 + MEM[0]] = v0;
            MEM[0] += 32;
            // Unknown jump to Block 0x2ad20x15aa. Refer to 3-address code (TAC);
        } else if (int16.max == uint16(v2 >> 240)) {
            v125 = address(v2).delegatecall(MEM[v15aa0x1679 + 32:v15aa0x1679 + 32 + uint16(v15aa0x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v125) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v126 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v126 = v127 = MEM[0] - v126;
                            v128 = uint8(uint24(v2 >> 200) >> 12) + v127 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v128 = v129 = 32 + v128;
                                MEM[v129] = 0;
                            }
                            MEM[0] = v128;
                        }
                        RETURNDATACOPY(32 + v126, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
                v0 = v130 = 32 + uint16(v2 >> 160);
            }
        } else if (32765 == uint16(v2 >> 240)) {
            v131 = uint16(v2 >> 160);
            v132 = MEM[12 + v0] >> 224;
            if (0xa85f1d24 == v132) {
                v131 = 12 + v0;
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v133 = MEM[4 + v131].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v133) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v134 = 0x70a08231;
                    if (v134) {
                        v134 = v135 = 0x70a08230;
                    }
                    require(MEM[36 + v131] <= v134, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    if (MEM[68 + v131]) {
                        v136 = block.coinbase.call().value(MEM[68 + v131]).gas(msg.gas);
                    }
                }
            } else if (0x4df86adf == v132) {
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v137 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v137) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v138 = 0x70a08231;
                    if (v138) {
                        v138 = v139 = 0x70a08230;
                    }
                    require(MEM[48 + v0] <= v138, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    MEM[MSIZE()] = 0xa9059cbb;
                    MEM[32 + MSIZE()] = MEM[112 + v0];
                    MEM[64 + MSIZE()] = v138;
                    v140 = MEM[16 + v0].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                    if (MEM[80 + v0]) {
                        v141 = block.coinbase.call().value(MEM[80 + v0]).gas(msg.gas);
                    }
                }
            } else if (0x5ec9cad == v132) {
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v142 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v142) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v143 = 0x70a08231;
                    if (v143) {
                        v143 = v144 = 0x70a08230;
                    }
                    require(MEM[16 + v0] <= v143, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    MEM[MSIZE()] = 0x2e1a7d4d;
                    MEM[32 + MSIZE()] = v143;
                    v145 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                    if (MEM[48 + v0]) {
                        v146 = block.coinbase.call().value(MEM[48 + v0]).gas(msg.gas);
                    }
                    v147 = this.balance;
                    v148 = MEM[80 + v0].call().value(v147).gas(msg.gas);
                }
            } else if (0x9b81788b == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v149 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v149) {
                    v150 = v151 = 0;
                    v152 = v153 = 0;
                } else {
                    v150 = MEM[32 + MSIZE()];
                    v152 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v150) / (9970 * (v152 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x8bceaa18 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v154 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v154) {
                    v155 = v156 = 0;
                    v157 = v158 = 0;
                } else {
                    v155 = MEM[32 + MSIZE()];
                    v157 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v157) / (9970 * (v155 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x84f16ca0 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v159 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v159) {
                    v160 = v161 = 0;
                    v162 = v163 = 0;
                } else {
                    v160 = MEM[32 + MSIZE()];
                    v162 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v160 / (10000 * v162 + 9970 * MEM[48 + v0]);
                MEM[0] += 32;
            } else if (0x95b66162 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v164 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v164) {
                    v165 = v166 = 0;
                    v167 = v168 = 0;
                } else {
                    v165 = MEM[32 + MSIZE()];
                    v167 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v167 / (10000 * v165 + 9970 * MEM[48 + v0]);
                MEM[0] += 32;
            } else if (0x9a23842e == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v169 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v169) {
                    v170 = v171 = 0;
                    v172 = v173 = 0;
                } else {
                    v170 = MEM[32 + MSIZE()];
                    v172 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v170) / (MEM[80 + v0] * (v172 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x4fae2f23 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v174 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v174) {
                    v175 = v176 = 0;
                    v177 = v178 = 0;
                } else {
                    v175 = MEM[32 + MSIZE()];
                    v177 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v177) / (MEM[80 + v0] * (v175 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0xa9f2812f == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v179 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v179) {
                    v180 = v181 = 0;
                    v182 = v183 = 0;
                } else {
                    v180 = MEM[32 + MSIZE()];
                    v182 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v180 / (10000 * v182 + MEM[80 + v0] * MEM[48 + v0]);
                MEM[0] += 32;
            } else {
                require(0xf93a1716 == v132);
                MEM[MSIZE()] = 0x902f1ac;
                v184 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v184) {
                    v185 = v186 = 0;
                    v187 = v188 = 0;
                } else {
                    v185 = MEM[32 + MSIZE()];
                    v187 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v187 / (10000 * v185 + MEM[80 + v0] * MEM[48 + v0]);
                MEM[0] += 32;
            }
            v0 = 12 + v131;
            // Unknown jump to Block 0x2ad20x15aa. Refer to 3-address code (TAC);
        } else if (32762 == uint16(v2 >> 240)) {
            v189 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
            if (0x800000 & uint24(v2 >> 176)) {
                v189 = v190 = MEM[0] - (v189 - 32);
            }
            v191 = address(v2).call(MEM[v15aa0x1679 + 32:v15aa0x1679 + 32 + uint16(v15aa0x1680 >> 160)], MEM[0:0]).value(MEM[v189]).gas(msg.gas);
            if (!v191) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!bool(MEM[v189])) {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            v192 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v2 >> 200)) {
                                v192 = v193 = MEM[0] - v192;
                                v194 = uint8(uint24(v2 >> 200) >> 12) + v193 >> 5 << 5;
                                if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                    v194 = v195 = 32 + v194;
                                    MEM[v195] = 0;
                                }
                                MEM[0] = v194;
                            }
                            RETURNDATACOPY(32 + v192, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                }
                v0 = v196 = 32 + uint16(v2 >> 160);
            }
        }
        v0 += v0;
        if (v0 >= v0) {
            return MEM[MEM[0]:MEM[0] + 32];
        }
        v197 = address(v2).call(MEM[v15aa0x1679 + 32:v15aa0x1679 + 32 + uint16(v15aa0x1680 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v2 >> 176).gas(msg.gas);
        if (!v197) {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!bool(0x7fffffffffffffffffff & v2 >> 176)) {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v198 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v198 = v199 = MEM[0] - v198;
                            v200 = uint8(uint24(v2 >> 200) >> 12) + v199 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v200 = v201 = 32 + v200;
                                MEM[v201] = 0;
                            }
                            MEM[0] = v200;
                        }
                        RETURNDATACOPY(32 + v198, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
            }
            v0 = v202 = 32 + uint16(v2 >> 160);
        }
    }
}

function 0x28472417(uint256 varg0) public payable { 
    CALLDATACOPY(288, 68, varg0);
    v0 = 288 + varg0;
    v0 = v1 = 288;
    while (1) {
        v2 = MEM[v0];
        if (bool(0x8000 & v2 >> 240)) {
            // Unknown jump to Block 0x17720x15b2. Refer to 3-address code (TAC);
        }
        if (uint24(v2 >> 176)) {
            if (uint24.max != uint24(v2 >> 176)) {
                v3 = (0xfff & uint24(v2 >> 176)) + v0;
                v4 = uint8(uint24(v2 >> 176) >> 12);
                if (v4) {
                    v5 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
                    if (0x800000 & uint24(v2 >> 176)) {
                        v5 = v6 = MEM[0] - (v5 - 32);
                    }
                    while (!bool(v4)) {
                        if (32 > v4) {
                            MEM[v3] = MEM[v3] & ~((1 << (v4 << 3)) - 1) | MEM[v5] & (1 << (v4 << 3)) - 1;
                        } else {
                            MEM[v3] = MEM[v5];
                            v3 += 32;
                            v5 += 32;
                            v4 = v4 - 32;
                        }
                    }
                    // Unknown jump to Block 0x17300x15b2. Refer to 3-address code (TAC);
                }
            }
        }
        if (!uint16(v2 >> 240)) {
            v0 = v7 = uint16.max + v2;
        } else if (32764 == uint16(v2 >> 240)) {
            v8 = address(v2).call(MEM[v15b20x1679 + 32:v15b20x1679 + 32 + uint16(v15b20x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v8) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!False) {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            v9 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v2 >> 200)) {
                                v9 = v10 = MEM[0] - v9;
                                v11 = uint8(uint24(v2 >> 200) >> 12) + v10 >> 5 << 5;
                                if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                    v11 = v12 = 32 + v11;
                                    MEM[v12] = 0;
                                }
                                MEM[0] = v11;
                            }
                            RETURNDATACOPY(32 + v9, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                }
                v0 = v13 = 32 + uint16(v2 >> 160);
            }
        } else if (32766 == uint16(v2 >> 240)) {
            v14 = address(v2).staticcall(MEM[v15b20x1679 + 32:v15b20x1679 + 32 + uint16(v15b20x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v14) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v15 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v15 = v16 = MEM[0] - v15;
                            v17 = uint8(uint24(v2 >> 200) >> 12) + v16 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v17 = v18 = 32 + v17;
                                MEM[v18] = 0;
                            }
                            MEM[0] = v17;
                        }
                        RETURNDATACOPY(32 + v15, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
                v0 = v19 = 32 + uint16(v2 >> 160);
            }
        } else if (32763 == uint16(v2 >> 240)) {
            v0 = v20 = 12 + uint16(v2 >> 160);
            v0 += 12;
            while (1) {
                v21 = MEM[v0] >> 248;
                if (!v21) {
                    break;
                }
                if (v21 > 16) {
                    if (v21 >= 32) {
                        if (v21 >= 48) {
                            if (v21 >= 48) {
                                if (v21 >= 80) {
                                    if (v21 < 96) {
                                        if (80 == v21) {
                                            v22 = MEM[1 + v0] >> 248;
                                            v23 = MEM[0] - (v22 << 5);
                                            MEM[0] = v23;
                                            v0 = v24 = 0;
                                            do {
                                                v23 += 32;
                                                v0 += MEM[v23];
                                                v22 = v22 - 1;
                                            } while (!bool(v22));
                                            v25 = v26 = 2;
                                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                                        } else if (81 == v21) {
                                            v27 = MEM[1 + v0] >> 248;
                                            v28 = MEM[0];
                                            v0 = v29 = 0;
                                            do {
                                                v0 += MEM[v28];
                                                v28 = v28 - 32;
                                                v27 = v27 - 1;
                                            } while (!bool(v27));
                                            v25 = v30 = 2;
                                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else if (64 == v21) {
                                    v0 = v31 = 1;
                                    v25 = v32 = 1;
                                } else if (65 == v21) {
                                    require(v0 != v0, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                    v0 = v33 = 1;
                                    v25 = v34 = 1;
                                } else if (66 == v21) {
                                    require(v0 < v0, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v35 = 1;
                                    v25 = v36 = 1;
                                } else if (67 == v21) {
                                    require(v0 >= v0, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                    v0 = v37 = 1;
                                    v25 = v38 = 1;
                                } else if (68 == v21) {
                                    require(v0 > v0, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v39 = 1;
                                    v25 = v40 = 1;
                                } else if (69 == v21) {
                                    require(v0 <= v0, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                    v0 = v41 = 1;
                                    v25 = v42 = 1;
                                } else if (70 == v21) {
                                    require(!v0, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v43 = 1;
                                    v25 = v44 = 1;
                                } else if (71 == v21) {
                                    require(v0, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                    v0 = v45 = 1;
                                    v25 = v46 = 1;
                                } else if (72 == v21) {
                                    if (v0 != v0) {
                                        return 0;
                                    } else {
                                        v0 = v47 = 1;
                                        v25 = v48 = 1;
                                    }
                                } else if (73 == v21) {
                                    if (v0 == v0) {
                                        return 0;
                                    } else {
                                        v0 = v49 = 1;
                                        v25 = v50 = 1;
                                    }
                                } else if (74 == v21) {
                                    if (v0 >= v0) {
                                        return 0;
                                    } else {
                                        v0 = v51 = 1;
                                        v25 = v52 = 1;
                                    }
                                } else if (75 == v21) {
                                    if (v0 < v0) {
                                        return 0;
                                    } else {
                                        v0 = v53 = 1;
                                        v25 = v54 = 1;
                                    }
                                } else if (76 == v21) {
                                    if (v0 <= v0) {
                                        return 0;
                                    } else {
                                        v0 = v55 = 1;
                                        v25 = v56 = 1;
                                    }
                                } else if (77 == v21) {
                                    if (v0 > v0) {
                                        return 0;
                                    } else {
                                        v0 = v57 = 1;
                                        v25 = v58 = 1;
                                    }
                                } else if (78 == v21) {
                                    if (v0) {
                                        return 0;
                                    } else {
                                        v0 = v59 = 1;
                                        v25 = v60 = 1;
                                    }
                                } else if (79 == v21) {
                                    if (!v0) {
                                        return 0;
                                    } else {
                                        v0 = v61 = 1;
                                        v25 = v62 = 1;
                                    }
                                }
                            } else if (49 == v21) {
                                v0 = uint8(v0);
                                v25 = v63 = 1;
                                // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                            } else if (50 == v21) {
                                v0 = uint16(v0);
                                v25 = v64 = 1;
                                // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                            } else if (51 == v21) {
                                v0 = uint64(v0);
                                v25 = v65 = 1;
                                // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                            } else if (52 == v21) {
                                v0 = uint112(v0);
                                v25 = v66 = 1;
                                // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                            } else if (53 == v21) {
                                v0 = uint128(v0);
                                v25 = v67 = 1;
                                // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                            }
                        } else if (32 == v21) {
                            v0 = v68 = MEM[1 + v0];
                            v25 = v69 = 33;
                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                        } else if (33 == v21) {
                            v0 = v70 = uint8(MEM[1 + v0]);
                            v25 = v71 = 2;
                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                        } else if (34 == v21) {
                            v0 = v72 = uint16(MEM[1 + v0]);
                            v25 = v73 = 3;
                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                        } else if (35 == v21) {
                            v0 = v74 = uint64(MEM[1 + v0]);
                            v25 = v75 = 9;
                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                        } else if (36 == v21) {
                            v0 = v76 = uint112(MEM[1 + v0]);
                            v25 = v77 = 7;
                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                        } else if (37 == v21) {
                            v0 = v78 = uint128(MEM[1 + v0]);
                            v25 = v79 = 9;
                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                        } else if (38 == v21) {
                            v0 = v80 = address(MEM[1 + v0]);
                            v25 = v81 = 13;
                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                        } else if (42 == v21) {
                            v0 = v0 << 256;
                            v25 = v82 = 1;
                            // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                        }
                    } else if (17 == v21) {
                        v0 += v0;
                        v25 = v83 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (18 == v21) {
                        v0 = v0 - v0;
                        v25 = v84 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (19 == v21) {
                        v0 *= v0;
                        v25 = v85 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (20 == v21) {
                        v0 = v0 / v0;
                        v25 = v86 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (21 == v21) {
                        v0 = v0 / v0;
                        v25 = v87 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (22 == v21) {
                        v0 = v0 & v0;
                        v25 = v88 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (23 == v21) {
                        v0 = v0 | v0;
                        v25 = v89 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (24 == v21) {
                        v0 = v0 ^ v0;
                        v25 = v90 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (25 == v21) {
                        v0 = ~v0;
                        v25 = v91 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (26 == v21) {
                        v0 = v0 << (MEM[1 + v0] >> 248);
                        v25 = v92 = 2;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (27 == v21) {
                        v0 = v0 >> (MEM[1 + v0] >> 248);
                        v25 = v93 = 2;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (28 == v21) {
                        v0 = v0 + 1;
                        v25 = v94 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (29 == v21) {
                        v0 = v0 - 1;
                        v25 = v95 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (30 == v21) {
                        v0 = v0 - v0;
                        v25 = v96 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    } else if (31 == v21) {
                        v0 = v0 / v0;
                        v25 = v97 = 1;
                        // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                    }
                } else if (1 == v21) {
                    v0 = v98 = MEM[32];
                    v25 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (2 == v21) {
                    v0 = v99 = MEM[64];
                    v25 = v100 = 1;
                } else if (3 == v21) {
                    v0 = v101 = MEM[96];
                    v25 = v102 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (4 == v21) {
                    v0 = v103 = MEM[128];
                    v25 = v104 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (5 == v21) {
                    v0 = v105 = MEM[160];
                    v25 = v106 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (6 == v21) {
                    v0 = v107 = MEM[192];
                    v25 = v108 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (7 == v21) {
                    v0 = v109 = MEM[224];
                    v25 = v110 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (8 == v21) {
                    v0 = v111 = MEM[MEM[0]];
                    MEM[0] = MEM[0] - 32;
                    v25 = v112 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (10 == v21) {
                    v0 = v113 = this.balance;
                    v25 = v114 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (11 == v21) {
                    v0 = v115 = block.coinbase;
                    v25 = v116 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (12 == v21) {
                    v0 = v117 = block.timestamp;
                    v25 = v118 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (13 == v21) {
                    v0 = v119 = block.number;
                    v25 = v120 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (14 == v21) {
                    v0 = v121 = BASEFEE();
                    v25 = v122 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                } else if (15 == v21) {
                    v0 = v123 = msg.gas;
                    v25 = v124 = 1;
                    // Unknown jump to Block 0x23220x15b2. Refer to 3-address code (TAC);
                }
                v0 = v0 + v25;
            }
            MEM[32 + MEM[0]] = v0;
            MEM[0] += 32;
            // Unknown jump to Block 0x2ad20x15b2. Refer to 3-address code (TAC);
        } else if (int16.max == uint16(v2 >> 240)) {
            v125 = address(v2).delegatecall(MEM[v15b20x1679 + 32:v15b20x1679 + 32 + uint16(v15b20x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v125) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v126 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v126 = v127 = MEM[0] - v126;
                            v128 = uint8(uint24(v2 >> 200) >> 12) + v127 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v128 = v129 = 32 + v128;
                                MEM[v129] = 0;
                            }
                            MEM[0] = v128;
                        }
                        RETURNDATACOPY(32 + v126, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
                v0 = v130 = 32 + uint16(v2 >> 160);
            }
        } else if (32765 == uint16(v2 >> 240)) {
            v131 = uint16(v2 >> 160);
            v132 = MEM[12 + v0] >> 224;
            if (0xa85f1d24 == v132) {
                v131 = 12 + v0;
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v133 = MEM[4 + v131].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v133) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v134 = 0x70a08231;
                    if (v134) {
                        v134 = v135 = 0x70a08230;
                    }
                    require(MEM[36 + v131] <= v134, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    if (MEM[68 + v131]) {
                        v136 = block.coinbase.call().value(MEM[68 + v131]).gas(msg.gas);
                    }
                }
            } else if (0x4df86adf == v132) {
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v137 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v137) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v138 = 0x70a08231;
                    if (v138) {
                        v138 = v139 = 0x70a08230;
                    }
                    require(MEM[48 + v0] <= v138, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    MEM[MSIZE()] = 0xa9059cbb;
                    MEM[32 + MSIZE()] = MEM[112 + v0];
                    MEM[64 + MSIZE()] = v138;
                    v140 = MEM[16 + v0].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                    if (MEM[80 + v0]) {
                        v141 = block.coinbase.call().value(MEM[80 + v0]).gas(msg.gas);
                    }
                }
            } else if (0x5ec9cad == v132) {
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v142 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v142) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v143 = 0x70a08231;
                    if (v143) {
                        v143 = v144 = 0x70a08230;
                    }
                    require(MEM[16 + v0] <= v143, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    MEM[MSIZE()] = 0x2e1a7d4d;
                    MEM[32 + MSIZE()] = v143;
                    v145 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                    if (MEM[48 + v0]) {
                        v146 = block.coinbase.call().value(MEM[48 + v0]).gas(msg.gas);
                    }
                    v147 = this.balance;
                    v148 = MEM[80 + v0].call().value(v147).gas(msg.gas);
                }
            } else if (0x9b81788b == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v149 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v149) {
                    v150 = v151 = 0;
                    v152 = v153 = 0;
                } else {
                    v150 = MEM[32 + MSIZE()];
                    v152 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v150) / (9970 * (v152 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x8bceaa18 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v154 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v154) {
                    v155 = v156 = 0;
                    v157 = v158 = 0;
                } else {
                    v155 = MEM[32 + MSIZE()];
                    v157 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v157) / (9970 * (v155 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x84f16ca0 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v159 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v159) {
                    v160 = v161 = 0;
                    v162 = v163 = 0;
                } else {
                    v160 = MEM[32 + MSIZE()];
                    v162 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v160 / (10000 * v162 + 9970 * MEM[48 + v0]);
                MEM[0] += 32;
            } else if (0x95b66162 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v164 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v164) {
                    v165 = v166 = 0;
                    v167 = v168 = 0;
                } else {
                    v165 = MEM[32 + MSIZE()];
                    v167 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v167 / (10000 * v165 + 9970 * MEM[48 + v0]);
                MEM[0] += 32;
            } else if (0x9a23842e == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v169 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v169) {
                    v170 = v171 = 0;
                    v172 = v173 = 0;
                } else {
                    v170 = MEM[32 + MSIZE()];
                    v172 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v170) / (MEM[80 + v0] * (v172 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x4fae2f23 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v174 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v174) {
                    v175 = v176 = 0;
                    v177 = v178 = 0;
                } else {
                    v175 = MEM[32 + MSIZE()];
                    v177 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v177) / (MEM[80 + v0] * (v175 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0xa9f2812f == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v179 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v179) {
                    v180 = v181 = 0;
                    v182 = v183 = 0;
                } else {
                    v180 = MEM[32 + MSIZE()];
                    v182 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v180 / (10000 * v182 + MEM[80 + v0] * MEM[48 + v0]);
                MEM[0] += 32;
            } else {
                require(0xf93a1716 == v132);
                MEM[MSIZE()] = 0x902f1ac;
                v184 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v184) {
                    v185 = v186 = 0;
                    v187 = v188 = 0;
                } else {
                    v185 = MEM[32 + MSIZE()];
                    v187 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v187 / (10000 * v185 + MEM[80 + v0] * MEM[48 + v0]);
                MEM[0] += 32;
            }
            v0 = 12 + v131;
            // Unknown jump to Block 0x2ad20x15b2. Refer to 3-address code (TAC);
        } else if (32762 == uint16(v2 >> 240)) {
            v189 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
            if (0x800000 & uint24(v2 >> 176)) {
                v189 = v190 = MEM[0] - (v189 - 32);
            }
            v191 = address(v2).call(MEM[v15b20x1679 + 32:v15b20x1679 + 32 + uint16(v15b20x1680 >> 160)], MEM[0:0]).value(MEM[v189]).gas(msg.gas);
            if (!v191) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!bool(MEM[v189])) {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            v192 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v2 >> 200)) {
                                v192 = v193 = MEM[0] - v192;
                                v194 = uint8(uint24(v2 >> 200) >> 12) + v193 >> 5 << 5;
                                if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                    v194 = v195 = 32 + v194;
                                    MEM[v195] = 0;
                                }
                                MEM[0] = v194;
                            }
                            RETURNDATACOPY(32 + v192, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                }
                v0 = v196 = 32 + uint16(v2 >> 160);
            }
        }
        v0 += v0;
        if (v0 >= v0) {
            return MEM[MEM[0]:MEM[0] + 32];
        }
        v197 = address(v2).call(MEM[v15b20x1679 + 32:v15b20x1679 + 32 + uint16(v15b20x1680 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v2 >> 176).gas(msg.gas);
        if (!v197) {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!bool(0x7fffffffffffffffffff & v2 >> 176)) {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v198 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v198 = v199 = MEM[0] - v198;
                            v200 = uint8(uint24(v2 >> 200) >> 12) + v199 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v200 = v201 = 32 + v200;
                                MEM[v201] = 0;
                            }
                            MEM[0] = v200;
                        }
                        RETURNDATACOPY(32 + v198, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
            }
            v0 = v202 = 32 + uint16(v2 >> 160);
        }
    }
}

function lockAcquired(bytes varg0) public payable { 
    CALLDATACOPY(288, 36, varg0);
    v0 = 288 + varg0;
    v0 = v1 = 288;
    while (1) {
        v2 = MEM[v0];
        if (bool(0x8000 & v2 >> 240)) {
            // Unknown jump to Block 0x17720x15ba. Refer to 3-address code (TAC);
        }
        if (uint24(v2 >> 176)) {
            if (uint24.max != uint24(v2 >> 176)) {
                v3 = (0xfff & uint24(v2 >> 176)) + v0;
                v4 = uint8(uint24(v2 >> 176) >> 12);
                if (v4) {
                    v5 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
                    if (0x800000 & uint24(v2 >> 176)) {
                        v5 = v6 = MEM[0] - (v5 - 32);
                    }
                    while (!bool(v4)) {
                        if (32 > v4) {
                            MEM[v3] = MEM[v3] & ~((1 << (v4 << 3)) - 1) | MEM[v5] & (1 << (v4 << 3)) - 1;
                        } else {
                            MEM[v3] = MEM[v5];
                            v3 += 32;
                            v5 += 32;
                            v4 = v4 - 32;
                        }
                    }
                    // Unknown jump to Block 0x17300x15ba. Refer to 3-address code (TAC);
                }
            }
        }
        if (!uint16(v2 >> 240)) {
            v0 = v7 = uint16.max + v2;
        } else if (32764 == uint16(v2 >> 240)) {
            v8 = address(v2).call(MEM[v15ba0x1679 + 32:v15ba0x1679 + 32 + uint16(v15ba0x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v8) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!False) {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            v9 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v2 >> 200)) {
                                v9 = v10 = MEM[0] - v9;
                                v11 = uint8(uint24(v2 >> 200) >> 12) + v10 >> 5 << 5;
                                if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                    v11 = v12 = 32 + v11;
                                    MEM[v12] = 0;
                                }
                                MEM[0] = v11;
                            }
                            RETURNDATACOPY(32 + v9, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                }
                v0 = v13 = 32 + uint16(v2 >> 160);
            }
        } else if (32766 == uint16(v2 >> 240)) {
            v14 = address(v2).staticcall(MEM[v15ba0x1679 + 32:v15ba0x1679 + 32 + uint16(v15ba0x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v14) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v15 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v15 = v16 = MEM[0] - v15;
                            v17 = uint8(uint24(v2 >> 200) >> 12) + v16 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v17 = v18 = 32 + v17;
                                MEM[v18] = 0;
                            }
                            MEM[0] = v17;
                        }
                        RETURNDATACOPY(32 + v15, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
                v0 = v19 = 32 + uint16(v2 >> 160);
            }
        } else if (32763 == uint16(v2 >> 240)) {
            v0 = v20 = 12 + uint16(v2 >> 160);
            v0 += 12;
            while (1) {
                v21 = MEM[v0] >> 248;
                if (!v21) {
                    break;
                }
                if (v21 > 16) {
                    if (v21 >= 32) {
                        if (v21 >= 48) {
                            if (v21 >= 48) {
                                if (v21 >= 80) {
                                    if (v21 < 96) {
                                        if (80 == v21) {
                                            v22 = MEM[1 + v0] >> 248;
                                            v23 = MEM[0] - (v22 << 5);
                                            MEM[0] = v23;
                                            v0 = v24 = 0;
                                            do {
                                                v23 += 32;
                                                v0 += MEM[v23];
                                                v22 = v22 - 1;
                                            } while (!bool(v22));
                                            v25 = v26 = 2;
                                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                                        } else if (81 == v21) {
                                            v27 = MEM[1 + v0] >> 248;
                                            v28 = MEM[0];
                                            v0 = v29 = 0;
                                            do {
                                                v0 += MEM[v28];
                                                v28 = v28 - 32;
                                                v27 = v27 - 1;
                                            } while (!bool(v27));
                                            v25 = v30 = 2;
                                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else if (64 == v21) {
                                    v0 = v31 = 1;
                                    v25 = v32 = 1;
                                } else if (65 == v21) {
                                    require(v0 != v0, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                    v0 = v33 = 1;
                                    v25 = v34 = 1;
                                } else if (66 == v21) {
                                    require(v0 < v0, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v35 = 1;
                                    v25 = v36 = 1;
                                } else if (67 == v21) {
                                    require(v0 >= v0, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                    v0 = v37 = 1;
                                    v25 = v38 = 1;
                                } else if (68 == v21) {
                                    require(v0 > v0, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v39 = 1;
                                    v25 = v40 = 1;
                                } else if (69 == v21) {
                                    require(v0 <= v0, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                    v0 = v41 = 1;
                                    v25 = v42 = 1;
                                } else if (70 == v21) {
                                    require(!v0, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v43 = 1;
                                    v25 = v44 = 1;
                                } else if (71 == v21) {
                                    require(v0, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                    v0 = v45 = 1;
                                    v25 = v46 = 1;
                                } else if (72 == v21) {
                                    if (v0 != v0) {
                                        return 0;
                                    } else {
                                        v0 = v47 = 1;
                                        v25 = v48 = 1;
                                    }
                                } else if (73 == v21) {
                                    if (v0 == v0) {
                                        return 0;
                                    } else {
                                        v0 = v49 = 1;
                                        v25 = v50 = 1;
                                    }
                                } else if (74 == v21) {
                                    if (v0 >= v0) {
                                        return 0;
                                    } else {
                                        v0 = v51 = 1;
                                        v25 = v52 = 1;
                                    }
                                } else if (75 == v21) {
                                    if (v0 < v0) {
                                        return 0;
                                    } else {
                                        v0 = v53 = 1;
                                        v25 = v54 = 1;
                                    }
                                } else if (76 == v21) {
                                    if (v0 <= v0) {
                                        return 0;
                                    } else {
                                        v0 = v55 = 1;
                                        v25 = v56 = 1;
                                    }
                                } else if (77 == v21) {
                                    if (v0 > v0) {
                                        return 0;
                                    } else {
                                        v0 = v57 = 1;
                                        v25 = v58 = 1;
                                    }
                                } else if (78 == v21) {
                                    if (v0) {
                                        return 0;
                                    } else {
                                        v0 = v59 = 1;
                                        v25 = v60 = 1;
                                    }
                                } else if (79 == v21) {
                                    if (!v0) {
                                        return 0;
                                    } else {
                                        v0 = v61 = 1;
                                        v25 = v62 = 1;
                                    }
                                }
                            } else if (49 == v21) {
                                v0 = uint8(v0);
                                v25 = v63 = 1;
                                // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                            } else if (50 == v21) {
                                v0 = uint16(v0);
                                v25 = v64 = 1;
                                // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                            } else if (51 == v21) {
                                v0 = uint64(v0);
                                v25 = v65 = 1;
                                // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                            } else if (52 == v21) {
                                v0 = uint112(v0);
                                v25 = v66 = 1;
                                // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                            } else if (53 == v21) {
                                v0 = uint128(v0);
                                v25 = v67 = 1;
                                // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                            }
                        } else if (32 == v21) {
                            v0 = v68 = MEM[1 + v0];
                            v25 = v69 = 33;
                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                        } else if (33 == v21) {
                            v0 = v70 = uint8(MEM[1 + v0]);
                            v25 = v71 = 2;
                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                        } else if (34 == v21) {
                            v0 = v72 = uint16(MEM[1 + v0]);
                            v25 = v73 = 3;
                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                        } else if (35 == v21) {
                            v0 = v74 = uint64(MEM[1 + v0]);
                            v25 = v75 = 9;
                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                        } else if (36 == v21) {
                            v0 = v76 = uint112(MEM[1 + v0]);
                            v25 = v77 = 7;
                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                        } else if (37 == v21) {
                            v0 = v78 = uint128(MEM[1 + v0]);
                            v25 = v79 = 9;
                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                        } else if (38 == v21) {
                            v0 = v80 = address(MEM[1 + v0]);
                            v25 = v81 = 13;
                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                        } else if (42 == v21) {
                            v0 = v0 << 256;
                            v25 = v82 = 1;
                            // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                        }
                    } else if (17 == v21) {
                        v0 += v0;
                        v25 = v83 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (18 == v21) {
                        v0 = v0 - v0;
                        v25 = v84 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (19 == v21) {
                        v0 *= v0;
                        v25 = v85 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (20 == v21) {
                        v0 = v0 / v0;
                        v25 = v86 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (21 == v21) {
                        v0 = v0 / v0;
                        v25 = v87 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (22 == v21) {
                        v0 = v0 & v0;
                        v25 = v88 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (23 == v21) {
                        v0 = v0 | v0;
                        v25 = v89 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (24 == v21) {
                        v0 = v0 ^ v0;
                        v25 = v90 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (25 == v21) {
                        v0 = ~v0;
                        v25 = v91 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (26 == v21) {
                        v0 = v0 << (MEM[1 + v0] >> 248);
                        v25 = v92 = 2;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (27 == v21) {
                        v0 = v0 >> (MEM[1 + v0] >> 248);
                        v25 = v93 = 2;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (28 == v21) {
                        v0 = v0 + 1;
                        v25 = v94 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (29 == v21) {
                        v0 = v0 - 1;
                        v25 = v95 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (30 == v21) {
                        v0 = v0 - v0;
                        v25 = v96 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    } else if (31 == v21) {
                        v0 = v0 / v0;
                        v25 = v97 = 1;
                        // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                    }
                } else if (1 == v21) {
                    v0 = v98 = MEM[32];
                    v25 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (2 == v21) {
                    v0 = v99 = MEM[64];
                    v25 = v100 = 1;
                } else if (3 == v21) {
                    v0 = v101 = MEM[96];
                    v25 = v102 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (4 == v21) {
                    v0 = v103 = MEM[128];
                    v25 = v104 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (5 == v21) {
                    v0 = v105 = MEM[160];
                    v25 = v106 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (6 == v21) {
                    v0 = v107 = MEM[192];
                    v25 = v108 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (7 == v21) {
                    v0 = v109 = MEM[224];
                    v25 = v110 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (8 == v21) {
                    v0 = v111 = MEM[MEM[0]];
                    MEM[0] = MEM[0] - 32;
                    v25 = v112 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (10 == v21) {
                    v0 = v113 = this.balance;
                    v25 = v114 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (11 == v21) {
                    v0 = v115 = block.coinbase;
                    v25 = v116 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (12 == v21) {
                    v0 = v117 = block.timestamp;
                    v25 = v118 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (13 == v21) {
                    v0 = v119 = block.number;
                    v25 = v120 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (14 == v21) {
                    v0 = v121 = BASEFEE();
                    v25 = v122 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                } else if (15 == v21) {
                    v0 = v123 = msg.gas;
                    v25 = v124 = 1;
                    // Unknown jump to Block 0x23220x15ba. Refer to 3-address code (TAC);
                }
                v0 = v0 + v25;
            }
            MEM[32 + MEM[0]] = v0;
            MEM[0] += 32;
            // Unknown jump to Block 0x2ad20x15ba. Refer to 3-address code (TAC);
        } else if (int16.max == uint16(v2 >> 240)) {
            v125 = address(v2).delegatecall(MEM[v15ba0x1679 + 32:v15ba0x1679 + 32 + uint16(v15ba0x1680 >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v125) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v126 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v126 = v127 = MEM[0] - v126;
                            v128 = uint8(uint24(v2 >> 200) >> 12) + v127 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v128 = v129 = 32 + v128;
                                MEM[v129] = 0;
                            }
                            MEM[0] = v128;
                        }
                        RETURNDATACOPY(32 + v126, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
                v0 = v130 = 32 + uint16(v2 >> 160);
            }
        } else if (32765 == uint16(v2 >> 240)) {
            v131 = uint16(v2 >> 160);
            v132 = MEM[12 + v0] >> 224;
            if (0xa85f1d24 == v132) {
                v131 = 12 + v0;
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v133 = MEM[4 + v131].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v133) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v134 = 0x70a08231;
                    if (v134) {
                        v134 = v135 = 0x70a08230;
                    }
                    require(MEM[36 + v131] <= v134, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    if (MEM[68 + v131]) {
                        v136 = block.coinbase.call().value(MEM[68 + v131]).gas(msg.gas);
                    }
                }
            } else if (0x4df86adf == v132) {
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v137 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v137) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v138 = 0x70a08231;
                    if (v138) {
                        v138 = v139 = 0x70a08230;
                    }
                    require(MEM[48 + v0] <= v138, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    MEM[MSIZE()] = 0xa9059cbb;
                    MEM[32 + MSIZE()] = MEM[112 + v0];
                    MEM[64 + MSIZE()] = v138;
                    v140 = MEM[16 + v0].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                    if (MEM[80 + v0]) {
                        v141 = block.coinbase.call().value(MEM[80 + v0]).gas(msg.gas);
                    }
                }
            } else if (0x5ec9cad == v132) {
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v142 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v142) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v143 = 0x70a08231;
                    if (v143) {
                        v143 = v144 = 0x70a08230;
                    }
                    require(MEM[16 + v0] <= v143, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    MEM[MSIZE()] = 0x2e1a7d4d;
                    MEM[32 + MSIZE()] = v143;
                    v145 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                    if (MEM[48 + v0]) {
                        v146 = block.coinbase.call().value(MEM[48 + v0]).gas(msg.gas);
                    }
                    v147 = this.balance;
                    v148 = MEM[80 + v0].call().value(v147).gas(msg.gas);
                }
            } else if (0x9b81788b == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v149 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v149) {
                    v150 = v151 = 0;
                    v152 = v153 = 0;
                } else {
                    v150 = MEM[32 + MSIZE()];
                    v152 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v150) / (9970 * (v152 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x8bceaa18 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v154 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v154) {
                    v155 = v156 = 0;
                    v157 = v158 = 0;
                } else {
                    v155 = MEM[32 + MSIZE()];
                    v157 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v157) / (9970 * (v155 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x84f16ca0 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v159 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v159) {
                    v160 = v161 = 0;
                    v162 = v163 = 0;
                } else {
                    v160 = MEM[32 + MSIZE()];
                    v162 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v160 / (10000 * v162 + 9970 * MEM[48 + v0]);
                MEM[0] += 32;
            } else if (0x95b66162 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v164 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v164) {
                    v165 = v166 = 0;
                    v167 = v168 = 0;
                } else {
                    v165 = MEM[32 + MSIZE()];
                    v167 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v167 / (10000 * v165 + 9970 * MEM[48 + v0]);
                MEM[0] += 32;
            } else if (0x9a23842e == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v169 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v169) {
                    v170 = v171 = 0;
                    v172 = v173 = 0;
                } else {
                    v170 = MEM[32 + MSIZE()];
                    v172 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v170) / (MEM[80 + v0] * (v172 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x4fae2f23 == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v174 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v174) {
                    v175 = v176 = 0;
                    v177 = v178 = 0;
                } else {
                    v175 = MEM[32 + MSIZE()];
                    v177 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v177) / (MEM[80 + v0] * (v175 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0xa9f2812f == v132) {
                MEM[MSIZE()] = 0x902f1ac;
                v179 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v179) {
                    v180 = v181 = 0;
                    v182 = v183 = 0;
                } else {
                    v180 = MEM[32 + MSIZE()];
                    v182 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v180 / (10000 * v182 + MEM[80 + v0] * MEM[48 + v0]);
                MEM[0] += 32;
            } else {
                require(0xf93a1716 == v132);
                MEM[MSIZE()] = 0x902f1ac;
                v184 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v184) {
                    v185 = v186 = 0;
                    v187 = v188 = 0;
                } else {
                    v185 = MEM[32 + MSIZE()];
                    v187 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v187 / (10000 * v185 + MEM[80 + v0] * MEM[48 + v0]);
                MEM[0] += 32;
            }
            v0 = 12 + v131;
            // Unknown jump to Block 0x2ad20x15ba. Refer to 3-address code (TAC);
        } else if (32762 == uint16(v2 >> 240)) {
            v189 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
            if (0x800000 & uint24(v2 >> 176)) {
                v189 = v190 = MEM[0] - (v189 - 32);
            }
            v191 = address(v2).call(MEM[v15ba0x1679 + 32:v15ba0x1679 + 32 + uint16(v15ba0x1680 >> 160)], MEM[0:0]).value(MEM[v189]).gas(msg.gas);
            if (!v191) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!bool(MEM[v189])) {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            v192 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v2 >> 200)) {
                                v192 = v193 = MEM[0] - v192;
                                v194 = uint8(uint24(v2 >> 200) >> 12) + v193 >> 5 << 5;
                                if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                    v194 = v195 = 32 + v194;
                                    MEM[v195] = 0;
                                }
                                MEM[0] = v194;
                            }
                            RETURNDATACOPY(32 + v192, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                }
                v0 = v196 = 32 + uint16(v2 >> 160);
            }
        }
        v0 += v0;
        if (v0 >= v0) {
            return MEM[MEM[0]:MEM[0] + 32];
        }
        v197 = address(v2).call(MEM[v15ba0x1679 + 32:v15ba0x1679 + 32 + uint16(v15ba0x1680 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v2 >> 176).gas(msg.gas);
        if (!v197) {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!bool(0x7fffffffffffffffffff & v2 >> 176)) {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        v198 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v2 >> 200)) {
                            v198 = v199 = MEM[0] - v198;
                            v200 = uint8(uint24(v2 >> 200) >> 12) + v199 >> 5 << 5;
                            if (0x1f & uint8(uint24(v2 >> 200) >> 12)) {
                                v200 = v201 = 32 + v200;
                                MEM[v201] = 0;
                            }
                            MEM[0] = v200;
                        }
                        RETURNDATACOPY(32 + v198, 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
            }
            v0 = v202 = 32 + uint16(v2 >> 160);
        }
    }
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes _data) public payable { 
    if (20 == _data.word0) {
        if (amountToPay >= 0) {
        }
        MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
        MEM[32 + MEM[uint8.max + 1]] = msg.sender;
        MEM[64 + MEM[uint8.max + 1]] = v0;
        v1 = (_data.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
        return ;
    } else {
        MEM[0] = 64;
        CALLDATACOPY(288, _data.data, _data.word0.length);
        v2 = 288 + _data.word0.length;
        v2 = v3 = 288;
        while (1) {
            v4 = MEM[v2];
            if (bool(0x8000 & v4 >> 240)) {
                // Unknown jump to Block 0x17720x15c2. Refer to 3-address code (TAC);
            }
            if (uint24(v4 >> 176)) {
                if (uint24.max != uint24(v4 >> 176)) {
                    v5 = (0xfff & uint24(v4 >> 176)) + v2;
                    v6 = uint8(uint24(v4 >> 176) >> 12);
                    if (v6) {
                        v7 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                        if (0x800000 & uint24(v4 >> 176)) {
                            v7 = v8 = MEM[0] - (v7 - 32);
                        }
                        while (!bool(v6)) {
                            if (32 > v6) {
                                MEM[v5] = MEM[v5] & ~((1 << (v6 << 3)) - 1) | MEM[v7] & (1 << (v6 << 3)) - 1;
                            } else {
                                MEM[v5] = MEM[v7];
                                v5 += 32;
                                v7 += 32;
                                v6 = v6 - 32;
                            }
                        }
                        // Unknown jump to Block 0x17300x15c2. Refer to 3-address code (TAC);
                    }
                }
            }
            if (!uint16(v4 >> 240)) {
                v2 = v9 = uint16.max + v4;
            } else if (32764 == uint16(v4 >> 240)) {
                v10 = address(v4).call(MEM[v15c20x1679 + 32:v15c20x1679 + 32 + uint16(v15c20x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v10) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!False) {
                        if (uint24(v4 >> 200)) {
                            if (uint24.max != uint24(v4 >> 200)) {
                                v11 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                if (0x800000 & uint24(v4 >> 200)) {
                                    v11 = v12 = MEM[0] - v11;
                                    v13 = uint8(uint24(v4 >> 200) >> 12) + v12 >> 5 << 5;
                                    if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                        v13 = v14 = 32 + v13;
                                        MEM[v14] = 0;
                                    }
                                    MEM[0] = v13;
                                }
                                RETURNDATACOPY(32 + v11, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                            }
                        }
                    }
                    v2 = v15 = 32 + uint16(v4 >> 160);
                }
            } else if (32766 == uint16(v4 >> 240)) {
                v16 = address(v4).staticcall(MEM[v15c20x1679 + 32:v15c20x1679 + 32 + uint16(v15c20x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v16) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            v17 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v4 >> 200)) {
                                v17 = v18 = MEM[0] - v17;
                                v19 = uint8(uint24(v4 >> 200) >> 12) + v18 >> 5 << 5;
                                if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                    v19 = v20 = 32 + v19;
                                    MEM[v20] = 0;
                                }
                                MEM[0] = v19;
                            }
                            RETURNDATACOPY(32 + v17, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                    v2 = v21 = 32 + uint16(v4 >> 160);
                }
            } else if (32763 == uint16(v4 >> 240)) {
                v2 = v22 = 12 + uint16(v4 >> 160);
                v2 += 12;
                while (1) {
                    v23 = MEM[v2] >> 248;
                    if (!v23) {
                        break;
                    }
                    if (v23 > 16) {
                        if (v23 >= 32) {
                            if (v23 >= 48) {
                                if (v23 >= 48) {
                                    if (v23 >= 80) {
                                        if (v23 < 96) {
                                            if (80 == v23) {
                                                v24 = MEM[1 + v2] >> 248;
                                                v25 = MEM[0] - (v24 << 5);
                                                MEM[0] = v25;
                                                v2 = v26 = 0;
                                                do {
                                                    v25 += 32;
                                                    v2 += MEM[v25];
                                                    v24 = v24 - 1;
                                                } while (!bool(v24));
                                                v27 = v28 = 2;
                                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                                            } else if (81 == v23) {
                                                v29 = MEM[1 + v2] >> 248;
                                                v30 = MEM[0];
                                                v2 = v31 = 0;
                                                do {
                                                    v2 += MEM[v30];
                                                    v30 = v30 - 32;
                                                    v29 = v29 - 1;
                                                } while (!bool(v29));
                                                v27 = v32 = 2;
                                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                                            }
                                        }
                                    } else if (64 == v23) {
                                        v2 = v33 = 1;
                                        v27 = v34 = 1;
                                    } else if (65 == v23) {
                                        require(v2 != v2, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                        v2 = v35 = 1;
                                        v27 = v36 = 1;
                                    } else if (66 == v23) {
                                        require(v2 < v2, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                        v2 = v37 = 1;
                                        v27 = v38 = 1;
                                    } else if (67 == v23) {
                                        require(v2 >= v2, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                        v2 = v39 = 1;
                                        v27 = v40 = 1;
                                    } else if (68 == v23) {
                                        require(v2 > v2, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                        v2 = v41 = 1;
                                        v27 = v42 = 1;
                                    } else if (69 == v23) {
                                        require(v2 <= v2, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                        v2 = v43 = 1;
                                        v27 = v44 = 1;
                                    } else if (70 == v23) {
                                        require(!v2, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                        v2 = v45 = 1;
                                        v27 = v46 = 1;
                                    } else if (71 == v23) {
                                        require(v2, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                        v2 = v47 = 1;
                                        v27 = v48 = 1;
                                    } else if (72 == v23) {
                                        if (v2 != v2) {
                                            return 0;
                                        } else {
                                            v2 = v49 = 1;
                                            v27 = v50 = 1;
                                        }
                                    } else if (73 == v23) {
                                        if (v2 == v2) {
                                            return 0;
                                        } else {
                                            v2 = v51 = 1;
                                            v27 = v52 = 1;
                                        }
                                    } else if (74 == v23) {
                                        if (v2 >= v2) {
                                            return 0;
                                        } else {
                                            v2 = v53 = 1;
                                            v27 = v54 = 1;
                                        }
                                    } else if (75 == v23) {
                                        if (v2 < v2) {
                                            return 0;
                                        } else {
                                            v2 = v55 = 1;
                                            v27 = v56 = 1;
                                        }
                                    } else if (76 == v23) {
                                        if (v2 <= v2) {
                                            return 0;
                                        } else {
                                            v2 = v57 = 1;
                                            v27 = v58 = 1;
                                        }
                                    } else if (77 == v23) {
                                        if (v2 > v2) {
                                            return 0;
                                        } else {
                                            v2 = v59 = 1;
                                            v27 = v60 = 1;
                                        }
                                    } else if (78 == v23) {
                                        if (v2) {
                                            return 0;
                                        } else {
                                            v2 = v61 = 1;
                                            v27 = v62 = 1;
                                        }
                                    } else if (79 == v23) {
                                        if (!v2) {
                                            return 0;
                                        } else {
                                            v2 = v63 = 1;
                                            v27 = v64 = 1;
                                        }
                                    }
                                } else if (49 == v23) {
                                    v2 = uint8(v2);
                                    v27 = v65 = 1;
                                    // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                                } else if (50 == v23) {
                                    v2 = uint16(v2);
                                    v27 = v66 = 1;
                                    // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                                } else if (51 == v23) {
                                    v2 = uint64(v2);
                                    v27 = v67 = 1;
                                    // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                                } else if (52 == v23) {
                                    v2 = uint112(v2);
                                    v27 = v68 = 1;
                                    // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                                } else if (53 == v23) {
                                    v2 = uint128(v2);
                                    v27 = v69 = 1;
                                    // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                                }
                            } else if (32 == v23) {
                                v2 = v70 = MEM[1 + v2];
                                v27 = v71 = 33;
                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                            } else if (33 == v23) {
                                v2 = v72 = uint8(MEM[1 + v2]);
                                v27 = v73 = 2;
                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                            } else if (34 == v23) {
                                v2 = v74 = uint16(MEM[1 + v2]);
                                v27 = v75 = 3;
                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                            } else if (35 == v23) {
                                v2 = v76 = uint64(MEM[1 + v2]);
                                v27 = v77 = 9;
                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                            } else if (36 == v23) {
                                v2 = v78 = uint112(MEM[1 + v2]);
                                v27 = v79 = 7;
                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                            } else if (37 == v23) {
                                v2 = v80 = uint128(MEM[1 + v2]);
                                v27 = v81 = 9;
                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                            } else if (38 == v23) {
                                v2 = v82 = address(MEM[1 + v2]);
                                v27 = v83 = 13;
                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                            } else if (42 == v23) {
                                v2 = v2 << 256;
                                v27 = v84 = 1;
                                // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                            }
                        } else if (17 == v23) {
                            v2 += v2;
                            v27 = v85 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (18 == v23) {
                            v2 = v2 - v2;
                            v27 = v86 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (19 == v23) {
                            v2 *= v2;
                            v27 = v87 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (20 == v23) {
                            v2 = v2 / v2;
                            v27 = v88 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (21 == v23) {
                            v2 = v2 / v2;
                            v27 = v89 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (22 == v23) {
                            v2 = v2 & v2;
                            v27 = v90 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (23 == v23) {
                            v2 = v2 | v2;
                            v27 = v91 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (24 == v23) {
                            v2 = v2 ^ v2;
                            v27 = v92 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (25 == v23) {
                            v2 = ~v2;
                            v27 = v93 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (26 == v23) {
                            v2 = v2 << (MEM[1 + v2] >> 248);
                            v27 = v94 = 2;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (27 == v23) {
                            v2 = v2 >> (MEM[1 + v2] >> 248);
                            v27 = v95 = 2;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (28 == v23) {
                            v2 = v2 + 1;
                            v27 = v96 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (29 == v23) {
                            v2 = v2 - 1;
                            v27 = v97 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (30 == v23) {
                            v2 = v2 - v2;
                            v27 = v98 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        } else if (31 == v23) {
                            v2 = v2 / v2;
                            v27 = v99 = 1;
                            // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                        }
                    } else if (1 == v23) {
                        v27 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (2 == v23) {
                        v27 = v100 = 1;
                    } else if (3 == v23) {
                        v2 = v101 = MEM[96];
                        v27 = v102 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (4 == v23) {
                        v2 = v103 = MEM[128];
                        v27 = v104 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (5 == v23) {
                        v2 = v105 = MEM[160];
                        v27 = v106 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (6 == v23) {
                        v2 = v107 = MEM[192];
                        v27 = v108 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (7 == v23) {
                        v2 = v109 = MEM[224];
                        v27 = v110 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (8 == v23) {
                        v2 = v111 = MEM[MEM[0]];
                        MEM[0] = MEM[0] - 32;
                        v27 = v112 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (10 == v23) {
                        v2 = v113 = this.balance;
                        v27 = v114 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (11 == v23) {
                        v2 = v115 = block.coinbase;
                        v27 = v116 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (12 == v23) {
                        v2 = v117 = block.timestamp;
                        v27 = v118 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (13 == v23) {
                        v2 = v119 = block.number;
                        v27 = v120 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (14 == v23) {
                        v2 = v121 = BASEFEE();
                        v27 = v122 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    } else if (15 == v23) {
                        v2 = v123 = msg.gas;
                        v27 = v124 = 1;
                        // Unknown jump to Block 0x23220x15c2. Refer to 3-address code (TAC);
                    }
                    v2 = v2 + v27;
                }
                MEM[32 + MEM[0]] = v2;
                MEM[0] += 32;
                // Unknown jump to Block 0x2ad20x15c2. Refer to 3-address code (TAC);
            } else if (int16.max == uint16(v4 >> 240)) {
                v125 = address(v4).delegatecall(MEM[v15c20x1679 + 32:v15c20x1679 + 32 + uint16(v15c20x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v125) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            v126 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v4 >> 200)) {
                                v126 = v127 = MEM[0] - v126;
                                v128 = uint8(uint24(v4 >> 200) >> 12) + v127 >> 5 << 5;
                                if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                    v128 = v129 = 32 + v128;
                                    MEM[v129] = 0;
                                }
                                MEM[0] = v128;
                            }
                            RETURNDATACOPY(32 + v126, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                    v2 = v130 = 32 + uint16(v4 >> 160);
                }
            } else if (32765 == uint16(v4 >> 240)) {
                v131 = uint16(v4 >> 160);
                v132 = MEM[12 + v2] >> 224;
                if (0xa85f1d24 == v132) {
                    v131 = 12 + v2;
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v133 = MEM[4 + v131].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v133) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v134 = 0x70a08231;
                        if (v134) {
                            v134 = v135 = 0x70a08230;
                        }
                        require(MEM[36 + v131] <= v134, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        if (MEM[68 + v131]) {
                            v136 = block.coinbase.call().value(MEM[68 + v131]).gas(msg.gas);
                        }
                    }
                } else if (0x4df86adf == v132) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v137 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v137) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v138 = 0x70a08231;
                        if (v138) {
                            v138 = v139 = 0x70a08230;
                        }
                        require(MEM[48 + v2] <= v138, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0xa9059cbb;
                        MEM[32 + MSIZE()] = MEM[112 + v2];
                        MEM[64 + MSIZE()] = v138;
                        v140 = MEM[16 + v2].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                        if (MEM[80 + v2]) {
                            v141 = block.coinbase.call().value(MEM[80 + v2]).gas(msg.gas);
                        }
                    }
                } else if (0x5ec9cad == v132) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v142 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v142) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v143 = 0x70a08231;
                        if (v143) {
                            v143 = v144 = 0x70a08230;
                        }
                        require(MEM[16 + v2] <= v143, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0x2e1a7d4d;
                        MEM[32 + MSIZE()] = v143;
                        v145 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                        if (MEM[48 + v2]) {
                            v146 = block.coinbase.call().value(MEM[48 + v2]).gas(msg.gas);
                        }
                        v147 = this.balance;
                        v148 = MEM[80 + v2].call().value(v147).gas(msg.gas);
                    }
                } else if (0x9b81788b == v132) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v149 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v149) {
                        v150 = v151 = 0;
                        v152 = v153 = 0;
                    } else {
                        v150 = MEM[32 + MSIZE()];
                        v152 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v150) / (9970 * (v152 - MEM[48 + v2]));
                    MEM[0] += 32;
                } else if (0x8bceaa18 == v132) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v154 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v154) {
                        v155 = v156 = 0;
                        v157 = v158 = 0;
                    } else {
                        v155 = MEM[32 + MSIZE()];
                        v157 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v157) / (9970 * (v155 - MEM[48 + v2]));
                    MEM[0] += 32;
                } else if (0x84f16ca0 == v132) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v159 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v159) {
                        v160 = v161 = 0;
                        v162 = v163 = 0;
                    } else {
                        v160 = MEM[32 + MSIZE()];
                        v162 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v2] * v160 / (10000 * v162 + 9970 * MEM[48 + v2]);
                    MEM[0] += 32;
                } else if (0x95b66162 == v132) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v164 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v164) {
                        v165 = v166 = 0;
                        v167 = v168 = 0;
                    } else {
                        v165 = MEM[32 + MSIZE()];
                        v167 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v2] * v167 / (10000 * v165 + 9970 * MEM[48 + v2]);
                    MEM[0] += 32;
                } else if (0x9a23842e == v132) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v169 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v169) {
                        v170 = v171 = 0;
                        v172 = v173 = 0;
                    } else {
                        v170 = MEM[32 + MSIZE()];
                        v172 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v170) / (MEM[80 + v2] * (v172 - MEM[48 + v2]));
                    MEM[0] += 32;
                } else if (0x4fae2f23 == v132) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v174 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v174) {
                        v175 = v176 = 0;
                        v177 = v178 = 0;
                    } else {
                        v175 = MEM[32 + MSIZE()];
                        v177 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v177) / (MEM[80 + v2] * (v175 - MEM[48 + v2]));
                    MEM[0] += 32;
                } else if (0xa9f2812f == v132) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v179 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v179) {
                        v180 = v181 = 0;
                        v182 = v183 = 0;
                    } else {
                        v180 = MEM[32 + MSIZE()];
                        v182 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v2] * MEM[48 + v2] * v180 / (10000 * v182 + MEM[80 + v2] * MEM[48 + v2]);
                    MEM[0] += 32;
                } else {
                    require(0xf93a1716 == v132);
                    MEM[MSIZE()] = 0x902f1ac;
                    v184 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v184) {
                        v185 = v186 = 0;
                        v187 = v188 = 0;
                    } else {
                        v185 = MEM[32 + MSIZE()];
                        v187 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v2] * MEM[48 + v2] * v187 / (10000 * v185 + MEM[80 + v2] * MEM[48 + v2]);
                    MEM[0] += 32;
                }
                v2 = 12 + v131;
                // Unknown jump to Block 0x2ad20x15c2. Refer to 3-address code (TAC);
            } else if (32762 == uint16(v4 >> 240)) {
                v189 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                if (0x800000 & uint24(v4 >> 176)) {
                    v189 = v190 = MEM[0] - (v189 - 32);
                }
                v191 = address(v4).call(MEM[v15c20x1679 + 32:v15c20x1679 + 32 + uint16(v15c20x1680 >> 160)], MEM[0:0]).value(MEM[v189]).gas(msg.gas);
                if (!v191) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!bool(MEM[v189])) {
                        if (uint24(v4 >> 200)) {
                            if (uint24.max != uint24(v4 >> 200)) {
                                v192 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                if (0x800000 & uint24(v4 >> 200)) {
                                    v192 = v193 = MEM[0] - v192;
                                    v194 = uint8(uint24(v4 >> 200) >> 12) + v193 >> 5 << 5;
                                    if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                        v194 = v195 = 32 + v194;
                                        MEM[v195] = 0;
                                    }
                                    MEM[0] = v194;
                                }
                                RETURNDATACOPY(32 + v192, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                            }
                        }
                    }
                    v2 = v196 = 32 + uint16(v4 >> 160);
                }
            }
            v2 += v2;
            if (v2 >= v2) {
                return MEM[MEM[0]:MEM[0] + 32];
            }
            v197 = address(v4).call(MEM[v15c20x1679 + 32:v15c20x1679 + 32 + uint16(v15c20x1680 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v4 >> 176).gas(msg.gas);
            if (!v197) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!bool(0x7fffffffffffffffffff & v4 >> 176)) {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            v198 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v4 >> 200)) {
                                v198 = v199 = MEM[0] - v198;
                                v200 = uint8(uint24(v4 >> 200) >> 12) + v199 >> 5 << 5;
                                if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                    v200 = v201 = 32 + v200;
                                    MEM[v201] = 0;
                                }
                                MEM[0] = v200;
                            }
                            RETURNDATACOPY(32 + v198, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                }
                v2 = v202 = 32 + uint16(v4 >> 160);
            }
        }
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public payable { 
    if (20 == _data.word0) {
        if (amount0Delta >= 0) {
        }
        MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
        MEM[32 + MEM[uint8.max + 1]] = msg.sender;
        MEM[64 + MEM[uint8.max + 1]] = v0;
        v1 = (_data.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
        return ;
    } else {
        if (amount0Delta < 0) {
            MEM[32] = amount0Delta << 256;
        } else {
            MEM[32] = amount1Delta << 256;
        }
        MEM[0] = 64;
        CALLDATACOPY(288, _data.data, _data.word0.length);
        v2 = 288 + _data.word0.length;
        v2 = v3 = 288;
        while (1) {
            v4 = MEM[v2];
            if (bool(0x8000 & v4 >> 240)) {
                // Unknown jump to Block 0x17720x15e3. Refer to 3-address code (TAC);
            }
            if (uint24(v4 >> 176)) {
                if (uint24.max != uint24(v4 >> 176)) {
                    v5 = (0xfff & uint24(v4 >> 176)) + v2;
                    v6 = uint8(uint24(v4 >> 176) >> 12);
                    if (v6) {
                        v7 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                        if (0x800000 & uint24(v4 >> 176)) {
                            v7 = v8 = MEM[0] - (v7 - 32);
                        }
                        while (!bool(v6)) {
                            if (32 > v6) {
                                MEM[v5] = MEM[v5] & ~((1 << (v6 << 3)) - 1) | MEM[v7] & (1 << (v6 << 3)) - 1;
                            } else {
                                MEM[v5] = MEM[v7];
                                v5 += 32;
                                v7 += 32;
                                v6 = v6 - 32;
                            }
                        }
                        // Unknown jump to Block 0x17300x15e3. Refer to 3-address code (TAC);
                    }
                }
            }
            if (!uint16(v4 >> 240)) {
                v2 = v9 = uint16.max + v4;
            } else if (32764 == uint16(v4 >> 240)) {
                v10 = address(v4).call(MEM[v15e30x1679 + 32:v15e30x1679 + 32 + uint16(v15e30x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v10) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!False) {
                        if (uint24(v4 >> 200)) {
                            if (uint24.max != uint24(v4 >> 200)) {
                                v11 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                if (0x800000 & uint24(v4 >> 200)) {
                                    v11 = v12 = MEM[0] - v11;
                                    v13 = uint8(uint24(v4 >> 200) >> 12) + v12 >> 5 << 5;
                                    if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                        v13 = v14 = 32 + v13;
                                        MEM[v14] = 0;
                                    }
                                    MEM[0] = v13;
                                }
                                RETURNDATACOPY(32 + v11, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                            }
                        }
                    }
                    v2 = v15 = 32 + uint16(v4 >> 160);
                }
            } else if (32766 == uint16(v4 >> 240)) {
                v16 = address(v4).staticcall(MEM[v15e30x1679 + 32:v15e30x1679 + 32 + uint16(v15e30x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v16) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            v17 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v4 >> 200)) {
                                v17 = v18 = MEM[0] - v17;
                                v19 = uint8(uint24(v4 >> 200) >> 12) + v18 >> 5 << 5;
                                if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                    v19 = v20 = 32 + v19;
                                    MEM[v20] = 0;
                                }
                                MEM[0] = v19;
                            }
                            RETURNDATACOPY(32 + v17, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                    v2 = v21 = 32 + uint16(v4 >> 160);
                }
            } else if (32763 == uint16(v4 >> 240)) {
                v2 = v22 = 12 + uint16(v4 >> 160);
                v2 += 12;
                while (1) {
                    v23 = MEM[v2] >> 248;
                    if (!v23) {
                        break;
                    }
                    if (v23 > 16) {
                        if (v23 >= 32) {
                            if (v23 >= 48) {
                                if (v23 >= 48) {
                                    if (v23 >= 80) {
                                        if (v23 < 96) {
                                            if (80 == v23) {
                                                v24 = MEM[1 + v2] >> 248;
                                                v25 = MEM[0] - (v24 << 5);
                                                MEM[0] = v25;
                                                v2 = v26 = 0;
                                                do {
                                                    v25 += 32;
                                                    v2 += MEM[v25];
                                                    v24 = v24 - 1;
                                                } while (!bool(v24));
                                                v27 = v28 = 2;
                                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                                            } else if (81 == v23) {
                                                v29 = MEM[1 + v2] >> 248;
                                                v30 = MEM[0];
                                                v2 = v31 = 0;
                                                do {
                                                    v2 += MEM[v30];
                                                    v30 = v30 - 32;
                                                    v29 = v29 - 1;
                                                } while (!bool(v29));
                                                v27 = v32 = 2;
                                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                                            }
                                        }
                                    } else if (64 == v23) {
                                        v2 = v33 = 1;
                                        v27 = v34 = 1;
                                    } else if (65 == v23) {
                                        require(v2 != v2, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                        v2 = v35 = 1;
                                        v27 = v36 = 1;
                                    } else if (66 == v23) {
                                        require(v2 < v2, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                        v2 = v37 = 1;
                                        v27 = v38 = 1;
                                    } else if (67 == v23) {
                                        require(v2 >= v2, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                        v2 = v39 = 1;
                                        v27 = v40 = 1;
                                    } else if (68 == v23) {
                                        require(v2 > v2, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                        v2 = v41 = 1;
                                        v27 = v42 = 1;
                                    } else if (69 == v23) {
                                        require(v2 <= v2, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                        v2 = v43 = 1;
                                        v27 = v44 = 1;
                                    } else if (70 == v23) {
                                        require(!v2, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                        v2 = v45 = 1;
                                        v27 = v46 = 1;
                                    } else if (71 == v23) {
                                        require(v2, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                        v2 = v47 = 1;
                                        v27 = v48 = 1;
                                    } else if (72 == v23) {
                                        if (v2 != v2) {
                                            return 0;
                                        } else {
                                            v2 = v49 = 1;
                                            v27 = v50 = 1;
                                        }
                                    } else if (73 == v23) {
                                        if (v2 == v2) {
                                            return 0;
                                        } else {
                                            v2 = v51 = 1;
                                            v27 = v52 = 1;
                                        }
                                    } else if (74 == v23) {
                                        if (v2 >= v2) {
                                            return 0;
                                        } else {
                                            v2 = v53 = 1;
                                            v27 = v54 = 1;
                                        }
                                    } else if (75 == v23) {
                                        if (v2 < v2) {
                                            return 0;
                                        } else {
                                            v2 = v55 = 1;
                                            v27 = v56 = 1;
                                        }
                                    } else if (76 == v23) {
                                        if (v2 <= v2) {
                                            return 0;
                                        } else {
                                            v2 = v57 = 1;
                                            v27 = v58 = 1;
                                        }
                                    } else if (77 == v23) {
                                        if (v2 > v2) {
                                            return 0;
                                        } else {
                                            v2 = v59 = 1;
                                            v27 = v60 = 1;
                                        }
                                    } else if (78 == v23) {
                                        if (v2) {
                                            return 0;
                                        } else {
                                            v2 = v61 = 1;
                                            v27 = v62 = 1;
                                        }
                                    } else if (79 == v23) {
                                        if (!v2) {
                                            return 0;
                                        } else {
                                            v2 = v63 = 1;
                                            v27 = v64 = 1;
                                        }
                                    }
                                } else if (49 == v23) {
                                    v2 = uint8(v2);
                                    v27 = v65 = 1;
                                    // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                                } else if (50 == v23) {
                                    v2 = uint16(v2);
                                    v27 = v66 = 1;
                                    // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                                } else if (51 == v23) {
                                    v2 = uint64(v2);
                                    v27 = v67 = 1;
                                    // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                                } else if (52 == v23) {
                                    v2 = uint112(v2);
                                    v27 = v68 = 1;
                                    // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                                } else if (53 == v23) {
                                    v2 = uint128(v2);
                                    v27 = v69 = 1;
                                    // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                                }
                            } else if (32 == v23) {
                                v2 = v70 = MEM[1 + v2];
                                v27 = v71 = 33;
                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                            } else if (33 == v23) {
                                v2 = v72 = uint8(MEM[1 + v2]);
                                v27 = v73 = 2;
                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                            } else if (34 == v23) {
                                v2 = v74 = uint16(MEM[1 + v2]);
                                v27 = v75 = 3;
                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                            } else if (35 == v23) {
                                v2 = v76 = uint64(MEM[1 + v2]);
                                v27 = v77 = 9;
                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                            } else if (36 == v23) {
                                v2 = v78 = uint112(MEM[1 + v2]);
                                v27 = v79 = 7;
                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                            } else if (37 == v23) {
                                v2 = v80 = uint128(MEM[1 + v2]);
                                v27 = v81 = 9;
                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                            } else if (38 == v23) {
                                v2 = v82 = address(MEM[1 + v2]);
                                v27 = v83 = 13;
                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                            } else if (42 == v23) {
                                v2 = v2 << 256;
                                v27 = v84 = 1;
                                // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                            }
                        } else if (17 == v23) {
                            v2 += v2;
                            v27 = v85 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (18 == v23) {
                            v2 = v2 - v2;
                            v27 = v86 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (19 == v23) {
                            v2 *= v2;
                            v27 = v87 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (20 == v23) {
                            v2 = v2 / v2;
                            v27 = v88 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (21 == v23) {
                            v2 = v2 / v2;
                            v27 = v89 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (22 == v23) {
                            v2 = v2 & v2;
                            v27 = v90 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (23 == v23) {
                            v2 = v2 | v2;
                            v27 = v91 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (24 == v23) {
                            v2 = v2 ^ v2;
                            v27 = v92 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (25 == v23) {
                            v2 = ~v2;
                            v27 = v93 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (26 == v23) {
                            v2 = v2 << (MEM[1 + v2] >> 248);
                            v27 = v94 = 2;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (27 == v23) {
                            v2 = v2 >> (MEM[1 + v2] >> 248);
                            v27 = v95 = 2;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (28 == v23) {
                            v2 = v2 + 1;
                            v27 = v96 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (29 == v23) {
                            v2 = v2 - 1;
                            v27 = v97 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (30 == v23) {
                            v2 = v2 - v2;
                            v27 = v98 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        } else if (31 == v23) {
                            v2 = v2 / v2;
                            v27 = v99 = 1;
                            // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                        }
                    } else if (1 == v23) {
                        v2 = v100 = MEM[32];
                        v27 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (2 == v23) {
                        v2 = v101 = MEM[64];
                        v27 = v102 = 1;
                    } else if (3 == v23) {
                        v2 = v103 = MEM[96];
                        v27 = v104 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (4 == v23) {
                        v2 = v105 = MEM[128];
                        v27 = v106 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (5 == v23) {
                        v2 = v107 = MEM[160];
                        v27 = v108 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (6 == v23) {
                        v2 = v109 = MEM[192];
                        v27 = v110 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (7 == v23) {
                        v2 = v111 = MEM[224];
                        v27 = v112 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (8 == v23) {
                        v2 = v113 = MEM[MEM[0]];
                        MEM[0] = MEM[0] - 32;
                        v27 = v114 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (10 == v23) {
                        v2 = v115 = this.balance;
                        v27 = v116 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (11 == v23) {
                        v2 = v117 = block.coinbase;
                        v27 = v118 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (12 == v23) {
                        v2 = v119 = block.timestamp;
                        v27 = v120 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (13 == v23) {
                        v2 = v121 = block.number;
                        v27 = v122 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (14 == v23) {
                        v2 = v123 = BASEFEE();
                        v27 = v124 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    } else if (15 == v23) {
                        v2 = v125 = msg.gas;
                        v27 = v126 = 1;
                        // Unknown jump to Block 0x23220x15e3. Refer to 3-address code (TAC);
                    }
                    v2 = v2 + v27;
                }
                MEM[32 + MEM[0]] = v2;
                MEM[0] += 32;
                // Unknown jump to Block 0x2ad20x15e3. Refer to 3-address code (TAC);
            } else if (int16.max == uint16(v4 >> 240)) {
                v127 = address(v4).delegatecall(MEM[v15e30x1679 + 32:v15e30x1679 + 32 + uint16(v15e30x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v127) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            v128 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v4 >> 200)) {
                                v128 = v129 = MEM[0] - v128;
                                v130 = uint8(uint24(v4 >> 200) >> 12) + v129 >> 5 << 5;
                                if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                    v130 = v131 = 32 + v130;
                                    MEM[v131] = 0;
                                }
                                MEM[0] = v130;
                            }
                            RETURNDATACOPY(32 + v128, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                    v2 = v132 = 32 + uint16(v4 >> 160);
                }
            } else if (32765 == uint16(v4 >> 240)) {
                v133 = uint16(v4 >> 160);
                v134 = MEM[12 + v2] >> 224;
                if (0xa85f1d24 == v134) {
                    v133 = 12 + v2;
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v135 = MEM[4 + v133].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v135) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v136 = 0x70a08231;
                        if (v136) {
                            v136 = v137 = 0x70a08230;
                        }
                        require(MEM[36 + v133] <= v136, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        if (MEM[68 + v133]) {
                            v138 = block.coinbase.call().value(MEM[68 + v133]).gas(msg.gas);
                        }
                    }
                } else if (0x4df86adf == v134) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v139 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v139) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v140 = 0x70a08231;
                        if (v140) {
                            v140 = v141 = 0x70a08230;
                        }
                        require(MEM[48 + v2] <= v140, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0xa9059cbb;
                        MEM[32 + MSIZE()] = MEM[112 + v2];
                        MEM[64 + MSIZE()] = v140;
                        v142 = MEM[16 + v2].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                        if (MEM[80 + v2]) {
                            v143 = block.coinbase.call().value(MEM[80 + v2]).gas(msg.gas);
                        }
                    }
                } else if (0x5ec9cad == v134) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v144 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v144) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v145 = 0x70a08231;
                        if (v145) {
                            v145 = v146 = 0x70a08230;
                        }
                        require(MEM[16 + v2] <= v145, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0x2e1a7d4d;
                        MEM[32 + MSIZE()] = v145;
                        v147 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                        if (MEM[48 + v2]) {
                            v148 = block.coinbase.call().value(MEM[48 + v2]).gas(msg.gas);
                        }
                        v149 = this.balance;
                        v150 = MEM[80 + v2].call().value(v149).gas(msg.gas);
                    }
                } else if (0x9b81788b == v134) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v151 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v151) {
                        v152 = v153 = 0;
                        v154 = v155 = 0;
                    } else {
                        v152 = MEM[32 + MSIZE()];
                        v154 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v152) / (9970 * (v154 - MEM[48 + v2]));
                    MEM[0] += 32;
                } else if (0x8bceaa18 == v134) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v156 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v156) {
                        v157 = v158 = 0;
                        v159 = v160 = 0;
                    } else {
                        v157 = MEM[32 + MSIZE()];
                        v159 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v159) / (9970 * (v157 - MEM[48 + v2]));
                    MEM[0] += 32;
                } else if (0x84f16ca0 == v134) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v161 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v161) {
                        v162 = v163 = 0;
                        v164 = v165 = 0;
                    } else {
                        v162 = MEM[32 + MSIZE()];
                        v164 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v2] * v162 / (10000 * v164 + 9970 * MEM[48 + v2]);
                    MEM[0] += 32;
                } else if (0x95b66162 == v134) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v166 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v166) {
                        v167 = v168 = 0;
                        v169 = v170 = 0;
                    } else {
                        v167 = MEM[32 + MSIZE()];
                        v169 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v2] * v169 / (10000 * v167 + 9970 * MEM[48 + v2]);
                    MEM[0] += 32;
                } else if (0x9a23842e == v134) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v171 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v171) {
                        v172 = v173 = 0;
                        v174 = v175 = 0;
                    } else {
                        v172 = MEM[32 + MSIZE()];
                        v174 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v172) / (MEM[80 + v2] * (v174 - MEM[48 + v2]));
                    MEM[0] += 32;
                } else if (0x4fae2f23 == v134) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v176 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v176) {
                        v177 = v178 = 0;
                        v179 = v180 = 0;
                    } else {
                        v177 = MEM[32 + MSIZE()];
                        v179 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v179) / (MEM[80 + v2] * (v177 - MEM[48 + v2]));
                    MEM[0] += 32;
                } else if (0xa9f2812f == v134) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v181 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v181) {
                        v182 = v183 = 0;
                        v184 = v185 = 0;
                    } else {
                        v182 = MEM[32 + MSIZE()];
                        v184 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v2] * MEM[48 + v2] * v182 / (10000 * v184 + MEM[80 + v2] * MEM[48 + v2]);
                    MEM[0] += 32;
                } else {
                    require(0xf93a1716 == v134);
                    MEM[MSIZE()] = 0x902f1ac;
                    v186 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v186) {
                        v187 = v188 = 0;
                        v189 = v190 = 0;
                    } else {
                        v187 = MEM[32 + MSIZE()];
                        v189 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v2] * MEM[48 + v2] * v189 / (10000 * v187 + MEM[80 + v2] * MEM[48 + v2]);
                    MEM[0] += 32;
                }
                v2 = 12 + v133;
                // Unknown jump to Block 0x2ad20x15e3. Refer to 3-address code (TAC);
            } else if (32762 == uint16(v4 >> 240)) {
                v191 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                if (0x800000 & uint24(v4 >> 176)) {
                    v191 = v192 = MEM[0] - (v191 - 32);
                }
                v193 = address(v4).call(MEM[v15e30x1679 + 32:v15e30x1679 + 32 + uint16(v15e30x1680 >> 160)], MEM[0:0]).value(MEM[v191]).gas(msg.gas);
                if (!v193) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!bool(MEM[v191])) {
                        if (uint24(v4 >> 200)) {
                            if (uint24.max != uint24(v4 >> 200)) {
                                v194 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                if (0x800000 & uint24(v4 >> 200)) {
                                    v194 = v195 = MEM[0] - v194;
                                    v196 = uint8(uint24(v4 >> 200) >> 12) + v195 >> 5 << 5;
                                    if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                        v196 = v197 = 32 + v196;
                                        MEM[v197] = 0;
                                    }
                                    MEM[0] = v196;
                                }
                                RETURNDATACOPY(32 + v194, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                            }
                        }
                    }
                    v2 = v198 = 32 + uint16(v4 >> 160);
                }
            }
            v2 += v2;
            if (v2 >= v2) {
                return MEM[MEM[0]:MEM[0] + 32];
            }
            v199 = address(v4).call(MEM[v15e30x1679 + 32:v15e30x1679 + 32 + uint16(v15e30x1680 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v4 >> 176).gas(msg.gas);
            if (!v199) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!bool(0x7fffffffffffffffffff & v4 >> 176)) {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            v200 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v4 >> 200)) {
                                v200 = v201 = MEM[0] - v200;
                                v202 = uint8(uint24(v4 >> 200) >> 12) + v201 >> 5 << 5;
                                if (0x1f & uint8(uint24(v4 >> 200) >> 12)) {
                                    v202 = v203 = 32 + v202;
                                    MEM[v203] = 0;
                                }
                                MEM[0] = v202;
                            }
                            RETURNDATACOPY(32 + v200, 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                }
                v2 = v204 = 32 + uint16(v4 >> 160);
            }
        }
    }
}

function isValidSignature() public payable { 
    return 0x20c13b0b00000000000000000000000000000000000000000000000000000000;
}

function isValidSignature() public payable { 
    return 0x1626ba7e00000000000000000000000000000000000000000000000000000000;
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public payable { 
    CALLDATACOPY(288, userData.data, userData.length);
    v0 = v1 = 288 + userData.length;
    v0 = v2 = 288;
    while (1) {
        v3 = MEM[v0];
        if (bool(0x8000 & v3 >> 240)) {
            // Unknown jump to Block 0x1fd. Refer to 3-address code (TAC);
        }
        if (uint24(v3 >> 176)) {
            if (uint24.max != uint24(v3 >> 176)) {
                v4 = v5 = (0xfff & uint24(v3 >> 176)) + v0;
                v6 = v7 = uint8(uint24(v3 >> 176) >> 12);
                if (v7) {
                    v8 = v9 = 32 + ((0x7 & uint24(v3 >> 176) >> 20) << 5);
                    if (0x800000 & uint24(v3 >> 176)) {
                        v8 = v10 = MEM[0] - (v9 - 32);
                    }
                    while (!bool(v6)) {
                        if (32 > v6) {
                            MEM[v4] = MEM[v4] & ~((1 << (v6 << 3)) - 1) | MEM[v8] & (1 << (v6 << 3)) - 1;
                        } else {
                            MEM[v4] = MEM[v8];
                            v4 += 32;
                            v8 += 32;
                            v6 = v6 - 32;
                        }
                    }
                }
            }
        }
        if (!uint16(v3 >> 240)) {
            v0 = v11 = uint16.max + v3;
        } else if (32764 == uint16(v3 >> 240)) {
            v12 = address(v3).call(MEM[v155d_0x2 + 32:v155d_0x2 + 32 + uint16(v10b >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v12) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!False) {
                    if (uint24(v3 >> 200)) {
                        if (uint24.max != uint24(v3 >> 200)) {
                            v13 = v14 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v3 >> 200)) {
                                v13 = v15 = MEM[0] - v14;
                                v16 = v17 = uint8(uint24(v3 >> 200) >> 12) + v15 >> 5 << 5;
                                if (0x1f & uint8(uint24(v3 >> 200) >> 12)) {
                                    v16 = v18 = 32 + v17;
                                    MEM[v18] = 0;
                                }
                                MEM[0] = v16;
                            }
                            RETURNDATACOPY(32 + v13, 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                        }
                    }
                }
                v0 = v19 = 32 + uint16(v3 >> 160);
            }
        } else if (32766 == uint16(v3 >> 240)) {
            v20 = address(v3).staticcall(MEM[v155d_0x2 + 32:v155d_0x2 + 32 + uint16(v10b >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v20) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (uint24(v3 >> 200)) {
                    if (uint24.max != uint24(v3 >> 200)) {
                        v21 = v22 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v3 >> 200)) {
                            v21 = v23 = MEM[0] - v22;
                            v24 = v25 = uint8(uint24(v3 >> 200) >> 12) + v23 >> 5 << 5;
                            if (0x1f & uint8(uint24(v3 >> 200) >> 12)) {
                                v24 = v26 = 32 + v25;
                                MEM[v26] = 0;
                            }
                            MEM[0] = v24;
                        }
                        RETURNDATACOPY(32 + v21, 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                    }
                }
                v0 = v27 = 32 + uint16(v3 >> 160);
            }
        } else if (32763 == uint16(v3 >> 240)) {
            v0 = v28 = 12 + uint16(v3 >> 160);
            v0 += 12;
            while (1) {
                v29 = MEM[v0] >> 248;
                if (!v29) {
                    break;
                }
                if (v29 > 16) {
                    if (v29 >= 32) {
                        if (v29 >= 48) {
                            if (v29 >= 48) {
                                if (v29 >= 80) {
                                    if (v29 < 96) {
                                        if (80 == v29) {
                                            v30 = v31 = MEM[1 + v0] >> 248;
                                            v32 = v33 = MEM[0] - (v31 << 5);
                                            MEM[0] = v33;
                                            v0 = v34 = 0;
                                            do {
                                                v32 += 32;
                                                v0 += MEM[v32];
                                                v30 = v30 - 1;
                                            } while (!bool(v30));
                                            v35 = v36 = 2;
                                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                                        } else if (81 == v29) {
                                            v37 = v38 = MEM[1 + v0] >> 248;
                                            v39 = v40 = MEM[0];
                                            v0 = v41 = 0;
                                            do {
                                                v0 += MEM[v39];
                                                v39 = v39 - 32;
                                                v37 = v37 - 1;
                                            } while (!bool(v37));
                                            v35 = v42 = 2;
                                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else if (64 == v29) {
                                    v0 = v43 = 1;
                                    v35 = v44 = 1;
                                } else if (65 == v29) {
                                    require(v0 != v0, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                    v0 = v45 = 1;
                                    v35 = v46 = 1;
                                } else if (66 == v29) {
                                    require(v0 < v0, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v47 = 1;
                                    v35 = v48 = 1;
                                } else if (67 == v29) {
                                    require(v0 >= v0, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                    v0 = v49 = 1;
                                    v35 = v50 = 1;
                                } else if (68 == v29) {
                                    require(v0 > v0, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v51 = 1;
                                    v35 = v52 = 1;
                                } else if (69 == v29) {
                                    require(v0 <= v0, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                    v0 = v53 = 1;
                                    v35 = v54 = 1;
                                } else if (70 == v29) {
                                    require(!v0, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                    v0 = v55 = 1;
                                    v35 = v56 = 1;
                                } else if (71 == v29) {
                                    require(v0, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                    v0 = v57 = 1;
                                    v35 = v58 = 1;
                                } else if (72 == v29) {
                                    if (v0 != v0) {
                                        return 0;
                                    } else {
                                        v0 = v59 = 1;
                                        v35 = v60 = 1;
                                    }
                                } else if (73 == v29) {
                                    if (v0 == v0) {
                                        return 0;
                                    } else {
                                        v0 = v61 = 1;
                                        v35 = v62 = 1;
                                    }
                                } else if (74 == v29) {
                                    if (v0 >= v0) {
                                        return 0;
                                    } else {
                                        v0 = v63 = 1;
                                        v35 = v64 = 1;
                                    }
                                } else if (75 == v29) {
                                    if (v0 < v0) {
                                        return 0;
                                    } else {
                                        v0 = v65 = 1;
                                        v35 = v66 = 1;
                                    }
                                } else if (76 == v29) {
                                    if (v0 <= v0) {
                                        return 0;
                                    } else {
                                        v0 = v67 = 1;
                                        v35 = v68 = 1;
                                    }
                                } else if (77 == v29) {
                                    if (v0 > v0) {
                                        return 0;
                                    } else {
                                        v0 = v69 = 1;
                                        v35 = v70 = 1;
                                    }
                                } else if (78 == v29) {
                                    if (v0) {
                                        return 0;
                                    } else {
                                        v0 = v71 = 1;
                                        v35 = v72 = 1;
                                    }
                                } else if (79 == v29) {
                                    if (!v0) {
                                        return 0;
                                    } else {
                                        v0 = v73 = 1;
                                        v35 = v74 = 1;
                                    }
                                }
                            } else if (49 == v29) {
                                v0 = uint8(v0);
                                v35 = v75 = 1;
                                // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                            } else if (50 == v29) {
                                v0 = uint16(v0);
                                v35 = v76 = 1;
                                // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                            } else if (51 == v29) {
                                v0 = uint64(v0);
                                v35 = v77 = 1;
                                // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                            } else if (52 == v29) {
                                v0 = uint112(v0);
                                v35 = v78 = 1;
                                // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                            } else if (53 == v29) {
                                v0 = uint128(v0);
                                v35 = v79 = 1;
                                // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                            }
                        } else if (32 == v29) {
                            v0 = v80 = MEM[1 + v0];
                            v35 = v81 = 33;
                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                        } else if (33 == v29) {
                            v0 = v82 = uint8(MEM[1 + v0]);
                            v35 = v83 = 2;
                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                        } else if (34 == v29) {
                            v0 = v84 = uint16(MEM[1 + v0]);
                            v35 = v85 = 3;
                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                        } else if (35 == v29) {
                            v0 = v86 = uint64(MEM[1 + v0]);
                            v35 = v87 = 9;
                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                        } else if (36 == v29) {
                            v0 = v88 = uint112(MEM[1 + v0]);
                            v35 = v89 = 7;
                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                        } else if (37 == v29) {
                            v0 = v90 = uint128(MEM[1 + v0]);
                            v35 = v91 = 9;
                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                        } else if (38 == v29) {
                            v0 = v92 = address(MEM[1 + v0]);
                            v35 = v93 = 13;
                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                        } else if (42 == v29) {
                            v0 = v0 << 256;
                            v35 = v94 = 1;
                            // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                        }
                    } else if (17 == v29) {
                        v0 += v0;
                        v35 = v95 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (18 == v29) {
                        v0 = v0 - v0;
                        v35 = v96 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (19 == v29) {
                        v0 *= v0;
                        v35 = v97 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (20 == v29) {
                        v0 = v0 / v0;
                        v35 = v98 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (21 == v29) {
                        v0 = v0 / v0;
                        v35 = v99 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (22 == v29) {
                        v0 = v0 & v0;
                        v35 = v100 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (23 == v29) {
                        v0 = v0 | v0;
                        v35 = v101 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (24 == v29) {
                        v0 = v0 ^ v0;
                        v35 = v102 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (25 == v29) {
                        v0 = ~v0;
                        v35 = v103 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (26 == v29) {
                        v0 = v0 << (MEM[1 + v0] >> 248);
                        v35 = v104 = 2;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (27 == v29) {
                        v0 = v0 >> (MEM[1 + v0] >> 248);
                        v35 = v105 = 2;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (28 == v29) {
                        v0 = v0 + 1;
                        v35 = v106 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (29 == v29) {
                        v0 = v0 - 1;
                        v35 = v107 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (30 == v29) {
                        v0 = v0 - v0;
                        v35 = v108 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    } else if (31 == v29) {
                        v0 = v0 / v0;
                        v35 = v109 = 1;
                        // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                    }
                } else if (1 == v29) {
                    v0 = v110 = MEM[32];
                    v35 = v111 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (2 == v29) {
                    v0 = v112 = MEM[64];
                    v35 = v113 = 1;
                } else if (3 == v29) {
                    v0 = v114 = MEM[96];
                    v35 = v115 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (4 == v29) {
                    v0 = v116 = MEM[128];
                    v35 = v117 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (5 == v29) {
                    v0 = v118 = MEM[160];
                    v35 = v119 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (6 == v29) {
                    v0 = v120 = MEM[192];
                    v35 = v121 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (7 == v29) {
                    v0 = v122 = MEM[224];
                    v35 = v123 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (8 == v29) {
                    v0 = v124 = MEM[MEM[0]];
                    MEM[0] = MEM[0] - 32;
                    v35 = v125 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (10 == v29) {
                    v0 = v126 = this.balance;
                    v35 = v127 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (11 == v29) {
                    v0 = v128 = block.coinbase;
                    v35 = v129 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (12 == v29) {
                    v0 = v130 = block.timestamp;
                    v35 = v131 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (13 == v29) {
                    v0 = v132 = block.number;
                    v35 = v133 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (14 == v29) {
                    v0 = v134 = BASEFEE();
                    v35 = v135 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                } else if (15 == v29) {
                    v0 = v136 = msg.gas;
                    v35 = v137 = 1;
                    // Unknown jump to Block 0xdad. Refer to 3-address code (TAC);
                }
                v0 = v0 + v35;
            }
            MEM[32 + MEM[0]] = v0;
            MEM[0] += 32;
            // Unknown jump to Block 0x155d. Refer to 3-address code (TAC);
        } else if (int16.max == uint16(v3 >> 240)) {
            v138 = address(v3).delegatecall(MEM[v155d_0x2 + 32:v155d_0x2 + 32 + uint16(v10b >> 160)], MEM[0:0]).gas(msg.gas);
            if (!v138) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (uint24(v3 >> 200)) {
                    if (uint24.max != uint24(v3 >> 200)) {
                        v139 = v140 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v3 >> 200)) {
                            v139 = v141 = MEM[0] - v140;
                            v142 = v143 = uint8(uint24(v3 >> 200) >> 12) + v141 >> 5 << 5;
                            if (0x1f & uint8(uint24(v3 >> 200) >> 12)) {
                                v142 = v144 = 32 + v143;
                                MEM[v144] = 0;
                            }
                            MEM[0] = v142;
                        }
                        RETURNDATACOPY(32 + v139, 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                    }
                }
                v0 = v145 = 32 + uint16(v3 >> 160);
            }
        } else if (32765 == uint16(v3 >> 240)) {
            v146 = v147 = uint16(v3 >> 160);
            v148 = MEM[12 + v0] >> 224;
            if (0xa85f1d24 == v148) {
                v146 = 12 + v0;
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v149 = MEM[4 + v146].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v149) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v150 = v151 = 0x70a08231;
                    if (v151) {
                        v150 = v152 = 0x70a08230;
                    }
                    require(MEM[36 + v146] <= v150, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    if (MEM[68 + v146]) {
                        v153 = block.coinbase.call().value(MEM[68 + v146]).gas(msg.gas);
                    }
                }
            } else if (0x4df86adf == v148) {
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v154 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v154) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v155 = v156 = 0x70a08231;
                    if (v156) {
                        v155 = v157 = 0x70a08230;
                    }
                    require(MEM[48 + v0] <= v155, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    MEM[MSIZE()] = 0xa9059cbb;
                    MEM[32 + MSIZE()] = MEM[112 + v0];
                    MEM[64 + MSIZE()] = v155;
                    v158 = MEM[16 + v0].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                    if (MEM[80 + v0]) {
                        v159 = block.coinbase.call().value(MEM[80 + v0]).gas(msg.gas);
                    }
                }
            } else if (0x5ec9cad == v148) {
                MEM[MSIZE()] = 0x70a08231;
                MEM[32 + MSIZE()] = this;
                v160 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                if (!v160) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v161 = v162 = 0x70a08231;
                    if (v162) {
                        v161 = v163 = 0x70a08230;
                    }
                    require(MEM[16 + v0] <= v161, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                    MEM[MSIZE()] = 0x2e1a7d4d;
                    MEM[32 + MSIZE()] = v161;
                    v164 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                    if (MEM[48 + v0]) {
                        v165 = block.coinbase.call().value(MEM[48 + v0]).gas(msg.gas);
                    }
                    v166 = this.balance;
                    v167 = MEM[80 + v0].call().value(v166).gas(msg.gas);
                }
            } else if (0x9b81788b == v148) {
                MEM[MSIZE()] = 0x902f1ac;
                v168 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v168) {
                    v169 = v170 = 0;
                    v171 = v172 = 0;
                } else {
                    v169 = v173 = MEM[32 + MSIZE()];
                    v171 = v174 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v169) / (9970 * (v171 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x8bceaa18 == v148) {
                MEM[MSIZE()] = 0x902f1ac;
                v175 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v175) {
                    v176 = v177 = 0;
                    v178 = v179 = 0;
                } else {
                    v176 = v180 = MEM[32 + MSIZE()];
                    v178 = v181 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v178) / (9970 * (v176 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x84f16ca0 == v148) {
                MEM[MSIZE()] = 0x902f1ac;
                v182 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v182) {
                    v183 = v184 = 0;
                    v185 = v186 = 0;
                } else {
                    v183 = v187 = MEM[32 + MSIZE()];
                    v185 = v188 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v183 / (10000 * v185 + 9970 * MEM[48 + v0]);
                MEM[0] += 32;
            } else if (0x95b66162 == v148) {
                MEM[MSIZE()] = 0x902f1ac;
                v189 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v189) {
                    v190 = v191 = 0;
                    v192 = v193 = 0;
                } else {
                    v190 = v194 = MEM[32 + MSIZE()];
                    v192 = v195 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v192 / (10000 * v190 + 9970 * MEM[48 + v0]);
                MEM[0] += 32;
            } else if (0x9a23842e == v148) {
                MEM[MSIZE()] = 0x902f1ac;
                v196 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v196) {
                    v197 = v198 = 0;
                    v199 = v200 = 0;
                } else {
                    v197 = v201 = MEM[32 + MSIZE()];
                    v199 = v202 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v197) / (MEM[80 + v0] * (v199 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0x4fae2f23 == v148) {
                MEM[MSIZE()] = 0x902f1ac;
                v203 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v203) {
                    v204 = v205 = 0;
                    v206 = v207 = 0;
                } else {
                    v204 = v208 = MEM[32 + MSIZE()];
                    v206 = v209 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v206) / (MEM[80 + v0] * (v204 - MEM[48 + v0]));
                MEM[0] += 32;
            } else if (0xa9f2812f == v148) {
                MEM[MSIZE()] = 0x902f1ac;
                v210 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v210) {
                    v211 = v212 = 0;
                    v213 = v214 = 0;
                } else {
                    v211 = v215 = MEM[32 + MSIZE()];
                    v213 = v216 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v211 / (10000 * v213 + MEM[80 + v0] * MEM[48 + v0]);
                MEM[0] += 32;
            } else {
                require(0xf93a1716 == v148);
                MEM[MSIZE()] = 0x902f1ac;
                v217 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                if (!v217) {
                    v218 = v219 = 0;
                    v220 = v221 = 0;
                } else {
                    v218 = v222 = MEM[32 + MSIZE()];
                    v220 = v223 = 0x902f1ac;
                }
                MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v220 / (10000 * v218 + MEM[80 + v0] * MEM[48 + v0]);
                MEM[0] += 32;
            }
            v0 = 12 + v146;
            // Unknown jump to Block 0x155d. Refer to 3-address code (TAC);
        } else if (32762 == uint16(v3 >> 240)) {
            v224 = v225 = 32 + ((0x7 & uint24(v3 >> 176) >> 20) << 5);
            if (0x800000 & uint24(v3 >> 176)) {
                v224 = v226 = MEM[0] - (v225 - 32);
            }
            v227 = address(v3).call(MEM[v155d_0x2 + 32:v155d_0x2 + 32 + uint16(v10b >> 160)], MEM[0:0]).value(MEM[v224]).gas(msg.gas);
            if (!v227) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!bool(MEM[v224])) {
                    if (uint24(v3 >> 200)) {
                        if (uint24.max != uint24(v3 >> 200)) {
                            v228 = v229 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                            if (0x800000 & uint24(v3 >> 200)) {
                                v228 = v230 = MEM[0] - v229;
                                v231 = v232 = uint8(uint24(v3 >> 200) >> 12) + v230 >> 5 << 5;
                                if (0x1f & uint8(uint24(v3 >> 200) >> 12)) {
                                    v231 = v233 = 32 + v232;
                                    MEM[v233] = 0;
                                }
                                MEM[0] = v231;
                            }
                            RETURNDATACOPY(32 + v228, 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                        }
                    }
                }
                v0 = v234 = 32 + uint16(v3 >> 160);
            }
        }
        v0 += v0;
        if (v0 >= v0) {
            MEM[MSIZE()] = 0xa9059cbb;
            MEM[32 + MSIZE()] = msg.sender;
            MEM[64 + MSIZE()] = msg.data[36 + feeAmounts] + msg.data[36 + amounts];
            v235 = msg.data[36 + tokens].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
        }
        v236 = address(v3).call(MEM[v155d_0x2 + 32:v155d_0x2 + 32 + uint16(v10b >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v3 >> 176).gas(msg.gas);
        if (!v236) {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!bool(0x7fffffffffffffffffff & v3 >> 176)) {
                if (uint24(v3 >> 200)) {
                    if (uint24.max != uint24(v3 >> 200)) {
                        v237 = v238 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                        if (0x800000 & uint24(v3 >> 200)) {
                            v237 = v239 = MEM[0] - v238;
                            v240 = v241 = uint8(uint24(v3 >> 200) >> 12) + v239 >> 5 << 5;
                            if (0x1f & uint8(uint24(v3 >> 200) >> 12)) {
                                v240 = v242 = 32 + v241;
                                MEM[v242] = 0;
                            }
                            MEM[0] = v240;
                        }
                        RETURNDATACOPY(32 + v237, 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                    }
                }
            }
            v0 = v243 = 32 + uint16(v3 >> 160);
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__() private { 
    if (msg.data.length) {
        if (0x28472417 == msg.data[0] >> 224) {
            0x28472417();
        } else {
            if (0xfa461e33 != msg.data[0] >> 224) {
                if (0x23a69e75 != msg.data[0] >> 224) {
                    if (0x8b418713 == msg.data[0] >> 224) {
                        callFunction(address,(address,uint256),bytes);
                    } else if (0x20c13b0b == msg.data[0] >> 224) {
                        isValidSignature(bytes,bytes);
                    } else if (0x1626ba7e == msg.data[0] >> 224) {
                        isValidSignature(bytes32,bytes);
                    } else if (0xf04f2707 == msg.data[0] >> 224) {
                        receiveFlashLoan(address[],uint256[],uint256[],bytes);
                    } else if (0xab6291fe == msg.data[0] >> 224) {
                        lockAcquired(bytes);
                    } else if (0x923b8a2a == msg.data[0] >> 224) {
                        swapCallback(uint256,uint256,bytes);
                    } else {
                        if (128 == msg.data[100]) {
                            if (20 == msg.data[msg.data[100]]) {
                                if (!msg.data[36]) {
                                    MEM[MEM[uint8.max + 1]] = 0x902f1ac;
                                    v0 = msg.sender.staticcall(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 4], MEM[MEM[uint8.max + 1]:MEM[uint8.max + 1] + 96]).gas(msg.gas);
                                    if (!v0) {
                                        v1 = v2 = 0;
                                        v3 = v4 = 0;
                                    } else {
                                        v1 = v5 = MEM[32 + MEM[uint8.max + 1]];
                                        v3 = v6 = 0x902f1ac;
                                    }
                                    v7 = v8 = 1 + 10000 * (msg.data[68] * v3) / ((msg.data[32 + msg.data[100]] >> 96) * (v1 - msg.data[68]));
                                } else {
                                    MEM[MEM[uint8.max + 1]] = 0x902f1ac;
                                    v9 = msg.sender.staticcall(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 4], MEM[MEM[uint8.max + 1]:MEM[uint8.max + 1] + 96]).gas(msg.gas);
                                    if (!v9) {
                                        v10 = v11 = 0;
                                        v12 = v13 = 0;
                                    } else {
                                        v10 = v14 = MEM[32 + MEM[uint8.max + 1]];
                                        v12 = v15 = 0x902f1ac;
                                    }
                                    v7 = v16 = 1 + 10000 * (msg.data[36] * v10) / ((msg.data[32 + msg.data[100]] >> 96) * (v12 - msg.data[36]));
                                }
                                MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
                                MEM[32 + MEM[uint8.max + 1]] = msg.sender;
                                MEM[64 + MEM[uint8.max + 1]] = v7;
                                v17 = v18.call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
                                return;
                            } else {
                                if (!msg.data[36]) {
                                    MEM[32] = msg.data[68];
                                } else {
                                    MEM[32] = msg.data[36];
                                }
                                MEM[0] = 32;
                                v19 = v20 = 4 + msg.data[100];
                            }
                        } else {
                            v21 = v22 = msg.data[4];
                            if (32 != v22) {
                                v21 = v23 = msg.data[36];
                                if (64 != v23) {
                                    v21 = v24 = msg.data[132];
                                    if (160 != v24) {
                                    }
                                }
                            }
                            v19 = v25 = 4 + v21;
                        }
                        CALLDATACOPY(288, 32 + v19, msg.data[v19]);
                        v26 = 288 + msg.data[v19];
                        v26 = v27 = 288;
                        while (1) {
                            v28 = MEM[v26];
                            if (bool(0x8000 & v28 >> 240)) {
                                // Unknown jump to Block 0x17720x0. Refer to 3-address code (TAC);
                            }
                            if (uint24(v28 >> 176)) {
                                if (uint24.max != uint24(v28 >> 176)) {
                                    v29 = (0xfff & uint24(v28 >> 176)) + v26;
                                    v30 = uint8(uint24(v28 >> 176) >> 12);
                                    if (v30) {
                                        v31 = 32 + ((0x7 & uint24(v28 >> 176) >> 20) << 5);
                                        if (0x800000 & uint24(v28 >> 176)) {
                                            v31 = v32 = MEM[0] - (v31 - 32);
                                        }
                                        while (!bool(v30)) {
                                            if (32 > v30) {
                                                MEM[v29] = MEM[v29] & ~((1 << (v30 << 3)) - 1) | MEM[v31] & (1 << (v30 << 3)) - 1;
                                            } else {
                                                MEM[v29] = MEM[v31];
                                                v29 += 32;
                                                v31 += 32;
                                                v30 = v30 - 32;
                                            }
                                        }
                                        // Unknown jump to Block 0x17300x0. Refer to 3-address code (TAC);
                                    }
                                }
                            }
                            if (!uint16(v28 >> 240)) {
                                v26 = v33 = uint16.max + v28;
                            } else if (32764 == uint16(v28 >> 240)) {
                                v34 = address(v28).call(MEM[v00x1679 + 32:v00x1679 + 32 + uint16(v00x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                                if (!v34) {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                } else {
                                    if (!False) {
                                        if (uint24(v28 >> 200)) {
                                            if (uint24.max != uint24(v28 >> 200)) {
                                                v35 = (0x7 & uint24(v28 >> 200) >> 20) << 5;
                                                if (0x800000 & uint24(v28 >> 200)) {
                                                    v35 = v36 = MEM[0] - v35;
                                                    v37 = uint8(uint24(v28 >> 200) >> 12) + v36 >> 5 << 5;
                                                    if (0x1f & uint8(uint24(v28 >> 200) >> 12)) {
                                                        v37 = v38 = 32 + v37;
                                                        MEM[v38] = 0;
                                                    }
                                                    MEM[0] = v37;
                                                }
                                                RETURNDATACOPY(32 + v35, 0xfff & uint24(v28 >> 200), uint8(uint24(v28 >> 200) >> 12));
                                            }
                                        }
                                    }
                                    v26 = v39 = 32 + uint16(v28 >> 160);
                                }
                            } else if (32766 == uint16(v28 >> 240)) {
                                v40 = address(v28).staticcall(MEM[v00x1679 + 32:v00x1679 + 32 + uint16(v00x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                                if (!v40) {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                } else {
                                    if (uint24(v28 >> 200)) {
                                        if (uint24.max != uint24(v28 >> 200)) {
                                            v41 = (0x7 & uint24(v28 >> 200) >> 20) << 5;
                                            if (0x800000 & uint24(v28 >> 200)) {
                                                v41 = v42 = MEM[0] - v41;
                                                v43 = uint8(uint24(v28 >> 200) >> 12) + v42 >> 5 << 5;
                                                if (0x1f & uint8(uint24(v28 >> 200) >> 12)) {
                                                    v43 = v44 = 32 + v43;
                                                    MEM[v44] = 0;
                                                }
                                                MEM[0] = v43;
                                            }
                                            RETURNDATACOPY(32 + v41, 0xfff & uint24(v28 >> 200), uint8(uint24(v28 >> 200) >> 12));
                                        }
                                    }
                                    v26 = v45 = 32 + uint16(v28 >> 160);
                                }
                            } else if (32763 == uint16(v28 >> 240)) {
                                v26 = v46 = 12 + uint16(v28 >> 160);
                                v26 += 12;
                                while (1) {
                                    v47 = MEM[v26] >> 248;
                                    if (!v47) {
                                        break;
                                    }
                                    if (v47 > 16) {
                                        if (v47 >= 32) {
                                            if (v47 >= 48) {
                                                if (v47 >= 48) {
                                                    if (v47 >= 80) {
                                                        if (v47 < 96) {
                                                            if (80 == v47) {
                                                                v48 = MEM[1 + v26] >> 248;
                                                                v49 = MEM[0] - (v48 << 5);
                                                                MEM[0] = v49;
                                                                v26 = v50 = 0;
                                                                do {
                                                                    v49 += 32;
                                                                    v26 += MEM[v49];
                                                                    v48 = v48 - 1;
                                                                } while (!bool(v48));
                                                                v51 = v52 = 2;
                                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                                            } else if (81 == v47) {
                                                                v53 = MEM[1 + v26] >> 248;
                                                                v54 = MEM[0];
                                                                v26 = v55 = 0;
                                                                do {
                                                                    v26 += MEM[v54];
                                                                    v54 = v54 - 32;
                                                                    v53 = v53 - 1;
                                                                } while (!bool(v53));
                                                                v51 = v56 = 2;
                                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                                            }
                                                        }
                                                    } else if (64 == v47) {
                                                        v26 = v57 = 1;
                                                        v51 = v58 = 1;
                                                    } else if (65 == v47) {
                                                        require(v26 != v26, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                                        v26 = v59 = 1;
                                                        v51 = v60 = 1;
                                                    } else if (66 == v47) {
                                                        require(v26 < v26, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                                        v26 = v61 = 1;
                                                        v51 = v62 = 1;
                                                    } else if (67 == v47) {
                                                        require(v26 >= v26, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                                        v26 = v63 = 1;
                                                        v51 = v64 = 1;
                                                    } else if (68 == v47) {
                                                        require(v26 > v26, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                                        v26 = v65 = 1;
                                                        v51 = v66 = 1;
                                                    } else if (69 == v47) {
                                                        require(v26 <= v26, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                                        v26 = v67 = 1;
                                                        v51 = v68 = 1;
                                                    } else if (70 == v47) {
                                                        require(!v26, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                                        v26 = v69 = 1;
                                                        v51 = v70 = 1;
                                                    } else if (71 == v47) {
                                                        require(v26, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                                        v26 = v71 = 1;
                                                        v51 = v72 = 1;
                                                    } else if (72 == v47) {
                                                        if (v26 != v26) {
                                                            return ;
                                                        } else {
                                                            v26 = v73 = 1;
                                                            v51 = v74 = 1;
                                                        }
                                                    } else if (73 == v47) {
                                                        if (v26 == v26) {
                                                            return ;
                                                        } else {
                                                            v26 = v75 = 1;
                                                            v51 = v76 = 1;
                                                        }
                                                    } else if (74 == v47) {
                                                        if (v26 >= v26) {
                                                            return ;
                                                        } else {
                                                            v26 = v77 = 1;
                                                            v51 = v78 = 1;
                                                        }
                                                    } else if (75 == v47) {
                                                        if (v26 < v26) {
                                                            return ;
                                                        } else {
                                                            v26 = v79 = 1;
                                                            v51 = v80 = 1;
                                                        }
                                                    } else if (76 == v47) {
                                                        if (v26 <= v26) {
                                                            return ;
                                                        } else {
                                                            v26 = v81 = 1;
                                                            v51 = v82 = 1;
                                                        }
                                                    } else if (77 == v47) {
                                                        if (v26 > v26) {
                                                            return ;
                                                        } else {
                                                            v26 = v83 = 1;
                                                            v51 = v84 = 1;
                                                        }
                                                    } else if (78 == v47) {
                                                        if (v26) {
                                                            return ;
                                                        } else {
                                                            v26 = v85 = 1;
                                                            v51 = v86 = 1;
                                                        }
                                                    } else if (79 == v47) {
                                                        if (!v26) {
                                                            return ;
                                                        } else {
                                                            v26 = v87 = 1;
                                                            v51 = v88 = 1;
                                                        }
                                                    }
                                                } else if (49 == v47) {
                                                    v26 = uint8(v26);
                                                    v51 = v89 = 1;
                                                    // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                                } else if (50 == v47) {
                                                    v26 = uint16(v26);
                                                    v51 = v90 = 1;
                                                    // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                                } else if (51 == v47) {
                                                    v26 = uint64(v26);
                                                    v51 = v91 = 1;
                                                    // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                                } else if (52 == v47) {
                                                    v26 = uint112(v26);
                                                    v51 = v92 = 1;
                                                    // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                                } else if (53 == v47) {
                                                    v26 = uint128(v26);
                                                    v51 = v93 = 1;
                                                    // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                                }
                                            } else if (32 == v47) {
                                                v26 = v94 = MEM[1 + v26];
                                                v51 = v95 = 33;
                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                            } else if (33 == v47) {
                                                v26 = v96 = uint8(MEM[1 + v26]);
                                                v51 = v97 = 2;
                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                            } else if (34 == v47) {
                                                v26 = v98 = uint16(MEM[1 + v26]);
                                                v51 = v99 = 3;
                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                            } else if (35 == v47) {
                                                v26 = v100 = uint64(MEM[1 + v26]);
                                                v51 = v101 = 9;
                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                            } else if (36 == v47) {
                                                v26 = v102 = uint112(MEM[1 + v26]);
                                                v51 = v103 = 7;
                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                            } else if (37 == v47) {
                                                v26 = v104 = uint128(MEM[1 + v26]);
                                                v51 = v105 = 9;
                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                            } else if (38 == v47) {
                                                v26 = v106 = address(MEM[1 + v26]);
                                                v51 = v107 = 13;
                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                            } else if (42 == v47) {
                                                v26 = v26 << 256;
                                                v51 = v108 = 1;
                                                // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                            }
                                        } else if (17 == v47) {
                                            v26 += v26;
                                            v51 = v109 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (18 == v47) {
                                            v26 = v26 - v26;
                                            v51 = v110 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (19 == v47) {
                                            v26 *= v26;
                                            v51 = v111 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (20 == v47) {
                                            v26 = v26 / v26;
                                            v51 = v112 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (21 == v47) {
                                            v26 = v26 / v26;
                                            v51 = v113 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (22 == v47) {
                                            v26 = v26 & v26;
                                            v51 = v114 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (23 == v47) {
                                            v26 = v26 | v26;
                                            v51 = v115 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (24 == v47) {
                                            v26 = v26 ^ v26;
                                            v51 = v116 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (25 == v47) {
                                            v26 = ~v26;
                                            v51 = v117 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (26 == v47) {
                                            v26 = v26 << (MEM[1 + v26] >> 248);
                                            v51 = v118 = 2;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (27 == v47) {
                                            v26 = v26 >> (MEM[1 + v26] >> 248);
                                            v51 = v119 = 2;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (28 == v47) {
                                            v26 = v26 + 1;
                                            v51 = v120 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (29 == v47) {
                                            v26 = v26 - 1;
                                            v51 = v121 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (30 == v47) {
                                            v26 = v26 - v26;
                                            v51 = v122 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        } else if (31 == v47) {
                                            v26 = v26 / v26;
                                            v51 = v123 = 1;
                                            // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                        }
                                    } else if (1 == v47) {
                                        v26 = v124 = MEM[32];
                                        v51 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (2 == v47) {
                                        v26 = v125 = MEM[64];
                                        v51 = v126 = 1;
                                    } else if (3 == v47) {
                                        v26 = v127 = MEM[96];
                                        v51 = v128 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (4 == v47) {
                                        v26 = v129 = MEM[128];
                                        v51 = v130 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (5 == v47) {
                                        v26 = v131 = MEM[160];
                                        v51 = v132 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (6 == v47) {
                                        v26 = v133 = MEM[192];
                                        v51 = v134 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (7 == v47) {
                                        v26 = v135 = MEM[224];
                                        v51 = v136 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (8 == v47) {
                                        v26 = v137 = MEM[MEM[0]];
                                        MEM[0] = MEM[0] - 32;
                                        v51 = v138 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (10 == v47) {
                                        v26 = v139 = this.balance;
                                        v51 = v140 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (11 == v47) {
                                        v26 = v141 = block.coinbase;
                                        v51 = v142 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (12 == v47) {
                                        v26 = v143 = block.timestamp;
                                        v51 = v144 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (13 == v47) {
                                        v26 = v145 = block.number;
                                        v51 = v146 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (14 == v47) {
                                        v26 = v147 = BASEFEE();
                                        v51 = v148 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    } else if (15 == v47) {
                                        v26 = v149 = msg.gas;
                                        v51 = v150 = 1;
                                        // Unknown jump to Block 0x23220x0. Refer to 3-address code (TAC);
                                    }
                                    v26 = v26 + v51;
                                }
                                MEM[32 + MEM[0]] = v26;
                                MEM[0] += 32;
                                // Unknown jump to Block 0x2ad20x0. Refer to 3-address code (TAC);
                            } else if (int16.max == uint16(v28 >> 240)) {
                                v151 = address(v28).delegatecall(MEM[v00x1679 + 32:v00x1679 + 32 + uint16(v00x1680 >> 160)], MEM[0:0]).gas(msg.gas);
                                if (!v151) {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                } else {
                                    if (uint24(v28 >> 200)) {
                                        if (uint24.max != uint24(v28 >> 200)) {
                                            v152 = (0x7 & uint24(v28 >> 200) >> 20) << 5;
                                            if (0x800000 & uint24(v28 >> 200)) {
                                                v152 = v153 = MEM[0] - v152;
                                                v154 = uint8(uint24(v28 >> 200) >> 12) + v153 >> 5 << 5;
                                                if (0x1f & uint8(uint24(v28 >> 200) >> 12)) {
                                                    v154 = v155 = 32 + v154;
                                                    MEM[v155] = 0;
                                                }
                                                MEM[0] = v154;
                                            }
                                            RETURNDATACOPY(32 + v152, 0xfff & uint24(v28 >> 200), uint8(uint24(v28 >> 200) >> 12));
                                        }
                                    }
                                    v26 = v156 = 32 + uint16(v28 >> 160);
                                }
                            } else if (32765 == uint16(v28 >> 240)) {
                                v157 = uint16(v28 >> 160);
                                v158 = MEM[12 + v26] >> 224;
                                if (0xa85f1d24 == v158) {
                                    v157 = 12 + v26;
                                    MEM[MSIZE()] = 0x70a08231;
                                    MEM[32 + MSIZE()] = this;
                                    v159 = MEM[4 + v157].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                                    if (!v159) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    } else {
                                        v160 = 0x70a08231;
                                        if (v160) {
                                            v160 = v161 = 0x70a08230;
                                        }
                                        require(MEM[36 + v157] <= v160, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                                        if (MEM[68 + v157]) {
                                            v162 = block.coinbase.call().value(MEM[68 + v157]).gas(msg.gas);
                                        }
                                    }
                                } else if (0x4df86adf == v158) {
                                    MEM[MSIZE()] = 0x70a08231;
                                    MEM[32 + MSIZE()] = this;
                                    v163 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                                    if (!v163) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    } else {
                                        v164 = 0x70a08231;
                                        if (v164) {
                                            v164 = v165 = 0x70a08230;
                                        }
                                        require(MEM[48 + v26] <= v164, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                                        MEM[MSIZE()] = 0xa9059cbb;
                                        MEM[32 + MSIZE()] = MEM[112 + v26];
                                        MEM[64 + MSIZE()] = v164;
                                        v166 = MEM[16 + v26].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                                        if (MEM[80 + v26]) {
                                            v167 = block.coinbase.call().value(MEM[80 + v26]).gas(msg.gas);
                                        }
                                    }
                                } else if (0x5ec9cad == v158) {
                                    MEM[MSIZE()] = 0x70a08231;
                                    MEM[32 + MSIZE()] = this;
                                    v168 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                                    if (!v168) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    } else {
                                        v169 = 0x70a08231;
                                        if (v169) {
                                            v169 = v170 = 0x70a08230;
                                        }
                                        require(MEM[16 + v26] <= v169, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                                        MEM[MSIZE()] = 0x2e1a7d4d;
                                        MEM[32 + MSIZE()] = v169;
                                        v171 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                                        if (MEM[48 + v26]) {
                                            v172 = block.coinbase.call().value(MEM[48 + v26]).gas(msg.gas);
                                        }
                                        v173 = this.balance;
                                        v174 = MEM[80 + v26].call().value(v173).gas(msg.gas);
                                    }
                                } else if (0x9b81788b == v158) {
                                    MEM[MSIZE()] = 0x902f1ac;
                                    v175 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                    if (!v175) {
                                        v176 = v177 = 0;
                                        v178 = v179 = 0;
                                    } else {
                                        v176 = MEM[32 + MSIZE()];
                                        v178 = 0x902f1ac;
                                    }
                                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v26] * v176) / (9970 * (v178 - MEM[48 + v26]));
                                    MEM[0] += 32;
                                } else if (0x8bceaa18 == v158) {
                                    MEM[MSIZE()] = 0x902f1ac;
                                    v180 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                    if (!v180) {
                                        v181 = v182 = 0;
                                        v183 = v184 = 0;
                                    } else {
                                        v181 = MEM[32 + MSIZE()];
                                        v183 = 0x902f1ac;
                                    }
                                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v26] * v183) / (9970 * (v181 - MEM[48 + v26]));
                                    MEM[0] += 32;
                                } else if (0x84f16ca0 == v158) {
                                    MEM[MSIZE()] = 0x902f1ac;
                                    v185 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                    if (!v185) {
                                        v186 = v187 = 0;
                                        v188 = v189 = 0;
                                    } else {
                                        v186 = MEM[32 + MSIZE()];
                                        v188 = 0x902f1ac;
                                    }
                                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v26] * v186 / (10000 * v188 + 9970 * MEM[48 + v26]);
                                    MEM[0] += 32;
                                } else if (0x95b66162 == v158) {
                                    MEM[MSIZE()] = 0x902f1ac;
                                    v190 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                    if (!v190) {
                                        v191 = v192 = 0;
                                        v193 = v194 = 0;
                                    } else {
                                        v191 = MEM[32 + MSIZE()];
                                        v193 = 0x902f1ac;
                                    }
                                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v26] * v193 / (10000 * v191 + 9970 * MEM[48 + v26]);
                                    MEM[0] += 32;
                                } else if (0x9a23842e == v158) {
                                    MEM[MSIZE()] = 0x902f1ac;
                                    v195 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                    if (!v195) {
                                        v196 = v197 = 0;
                                        v198 = v199 = 0;
                                    } else {
                                        v196 = MEM[32 + MSIZE()];
                                        v198 = 0x902f1ac;
                                    }
                                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v26] * v196) / (MEM[80 + v26] * (v198 - MEM[48 + v26]));
                                    MEM[0] += 32;
                                } else if (0x4fae2f23 == v158) {
                                    MEM[MSIZE()] = 0x902f1ac;
                                    v200 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                    if (!v200) {
                                        v201 = v202 = 0;
                                        v203 = v204 = 0;
                                    } else {
                                        v201 = MEM[32 + MSIZE()];
                                        v203 = 0x902f1ac;
                                    }
                                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v26] * v203) / (MEM[80 + v26] * (v201 - MEM[48 + v26]));
                                    MEM[0] += 32;
                                } else if (0xa9f2812f == v158) {
                                    MEM[MSIZE()] = 0x902f1ac;
                                    v205 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                    if (!v205) {
                                        v206 = v207 = 0;
                                        v208 = v209 = 0;
                                    } else {
                                        v206 = MEM[32 + MSIZE()];
                                        v208 = 0x902f1ac;
                                    }
                                    MEM[32 + MEM[0]] = MEM[80 + v26] * MEM[48 + v26] * v206 / (10000 * v208 + MEM[80 + v26] * MEM[48 + v26]);
                                    MEM[0] += 32;
                                } else {
                                    require(0xf93a1716 == v158);
                                    MEM[MSIZE()] = 0x902f1ac;
                                    v210 = MEM[16 + v26].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                    if (!v210) {
                                        v211 = v212 = 0;
                                        v213 = v214 = 0;
                                    } else {
                                        v211 = MEM[32 + MSIZE()];
                                        v213 = 0x902f1ac;
                                    }
                                    MEM[32 + MEM[0]] = MEM[80 + v26] * MEM[48 + v26] * v213 / (10000 * v211 + MEM[80 + v26] * MEM[48 + v26]);
                                    MEM[0] += 32;
                                }
                                v26 = 12 + v157;
                                // Unknown jump to Block 0x2ad20x0. Refer to 3-address code (TAC);
                            } else if (32762 == uint16(v28 >> 240)) {
                                v215 = 32 + ((0x7 & uint24(v28 >> 176) >> 20) << 5);
                                if (0x800000 & uint24(v28 >> 176)) {
                                    v215 = v216 = MEM[0] - (v215 - 32);
                                }
                                v217 = address(v28).call(MEM[v00x1679 + 32:v00x1679 + 32 + uint16(v00x1680 >> 160)], MEM[0:0]).value(MEM[v215]).gas(msg.gas);
                                if (!v217) {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                } else {
                                    if (!bool(MEM[v215])) {
                                        if (uint24(v28 >> 200)) {
                                            if (uint24.max != uint24(v28 >> 200)) {
                                                v218 = (0x7 & uint24(v28 >> 200) >> 20) << 5;
                                                if (0x800000 & uint24(v28 >> 200)) {
                                                    v218 = v219 = MEM[0] - v218;
                                                    v220 = uint8(uint24(v28 >> 200) >> 12) + v219 >> 5 << 5;
                                                    if (0x1f & uint8(uint24(v28 >> 200) >> 12)) {
                                                        v220 = v221 = 32 + v220;
                                                        MEM[v221] = 0;
                                                    }
                                                    MEM[0] = v220;
                                                }
                                                RETURNDATACOPY(32 + v218, 0xfff & uint24(v28 >> 200), uint8(uint24(v28 >> 200) >> 12));
                                            }
                                        }
                                    }
                                    v26 = v222 = 32 + uint16(v28 >> 160);
                                }
                            }
                            v26 += v26;
                            if (v26 >= v26) {
                                return ;
                            }
                            v223 = address(v28).call(MEM[v00x1679 + 32:v00x1679 + 32 + uint16(v00x1680 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v28 >> 176).gas(msg.gas);
                            if (!v223) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            } else {
                                if (!bool(0x7fffffffffffffffffff & v28 >> 176)) {
                                    if (uint24(v28 >> 200)) {
                                        if (uint24.max != uint24(v28 >> 200)) {
                                            v224 = (0x7 & uint24(v28 >> 200) >> 20) << 5;
                                            if (0x800000 & uint24(v28 >> 200)) {
                                                v224 = v225 = MEM[0] - v224;
                                                v226 = uint8(uint24(v28 >> 200) >> 12) + v225 >> 5 << 5;
                                                if (0x1f & uint8(uint24(v28 >> 200) >> 12)) {
                                                    v226 = v227 = 32 + v226;
                                                    MEM[v227] = 0;
                                                }
                                                MEM[0] = v226;
                                            }
                                            RETURNDATACOPY(32 + v224, 0xfff & uint24(v28 >> 200), uint8(uint24(v28 >> 200) >> 12));
                                        }
                                    }
                                }
                                v26 = v228 = 32 + uint16(v28 >> 160);
                            }
                        }
                    }
                }
            }
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    return;
}
