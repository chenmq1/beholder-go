// Decompiled by library.dedaub.com
// 2025.12.05 20:58 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
uint256 _destroy; // STORAGE[0x0]
uint256[] _amountsIn; // STORAGE[0x1]
uint256[] array_2; // STORAGE[0x2]
uint256[] array_3; // STORAGE[0x3]
uint256[] array_4; // STORAGE[0x4]
uint256 stor_5; // STORAGE[0x5]
uint256 stor_6; // STORAGE[0x6]


// Events
Received(address, uint256);

function 0x1672(bytes varg0, uint256 varg1) private { 
    while (1) {
        v0 = v1 = MEM[v0];
        if (v0 < v1) {
            v0 = v2 = MEM[32 + (v0 + v0)] >> 248;
            if (3 - v2) {
                if (2 - uint8(v2)) {
                    if (18 - uint8(v2)) {
                        if (uint8(v2) != 4) {
                            if (5 - uint8(v2)) {
                                if (6 - uint8(v2)) {
                                    if (uint8(v2) != 7) {
                                        if (167 - uint8(v2)) {
                                            if (uint8(v2) != 8) {
                                                if (168 - uint8(v2)) {
                                                    if (16 - uint8(v2)) {
                                                        if (17 - uint8(v2)) {
                                                            if (uint8(v2) != 21) {
                                                                if (uint8(v2) != 22) {
                                                                    if (80 - uint8(v2)) {
                                                                        if (81 - uint8(v2)) {
                                                                            if (82 - uint8(v2)) {
                                                                                if (83 - uint8(v2)) {
                                                                                    if (84 - uint8(v2)) {
                                                                                        if (86 - uint8(v2)) {
                                                                                            if (87 - uint8(v2)) {
                                                                                                if (88 - uint8(v2)) {
                                                                                                    if (89 - uint8(v2)) {
                                                                                                        if (99 - uint8(v2)) {
                                                                                                            if (100 - uint8(v2)) {
                                                                                                                if (101 - uint8(v2)) {
                                                                                                                    require(!(uint8.max - uint8(v2)), Error('RouterProxyV7: INVALID_EXACT_OUTPUT_DEX'));
                                                                                                                    v3 = MEM[33 + (v0 + v0)] >> 248;
                                                                                                                    if (1 - v3) {
                                                                                                                        if (2 - uint8(v3)) {
                                                                                                                            if (3 - uint8(v3)) {
                                                                                                                                if (!(6 - uint8(v3))) {
                                                                                                                                    v0 = v4 = MEM[v0 + (35 + v0)] >> 96;
                                                                                                                                    MEM[0] = MEM[0];
                                                                                                                                    require(bool((address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                                                                                                                    v5 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v4).gas(msg.gas);
                                                                                                                                    if (bool(v5)) {
                                                                                                                                        v0 = v6 = 23;
                                                                                                                                        v0 = v7 = 15751;
                                                                                                                                        v0 = _SafeAdd(v0, v6);
                                                                                                                                        v0 = v8 = 2908;
                                                                                                                                    } else {
                                                                                                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                                                                                        revert(0, RETURNDATASIZE());
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                v9 = v0 + v0;
                                                                                                                                v0 = v10 = MEM[v9 + 35] >> 96;
                                                                                                                                v0 = v11 = MEM[v9 + 75] >> 248;
                                                                                                                                if (v11 > 1) {
                                                                                                                                    v0 = v12 = address(v10);
                                                                                                                                    v0 = v13 = 0x95ea7b3;
                                                                                                                                    v0 = v14 = 15371;
                                                                                                                                    v0 = v15 = 0x22d473030f116ddee9f6b43ac78ba3;
                                                                                                                                    v0 = v16 = 0;
                                                                                                                                    v17 = v18 = 4 + MEM[64];
                                                                                                                                    v17 = v19 = 0x45ac(v18, v16, v15);
                                                                                                                                    require(bool(v0.code.size));
                                                                                                                                    v20 = v0.approve().gas(msg.gas);
                                                                                                                                    require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                                                }
                                                                                                                                v21 = v22 = 0x95ea7b3;
                                                                                                                                v0 = v23 = 0x22d473030f116ddee9f6b43ac78ba3;
                                                                                                                                v21 = v24 = 15466;
                                                                                                                                v0 = v25 = 2;
                                                                                                                                v26 = v27 = uint96.max;
                                                                                                                                v26 = v28 = 0x4ec0(v27, v25);
                                                                                                                                MEM[MEM[64]] = uint32(v21) << 224;
                                                                                                                                v29 = v30 = 4 + MEM[64];
                                                                                                                                v31 = v32 = 15495;
                                                                                                                                // Unknown jump to Block 0x4efa. Refer to 3-address code (TAC);
                                                                                                                            }
                                                                                                                        } else {
                                                                                                                            v33 = v0 + v0;
                                                                                                                            v0 = v34 = MEM[v33 + 35] >> 96;
                                                                                                                            v0 = v35 = MEM[v33 + 55] >> 96;
                                                                                                                            v0 = v36 = MEM[v33 + 75] >> 248;
                                                                                                                            if (v36 > 1) {
                                                                                                                                v0 = v37 = address(v34);
                                                                                                                                v0 = v38 = 0x95ea7b3;
                                                                                                                                v0 = v39 = 15102;
                                                                                                                                v0 = v40 = 0;
                                                                                                                                v17 = v41 = 4 + MEM[64];
                                                                                                                                v17 = v42 = 0x45ac(v41, v40, v35);
                                                                                                                                require(bool(v0.code.size));
                                                                                                                                v43 = v0.approve().gas(msg.gas);
                                                                                                                                require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                                            }
                                                                                                                            v21 = v44 = 0x95ea7b3;
                                                                                                                            v21 = v45 = 15182;
                                                                                                                            v0 = v46 = 2;
                                                                                                                            v26 = v47 = uint96.max;
                                                                                                                            v26 = v48 = 0x4ec0(v47, v46);
                                                                                                                            MEM[MEM[64]] = uint32(v21) << 224;
                                                                                                                            v29 = v49 = 4 + MEM[64];
                                                                                                                            v31 = v50 = 15211;
                                                                                                                        }
                                                                                                                        MEM[v29] = address(v0);
                                                                                                                        MEM[v29 + 32] = uint96(v26);
                                                                                                                        require(uint96(v0), Panic(18)); // division by zero
                                                                                                                    } else {
                                                                                                                        v51 = v0 + v0;
                                                                                                                        v0 = v52 = MEM[v51 + 75] >> 96;
                                                                                                                        v53 = v54 = MEM[v51 + 35] >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                                                                                        if (v54) {
                                                                                                                            v53 = v55 = this.balance >= v52;
                                                                                                                        }
                                                                                                                        if (v53) {
                                                                                                                            MEM[0] = MEM[0];
                                                                                                                            require(bool((address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                                                                                                            v56 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v52).gas(msg.gas);
                                                                                                                            require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                                        }
                                                                                                                        v0 = v57 = 15004;
                                                                                                                        0x1bae(v52, MEM[v51 + 55] >> 96, MEM[v51 + 35] >> 96);
                                                                                                                        v58 = (MEM[v51 + 35] >> 96).transfer(MEM[v51 + 55] >> 96, v52).gas(msg.gas);
                                                                                                                        require(v58);
                                                                                                                        v0 = v59 = 11729;
                                                                                                                        v0 = v60 = 63;
                                                                                                                        // Unknown jump to Block 0x4c730x1672. Refer to 3-address code (TAC);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    v61 = v0 + v0;
                                                                                                                    v0 = v62 = MEM[v61 + 35] >> 96;
                                                                                                                    v63 = v64 = MEM[v61 + 75] >> 96;
                                                                                                                    v0 = v65 = 0x1 & MEM[v61 + 32] >> 236;
                                                                                                                    if (!v64) {
                                                                                                                        v63 = v66 = this;
                                                                                                                    }
                                                                                                                    v0 = v67 = 0;
                                                                                                                    if (uint8(MEM[v61 + 95] >> 248)) {
                                                                                                                        if (this.balance < v62) {
                                                                                                                            MEM[0] = MEM[0];
                                                                                                                            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                                                                                                            v68 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v62).gas(msg.gas);
                                                                                                                            require(bool(v68), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                                        }
                                                                                                                    }
                                                                                                                    v69 = address(MEM[v61 + 55] >> 96).swapIn(bool(v65), v62, 1, address(v63)).value(v0).gas(msg.gas);
                                                                                                                    require(bool(v69), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                                    v70 = v71 = MEM[64];
                                                                                                                    v0 = v72 = v71 + RETURNDATASIZE();
                                                                                                                    v0 = v73 = 8949;
                                                                                                                    v70 = v74 = 0x4c48(v71, v72);
                                                                                                                }
                                                                                                            } else {
                                                                                                                v75 = v0 + v0;
                                                                                                                v0 = v76 = MEM[v75 + 35] >> 96;
                                                                                                                v0 = v77 = MEM[v75 + 55] >> 96;
                                                                                                                v78 = v79 = MEM[v75 + 95] >> 96;
                                                                                                                v0 = v80 = MEM[v75 + 155] >> 248;
                                                                                                                if (!v79) {
                                                                                                                    v78 = v81 = this;
                                                                                                                }
                                                                                                                v0 = v82 = 0;
                                                                                                                if (uint8(v80)) {
                                                                                                                    v83 = this.balance;
                                                                                                                    if (v83 < v76) {
                                                                                                                        MEM[0] = MEM[0];
                                                                                                                        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                                                                                                        v84 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v76).gas(msg.gas);
                                                                                                                        if (!bool(v84)) {
                                                                                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                                                                            revert(0, RETURNDATASIZE());
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                                MEM[MEM[64]] = 0xb77d239b00000000000000000000000000000000000000000000000000000000;
                                                                                                                MEM[MEM[64] + 4] = 192;
                                                                                                                MEM[MEM[64] + 36] = v76;
                                                                                                                MEM[MEM[64] + 68] = 1;
                                                                                                                MEM[MEM[64] + 100] = v78;
                                                                                                                MEM[MEM[64] + 132] = 0;
                                                                                                                MEM[MEM[64] + 164] = 0;
                                                                                                                v85 = v86 = 324;
                                                                                                                if (!(MEM[v75 + 75] >> 96)) {
                                                                                                                    MEM[MEM[64] + 196] = 3;
                                                                                                                    MEM[MEM[64] + 228] = MEM[v75 + 115] >> 96;
                                                                                                                    MEM[MEM[64] + 260] = v77;
                                                                                                                    MEM[MEM[64] + 292] = MEM[v75 + 135] >> 96;
                                                                                                                }
                                                                                                                if (MEM[v75 + 75] >> 96) {
                                                                                                                    MEM[MEM[64] + 196] = 5;
                                                                                                                    if (MEM[v75 + 115] >> 96 < MEM[v75 + 135] >> 96) {
                                                                                                                        MEM[MEM[64] + 228] = MEM[v75 + 115] >> 96;
                                                                                                                        MEM[MEM[64] + 260] = v77;
                                                                                                                        MEM[MEM[64] + 292] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c;
                                                                                                                        MEM[MEM[64] + 324] = MEM[v75 + 75] >> 96;
                                                                                                                        MEM[MEM[64] + 356] = MEM[v75 + 135] >> 96;
                                                                                                                    }
                                                                                                                    if (MEM[v75 + 115] >> 96 > MEM[v75 + 135] >> 96) {
                                                                                                                        MEM[MEM[64] + 228] = MEM[v75 + 115] >> 96;
                                                                                                                        MEM[MEM[64] + 260] = MEM[v75 + 75] >> 96;
                                                                                                                        MEM[MEM[64] + 292] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c;
                                                                                                                        MEM[MEM[64] + 324] = v77;
                                                                                                                        MEM[MEM[64] + 356] = MEM[v75 + 135] >> 96;
                                                                                                                    }
                                                                                                                    v85 = v87 = 388;
                                                                                                                }
                                                                                                                v88 = 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[MEM[64]:MEM[64] + v388f_0x0], MEM[0:32]).value(v0).gas(msg.gas);
                                                                                                                require(v88);
                                                                                                                v0 = v89 = 9676;
                                                                                                                v0 = v90 = 124;
                                                                                                                v0 = _SafeAdd(v0, v90);
                                                                                                            }
                                                                                                        } else {
                                                                                                            v91 = v0 + v0;
                                                                                                            v0 = v92 = MEM[v91 + 35] >> 96;
                                                                                                            v0 = v93 = MEM[v91 + 55] >> 96;
                                                                                                            v94 = v95 = MEM[v91 + 75] >> 96;
                                                                                                            v0 = v96 = MEM[v91 + 95] >> 96;
                                                                                                            v0 = v97 = 0x1 & MEM[v91 + 32] >> 236;
                                                                                                            if (!v95) {
                                                                                                                v94 = v98 = this;
                                                                                                            }
                                                                                                            if (!v97) {
                                                                                                                v99 = address(v93).withdraw(address(v96), v92, address(v94)).gas(msg.gas);
                                                                                                                require(bool(v99), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                                v70 = v100 = MEM[64];
                                                                                                                v0 = v101 = v100 + RETURNDATASIZE();
                                                                                                                v0 = v102 = 9248;
                                                                                                                v70 = v103 = 0x4c48(v100, v101);
                                                                                                                v0 = v104 = 9260;
                                                                                                                v0 = v105 = 83;
                                                                                                                // Unknown jump to Block 0x4c730x1672. Refer to 3-address code (TAC);
                                                                                                            } else {
                                                                                                                require(bool((address(v93)).code.size));
                                                                                                                v106 = address(v93).supply(address(v96), v92, address(v94), 0).gas(msg.gas);
                                                                                                                if (!bool(v106)) {
                                                                                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                                                                    revert(0, RETURNDATASIZE());
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        v107 = v108 = 0;
                                                                                                        v0 = v109 = 13651;
                                                                                                        v0 = v110, v0 = v111, v0 = v112, v107 = v113 = 0x3f44(v0, v0);
                                                                                                        if (!v0) {
                                                                                                            v0 = v114 = 0xba087652;
                                                                                                            v115 = v116 = 11423;
                                                                                                            v117 = v118 = this;
                                                                                                            v119 = v120 = 4 + MEM[64];
                                                                                                            // Unknown jump to Block 0x4d2f. Refer to 3-address code (TAC);
                                                                                                        } else {
                                                                                                            MEM[MEM[64]] = 0x94bf804d00000000000000000000000000000000000000000000000000000000;
                                                                                                            v121 = v122 = 11307;
                                                                                                            v123 = v124 = 4 + MEM[64];
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    v0 = v125 = 0;
                                                                                                    v0 = v126 = 13475;
                                                                                                    v0 = v127, v0 = v128, v0 = v129, v0 = v130 = 0x3f44(v0, v0);
                                                                                                    if (!v0) {
                                                                                                        MEM[MEM[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000;
                                                                                                        v0 = v131 = 13581;
                                                                                                        v17 = v132 = 4 + MEM[64];
                                                                                                    } else {
                                                                                                        MEM[MEM[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000;
                                                                                                        v0 = v133 = 13331;
                                                                                                        v17 = v134 = 4 + MEM[64];
                                                                                                    }
                                                                                                }
                                                                                            } else {
                                                                                                v0 = v135 = 5789;
                                                                                                v0 = v136 = 0;
                                                                                                v0 = v137 = 13268;
                                                                                                v0 = v138, v0 = v139, v0 = v140, v0 = v141 = 0x3f44(v0, v0);
                                                                                                if (!v0) {
                                                                                                    v142 = new uint256[](1);
                                                                                                    MEM[v142.data] = v0;
                                                                                                    v143 = new uint256[](1);
                                                                                                    MEM[v143.data] = 100;
                                                                                                    v144 = v0.debond(v0, v142, v143).gas(msg.gas);
                                                                                                    require(v144);
                                                                                                } else {
                                                                                                    MEM[MEM[64]] = 0xb08d033300000000000000000000000000000000000000000000000000000000;
                                                                                                    v145 = v146 = address(v0);
                                                                                                    v147 = v148 = 13331;
                                                                                                    v149 = v150 = 1;
                                                                                                    v151 = v152 = 4 + MEM[64];
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            v153 = MEM[33 + (v0 + v0)] >> 248;
                                                                                            if (1 - v153) {
                                                                                                if (!(2 - uint8(v153))) {
                                                                                                    v154 = v0 + v0;
                                                                                                    v0 = v155 = MEM[v154 + 35] >> 96;
                                                                                                    v0 = v156 = MEM[v154 + 55] >> 96;
                                                                                                    v0 = v157 = MEM[v154 + 75] >> 248;
                                                                                                    v0 = v158 = MEM[v154 + 76] >> 248;
                                                                                                    if (v157 <= 9) {
                                                                                                        v0 = v159 = 0;
                                                                                                        v0 = v160 = 13106;
                                                                                                        v0 = v161 = 10;
                                                                                                        v0 = v162 = 0x4e65(v158, v161);
                                                                                                        v163 = v164 = uint8(v0);
                                                                                                        require(v164 <= 2, Panic(33)); // failed convertion to enum type
                                                                                                        require(uint8(v0) <= 2, Panic(33)); // failed convertion to enum type
                                                                                                        MEM[MEM[64]] = 0x465f07200000000000000000000000000000000000000000000000000000000;
                                                                                                        MEM[4 + MEM[64]] = v0;
                                                                                                        v165 = v166 = 20114;
                                                                                                        v167 = v168 = 4 + MEM[64] + 32;
                                                                                                        require(uint8(v0) - uint8(v0) <= uint8.max, Panic(17)); // arithmetic overflow or underflow
                                                                                                    } else {
                                                                                                        v0 = v169 = address(v156);
                                                                                                        v163 = v170 = 0xabacbb2f;
                                                                                                        v163 = v171 = uint8(v158);
                                                                                                        require(v171 <= 2, Panic(33)); // failed convertion to enum type
                                                                                                        v172 = v173 = 4 + MEM[64];
                                                                                                        v0 = v174 = 13044;
                                                                                                        v172 = v175 = 0x4e4a(v173, v171, v155);
                                                                                                        require(bool(v0.code.size));
                                                                                                        v176 = v0.bridgeBack().gas(msg.gas);
                                                                                                        require(bool(v176), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                        v0 = v177 = 8444;
                                                                                                        v0 = v178 = 45;
                                                                                                        MEM[v172] = v0;
                                                                                                        v165 = v179 = 20062;
                                                                                                        v167 = v172 + 32;
                                                                                                    }
                                                                                                    require(v163 < 3, Panic(33)); // failed convertion to enum type
                                                                                                    MEM[v167] = v163;
                                                                                                }
                                                                                            } else {
                                                                                                v180 = v0 + v0;
                                                                                                v0 = v181 = MEM[v180 + 35] >> 96;
                                                                                                v0 = v182 = MEM[v180 + 75] >> 96;
                                                                                                v0 = v183 = MEM[v180 + 95] >> 248;
                                                                                                v0 = v184 = MEM[96 + v180] >> 248;
                                                                                                if (!v182) {
                                                                                                    v0 = v185 = this;
                                                                                                }
                                                                                                if (10 - uint8(v183)) {
                                                                                                    if (10 - uint8(v184)) {
                                                                                                        if (11 - uint8(v183)) {
                                                                                                            v0 = v186 = address(MEM[v180 + 55] >> 96);
                                                                                                            v0 = v187 = 0x39f47693;
                                                                                                            v0 = v188 = 12850;
                                                                                                            v17 = v189 = 4 + MEM[64];
                                                                                                            v17 = v190 = 0x45ac(v189, v181, v0);
                                                                                                            v191 = v0.unwrap().gas(msg.gas);
                                                                                                            require(bool(v191), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                            v70 = v192 = MEM[64];
                                                                                                            v0 = v193 = v192 + RETURNDATASIZE();
                                                                                                            v0 = v194 = 12914;
                                                                                                        } else {
                                                                                                            v0 = v195 = address(MEM[v180 + 55] >> 96);
                                                                                                            v0 = v196 = 0xbf376c7a;
                                                                                                            v0 = v197 = 12504;
                                                                                                            v17 = v198 = 4 + MEM[64];
                                                                                                            v17 = v199 = 0x45ac(v198, v181, v0);
                                                                                                        }
                                                                                                    } else if (11 - uint8(v183)) {
                                                                                                        v0 = v200 = address(MEM[v180 + 55] >> 96);
                                                                                                        v0 = v201 = 0x990966d5;
                                                                                                        v0 = v202 = 12504;
                                                                                                        v0 = v203 = 0;
                                                                                                        v17 = v204 = 4 + MEM[64];
                                                                                                        v17 = v205 = 0x4dec(v204, v203, v203, v181, v0);
                                                                                                    } else {
                                                                                                        v0 = v206 = address(MEM[v180 + 55] >> 96);
                                                                                                        v0 = v207 = 0x990966d5;
                                                                                                        v0 = v208 = 12504;
                                                                                                        v0 = v209 = 0;
                                                                                                        v0 = v210 = 1;
                                                                                                        v17 = v211 = 4 + MEM[64];
                                                                                                        v17 = v212 = 0x4dec(v211, v210, v209, v181, v0);
                                                                                                    }
                                                                                                } else if (11 - uint8(v184)) {
                                                                                                    v0 = v213 = address(MEM[v180 + 55] >> 96);
                                                                                                    v0 = v214 = 0xd866c9d8;
                                                                                                    v0 = v215 = 12504;
                                                                                                    v0 = v216 = 0;
                                                                                                    v17 = v217 = 4 + MEM[64];
                                                                                                    v17 = v218 = 0x4dec(v217, v216, v216, v181, v0);
                                                                                                } else {
                                                                                                    v0 = v219 = address(MEM[v180 + 55] >> 96);
                                                                                                    v0 = v220 = 0xd866c9d8;
                                                                                                    v0 = v221 = 12504;
                                                                                                    v0 = v222 = 1;
                                                                                                    v0 = v223 = 0;
                                                                                                    v17 = v224 = 4 + MEM[64];
                                                                                                    v17 = v225 = 0x4dec(v224, v223, v222, v181, v0);
                                                                                                }
                                                                                                v226 = v0.wrap(0xd866c9d800000000000000000000000000000000000000000000000000000000, 0x990966d500000000000000000000000000000000000000000000000000000000, 0x990966d500000000000000000000000000000000000000000000000000000000, 0xbf376c7a00000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                                                                                                require(bool(v226), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                                v70 = v227 = MEM[64];
                                                                                                v0 = v228 = v227 + RETURNDATASIZE();
                                                                                                v0 = v229 = 12568;
                                                                                                MEM[v17] = address(v0);
                                                                                                MEM[v17 + 32] = v0;
                                                                                                MEM[v17 + 64] = bool(v0);
                                                                                                MEM[v17 + 96] = bool(v0);
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                        v230 = MEM[33 + (v0 + v0)] >> 248;
                                                                                        if (1 - v230) {
                                                                                            if (!(2 - uint8(v230))) {
                                                                                                v231 = v0 + v0;
                                                                                                v232 = new struct(2);
                                                                                                v232.word0 = MEM[v231 + 55] >> 96;
                                                                                                v232.word1 = MEM[v231 + 35] >> 96;
                                                                                                v233 = v234 = new struct(2);
                                                                                                v235 = v236 = 1;
                                                                                                v234.word0 = v236;
                                                                                                v237 = v238 = v234.data;
                                                                                                while (1) {
                                                                                                    v239 = v240 = 16915;
                                                                                                    v239 = v241 = 0x4596();
                                                                                                    MEM[v237] = v239;
                                                                                                    v237 += 32;
                                                                                                    v235 = v235 - 1;
                                                                                                    if (v235) {
                                                                                                        break;
                                                                                                    } else {
                                                                                                        require(0 < v234.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                                                        v242 = v234.data;
                                                                                                        v234.word1 = v232;
                                                                                                        MEM[MEM[64]] = 0x16805c8100000000000000000000000000000000000000000000000000000000;
                                                                                                        v243 = v244 = 17025;
                                                                                                        v243 = v245 = 0;
                                                                                                        v243 = v246 = 4 + MEM[64];
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            v247 = v0 + v0;
                                                                                            v248 = new struct(2);
                                                                                            v248.word0 = MEM[v247 + 55] >> 96;
                                                                                            v248.word1 = MEM[v247 + 35] >> 96;
                                                                                            v233 = v249 = new struct(2);
                                                                                            v250 = v251 = 1;
                                                                                            v249.word0 = v251;
                                                                                            v252 = v253 = v249.data;
                                                                                            while (1) {
                                                                                                v239 = v254 = 16657;
                                                                                                v239 = v255 = 0x4596();
                                                                                                MEM[v252] = v239;
                                                                                                v252 += 32;
                                                                                                v250 = v250 - 1;
                                                                                                if (v250) {
                                                                                                    break;
                                                                                                } else {
                                                                                                    require(0 < v249.word0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                                                    v256 = v249.data;
                                                                                                    v249.word1 = v248;
                                                                                                    MEM[MEM[64]] = 0x16805c8100000000000000000000000000000000000000000000000000000000;
                                                                                                    v243 = v257 = 16767;
                                                                                                    v243 = v258 = 0;
                                                                                                    v243 = v259 = 4 + MEM[64];
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        MEM[v243] = 96;
                                                                                        v243 = v260 = 0;
                                                                                        v243 = v261 = 20349;
                                                                                        v243 = v262 = v243 + 96;
                                                                                        v233 = v263 = 0x4f1c(v233, v262);
                                                                                        MEM[v243] = MEM[v233];
                                                                                        v264 = v243 + 32;
                                                                                        v265 = v233 + 32;
                                                                                        v266 = 0;
                                                                                        while (v266 < MEM[v233]) {
                                                                                            MEM[v264] = address(MEM[MEM[v265]]);
                                                                                            MEM[v264 + 32] = MEM[32 + MEM[v265]];
                                                                                            v264 = v264 + 64;
                                                                                            v265 = v265 + 32;
                                                                                            v266 += 1;
                                                                                        }
                                                                                        MEM[v243 + 32] = bool(v243);
                                                                                        MEM[64 + v243] = v243;
                                                                                        MEM[MEM[64]] = 0;
                                                                                        MEM[MEM[64] + 32] = 0;
                                                                                    }
                                                                                } else {
                                                                                    v267 = MEM[33 + (v0 + v0)] >> 248;
                                                                                    if (1 - v267) {
                                                                                        if (2 - uint8(v267)) {
                                                                                            if (!(3 - uint8(v267))) {
                                                                                                v268 = v0 + v0;
                                                                                                v0 = v269 = MEM[v268 + 35] >> 96;
                                                                                                v0 = v270 = MEM[v268 + 55] >> 96;
                                                                                                v0 = v271 = MEM[v268 + 75] >> 96;
                                                                                                v0 = v272 = MEM[v268 + 95] >> 96;
                                                                                                v0 = v273 = MEM[v268 + 115] >> 96;
                                                                                                if (!v273) {
                                                                                                    v0 = v274 = this;
                                                                                                }
                                                                                                MEM[MEM[64]] = 0x6c08c57e00000000000000000000000000000000000000000000000000000000;
                                                                                                v275 = v276 = address(v270);
                                                                                                v277 = v278 = 16525;
                                                                                                v0 = v279 = 1;
                                                                                                v280 = v281 = 4 + MEM[64];
                                                                                            }
                                                                                        } else {
                                                                                            v0 = v282 = 2908;
                                                                                        }
                                                                                    } else {
                                                                                        v0 = v283 = 8474;
                                                                                    }
                                                                                    v284 = v0 + v0;
                                                                                    v0 = v285 = MEM[v284 + 35] >> 96;
                                                                                    v0 = v286 = MEM[v284 + 55] >> 96;
                                                                                    v0 = v287 = MEM[v284 + 75] >> 96;
                                                                                    v0 = v288 = 0x1 & MEM[v284 + 32] >> 236;
                                                                                    if (!v288) {
                                                                                        MEM[MEM[64]] = 0x7cbc237300000000000000000000000000000000000000000000000000000000;
                                                                                        MEM[MEM[64] + 4] = v285;
                                                                                        MEM[MEM[64] + 36] = 0;
                                                                                        require(bool((address(v286)).code.size));
                                                                                        v289 = address(v286).call(MEM[MEM[64]:MEM[64] + 68 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                                                        if (bool(v289)) {
                                                                                            v0 = v290 = 8444;
                                                                                            v0 = v291 = 63;
                                                                                            v0 = _SafeAdd(v0, v291);
                                                                                        } else {
                                                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                                            revert(0, RETURNDATASIZE());
                                                                                        }
                                                                                    } else {
                                                                                        MEM[MEM[64]] = 0x156e29f600000000000000000000000000000000000000000000000000000000;
                                                                                        v145 = v292 = address(v286);
                                                                                        v147 = v293 = 13331;
                                                                                        v149 = v294 = 0;
                                                                                        v151 = v295 = 4 + MEM[64];
                                                                                    }
                                                                                }
                                                                                MEM[v151] = address(v0);
                                                                                MEM[v151 + 32] = v0;
                                                                                MEM[v151 + 64] = v149;
                                                                                require(bool(v145.code.size));
                                                                                v296 = v145.call(MEM[MEM[64]:MEM[64] + 96 + v4e9f_0x0 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                                                if (!bool(v296)) {
                                                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                                    revert(0, RETURNDATASIZE());
                                                                                }
                                                                                v0 = v297 = 8456;
                                                                                0x1672(v0, v0);
                                                                                revert(Error('WRAP_ROUTER: INVALID_ORIGIN_POOL'));
                                                                                v0 = v298 = 8444;
                                                                                v0 = v299 = 63;
                                                                                v0 = _SafeAdd(v0, v299);
                                                                            } else {
                                                                                v300 = v0 + v0;
                                                                                v301 = v302 = MEM[v300 + 55] >> 96;
                                                                                if (!v302) {
                                                                                    v301 = v303 = this;
                                                                                }
                                                                                if (!(0x1 & MEM[v300 + 32] >> 236)) {
                                                                                    v304 = v305 = address(MEM[v300 + 35] >> 96);
                                                                                    v301 = v306 = 0xdd93f59a;
                                                                                    v304 = v307 = 12103;
                                                                                    v308 = v309 = 4 + MEM[64];
                                                                                    v308 = v310 = 0x4c34(v309, v301);
                                                                                    v311 = v304.sellQuote().gas(msg.gas);
                                                                                    require(bool(v311), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                    v70 = v312 = MEM[64];
                                                                                    v0 = v313 = v312 + RETURNDATASIZE();
                                                                                    v0 = v314 = 12167;
                                                                                } else {
                                                                                    v304 = v315 = address(MEM[v300 + 35] >> 96);
                                                                                    v301 = v316 = 0xbd6015b4;
                                                                                    v304 = v317 = 11989;
                                                                                    v308 = v318 = 4 + MEM[64];
                                                                                    v308 = v319 = 0x4c34(v318, v301);
                                                                                    v320 = v304.sellBase().gas(msg.gas);
                                                                                    require(bool(v320), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                    v70 = v321 = MEM[64];
                                                                                    v0 = v322 = v321 + RETURNDATASIZE();
                                                                                    v0 = v323 = 12053;
                                                                                }
                                                                                MEM[v308] = address(v301);
                                                                            }
                                                                        } else {
                                                                            v324 = v0 + v0;
                                                                            v107 = v325 = MEM[v324 + 35] >> 96;
                                                                            v0 = v326 = MEM[v324 + 75] >> 96;
                                                                            v121 = v327 = 0x1 & MEM[v324 + 32] >> 236;
                                                                            if (!v326) {
                                                                                v0 = v328 = this;
                                                                            }
                                                                            if (!v327) {
                                                                                v107 = v329 = address(MEM[v324 + 55] >> 96);
                                                                                v0 = v330 = 0x5dbd6059;
                                                                                v121 = v331 = 11423;
                                                                                v123 = v332 = 4 + MEM[64];
                                                                                v123 = v333 = 0x4dd5(v332, v0, v325);
                                                                                v334 = v107.unwrapTo().gas(msg.gas);
                                                                                require(bool(v334), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                v70 = v335 = MEM[64];
                                                                                v0 = v336 = v335 + RETURNDATASIZE();
                                                                                v0 = v337 = 11487;
                                                                            } else {
                                                                                v107 = v338 = address(MEM[v324 + 55] >> 96);
                                                                                v0 = v339 = 0x26599850;
                                                                                v121 = v340 = 11307;
                                                                                v123 = v341 = 4 + MEM[64];
                                                                                v123 = v342 = 0x4dd5(v341, v0, v325);
                                                                                v343 = v107.wrapTo().gas(msg.gas);
                                                                                require(bool(v343), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                                v70 = v344 = MEM[64];
                                                                                v0 = v345 = v344 + RETURNDATASIZE();
                                                                                v0 = v346 = 11371;
                                                                            }
                                                                        }
                                                                        MEM[v123] = v107;
                                                                        MEM[v123 + 32] = address(v0);
                                                                    } else {
                                                                        v347 = MEM[33 + (v0 + v0)] >> 248;
                                                                        if (2 - v347) {
                                                                            if (!(1 - uint8(v347))) {
                                                                                v348 = v0 + v0;
                                                                                v0 = v349 = MEM[v348 + 55] >> 96;
                                                                                v0 = v350 = 0x1 & MEM[v348 + 32] >> 236;
                                                                                if (!v350) {
                                                                                    require(bool((address(v349)).code.size));
                                                                                    v351 = address(v349).convertTaxlessTrumpToTaxedTrump(MEM[v348 + 35] >> 96).gas(msg.gas);
                                                                                    if (!bool(v351)) {
                                                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                                        revert(0, RETURNDATASIZE());
                                                                                    }
                                                                                } else {
                                                                                    require(bool((address(v349)).code.size));
                                                                                    v352 = address(v349).convertTaxedTrumpToTaxlessTrump(MEM[v348 + 35] >> 96).gas(msg.gas);
                                                                                    if (!bool(v352)) {
                                                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                                        revert(0, RETURNDATASIZE());
                                                                                    }
                                                                                }
                                                                                v0 = v353 = 11729;
                                                                                v0 = v354 = 43;
                                                                                v0 = _SafeAdd(v0, v354);
                                                                                v0 = v355 = 3162;
                                                                            }
                                                                        } else {
                                                                            v0 = v356 = 0;
                                                                            v0 = v357 = 11247;
                                                                            v0 = v358, v0 = v359, v0 = v360, v0 = v361 = 0x3f44(v0, v0);
                                                                            if (!v0) {
                                                                                MEM[MEM[64]] = 0xea785a5e00000000000000000000000000000000000000000000000000000000;
                                                                                v0 = v362 = 11423;
                                                                                v17 = v363 = 4 + MEM[64];
                                                                            } else {
                                                                                MEM[MEM[64]] = 0x2f4f21e200000000000000000000000000000000000000000000000000000000;
                                                                                v0 = v364 = 11307;
                                                                                v17 = v365 = 4 + MEM[64];
                                                                            }
                                                                        }
                                                                    }
                                                                    MEM[v17] = address(v0);
                                                                    MEM[v17 + 32] = v0;
                                                                    v366 = v0 + v0;
                                                                    if (!(MEM[v366 + 75] >> 96)) {
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            v367 = v0 + v0;
                                                            v0 = v368 = MEM[v367 + 227];
                                                            v0 = v369 = MEM[v367 + 259];
                                                            v0 = v370 = MEM[v367 + 355];
                                                            v0 = v371 = 0;
                                                            v0 = v372 = 10962;
                                                            v0 = v373 = 0x1bdb(v368);
                                                            if (v0) {
                                                                if (this.balance < v0) {
                                                                    MEM[0] = MEM[0];
                                                                    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                                                    v374 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                                    require(bool(v374), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                                                }
                                                            }
                                                            v375 = new uint256[](800);
                                                            v376 = v377 = 0;
                                                            while (v376 < 704) {
                                                                MEM[MEM[64] + (v376 + 132)] = MEM[v0 + (v0 + 35) + v376];
                                                                v376 = v376 + 32;
                                                            }
                                                            MEM[MEM[64] + 836] = 65;
                                                            v378 = v0 + v0;
                                                            MEM[MEM[64] + 868] = MEM[v378 + 739];
                                                            MEM[MEM[64] + 900] = MEM[v378 + 771];
                                                            v379 = v0.execute(0x3202c0, v375, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, MEM[803 + v378]).value(v0).gas(msg.gas);
                                                            require(v379);
                                                            v0 = v381 = 8444;
                                                            v0 = v382 = 772;
                                                        }
                                                    } else {
                                                        v383 = v0 + v0;
                                                        v0 = v384 = MEM[v383 + 35] >> 96;
                                                        v0 = v385 = MEM[v383 + 55] >> 96;
                                                        if (!v385) {
                                                            v0 = v386 = this;
                                                        }
                                                        v387 = v388 = 0;
                                                        v389 = v390 = 0;
                                                        while (v389 < 320) {
                                                            MEM[MEM[64] + (v389 + 4)] = MEM[v0 + (75 + v0) + v389];
                                                            v389 = v389 + 32;
                                                        }
                                                        if (v0 == this == 0) {
                                                            MEM[MEM[64] + 420] = 20;
                                                            v387 = v391 = 0x800000000000000000000000000000000000000000000000000000000000000;
                                                        } else {
                                                            MEM[MEM[64] + 420] = 0;
                                                        }
                                                        v392 = 0x111111125421ca6dc452d289314280a0f8842a65.fillOrderArgs(v380, v380, v380, v380, v380, v380, v380, v380, v380, v380, v384, v387, 416, v380, v0 << 96).gas(msg.gas);
                                                        require(v392);
                                                        v0 = v393 = 10919;
                                                        v0 = v394 = 363;
                                                        v0 = _SafeAdd(v0, v394);
                                                        v0 = v395 = 2128;
                                                    }
                                                } else {
                                                    v0 = v396 = 5789;
                                                    0x28f7(v0);
                                                    v397 = MEM[33 + (v0 + v0)] >> 248;
                                                    if (1 - v397) {
                                                        if (2 - uint24(v397)) {
                                                            v398 = v0 + v0;
                                                            if (!(MEM[v398 + 35] >> 96)) {
                                                            }
                                                        } else {
                                                            v399 = v0 + v0;
                                                            v0 = v400 = MEM[v399 + 55] >> 96;
                                                            v0 = v401 = 17607;
                                                        }
                                                    } else {
                                                        MCOPY(MEM[64] + 36, v0, MEM[v0] + 32);
                                                        MEM[0] = MEM[0];
                                                        v402 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v0).gas(msg.gas);
                                                        require(v402);
                                                    }
                                                }
                                            }
                                        } else {
                                            v0 = v403 = 5789;
                                            0x27e6(v0);
                                            v404 = MEM[33 + (v0 + v0)] >> 248;
                                            if (1 - v404) {
                                                if (2 - uint24(v404)) {
                                                    v405 = v0 + v0;
                                                    if (!(MEM[v405 + 35] >> 96)) {
                                                    }
                                                } else {
                                                    v406 = v0 + v0;
                                                    v0 = v407 = MEM[v406 + 55] >> 96;
                                                    v408 = 0x4444c5dc75cb358380d2e3de08a90.sync(v407).gas(msg.gas);
                                                    require(v408);
                                                    v0 = v409 = 17380;
                                                }
                                            } else {
                                                v410 = new uint256[](MEM[v0] + 32);
                                                MEM[v410.data] = v0;
                                                MCOPY(MEM[64] + 100, v0 + 32, MEM[v0]);
                                                v411 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v410).gas(msg.gas);
                                                require(v411);
                                            }
                                        }
                                    }
                                } else {
                                    v412 = MEM[33 + (v0 + v0)] >> 248;
                                    if (0 - v412) {
                                        if (!(1 - uint8(v412))) {
                                            v413 = v0 + v0;
                                            v0 = v414 = 0x1 & MEM[v413 + 32] >> 235;
                                            v0 = v415 = MEM[v413 + 35] >> 96;
                                            v0 = v416 = MEM[v413 + 55] >> 96;
                                            v0 = v417 = MEM[v413 + 75] >> 96;
                                            v0 = v418 = MEM[v413 + 95] >> 96;
                                            if (v414) {
                                                v419 = address(v416).swapExactAmountOut(address(v417), 0xfffd8963efd1fc6a506488495d951d5263988d26, address(v418), v415, 0xfffd8963efd1fc6a506488495d951d5263988d26).gas(msg.gas);
                                                if (bool(v419)) {
                                                    v420 = v421 = MEM[64];
                                                    v422 = v423 = v421 + RETURNDATASIZE();
                                                    v0 = v424 = 10040;
                                                    v420 = v425, v422 = v426 = 0x4d7e(v421, v423);
                                                } else {
                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                    revert(0, RETURNDATASIZE());
                                                }
                                            }
                                            require(v422 - v420 >= 64);
                                            if (!v0) {
                                                v427 = address(v0).swapExactAmountIn(address(v0), v0, address(v0), 1, 0xfffd8963efd1fc6a506488495d951d5263988d26).gas(msg.gas);
                                                if (bool(v427)) {
                                                    v420 = v428 = MEM[64];
                                                    v422 = v429 = v428 + RETURNDATASIZE();
                                                    v0 = v430 = 10200;
                                                    v420 = v431, v422 = v432 = 0x4d7e(v428, v429);
                                                } else {
                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                    revert(0, RETURNDATASIZE());
                                                }
                                            }
                                        }
                                    } else {
                                        v433 = v0 + v0;
                                        v0 = v434 = MEM[v433 + 115];
                                        v435 = v436 = 0x1 & MEM[v433 + 32] >> 235;
                                        v0 = v437 = MEM[v433 + 75] >> 96;
                                        v0 = v438 = MEM[v433 + 95] >> 96;
                                        v0 = v439 = MEM[v433 + 55] >> 96;
                                        v0 = v440 = MEM[v433 + 35] >> 96;
                                        if (!v439) {
                                            v0 = v441 = this;
                                        }
                                        if (v436) {
                                            v435 = v442 = 9792;
                                            v0 = v443 = 1;
                                            v0 = v444 = 0x3e41(v0, v440, v438, v437, v443, v434);
                                        }
                                        if (v0 != 1) {
                                        }
                                        v445 = new uint256[](v0);
                                        MEM[v445.data] = v0;
                                        v446 = 0xba12222222228d8ba445958a75a0704d566bf2c8.swap(v445, this, 0, v0, 0, uint256.max, 0, uint256.max, v380, v380, v0, v0, v440, 192, 0).gas(msg.gas);
                                        require(v446);
                                        if (!v435) {
                                            v435 = v447 = 9813;
                                            v0 = v448 = 0;
                                            v0 = v449 = 0x3e41(v0, v440, v0, v0, v448, v0);
                                        }
                                        v0 = v450 = 8962;
                                        v0 = v451 = 115;
                                        v0 = _SafeAdd(v0, v451);
                                        v0 = v452 = 1839;
                                        continue;
                                    }
                                }
                                v0 = v453 = 9260;
                                v0 = v454 = 83;
                                v0 = _SafeAdd(v0, v454);
                            } else {
                                v455 = v0 + v0;
                                v0 = v456 = bool(MEM[v455 + 35] >> 248);
                                v0 = v457 = MEM[v455 + 37] >> 96;
                                v0 = v458 = MEM[v455 + 77] >> 96;
                                if (!v458) {
                                    v0 = v459 = this;
                                }
                                v0 = v460 = 0;
                                if (uint8(v456)) {
                                    v461 = this.balance;
                                    if (v461 < v457) {
                                        MEM[0] = MEM[0];
                                        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                        v462 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v457).gas(msg.gas);
                                        if (!bool(v462)) {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    }
                                }
                                if (!(MEM[v455 + 35] >> 252)) {
                                    MEM[MEM[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000;
                                } else if (MEM[v455 + 35] >> 252 == 1) {
                                    MEM[MEM[64]] = 0x5b41b90800000000000000000000000000000000000000000000000000000000;
                                } else {
                                    require(MEM[v455 + 35] >> 252 == 2);
                                    MEM[MEM[64]] = 0x5b41b90800000000000000000000000000000000000000000000000000000000;
                                }
                                v463 = (MEM[v455 + 57] >> 96).call(v380, MEM[v455 + 36] >> 252, bool(MEM[v455 + 36] >> 248), v457, 0).value(v0).gas(msg.gas);
                                require(v463);
                                v0 = v464 = 9676;
                                v0 = v465 = 65;
                                v0 = _SafeAdd(v0, v465);
                            }
                            v0 = v466 = 9688;
                            continue;
                        }
                    } else {
                        v0 = v467 = MEM[33 + (v0 + v0)] >> 248;
                        if (v467 >= 32) {
                            if (!(32 - uint8(v467))) {
                                v0 = v468 = 8474;
                            }
                        } else {
                            v0 = v469 = 5834;
                        }
                        v470 = v0 + v0;
                        v0 = v471 = MEM[v470 + 35] >> 96;
                        v0 = v472 = MEM[v470 + 55] >> 96;
                        v0 = v473 = MEM[v470 + 75] >> 96;
                        v0 = v474 = MEM[v470 + 95] >> 248;
                        if (!v473) {
                            v0 = v475 = this;
                        }
                        v0 = v476 = 8456;
                        v0 = v477 = 1;
                        0x3d93(v0, v477, v0, v0, v471, v474, v472);
                    }
                } else {
                    v0 = v478 = MEM[33 + (v0 + v0)] >> 248;
                    if (v478 >= 32) {
                        if (32 - uint8(v478)) {
                            if (34 - uint8(v478)) {
                                if (!(33 - uint8(v478))) {
                                    v479 = v0 + v0;
                                    v0 = v480 = MEM[v479 + 35] >> 96;
                                    v0 = v481 = MEM[v479 + 55] >> 96;
                                    v0 = v482 = MEM[v479 + 75] >> 96;
                                    v0 = v483 = MEM[v479 + 95] >> 96;
                                    v0 = v484 = 0;
                                    v0 = v485 = 9023;
                                    v0 = v486 = 0x1bdb(v482);
                                    if (v0) {
                                        v487 = this.balance;
                                        if (v487 < v0) {
                                            MEM[0] = MEM[0];
                                            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                            v488 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                            if (!bool(v488)) {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        }
                                    }
                                    MEM[MEM[64]] = 0xd5bcb9b500000000000000000000000000000000000000000000000000000000;
                                    v0 = v489 = address(v0);
                                    v275 = v490 = 0xd5bcb9b5;
                                    v277 = v491 = 9183;
                                    v0 = v492 = 0;
                                    v280 = v493 = 4 + MEM[64];
                                }
                            } else {
                                v494 = v0 + v0;
                                v0 = v495 = MEM[v494 + 35] >> 96;
                                v117 = v496 = MEM[v494 + 75] >> 96;
                                v0 = v497 = MEM[v494 + 95] >> 248;
                                if (!v496) {
                                    v117 = v498 = this;
                                }
                                v0 = v499 = 0;
                                if (uint8(v497)) {
                                    if (this.balance < v495) {
                                        MEM[0] = MEM[0];
                                        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                        v500 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v495).gas(msg.gas);
                                        require(bool(v500), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    }
                                }
                                if (!(0x1 & MEM[v494 + 32] >> 236)) {
                                    v501 = address(MEM[v494 + 55] >> 96).tokenToEthTransferInput(v495, 1, 0xfffd8963efd1fc6a506488495d951d5263988d26, address(v117)).gas(msg.gas);
                                    require(bool(v501), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    v70 = v502 = MEM[64];
                                    v0 = v503 = v502 + RETURNDATASIZE();
                                    v0 = v504 = 8949;
                                    v70 = v505 = 0x4c48(v502, v503);
                                } else {
                                    v0 = v506 = address(MEM[v494 + 55] >> 96);
                                    v115 = v507 = 8733;
                                    v107 = v508 = 1;
                                    v0 = v509 = 0xfffd8963efd1fc6a506488495d951d5263988d26;
                                    v119 = v510 = 4 + MEM[64];
                                }
                            }
                        } else {
                            v0 = v511 = 8474;
                        }
                    } else {
                        v0 = v512 = 5834;
                    }
                    v513 = v0 + v0;
                    v0 = v514 = MEM[v513 + 35] >> 96;
                    v0 = v515 = MEM[v513 + 55] >> 96;
                    v0 = v516 = MEM[v513 + 75] >> 96;
                    v0 = v517 = MEM[v513 + 95] >> 248;
                    if (!v516) {
                        v0 = v518 = this;
                    }
                    v0 = v519 = 8433;
                    v0 = v520 = 0;
                    v0 = v521 = 0;
                    0x3d93(v521, v520, v0, v0, v514, v517, v515);
                    v0 = v522 = 8444;
                    v0 = v523 = 64;
                }
                require(v0 <= v0 + v0, Panic(17)); // arithmetic overflow or underflow
                if (v0 != 1) {
                }
                MEM[MEM[64] + 68] = v0;
                v524 = MEM[v0];
                v525 = 0;
                if (v0 != 0) {
                    while (v525 < v524) {
                        MEM[MEM[64] + (v525 + 164)] = MEM[v0 + 32 + v525];
                        v525 = v525 + 32;
                    }
                    MEM[MEM[64] + (v524 + 164)] = v0;
                }
                v526 = v0.swap(v0, 0, v0, 0, this, 128, 0, v524 + 32).gas(msg.gas);
                require(v526);
                MEM[v119] = v107;
                MEM[v119 + 32] = address(v0);
                MEM[v119 + 64] = address(v117);
                v527 = v0.redeem(0xba08765200000000000000000000000000000000000000000000000000000000).value(v0).gas(msg.gas);
                require(bool(v527), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                v70 = v528 = MEM[64];
                MEM[64] = v528 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v0 = v529 = v528 + RETURNDATASIZE();
                v0 = v530 = 8798;
                v0 = v531 = 8962;
                v0 = v532 = 64;
                // Unknown jump to Block 0x4c730x1672. Refer to 3-address code (TAC);
                require(v0 - v70 >= 32);
                if (address(v0)) {
                }
                MEM[v280] = address(v0);
                MEM[v280 + 32] = address(v0);
                MEM[v280 + 64] = v0;
                MEM[v280 + 96] = v0;
                MEM[v280 + 128] = address(v0);
                require(bool(v275.code.size));
                v533 = v275.call(MEM[MEM[64]:MEM[64] + 160 + v4d4e_0x0 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (bool(v533)) {
                    v0 = v534 = 103;
                    v0 = v535 = 9260;
                    v0 = _SafeAdd(v0, v534);
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
                // Unknown jump to Block 0x8500x1672. Refer to 3-address code (TAC);
                v0 = v536 = 9272;
                continue;
            } else {
                v0 = v537 = 5789;
                0x1f9f(v0, v0);
                v538 = MEM[v0 + (75 + v0)] >> 96;
                if (!v538) {
                    v538 = v539 = this;
                }
                if ((MEM[v0 + (32 + v0)] >> 232 & 0x8) >> 3 != 1) {
                }
                if ((MEM[v0 + (32 + v0)] >> 232 & 0x10) >> 4 != 1) {
                }
                v540 = 0;
                while (v540 < MEM[v0]) {
                    MEM[MEM[64] + (v540 + 196)] = MEM[v0 + 32 + v540];
                    v540 = v540 + 32;
                }
                MEM[MEM[64] + (MEM[v0] + 196)] = v0;
                v541 = (MEM[v0 + (55 + v0)] >> 96).swap(v538, (MEM[v0 + (32 + v0)] >> 232 & 0x10) >> 4, ~(MEM[v0 + (35 + v0)] >> 96) + 1, MEM[v0 + (35 + v0)] >> 96, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, MEM[v0] + 32).gas(msg.gas);
                require(v541);
            }
            return ;
        } else {
            return ;
        }
    }
}

function 0x0759b8a6() public nonPayable { 
    return stor_6;
}

function 0x0ab35bb0(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = v2 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender) {
        v1 = v3 = this != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0x5f444704bce3eb657768037bfb269b68730418a5 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v8 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v9 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != msg.sender;
    }
    if (v1) {
        require(msg.sender == _destroy);
    }
    MEM[0] = MEM[0];
    v10 = 0x4c34(4 + MEM[64], this);
    v11 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf().gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v12 = 0x4c48(MEM[64], MEM[64] + RETURNDATASIZE());
    require(v12 <= this.balance + v12, Panic(17)); // arithmetic overflow or underflow
}

function 0x1bae(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg2.transfer(varg1, varg0).gas(msg.gas);
    require(v0);
    return ;
}

function 0x1bdb(address varg0) private { 
    v0 = v1 = !varg0;
    if (varg0) {
        v0 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == varg0;
    }
    return v0;
}

function 0x1c14(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    varg2 = v0 = 0;
    while (varg2 < varg1) {
        varg2 = v1 = MEM[varg0 + 26] >> 96;
        v2 = 1;
        v3 = 0x1000276a4;
        if (varg2 > v1) {
            v2 = v4 = 0;
            v3 = v5 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        v6, /* uint256 */ v7, /* uint256 */ v8 = 0x4444c5dc75cb358380d2e3de08a90.swap(varg2, varg2, MEM[varg0] >> 232, MEM[varg0 + 3] >> 232, MEM[varg0 + 6] >> 96, v2, ~varg4 + 1, v3, 288, 0).gas(msg.gas);
        require(v6);
        if (v2) {
            varg4 = v9 = v8 >> 128;
        }
        if (!v2) {
            varg4 = v10 = 0xf3cd914c000000000000000000000000;
        }
        varg0 = varg0 + 46;
        varg2 += 1;
    }
    if (varg4 >= MEM[varg0] >> 96) {
        MEM[MEM[64] + 68] = varg4;
        if (!(varg2 - varg2)) {
        }
        v11 = 0x4444c5dc75cb358380d2e3de08a90.take(varg2, varg3, varg4 - varg4).gas(msg.gas);
        require(v11);
        return varg2, varg4;
    } else {
        v12 = 0x4cda(4 + MEM[64]);
        revert(Error(0x8c379a000000000000000000000000000000000000000000000000000000000, varg2, MEM[varg0] >> 232));
    }
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x46d5(sender);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](v0.length - 32);
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v1 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v1) {
        require(tx.origin == _destroy);
    }
    v8 = MEM[v0 + MEM[v0 + v0.length] + 75] >> 96;
    if (!v8) {
        v8 = v9 = this;
    }
    if (this != address(v8)) {
        0x1bae(MEM[v0 + MEM[v0 + v0.length] + 35] >> 96, v8, MEM[96 + (v0 + MEM[v0 + v0.length])] >> 96);
    }
    v10 = _SafeAdd(MEM[v0 + v0.length], 84);
}

function 0x1daf(bytes varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0 + varg1;
    v1 = v2 = 0;
    v1 = v3 = 96 + v0;
    v1 = v4 = MEM[v0 + 55] >> 248;
    v1 = v5 = MEM[v0 + 76] >> 96;
    while (v1 < uint8(v1)) {
        v1 = v6 = MEM[v1];
        v1 = v7 = MEM[v1 + 32] >> 96;
        if (v7 <= address(v1)) {
        }
        MEM[MEM[64] + 132] = 0;
        MEM[MEM[64] + 164] = 0x400065a8177fae27;
        if (!(v1 - v1)) {
        }
        MEM[0] = MEM[0];
        v8, /* uint256 */ v1, /* uint256 */ v1 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(0, v1, v1, v6, v1, 1, 0xffff9a5889f795069a41a8a3, 0).gas(msg.gas);
        require(v8);
        if (v1 >= 0) {
        }
        v1 = v9 = 1 + ~v1;
        v1 = v10 = 7857;
        v1 = v11 = 52;
        v1 = _SafeAdd(v1, v11);
        if (v1 > 0) {
        }
        v1 = v1 + 1;
        require(v1 <= v1 + v1, Panic(17)); // arithmetic overflow or underflow
    }
    if (v1 >= 0) {
    }
    v1 = v12 = v1 + v1 + 32;
    v13 = ~v1 + 1;
    v1 = v14 = MEM[v1] >> 96;
    if (v13 >= v14) {
        if (!(address(MEM[v1 + v1 + 76] >> 96) - address(v1))) {
            v13 = v15 = 8011;
            v13 = v16 = _SafeSub(v13, v1);
            require(!((v1 < 0) & (v13 - v1 < v13) | (v13 - v1 > v13) & (v1 >= 0)), Panic(17)); // arithmetic overflow or underflow
        }
        MEM[0] = MEM[0];
        v17 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.withdraw(v1, v1, v13).gas(msg.gas);
        require(v17);
        return v1, v1;
    } else {
        v18 = 4 + MEM[64];
        v1 = v19 = 3767;
        v18 = v20 = 0x4cda(v18);
        revert(Error(0x8c379a000000000000000000000000000000000000000000000000000000000, v1, v6));
        MEM[v18] = 32;
        MEM[v18 + 32] = 21;
        MEM[v18 + 64] = 'amountOut < fixAmount';
    }
}

function amountsIn(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_amount < _amountsIn.length);
    return _amountsIn[_amount];
}

function 0x1f9f(uint256 varg0, uint256 varg1) private { 
    v0 = MEM[varg0 + (35 + varg1)] >> 96;
    v1 = v2 = MEM[varg0 + (75 + varg1)] >> 96;
    if (!v2) {
        v1 = this;
    }
    v3 = (MEM[varg0 + (32 + varg1)] >> 232 & 0x10) >> 4;
    if ((MEM[varg0 + (32 + varg1)] >> 232 & 0x8) >> 3 != 1) {
    }
    if (v3 != 1) {
    }
    v4 = 0;
    while (v4 < MEM[varg0]) {
        MEM[MEM[64] + (v4 + 196)] = MEM[varg0 + 32 + v4];
        v4 = v4 + 32;
    }
    MEM[MEM[64] + (MEM[varg0] + 196)] = varg1;
    v5 = (MEM[varg0 + (55 + varg1)] >> 96).swap(v1, v3, v0, ~v0 + 1, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, MEM[varg0] + 32).gas(msg.gas);
    require(v5);
    return ;
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    v0 = v1 = 503;
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    v2 = v3 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v2 = v4 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v5 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v6 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v7 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v8 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v9 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v2) {
        require(tx.origin == _destroy);
    }
    v0 = v10 = 2128;
    v11 = new bytes[](_data.length);
    CALLDATACOPY(v11.data, _data.data, _data.length);
    v11[_data.length] = 0;
    v12 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v12 = v13 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v12) {
        MEM[0] = MEM[0];
        v12 = v14 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v12) {
        MEM[0] = MEM[0];
        v12 = v15 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v12) {
        MEM[0] = MEM[0];
        v12 = v16 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v12) {
        MEM[0] = MEM[0];
        v12 = v17 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v12) {
        MEM[0] = MEM[0];
        v12 = v18 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v12) {
        require(tx.origin == _destroy);
    }
    v19 = _SafeAdd(MEM[v11 + v11.length], 63);
    0x1672(v11, v19);
    while (1) {
        // Unknown jump to Block 0x8500x218. Refer to 3-address code (TAC);
    }
}

function 0x2e6940e9(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = v2 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender) {
        v1 = v3 = this != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0x5f444704bce3eb657768037bfb269b68730418a5 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v8 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v9 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != msg.sender;
    }
    if (v1) {
        require(msg.sender == _destroy);
    }
    MEM[0] = MEM[0];
    v10 = 0x4c34(4 + MEM[64], this);
    v11 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf().gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v12 = 0x4c48(MEM[64], MEM[64] + RETURNDATASIZE());
    require(v12 <= this.balance + v12, Panic(17)); // arithmetic overflow or underflow
}

function 0x34c67085(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_3.length);
    return array_3[varg0];
}

function 0x599d0714(uint256 varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    0x46d5(varg1);
    MEM[0] = MEM[0];
    0x1bae(varg2, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, varg1);
}

function 0x27e6(uint256 varg0) private { 
    if (1 - (MEM[33 + (v0 + varg0)] >> 248)) {
        if (2 - uint24(MEM[33 + (v0 + varg0)] >> 248)) {
            v1 = varg0 + v0;
            v2 = MEM[v1 + 35] >> 96;
            v3 = v4 = MEM[v1 + 56] >> 96;
            v5 = v6 = MEM[v1 + 76] >> 96;
            v7 = v8 = 96 + v1;
            if (!v2) {
                v2 = v9 = this;
            }
            v5 = 0;
            while (v5 < uint8(MEM[v1 + 55] >> 248)) {
                v5 = v10 = MEM[v7 + 26] >> 96;
                v11 = 1;
                v12 = 0x1000276a4;
                if (v5 <= v10) {
                    break;
                } else {
                    v11 = v13 = 0;
                    v12 = v14 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                v15, /* uint256 */ v16, /* uint256 */ v17 = 0x4444c5dc75cb358380d2e3de08a90.swap(v5, v5, MEM[v7] >> 232, MEM[v7 + 3] >> 232, MEM[v7 + 6] >> 96, v11, ~v3 + 1, v12, 288, 0).gas(msg.gas);
                require(v15);
                if (!v11) {
                    break;
                } else {
                    v3 = v17 >> 128;
                }
                if (v11) {
                    break;
                } else {
                    v3 = v18 = 0xf3cd914c000000000000000000000000;
                }
                v7 = v7 + 46;
                v5 += 1;
            }
            if (v3 >= MEM[v7] >> 96) {
                MEM[MEM[64] + 68] = v3;
                if (!(v6 - v5)) {
                }
                v19 = 0x4444c5dc75cb358380d2e3de08a90.take(v5, v2, v3 - v4).gas(msg.gas);
                require(v19);
            } else {
                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
            }
        } else {
            v20 = MEM[varg0 + v0 + 35] >> 96;
            v21 = MEM[varg0 + v0 + 55] >> 96;
            v22 = 0x4444c5dc75cb358380d2e3de08a90.sync(v21).gas(msg.gas);
            require(v22);
            v23 = 0x1bdb(v21);
            if (v23) {
                if (this.balance >= v20) {
                    v24 = v25 = 17541;
                    if (address(v21)) {
                    }
                } else {
                    MEM[0] = MEM[0];
                    v24 = v26 = 17453;
                    require(v20 - this.balance <= v20, Panic(17)); // arithmetic overflow or underflow
                }
            } else {
                v27 = v21.transfer(0x4444c5dc75cb358380d2e3de08a90, v20).gas(msg.gas);
                require(v27);
            }
        }
    } else {
        v28 = new uint256[](MEM[varg0] + 32);
        MEM[v28.data] = v0;
        MCOPY(MEM[64] + 100, varg0 + 32, MEM[varg0]);
        v29 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v28).gas(msg.gas);
        require(v29);
    }
    return ;
}

function swapV2Call(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x46d5(_sender);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    v0 = v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v0) {
        require(tx.origin == _destroy);
    }
    v8 = new bytes[](_data.length);
    CALLDATACOPY(v8.data, _data.data, _data.length);
    v8[_data.length] = 0;
    v9 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v9 = v10 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v11 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v12 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v13 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v14 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v15 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v9) {
        require(tx.origin == _destroy);
    }
    v16 = MEM[v8 + MEM[v8 + v8.length] + 75] >> 96;
    if (!v16) {
        v16 = v17 = this;
    }
    if (this != address(v16)) {
        0x1bae(MEM[v8 + MEM[v8 + v8.length] + 35] >> 96, v16, MEM[96 + (v8 + MEM[v8 + v8.length])] >> 96);
    }
    v18 = _SafeAdd(MEM[v8 + v8.length], 84);
    0x1672(v8, v18);
}

function 0x28f7(uint256 varg0) private { 
    if (1 - (MEM[33 + (v0 + varg0)] >> 248)) {
        if (2 - uint24(MEM[33 + (v0 + varg0)] >> 248)) {
            v1 = varg0 + v0;
            v2 = MEM[v1 + 35] >> 96;
            if (!v2) {
                v2 = v3 = this;
            }
            v4 = varg0 + v0;
            v5 = MEM[v4 + 76] >> 96;
            if (0 >= uint8(MEM[v4 + 55] >> 248)) {
                if (0 >= 0) {
                }
                if (0 >= MEM[96 + v4] >> 96) {
                    if (address(MEM[varg0 + v0 + 76] >> 96) - address(v5)) {
                        MEM[0] = MEM[0];
                        v6 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.withdraw(v5, v2, 0).gas(msg.gas);
                        require(v6);
                    }
                } else {
                    MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                }
            } else {
                v5 = v7 = MEM[96 + v4 + 32] >> 96;
                if (v7 <= address(v5)) {
                }
                MEM[MEM[64] + 132] = 0;
                MEM[MEM[64] + 164] = 0x400065a8177fae27;
                if (!(v5 - v5)) {
                }
                MEM[0] = MEM[0];
                v8, /* uint256 */ v9, /* uint256 */ v9 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(0, v5, v5, MEM[96 + v4], MEM[v1 + 56] >> 96, 1, 0xffff9a5889f795069a41a8a3, 0).gas(msg.gas);
                require(v8);
                if (v9 >= 0) {
                }
            }
        } else {
            v10 = MEM[varg0 + v0 + 35] >> 96;
            v11 = MEM[varg0 + v0 + 55] >> 96;
            v12 = 0x1bdb(v11);
            if (!v12) {
                MEM[0] = MEM[0];
                v13 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.pay(v11, v10).gas(msg.gas);
                require(v13);
            } else if (this.balance >= v10) {
                MEM[0] = MEM[0];
                v14 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call().value(v10).gas(msg.gas);
                require(v14);
            } else {
                MEM[0] = MEM[0];
                require(v10 - this.balance <= v10, Panic(17)); // arithmetic overflow or underflow
            }
        }
    } else {
        MCOPY(MEM[64] + 36, varg0, MEM[varg0] + 32);
        MEM[0] = MEM[0];
        v15 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(v0).gas(msg.gas);
        require(v15);
    }
    return ;
}

function destroy() public nonPayable { 
    require(msg.sender == _destroy);
    selfdestruct(address(_destroy));
}

function 0x887d100f() public nonPayable { 
    return stor_5;
}

function 0x88b97778(uint256 varg0) public payable { 
    v0 = v1 = 734;
    v0 = v2 = msg.data.length;
    v3 = v4 = 4;
    v5 = v6 = 0;
    require(v2 - v4 >= 96);
    require(varg0 <= uint64.max);
    require(v2 > v4 + varg0 + 31);
    v7 = 0x4885(varg0.length);
    v3 = 0x4601(v7);
    MEM[v3] = varg0.length;
    v8 = v9 = v3 + 32;
    require(v4 + varg0 + (varg0.length << 5) + 32 <= v2);
    v10 = v11 = varg0.data;
    while (v10 < v4 + varg0 + (varg0.length << 5) + 32) {
        require(msg.data[v10] <= uint64.max);
        require(v2 - (v4 + varg0 + msg.data[v10]) - 32 >= 96);
        v12 = new struct(3);
        require(!((v12 + 96 < v12) | (v12 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v4 + varg0 + msg.data[v10] + 32] == bool(msg.data[v4 + varg0 + msg.data[v10] + 32]));
        v12.word0 = msg.data[v4 + varg0 + msg.data[v10] + 32];
        require(msg.data[v4 + varg0 + msg.data[v10] + 64] == uint128(msg.data[v4 + varg0 + msg.data[v10] + 64]));
        v12.word1 = msg.data[v4 + varg0 + msg.data[v10] + 64];
        require(msg.data[v4 + varg0 + msg.data[v10] + 96] <= uint64.max);
        v13 = v4 + varg0 + msg.data[v10] + msg.data[v4 + varg0 + msg.data[v10] + 96] + 32;
        require(v13 + 31 < v2);
        require(msg.data[v13] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v14 = 0x4601(32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v13] + 31));
        MEM[v14] = msg.data[v13];
        require(v13 + msg.data[v13] + 32 <= v2);
        CALLDATACOPY(v14 + 32, v13 + 32, msg.data[v13]);
        MEM[32 + (v14 + msg.data[v13])] = 0;
        v12.word2 = v14;
        MEM[v8] = v12;
        v8 += 32;
        v10 += 32;
    }
    v5 = v15 = 18941;
    v16 = v17 = 36;
    v16 = v18 = 0x48a7(v17);
    require(msg.data[v16] == uint8(msg.data[v16]));
    v19 = v20 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender) {
        v19 = v21 = this != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v22 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v23 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v24 = 0x5f444704bce3eb657768037bfb269b68730418a5 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v25 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v26 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v27 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != msg.sender;
    }
    if (v19) {
        require(msg.sender == _destroy);
    }
    MEM[0] = MEM[0];
    v28 = 0x4c34(4 + MEM[64], this);
    v29, /* uint256 */ v30 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf().gas(msg.gas);
    require(bool(v29), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(msg.data[v3 + 64] == uint64(msg.data[v3 + 64]));
    // Unknown jump to Block 0x2de. Refer to 3-address code (TAC);
}

function unlockCallback(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = varg0.data;
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    v1 = v2 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v1 = v3 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v8 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v1) {
        require(tx.origin == _destroy);
    }
    v9 = v10 = msg.data[varg2 + 103] >> 96;
    if (!v10) {
        v9 = v11 = this;
    }
    v12 = new bytes[](varg1 - 32);
    CALLDATACOPY(v12.data, 100, varg1 - 32);
    v13, v14 = 0x1c14(v12 + varg2 + 96, msg.data[varg2 + 123] >> 248, msg.data[varg2 + 144] >> 96, v9, msg.data[varg2 + 124] >> 96);
    v15 = _SafeMul(46, msg.data[varg2 + 123] >> 248);
    v16 = _SafeAdd(64, v15);
    require(20 <= v16 + 20, Panic(17)); // arithmetic overflow or underflow
}

function PRECISION() public nonPayable { 
    return 10 ** 18;
}

function locked(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v0) {
        require(tx.origin == _destroy);
    }
    v8 = new bytes[](varg2);
    CALLDATACOPY(v8.data, 100, varg2);
    v9 = v10 = MEM[varg1 + v8 + 35] >> 96;
    if (!v10) {
        v9 = v11 = this;
    }
    v12, v13 = 0x1daf(v8, varg1, v9, MEM[varg1 + v8 + 56] >> 96);
    v14 = _SafeMul(52, MEM[55 + (varg1 + v8)] >> 248);
    v15 = _SafeAdd(64, v14);
    v16 = _SafeAdd(20, v15);
    require(varg1 <= v16 + varg1, Panic(17)); // arithmetic overflow or underflow
}

function MAX_WAMPL_SUPPLY() public nonPayable { 
    return 10 ** 25;
}

function 0xd30f2acd(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_4.length);
    return array_4[varg0];
}

function 0xe49a0354(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_2.length);
    return array_2[varg0];
}

function receiveFlashLoan(address[] varg0) public nonPayable { 
    v0 = v1 = msg.data.length;
    v0 = v2 = 4;
    v0 = v3 = 0;
    v0 = v4 = 0;
    v0 = v5 = 0;
    v0 = v6 = 0;
    require(v1 - v2 >= 128);
    require(varg0 <= uint64.max);
    v0 = v7 = v2 + varg0;
    require(v1 > v7 + 31);
    v0 = v8 = varg0.length;
    v0 = v9 = 19250;
    v0 = v10 = 0x4885(v8);
    while (1) {
        v0 = v11 = 0x4601(v0);
        MEM[v0] = v0;
        v0 = v12 = v0 + 32;
        v0 = v13 = v0 + (v0 << 5) + 32;
        require(v13 <= v0);
        v0 = v14 = v0 + 32;
        while (v0 < v0) {
            v0 = v15 = msg.data[v0];
            v0 = v16 = 19309;
            0x46d5(v15);
            MEM[v0] = v15;
            v0 += 32;
            v0 = v0 + 32;
        }
        require(v15 == address(v15));
        v0 = v17 = msg.data[v0 + 32];
        require(v17 <= uint64.max);
        v0 = v18 = 19367;
        v0 = v0 + v17;
        v0 = v19 = 0x4a87(v0, v0);
        v0 = 0;
        require(v0 + 31 < v0);
        v0 = v20 = msg.data[v0];
        v0 = v21 = 19108;
        v0 = v22 = 0x4885(v20);
        v0 = v23 = msg.data[v0 + 64];
        require(v23 <= uint64.max);
        v0 = v24 = 19406;
        v0 = v0 + v23;
    }
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](v0.length - 32);
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v1 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v1) {
        require(tx.origin == _destroy);
    }
    v8 = _SafeAdd(MEM[v0 + v0.length], 63);
    0x1672(v0, v8);
}

function 0x3d93(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (varg5 != 1) {
    }
    MEM[MEM[64] + 68] = varg3;
    v0 = 0;
    if (varg1 != 0) {
        while (v0 < MEM[varg2]) {
            MEM[MEM[64] + (v0 + 164)] = MEM[varg2 + 32 + v0];
            v0 = v0 + 32;
        }
        MEM[MEM[64] + (MEM[varg2] + 164)] = varg0;
    }
    v1 = varg6.swap(0, varg4, 0, varg4, this, 128, 0, MEM[varg2] + 32).gas(msg.gas);
    require(v1);
    return ;
}

function 0x3e41(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    if (varg4 != 1) {
    }
    v0 = new uint256[](varg5);
    MEM[v0.data] = varg4;
    v1 = 0xba12222222228d8ba445958a75a0704d566bf2c8.swap(v0, this, 0, varg0, 0, uint256.max, 0, uint256.max, v2, v2, varg3, varg2, varg1, 192, 0).gas(msg.gas);
    require(v1);
    return MEM[0];
}

function 0x3f44(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 + varg1;
    v1 = v2 = MEM[v0 + 75] >> 96;
    if (!v2) {
        v1 = this;
    }
    return 0x1 & MEM[v0 + 32] >> 236, v1, MEM[v0 + 55] >> 96, MEM[v0 + 35] >> 96;
}

function withdrawWETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v0) {
        require(tx.origin == _destroy);
    }
    MEM[0] = MEM[0];
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v7 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(amount).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x4596() private { 
    v0 = new struct(2);
    v0.word0 = 0;
    v0.word1 = 0;
    return v0;
}

function 0x45ac(uint256 varg0, uint256 varg1, address varg2) private { 
    MEM[varg0] = varg2;
    MEM[varg0 + 32] = varg1;
    return 64 + varg0;
}

function 0x4601(uint256 varg0) private { 
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31);
    return MEM[64];
}

function 0x46d5(address varg0) private { 
    return ;
}

function 0x4885(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    return 32 + (varg0 << 5);
}

function 0x48a7(uint256 varg0) private { 
    require(msg.data[varg0] == uint8(msg.data[varg0]));
    return msg.data[varg0];
}

function 0x4a87(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = 0x4885(msg.data[varg0]);
    v1 = 0x4601(v0);
    MEM[v1] = msg.data[varg0];
    v2 = v3 = v1 + 32;
    require(varg0 + (msg.data[varg0] << 5) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (msg.data[varg0] << 5) + 32) {
        MEM[v2] = msg.data[v4];
        v2 += 32;
        v4 += 32;
    }
    return v1;
}

function 0x4c34(uint256 varg0, address varg1) private { 
    MEM[varg0] = varg1;
    return 32 + varg0;
}

function 0x4c48(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    return MEM[varg0];
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function 0x4cda(uint256 varg0) private { 
    MEM[varg0] = 32;
    MEM[varg0 + 32] = 21;
    MEM[varg0 + 64] = 'amountOut < fixAmount';
    return 96 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 - varg1;
    require(!((varg1 < 0) & (v0 < varg0) | (v0 > varg0) & (varg1 >= 0)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x4d7e(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 64);
    return MEM[varg0 + 32], MEM[varg0];
}

function 0x4dd5(uint256 varg0, address varg1, uint256 varg2) private { 
    MEM[varg0] = varg2;
    MEM[varg0 + 32] = varg1;
    return 64 + varg0;
}

function 0x4dec(uint256 varg0, bool varg1, bool varg2, uint256 varg3, address varg4) private { 
    MEM[varg0] = varg4;
    MEM[varg0 + 32] = varg3;
    MEM[varg0 + 64] = varg2;
    MEM[varg0 + 96] = varg1;
    return 128 + varg0;
}

function 0x4e4a(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    MEM[varg0] = varg2;
    require(varg1 < 3, Panic(33)); // failed convertion to enum type
    MEM[varg0 + 32] = varg1;
    return varg0 + 64;
}

function 0x4e65(uint8 varg0, uint8 varg1) private { 
    require(varg0 - varg1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x4ec0(uint96 varg0, uint96 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x4f1c(uint256 varg0, uint256 varg1) private { 
    MEM[varg1] = MEM[varg0];
    v0 = v1 = varg1 + 32;
    v2 = v3 = varg0 + 32;
    v4 = v5 = 0;
    while (v4 < MEM[varg0]) {
        MEM[v0] = address(MEM[MEM[v2]]);
        MEM[v0 + 32] = MEM[32 + MEM[v2]];
        v0 = v0 + 64;
        v2 = v2 + 32;
        v4 += 1;
    }
    return v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        v0 = 0x45ac(MEM[64], msg.value, msg.sender);
        emit Received();
        exit;
    } else if (0x759b8a6 == function_selector >> 224) {
        0x0759b8a6();
    } else if (0xab35bb0 == function_selector >> 224) {
        0x0ab35bb0();
    } else if (0x10d1e85c == function_selector >> 224) {
        uniswapV2Call(address,uint256,uint256,bytes);
    } else if (0x11605135 == function_selector >> 224) {
        amountsIn(uint256);
    } else {
        if (0x23a69e75 != function_selector >> 224) {
            if (0x2e6940e9 == function_selector >> 224) {
                0x2e6940e9();
            } else if (0x34c67085 == function_selector >> 224) {
                0x34c67085();
            } else if (0x3a1c453c != function_selector >> 224) {
                if (0x599d0714 == function_selector >> 224) {
                    0x599d0714();
                } else {
                    if (0x6c813d29 != function_selector >> 224) {
                        if (0x81279c7e != function_selector >> 224) {
                            if (0x83197ef0 == function_selector >> 224) {
                                destroy();
                            } else if (0x84800812 != function_selector >> 224) {
                                if (0x887d100f == function_selector >> 224) {
                                    0x887d100f();
                                } else if (0x88b97778 == function_selector >> 224) {
                                    0x88b97778();
                                } else if (0x91dd7346 == function_selector >> 224) {
                                    unlockCallback(bytes);
                                } else if (0xaaf5eb68 == function_selector >> 224) {
                                    PRECISION();
                                } else if (0xb2ff9f26 != function_selector >> 224) {
                                    if (0xb45a3c0e == function_selector >> 224) {
                                        locked(uint256);
                                    } else if (0xc3124f89 == function_selector >> 224) {
                                        MAX_WAMPL_SUPPLY();
                                    } else if (0xd30f2acd == function_selector >> 224) {
                                        0xd30f2acd();
                                    } else if (0xe49a0354 == function_selector >> 224) {
                                        0xe49a0354();
                                    } else if (0xf04f2707 == function_selector >> 224) {
                                        receiveFlashLoan(address[],uint256[],uint256[],bytes);
                                    } else if (0xf40a74a8 != function_selector >> 224) {
                                        if (0xfa461e33 == function_selector >> 224) {
                                            uniswapV3SwapCallback(int256,int256,bytes);
                                        } else if (0xfa483e72 != function_selector >> 224) {
                                            require(0xfc4dd333 == function_selector >> 224);
                                            withdrawWETH(uint256);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    swapV2Call(address,uint256,uint256,bytes);
                }
            }
        }
        swapCallback(int256,int256,bytes);
    }
}
