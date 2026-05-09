// Decompiled by library.dedaub.com
// 2025.12.06 09:32 UTC




function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public payable { 
    CALLDATACOPY(288, userData.data, userData.length);
    v0 = v1 = 288 + userData.length;
    v0 = v2 = 288;
    while (1) {
        v3 = MEM[v0];
        if (!bool(0x8000 & v3 >> 240)) {
            if (uint24(v3 >> 176)) {
                if (uint24.max != uint24(v3 >> 176)) {
                    v4 = v5 = (0xfff & uint24(v3 >> 176)) + v0;
                    v6 = v7 = uint8(uint24(v3 >> 176) >> 12);
                    if (v7) {
                        v8 = v9 = 32 + ((0x7 & uint24(v3 >> 176) >> 20) << 5);
                        if (0x800000 & uint24(v3 >> 176)) {
                            v8 = v10 = MEM[0] - (v9 - 32);
                        }
                        while (bool(v6)) {
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
                v12 = address(v3).call(MEM[v1665_0x2 + 32:v1665_0x2 + 32 + uint16(v17f >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v12) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!False) {
                        if (uint24(v3 >> 200)) {
                            if (uint24.max != uint24(v3 >> 200)) {
                                if (!(0x800000 & uint24(v3 >> 200))) {
                                    v13 = v14 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                                } else {
                                    v13 = v15 = MEM[0];
                                }
                                MEM[0] = v13 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v13), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                            }
                        }
                    }
                    v0 = v16 = 32 + uint16(v3 >> 160);
                }
            } else if (32766 == uint16(v3 >> 240)) {
                v17 = address(v3).staticcall(MEM[v1665_0x2 + 32:v1665_0x2 + 32 + uint16(v17f >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v17) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v3 >> 200)) {
                        if (uint24.max != uint24(v3 >> 200)) {
                            if (!(0x800000 & uint24(v3 >> 200))) {
                                v18 = v19 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                            } else {
                                v18 = v20 = MEM[0];
                            }
                            MEM[0] = v18 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v18), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                        }
                    }
                    v0 = v21 = 32 + uint16(v3 >> 160);
                }
            } else if (32763 == uint16(v3 >> 240)) {
                v0 = v22 = 12 + uint16(v3 >> 160);
                v0 += 12;
                while (1) {
                    v23 = MEM[v0] >> 248;
                    if (!v23) {
                        break;
                    } else {
                        if (v23 > 16) {
                            if (v23 >= 32) {
                                if (v23 >= 48) {
                                    if (v23 >= 48) {
                                        if (v23 >= 80) {
                                            if (v23 >= 96) {
                                                break;
                                            } else if (80 == v23) {
                                                v24 = v25 = MEM[1 + v0] >> 248;
                                                v26 = v27 = MEM[0] - (v25 << 5);
                                                MEM[0] = v27;
                                                v0 = v28 = 0;
                                                while (bool(v24)) {
                                                    v26 += 32;
                                                    v0 += MEM[v26];
                                                    v24 = v24 - 1;
                                                }
                                                v29 = v30 = 2;
                                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                            } else if (81 == v23) {
                                                v31 = v32 = MEM[1 + v0] >> 248;
                                                v33 = v34 = MEM[0];
                                                v0 = v35 = 0;
                                                while (bool(v31)) {
                                                    v0 += MEM[v33];
                                                    v33 = v33 - 32;
                                                    v31 = v31 - 1;
                                                }
                                                v29 = v36 = 2;
                                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                            } else {
                                                break;
                                            }
                                        } else if (64 == v23) {
                                            v0 = v37 = 1;
                                            v29 = v38 = 1;
                                        } else if (65 == v23) {
                                            require(v0 != v0, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                            v0 = v39 = 1;
                                            v29 = v40 = 1;
                                        } else if (66 == v23) {
                                            require(v0 < v0, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v41 = 1;
                                            v29 = v42 = 1;
                                        } else if (67 == v23) {
                                            require(v0 >= v0, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                            v0 = v43 = 1;
                                            v29 = v44 = 1;
                                        } else if (68 == v23) {
                                            require(v0 > v0, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v45 = 1;
                                            v29 = v46 = 1;
                                        } else if (69 == v23) {
                                            require(v0 <= v0, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                            v0 = v47 = 1;
                                            v29 = v48 = 1;
                                        } else if (70 == v23) {
                                            require(!v0, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v49 = 1;
                                            v29 = v50 = 1;
                                        } else if (71 == v23) {
                                            require(v0, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                            v0 = v51 = 1;
                                            v29 = v52 = 1;
                                        } else if (72 == v23) {
                                            if (v0 != v0) {
                                                return 0;
                                            } else {
                                                v0 = v53 = 1;
                                                v29 = v54 = 1;
                                            }
                                        } else if (73 == v23) {
                                            if (v0 == v0) {
                                                return 0;
                                            } else {
                                                v0 = v55 = 1;
                                                v29 = v56 = 1;
                                            }
                                        } else if (74 == v23) {
                                            if (v0 >= v0) {
                                                return 0;
                                            } else {
                                                v0 = v57 = 1;
                                                v29 = v58 = 1;
                                            }
                                        } else if (75 == v23) {
                                            if (v0 < v0) {
                                                return 0;
                                            } else {
                                                v0 = v59 = 1;
                                                v29 = v60 = 1;
                                            }
                                        } else if (76 == v23) {
                                            if (v0 <= v0) {
                                                return 0;
                                            } else {
                                                v0 = v61 = 1;
                                                v29 = v62 = 1;
                                            }
                                        } else if (77 == v23) {
                                            if (v0 > v0) {
                                                return 0;
                                            } else {
                                                v0 = v63 = 1;
                                                v29 = v64 = 1;
                                            }
                                        } else if (78 == v23) {
                                            if (v0) {
                                                return 0;
                                            } else {
                                                v0 = v65 = 1;
                                                v29 = v66 = 1;
                                            }
                                        } else if (79 == v23) {
                                            if (!v0) {
                                                return 0;
                                            } else {
                                                v0 = v67 = 1;
                                                v29 = v68 = 1;
                                            }
                                        }
                                    } else if (49 == v23) {
                                        v0 = uint8(v0);
                                        v29 = v69 = 1;
                                        // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                    } else if (50 == v23) {
                                        v0 = uint16(v0);
                                        v29 = v70 = 1;
                                        // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                    } else if (51 == v23) {
                                        v0 = uint32(v0);
                                        v29 = v71 = 1;
                                        // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                    } else if (52 == v23) {
                                        v0 = uint112(v0);
                                        v29 = v72 = 1;
                                        // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                    } else if (53 == v23) {
                                        v0 = uint128(v0);
                                        v29 = v73 = 1;
                                        // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                    }
                                } else if (32 == v23) {
                                    v0 = v74 = MEM[1 + v0];
                                    v29 = v75 = 33;
                                    // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                } else if (33 == v23) {
                                    v0 = v76 = uint8(MEM[1 + v0]);
                                    v29 = v77 = 2;
                                    // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                } else if (34 == v23) {
                                    v0 = v78 = uint16(MEM[1 + v0]);
                                    v29 = v79 = 3;
                                    // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                } else if (35 == v23) {
                                    v0 = v80 = uint32(MEM[1 + v0]);
                                    v29 = v81 = 5;
                                    // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                } else if (36 == v23) {
                                    v0 = v82 = uint112(MEM[1 + v0]);
                                    v29 = v83 = 7;
                                    // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                } else if (37 == v23) {
                                    v0 = v84 = uint128(MEM[1 + v0]);
                                    v29 = v85 = 9;
                                    // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                } else if (38 == v23) {
                                    v0 = v86 = address(MEM[1 + v0]);
                                    v29 = v87 = 13;
                                    // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                } else if (42 == v23) {
                                    v0 = v0 << 256;
                                    v29 = v88 = 1;
                                    // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                                }
                            } else if (17 == v23) {
                                v0 += v0;
                                v29 = v89 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (18 == v23) {
                                v0 = v0 - v0;
                                v29 = v90 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (19 == v23) {
                                v0 *= v0;
                                v29 = v91 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (20 == v23) {
                                v0 = v0 / v0;
                                v29 = v92 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (21 == v23) {
                                v0 = v0 / v0;
                                v29 = v93 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (22 == v23) {
                                v0 = v0 & v0;
                                v29 = v94 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (23 == v23) {
                                v0 = v0 | v0;
                                v29 = v95 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (24 == v23) {
                                v0 = v0 ^ v0;
                                v29 = v96 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (25 == v23) {
                                v0 = ~v0;
                                v29 = v97 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (26 == v23) {
                                v0 = v0 << (MEM[1 + v0] >> 248);
                                v29 = v98 = 2;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (27 == v23) {
                                v0 = v0 >> (MEM[1 + v0] >> 248);
                                v29 = v99 = 2;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (28 == v23) {
                                v0 = v0 + 1;
                                v29 = v100 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (29 == v23) {
                                v0 = v0 - 1;
                                v29 = v101 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (30 == v23) {
                                v0 = v0 - v0;
                                v29 = v102 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            } else if (31 == v23) {
                                v0 = v0 / v0;
                                v29 = v103 = 1;
                                // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                            }
                        } else if (1 == v23) {
                            v0 = v104 = MEM[32];
                            v29 = v105 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (2 == v23) {
                            v0 = v106 = MEM[64];
                            v29 = v107 = 1;
                        } else if (3 == v23) {
                            v0 = v108 = MEM[96];
                            v29 = v109 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (4 == v23) {
                            v0 = v110 = MEM[128];
                            v29 = v111 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (5 == v23) {
                            v0 = v112 = MEM[160];
                            v29 = v113 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (6 == v23) {
                            v0 = v114 = MEM[192];
                            v29 = v115 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (7 == v23) {
                            v0 = v116 = MEM[224];
                            v29 = v117 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (8 == v23) {
                            v0 = v118 = MEM[MEM[0]];
                            MEM[0] = MEM[0] - 32;
                            v29 = v119 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (10 == v23) {
                            v0 = v120 = this.balance;
                            v29 = v121 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (11 == v23) {
                            v0 = v122 = block.coinbase;
                            v29 = v123 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (12 == v23) {
                            v0 = v124 = block.timestamp;
                            v29 = v125 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (13 == v23) {
                            v0 = v126 = block.number;
                            v29 = v127 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (14 == v23) {
                            v0 = v128 = BASEFEE();
                            v29 = v129 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        } else if (15 == v23) {
                            v0 = v130 = msg.gas;
                            v29 = v131 = 1;
                            // Unknown jump to Block 0xdd7. Refer to 3-address code (TAC);
                        }
                        v0 = v0 + v29;
                        continue;
                    }
                }
                MEM[32 + MEM[0]] = v0;
                MEM[0] += 32;
                // Unknown jump to Block 0x1665. Refer to 3-address code (TAC);
            } else if (int16.max == uint16(v3 >> 240)) {
                v132 = address(v3).delegatecall(MEM[v1665_0x2 + 32:v1665_0x2 + 32 + uint16(v17f >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v132) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v3 >> 200)) {
                        if (uint24.max != uint24(v3 >> 200)) {
                            if (!(0x800000 & uint24(v3 >> 200))) {
                                v133 = v134 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                            } else {
                                v133 = v135 = MEM[0];
                            }
                            MEM[0] = v133 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v133), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                        }
                    }
                    v0 = v136 = 32 + uint16(v3 >> 160);
                }
            } else if (32765 == uint16(v3 >> 240)) {
                v137 = v138 = uint16(v3 >> 160);
                v139 = MEM[12 + v0] >> 224;
                if (0xa85f1d24 == v139) {
                    v137 = 12 + v0;
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v140 = MEM[4 + v137].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v140) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v141 = v142 = 0x70a08231;
                        if (v142) {
                            v141 = v143 = 0x70a08230;
                        }
                        require(MEM[36 + v137] <= v141, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        if (MEM[68 + v137]) {
                            v144 = block.coinbase.call().value(MEM[68 + v137]).gas(msg.gas);
                        }
                    }
                } else if (0x4df86adf == v139) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v145 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v145) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v146 = v147 = 0x70a08231;
                        if (v147) {
                            v146 = v148 = 0x70a08230;
                        }
                        require(MEM[48 + v0] <= v146, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0xa9059cbb;
                        MEM[32 + MSIZE()] = MEM[112 + v0];
                        MEM[64 + MSIZE()] = v146;
                        v149 = MEM[16 + v0].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                        if (MEM[80 + v0]) {
                            v150 = block.coinbase.call().value(MEM[80 + v0]).gas(msg.gas);
                        }
                    }
                } else if (0x5ec9cad == v139) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v151 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v151) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v152 = v153 = 0x70a08231;
                        if (v153) {
                            v152 = v154 = 0x70a08230;
                        }
                        require(MEM[16 + v0] <= v152, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0x2e1a7d4d;
                        MEM[32 + MSIZE()] = v152;
                        v155 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                        if (MEM[48 + v0]) {
                            v156 = block.coinbase.call().value(MEM[48 + v0]).gas(msg.gas);
                        }
                        v157 = this.balance;
                        v158 = MEM[80 + v0].call().value(v157).gas(msg.gas);
                    }
                } else if (0x9b81788b == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v159 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v159) {
                        v160 = v161 = 0;
                        v162 = v163 = 0;
                    } else {
                        v160 = v164 = MEM[32 + MSIZE()];
                        v162 = v165 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v160) / (9970 * (v162 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x8bceaa18 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v166 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v166) {
                        v167 = v168 = 0;
                        v169 = v170 = 0;
                    } else {
                        v167 = v171 = MEM[32 + MSIZE()];
                        v169 = v172 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v169) / (9970 * (v167 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x84f16ca0 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v173 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v173) {
                        v174 = v175 = 0;
                        v176 = v177 = 0;
                    } else {
                        v174 = v178 = MEM[32 + MSIZE()];
                        v176 = v179 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v174 / (10000 * v176 + 9970 * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0x95b66162 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v180 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v180) {
                        v181 = v182 = 0;
                        v183 = v184 = 0;
                    } else {
                        v181 = v185 = MEM[32 + MSIZE()];
                        v183 = v186 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v183 / (10000 * v181 + 9970 * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0x9a23842e == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v187 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v187) {
                        v188 = v189 = 0;
                        v190 = v191 = 0;
                    } else {
                        v188 = v192 = MEM[32 + MSIZE()];
                        v190 = v193 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v188) / (MEM[80 + v0] * (v190 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x4fae2f23 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v194 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v194) {
                        v195 = v196 = 0;
                        v197 = v198 = 0;
                    } else {
                        v195 = v199 = MEM[32 + MSIZE()];
                        v197 = v200 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v197) / (MEM[80 + v0] * (v195 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0xa9f2812f == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v201 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v201) {
                        v202 = v203 = 0;
                        v204 = v205 = 0;
                    } else {
                        v202 = v206 = MEM[32 + MSIZE()];
                        v204 = v207 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v202 / (10000 * v204 + MEM[80 + v0] * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0xf93a1716 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v208 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v208) {
                        v209 = v210 = 0;
                        v211 = v212 = 0;
                    } else {
                        v209 = v213 = MEM[32 + MSIZE()];
                        v211 = v214 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v211 / (10000 * v209 + MEM[80 + v0] * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0xfe9bf13d == v139) {
                    emit 0x4bc761c3621ed10674d0b96fcf93f708ec089e64acf91cec204e8e5e6bc41568(MEM[16 + v0]);
                } else if (0xfcccdd98 == v139) {
                    emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0]], MEM[0]);
                } else if (0x1e00cebd == v139) {
                    emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0] - (MEM[16 + v0] << 5)], MEM[0]);
                } else {
                    require(0xa6c13bf == v139);
                    revert(0x8000000000000000000000000000000000000000000000000000000000000000 | MEM[16 + v0]);
                }
                v0 = 12 + v137;
                // Unknown jump to Block 0x1665. Refer to 3-address code (TAC);
            } else if (32762 == uint16(v3 >> 240)) {
                v215 = v216 = 32 + ((0x7 & uint24(v3 >> 176) >> 20) << 5);
                if (0x800000 & uint24(v3 >> 176)) {
                    v215 = v217 = MEM[0] - (v216 - 32);
                }
                v218 = address(v3).call(MEM[v1665_0x2 + 32:v1665_0x2 + 32 + uint16(v17f >> 160)], MEM[0:0]).value(MEM[v215]).gas(msg.gas);
                if (!v218) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!bool(MEM[v215])) {
                        if (uint24(v3 >> 200)) {
                            if (uint24.max != uint24(v3 >> 200)) {
                                if (!(0x800000 & uint24(v3 >> 200))) {
                                    v219 = v220 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                                } else {
                                    v219 = v221 = MEM[0];
                                }
                                MEM[0] = v219 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v219), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                            }
                        }
                    }
                    v0 = v222 = 32 + uint16(v3 >> 160);
                }
            }
        }
        v0 += v0;
        if (v0 >= v0) {
            MEM[MSIZE()] = 0xa9059cbb;
            MEM[32 + MSIZE()] = msg.sender;
            MEM[64 + MSIZE()] = msg.data[36 + feeAmounts] + msg.data[36 + amounts];
            v223 = msg.data[36 + tokens].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
        }
        v224 = address(v3).call(MEM[v1665_0x2 + 32:v1665_0x2 + 32 + uint16(v17f >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v3 >> 176).gas(msg.gas);
        if (!v224) {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!bool(0x7fffffffffffffffffff & v3 >> 176)) {
                if (uint24(v3 >> 200)) {
                    if (uint24.max != uint24(v3 >> 200)) {
                        if (!(0x800000 & uint24(v3 >> 200))) {
                            v225 = v226 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                        } else {
                            v225 = v227 = MEM[0];
                        }
                        MEM[0] = v225 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v225), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                    }
                }
            }
            v0 = v228 = 32 + uint16(v3 >> 160);
        }
    }
}

function callFunction(address varg0) public payable { 
    CALLDATACOPY(288, 164, varg0);
    v0 = 288 + varg0;
    v0 = v1 = 288;
    while (1) {
        v2 = MEM[v0];
        if (!bool(0x8000 & v2 >> 240)) {
            if (uint24(v2 >> 176)) {
                if (uint24.max != uint24(v2 >> 176)) {
                    v3 = (0xfff & uint24(v2 >> 176)) + v0;
                    v4 = uint8(uint24(v2 >> 176) >> 12);
                    if (v4) {
                        v5 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
                        if (0x800000 & uint24(v2 >> 176)) {
                            v5 = v6 = MEM[0] - (v5 - 32);
                        }
                        while (bool(v4)) {
                            if (32 > v4) {
                                MEM[v3] = MEM[v3] & ~((1 << (v4 << 3)) - 1) | MEM[v5] & (1 << (v4 << 3)) - 1;
                            } else {
                                MEM[v3] = MEM[v5];
                                v3 += 32;
                                v5 += 32;
                                v4 = v4 - 32;
                            }
                        }
                        // Unknown jump to Block 0x2d530x16b2. Refer to 3-address code (TAC);
                    }
                }
            }
            if (!uint16(v2 >> 240)) {
                v0 = v7 = uint16.max + v2;
            } else if (32764 == uint16(v2 >> 240)) {
                v8 = address(v2).call(MEM[v16b20x2c9c + 32:v16b20x2c9c + 32 + uint16(v16b20x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v8) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!False) {
                        if (uint24(v2 >> 200)) {
                            if (uint24.max != uint24(v2 >> 200)) {
                                if (!(0x800000 & uint24(v2 >> 200))) {
                                    v9 = v10 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                                } else {
                                    v9 = MEM[0];
                                }
                                MEM[0] = v9 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v9), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                            }
                        }
                    }
                    v0 = v11 = 32 + uint16(v2 >> 160);
                }
            } else if (32766 == uint16(v2 >> 240)) {
                v12 = address(v2).staticcall(MEM[v16b20x2c9c + 32:v16b20x2c9c + 32 + uint16(v16b20x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v12) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            if (!(0x800000 & uint24(v2 >> 200))) {
                                v13 = v14 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            } else {
                                v13 = MEM[0];
                            }
                            MEM[0] = v13 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v13), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                    v0 = v15 = 32 + uint16(v2 >> 160);
                }
            } else if (32763 == uint16(v2 >> 240)) {
                v0 = v16 = 12 + uint16(v2 >> 160);
                v0 += 12;
                while (1) {
                    v17 = MEM[v0] >> 248;
                    if (!v17) {
                        break;
                    } else {
                        if (v17 > 16) {
                            if (v17 >= 32) {
                                if (v17 >= 48) {
                                    if (v17 >= 48) {
                                        if (v17 >= 80) {
                                            if (v17 >= 96) {
                                                break;
                                            } else if (80 == v17) {
                                                v18 = MEM[1 + v0] >> 248;
                                                v19 = MEM[0] - (v18 << 5);
                                                MEM[0] = v19;
                                                v0 = v20 = 0;
                                                while (bool(v18)) {
                                                    v19 += 32;
                                                    v0 += MEM[v19];
                                                    v18 = v18 - 1;
                                                }
                                                v21 = v22 = 2;
                                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                            } else if (81 == v17) {
                                                v23 = MEM[1 + v0] >> 248;
                                                v24 = MEM[0];
                                                v0 = v25 = 0;
                                                while (bool(v23)) {
                                                    v0 += MEM[v24];
                                                    v24 = v24 - 32;
                                                    v23 = v23 - 1;
                                                }
                                                v21 = v26 = 2;
                                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                            } else {
                                                break;
                                            }
                                        } else if (64 == v17) {
                                            v0 = v27 = 1;
                                            v21 = v28 = 1;
                                        } else if (65 == v17) {
                                            require(v0 != v0, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                            v0 = v29 = 1;
                                            v21 = v30 = 1;
                                        } else if (66 == v17) {
                                            require(v0 < v0, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v31 = 1;
                                            v21 = v32 = 1;
                                        } else if (67 == v17) {
                                            require(v0 >= v0, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                            v0 = v33 = 1;
                                            v21 = v34 = 1;
                                        } else if (68 == v17) {
                                            require(v0 > v0, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v35 = 1;
                                            v21 = v36 = 1;
                                        } else if (69 == v17) {
                                            require(v0 <= v0, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                            v0 = v37 = 1;
                                            v21 = v38 = 1;
                                        } else if (70 == v17) {
                                            require(!v0, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v39 = 1;
                                            v21 = v40 = 1;
                                        } else if (71 == v17) {
                                            require(v0, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                            v0 = v41 = 1;
                                            v21 = v42 = 1;
                                        } else if (72 == v17) {
                                            if (v0 != v0) {
                                                return 0;
                                            } else {
                                                v0 = v43 = 1;
                                                v21 = v44 = 1;
                                            }
                                        } else if (73 == v17) {
                                            if (v0 == v0) {
                                                return 0;
                                            } else {
                                                v0 = v45 = 1;
                                                v21 = v46 = 1;
                                            }
                                        } else if (74 == v17) {
                                            if (v0 >= v0) {
                                                return 0;
                                            } else {
                                                v0 = v47 = 1;
                                                v21 = v48 = 1;
                                            }
                                        } else if (75 == v17) {
                                            if (v0 < v0) {
                                                return 0;
                                            } else {
                                                v0 = v49 = 1;
                                                v21 = v50 = 1;
                                            }
                                        } else if (76 == v17) {
                                            if (v0 <= v0) {
                                                return 0;
                                            } else {
                                                v0 = v51 = 1;
                                                v21 = v52 = 1;
                                            }
                                        } else if (77 == v17) {
                                            if (v0 > v0) {
                                                return 0;
                                            } else {
                                                v0 = v53 = 1;
                                                v21 = v54 = 1;
                                            }
                                        } else if (78 == v17) {
                                            if (v0) {
                                                return 0;
                                            } else {
                                                v0 = v55 = 1;
                                                v21 = v56 = 1;
                                            }
                                        } else if (79 == v17) {
                                            if (!v0) {
                                                return 0;
                                            } else {
                                                v0 = v57 = 1;
                                                v21 = v58 = 1;
                                            }
                                        }
                                    } else if (49 == v17) {
                                        v0 = uint8(v0);
                                        v21 = v59 = 1;
                                        // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                    } else if (50 == v17) {
                                        v0 = uint16(v0);
                                        v21 = v60 = 1;
                                        // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                    } else if (51 == v17) {
                                        v0 = uint32(v0);
                                        v21 = v61 = 1;
                                        // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                    } else if (52 == v17) {
                                        v0 = uint112(v0);
                                        v21 = v62 = 1;
                                        // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                    } else if (53 == v17) {
                                        v0 = uint128(v0);
                                        v21 = v63 = 1;
                                        // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                    }
                                } else if (32 == v17) {
                                    v0 = v64 = MEM[1 + v0];
                                    v21 = v65 = 33;
                                    // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                } else if (33 == v17) {
                                    v0 = v66 = uint8(MEM[1 + v0]);
                                    v21 = v67 = 2;
                                    // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                } else if (34 == v17) {
                                    v0 = v68 = uint16(MEM[1 + v0]);
                                    v21 = v69 = 3;
                                    // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                } else if (35 == v17) {
                                    v0 = v70 = uint32(MEM[1 + v0]);
                                    v21 = v71 = 5;
                                    // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                } else if (36 == v17) {
                                    v0 = v72 = uint112(MEM[1 + v0]);
                                    v21 = v73 = 7;
                                    // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                } else if (37 == v17) {
                                    v0 = v74 = uint128(MEM[1 + v0]);
                                    v21 = v75 = 9;
                                    // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                } else if (38 == v17) {
                                    v0 = v76 = address(MEM[1 + v0]);
                                    v21 = v77 = 13;
                                    // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                } else if (42 == v17) {
                                    v0 = v0 << 256;
                                    v21 = v78 = 1;
                                    // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                                }
                            } else if (17 == v17) {
                                v0 += v0;
                                v21 = v79 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (18 == v17) {
                                v0 = v0 - v0;
                                v21 = v80 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (19 == v17) {
                                v0 *= v0;
                                v21 = v81 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (20 == v17) {
                                v0 = v0 / v0;
                                v21 = v82 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (21 == v17) {
                                v0 = v0 / v0;
                                v21 = v83 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (22 == v17) {
                                v0 = v0 & v0;
                                v21 = v84 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (23 == v17) {
                                v0 = v0 | v0;
                                v21 = v85 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (24 == v17) {
                                v0 = v0 ^ v0;
                                v21 = v86 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (25 == v17) {
                                v0 = ~v0;
                                v21 = v87 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (26 == v17) {
                                v0 = v0 << (MEM[1 + v0] >> 248);
                                v21 = v88 = 2;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (27 == v17) {
                                v0 = v0 >> (MEM[1 + v0] >> 248);
                                v21 = v89 = 2;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (28 == v17) {
                                v0 = v0 + 1;
                                v21 = v90 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (29 == v17) {
                                v0 = v0 - 1;
                                v21 = v91 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (30 == v17) {
                                v0 = v0 - v0;
                                v21 = v92 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            } else if (31 == v17) {
                                v0 = v0 / v0;
                                v21 = v93 = 1;
                                // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                            }
                        } else if (1 == v17) {
                            v0 = v94 = MEM[32];
                            v21 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (2 == v17) {
                            v0 = v95 = MEM[64];
                            v21 = v96 = 1;
                        } else if (3 == v17) {
                            v0 = v97 = MEM[96];
                            v21 = v98 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (4 == v17) {
                            v0 = v99 = MEM[128];
                            v21 = v100 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (5 == v17) {
                            v0 = v101 = MEM[160];
                            v21 = v102 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (6 == v17) {
                            v0 = v103 = MEM[192];
                            v21 = v104 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (7 == v17) {
                            v0 = v105 = MEM[224];
                            v21 = v106 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (8 == v17) {
                            v0 = v107 = MEM[MEM[0]];
                            MEM[0] = MEM[0] - 32;
                            v21 = v108 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (10 == v17) {
                            v0 = v109 = this.balance;
                            v21 = v110 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (11 == v17) {
                            v0 = v111 = block.coinbase;
                            v21 = v112 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (12 == v17) {
                            v0 = v113 = block.timestamp;
                            v21 = v114 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (13 == v17) {
                            v0 = v115 = block.number;
                            v21 = v116 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (14 == v17) {
                            v0 = v117 = BASEFEE();
                            v21 = v118 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        } else if (15 == v17) {
                            v0 = v119 = msg.gas;
                            v21 = v120 = 1;
                            // Unknown jump to Block 0x38fb0x16b2. Refer to 3-address code (TAC);
                        }
                        v0 = v0 + v21;
                        continue;
                    }
                }
                MEM[32 + MEM[0]] = v0;
                MEM[0] += 32;
                // Unknown jump to Block 0x41890x16b2. Refer to 3-address code (TAC);
            } else if (int16.max == uint16(v2 >> 240)) {
                v121 = address(v2).delegatecall(MEM[v16b20x2c9c + 32:v16b20x2c9c + 32 + uint16(v16b20x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v121) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            if (!(0x800000 & uint24(v2 >> 200))) {
                                v122 = v123 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            } else {
                                v122 = MEM[0];
                            }
                            MEM[0] = v122 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v122), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                    v0 = v124 = 32 + uint16(v2 >> 160);
                }
            } else if (32765 == uint16(v2 >> 240)) {
                v125 = uint16(v2 >> 160);
                v126 = MEM[12 + v0] >> 224;
                if (0xa85f1d24 == v126) {
                    v125 = 12 + v0;
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v127 = MEM[4 + v125].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v127) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v128 = 0x70a08231;
                        if (v128) {
                            v128 = v129 = 0x70a08230;
                        }
                        require(MEM[36 + v125] <= v128, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        if (MEM[68 + v125]) {
                            v130 = block.coinbase.call().value(MEM[68 + v125]).gas(msg.gas);
                        }
                    }
                } else if (0x4df86adf == v126) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v131 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v131) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v132 = 0x70a08231;
                        if (v132) {
                            v132 = v133 = 0x70a08230;
                        }
                        require(MEM[48 + v0] <= v132, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0xa9059cbb;
                        MEM[32 + MSIZE()] = MEM[112 + v0];
                        MEM[64 + MSIZE()] = v132;
                        v134 = MEM[16 + v0].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                        if (MEM[80 + v0]) {
                            v135 = block.coinbase.call().value(MEM[80 + v0]).gas(msg.gas);
                        }
                    }
                } else if (0x5ec9cad == v126) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v136 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v136) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v137 = 0x70a08231;
                        if (v137) {
                            v137 = v138 = 0x70a08230;
                        }
                        require(MEM[16 + v0] <= v137, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0x2e1a7d4d;
                        MEM[32 + MSIZE()] = v137;
                        v139 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                        if (MEM[48 + v0]) {
                            v140 = block.coinbase.call().value(MEM[48 + v0]).gas(msg.gas);
                        }
                        v141 = this.balance;
                        v142 = MEM[80 + v0].call().value(v141).gas(msg.gas);
                    }
                } else if (0x9b81788b == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v143 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v143) {
                        v144 = v145 = 0;
                        v146 = v147 = 0;
                    } else {
                        v144 = MEM[32 + MSIZE()];
                        v146 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v144) / (9970 * (v146 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x8bceaa18 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v148 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v148) {
                        v149 = v150 = 0;
                        v151 = v152 = 0;
                    } else {
                        v149 = MEM[32 + MSIZE()];
                        v151 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v151) / (9970 * (v149 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x84f16ca0 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v153 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v153) {
                        v154 = v155 = 0;
                        v156 = v157 = 0;
                    } else {
                        v154 = MEM[32 + MSIZE()];
                        v156 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v154 / (10000 * v156 + 9970 * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0x95b66162 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v158 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v158) {
                        v159 = v160 = 0;
                        v161 = v162 = 0;
                    } else {
                        v159 = MEM[32 + MSIZE()];
                        v161 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v161 / (10000 * v159 + 9970 * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0x9a23842e == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v163 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v163) {
                        v164 = v165 = 0;
                        v166 = v167 = 0;
                    } else {
                        v164 = MEM[32 + MSIZE()];
                        v166 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v164) / (MEM[80 + v0] * (v166 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x4fae2f23 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v168 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v168) {
                        v169 = v170 = 0;
                        v171 = v172 = 0;
                    } else {
                        v169 = MEM[32 + MSIZE()];
                        v171 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v171) / (MEM[80 + v0] * (v169 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0xa9f2812f == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v173 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v173) {
                        v174 = v175 = 0;
                        v176 = v177 = 0;
                    } else {
                        v174 = MEM[32 + MSIZE()];
                        v176 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v174 / (10000 * v176 + MEM[80 + v0] * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0xf93a1716 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v178 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v178) {
                        v179 = v180 = 0;
                        v181 = v182 = 0;
                    } else {
                        v179 = MEM[32 + MSIZE()];
                        v181 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v181 / (10000 * v179 + MEM[80 + v0] * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0xfe9bf13d == v126) {
                    emit 0x4bc761c3621ed10674d0b96fcf93f708ec089e64acf91cec204e8e5e6bc41568(MEM[16 + v0]);
                } else if (0xfcccdd98 == v126) {
                    emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0]], MEM[0]);
                } else if (0x1e00cebd == v126) {
                    emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0] - (MEM[16 + v0] << 5)], MEM[0]);
                } else {
                    require(0xa6c13bf == v126);
                    revert(0x8000000000000000000000000000000000000000000000000000000000000000 | MEM[16 + v0]);
                }
                v0 = 12 + v125;
                // Unknown jump to Block 0x41890x16b2. Refer to 3-address code (TAC);
            } else if (32762 == uint16(v2 >> 240)) {
                v183 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
                if (0x800000 & uint24(v2 >> 176)) {
                    v183 = v184 = MEM[0] - (v183 - 32);
                }
                v185 = address(v2).call(MEM[v16b20x2c9c + 32:v16b20x2c9c + 32 + uint16(v16b20x2ca3 >> 160)], MEM[0:0]).value(MEM[v183]).gas(msg.gas);
                if (!v185) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!bool(MEM[v183])) {
                        if (uint24(v2 >> 200)) {
                            if (uint24.max != uint24(v2 >> 200)) {
                                if (!(0x800000 & uint24(v2 >> 200))) {
                                    v186 = v187 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                                } else {
                                    v186 = MEM[0];
                                }
                                MEM[0] = v186 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v186), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                            }
                        }
                    }
                    v0 = v188 = 32 + uint16(v2 >> 160);
                }
            }
        }
        v0 += v0;
        if (v0 >= v0) {
            return MEM[MEM[0]:MEM[0] + 32];
        }
        v189 = address(v2).call(MEM[v16b20x2c9c + 32:v16b20x2c9c + 32 + uint16(v16b20x2ca3 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v2 >> 176).gas(msg.gas);
        if (!v189) {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!bool(0x7fffffffffffffffffff & v2 >> 176)) {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        if (!(0x800000 & uint24(v2 >> 200))) {
                            v190 = v191 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        } else {
                            v190 = MEM[0];
                        }
                        MEM[0] = v190 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v190), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
            }
            v0 = v192 = 32 + uint16(v2 >> 160);
        }
    }
}

function 0x28472417(uint256 varg0) public payable { 
    CALLDATACOPY(288, 68, varg0);
    v0 = 288 + varg0;
    v0 = v1 = 288;
    while (1) {
        v2 = MEM[v0];
        if (!bool(0x8000 & v2 >> 240)) {
            if (uint24(v2 >> 176)) {
                if (uint24.max != uint24(v2 >> 176)) {
                    v3 = (0xfff & uint24(v2 >> 176)) + v0;
                    v4 = uint8(uint24(v2 >> 176) >> 12);
                    if (v4) {
                        v5 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
                        if (0x800000 & uint24(v2 >> 176)) {
                            v5 = v6 = MEM[0] - (v5 - 32);
                        }
                        while (bool(v4)) {
                            if (32 > v4) {
                                MEM[v3] = MEM[v3] & ~((1 << (v4 << 3)) - 1) | MEM[v5] & (1 << (v4 << 3)) - 1;
                            } else {
                                MEM[v3] = MEM[v5];
                                v3 += 32;
                                v5 += 32;
                                v4 = v4 - 32;
                            }
                        }
                        // Unknown jump to Block 0x2d530x16ba. Refer to 3-address code (TAC);
                    }
                }
            }
            if (!uint16(v2 >> 240)) {
                v0 = v7 = uint16.max + v2;
            } else if (32764 == uint16(v2 >> 240)) {
                v8 = address(v2).call(MEM[v16ba0x2c9c + 32:v16ba0x2c9c + 32 + uint16(v16ba0x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v8) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!False) {
                        if (uint24(v2 >> 200)) {
                            if (uint24.max != uint24(v2 >> 200)) {
                                if (!(0x800000 & uint24(v2 >> 200))) {
                                    v9 = v10 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                                } else {
                                    v9 = MEM[0];
                                }
                                MEM[0] = v9 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v9), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                            }
                        }
                    }
                    v0 = v11 = 32 + uint16(v2 >> 160);
                }
            } else if (32766 == uint16(v2 >> 240)) {
                v12 = address(v2).staticcall(MEM[v16ba0x2c9c + 32:v16ba0x2c9c + 32 + uint16(v16ba0x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v12) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            if (!(0x800000 & uint24(v2 >> 200))) {
                                v13 = v14 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            } else {
                                v13 = MEM[0];
                            }
                            MEM[0] = v13 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v13), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                    v0 = v15 = 32 + uint16(v2 >> 160);
                }
            } else if (32763 == uint16(v2 >> 240)) {
                v0 = v16 = 12 + uint16(v2 >> 160);
                v0 += 12;
                while (1) {
                    v17 = MEM[v0] >> 248;
                    if (!v17) {
                        break;
                    } else {
                        if (v17 > 16) {
                            if (v17 >= 32) {
                                if (v17 >= 48) {
                                    if (v17 >= 48) {
                                        if (v17 >= 80) {
                                            if (v17 >= 96) {
                                                break;
                                            } else if (80 == v17) {
                                                v18 = MEM[1 + v0] >> 248;
                                                v19 = MEM[0] - (v18 << 5);
                                                MEM[0] = v19;
                                                v0 = v20 = 0;
                                                while (bool(v18)) {
                                                    v19 += 32;
                                                    v0 += MEM[v19];
                                                    v18 = v18 - 1;
                                                }
                                                v21 = v22 = 2;
                                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                            } else if (81 == v17) {
                                                v23 = MEM[1 + v0] >> 248;
                                                v24 = MEM[0];
                                                v0 = v25 = 0;
                                                while (bool(v23)) {
                                                    v0 += MEM[v24];
                                                    v24 = v24 - 32;
                                                    v23 = v23 - 1;
                                                }
                                                v21 = v26 = 2;
                                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                            } else {
                                                break;
                                            }
                                        } else if (64 == v17) {
                                            v0 = v27 = 1;
                                            v21 = v28 = 1;
                                        } else if (65 == v17) {
                                            require(v0 != v0, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                            v0 = v29 = 1;
                                            v21 = v30 = 1;
                                        } else if (66 == v17) {
                                            require(v0 < v0, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v31 = 1;
                                            v21 = v32 = 1;
                                        } else if (67 == v17) {
                                            require(v0 >= v0, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                            v0 = v33 = 1;
                                            v21 = v34 = 1;
                                        } else if (68 == v17) {
                                            require(v0 > v0, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v35 = 1;
                                            v21 = v36 = 1;
                                        } else if (69 == v17) {
                                            require(v0 <= v0, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                            v0 = v37 = 1;
                                            v21 = v38 = 1;
                                        } else if (70 == v17) {
                                            require(!v0, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v39 = 1;
                                            v21 = v40 = 1;
                                        } else if (71 == v17) {
                                            require(v0, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                            v0 = v41 = 1;
                                            v21 = v42 = 1;
                                        } else if (72 == v17) {
                                            if (v0 != v0) {
                                                return 0;
                                            } else {
                                                v0 = v43 = 1;
                                                v21 = v44 = 1;
                                            }
                                        } else if (73 == v17) {
                                            if (v0 == v0) {
                                                return 0;
                                            } else {
                                                v0 = v45 = 1;
                                                v21 = v46 = 1;
                                            }
                                        } else if (74 == v17) {
                                            if (v0 >= v0) {
                                                return 0;
                                            } else {
                                                v0 = v47 = 1;
                                                v21 = v48 = 1;
                                            }
                                        } else if (75 == v17) {
                                            if (v0 < v0) {
                                                return 0;
                                            } else {
                                                v0 = v49 = 1;
                                                v21 = v50 = 1;
                                            }
                                        } else if (76 == v17) {
                                            if (v0 <= v0) {
                                                return 0;
                                            } else {
                                                v0 = v51 = 1;
                                                v21 = v52 = 1;
                                            }
                                        } else if (77 == v17) {
                                            if (v0 > v0) {
                                                return 0;
                                            } else {
                                                v0 = v53 = 1;
                                                v21 = v54 = 1;
                                            }
                                        } else if (78 == v17) {
                                            if (v0) {
                                                return 0;
                                            } else {
                                                v0 = v55 = 1;
                                                v21 = v56 = 1;
                                            }
                                        } else if (79 == v17) {
                                            if (!v0) {
                                                return 0;
                                            } else {
                                                v0 = v57 = 1;
                                                v21 = v58 = 1;
                                            }
                                        }
                                    } else if (49 == v17) {
                                        v0 = uint8(v0);
                                        v21 = v59 = 1;
                                        // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                    } else if (50 == v17) {
                                        v0 = uint16(v0);
                                        v21 = v60 = 1;
                                        // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                    } else if (51 == v17) {
                                        v0 = uint32(v0);
                                        v21 = v61 = 1;
                                        // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                    } else if (52 == v17) {
                                        v0 = uint112(v0);
                                        v21 = v62 = 1;
                                        // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                    } else if (53 == v17) {
                                        v0 = uint128(v0);
                                        v21 = v63 = 1;
                                        // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                    }
                                } else if (32 == v17) {
                                    v0 = v64 = MEM[1 + v0];
                                    v21 = v65 = 33;
                                    // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                } else if (33 == v17) {
                                    v0 = v66 = uint8(MEM[1 + v0]);
                                    v21 = v67 = 2;
                                    // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                } else if (34 == v17) {
                                    v0 = v68 = uint16(MEM[1 + v0]);
                                    v21 = v69 = 3;
                                    // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                } else if (35 == v17) {
                                    v0 = v70 = uint32(MEM[1 + v0]);
                                    v21 = v71 = 5;
                                    // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                } else if (36 == v17) {
                                    v0 = v72 = uint112(MEM[1 + v0]);
                                    v21 = v73 = 7;
                                    // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                } else if (37 == v17) {
                                    v0 = v74 = uint128(MEM[1 + v0]);
                                    v21 = v75 = 9;
                                    // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                } else if (38 == v17) {
                                    v0 = v76 = address(MEM[1 + v0]);
                                    v21 = v77 = 13;
                                    // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                } else if (42 == v17) {
                                    v0 = v0 << 256;
                                    v21 = v78 = 1;
                                    // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                                }
                            } else if (17 == v17) {
                                v0 += v0;
                                v21 = v79 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (18 == v17) {
                                v0 = v0 - v0;
                                v21 = v80 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (19 == v17) {
                                v0 *= v0;
                                v21 = v81 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (20 == v17) {
                                v0 = v0 / v0;
                                v21 = v82 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (21 == v17) {
                                v0 = v0 / v0;
                                v21 = v83 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (22 == v17) {
                                v0 = v0 & v0;
                                v21 = v84 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (23 == v17) {
                                v0 = v0 | v0;
                                v21 = v85 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (24 == v17) {
                                v0 = v0 ^ v0;
                                v21 = v86 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (25 == v17) {
                                v0 = ~v0;
                                v21 = v87 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (26 == v17) {
                                v0 = v0 << (MEM[1 + v0] >> 248);
                                v21 = v88 = 2;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (27 == v17) {
                                v0 = v0 >> (MEM[1 + v0] >> 248);
                                v21 = v89 = 2;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (28 == v17) {
                                v0 = v0 + 1;
                                v21 = v90 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (29 == v17) {
                                v0 = v0 - 1;
                                v21 = v91 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (30 == v17) {
                                v0 = v0 - v0;
                                v21 = v92 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            } else if (31 == v17) {
                                v0 = v0 / v0;
                                v21 = v93 = 1;
                                // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                            }
                        } else if (1 == v17) {
                            v0 = v94 = MEM[32];
                            v21 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (2 == v17) {
                            v0 = v95 = MEM[64];
                            v21 = v96 = 1;
                        } else if (3 == v17) {
                            v0 = v97 = MEM[96];
                            v21 = v98 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (4 == v17) {
                            v0 = v99 = MEM[128];
                            v21 = v100 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (5 == v17) {
                            v0 = v101 = MEM[160];
                            v21 = v102 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (6 == v17) {
                            v0 = v103 = MEM[192];
                            v21 = v104 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (7 == v17) {
                            v0 = v105 = MEM[224];
                            v21 = v106 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (8 == v17) {
                            v0 = v107 = MEM[MEM[0]];
                            MEM[0] = MEM[0] - 32;
                            v21 = v108 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (10 == v17) {
                            v0 = v109 = this.balance;
                            v21 = v110 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (11 == v17) {
                            v0 = v111 = block.coinbase;
                            v21 = v112 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (12 == v17) {
                            v0 = v113 = block.timestamp;
                            v21 = v114 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (13 == v17) {
                            v0 = v115 = block.number;
                            v21 = v116 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (14 == v17) {
                            v0 = v117 = BASEFEE();
                            v21 = v118 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        } else if (15 == v17) {
                            v0 = v119 = msg.gas;
                            v21 = v120 = 1;
                            // Unknown jump to Block 0x38fb0x16ba. Refer to 3-address code (TAC);
                        }
                        v0 = v0 + v21;
                        continue;
                    }
                }
                MEM[32 + MEM[0]] = v0;
                MEM[0] += 32;
                // Unknown jump to Block 0x41890x16ba. Refer to 3-address code (TAC);
            } else if (int16.max == uint16(v2 >> 240)) {
                v121 = address(v2).delegatecall(MEM[v16ba0x2c9c + 32:v16ba0x2c9c + 32 + uint16(v16ba0x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v121) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v2 >> 200)) {
                        if (uint24.max != uint24(v2 >> 200)) {
                            if (!(0x800000 & uint24(v2 >> 200))) {
                                v122 = v123 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                            } else {
                                v122 = MEM[0];
                            }
                            MEM[0] = v122 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v122), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                        }
                    }
                    v0 = v124 = 32 + uint16(v2 >> 160);
                }
            } else if (32765 == uint16(v2 >> 240)) {
                v125 = uint16(v2 >> 160);
                v126 = MEM[12 + v0] >> 224;
                if (0xa85f1d24 == v126) {
                    v125 = 12 + v0;
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v127 = MEM[4 + v125].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v127) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v128 = 0x70a08231;
                        if (v128) {
                            v128 = v129 = 0x70a08230;
                        }
                        require(MEM[36 + v125] <= v128, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        if (MEM[68 + v125]) {
                            v130 = block.coinbase.call().value(MEM[68 + v125]).gas(msg.gas);
                        }
                    }
                } else if (0x4df86adf == v126) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v131 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v131) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v132 = 0x70a08231;
                        if (v132) {
                            v132 = v133 = 0x70a08230;
                        }
                        require(MEM[48 + v0] <= v132, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0xa9059cbb;
                        MEM[32 + MSIZE()] = MEM[112 + v0];
                        MEM[64 + MSIZE()] = v132;
                        v134 = MEM[16 + v0].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                        if (MEM[80 + v0]) {
                            v135 = block.coinbase.call().value(MEM[80 + v0]).gas(msg.gas);
                        }
                    }
                } else if (0x5ec9cad == v126) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v136 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v136) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v137 = 0x70a08231;
                        if (v137) {
                            v137 = v138 = 0x70a08230;
                        }
                        require(MEM[16 + v0] <= v137, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0x2e1a7d4d;
                        MEM[32 + MSIZE()] = v137;
                        v139 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                        if (MEM[48 + v0]) {
                            v140 = block.coinbase.call().value(MEM[48 + v0]).gas(msg.gas);
                        }
                        v141 = this.balance;
                        v142 = MEM[80 + v0].call().value(v141).gas(msg.gas);
                    }
                } else if (0x9b81788b == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v143 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v143) {
                        v144 = v145 = 0;
                        v146 = v147 = 0;
                    } else {
                        v144 = MEM[32 + MSIZE()];
                        v146 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v144) / (9970 * (v146 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x8bceaa18 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v148 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v148) {
                        v149 = v150 = 0;
                        v151 = v152 = 0;
                    } else {
                        v149 = MEM[32 + MSIZE()];
                        v151 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v151) / (9970 * (v149 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x84f16ca0 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v153 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v153) {
                        v154 = v155 = 0;
                        v156 = v157 = 0;
                    } else {
                        v154 = MEM[32 + MSIZE()];
                        v156 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v154 / (10000 * v156 + 9970 * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0x95b66162 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v158 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v158) {
                        v159 = v160 = 0;
                        v161 = v162 = 0;
                    } else {
                        v159 = MEM[32 + MSIZE()];
                        v161 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v161 / (10000 * v159 + 9970 * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0x9a23842e == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v163 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v163) {
                        v164 = v165 = 0;
                        v166 = v167 = 0;
                    } else {
                        v164 = MEM[32 + MSIZE()];
                        v166 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v164) / (MEM[80 + v0] * (v166 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x4fae2f23 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v168 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v168) {
                        v169 = v170 = 0;
                        v171 = v172 = 0;
                    } else {
                        v169 = MEM[32 + MSIZE()];
                        v171 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v171) / (MEM[80 + v0] * (v169 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0xa9f2812f == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v173 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v173) {
                        v174 = v175 = 0;
                        v176 = v177 = 0;
                    } else {
                        v174 = MEM[32 + MSIZE()];
                        v176 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v174 / (10000 * v176 + MEM[80 + v0] * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0xf93a1716 == v126) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v178 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v178) {
                        v179 = v180 = 0;
                        v181 = v182 = 0;
                    } else {
                        v179 = MEM[32 + MSIZE()];
                        v181 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v181 / (10000 * v179 + MEM[80 + v0] * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0xfe9bf13d == v126) {
                    emit 0x4bc761c3621ed10674d0b96fcf93f708ec089e64acf91cec204e8e5e6bc41568(MEM[16 + v0]);
                } else if (0xfcccdd98 == v126) {
                    emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0]], MEM[0]);
                } else if (0x1e00cebd == v126) {
                    emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0] - (MEM[16 + v0] << 5)], MEM[0]);
                } else {
                    require(0xa6c13bf == v126);
                    revert(0x8000000000000000000000000000000000000000000000000000000000000000 | MEM[16 + v0]);
                }
                v0 = 12 + v125;
                // Unknown jump to Block 0x41890x16ba. Refer to 3-address code (TAC);
            } else if (32762 == uint16(v2 >> 240)) {
                v183 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
                if (0x800000 & uint24(v2 >> 176)) {
                    v183 = v184 = MEM[0] - (v183 - 32);
                }
                v185 = address(v2).call(MEM[v16ba0x2c9c + 32:v16ba0x2c9c + 32 + uint16(v16ba0x2ca3 >> 160)], MEM[0:0]).value(MEM[v183]).gas(msg.gas);
                if (!v185) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!bool(MEM[v183])) {
                        if (uint24(v2 >> 200)) {
                            if (uint24.max != uint24(v2 >> 200)) {
                                if (!(0x800000 & uint24(v2 >> 200))) {
                                    v186 = v187 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                                } else {
                                    v186 = MEM[0];
                                }
                                MEM[0] = v186 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v186), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                            }
                        }
                    }
                    v0 = v188 = 32 + uint16(v2 >> 160);
                }
            }
        }
        v0 += v0;
        if (v0 >= v0) {
            return MEM[MEM[0]:MEM[0] + 32];
        }
        v189 = address(v2).call(MEM[v16ba0x2c9c + 32:v16ba0x2c9c + 32 + uint16(v16ba0x2ca3 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v2 >> 176).gas(msg.gas);
        if (!v189) {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!bool(0x7fffffffffffffffffff & v2 >> 176)) {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        if (!(0x800000 & uint24(v2 >> 200))) {
                            v190 = v191 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        } else {
                            v190 = MEM[0];
                        }
                        MEM[0] = v190 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v190), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
            }
            v0 = v192 = 32 + uint16(v2 >> 160);
        }
    }
}

function unlockCallback(bytes rawData) public payable { 
    CALLDATACOPY(288, 68, rawData);
    v0 = v1 = 288 + rawData;
    v0 = v2 = 288;
    while (1) {
        v3 = MEM[v0];
        if (!bool(0x8000 & v3 >> 240)) {
            if (uint24(v3 >> 176)) {
                if (uint24.max != uint24(v3 >> 176)) {
                    v4 = v5 = (0xfff & uint24(v3 >> 176)) + v0;
                    v6 = v7 = uint8(uint24(v3 >> 176) >> 12);
                    if (v7) {
                        v8 = v9 = 32 + ((0x7 & uint24(v3 >> 176) >> 20) << 5);
                        if (0x800000 & uint24(v3 >> 176)) {
                            v8 = v10 = MEM[0] - (v9 - 32);
                        }
                        while (bool(v6)) {
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
                v12 = address(v3).call(MEM[v2bc6_0x2 + 32:v2bc6_0x2 + 32 + uint16(v16e0 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v12) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!False) {
                        if (uint24(v3 >> 200)) {
                            if (uint24.max != uint24(v3 >> 200)) {
                                if (!(0x800000 & uint24(v3 >> 200))) {
                                    v13 = v14 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                                } else {
                                    v13 = v15 = MEM[0];
                                }
                                MEM[0] = v13 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v13), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                            }
                        }
                    }
                    v0 = v16 = 32 + uint16(v3 >> 160);
                }
            } else if (32766 == uint16(v3 >> 240)) {
                v17 = address(v3).staticcall(MEM[v2bc6_0x2 + 32:v2bc6_0x2 + 32 + uint16(v16e0 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v17) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v3 >> 200)) {
                        if (uint24.max != uint24(v3 >> 200)) {
                            if (!(0x800000 & uint24(v3 >> 200))) {
                                v18 = v19 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                            } else {
                                v18 = v20 = MEM[0];
                            }
                            MEM[0] = v18 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v18), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                        }
                    }
                    v0 = v21 = 32 + uint16(v3 >> 160);
                }
            } else if (32763 == uint16(v3 >> 240)) {
                v0 = v22 = 12 + uint16(v3 >> 160);
                v0 += 12;
                while (1) {
                    v23 = MEM[v0] >> 248;
                    if (!v23) {
                        break;
                    } else {
                        if (v23 > 16) {
                            if (v23 >= 32) {
                                if (v23 >= 48) {
                                    if (v23 >= 48) {
                                        if (v23 >= 80) {
                                            if (v23 >= 96) {
                                                break;
                                            } else if (80 == v23) {
                                                v24 = v25 = MEM[1 + v0] >> 248;
                                                v26 = v27 = MEM[0] - (v25 << 5);
                                                MEM[0] = v27;
                                                v0 = v28 = 0;
                                                while (bool(v24)) {
                                                    v26 += 32;
                                                    v0 += MEM[v26];
                                                    v24 = v24 - 1;
                                                }
                                                v29 = v30 = 2;
                                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                            } else if (81 == v23) {
                                                v31 = v32 = MEM[1 + v0] >> 248;
                                                v33 = v34 = MEM[0];
                                                v0 = v35 = 0;
                                                while (bool(v31)) {
                                                    v0 += MEM[v33];
                                                    v33 = v33 - 32;
                                                    v31 = v31 - 1;
                                                }
                                                v29 = v36 = 2;
                                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                            } else {
                                                break;
                                            }
                                        } else if (64 == v23) {
                                            v0 = v37 = 1;
                                            v29 = v38 = 1;
                                        } else if (65 == v23) {
                                            require(v0 != v0, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                            v0 = v39 = 1;
                                            v29 = v40 = 1;
                                        } else if (66 == v23) {
                                            require(v0 < v0, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v41 = 1;
                                            v29 = v42 = 1;
                                        } else if (67 == v23) {
                                            require(v0 >= v0, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                            v0 = v43 = 1;
                                            v29 = v44 = 1;
                                        } else if (68 == v23) {
                                            require(v0 > v0, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v45 = 1;
                                            v29 = v46 = 1;
                                        } else if (69 == v23) {
                                            require(v0 <= v0, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                            v0 = v47 = 1;
                                            v29 = v48 = 1;
                                        } else if (70 == v23) {
                                            require(!v0, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                            v0 = v49 = 1;
                                            v29 = v50 = 1;
                                        } else if (71 == v23) {
                                            require(v0, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                            v0 = v51 = 1;
                                            v29 = v52 = 1;
                                        } else if (72 == v23) {
                                            if (v0 != v0) {
                                                return 0;
                                            } else {
                                                v0 = v53 = 1;
                                                v29 = v54 = 1;
                                            }
                                        } else if (73 == v23) {
                                            if (v0 == v0) {
                                                return 0;
                                            } else {
                                                v0 = v55 = 1;
                                                v29 = v56 = 1;
                                            }
                                        } else if (74 == v23) {
                                            if (v0 >= v0) {
                                                return 0;
                                            } else {
                                                v0 = v57 = 1;
                                                v29 = v58 = 1;
                                            }
                                        } else if (75 == v23) {
                                            if (v0 < v0) {
                                                return 0;
                                            } else {
                                                v0 = v59 = 1;
                                                v29 = v60 = 1;
                                            }
                                        } else if (76 == v23) {
                                            if (v0 <= v0) {
                                                return 0;
                                            } else {
                                                v0 = v61 = 1;
                                                v29 = v62 = 1;
                                            }
                                        } else if (77 == v23) {
                                            if (v0 > v0) {
                                                return 0;
                                            } else {
                                                v0 = v63 = 1;
                                                v29 = v64 = 1;
                                            }
                                        } else if (78 == v23) {
                                            if (v0) {
                                                return 0;
                                            } else {
                                                v0 = v65 = 1;
                                                v29 = v66 = 1;
                                            }
                                        } else if (79 == v23) {
                                            if (!v0) {
                                                return 0;
                                            } else {
                                                v0 = v67 = 1;
                                                v29 = v68 = 1;
                                            }
                                        }
                                    } else if (49 == v23) {
                                        v0 = uint8(v0);
                                        v29 = v69 = 1;
                                        // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                    } else if (50 == v23) {
                                        v0 = uint16(v0);
                                        v29 = v70 = 1;
                                        // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                    } else if (51 == v23) {
                                        v0 = uint32(v0);
                                        v29 = v71 = 1;
                                        // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                    } else if (52 == v23) {
                                        v0 = uint112(v0);
                                        v29 = v72 = 1;
                                        // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                    } else if (53 == v23) {
                                        v0 = uint128(v0);
                                        v29 = v73 = 1;
                                        // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                    }
                                } else if (32 == v23) {
                                    v0 = v74 = MEM[1 + v0];
                                    v29 = v75 = 33;
                                    // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                } else if (33 == v23) {
                                    v0 = v76 = uint8(MEM[1 + v0]);
                                    v29 = v77 = 2;
                                    // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                } else if (34 == v23) {
                                    v0 = v78 = uint16(MEM[1 + v0]);
                                    v29 = v79 = 3;
                                    // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                } else if (35 == v23) {
                                    v0 = v80 = uint32(MEM[1 + v0]);
                                    v29 = v81 = 5;
                                    // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                } else if (36 == v23) {
                                    v0 = v82 = uint112(MEM[1 + v0]);
                                    v29 = v83 = 7;
                                    // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                } else if (37 == v23) {
                                    v0 = v84 = uint128(MEM[1 + v0]);
                                    v29 = v85 = 9;
                                    // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                } else if (38 == v23) {
                                    v0 = v86 = address(MEM[1 + v0]);
                                    v29 = v87 = 13;
                                    // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                } else if (42 == v23) {
                                    v0 = v0 << 256;
                                    v29 = v88 = 1;
                                    // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                                }
                            } else if (17 == v23) {
                                v0 += v0;
                                v29 = v89 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (18 == v23) {
                                v0 = v0 - v0;
                                v29 = v90 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (19 == v23) {
                                v0 *= v0;
                                v29 = v91 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (20 == v23) {
                                v0 = v0 / v0;
                                v29 = v92 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (21 == v23) {
                                v0 = v0 / v0;
                                v29 = v93 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (22 == v23) {
                                v0 = v0 & v0;
                                v29 = v94 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (23 == v23) {
                                v0 = v0 | v0;
                                v29 = v95 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (24 == v23) {
                                v0 = v0 ^ v0;
                                v29 = v96 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (25 == v23) {
                                v0 = ~v0;
                                v29 = v97 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (26 == v23) {
                                v0 = v0 << (MEM[1 + v0] >> 248);
                                v29 = v98 = 2;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (27 == v23) {
                                v0 = v0 >> (MEM[1 + v0] >> 248);
                                v29 = v99 = 2;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (28 == v23) {
                                v0 = v0 + 1;
                                v29 = v100 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (29 == v23) {
                                v0 = v0 - 1;
                                v29 = v101 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (30 == v23) {
                                v0 = v0 - v0;
                                v29 = v102 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            } else if (31 == v23) {
                                v0 = v0 / v0;
                                v29 = v103 = 1;
                                // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                            }
                        } else if (1 == v23) {
                            v0 = v104 = MEM[32];
                            v29 = v105 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (2 == v23) {
                            v0 = v106 = MEM[64];
                            v29 = v107 = 1;
                        } else if (3 == v23) {
                            v0 = v108 = MEM[96];
                            v29 = v109 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (4 == v23) {
                            v0 = v110 = MEM[128];
                            v29 = v111 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (5 == v23) {
                            v0 = v112 = MEM[160];
                            v29 = v113 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (6 == v23) {
                            v0 = v114 = MEM[192];
                            v29 = v115 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (7 == v23) {
                            v0 = v116 = MEM[224];
                            v29 = v117 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (8 == v23) {
                            v0 = v118 = MEM[MEM[0]];
                            MEM[0] = MEM[0] - 32;
                            v29 = v119 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (10 == v23) {
                            v0 = v120 = this.balance;
                            v29 = v121 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (11 == v23) {
                            v0 = v122 = block.coinbase;
                            v29 = v123 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (12 == v23) {
                            v0 = v124 = block.timestamp;
                            v29 = v125 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (13 == v23) {
                            v0 = v126 = block.number;
                            v29 = v127 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (14 == v23) {
                            v0 = v128 = BASEFEE();
                            v29 = v129 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        } else if (15 == v23) {
                            v0 = v130 = msg.gas;
                            v29 = v131 = 1;
                            // Unknown jump to Block 0x2338. Refer to 3-address code (TAC);
                        }
                        v0 = v0 + v29;
                        continue;
                    }
                }
                MEM[32 + MEM[0]] = v0;
                MEM[0] += 32;
                // Unknown jump to Block 0x2bc6. Refer to 3-address code (TAC);
            } else if (int16.max == uint16(v3 >> 240)) {
                v132 = address(v3).delegatecall(MEM[v2bc6_0x2 + 32:v2bc6_0x2 + 32 + uint16(v16e0 >> 160)], MEM[0:0]).gas(msg.gas);
                if (!v132) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (uint24(v3 >> 200)) {
                        if (uint24.max != uint24(v3 >> 200)) {
                            if (!(0x800000 & uint24(v3 >> 200))) {
                                v133 = v134 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                            } else {
                                v133 = v135 = MEM[0];
                            }
                            MEM[0] = v133 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v133), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                        }
                    }
                    v0 = v136 = 32 + uint16(v3 >> 160);
                }
            } else if (32765 == uint16(v3 >> 240)) {
                v137 = v138 = uint16(v3 >> 160);
                v139 = MEM[12 + v0] >> 224;
                if (0xa85f1d24 == v139) {
                    v137 = 12 + v0;
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v140 = MEM[4 + v137].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v140) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v141 = v142 = 0x70a08231;
                        if (v142) {
                            v141 = v143 = 0x70a08230;
                        }
                        require(MEM[36 + v137] <= v141, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        if (MEM[68 + v137]) {
                            v144 = block.coinbase.call().value(MEM[68 + v137]).gas(msg.gas);
                        }
                    }
                } else if (0x4df86adf == v139) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v145 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v145) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v146 = v147 = 0x70a08231;
                        if (v147) {
                            v146 = v148 = 0x70a08230;
                        }
                        require(MEM[48 + v0] <= v146, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0xa9059cbb;
                        MEM[32 + MSIZE()] = MEM[112 + v0];
                        MEM[64 + MSIZE()] = v146;
                        v149 = MEM[16 + v0].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                        if (MEM[80 + v0]) {
                            v150 = block.coinbase.call().value(MEM[80 + v0]).gas(msg.gas);
                        }
                    }
                } else if (0x5ec9cad == v139) {
                    MEM[MSIZE()] = 0x70a08231;
                    MEM[32 + MSIZE()] = this;
                    v151 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                    if (!v151) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v152 = v153 = 0x70a08231;
                        if (v153) {
                            v152 = v154 = 0x70a08230;
                        }
                        require(MEM[16 + v0] <= v152, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                        MEM[MSIZE()] = 0x2e1a7d4d;
                        MEM[32 + MSIZE()] = v152;
                        v155 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                        if (MEM[48 + v0]) {
                            v156 = block.coinbase.call().value(MEM[48 + v0]).gas(msg.gas);
                        }
                        v157 = this.balance;
                        v158 = MEM[80 + v0].call().value(v157).gas(msg.gas);
                    }
                } else if (0x9b81788b == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v159 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v159) {
                        v160 = v161 = 0;
                        v162 = v163 = 0;
                    } else {
                        v160 = v164 = MEM[32 + MSIZE()];
                        v162 = v165 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v160) / (9970 * (v162 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x8bceaa18 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v166 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v166) {
                        v167 = v168 = 0;
                        v169 = v170 = 0;
                    } else {
                        v167 = v171 = MEM[32 + MSIZE()];
                        v169 = v172 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v169) / (9970 * (v167 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x84f16ca0 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v173 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v173) {
                        v174 = v175 = 0;
                        v176 = v177 = 0;
                    } else {
                        v174 = v178 = MEM[32 + MSIZE()];
                        v176 = v179 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v174 / (10000 * v176 + 9970 * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0x95b66162 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v180 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v180) {
                        v181 = v182 = 0;
                        v183 = v184 = 0;
                    } else {
                        v181 = v185 = MEM[32 + MSIZE()];
                        v183 = v186 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 9970 * MEM[48 + v0] * v183 / (10000 * v181 + 9970 * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0x9a23842e == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v187 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v187) {
                        v188 = v189 = 0;
                        v190 = v191 = 0;
                    } else {
                        v188 = v192 = MEM[32 + MSIZE()];
                        v190 = v193 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v188) / (MEM[80 + v0] * (v190 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0x4fae2f23 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v194 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v194) {
                        v195 = v196 = 0;
                        v197 = v198 = 0;
                    } else {
                        v195 = v199 = MEM[32 + MSIZE()];
                        v197 = v200 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v0] * v197) / (MEM[80 + v0] * (v195 - MEM[48 + v0]));
                    MEM[0] += 32;
                } else if (0xa9f2812f == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v201 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v201) {
                        v202 = v203 = 0;
                        v204 = v205 = 0;
                    } else {
                        v202 = v206 = MEM[32 + MSIZE()];
                        v204 = v207 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v202 / (10000 * v204 + MEM[80 + v0] * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0xf93a1716 == v139) {
                    MEM[MSIZE()] = 0x902f1ac;
                    v208 = MEM[16 + v0].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                    if (!v208) {
                        v209 = v210 = 0;
                        v211 = v212 = 0;
                    } else {
                        v209 = v213 = MEM[32 + MSIZE()];
                        v211 = v214 = 0x902f1ac;
                    }
                    MEM[32 + MEM[0]] = MEM[80 + v0] * MEM[48 + v0] * v211 / (10000 * v209 + MEM[80 + v0] * MEM[48 + v0]);
                    MEM[0] += 32;
                } else if (0xfe9bf13d == v139) {
                    emit 0x4bc761c3621ed10674d0b96fcf93f708ec089e64acf91cec204e8e5e6bc41568(MEM[16 + v0]);
                } else if (0xfcccdd98 == v139) {
                    emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0]], MEM[0]);
                } else if (0x1e00cebd == v139) {
                    emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0] - (MEM[16 + v0] << 5)], MEM[0]);
                } else {
                    require(0xa6c13bf == v139);
                    revert(0x8000000000000000000000000000000000000000000000000000000000000000 | MEM[16 + v0]);
                }
                v0 = 12 + v137;
                // Unknown jump to Block 0x2bc6. Refer to 3-address code (TAC);
            } else if (32762 == uint16(v3 >> 240)) {
                v215 = v216 = 32 + ((0x7 & uint24(v3 >> 176) >> 20) << 5);
                if (0x800000 & uint24(v3 >> 176)) {
                    v215 = v217 = MEM[0] - (v216 - 32);
                }
                v218 = address(v3).call(MEM[v2bc6_0x2 + 32:v2bc6_0x2 + 32 + uint16(v16e0 >> 160)], MEM[0:0]).value(MEM[v215]).gas(msg.gas);
                if (!v218) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    if (!bool(MEM[v215])) {
                        if (uint24(v3 >> 200)) {
                            if (uint24.max != uint24(v3 >> 200)) {
                                if (!(0x800000 & uint24(v3 >> 200))) {
                                    v219 = v220 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                                } else {
                                    v219 = v221 = MEM[0];
                                }
                                MEM[0] = v219 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v219), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                            }
                        }
                    }
                    v0 = v222 = 32 + uint16(v3 >> 160);
                }
            }
        }
        v0 += v0;
        if (v0 >= v0) {
            return 32, 32, MEM[MEM[0]];
        }
        v223 = address(v3).call(MEM[v2bc6_0x2 + 32:v2bc6_0x2 + 32 + uint16(v16e0 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v3 >> 176).gas(msg.gas);
        if (!v223) {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!bool(0x7fffffffffffffffffff & v3 >> 176)) {
                if (uint24(v3 >> 200)) {
                    if (uint24.max != uint24(v3 >> 200)) {
                        if (!(0x800000 & uint24(v3 >> 200))) {
                            v224 = v225 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                        } else {
                            v224 = v226 = MEM[0];
                        }
                        MEM[0] = v224 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v224), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                    }
                }
            }
            v0 = v227 = 32 + uint16(v3 >> 160);
        }
    }
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public payable { 
    if (20 == data.word0) {
        if (amountToPay >= 0) {
        }
        MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
        MEM[32 + MEM[uint8.max + 1]] = msg.sender;
        MEM[64 + MEM[uint8.max + 1]] = v0;
        v1 = (data.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
        return ;
    } else {
        MEM[0] = 64;
        CALLDATACOPY(288, data.data, data.word0.length);
        v2 = 288 + data.word0.length;
        v2 = v3 = 288;
        while (1) {
            v4 = MEM[v2];
            if (!bool(0x8000 & v4 >> 240)) {
                if (uint24(v4 >> 176)) {
                    if (uint24.max != uint24(v4 >> 176)) {
                        v5 = (0xfff & uint24(v4 >> 176)) + v2;
                        v6 = uint8(uint24(v4 >> 176) >> 12);
                        if (v6) {
                            v7 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                            if (0x800000 & uint24(v4 >> 176)) {
                                v7 = v8 = MEM[0] - (v7 - 32);
                            }
                            while (bool(v6)) {
                                if (32 > v6) {
                                    MEM[v5] = MEM[v5] & ~((1 << (v6 << 3)) - 1) | MEM[v7] & (1 << (v6 << 3)) - 1;
                                } else {
                                    MEM[v5] = MEM[v7];
                                    v5 += 32;
                                    v7 += 32;
                                    v6 = v6 - 32;
                                }
                            }
                            // Unknown jump to Block 0x2d530x2be5. Refer to 3-address code (TAC);
                        }
                    }
                }
                if (!uint16(v4 >> 240)) {
                    v2 = v9 = uint16.max + v4;
                } else if (32764 == uint16(v4 >> 240)) {
                    v10 = address(v4).call(MEM[v2be50x2c9c + 32:v2be50x2c9c + 32 + uint16(v2be50x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                    if (!v10) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (!False) {
                            if (uint24(v4 >> 200)) {
                                if (uint24.max != uint24(v4 >> 200)) {
                                    if (!(0x800000 & uint24(v4 >> 200))) {
                                        v11 = v12 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                    } else {
                                        v11 = MEM[0];
                                    }
                                    MEM[0] = v11 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                                    RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v11), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                                }
                            }
                        }
                        v2 = v13 = 32 + uint16(v4 >> 160);
                    }
                } else if (32766 == uint16(v4 >> 240)) {
                    v14 = address(v4).staticcall(MEM[v2be50x2c9c + 32:v2be50x2c9c + 32 + uint16(v2be50x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                    if (!v14) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (uint24(v4 >> 200)) {
                            if (uint24.max != uint24(v4 >> 200)) {
                                if (!(0x800000 & uint24(v4 >> 200))) {
                                    v15 = v16 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                } else {
                                    v15 = MEM[0];
                                }
                                MEM[0] = v15 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v15), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                            }
                        }
                        v2 = v17 = 32 + uint16(v4 >> 160);
                    }
                } else if (32763 == uint16(v4 >> 240)) {
                    v2 = v18 = 12 + uint16(v4 >> 160);
                    v2 += 12;
                    while (1) {
                        v19 = MEM[v2] >> 248;
                        if (!v19) {
                            break;
                        } else {
                            if (v19 > 16) {
                                if (v19 >= 32) {
                                    if (v19 >= 48) {
                                        if (v19 >= 48) {
                                            if (v19 >= 80) {
                                                if (v19 >= 96) {
                                                    break;
                                                } else if (80 == v19) {
                                                    v20 = MEM[1 + v2] >> 248;
                                                    v21 = MEM[0] - (v20 << 5);
                                                    MEM[0] = v21;
                                                    v2 = v22 = 0;
                                                    while (bool(v20)) {
                                                        v21 += 32;
                                                        v2 += MEM[v21];
                                                        v20 = v20 - 1;
                                                    }
                                                    v23 = v24 = 2;
                                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                                } else if (81 == v19) {
                                                    v25 = MEM[1 + v2] >> 248;
                                                    v26 = MEM[0];
                                                    v2 = v27 = 0;
                                                    while (bool(v25)) {
                                                        v2 += MEM[v26];
                                                        v26 = v26 - 32;
                                                        v25 = v25 - 1;
                                                    }
                                                    v23 = v28 = 2;
                                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                                } else {
                                                    break;
                                                }
                                            } else if (64 == v19) {
                                                v2 = v29 = 1;
                                                v23 = v30 = 1;
                                            } else if (65 == v19) {
                                                require(v2 != v2, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                                v2 = v31 = 1;
                                                v23 = v32 = 1;
                                            } else if (66 == v19) {
                                                require(v2 < v2, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                                v2 = v33 = 1;
                                                v23 = v34 = 1;
                                            } else if (67 == v19) {
                                                require(v2 >= v2, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                                v2 = v35 = 1;
                                                v23 = v36 = 1;
                                            } else if (68 == v19) {
                                                require(v2 > v2, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                                v2 = v37 = 1;
                                                v23 = v38 = 1;
                                            } else if (69 == v19) {
                                                require(v2 <= v2, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                                v2 = v39 = 1;
                                                v23 = v40 = 1;
                                            } else if (70 == v19) {
                                                require(!v2, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                                v2 = v41 = 1;
                                                v23 = v42 = 1;
                                            } else if (71 == v19) {
                                                require(v2, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                                v2 = v43 = 1;
                                                v23 = v44 = 1;
                                            } else if (72 == v19) {
                                                if (v2 != v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v45 = 1;
                                                    v23 = v46 = 1;
                                                }
                                            } else if (73 == v19) {
                                                if (v2 == v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v47 = 1;
                                                    v23 = v48 = 1;
                                                }
                                            } else if (74 == v19) {
                                                if (v2 >= v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v49 = 1;
                                                    v23 = v50 = 1;
                                                }
                                            } else if (75 == v19) {
                                                if (v2 < v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v51 = 1;
                                                    v23 = v52 = 1;
                                                }
                                            } else if (76 == v19) {
                                                if (v2 <= v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v53 = 1;
                                                    v23 = v54 = 1;
                                                }
                                            } else if (77 == v19) {
                                                if (v2 > v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v55 = 1;
                                                    v23 = v56 = 1;
                                                }
                                            } else if (78 == v19) {
                                                if (v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v57 = 1;
                                                    v23 = v58 = 1;
                                                }
                                            } else if (79 == v19) {
                                                if (!v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v59 = 1;
                                                    v23 = v60 = 1;
                                                }
                                            }
                                        } else if (49 == v19) {
                                            v2 = uint8(v2);
                                            v23 = v61 = 1;
                                            // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                        } else if (50 == v19) {
                                            v2 = uint16(v2);
                                            v23 = v62 = 1;
                                            // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                        } else if (51 == v19) {
                                            v2 = uint32(v2);
                                            v23 = v63 = 1;
                                            // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                        } else if (52 == v19) {
                                            v2 = uint112(v2);
                                            v23 = v64 = 1;
                                            // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                        } else if (53 == v19) {
                                            v2 = uint128(v2);
                                            v23 = v65 = 1;
                                            // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                        }
                                    } else if (32 == v19) {
                                        v2 = v66 = MEM[1 + v2];
                                        v23 = v67 = 33;
                                        // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                    } else if (33 == v19) {
                                        v2 = v68 = uint8(MEM[1 + v2]);
                                        v23 = v69 = 2;
                                        // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                    } else if (34 == v19) {
                                        v2 = v70 = uint16(MEM[1 + v2]);
                                        v23 = v71 = 3;
                                        // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                    } else if (35 == v19) {
                                        v2 = v72 = uint32(MEM[1 + v2]);
                                        v23 = v73 = 5;
                                        // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                    } else if (36 == v19) {
                                        v2 = v74 = uint112(MEM[1 + v2]);
                                        v23 = v75 = 7;
                                        // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                    } else if (37 == v19) {
                                        v2 = v76 = uint128(MEM[1 + v2]);
                                        v23 = v77 = 9;
                                        // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                    } else if (38 == v19) {
                                        v2 = v78 = address(MEM[1 + v2]);
                                        v23 = v79 = 13;
                                        // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                    } else if (42 == v19) {
                                        v2 = v2 << 256;
                                        v23 = v80 = 1;
                                        // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                    }
                                } else if (17 == v19) {
                                    v2 += v2;
                                    v23 = v81 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (18 == v19) {
                                    v2 = v2 - v2;
                                    v23 = v82 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (19 == v19) {
                                    v2 *= v2;
                                    v23 = v83 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (20 == v19) {
                                    v2 = v2 / v2;
                                    v23 = v84 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (21 == v19) {
                                    v2 = v2 / v2;
                                    v23 = v85 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (22 == v19) {
                                    v2 = v2 & v2;
                                    v23 = v86 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (23 == v19) {
                                    v2 = v2 | v2;
                                    v23 = v87 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (24 == v19) {
                                    v2 = v2 ^ v2;
                                    v23 = v88 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (25 == v19) {
                                    v2 = ~v2;
                                    v23 = v89 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (26 == v19) {
                                    v2 = v2 << (MEM[1 + v2] >> 248);
                                    v23 = v90 = 2;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (27 == v19) {
                                    v2 = v2 >> (MEM[1 + v2] >> 248);
                                    v23 = v91 = 2;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (28 == v19) {
                                    v2 = v2 + 1;
                                    v23 = v92 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (29 == v19) {
                                    v2 = v2 - 1;
                                    v23 = v93 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (30 == v19) {
                                    v2 = v2 - v2;
                                    v23 = v94 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                } else if (31 == v19) {
                                    v2 = v2 / v2;
                                    v23 = v95 = 1;
                                    // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                                }
                            } else if (1 == v19) {
                                v23 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (2 == v19) {
                                v23 = v96 = 1;
                            } else if (3 == v19) {
                                v2 = v97 = MEM[96];
                                v23 = v98 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (4 == v19) {
                                v2 = v99 = MEM[128];
                                v23 = v100 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (5 == v19) {
                                v2 = v101 = MEM[160];
                                v23 = v102 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (6 == v19) {
                                v2 = v103 = MEM[192];
                                v23 = v104 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (7 == v19) {
                                v2 = v105 = MEM[224];
                                v23 = v106 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (8 == v19) {
                                v2 = v107 = MEM[MEM[0]];
                                MEM[0] = MEM[0] - 32;
                                v23 = v108 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (10 == v19) {
                                v2 = v109 = this.balance;
                                v23 = v110 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (11 == v19) {
                                v2 = v111 = block.coinbase;
                                v23 = v112 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (12 == v19) {
                                v2 = v113 = block.timestamp;
                                v23 = v114 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (13 == v19) {
                                v2 = v115 = block.number;
                                v23 = v116 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (14 == v19) {
                                v2 = v117 = BASEFEE();
                                v23 = v118 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            } else if (15 == v19) {
                                v2 = v119 = msg.gas;
                                v23 = v120 = 1;
                                // Unknown jump to Block 0x38fb0x2be5. Refer to 3-address code (TAC);
                            }
                            v2 = v2 + v23;
                            continue;
                        }
                    }
                    MEM[32 + MEM[0]] = v2;
                    MEM[0] += 32;
                    // Unknown jump to Block 0x41890x2be5. Refer to 3-address code (TAC);
                } else if (int16.max == uint16(v4 >> 240)) {
                    v121 = address(v4).delegatecall(MEM[v2be50x2c9c + 32:v2be50x2c9c + 32 + uint16(v2be50x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                    if (!v121) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (uint24(v4 >> 200)) {
                            if (uint24.max != uint24(v4 >> 200)) {
                                if (!(0x800000 & uint24(v4 >> 200))) {
                                    v122 = v123 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                } else {
                                    v122 = MEM[0];
                                }
                                MEM[0] = v122 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v122), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                            }
                        }
                        v2 = v124 = 32 + uint16(v4 >> 160);
                    }
                } else if (32765 == uint16(v4 >> 240)) {
                    v125 = uint16(v4 >> 160);
                    v126 = MEM[12 + v2] >> 224;
                    if (0xa85f1d24 == v126) {
                        v125 = 12 + v2;
                        MEM[MSIZE()] = 0x70a08231;
                        MEM[32 + MSIZE()] = this;
                        v127 = MEM[4 + v125].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                        if (!v127) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        } else {
                            v128 = 0x70a08231;
                            if (v128) {
                                v128 = v129 = 0x70a08230;
                            }
                            require(MEM[36 + v125] <= v128, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                            if (MEM[68 + v125]) {
                                v130 = block.coinbase.call().value(MEM[68 + v125]).gas(msg.gas);
                            }
                        }
                    } else if (0x4df86adf == v126) {
                        MEM[MSIZE()] = 0x70a08231;
                        MEM[32 + MSIZE()] = this;
                        v131 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                        if (!v131) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        } else {
                            v132 = 0x70a08231;
                            if (v132) {
                                v132 = v133 = 0x70a08230;
                            }
                            require(MEM[48 + v2] <= v132, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                            MEM[MSIZE()] = 0xa9059cbb;
                            MEM[32 + MSIZE()] = MEM[112 + v2];
                            MEM[64 + MSIZE()] = v132;
                            v134 = MEM[16 + v2].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                            if (MEM[80 + v2]) {
                                v135 = block.coinbase.call().value(MEM[80 + v2]).gas(msg.gas);
                            }
                        }
                    } else if (0x5ec9cad == v126) {
                        MEM[MSIZE()] = 0x70a08231;
                        MEM[32 + MSIZE()] = this;
                        v136 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                        if (!v136) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        } else {
                            v137 = 0x70a08231;
                            if (v137) {
                                v137 = v138 = 0x70a08230;
                            }
                            require(MEM[16 + v2] <= v137, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                            MEM[MSIZE()] = 0x2e1a7d4d;
                            MEM[32 + MSIZE()] = v137;
                            v139 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                            if (MEM[48 + v2]) {
                                v140 = block.coinbase.call().value(MEM[48 + v2]).gas(msg.gas);
                            }
                            v141 = this.balance;
                            v142 = MEM[80 + v2].call().value(v141).gas(msg.gas);
                        }
                    } else if (0x9b81788b == v126) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v143 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v143) {
                            v144 = v145 = 0;
                            v146 = v147 = 0;
                        } else {
                            v144 = MEM[32 + MSIZE()];
                            v146 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v144) / (9970 * (v146 - MEM[48 + v2]));
                        MEM[0] += 32;
                    } else if (0x8bceaa18 == v126) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v148 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v148) {
                            v149 = v150 = 0;
                            v151 = v152 = 0;
                        } else {
                            v149 = MEM[32 + MSIZE()];
                            v151 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v151) / (9970 * (v149 - MEM[48 + v2]));
                        MEM[0] += 32;
                    } else if (0x84f16ca0 == v126) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v153 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v153) {
                            v154 = v155 = 0;
                            v156 = v157 = 0;
                        } else {
                            v154 = MEM[32 + MSIZE()];
                            v156 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 9970 * MEM[48 + v2] * v154 / (10000 * v156 + 9970 * MEM[48 + v2]);
                        MEM[0] += 32;
                    } else if (0x95b66162 == v126) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v158 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v158) {
                            v159 = v160 = 0;
                            v161 = v162 = 0;
                        } else {
                            v159 = MEM[32 + MSIZE()];
                            v161 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 9970 * MEM[48 + v2] * v161 / (10000 * v159 + 9970 * MEM[48 + v2]);
                        MEM[0] += 32;
                    } else if (0x9a23842e == v126) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v163 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v163) {
                            v164 = v165 = 0;
                            v166 = v167 = 0;
                        } else {
                            v164 = MEM[32 + MSIZE()];
                            v166 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v164) / (MEM[80 + v2] * (v166 - MEM[48 + v2]));
                        MEM[0] += 32;
                    } else if (0x4fae2f23 == v126) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v168 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v168) {
                            v169 = v170 = 0;
                            v171 = v172 = 0;
                        } else {
                            v169 = MEM[32 + MSIZE()];
                            v171 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v171) / (MEM[80 + v2] * (v169 - MEM[48 + v2]));
                        MEM[0] += 32;
                    } else if (0xa9f2812f == v126) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v173 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v173) {
                            v174 = v175 = 0;
                            v176 = v177 = 0;
                        } else {
                            v174 = MEM[32 + MSIZE()];
                            v176 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = MEM[80 + v2] * MEM[48 + v2] * v174 / (10000 * v176 + MEM[80 + v2] * MEM[48 + v2]);
                        MEM[0] += 32;
                    } else if (0xf93a1716 == v126) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v178 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v178) {
                            v179 = v180 = 0;
                            v181 = v182 = 0;
                        } else {
                            v179 = MEM[32 + MSIZE()];
                            v181 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = MEM[80 + v2] * MEM[48 + v2] * v181 / (10000 * v179 + MEM[80 + v2] * MEM[48 + v2]);
                        MEM[0] += 32;
                    } else if (0xfe9bf13d == v126) {
                        emit 0x4bc761c3621ed10674d0b96fcf93f708ec089e64acf91cec204e8e5e6bc41568(MEM[16 + v2]);
                    } else if (0xfcccdd98 == v126) {
                        emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0]], MEM[0]);
                    } else if (0x1e00cebd == v126) {
                        emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0] - (MEM[16 + v2] << 5)], MEM[0]);
                    } else {
                        require(0xa6c13bf == v126);
                        revert(0x8000000000000000000000000000000000000000000000000000000000000000 | MEM[16 + v2]);
                    }
                    v2 = 12 + v125;
                    // Unknown jump to Block 0x41890x2be5. Refer to 3-address code (TAC);
                } else if (32762 == uint16(v4 >> 240)) {
                    v183 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                    if (0x800000 & uint24(v4 >> 176)) {
                        v183 = v184 = MEM[0] - (v183 - 32);
                    }
                    v185 = address(v4).call(MEM[v2be50x2c9c + 32:v2be50x2c9c + 32 + uint16(v2be50x2ca3 >> 160)], MEM[0:0]).value(MEM[v183]).gas(msg.gas);
                    if (!v185) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (!bool(MEM[v183])) {
                            if (uint24(v4 >> 200)) {
                                if (uint24.max != uint24(v4 >> 200)) {
                                    if (!(0x800000 & uint24(v4 >> 200))) {
                                        v186 = v187 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                    } else {
                                        v186 = MEM[0];
                                    }
                                    MEM[0] = v186 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                                    RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v186), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                                }
                            }
                        }
                        v2 = v188 = 32 + uint16(v4 >> 160);
                    }
                }
            }
            v2 += v2;
            if (v2 >= v2) {
                return MEM[MEM[0]:MEM[0] + 32];
            }
            v189 = address(v4).call(MEM[v2be50x2c9c + 32:v2be50x2c9c + 32 + uint16(v2be50x2ca3 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v4 >> 176).gas(msg.gas);
            if (!v189) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!bool(0x7fffffffffffffffffff & v4 >> 176)) {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            if (!(0x800000 & uint24(v4 >> 200))) {
                                v190 = v191 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            } else {
                                v190 = MEM[0];
                            }
                            MEM[0] = v190 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v190), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                }
                v2 = v192 = 32 + uint16(v4 >> 160);
            }
        }
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    if (20 == data.word0) {
        if (amount0Delta >= 0) {
        }
        MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
        MEM[32 + MEM[uint8.max + 1]] = msg.sender;
        MEM[64 + MEM[uint8.max + 1]] = v0;
        v1 = (data.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
        return ;
    } else {
        if (amount0Delta < 0) {
            MEM[32] = amount0Delta << 256;
        } else {
            MEM[32] = amount1Delta << 256;
        }
        MEM[0] = 64;
        CALLDATACOPY(288, data.data, data.word0.length);
        v2 = 288 + data.word0.length;
        v2 = v3 = 288;
        while (1) {
            v4 = MEM[v2];
            if (!bool(0x8000 & v4 >> 240)) {
                if (uint24(v4 >> 176)) {
                    if (uint24.max != uint24(v4 >> 176)) {
                        v5 = (0xfff & uint24(v4 >> 176)) + v2;
                        v6 = uint8(uint24(v4 >> 176) >> 12);
                        if (v6) {
                            v7 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                            if (0x800000 & uint24(v4 >> 176)) {
                                v7 = v8 = MEM[0] - (v7 - 32);
                            }
                            while (bool(v6)) {
                                if (32 > v6) {
                                    MEM[v5] = MEM[v5] & ~((1 << (v6 << 3)) - 1) | MEM[v7] & (1 << (v6 << 3)) - 1;
                                } else {
                                    MEM[v5] = MEM[v7];
                                    v5 += 32;
                                    v7 += 32;
                                    v6 = v6 - 32;
                                }
                            }
                            // Unknown jump to Block 0x2d530x2c06. Refer to 3-address code (TAC);
                        }
                    }
                }
                if (!uint16(v4 >> 240)) {
                    v2 = v9 = uint16.max + v4;
                } else if (32764 == uint16(v4 >> 240)) {
                    v10 = address(v4).call(MEM[v2c060x2c9c + 32:v2c060x2c9c + 32 + uint16(v2c060x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                    if (!v10) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (!False) {
                            if (uint24(v4 >> 200)) {
                                if (uint24.max != uint24(v4 >> 200)) {
                                    if (!(0x800000 & uint24(v4 >> 200))) {
                                        v11 = v12 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                    } else {
                                        v11 = MEM[0];
                                    }
                                    MEM[0] = v11 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                                    RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v11), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                                }
                            }
                        }
                        v2 = v13 = 32 + uint16(v4 >> 160);
                    }
                } else if (32766 == uint16(v4 >> 240)) {
                    v14 = address(v4).staticcall(MEM[v2c060x2c9c + 32:v2c060x2c9c + 32 + uint16(v2c060x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                    if (!v14) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (uint24(v4 >> 200)) {
                            if (uint24.max != uint24(v4 >> 200)) {
                                if (!(0x800000 & uint24(v4 >> 200))) {
                                    v15 = v16 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                } else {
                                    v15 = MEM[0];
                                }
                                MEM[0] = v15 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v15), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                            }
                        }
                        v2 = v17 = 32 + uint16(v4 >> 160);
                    }
                } else if (32763 == uint16(v4 >> 240)) {
                    v2 = v18 = 12 + uint16(v4 >> 160);
                    v2 += 12;
                    while (1) {
                        v19 = MEM[v2] >> 248;
                        if (!v19) {
                            break;
                        } else {
                            if (v19 > 16) {
                                if (v19 >= 32) {
                                    if (v19 >= 48) {
                                        if (v19 >= 48) {
                                            if (v19 >= 80) {
                                                if (v19 >= 96) {
                                                    break;
                                                } else if (80 == v19) {
                                                    v20 = MEM[1 + v2] >> 248;
                                                    v21 = MEM[0] - (v20 << 5);
                                                    MEM[0] = v21;
                                                    v2 = v22 = 0;
                                                    while (bool(v20)) {
                                                        v21 += 32;
                                                        v2 += MEM[v21];
                                                        v20 = v20 - 1;
                                                    }
                                                    v23 = v24 = 2;
                                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                                } else if (81 == v19) {
                                                    v25 = MEM[1 + v2] >> 248;
                                                    v26 = MEM[0];
                                                    v2 = v27 = 0;
                                                    while (bool(v25)) {
                                                        v2 += MEM[v26];
                                                        v26 = v26 - 32;
                                                        v25 = v25 - 1;
                                                    }
                                                    v23 = v28 = 2;
                                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                                } else {
                                                    break;
                                                }
                                            } else if (64 == v19) {
                                                v2 = v29 = 1;
                                                v23 = v30 = 1;
                                            } else if (65 == v19) {
                                                require(v2 != v2, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                                v2 = v31 = 1;
                                                v23 = v32 = 1;
                                            } else if (66 == v19) {
                                                require(v2 < v2, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                                v2 = v33 = 1;
                                                v23 = v34 = 1;
                                            } else if (67 == v19) {
                                                require(v2 >= v2, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                                v2 = v35 = 1;
                                                v23 = v36 = 1;
                                            } else if (68 == v19) {
                                                require(v2 > v2, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                                v2 = v37 = 1;
                                                v23 = v38 = 1;
                                            } else if (69 == v19) {
                                                require(v2 <= v2, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                                v2 = v39 = 1;
                                                v23 = v40 = 1;
                                            } else if (70 == v19) {
                                                require(!v2, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                                v2 = v41 = 1;
                                                v23 = v42 = 1;
                                            } else if (71 == v19) {
                                                require(v2, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                                v2 = v43 = 1;
                                                v23 = v44 = 1;
                                            } else if (72 == v19) {
                                                if (v2 != v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v45 = 1;
                                                    v23 = v46 = 1;
                                                }
                                            } else if (73 == v19) {
                                                if (v2 == v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v47 = 1;
                                                    v23 = v48 = 1;
                                                }
                                            } else if (74 == v19) {
                                                if (v2 >= v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v49 = 1;
                                                    v23 = v50 = 1;
                                                }
                                            } else if (75 == v19) {
                                                if (v2 < v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v51 = 1;
                                                    v23 = v52 = 1;
                                                }
                                            } else if (76 == v19) {
                                                if (v2 <= v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v53 = 1;
                                                    v23 = v54 = 1;
                                                }
                                            } else if (77 == v19) {
                                                if (v2 > v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v55 = 1;
                                                    v23 = v56 = 1;
                                                }
                                            } else if (78 == v19) {
                                                if (v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v57 = 1;
                                                    v23 = v58 = 1;
                                                }
                                            } else if (79 == v19) {
                                                if (!v2) {
                                                    return 0;
                                                } else {
                                                    v2 = v59 = 1;
                                                    v23 = v60 = 1;
                                                }
                                            }
                                        } else if (49 == v19) {
                                            v2 = uint8(v2);
                                            v23 = v61 = 1;
                                            // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                        } else if (50 == v19) {
                                            v2 = uint16(v2);
                                            v23 = v62 = 1;
                                            // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                        } else if (51 == v19) {
                                            v2 = uint32(v2);
                                            v23 = v63 = 1;
                                            // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                        } else if (52 == v19) {
                                            v2 = uint112(v2);
                                            v23 = v64 = 1;
                                            // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                        } else if (53 == v19) {
                                            v2 = uint128(v2);
                                            v23 = v65 = 1;
                                            // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                        }
                                    } else if (32 == v19) {
                                        v2 = v66 = MEM[1 + v2];
                                        v23 = v67 = 33;
                                        // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                    } else if (33 == v19) {
                                        v2 = v68 = uint8(MEM[1 + v2]);
                                        v23 = v69 = 2;
                                        // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                    } else if (34 == v19) {
                                        v2 = v70 = uint16(MEM[1 + v2]);
                                        v23 = v71 = 3;
                                        // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                    } else if (35 == v19) {
                                        v2 = v72 = uint32(MEM[1 + v2]);
                                        v23 = v73 = 5;
                                        // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                    } else if (36 == v19) {
                                        v2 = v74 = uint112(MEM[1 + v2]);
                                        v23 = v75 = 7;
                                        // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                    } else if (37 == v19) {
                                        v2 = v76 = uint128(MEM[1 + v2]);
                                        v23 = v77 = 9;
                                        // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                    } else if (38 == v19) {
                                        v2 = v78 = address(MEM[1 + v2]);
                                        v23 = v79 = 13;
                                        // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                    } else if (42 == v19) {
                                        v2 = v2 << 256;
                                        v23 = v80 = 1;
                                        // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                    }
                                } else if (17 == v19) {
                                    v2 += v2;
                                    v23 = v81 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (18 == v19) {
                                    v2 = v2 - v2;
                                    v23 = v82 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (19 == v19) {
                                    v2 *= v2;
                                    v23 = v83 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (20 == v19) {
                                    v2 = v2 / v2;
                                    v23 = v84 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (21 == v19) {
                                    v2 = v2 / v2;
                                    v23 = v85 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (22 == v19) {
                                    v2 = v2 & v2;
                                    v23 = v86 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (23 == v19) {
                                    v2 = v2 | v2;
                                    v23 = v87 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (24 == v19) {
                                    v2 = v2 ^ v2;
                                    v23 = v88 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (25 == v19) {
                                    v2 = ~v2;
                                    v23 = v89 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (26 == v19) {
                                    v2 = v2 << (MEM[1 + v2] >> 248);
                                    v23 = v90 = 2;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (27 == v19) {
                                    v2 = v2 >> (MEM[1 + v2] >> 248);
                                    v23 = v91 = 2;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (28 == v19) {
                                    v2 = v2 + 1;
                                    v23 = v92 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (29 == v19) {
                                    v2 = v2 - 1;
                                    v23 = v93 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (30 == v19) {
                                    v2 = v2 - v2;
                                    v23 = v94 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                } else if (31 == v19) {
                                    v2 = v2 / v2;
                                    v23 = v95 = 1;
                                    // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                                }
                            } else if (1 == v19) {
                                v2 = v96 = MEM[32];
                                v23 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (2 == v19) {
                                v2 = v97 = MEM[64];
                                v23 = v98 = 1;
                            } else if (3 == v19) {
                                v2 = v99 = MEM[96];
                                v23 = v100 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (4 == v19) {
                                v2 = v101 = MEM[128];
                                v23 = v102 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (5 == v19) {
                                v2 = v103 = MEM[160];
                                v23 = v104 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (6 == v19) {
                                v2 = v105 = MEM[192];
                                v23 = v106 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (7 == v19) {
                                v2 = v107 = MEM[224];
                                v23 = v108 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (8 == v19) {
                                v2 = v109 = MEM[MEM[0]];
                                MEM[0] = MEM[0] - 32;
                                v23 = v110 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (10 == v19) {
                                v2 = v111 = this.balance;
                                v23 = v112 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (11 == v19) {
                                v2 = v113 = block.coinbase;
                                v23 = v114 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (12 == v19) {
                                v2 = v115 = block.timestamp;
                                v23 = v116 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (13 == v19) {
                                v2 = v117 = block.number;
                                v23 = v118 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (14 == v19) {
                                v2 = v119 = BASEFEE();
                                v23 = v120 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            } else if (15 == v19) {
                                v2 = v121 = msg.gas;
                                v23 = v122 = 1;
                                // Unknown jump to Block 0x38fb0x2c06. Refer to 3-address code (TAC);
                            }
                            v2 = v2 + v23;
                            continue;
                        }
                    }
                    MEM[32 + MEM[0]] = v2;
                    MEM[0] += 32;
                    // Unknown jump to Block 0x41890x2c06. Refer to 3-address code (TAC);
                } else if (int16.max == uint16(v4 >> 240)) {
                    v123 = address(v4).delegatecall(MEM[v2c060x2c9c + 32:v2c060x2c9c + 32 + uint16(v2c060x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                    if (!v123) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (uint24(v4 >> 200)) {
                            if (uint24.max != uint24(v4 >> 200)) {
                                if (!(0x800000 & uint24(v4 >> 200))) {
                                    v124 = v125 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                } else {
                                    v124 = MEM[0];
                                }
                                MEM[0] = v124 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                                RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v124), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                            }
                        }
                        v2 = v126 = 32 + uint16(v4 >> 160);
                    }
                } else if (32765 == uint16(v4 >> 240)) {
                    v127 = uint16(v4 >> 160);
                    v128 = MEM[12 + v2] >> 224;
                    if (0xa85f1d24 == v128) {
                        v127 = 12 + v2;
                        MEM[MSIZE()] = 0x70a08231;
                        MEM[32 + MSIZE()] = this;
                        v129 = MEM[4 + v127].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                        if (!v129) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        } else {
                            v130 = 0x70a08231;
                            if (v130) {
                                v130 = v131 = 0x70a08230;
                            }
                            require(MEM[36 + v127] <= v130, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                            if (MEM[68 + v127]) {
                                v132 = block.coinbase.call().value(MEM[68 + v127]).gas(msg.gas);
                            }
                        }
                    } else if (0x4df86adf == v128) {
                        MEM[MSIZE()] = 0x70a08231;
                        MEM[32 + MSIZE()] = this;
                        v133 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                        if (!v133) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        } else {
                            v134 = 0x70a08231;
                            if (v134) {
                                v134 = v135 = 0x70a08230;
                            }
                            require(MEM[48 + v2] <= v134, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                            MEM[MSIZE()] = 0xa9059cbb;
                            MEM[32 + MSIZE()] = MEM[112 + v2];
                            MEM[64 + MSIZE()] = v134;
                            v136 = MEM[16 + v2].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                            if (MEM[80 + v2]) {
                                v137 = block.coinbase.call().value(MEM[80 + v2]).gas(msg.gas);
                            }
                        }
                    } else if (0x5ec9cad == v128) {
                        MEM[MSIZE()] = 0x70a08231;
                        MEM[32 + MSIZE()] = this;
                        v138 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                        if (!v138) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        } else {
                            v139 = 0x70a08231;
                            if (v139) {
                                v139 = v140 = 0x70a08230;
                            }
                            require(MEM[16 + v2] <= v139, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                            MEM[MSIZE()] = 0x2e1a7d4d;
                            MEM[32 + MSIZE()] = v139;
                            v141 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                            if (MEM[48 + v2]) {
                                v142 = block.coinbase.call().value(MEM[48 + v2]).gas(msg.gas);
                            }
                            v143 = this.balance;
                            v144 = MEM[80 + v2].call().value(v143).gas(msg.gas);
                        }
                    } else if (0x9b81788b == v128) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v145 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v145) {
                            v146 = v147 = 0;
                            v148 = v149 = 0;
                        } else {
                            v146 = MEM[32 + MSIZE()];
                            v148 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v146) / (9970 * (v148 - MEM[48 + v2]));
                        MEM[0] += 32;
                    } else if (0x8bceaa18 == v128) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v150 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v150) {
                            v151 = v152 = 0;
                            v153 = v154 = 0;
                        } else {
                            v151 = MEM[32 + MSIZE()];
                            v153 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v153) / (9970 * (v151 - MEM[48 + v2]));
                        MEM[0] += 32;
                    } else if (0x84f16ca0 == v128) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v155 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v155) {
                            v156 = v157 = 0;
                            v158 = v159 = 0;
                        } else {
                            v156 = MEM[32 + MSIZE()];
                            v158 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 9970 * MEM[48 + v2] * v156 / (10000 * v158 + 9970 * MEM[48 + v2]);
                        MEM[0] += 32;
                    } else if (0x95b66162 == v128) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v160 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v160) {
                            v161 = v162 = 0;
                            v163 = v164 = 0;
                        } else {
                            v161 = MEM[32 + MSIZE()];
                            v163 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 9970 * MEM[48 + v2] * v163 / (10000 * v161 + 9970 * MEM[48 + v2]);
                        MEM[0] += 32;
                    } else if (0x9a23842e == v128) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v165 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v165) {
                            v166 = v167 = 0;
                            v168 = v169 = 0;
                        } else {
                            v166 = MEM[32 + MSIZE()];
                            v168 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v166) / (MEM[80 + v2] * (v168 - MEM[48 + v2]));
                        MEM[0] += 32;
                    } else if (0x4fae2f23 == v128) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v170 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v170) {
                            v171 = v172 = 0;
                            v173 = v174 = 0;
                        } else {
                            v171 = MEM[32 + MSIZE()];
                            v173 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v2] * v173) / (MEM[80 + v2] * (v171 - MEM[48 + v2]));
                        MEM[0] += 32;
                    } else if (0xa9f2812f == v128) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v175 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v175) {
                            v176 = v177 = 0;
                            v178 = v179 = 0;
                        } else {
                            v176 = MEM[32 + MSIZE()];
                            v178 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = MEM[80 + v2] * MEM[48 + v2] * v176 / (10000 * v178 + MEM[80 + v2] * MEM[48 + v2]);
                        MEM[0] += 32;
                    } else if (0xf93a1716 == v128) {
                        MEM[MSIZE()] = 0x902f1ac;
                        v180 = MEM[16 + v2].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                        if (!v180) {
                            v181 = v182 = 0;
                            v183 = v184 = 0;
                        } else {
                            v181 = MEM[32 + MSIZE()];
                            v183 = 0x902f1ac;
                        }
                        MEM[32 + MEM[0]] = MEM[80 + v2] * MEM[48 + v2] * v183 / (10000 * v181 + MEM[80 + v2] * MEM[48 + v2]);
                        MEM[0] += 32;
                    } else if (0xfe9bf13d == v128) {
                        emit 0x4bc761c3621ed10674d0b96fcf93f708ec089e64acf91cec204e8e5e6bc41568(MEM[16 + v2]);
                    } else if (0xfcccdd98 == v128) {
                        emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0]], MEM[0]);
                    } else if (0x1e00cebd == v128) {
                        emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0] - (MEM[16 + v2] << 5)], MEM[0]);
                    } else {
                        require(0xa6c13bf == v128);
                        revert(0x8000000000000000000000000000000000000000000000000000000000000000 | MEM[16 + v2]);
                    }
                    v2 = 12 + v127;
                    // Unknown jump to Block 0x41890x2c06. Refer to 3-address code (TAC);
                } else if (32762 == uint16(v4 >> 240)) {
                    v185 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                    if (0x800000 & uint24(v4 >> 176)) {
                        v185 = v186 = MEM[0] - (v185 - 32);
                    }
                    v187 = address(v4).call(MEM[v2c060x2c9c + 32:v2c060x2c9c + 32 + uint16(v2c060x2ca3 >> 160)], MEM[0:0]).value(MEM[v185]).gas(msg.gas);
                    if (!v187) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (!bool(MEM[v185])) {
                            if (uint24(v4 >> 200)) {
                                if (uint24.max != uint24(v4 >> 200)) {
                                    if (!(0x800000 & uint24(v4 >> 200))) {
                                        v188 = v189 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                                    } else {
                                        v188 = MEM[0];
                                    }
                                    MEM[0] = v188 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                                    RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v188), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                                }
                            }
                        }
                        v2 = v190 = 32 + uint16(v4 >> 160);
                    }
                }
            }
            v2 += v2;
            if (v2 >= v2) {
                return MEM[MEM[0]:MEM[0] + 32];
            }
            v191 = address(v4).call(MEM[v2c060x2c9c + 32:v2c060x2c9c + 32 + uint16(v2c060x2ca3 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v4 >> 176).gas(msg.gas);
            if (!v191) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                if (!bool(0x7fffffffffffffffffff & v4 >> 176)) {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            if (!(0x800000 & uint24(v4 >> 200))) {
                                v192 = v193 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            } else {
                                v192 = MEM[0];
                            }
                            MEM[0] = v192 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v192), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                }
                v2 = v194 = 32 + uint16(v4 >> 160);
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

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    require(0x62d59ed9783c8fcd192e9e7f1c7b0a0bc5c0a5a6 == tx.origin, Error(32, 2, 0x4e4f000000000000000000000000000000000000000000000000000000000000));
    if (msg.data.length) {
        if (0x28472417 == function_selector >> 224) {
            0x28472417();
        } else {
            if (0xfa461e33 != function_selector >> 224) {
                if (0x23a69e75 != function_selector >> 224) {
                    if (0x8b418713 == function_selector >> 224) {
                        callFunction(address,(address,uint256),bytes);
                    } else if (0x20c13b0b == function_selector >> 224) {
                        isValidSignature(bytes,bytes);
                    } else if (0x1626ba7e == function_selector >> 224) {
                        isValidSignature(bytes32,bytes);
                    } else if (0xf04f2707 == function_selector >> 224) {
                        receiveFlashLoan(address[],uint256[],uint256[],bytes);
                    } else if (0x91dd7346 == function_selector >> 224) {
                        unlockCallback(bytes);
                    } else if (0x923b8a2a == function_selector >> 224) {
                        swapCallback(uint256,uint256,bytes);
                    } else {
                        if (128 == varg4) {
                            if (20 == varg4.length) {
                                if (!varg2) {
                                    MEM[MEM[uint8.max + 1]] = 0x902f1ac;
                                    v0 = msg.sender.staticcall(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 4], MEM[MEM[uint8.max + 1]:MEM[uint8.max + 1] + 96]).gas(msg.gas);
                                    if (!v0) {
                                        v1 = v2 = 0;
                                        v3 = v4 = 0;
                                    } else {
                                        v1 = v5 = MEM[32 + MEM[uint8.max + 1]];
                                        v3 = v6 = 0x902f1ac;
                                    }
                                    v7 = v8 = 1 + 10000 * (varg3 * v3) / ((msg.data[32 + varg5] >> 96) * (v1 - varg3));
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
                                    v7 = v16 = 1 + 10000 * (varg2 * v10) / ((msg.data[32 + varg5] >> 96) * (v12 - varg2));
                                }
                                MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
                                MEM[32 + MEM[uint8.max + 1]] = msg.sender;
                                MEM[64 + MEM[uint8.max + 1]] = v7;
                                v17 = varg4.call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
                                return ;
                            } else {
                                if (!varg2) {
                                    MEM[32] = varg3;
                                } else {
                                    MEM[32] = varg2;
                                }
                                MEM[0] = 32;
                                v18 = v19 = 4 + varg4;
                            }
                        } else if (32 == varg1) {
                            v18 = v20 = 4 + varg1;
                        } else if (64 == varg2) {
                            v18 = v21 = 4 + varg2;
                        } else if (160 == varg5) {
                            v18 = v22 = 4 + varg5;
                        }
                        CALLDATACOPY(288, 32 + v18, msg.data[v18]);
                        v23 = 288 + msg.data[v18];
                        v23 = v24 = 288;
                        while (1) {
                            v25 = MEM[v23];
                            if (!bool(0x8000 & v25 >> 240)) {
                                if (uint24(v25 >> 176)) {
                                    if (uint24.max != uint24(v25 >> 176)) {
                                        v26 = (0xfff & uint24(v25 >> 176)) + v23;
                                        v27 = uint8(uint24(v25 >> 176) >> 12);
                                        if (v27) {
                                            v28 = 32 + ((0x7 & uint24(v25 >> 176) >> 20) << 5);
                                            if (0x800000 & uint24(v25 >> 176)) {
                                                v28 = v29 = MEM[0] - (v28 - 32);
                                            }
                                            while (bool(v27)) {
                                                if (32 > v27) {
                                                    MEM[v26] = MEM[v26] & ~((1 << (v27 << 3)) - 1) | MEM[v28] & (1 << (v27 << 3)) - 1;
                                                } else {
                                                    MEM[v26] = MEM[v28];
                                                    v26 += 32;
                                                    v28 += 32;
                                                    v27 = v27 - 32;
                                                }
                                            }
                                            // Unknown jump to Block 0x2d530x0. Refer to 3-address code (TAC);
                                        }
                                    }
                                }
                                if (!uint16(v25 >> 240)) {
                                    v23 = v30 = uint16.max + v25;
                                } else if (32764 == uint16(v25 >> 240)) {
                                    v31 = address(v25).call(MEM[v00x2c9c + 32:v00x2c9c + 32 + uint16(v00x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                                    if (!v31) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    } else {
                                        if (!False) {
                                            if (uint24(v25 >> 200)) {
                                                if (uint24.max != uint24(v25 >> 200)) {
                                                    if (!(0x800000 & uint24(v25 >> 200))) {
                                                        v32 = v33 = (0x7 & uint24(v25 >> 200) >> 20) << 5;
                                                    } else {
                                                        v32 = MEM[0];
                                                    }
                                                    MEM[0] = v32 + (uint8(uint24(v25 >> 200) >> 12) % 32 + uint8(uint24(v25 >> 200) >> 12));
                                                    RETURNDATACOPY(32 + (uint8(uint24(v25 >> 200) >> 12) % 32 + v32), 0xfff & uint24(v25 >> 200), uint8(uint24(v25 >> 200) >> 12));
                                                }
                                            }
                                        }
                                        v23 = v34 = 32 + uint16(v25 >> 160);
                                    }
                                } else if (32766 == uint16(v25 >> 240)) {
                                    v35 = address(v25).staticcall(MEM[v00x2c9c + 32:v00x2c9c + 32 + uint16(v00x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                                    if (!v35) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    } else {
                                        if (uint24(v25 >> 200)) {
                                            if (uint24.max != uint24(v25 >> 200)) {
                                                if (!(0x800000 & uint24(v25 >> 200))) {
                                                    v36 = v37 = (0x7 & uint24(v25 >> 200) >> 20) << 5;
                                                } else {
                                                    v36 = MEM[0];
                                                }
                                                MEM[0] = v36 + (uint8(uint24(v25 >> 200) >> 12) % 32 + uint8(uint24(v25 >> 200) >> 12));
                                                RETURNDATACOPY(32 + (uint8(uint24(v25 >> 200) >> 12) % 32 + v36), 0xfff & uint24(v25 >> 200), uint8(uint24(v25 >> 200) >> 12));
                                            }
                                        }
                                        v23 = v38 = 32 + uint16(v25 >> 160);
                                    }
                                } else if (32763 == uint16(v25 >> 240)) {
                                    v23 = v39 = 12 + uint16(v25 >> 160);
                                    v23 += 12;
                                    while (1) {
                                        v40 = MEM[v23] >> 248;
                                        if (!v40) {
                                            break;
                                        } else {
                                            if (v40 > 16) {
                                                if (v40 >= 32) {
                                                    if (v40 >= 48) {
                                                        if (v40 >= 48) {
                                                            if (v40 >= 80) {
                                                                if (v40 >= 96) {
                                                                    break;
                                                                } else if (80 == v40) {
                                                                    v41 = MEM[1 + v23] >> 248;
                                                                    v42 = MEM[0] - (v41 << 5);
                                                                    MEM[0] = v42;
                                                                    v23 = v43 = 0;
                                                                    while (bool(v41)) {
                                                                        v42 += 32;
                                                                        v23 += MEM[v42];
                                                                        v41 = v41 - 1;
                                                                    }
                                                                    v44 = v45 = 2;
                                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                                } else if (81 == v40) {
                                                                    v46 = MEM[1 + v23] >> 248;
                                                                    v47 = MEM[0];
                                                                    v23 = v48 = 0;
                                                                    while (bool(v46)) {
                                                                        v23 += MEM[v47];
                                                                        v47 = v47 - 32;
                                                                        v46 = v46 - 1;
                                                                    }
                                                                    v44 = v49 = 2;
                                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                                } else {
                                                                    break;
                                                                }
                                                            } else if (64 == v40) {
                                                                v23 = v50 = 1;
                                                                v44 = v51 = 1;
                                                            } else if (65 == v40) {
                                                                require(v23 != v23, Error(32, 3, 0x4e45510000000000000000000000000000000000000000000000000000000000));
                                                                v23 = v52 = 1;
                                                                v44 = v53 = 1;
                                                            } else if (66 == v40) {
                                                                require(v23 < v23, Error(32, 2, 0x4c54000000000000000000000000000000000000000000000000000000000000));
                                                                v23 = v54 = 1;
                                                                v44 = v55 = 1;
                                                            } else if (67 == v40) {
                                                                require(v23 >= v23, Error(32, 3, 0x4754450000000000000000000000000000000000000000000000000000000000));
                                                                v23 = v56 = 1;
                                                                v44 = v57 = 1;
                                                            } else if (68 == v40) {
                                                                require(v23 > v23, Error(32, 2, 0x4754000000000000000000000000000000000000000000000000000000000000));
                                                                v23 = v58 = 1;
                                                                v44 = v59 = 1;
                                                            } else if (69 == v40) {
                                                                require(v23 <= v23, Error(32, 3, 0x4c54450000000000000000000000000000000000000000000000000000000000));
                                                                v23 = v60 = 1;
                                                                v44 = v61 = 1;
                                                            } else if (70 == v40) {
                                                                require(!v23, Error(32, 2, 0x5a52000000000000000000000000000000000000000000000000000000000000));
                                                                v23 = v62 = 1;
                                                                v44 = v63 = 1;
                                                            } else if (71 == v40) {
                                                                require(v23, Error(32, 3, 0x4e5a520000000000000000000000000000000000000000000000000000000000));
                                                                v23 = v64 = 1;
                                                                v44 = v65 = 1;
                                                            } else if (72 == v40) {
                                                                if (v23 != v23) {
                                                                    return 0;
                                                                } else {
                                                                    v23 = v66 = 1;
                                                                    v44 = v67 = 1;
                                                                }
                                                            } else if (73 == v40) {
                                                                if (v23 == v23) {
                                                                    return 0;
                                                                } else {
                                                                    v23 = v68 = 1;
                                                                    v44 = v69 = 1;
                                                                }
                                                            } else if (74 == v40) {
                                                                if (v23 >= v23) {
                                                                    return 0;
                                                                } else {
                                                                    v23 = v70 = 1;
                                                                    v44 = v71 = 1;
                                                                }
                                                            } else if (75 == v40) {
                                                                if (v23 < v23) {
                                                                    return 0;
                                                                } else {
                                                                    v23 = v72 = 1;
                                                                    v44 = v73 = 1;
                                                                }
                                                            } else if (76 == v40) {
                                                                if (v23 <= v23) {
                                                                    return 0;
                                                                } else {
                                                                    v23 = v74 = 1;
                                                                    v44 = v75 = 1;
                                                                }
                                                            } else if (77 == v40) {
                                                                if (v23 > v23) {
                                                                    return 0;
                                                                } else {
                                                                    v23 = v76 = 1;
                                                                    v44 = v77 = 1;
                                                                }
                                                            } else if (78 == v40) {
                                                                if (v23) {
                                                                    return 0;
                                                                } else {
                                                                    v23 = v78 = 1;
                                                                    v44 = v79 = 1;
                                                                }
                                                            } else if (79 == v40) {
                                                                if (!v23) {
                                                                    return 0;
                                                                } else {
                                                                    v23 = v80 = 1;
                                                                    v44 = v81 = 1;
                                                                }
                                                            }
                                                        } else if (49 == v40) {
                                                            v23 = uint8(v23);
                                                            v44 = v82 = 1;
                                                            // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                        } else if (50 == v40) {
                                                            v23 = uint16(v23);
                                                            v44 = v83 = 1;
                                                            // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                        } else if (51 == v40) {
                                                            v23 = uint32(v23);
                                                            v44 = v84 = 1;
                                                            // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                        } else if (52 == v40) {
                                                            v23 = uint112(v23);
                                                            v44 = v85 = 1;
                                                            // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                        } else if (53 == v40) {
                                                            v23 = uint128(v23);
                                                            v44 = v86 = 1;
                                                            // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                        }
                                                    } else if (32 == v40) {
                                                        v23 = v87 = MEM[1 + v23];
                                                        v44 = v88 = 33;
                                                        // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                    } else if (33 == v40) {
                                                        v23 = v89 = uint8(MEM[1 + v23]);
                                                        v44 = v90 = 2;
                                                        // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                    } else if (34 == v40) {
                                                        v23 = v91 = uint16(MEM[1 + v23]);
                                                        v44 = v92 = 3;
                                                        // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                    } else if (35 == v40) {
                                                        v23 = v93 = uint32(MEM[1 + v23]);
                                                        v44 = v94 = 5;
                                                        // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                    } else if (36 == v40) {
                                                        v23 = v95 = uint112(MEM[1 + v23]);
                                                        v44 = v96 = 7;
                                                        // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                    } else if (37 == v40) {
                                                        v23 = v97 = uint128(MEM[1 + v23]);
                                                        v44 = v98 = 9;
                                                        // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                    } else if (38 == v40) {
                                                        v23 = v99 = address(MEM[1 + v23]);
                                                        v44 = v100 = 13;
                                                        // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                    } else if (42 == v40) {
                                                        v23 = v23 << 256;
                                                        v44 = v101 = 1;
                                                        // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                    }
                                                } else if (17 == v40) {
                                                    v23 += v23;
                                                    v44 = v102 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (18 == v40) {
                                                    v23 = v23 - v23;
                                                    v44 = v103 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (19 == v40) {
                                                    v23 *= v23;
                                                    v44 = v104 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (20 == v40) {
                                                    v23 = v23 / v23;
                                                    v44 = v105 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (21 == v40) {
                                                    v23 = v23 / v23;
                                                    v44 = v106 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (22 == v40) {
                                                    v23 = v23 & v23;
                                                    v44 = v107 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (23 == v40) {
                                                    v23 = v23 | v23;
                                                    v44 = v108 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (24 == v40) {
                                                    v23 = v23 ^ v23;
                                                    v44 = v109 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (25 == v40) {
                                                    v23 = ~v23;
                                                    v44 = v110 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (26 == v40) {
                                                    v23 = v23 << (MEM[1 + v23] >> 248);
                                                    v44 = v111 = 2;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (27 == v40) {
                                                    v23 = v23 >> (MEM[1 + v23] >> 248);
                                                    v44 = v112 = 2;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (28 == v40) {
                                                    v23 = v23 + 1;
                                                    v44 = v113 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (29 == v40) {
                                                    v23 = v23 - 1;
                                                    v44 = v114 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (30 == v40) {
                                                    v23 = v23 - v23;
                                                    v44 = v115 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                } else if (31 == v40) {
                                                    v23 = v23 / v23;
                                                    v44 = v116 = 1;
                                                    // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                                }
                                            } else if (1 == v40) {
                                                v23 = v117 = MEM[32];
                                                v44 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (2 == v40) {
                                                v23 = v118 = MEM[64];
                                                v44 = v119 = 1;
                                            } else if (3 == v40) {
                                                v23 = v120 = MEM[96];
                                                v44 = v121 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (4 == v40) {
                                                v23 = v122 = MEM[128];
                                                v44 = v123 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (5 == v40) {
                                                v23 = v124 = MEM[160];
                                                v44 = v125 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (6 == v40) {
                                                v23 = v126 = MEM[192];
                                                v44 = v127 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (7 == v40) {
                                                v23 = v128 = MEM[224];
                                                v44 = v129 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (8 == v40) {
                                                v23 = v130 = MEM[MEM[0]];
                                                MEM[0] = MEM[0] - 32;
                                                v44 = v131 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (10 == v40) {
                                                v23 = v132 = this.balance;
                                                v44 = v133 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (11 == v40) {
                                                v23 = v134 = block.coinbase;
                                                v44 = v135 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (12 == v40) {
                                                v23 = v136 = block.timestamp;
                                                v44 = v137 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (13 == v40) {
                                                v23 = v138 = block.number;
                                                v44 = v139 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (14 == v40) {
                                                v23 = v140 = BASEFEE();
                                                v44 = v141 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            } else if (15 == v40) {
                                                v23 = v142 = msg.gas;
                                                v44 = v143 = 1;
                                                // Unknown jump to Block 0x38fb0x0. Refer to 3-address code (TAC);
                                            }
                                            v23 = v23 + v44;
                                            continue;
                                        }
                                    }
                                    MEM[32 + MEM[0]] = v23;
                                    MEM[0] += 32;
                                    // Unknown jump to Block 0x41890x0. Refer to 3-address code (TAC);
                                } else if (int16.max == uint16(v25 >> 240)) {
                                    v144 = address(v25).delegatecall(MEM[v00x2c9c + 32:v00x2c9c + 32 + uint16(v00x2ca3 >> 160)], MEM[0:0]).gas(msg.gas);
                                    if (!v144) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    } else {
                                        if (uint24(v25 >> 200)) {
                                            if (uint24.max != uint24(v25 >> 200)) {
                                                if (!(0x800000 & uint24(v25 >> 200))) {
                                                    v145 = v146 = (0x7 & uint24(v25 >> 200) >> 20) << 5;
                                                } else {
                                                    v145 = MEM[0];
                                                }
                                                MEM[0] = v145 + (uint8(uint24(v25 >> 200) >> 12) % 32 + uint8(uint24(v25 >> 200) >> 12));
                                                RETURNDATACOPY(32 + (uint8(uint24(v25 >> 200) >> 12) % 32 + v145), 0xfff & uint24(v25 >> 200), uint8(uint24(v25 >> 200) >> 12));
                                            }
                                        }
                                        v23 = v147 = 32 + uint16(v25 >> 160);
                                    }
                                } else if (32765 == uint16(v25 >> 240)) {
                                    v148 = uint16(v25 >> 160);
                                    v149 = MEM[12 + v23] >> 224;
                                    if (0xa85f1d24 == v149) {
                                        v148 = 12 + v23;
                                        MEM[MSIZE()] = 0x70a08231;
                                        MEM[32 + MSIZE()] = this;
                                        v150 = MEM[4 + v148].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                                        if (!v150) {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        } else {
                                            v151 = 0x70a08231;
                                            if (v151) {
                                                v151 = v152 = 0x70a08230;
                                            }
                                            require(MEM[36 + v148] <= v151, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                                            if (MEM[68 + v148]) {
                                                v153 = block.coinbase.call().value(MEM[68 + v148]).gas(msg.gas);
                                            }
                                        }
                                    } else if (0x4df86adf == v149) {
                                        MEM[MSIZE()] = 0x70a08231;
                                        MEM[32 + MSIZE()] = this;
                                        v154 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                                        if (!v154) {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        } else {
                                            v155 = 0x70a08231;
                                            if (v155) {
                                                v155 = v156 = 0x70a08230;
                                            }
                                            require(MEM[48 + v23] <= v155, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                                            MEM[MSIZE()] = 0xa9059cbb;
                                            MEM[32 + MSIZE()] = MEM[112 + v23];
                                            MEM[64 + MSIZE()] = v155;
                                            v157 = MEM[16 + v23].call(MEM[28 + MSIZE():28 + MSIZE() + 68], MEM[0:0]).gas(msg.gas);
                                            if (MEM[80 + v23]) {
                                                v158 = block.coinbase.call().value(MEM[80 + v23]).gas(msg.gas);
                                            }
                                        }
                                    } else if (0x5ec9cad == v149) {
                                        MEM[MSIZE()] = 0x70a08231;
                                        MEM[32 + MSIZE()] = this;
                                        v159 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[MSIZE():MSIZE() + 32]).gas(msg.gas);
                                        if (!v159) {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        } else {
                                            v160 = 0x70a08231;
                                            if (v160) {
                                                v160 = v161 = 0x70a08230;
                                            }
                                            require(MEM[16 + v23] <= v160, Error(32, 2, 0x4242000000000000000000000000000000000000000000000000000000000000));
                                            MEM[MSIZE()] = 0x2e1a7d4d;
                                            MEM[32 + MSIZE()] = v160;
                                            v162 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[28 + MSIZE():28 + MSIZE() + 36], MEM[0:0]).gas(msg.gas);
                                            if (MEM[48 + v23]) {
                                                v163 = block.coinbase.call().value(MEM[48 + v23]).gas(msg.gas);
                                            }
                                            v164 = this.balance;
                                            v165 = MEM[80 + v23].call().value(v164).gas(msg.gas);
                                        }
                                    } else if (0x9b81788b == v149) {
                                        MEM[MSIZE()] = 0x902f1ac;
                                        v166 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                        if (!v166) {
                                            v167 = v168 = 0;
                                            v169 = v170 = 0;
                                        } else {
                                            v167 = MEM[32 + MSIZE()];
                                            v169 = 0x902f1ac;
                                        }
                                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v23] * v167) / (9970 * (v169 - MEM[48 + v23]));
                                        MEM[0] += 32;
                                    } else if (0x8bceaa18 == v149) {
                                        MEM[MSIZE()] = 0x902f1ac;
                                        v171 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                        if (!v171) {
                                            v172 = v173 = 0;
                                            v174 = v175 = 0;
                                        } else {
                                            v172 = MEM[32 + MSIZE()];
                                            v174 = 0x902f1ac;
                                        }
                                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v23] * v174) / (9970 * (v172 - MEM[48 + v23]));
                                        MEM[0] += 32;
                                    } else if (0x84f16ca0 == v149) {
                                        MEM[MSIZE()] = 0x902f1ac;
                                        v176 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                        if (!v176) {
                                            v177 = v178 = 0;
                                            v179 = v180 = 0;
                                        } else {
                                            v177 = MEM[32 + MSIZE()];
                                            v179 = 0x902f1ac;
                                        }
                                        MEM[32 + MEM[0]] = 9970 * MEM[48 + v23] * v177 / (10000 * v179 + 9970 * MEM[48 + v23]);
                                        MEM[0] += 32;
                                    } else if (0x95b66162 == v149) {
                                        MEM[MSIZE()] = 0x902f1ac;
                                        v181 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                        if (!v181) {
                                            v182 = v183 = 0;
                                            v184 = v185 = 0;
                                        } else {
                                            v182 = MEM[32 + MSIZE()];
                                            v184 = 0x902f1ac;
                                        }
                                        MEM[32 + MEM[0]] = 9970 * MEM[48 + v23] * v184 / (10000 * v182 + 9970 * MEM[48 + v23]);
                                        MEM[0] += 32;
                                    } else if (0x9a23842e == v149) {
                                        MEM[MSIZE()] = 0x902f1ac;
                                        v186 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                        if (!v186) {
                                            v187 = v188 = 0;
                                            v189 = v190 = 0;
                                        } else {
                                            v187 = MEM[32 + MSIZE()];
                                            v189 = 0x902f1ac;
                                        }
                                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v23] * v187) / (MEM[80 + v23] * (v189 - MEM[48 + v23]));
                                        MEM[0] += 32;
                                    } else if (0x4fae2f23 == v149) {
                                        MEM[MSIZE()] = 0x902f1ac;
                                        v191 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                        if (!v191) {
                                            v192 = v193 = 0;
                                            v194 = v195 = 0;
                                        } else {
                                            v192 = MEM[32 + MSIZE()];
                                            v194 = 0x902f1ac;
                                        }
                                        MEM[32 + MEM[0]] = 1 + 10000 * (MEM[48 + v23] * v194) / (MEM[80 + v23] * (v192 - MEM[48 + v23]));
                                        MEM[0] += 32;
                                    } else if (0xa9f2812f == v149) {
                                        MEM[MSIZE()] = 0x902f1ac;
                                        v196 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                        if (!v196) {
                                            v197 = v198 = 0;
                                            v199 = v200 = 0;
                                        } else {
                                            v197 = MEM[32 + MSIZE()];
                                            v199 = 0x902f1ac;
                                        }
                                        MEM[32 + MEM[0]] = MEM[80 + v23] * MEM[48 + v23] * v197 / (10000 * v199 + MEM[80 + v23] * MEM[48 + v23]);
                                        MEM[0] += 32;
                                    } else if (0xf93a1716 == v149) {
                                        MEM[MSIZE()] = 0x902f1ac;
                                        v201 = MEM[16 + v23].staticcall(MEM[28 + MSIZE():28 + MSIZE() + 4], MEM[MSIZE():MSIZE() + 96]).gas(msg.gas);
                                        if (!v201) {
                                            v202 = v203 = 0;
                                            v204 = v205 = 0;
                                        } else {
                                            v202 = MEM[32 + MSIZE()];
                                            v204 = 0x902f1ac;
                                        }
                                        MEM[32 + MEM[0]] = MEM[80 + v23] * MEM[48 + v23] * v204 / (10000 * v202 + MEM[80 + v23] * MEM[48 + v23]);
                                        MEM[0] += 32;
                                    } else if (0xfe9bf13d == v149) {
                                        emit 0x4bc761c3621ed10674d0b96fcf93f708ec089e64acf91cec204e8e5e6bc41568(MEM[16 + v23]);
                                    } else if (0xfcccdd98 == v149) {
                                        emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0]], MEM[0]);
                                    } else if (0x1e00cebd == v149) {
                                        emit 0x89af0fd11b64392b3a1ab47eb65ae5e5f01335c6fc2ac518b0fc21aa0f7ff8c6(MEM[MEM[0] - (MEM[16 + v23] << 5)], MEM[0]);
                                    } else {
                                        require(0xa6c13bf == v149);
                                        revert(0x8000000000000000000000000000000000000000000000000000000000000000 | MEM[16 + v23]);
                                    }
                                    v23 = 12 + v148;
                                    // Unknown jump to Block 0x41890x0. Refer to 3-address code (TAC);
                                } else if (32762 == uint16(v25 >> 240)) {
                                    v206 = 32 + ((0x7 & uint24(v25 >> 176) >> 20) << 5);
                                    if (0x800000 & uint24(v25 >> 176)) {
                                        v206 = v207 = MEM[0] - (v206 - 32);
                                    }
                                    v208 = address(v25).call(MEM[v00x2c9c + 32:v00x2c9c + 32 + uint16(v00x2ca3 >> 160)], MEM[0:0]).value(MEM[v206]).gas(msg.gas);
                                    if (!v208) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    } else {
                                        if (!bool(MEM[v206])) {
                                            if (uint24(v25 >> 200)) {
                                                if (uint24.max != uint24(v25 >> 200)) {
                                                    if (!(0x800000 & uint24(v25 >> 200))) {
                                                        v209 = v210 = (0x7 & uint24(v25 >> 200) >> 20) << 5;
                                                    } else {
                                                        v209 = MEM[0];
                                                    }
                                                    MEM[0] = v209 + (uint8(uint24(v25 >> 200) >> 12) % 32 + uint8(uint24(v25 >> 200) >> 12));
                                                    RETURNDATACOPY(32 + (uint8(uint24(v25 >> 200) >> 12) % 32 + v209), 0xfff & uint24(v25 >> 200), uint8(uint24(v25 >> 200) >> 12));
                                                }
                                            }
                                        }
                                        v23 = v211 = 32 + uint16(v25 >> 160);
                                    }
                                }
                            }
                            v23 += v23;
                            if (v23 >= v23) {
                                return MEM[MEM[0]:MEM[0] + 32];
                            }
                            v212 = address(v25).call(MEM[v00x2c9c + 32:v00x2c9c + 32 + uint16(v00x2ca3 >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v25 >> 176).gas(msg.gas);
                            if (!v212) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            } else {
                                if (!bool(0x7fffffffffffffffffff & v25 >> 176)) {
                                    if (uint24(v25 >> 200)) {
                                        if (uint24.max != uint24(v25 >> 200)) {
                                            if (!(0x800000 & uint24(v25 >> 200))) {
                                                v213 = v214 = (0x7 & uint24(v25 >> 200) >> 20) << 5;
                                            } else {
                                                v213 = MEM[0];
                                            }
                                            MEM[0] = v213 + (uint8(uint24(v25 >> 200) >> 12) % 32 + uint8(uint24(v25 >> 200) >> 12));
                                            RETURNDATACOPY(32 + (uint8(uint24(v25 >> 200) >> 12) % 32 + v213), 0xfff & uint24(v25 >> 200), uint8(uint24(v25 >> 200) >> 12));
                                        }
                                    }
                                }
                                v23 = v215 = 32 + uint16(v25 >> 160);
                            }
                        }
                    }
                }
            }
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    return ;
}
