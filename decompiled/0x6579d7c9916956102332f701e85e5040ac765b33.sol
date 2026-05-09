// Decompiled by library.dedaub.com
// 2025.12.10 02:06 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 _unlockCallback; // TRANSIENT_STORAGE[0x0]



function 0xfae2ff63(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, int24 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    v0 = 0x38de(varg9);
    if (!v0) {
        v1 = v2 = 0xfffff & varg9 >> 88;
        v3, v4 = 0x3c89(varg0);
        v1 = v5 = 0x343a();
        v5.word0 = v4;
        v1 = v6 = v5 + 32;
        v5.word1 = v3;
        v5.word2 = address(varg0);
        v5.word3 = bool(varg1);
        v1 = v7 = 0xfffff & varg9 >> 108;
        v1 = v8 = 0x343a();
        v8.word0 = 0;
        v8.word1 = 0;
        v8.word2 = address(varg2);
        v8.word3 = bool(varg3);
        0x3aa8(v8);
        v9 = 0x3ac6(address(v8.word2));
        v8.word1 = uint128(v9);
        if (!varg3) {
            v10 = v11 = MEM[64];
            v12 = address(varg2).token0().gas(msg.gas);
            if (v12) {
                v13 = v14 = 0x1b023;
                v15 = v16 = 0x1b04a;
                v17 = v18 = 0;
                if (v12) {
                    v19 = v20 = 13298;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v11 + 32 > uint64.max) | (v11 + 32 < v11)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v11 + 32;
                        v21 = v22 = v11 + 32;
                    }
                }
            }
        } else {
            v10 = v23 = MEM[64];
            v24 = address(varg2).token1().gas(msg.gas);
            if (v24) {
                v13 = v25 = 0x1aacd;
                v15 = v26 = 0x1aaf4;
                v17 = v27 = 0;
                if (v24) {
                    v19 = v28 = 13210;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v23 + 32 > uint64.max) | (v23 + 32 < v23)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v23 + 32;
                        v21 = v29 = v23 + 32;
                    }
                }
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        if (!varg4) {
            if (address(v17) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v17 = v30 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v17 = v31 = 0;
        }
        if (!varg4) {
            if (address(v17) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v32 = v33 = 0x1afd3;
                v34, v35, v36 = v37, v17 = v38 = 0x332e(v17, 0x1afac, 0x1af81, 0x1af56);
                v39 = v40 = uint24(v34);
                v41 = v42 = 12513;
                v43 = v44 = 0x3449();
            } else {
                v32 = v45 = 0x1aeb0;
                MEM[0] = MEM[0];
                v46, v47, v36 = v48, v17 = v49 = 0x332e(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x1af2f, 0x1af04, 0x1aed9);
                v39 = v50 = uint24(v46);
                v41 = v51 = 12513;
                v43 = v52 = 0x3449();
            }
        } else {
            v36 = v53 = 0x1ab23;
            v32 = v54 = 0x1aba0;
            v55 = 0x349b(varg8);
            v39 = v56 = uint24(v55);
            v41 = v57 = 12513;
            v43 = v58 = 0x3449();
        }
        MEM[v43] = address(v17);
        MEM[v43 + 32] = address(v17);
        // Unknown jump to Block ['0x1ab23', '0x1aed9', '0x1af56']. Refer to 3-address code (TAC);
        MEM[v43 + 64] = uint24(v39);
        MEM[v43 + 96] = varg5;
        // Unknown jump to Block ['0x1aaf4', '0x1b04a']. Refer to 3-address code (TAC);
        MEM[v43 + 128] = address(varg6);
        v1 = v59 = 0x343a();
        MEM[v1] = 0;
        MEM[v1 + 32] = 0;
        MEM[v1 + 64] = v43;
        v1 = v60 = v1 + 96;
        MEM[v60] = bool(varg7);
        v1 = v61 = 12615;
        v62 = new struct(3);
        v62.word1 = keccak256(MEM[MEM[v313e_0x4 + 64]:MEM[v313e_0x4 + 64] + 160]);
        v62.word2 = 6;
        v62.word0 = 64;
        require(!((v62 + 96 > uint64.max) | (v62 + 96 < v62)), Panic(65)); // failed memory allocation (too much memory)
        v63 = v62.word0.length;
        v64 = v65 = keccak256(keccak256(MEM[MEM[v313e_0x4 + 64]:MEM[v313e_0x4 + 64] + 160]), 6);
        v66 = v67 = MEM[64];
        v68 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v65).gas(msg.gas);
        if (v68) {
            v1 = v69 = 32;
            v70 = v71 = 15225;
            v72 = v73 = 0;
            if (v68) {
                v74 = v75 = 15372;
                if (v69 <= RETURNDATASIZE()) {
                    require(!((v67 + 32 > uint64.max) | (v67 + 32 < v67)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v67 + 32;
                    v76 = v77 = v67 + v69;
                }
            }
            MEM[v1] = address(v72);
            require(v64 <= v64 + 3, Panic(17)); // arithmetic overflow or underflow
            v66 = v78 = MEM[64];
            v79 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v64 + 3).gas(msg.gas);
            if (v79) {
                v64 = v80 = uint128.max;
                v70 = v81 = 32;
                v1 = v82 = 0x1b32e;
                v72 = v83 = 0;
                if (v79) {
                    v74 = 15343;
                    if (v81 <= RETURNDATASIZE()) {
                        require(!((v78 + 32 > uint64.max) | (v78 + 32 < v78)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v78 + 32;
                        v76 = v84 = v78 + v81;
                    }
                }
            }
            MEM[v1 + v70] = uint128(v72 & v64);
            v85 = v86 = MEM[64];
            MEM[0] = MEM[0];
            v87 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v87) {
                v1 = v88 = 12746;
                v89 = v90 = 12685;
                v91 = v92 = 0;
                if (v87) {
                    v93 = v94 = 5404;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v86 + 32 > uint64.max) | (v86 + 32 < v86)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v86 + 32;
                        v95 = v96 = v86 + 32;
                    }
                } else {
                    v97 = v98 = this.balance;
                }
                require(!((v85 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v85 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v85)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v85 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v95 = v85 + RETURNDATASIZE();
                require(v95 - v85 >= 32);
                v91 = MEM[v85];
                // Unknown jump to Block ['0x151c0x1ce23', '0x51410x1ce23']. Refer to 3-address code (TAC);
                v97 = this.balance;
                v99 = _SafeAdd(v91, this.balance);
                v100 = _SafeSub(v99, v1);
                if (!v1) {
                    v101 = _SafeSub(v1, msg.gas);
                    v102 = 0x34f5(v101);
                    v103 = _SafeMul(v1, v102);
                    require(v103 < v100, Error(52));
                    v104 = 0x34f5(msg.gas);
                    require(v104 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x1b8760x1ce23', '0x1bfb90x1ce23']. Refer to 3-address code (TAC);
                } else {
                    v105 = _SafeSub(v1, msg.gas);
                    v106 = 0x3504(v105);
                    v107 = _SafeMul(v1, v106);
                    require(v107 < v100, Error(52));
                    v108 = _SafeSub(v100, v107);
                    require(v1 <= 1000);
                    v109 = _SafeMul(v108, v1);
                    v110 = _SafeSub(v108, v109 / 1000);
                    if (this.balance <= v109 / 1000) {
                        MEM[0] = MEM[0];
                        v111 = 0x34bd(v91);
                        0x5833(v111, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v109 / 1000) {
                        v112 = block.coinbase.call().value(v109 / 1000).gas(10000);
                    }
                    v113 = 0x3504(msg.gas);
                    require(v113 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x1b8760x1ce23', '0x1bfb90x1ce23']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
                v1 = v114 = v91 + v97;
                require(v91 <= v114, Panic(17)); // arithmetic overflow or underflow
                v1 = v115 = address(MEM[v1]);
                v1 = v116 = bool(MEM[v1 + 96]);
                v1 = v117 = address(MEM[v1]);
                v1 = v118 = bool(MEM[v1]);
                v1 = v119 = 0x1b606;
                v1 = v120 = 16536;
                v1 = v121 = 0x1b629;
                v1 = v122 = 0x1b64e;
                v1 = v123 = 16558;
                v1 = v124 = 0x1b673;
                if (0 == v1) {
                    v1 = v125 = 0x4ea4(MEM[v1], MEM[v1]);
                } else {
                    v1 = v126 = 0x4ea4(MEM[v1], MEM[v1]);
                    v127 = v128 = address(v115);
                }
                while (1) {
                    v129 = v127 * v127 % uint256.max - v127 * v127 - (v127 * v127 % uint256.max < v127 * v127);
                    // Unknown jump to Block ['0x1b6290x1ce23', '0x1b64e0x1ce23']. Refer to 3-address code (TAC);
                    v130 = v127 * v127 < ((v129 * uint256.max % (uint96.max + 1) + v129) % (uint96.max + 1) + v127 * v127) % (uint96.max + 1);
                    v1 = v131 = v127 * v127 - ((v129 * uint256.max % (uint96.max + 1) + v129) % (uint96.max + 1) + v127 * v127) % (uint96.max + 1) >> 96 | v129 - v130 << 160;
                    if (v129 == v130) {
                        // Unknown jump to Block ['0x40980x1ce23', '0x40ae0x1ce23']. Refer to 3-address code (TAC);
                    } else {
                        // Unknown jump to Block ['0x40980x1ce23', '0x40ae0x1ce23']. Refer to 3-address code (TAC);
                    }
                    if (!v1) {
                        v1 = v132 = _SafeDiv(uint192.max + 1, v131);
                        // Unknown jump to Block 0x3d540x1ce23. Refer to 3-address code (TAC);
                    } else {
                        v127 = v133 = address(v1);
                    }
                    // Unknown jump to Block 0x517a0x1ce23. Refer to 3-address code (TAC);
                }
                if (!v1) {
                    v1 = v134 = _SafeDiv(uint192.max + 1, v131);
                    v1 = v135 = uint96.max + 1;
                } else {
                    v1 = v136 = uint96.max + 1;
                }
                while (1) {
                    v137 = v1 * v1;
                    v138 = v1 * v1 % uint256.max;
                    if (uint96.max + 1 <= v138 - v137 - (v138 < v137)) {
                        break;
                    } else {
                        if (v138 - v137 == v138 < v137) {
                            v1 = v137 >> 96;
                            // Unknown jump to Block ['0x1b6060x1ce23', '0x1b6730x1ce23']. Refer to 3-address code (TAC);
                        } else {
                            v139 = v1 * v1 % (uint96.max + 1);
                            v1 = v137 - v139 >> 96 | v138 - v137 - (v138 < v137) - (v139 > v137) << 160;
                            // Unknown jump to Block ['0x1b6060x1ce23', '0x1b6730x1ce23']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v1 <= v1) {
                    v1 = v140 = 0x1ad0e;
                    MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                    if (bool(!MEM[v1 + 96])) {
                        MEM[v1] = MEM[v1];
                        MEM[v1] = MEM[v1];
                    }
                    MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                    if (bool(MEM[v1 + 96])) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                        MEM[v1] = bool(!MEM[v1]);
                        v141 = v142 = bool(MEM[v1]);
                    } else {
                        v143 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v144 = _SafeDiv(v143, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v144);
                        MEM[v1] = bool(!MEM[v1]);
                        v141 = bool(MEM[v1]);
                    }
                    if (bool(v141)) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                    } else {
                        v145 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v146 = _SafeDiv(v145, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v146);
                    }
                    v147 = v1 * (v1 * v1) * address(MEM[v1]);
                    v148 = 0x59ac(MEM[v1] * MEM[v1 + 32]);
                    v149 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) + 10000 * (MEM[v1] << 48);
                    v150 = 0x57ed((v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) % uint256.max - (v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) - ((v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) % uint256.max < (v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1])) + ((v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) % uint256.max - (v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) - ((v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) % uint256.max < (v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32])) + (v147 * (MEM[v1 + 32] * address(MEM[v1])) % uint256.max - v147 * (MEM[v1 + 32] * address(MEM[v1])) - (v147 * (MEM[v1 + 32] * address(MEM[v1])) % uint256.max < v147 * (MEM[v1 + 32] * address(MEM[v1]))) - (10 ** 8 * (v1 * v148) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v1 * v148) << 96) - (10 ** 8 * (v1 * v148) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v1 * v148) << 96)) - (v147 * (MEM[v1 + 32] * address(MEM[v1])) < 10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * address(MEM[v1]), (v147 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v148) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]), (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1 % uint256.max - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1 - ((v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1 % uint256.max < (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 % uint256.max - v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 % uint256.max < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max - v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])))) * v149 + (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144) % uint256.max - uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144) - (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144) % uint256.max < uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144))) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144) < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149)) * v1, (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v149 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (MEM[v1] << 144)) * v1);
                    v151 = 0x34ad(v1);
                    v152 = _SafeDiv(MEM[v1] * v150 * 10000, (MEM[v1 + 32] - v150) * (10000 - v151));
                    v153, v154, v155, v156, v157, v158 = 0x4d54(bool(MEM[v1 + 96]), 19802, 19809, v1 + 64, address(MEM[v1 + 64]), v1);
                    if (bool(!MEM[v1 + 96])) {
                        MEM[0] = MEM[0];
                        v159, v160, v161, v162, v163, v164, v165 = v166, v167, v168 = v169, v170, v171 = v172 = 0x4da3(bool(MEM[v157 + 96]), MEM[v157 + 64], bool(MEM[v1 + 96]), 0x1c172, v150, 0x1c137, address(MEM[v155]), 17114, v156, 0, v158, address(MEM[v1 + 64]), v153);
                        MEM[v162] = v159 - v160 - 32;
                        require(!((v162 + (v159 - v160 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v162 + (v159 - v160 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v162)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v162 + (v159 - v160 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v173 = v174 = MEM[v172];
                        MEM[v174] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v174 + 4] = address(v164);
                        MEM[v174 + 4 + 32] = bool(v167);
                        MEM[v174 + 4 + 64] = v170;
                        MEM[v174 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                        MEM[v174 + 4 + 128] = 160;
                        MEM[v174 + 4 + 160] = MEM[v162];
                        MCOPY(v174 + 4 + 160 + 32, 32 + v162, MEM[v162]);
                        MEM[32 + (MEM[v162] + (v174 + 4 + 160))] = 0;
                        v175 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v162]) + (v174 + 4 + 160) + 32;
                        // Unknown jump to Block 0x42da0x1ce23. Refer to 3-address code (TAC);
                    } else {
                        v176, v177, v178, v179, v180, v181, v165 = v182, v183, v168 = v184, v185, v171 = v186 = 0x4da3(bool(MEM[v157 + 96]), MEM[v157 + 64], bool(MEM[v1 + 96]), 0x1c0b2, v150, 0x1c077, address(MEM[v155]), 17114, v156, 0, v158, address(MEM[v1 + 64]), v153);
                        MEM[v179] = v176 - v177 - 32;
                        require(!((v179 + (v176 - v177 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v179 + (v176 - v177 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v179)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v179 + (v176 - v177 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v173 = MEM[v186];
                        MEM[v173] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v173 + 4] = address(v181);
                        MEM[v173 + 4 + 32] = bool(v183);
                        MEM[v173 + 4 + 64] = v185;
                        MEM[v173 + 4 + 96] = address(0x1000276a4);
                        MEM[v173 + 4 + 128] = 160;
                        MEM[v173 + 4 + 160] = MEM[v179];
                        MCOPY(v173 + 4 + 160 + 32, 32 + v179, MEM[v179]);
                        MEM[32 + (MEM[v179] + (v173 + 4 + 160))] = 0;
                        v175 = v187 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v179]) + (v173 + 4 + 160) + 32;
                    }
                    v188 = v168.call(MEM[v1ce230x1c079:v1ce230x1c079 + v1c0dV0x3875V0x1c1370x1ce23 - v1ce230x1c079], MEM[v1ce230x1c079:v1ce230x1c079 + v42da0x1ce23_0x6]).value(v165).gas(msg.gas);
                    if (v188) {
                        v1 = v189 = 0x1b876;
                        if (v188) {
                            if (64 > RETURNDATASIZE()) {
                                require(!((v173 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v173 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v173)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v173 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v190 = v173 + RETURNDATASIZE();
                            } else {
                                require(!((v173 + 64 > uint64.max) | (v173 + 64 < v173)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v173 + 64;
                                v190 = v191 = v173 + 64;
                            }
                            require(v190 - v173 >= 64);
                        }
                    }
                } else {
                    v1 = v192 = 0x1abec;
                    if (bool(!MEM[v1 + 96])) {
                        MEM[v1] = MEM[v1];
                        MEM[v1] = MEM[v1];
                    }
                    if (bool(MEM[v1 + 96])) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                        v193 = v194 = bool(MEM[v1]);
                    } else {
                        v195 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v196 = _SafeDiv(v195, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v196);
                        v193 = bool(MEM[v1]);
                    }
                    if (bool(v193)) {
                        MEM[v1] = address(address(MEM[v1]) >> 48);
                    } else {
                        v197 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v198 = _SafeDiv(v197, address(MEM[v1]) >> 48);
                        MEM[v1] = address(v198);
                    }
                    v199 = v1 * v1 * v1 * address(MEM[v1]);
                    v200 = 0x59ac(MEM[v1] * MEM[v1 + 32]);
                    v201 = uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]));
                    v202 = uint128(MEM[v1 + 32]) * v1 * v1;
                    v203 = 0x57ed((v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201 * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max - (v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201 * address(address(MEM[v1]) * address(MEM[v1])) - ((v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201 * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max < (v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201 * address(address(MEM[v1]) * address(MEM[v1]))) + ((v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201 % uint256.max - (v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201 - ((v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201 % uint256.max < (v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201) + (v199 * (address(MEM[v1]) * MEM[v1 + 32]) % uint256.max - v199 * (address(MEM[v1]) * MEM[v1 + 32]) - (v199 * (address(MEM[v1]) * MEM[v1 + 32]) % uint256.max < v199 * (address(MEM[v1]) * MEM[v1 + 32])) - (v200 * v1 * 0x5f5e100000000000000000000000000 % uint256.max - v200 * v1 * 0x5f5e100000000000000000000000000 - (v200 * v1 * 0x5f5e100000000000000000000000000 % uint256.max < v200 * v1 * 0x5f5e100000000000000000000000000) + (v200 * v1 % uint256.max - v200 * v1 - (v200 * v1 % uint256.max < v200 * v1)) * 0x5f5e100000000000000000000000000) - (v199 * (address(MEM[v1]) * MEM[v1 + 32]) < v200 * v1 * 0x5f5e100000000000000000000000000)) * v201) * address(address(MEM[v1]) * address(MEM[v1])), (v199 * (address(MEM[v1]) * MEM[v1 + 32]) - v200 * v1 * 0x5f5e100000000000000000000000000) * v201 * address(address(MEM[v1]) * address(MEM[v1])), (v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * v201 << 144)) * (v1 << 48) % uint256.max - (v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * v201 << 144)) * (v1 << 48) - ((v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * v201 << 144)) * (v1 << 48) % uint256.max < (v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * v201 << 144)) * (v1 << 48)) + (v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) % uint256.max - v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) - (v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) % uint256.max < v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32])) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) % uint256.max - uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) - (uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) % uint256.max < uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96))) + (v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) < v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32])) + (10 ** 12 * v201 * (uint144.max + 1) % uint256.max - (10 ** 12 * v201 << 144) - (10 ** 12 * v201 * (uint144.max + 1) % uint256.max < 10 ** 12 * v201 << 144) + (10 ** 12 * v201 % uint256.max - 10 ** 12 * v201 - (10 ** 12 * v201 % uint256.max < 10 ** 12 * v201) << 144)) + (v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * v201 << 144) < v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96))) * (v1 << 48), (v202 * (address(address(address(MEM[v1]) ** 2) * address(MEM[v1])) * MEM[v1 + 32]) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(MEM[v1]) * MEM[v1 + 32] << 96) + (10 ** 12 * v201 << 144)) * (v1 << 48));
                    v204 = MEM[v1 + 64];
                    v205 = 0x34ad(v1);
                    v206 = new struct(16);
                    v206.word1 = 16;
                    v206.word2 = v203;
                    v206.word3 = address(MEM[v204]);
                    v206.word4 = address(MEM[v204 + 32]);
                    v206.word5 = uint24(MEM[v204 + 64]);
                    v206.word6 = int24(MEM[v204 + 96]);
                    v206.word7 = address(MEM[128 + v204]);
                    v206.word8 = bool(MEM[v1 + 96]);
                    v206.word9 = address(MEM[v1 + 64]);
                    v206.word10 = bool(MEM[v1 + 96]);
                    v206.word11 = address(MEM[v1 + 64]);
                    v206.word12 = MEM[v1];
                    v206.word13 = MEM[v1 + 32];
                    v206.word14 = v205;
                    v206.word15 = bool(MEM[v1 + 96]);
                    v206.word0 = 480;
                    require(!((v206 + 512 > uint64.max) | (v206 + 512 < v206)), Panic(65)); // failed memory allocation (too much memory)
                    v207 = new bytes[](v206.word0.length);
                    MCOPY(v207.data, v206.data, v206.word0.length);
                    v207[v206.word0.length] = 0;
                    v208 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v207, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                    if (v208) {
                        v1 = v209 = 0x1bfb9;
                        if (v208) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                            require(v210.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v211 = new bytes[](v210.length);
                            require(!((v211 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v210.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v211 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v210.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v211)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v210.length + 32 <= MEM[64] + RETURNDATASIZE());
                            MCOPY(v211.data, v210.data, v210.length);
                            v211[v210.length] = 0;
                        }
                    }
                }
                v1 = v212 = 0x3ff & v1 >> 50;
                v1 = uint24(v1 >> 60);
                v1 = 0x3ffffffffffff & v1;
                v85 = MEM[64];
                MEM[0] = MEM[0];
                v213 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v213) {
                    v91 = v214 = 0;
                    if (v213) {
                        v89 = v215 = 20485;
                        v93 = v216 = 20801;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v85 + 32 > uint64.max) | (v85 + 32 < v85)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v85 + 32;
                            v95 = v217 = v85 + 32;
                        }
                    }
                }
                // Unknown jump to Block 0x4f930x1ce23. Refer to 3-address code (TAC);
                revert();
                v127 = address(v1);
                // Unknown jump to Block 0x51660x1ce23. Refer to 3-address code (TAC);
            }
            require(!((v66 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v66 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v66)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v66 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v76 = v218 = v66 + RETURNDATASIZE();
            require(v76 - v66 >= 32);
            v72 = v219 = MEM[v66];
            // Unknown jump to Block ['0x3befB0x313e', '0x3c0cB0x313e']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3bc8B0x313e. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        MEM[v43 + 128] = address(varg6);
        v1 = v220 = 0x343a();
        MEM[v43 + 64] = uint24(v39);
        MEM[v43 + 96] = varg5;
        // Unknown jump to Block ['0x1aaf4', '0x1b04a']. Refer to 3-address code (TAC);
        MEM[v43 + 64] = uint24(v39);
        MEM[v43 + 96] = varg5;
        // Unknown jump to Block ['0x1aaf4', '0x1b04a']. Refer to 3-address code (TAC);
        require(!((v10 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v10 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v21 = v10 + RETURNDATASIZE();
        require(v21 - v10 >= 32);
        v17 = MEM[v10];
        require(!(address(v17) - v17));
        // Unknown jump to Block ['0x339a', '0x33f2']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x309a. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x309c. Refer to 3-address code (TAC);
    } else {
        exit;
    }
}

function receive() public payable { 
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_unlockCallback);
    if (msg.data[4 + data]) {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
        require(!(data.word1 - uint8(data.word1)));
        require(uint8(data.word1));
        require(uint8(data.word1) - 1);
        require(uint8(data.word1) - 2);
        require(uint8(data.word1) - 3);
        require(uint8(data.word1) - 4);
        require(uint8(data.word1) - 5);
        require(uint8(data.word1) - 6);
        if (uint8(data.word1) - 7) {
            require(uint8(data.word1) - 8);
            if (uint8(data.word1) - 9) {
                if (uint8(data.word1) - 10) {
                    require(uint8(data.word1) - 11);
                    if (uint8(data.word1) - 12) {
                        require(uint8(data.word1) - 13);
                        require(uint8(data.word1) - 14);
                        if (uint8(data.word1) - 15) {
                            if (uint8(data.word1) - 16) {
                                if (uint8(data.word1) - 17) {
                                    require(uint8(data.word1) - 18);
                                    require(uint8(data.word1) - 19);
                                    require(uint8(data.word1) - 20);
                                    if (uint8(data.word1) - 21) {
                                        require(uint8(data.word1) - 22);
                                        require(!(23 - uint8(data.word1)), Error(0x3f3f3f));
                                        v1, v2 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                                        require(v2 + v1 - v2 >= 288);
                                        v3 = msg.data[v2];
                                        require(!(address(msg.data[v2 + 32]) - msg.data[v2 + 32]));
                                        require(!(bool(msg.data[v2 + 64]) - msg.data[v2 + 64]));
                                        require(v2 + v1 - (v2 + 96) >= 160);
                                        v4 = new struct(5);
                                        require(!((v4 + 160 > uint64.max) | (v4 + 160 < v4)), Panic(65)); // failed memory allocation (too much memory)
                                        require(!(address(msg.data[v2 + 96]) - msg.data[v2 + 96]));
                                        v4.word0 = msg.data[v2 + 96];
                                        require(!(address(msg.data[v2 + 96 + 32]) - msg.data[v2 + 96 + 32]));
                                        v4.word1 = msg.data[v2 + 96 + 32];
                                        require(!(msg.data[v2 + 96 + 64] - uint24(msg.data[v2 + 96 + 64])));
                                        v4.word2 = msg.data[v2 + 96 + 64];
                                        require(!(msg.data[v2 + 96 + 96] - int24(msg.data[v2 + 96 + 96])));
                                        v4.word3 = msg.data[v2 + 96 + 96];
                                        require(!(address(msg.data[v2 + 96 + 128]) - msg.data[v2 + 96 + 128]));
                                        v4.word4 = msg.data[v2 + 96 + 128];
                                        require(!(bool(msg.data[v2 + (uint8.max + 1)]) - msg.data[v2 + (uint8.max + 1)]));
                                        if (msg.data[v2 + 64]) {
                                            v3 = v5 = 0;
                                        }
                                        if (!msg.data[v2 + 64]) {
                                            v3 = v6 = 0;
                                        }
                                        require((address(msg.data[v2 + 32])).code.size);
                                        v7 = new uint256[](0);
                                        v8 = address(msg.data[v2 + 32]).swap(v3, v3, address(this), v7).gas(msg.gas);
                                        if (v8) {
                                            v9 = v10 = 3922;
                                            v11 = v12 = 0;
                                            v13 = v14 = 3896;
                                            if (v8) {
                                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                require(0 >= 0);
                                            }
                                            if (v12 != amount0Delta > v12) {
                                            }
                                            v15 = v16 = MEM[64];
                                            MEM[v16 + 32] = 18;
                                            MEM[v16 + 32 + 32] = v3;
                                            MEM[v16 + 32 + 64] = msg.sender;
                                            MEM[v16 + 32 + 96] = v17;
                                            MEM[v16 + 32 + 128] = address(v4.word0);
                                            MEM[v16 + 32 + 128 + 32] = address(v4.word1);
                                            MEM[v16 + 32 + 128 + 64] = uint24(v4.word2);
                                            MEM[v16 + 32 + 128 + 96] = int24(v4.word3);
                                            MEM[v16 + 32 + 128 + 128] = address(v4.word4);
                                            MEM[v16 + 32 + 288] = bool(msg.data[v2 + (uint8.max + 1)]);
                                            v18 = v19 = 352;
                                            MEM[v16] = 320;
                                        }
                                    } else {
                                        v20 = v21 = 3385;
                                        v22, v23 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                                        require(v23 + v22 - v23 >= 192);
                                        require(!(address(msg.data[v23]) - msg.data[v23]));
                                        v24 = msg.data[v23 + 32];
                                        v25 = msg.data[v23 + 64];
                                        v26 = msg.data[v23 + 96];
                                        require(!(v26 - uint24(v26)));
                                        v27 = msg.data[v23 + 128];
                                        require(!(bool(v27) - v27));
                                        v28 = msg.data[v23 + 160];
                                        require(!(bool(v28) - v28));
                                        v29 = v30 = address(msg.data[v23]);
                                        if (amount0Delta > 0) {
                                            v31 = v32 = uint24(v26);
                                        }
                                    }
                                } else {
                                    v33, v34 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                                    require(v34 + v33 - v34 >= uint8.max + 1);
                                    v35 = msg.data[v34];
                                    require(!(address(msg.data[v34 + 32]) - msg.data[v34 + 32]));
                                    require(!(bool(msg.data[v34 + 64]) - msg.data[v34 + 64]));
                                    require(!(address(msg.data[v34 + 96]) - msg.data[v34 + 96]));
                                    v24 = v36 = msg.data[v34 + 128];
                                    v25 = v37 = msg.data[v34 + 160];
                                    require(!(msg.data[v34 + 192] - uint24(msg.data[v34 + 192])));
                                    v27 = v38 = msg.data[v34 + 224];
                                    require(!(bool(v38) - v38));
                                    v29 = v39 = address(msg.data[v34 + 96]);
                                    if (amount0Delta > 0) {
                                    }
                                    if (msg.data[v34 + 64]) {
                                        v35 = v40 = 0;
                                    }
                                    if (!msg.data[v34 + 64]) {
                                        v35 = v41 = 0;
                                    }
                                    require((address(msg.data[v34 + 32])).code.size);
                                    v42 = new uint256[](0);
                                    v43 = address(msg.data[v34 + 32]).swap(v35, v35, address(this), v42).gas(msg.gas);
                                    if (v43) {
                                        v20 = v44 = 0x18c5d;
                                        v28 = v45 = 2978;
                                        if (v43) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(0 >= 0);
                                        }
                                        v31 = v46 = uint24(msg.data[v34 + 192]);
                                    }
                                }
                            } else {
                                v20 = v47 = 0x18c38;
                                v28 = v48 = 2978;
                                v49, v50 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                                require(v50 + v49 - v50 >= 160);
                                require(!(address(msg.data[v50]) - msg.data[v50]));
                                v24 = v51 = msg.data[v50 + 32];
                                v25 = v52 = msg.data[v50 + 64];
                                v26 = v53 = msg.data[v50 + 96];
                                require(!(v53 - uint24(v53)));
                                v27 = v54 = msg.data[v50 + 128];
                                require(!(bool(v54) - v54));
                                v29 = v55 = address(msg.data[v50]);
                            }
                            v31 = v56 = uint24(v26);
                            v57 = _SafeDiv(v24 * v17 * 10000, (v25 - v17) * (10000 - v31));
                            v17 = v58 = v57 + 1;
                            // Unknown jump to Block ['0x18c38', '0x18c5d', '0xd39']. Refer to 3-address code (TAC);
                            if (v28) {
                                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                                MEM[0] = MEM[0];
                                v59 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v58).gas(msg.gas);
                                if (v59) {
                                    if (v59) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(0 >= 0);
                                    }
                                }
                            }
                            0x4670(v29, v58);
                            if (v27) {
                                v17 = v60 = 0;
                            }
                            if (!v27) {
                                v17 = v61 = 0;
                            }
                            require(v29.code.size);
                            v62 = new uint256[](0);
                            v63 = v29.swap(v17, v17, msg.sender, v62).gas(msg.gas);
                            if (v63) {
                                if (v63) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(0 >= 0);
                                }
                                v64, /* uint256 */ v65 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                if (v64) {
                                    if (v64) {
                                        v66 = v67 = 32;
                                        if (32 > RETURNDATASIZE()) {
                                            v66 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v66 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v66 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v66 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v66 - MEM[64] >= 32);
                                        exit;
                                    } else {
                                        exit;
                                    }
                                }
                            }
                            // Unknown jump to Block 0xb95. Refer to 3-address code (TAC);
                        } else {
                            v68 = v69 = 64;
                            v11 = v70 = 0;
                            v13 = v71 = 0x18bcc;
                            v72, v73 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                            require(v73 + v72 - v73 >= 224);
                            v74 = msg.data[v73];
                            require(!(address(v74) - v74));
                            v15 = msg.data[v73 + 32];
                            require(!(bool(v15) - v15));
                            require(!(address(msg.data[v73 + 64]) - msg.data[v73 + 64]));
                            require(!(msg.data[v73 + 160] - uint24(msg.data[v73 + 160])));
                            require(!(bool(msg.data[v73 + 192]) - msg.data[v73 + 192]));
                            if (v70 == amount0Delta > v70) {
                                v9 = v75 = 0x3865(amount1Delta);
                            } else {
                                v9 = v76 = 0x3865(amount0Delta);
                            }
                            if (v70 == v15) {
                                MEM[0] = MEM[0];
                                v77 = v78 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            } else {
                                v77 = v79 = 0x1000276a4;
                            }
                            v15 = v80 = MEM[v69];
                            MEM[v80 + 32] = 16;
                            MEM[v80 + 64] = address(msg.data[v73 + 64]);
                            MEM[v80 + 96] = msg.data[v73 + 96];
                            MEM[v80 + 128] = msg.data[v73 + 128];
                            MEM[v80 + 160] = uint24(msg.data[v73 + 160]);
                            MEM[v80 + 192] = bool(msg.data[v73 + 192]);
                            v18 = v81 = 224;
                            MEM[v80] = 192;
                        }
                    } else {
                        v82, v83 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                        require(v83 + v82 - v83 >= 192);
                        require(!(address(msg.data[v83 + 32]) - msg.data[v83 + 32]));
                        v84 = msg.data[v83 + 64];
                        require(!(bool(msg.data[v83 + 96]) - msg.data[v83 + 96]));
                        require(!(address(msg.data[v83 + 128]) - msg.data[v83 + 128]));
                        require(!(bool(msg.data[v83 + 160]) - msg.data[v83 + 160]));
                        v29 = v85 = address(msg.data[v83 + 128]);
                        0x4670(address(msg.data[v83 + 32]), msg.data[v83]);
                        if (msg.data[v83 + 96]) {
                            v84 = v86 = 0;
                        }
                        if (!msg.data[v83 + 96]) {
                            v84 = v87 = 0;
                        }
                        require((address(msg.data[v83 + 32])).code.size);
                        v88 = new uint256[](0);
                        v89 = address(msg.data[v83 + 32]).swap(v84, v84, address(v85), v88).gas(msg.gas);
                        if (v89) {
                            if (v89) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= 0);
                            }
                            if (!msg.data[v83 + 160]) {
                                if (amount0Delta > 0) {
                                }
                            } else {
                                v17 = v90 = 0;
                            }
                            if (!msg.data[v83 + 160]) {
                                v17 = v91 = 0;
                            } else if (amount0Delta > 0) {
                            }
                        }
                    }
                } else {
                    v92, v93 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                    require(v93 + v92 - v93 >= 96);
                    require(!(address(msg.data[v93]) - msg.data[v93]));
                    v94 = msg.data[v93 + 32];
                    require(!(bool(msg.data[v93 + 64]) - msg.data[v93 + 64]));
                    if (msg.data[v93 + 64]) {
                        v94 = v95 = 0;
                    }
                    if (!msg.data[v93 + 64]) {
                        v94 = v96 = 0;
                    }
                    require((address(msg.data[v93])).code.size);
                    v97 = new uint256[](0);
                    v98 = address(msg.data[v93]).swap(v94, v94, address(this), v97).gas(msg.gas);
                    if (v98) {
                        v28 = v99 = 0x18b1b;
                        if (v98) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                        }
                        if (amount0Delta > 0) {
                        }
                        v29 = v100 = msg.sender;
                    }
                }
            } else {
                v68 = v101 = 64;
                v11 = v102 = 0;
                v13 = v103 = 0x18a3a;
                v104, v105 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
                require(v105 + v104 - v105 >= 160);
                v74 = v106 = msg.data[v105];
                require(!(address(v106) - v106));
                v15 = v107 = msg.data[v105 + 32];
                require(!(bool(v107) - v107));
                require(!(address(msg.data[v105 + 64]) - msg.data[v105 + 64]));
                require(!(bool(msg.data[v105 + 128]) - msg.data[v105 + 128]));
                if (v102 == amount0Delta > v102) {
                    v9 = v108 = 0x3865(amount1Delta);
                } else {
                    v9 = v109 = 0x3865(amount0Delta);
                }
                if (v102 == v107) {
                    MEM[0] = MEM[0];
                    v77 = v110 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    v15 = v111 = MEM[v101];
                    MEM[v111 + 32] = 10;
                    MEM[v111 + 64] = address(msg.data[v105 + 64]);
                    MEM[v111 + 96] = msg.data[v105 + 96];
                    MEM[v111 + 128] = bool(msg.data[v105 + 128]);
                    v18 = v112 = 160;
                    MEM[v111] = 128;
                } else {
                    v77 = v113 = 0x1000276a4;
                    v15 = v114 = MEM[v101];
                    MEM[v114 + 32] = 10;
                    MEM[v114 + 64] = address(msg.data[v105 + 64]);
                    MEM[v114 + 96] = msg.data[v105 + 96];
                    MEM[v114 + 128] = bool(msg.data[v105 + 128]);
                    v18 = v115 = 160;
                    MEM[v114] = 128;
                }
            }
            require(!((v15 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
            // Unknown jump to Block ['0x18a3a', '0x18bcc', '0xf38']. Refer to 3-address code (TAC);
            v116 = new uint256[](MEM[v15]);
            MCOPY(v116.data, 32 + v15, MEM[v15]);
            MEM[32 + (MEM[v15] + v116)] = 0;
            v117 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v116, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).value(v11).gas(msg.gas);
            if (v117) {
                if (v117) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v118.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v119 = new bytes[](v118.length);
                    require(!((v119 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v118.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v119 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v118.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v119)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v118.length + 32 <= MEM[64] + RETURNDATASIZE());
                    MCOPY(v119.data, v118.data, v118.length);
                    v119[v118.length] = 0;
                    exit;
                } else {
                    exit;
                }
            }
            v120 = v121 = MEM[v68];
            MEM[v121] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v121 + 4] = msg.sender;
            MEM[v121 + 4 + 32] = bool(v15);
            MEM[v121 + 4 + 64] = v9;
            MEM[v121 + 4 + 96] = address(v77);
            MEM[v121 + 4 + 128] = 160;
            MEM[v121 + 4 + 160] = MEM[v15];
            MCOPY(v121 + 4 + 160 + 32, 32 + v15, MEM[v15]);
            MEM[32 + (MEM[v15] + (v121 + 4 + 160))] = 0;
            v122 = v123 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v15]) + (v121 + 4 + 160) + 32;
            v124 = address(v74).call(MEM[v18ac70x1d0_0x1:v18ac70x1d0_0x1 + v1c0dV0x3875V0x18bcc - v18ac70x1d0_0x1], MEM[v18ac70x1d0_0x1:v18ac70x1d0_0x1 + v18bcc_0x5]).value(v11).gas(msg.gas);
            if (v124) {
                if (v124) {
                    v125 = v126 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v125 = RETURNDATASIZE();
                    }
                    require(!((v120 + (v125 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v120 + (v125 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v120)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v120 + (v125 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(v120 + v125 - v120 >= 64);
                    exit;
                } else {
                    exit;
                }
            }
            v120 = v127 = MEM[v68];
            MEM[v127] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v127 + 4] = msg.sender;
            MEM[v127 + 4 + 32] = bool(v15);
            MEM[v127 + 4 + 64] = v9;
            MEM[v127 + 4 + 96] = address(v77);
            MEM[v127 + 4 + 128] = 160;
            MEM[v127 + 4 + 160] = MEM[v15];
            MCOPY(v127 + 4 + 160 + 32, 32 + v15, MEM[v15]);
            MEM[32 + (MEM[v15] + (v127 + 4 + 160))] = 0;
            v122 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v15]) + (v127 + 4 + 160) + 32;
            // Unknown jump to Block 0x810. Refer to 3-address code (TAC);
        } else {
            v128, v129 = 0x35d0(4 + data + 32, msg.data[4 + data], msg.data[4 + data]);
            require(v129 + v128 - v129 >= 192);
            require(!(address(msg.data[v129]) - msg.data[v129]));
            v130 = msg.data[v129 + 32];
            require(!(bool(msg.data[v129 + 64]) - msg.data[v129 + 64]));
            require(!(address(msg.data[v129 + 96]) - msg.data[v129 + 96]));
            v131 = msg.data[v129 + 128];
            require(!(bool(msg.data[v129 + 160]) - msg.data[v129 + 160]));
            if (amount0Delta > 0) {
            }
            if (msg.data[v129 + 64]) {
                v130 = v132 = 0;
            }
            if (!msg.data[v129 + 64]) {
                v130 = v133 = 0;
            }
            require((address(msg.data[v129])).code.size);
            v134 = new uint256[](0);
            v135 = address(msg.data[v129]).swap(v130, v130, address(msg.data[v129 + 96]), v134).gas(msg.gas);
            if (v135) {
                if (v135) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                if (msg.data[v129 + 160]) {
                    v131 = v136 = 0;
                }
                if (!msg.data[v129 + 160]) {
                    v131 = v137 = 0;
                }
                require((address(msg.data[v129 + 96])).code.size);
                v138 = new uint256[](0);
                v139 = address(msg.data[v129 + 96]).swap(v131, v131, address(this), v138).gas(msg.gas);
                if (v139) {
                    v28 = v140 = 0x189cf;
                    if (v139) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v29 = v141 = msg.sender;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
        v142 = new bytes[](68);
        MEM[v142.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v142 + 36] = address(v29);
        MEM[v142 + 68] = v17;
        require(!((v142 + 128 > uint64.max) | (v142 + 128 < v142)), Panic(65)); // failed memory allocation (too much memory)
        v143 = v142.length;
        MEM[0] = MEM[0];
        v144 = v145, /* uint256 */ v146 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(v29), v17).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v147 = v148 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v147 = v149 = new bytes[](RETURNDATASIZE());
            require(!((v149 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v149 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v149)), Panic(65)); // failed memory allocation (too much memory)
            v146 = v149.data;
            RETURNDATACOPY(v146, 0, RETURNDATASIZE());
        }
        if (v145) {
            v144 = !MEM[v147];
            if (bool(MEM[v147])) {
                require(v147 + MEM[v147] - v147 >= 32);
                v144 = v150 = MEM[v147 + 32];
                require(!(bool(v150) - v150));
            }
        }
        require(v144, Error(21574));
        // Unknown jump to Block ['0x189cf', '0x18b1b', '0xba2']. Refer to 3-address code (TAC);
        if (v27) {
            v17 = v151 = 0;
        }
        if (!v27) {
            v17 = v152 = 0;
            // Unknown jump to Block 0x9e4. Refer to 3-address code (TAC);
        } else {
            require(v29.code.size);
            v153 = v154 = 0;
            v155 = v156 = MEM[64];
            MEM[v156] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            MEM[v156 + 4] = v17;
            MEM[v156 + 4 + 32] = v17;
            MEM[v156 + 4 + 64] = msg.sender;
            MEM[v156 + 4 + 96] = 128;
            MEM[v156 + 4 + 128] = 0;
            v157 = v156 + 4 + 160;
        }
        exit;
        exit;
        require(v29.code.size);
        v153 = v158 = 0;
        v155 = v159 = MEM[64];
        MEM[v159] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v159 + 4] = v17;
        MEM[v159 + 4 + 32] = v17;
        MEM[v159 + 4 + 64] = msg.sender;
        MEM[v159 + 4 + 96] = 128;
        MEM[v159 + 4 + 128] = 0;
        v157 = v160 = v159 + 4 + 160;
        v161 = v29.call(MEM[v18b61_0x0:v18b61_0x0 + v378eV0xbb9 - v18b61_0x0], MEM[v18b61_0x0:v18b61_0x0 + va10_0x6]).value(v153).gas(msg.gas);
        if (v161) {
            if (v161) {
                require(!((v155 > uint64.max) | (v155 < v155)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v155;
                require(v155 - v155 >= 0);
                exit;
            } else {
                exit;
            }
        }
    } else if (0 == amount0Delta > 0) {
        0x4670(msg.sender, amount1Delta);
        exit;
    } else {
        0x4670(msg.sender, amount0Delta);
        exit;
    }
}

function 0xf73dfdb2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    _unlockCallback = 1;
    v0 = 0x38de(varg7);
    if (!v0) {
        v1 = v2 = 0xfffff & varg7 >> 88;
        v1 = v3 = 0x343a();
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = address(varg0);
        v4 = v5 = v3 + 96;
        v3.word3 = bool(varg1);
        0x3aa8(v3);
        v6 = 0x3ac6(address(v3.word2));
        v3.word1 = uint128(v6);
        v4 = v7 = varg7 >> 108 & 0xfffff;
        v8, v9 = 0x3c89(varg2);
        v4 = v10 = 0x343a();
        v10.word0 = v9;
        v1 = v11 = v10 + 32;
        v10.word1 = v8;
        v10.word2 = address(varg2);
        v1 = v12 = v10 + 96;
        v10.word3 = bool(varg3);
        v13, v14 = 0x3c89(varg4);
        v1 = v15 = 0x343a();
        v15.word0 = v14;
        v1 = v16 = v15 + 32;
        v15.word1 = v13;
        v15.word2 = address(varg4);
        v4 = v17 = v15 + 96;
        v15.word3 = bool(varg5);
        v18 = v19 = MEM[64];
        MEM[0] = MEM[0];
        v20 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v20) {
            v1 = v21 = 11816;
            v22 = v23 = 11784;
            v24 = v25 = 0;
            if (v20) {
                v26 = v27 = 5404;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v19 + 32 > uint64.max) | (v19 + 32 < v19)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v19 + 32;
                    v28 = v29 = v19 + 32;
                }
            } else {
                v30 = v31 = this.balance;
            }
            require(!((v18 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v18 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v28 = v18 + RETURNDATASIZE();
            require(v28 - v18 >= 32);
            v24 = MEM[v18];
            // Unknown jump to Block ['0x151c0x1d5', '0x51410x1d5']. Refer to 3-address code (TAC);
            v30 = this.balance;
            v32 = _SafeAdd(v24, this.balance);
            v33 = _SafeSub(v32, v4);
            if (!v34) {
                v35 = _SafeSub(v1, msg.gas);
                v36 = 0x34f5(v35);
                v37 = _SafeMul(v1, v36);
                require(v37 < v33, Error(52));
                v38 = 0x34f5(msg.gas);
                require(v38 >= msg.gas, Error(13665));
                // Unknown jump to Block ['0x1b8760x1d5', '0x1ba140x1d5']. Refer to 3-address code (TAC);
            } else {
                v39 = _SafeSub(v1, msg.gas);
                v40 = 0x3504(v39);
                v41 = _SafeMul(v1, v40);
                require(v41 < v33, Error(52));
                v42 = _SafeSub(v33, v41);
                require(v34 <= 1000);
                v43 = _SafeMul(v42, v34);
                v44 = _SafeSub(v42, v43 / 1000);
                if (this.balance <= v43 / 1000) {
                    MEM[0] = MEM[0];
                    v45 = 0x34bd(v24);
                    0x5833(v45, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v43 / 1000) {
                    v46 = block.coinbase.call().value(v43 / 1000).gas(10000);
                }
                v47 = 0x3504(msg.gas);
                require(v47 >= msg.gas, Error(13666));
                // Unknown jump to Block ['0x1b8760x1d5', '0x1ba140x1d5']. Refer to 3-address code (TAC);
            }
            exit;
            exit;
            v4 = v48 = v24 + v30;
            require(v24 <= v48, Panic(17)); // arithmetic overflow or underflow
            v1 = v49 = 0x1befb;
            v1 = v50 = 0x1bf43;
            v51 = v52 = 0x517a(0, address(v3.word0) * address(v3.word0) % uint256.max - 0 - (address(v3.word0) * address(v3.word0) % uint256.max < 0));
            if (!v34) {
                v51 = v53 = _SafeDiv(uint192.max + 1, v52);
            }
            if (!varg3) {
                v4 = v54 = 0x4ea4(v10.word0, MEM[v1]);
                if (v4) {
                    v4 = v55 = 0x4ea4(MEM[v1], v15.word0);
                }
            } else {
                v4 = v56 = 0x4ea4(MEM[v1], v10.word0);
                if (v4) {
                    v4 = v57 = 0x4ea4(MEM[v1], v15.word0);
                }
            }
            v4 = v58 = 0x4ea4(v15.word0, MEM[v1]);
            v4 = v59 = uint96.max + 1;
            while (1) {
                v60 = v51 * v4;
                v61 = v51 * v4 % uint256.max - v60 - (v51 * v4 % uint256.max < v60);
                if (uint96.max + 1 <= v61) {
                    break;
                } else {
                    if (v51 * v4 % uint256.max - v60 == v51 * v4 % uint256.max < v60) {
                        v51 = v60 >> 96;
                        // Unknown jump to Block ['0x1befb', '0x1bf43']. Refer to 3-address code (TAC);
                    } else {
                        v51 = v60 - v51 * v4 % (uint96.max + 1) >> 96 | v61 - (v51 * v4 % (uint96.max + 1) > v60) << 160;
                        // Unknown jump to Block ['0x1befb', '0x1bf43']. Refer to 3-address code (TAC);
                    }
                    continue;
                }
            }
            if (v51 <= v4) {
                v1 = v62 = 0x1a866;
                v63 = v64 = 12082;
                v65 = v66 = 0x1a887;
                v67 = v68 = 0x1a8aa;
                v69 = v70 = 12103;
                MEM[v4] = bool(!MEM[v4]);
                if (bool(MEM[v4])) {
                    v71 = v72 = 0x1aa4f;
                    v73 = address(MEM[v1]) >> 48;
                    // Unknown jump to Block 0x2f25. Refer to 3-address code (TAC);
                } else {
                    v71 = v74 = 0x1a95d;
                    v75 = v76 = 12069;
                    v77 = v78 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v79 = address(MEM[v1]) >> 48;
                }
            } else {
                v1 = v80 = 0x1a76d;
                v63 = v81 = 11912;
                v65 = v82 = 0x1a78e;
                v67 = v83 = 0x1a7b1;
                v69 = v84 = 11923;
                if (bool(MEM[v4])) {
                    v71 = v85 = 0x1a841;
                    v73 = v86 = address(MEM[v1]) >> 48;
                } else {
                    v71 = v87 = 0x1a7f7;
                    v75 = v88 = 11899;
                    v77 = v89 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v79 = v90 = address(MEM[v1]) >> 48;
                }
            }
            require(v79, Panic(18)); // division by zero
            v73 = v91 = v77 / v79;
            // Unknown jump to Block ['0x2e7b', '0x2f25']. Refer to 3-address code (TAC);
            MEM[v1] = address(v73);
            // Unknown jump to Block ['0x1a95d', '0x1aa4f']. Refer to 3-address code (TAC);
            MEM[v1] = bool(!MEM[v1]);
            v92 = v93 = bool(MEM[v1]);
            if (!v92) {
                MEM[v4] = MEM[v1];
                MEM[v1] = MEM[v4];
                MEM[v4] = bool(!MEM[v4]);
                v94 = bool(MEM[v4]);
                // Unknown jump to Block 0x1a8aa. Refer to 3-address code (TAC);
            } else {
                MEM[v4] = bool(!MEM[v4]);
                v94 = v95 = bool(MEM[v4]);
            }
            if (!v94) {
                MEM[v1] = MEM[v1];
                MEM[v1] = MEM[v1];
            }
            v96 = 0x5695(MEM[v1], MEM[v1 + 32], v1, MEM[v4], MEM[v4 + 32], v4, address(MEM[v1]), uint128(MEM[v1 + 32]), v1, v4);
            v97 = 0x34ad(v1);
            v98 = _SafeDiv((10000 - v97) * v96 * MEM[v1 + 32], MEM[v1] * 10000 + (10000 - v97) * v96);
            v99 = 0x34ad(v4);
            v100 = _SafeDiv((10000 - v99) * v98 * MEM[v4 + 32], MEM[v4] * 10000 + (10000 - v99) * v98);
            if (bool(!MEM[v1 + 96])) {
                MEM[0] = MEM[0];
                v101 = v102 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v101 = 0x1000276a4;
            }
            v103 = new struct(8);
            v104 = v103.data;
            v103.word1 = 12;
            v103.word2 = v96;
            v103.word3 = address(MEM[64 + v1]);
            v103.word4 = v98;
            v103.word5 = bool(MEM[96 + v1]);
            v103.word6 = address(MEM[64 + v4]);
            v103.word7 = bool(MEM[96 + v4]);
            v103.word0 = 224;
            require(!((v103 + (uint8.max + 1) > uint64.max) | (v103 + (uint8.max + 1) < v103)), Panic(65)); // failed memory allocation (too much memory)
            v105 = MEM[64];
            v106 = new bytes[](v103.word0.length);
            MCOPY(v106.data, v103.data, v103.word0.length);
            v106[v103.word0.length] = 0;
            v107 = address(MEM[v1 + 64]).swap(address(this), bool(MEM[v1 + 96]), v100, address(v101), v106).gas(msg.gas);
            if (v107) {
                v4 = v108 = 0x1ba14;
                if (!v107) {
                }
            }
            if (64 > RETURNDATASIZE()) {
                require(!((v105 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v105 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v105)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v105 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v109 = v105 + RETURNDATASIZE();
            } else {
                require(!((v105 + 64 > uint64.max) | (v105 + 64 < v105)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v105 + 64;
                v109 = v110 = v105 + 64;
            }
            require(v109 - v105 >= 64);
            // Unknown jump to Block 0x4f930x1d5. Refer to 3-address code (TAC);
            v34 = v111 = 0x3ff & v4 >> 50;
            v1 = v112 = uint24(v4 >> 60);
            v1 = v113 = 0x3ffffffffffff & v4;
            v18 = MEM[64];
            MEM[0] = MEM[0];
            v114 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v114) {
                v24 = v115 = 0;
                if (v114) {
                    v22 = v116 = 20485;
                    v26 = v117 = 20801;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v18 + 32 > uint64.max) | (v18 + 32 < v18)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v18 + 32;
                        v28 = v118 = v18 + 32;
                    }
                }
            }
            MEM[v1] = bool(!MEM[v1]);
            v92 = v119 = bool(MEM[v1]);
            // Unknown jump to Block 0x1a887. Refer to 3-address code (TAC);
            MEM[v1] = address(v73);
            // Unknown jump to Block ['0x1a7f7', '0x1a841']. Refer to 3-address code (TAC);
            v120 = v121 = bool(MEM[v1]);
            if (!v120) {
                MEM[v4] = MEM[v1];
                MEM[v1] = MEM[v4];
                v122 = bool(MEM[v4]);
                // Unknown jump to Block 0x1a7b1. Refer to 3-address code (TAC);
            } else {
                v122 = v123 = bool(MEM[v4]);
            }
            if (!v122) {
                MEM[v1] = MEM[v1];
                MEM[v1] = MEM[v1];
            }
            v124 = address(MEM[v1]) * (v1 * (v4 * v1)) * (MEM[v1 + 32] * MEM[v4 + 32]);
            v125 = 0x585f(MEM[v4 + 32] * MEM[v4] * (MEM[v1] * MEM[v1 + 32]), MEM[v4 + 32] * MEM[v4] * (MEM[v1] * MEM[v1 + 32]) % uint256.max - MEM[v4 + 32] * MEM[v4] * (MEM[v1] * MEM[v1 + 32]) - (MEM[v4 + 32] * MEM[v4] * (MEM[v1] * MEM[v1 + 32]) % uint256.max < MEM[v4 + 32] * MEM[v4] * (MEM[v1] * MEM[v1 + 32])));
            v126 = (10000 * MEM[v1] + v1 * MEM[v4 + 32]) * (uint128(MEM[v1 + 32]) * v1 * v4 * address(MEM[v1]));
            v127 = 0x57ed((v124 - v4 * v125 * 0x989680000000000000) * uint128(MEM[v1 + 32]) % uint256.max - (v124 - v4 * v125 * 0x989680000000000000) * uint128(MEM[v1 + 32]) - ((v124 - v4 * v125 * 0x989680000000000000) * uint128(MEM[v1 + 32]) % uint256.max < (v124 - v4 * v125 * 0x989680000000000000) * uint128(MEM[v1 + 32])) + (address(MEM[v1]) * (v1 * (v4 * v1)) * (MEM[v1 + 32] * MEM[v4 + 32]) % uint256.max - v124 - (address(MEM[v1]) * (v1 * (v4 * v1)) * (MEM[v1 + 32] * MEM[v4 + 32]) % uint256.max < v124) - (v4 * v125 * 0x989680000000000000 % uint256.max - v4 * v125 * 0x989680000000000000 - (v4 * v125 * 0x989680000000000000 % uint256.max < v4 * v125 * 0x989680000000000000)) - (v124 < v4 * v125 * 0x989680000000000000)) * uint128(MEM[v1 + 32]), (v124 - v4 * v125 * 0x989680000000000000) * uint128(MEM[v1 + 32]), 10 ** 8 * v1 * (MEM[v4] * MEM[v1] << 48) % uint256.max - 10 ** 8 * v1 * (MEM[v4] * MEM[v1] << 48) - (10 ** 8 * v1 * (MEM[v4] * MEM[v1] << 48) % uint256.max < 10 ** 8 * v1 * (MEM[v4] * MEM[v1] << 48)) + ((10000 * MEM[v1] + v1 * MEM[v4 + 32]) * (uint128(MEM[v1 + 32]) * v1 * v4 * address(MEM[v1])) % uint256.max - v126 - ((10000 * MEM[v1] + v1 * MEM[v4 + 32]) * (uint128(MEM[v1 + 32]) * v1 * v4 * address(MEM[v1])) % uint256.max < v126)) + (10 ** 8 * v1 * (MEM[v4] * MEM[v1] << 48) + v126 < 10 ** 8 * v1 * (MEM[v4] * MEM[v1] << 48)), 10 ** 8 * v1 * (MEM[v4] * MEM[v1] << 48) + v126);
            v128 = 0x34ad(v1);
            v129 = _SafeDiv(MEM[v1] * v127 * 10000, (MEM[v1 + 32] - v127) * (10000 - v128));
            v130 = 0x34ad(v4);
            v131 = _SafeDiv(MEM[v4] * (v129 + 1) * 10000, (MEM[v4 + 32] - (v129 + 1)) * (10000 - v130));
            v132, v133, v134, v135, v136, v137, v138 = 0x420d(bool(MEM[v1 + 96]), 16915, 16922, v129 + 1, v127, address(MEM[v4 + 64]), v1);
            if (bool(!MEM[v1 + 96])) {
                MEM[0] = MEM[0];
                v139 = v140 = 64;
                v141 = v142 = 0x1b8be;
                v143 = v144 = 0;
                v145 = v146 = 17114;
                v147 = v148 = 0x1b912;
                v149 = v150 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                v151 = address(MEM[v4 + 64]);
                v152 = v153 = bool(MEM[v4 + 96]);
            } else {
                v149 = 0x1000276a4;
                v139 = 64;
                v141 = v154 = 0x1b7e7;
                v143 = 0;
                v145 = v155 = 17114;
                v147 = v156 = 0x1b83b;
                v151 = v157 = address(MEM[v4 + 64]);
                v152 = bool(MEM[v4 + 96]);
            }
            v158 = new struct(8);
            v159 = v158.data;
            v158.word1 = 7;
            v158.word2 = address(v151);
            v158.word3 = v134;
            v158.word4 = bool(v152);
            v158.word5 = address(MEM[v137 + v139]);
            v158.word6 = v135;
            v158.word7 = bool(MEM[v137 + 96]);
            // Unknown jump to Block ['0x1b7e70x1d5', '0x1b8be0x1d5']. Refer to 3-address code (TAC);
            v158.word0 = 224;
            require(!((v158 + (uint8.max + 1) > uint64.max) | (v158 + (uint8.max + 1) < v158)), Panic(65)); // failed memory allocation (too much memory)
            v105 = v160 = MEM[v139];
            MEM[v160] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v160 + 4] = address(v136);
            MEM[v160 + 4 + 32] = bool(v138);
            MEM[v160 + 4 + 64] = v132;
            MEM[v160 + 4 + 96] = address(v149);
            MEM[v160 + 4 + 128] = 160;
            MEM[v160 + 4 + 160] = v158.word0.length;
            MCOPY(v160 + 4 + 160 + 32, v158.data, v158.word0.length);
            MEM[32 + (v158.word0.length + (v160 + 4 + 160))] = 0;
            v161 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v158.word0.length) + (v160 + 4 + 160) + 32;
            v162 = address(MEM[v1 + 64]).call(MEM[v1d50x445d:v1d50x445d + v1c0dV0x3875V0x1b83b0x1d5 - v1d50x445d], MEM[v1d50x445d:v1d50x445d + v1d50x4227]).value(v143).gas(msg.gas);
            if (v162) {
                v4 = v163 = 0x1b876;
                if (v162) {
                    // Unknown jump to Block 0x42f40x1d5. Refer to 3-address code (TAC);
                }
            }
            v158.word0 = 224;
            require(!((v158 + (uint8.max + 1) > uint64.max) | (v158 + (uint8.max + 1) < v158)), Panic(65)); // failed memory allocation (too much memory)
            v105 = v164 = MEM[v139];
            MEM[v164] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v164 + 4] = address(v136);
            MEM[v164 + 4 + 32] = bool(v138);
            MEM[v164 + 4 + 64] = v132;
            MEM[v164 + 4 + 96] = address(v149);
            MEM[v164 + 4 + 128] = 160;
            MEM[v164 + 4 + 160] = v158.word0.length;
            MCOPY(v164 + 4 + 160 + 32, v158.data, v158.word0.length);
            MEM[32 + (v158.word0.length + (v164 + 4 + 160))] = 0;
            v161 = v165 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v158.word0.length) + (v164 + 4 + 160) + 32;
            // Unknown jump to Block 0x42da0x1d5. Refer to 3-address code (TAC);
            v120 = v166 = bool(MEM[v1]);
            // Unknown jump to Block 0x1a78e. Refer to 3-address code (TAC);
            revert();
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0xcf7d4f69(uint256 varg0, uint256 varg1, uint256 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint256 varg6, int24 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
    require(msg.data.length - 4 >= 416);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    require(!(address(varg8) - varg8));
    require(!(bool(varg9) - varg9));
    _unlockCallback = 1;
    revert();
}

function 0xcbf02c23(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    _unlockCallback = 1;
    revert();
}

function 0xcafecc44(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(bool(varg0) - varg0));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    revert();
}

function 0xc18c82cc(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(!(address(varg0) - varg0));
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    v0 = varg1.data;
    require(4 + varg1 + varg1.length + 32 > msg.data.length);
    revert();
}

function 0xbf5fad43(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, int24 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    revert();
}

function 0xb9087966(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(!(bool(varg0) - varg0));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    _unlockCallback = 1;
    v0 = 0x38de(varg9);
    if (!v0) {
        if (!varg5) {
            v1 = v2 = MEM[64];
            v3 = address(varg4).token1().gas(msg.gas);
            if (v3) {
                v4 = v5 = 0;
                if (v3) {
                    v6 = v7 = 11434;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v2 + 32 > uint64.max) | (v2 + 32 < v2)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v2 + 32;
                        v8 = v9 = v2 + 32;
                    }
                }
            }
        } else {
            v1 = v10 = MEM[64];
            v11 = address(varg4).token0().gas(msg.gas);
            if (v11) {
                v4 = v12 = 0;
                if (v11) {
                    v6 = v13 = 11345;
                    v14 = v15 = 32;
                    if (32 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x2c570x1f3. Refer to 3-address code (TAC);
                    }
                }
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        if (!varg0) {
            if (address(v4) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v4 = v16 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v4 = v17 = 0;
        }
        if (!varg0) {
            if (address(v4) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                MEM[0] = MEM[0];
                v4 = v18 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        }
        v19 = 0x349b(0xfffff & varg9 >> 88);
        v20 = 0x3449();
        v20.word0 = address(v4);
        v20.word1 = address(v4);
        v20.word2 = uint24(v19);
        v20.word3 = varg1;
        v20.word4 = address(varg2);
        v21 = v22 = 0x343a();
        v22.word0 = 0;
        v22.word1 = 0;
        v22.word2 = v20;
        v22.word3 = bool(varg3);
        v23 = v24 = 10834;
        v25 = new struct(3);
        v25.word1 = keccak256(MEM[v2a27_0x0.word2:v2a27_0x0.word2 + 160]);
        v25.word2 = 6;
        v25.word0 = 64;
        require(!((v25 + 96 > uint64.max) | (v25 + 96 < v25)), Panic(65)); // failed memory allocation (too much memory)
        v26 = v25.word0.length;
        v27 = v28 = keccak256(keccak256(MEM[v2a27_0x0.word2:v2a27_0x0.word2 + 160]), 6);
        v29 = v30 = MEM[64];
        v31 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v28).gas(msg.gas);
        if (v31) {
            v21 = v32 = 32;
            v33 = v34 = 15225;
            v35 = v36 = 0;
            if (v31) {
                v37 = v38 = 15372;
                if (v32 <= RETURNDATASIZE()) {
                    require(!((v30 + 32 > uint64.max) | (v30 + 32 < v30)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v30 + 32;
                    v39 = v40 = v30 + v32;
                }
            }
            MEM[v21] = address(v35);
            require(v27 <= v27 + 3, Panic(17)); // arithmetic overflow or underflow
            v29 = v41 = MEM[64];
            v42 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v27 + 3).gas(msg.gas);
            if (v42) {
                v27 = v43 = uint128.max;
                v33 = v44 = 32;
                v21 = v45 = 0x1b32e;
                v35 = v46 = 0;
                if (v42) {
                    v37 = 15343;
                    if (v44 <= RETURNDATASIZE()) {
                        require(!((v41 + 32 > uint64.max) | (v41 + 32 < v41)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v41 + 32;
                        v39 = v47 = v41 + v44;
                    }
                }
            }
            MEM[v21 + v33] = uint128(v35 & v27);
            v48 = v49 = 0xfffff & varg6 >> 108;
            v48 = v50 = 0x343a();
            v50.word0 = 0;
            v50.word1 = 0;
            v50.word2 = address(0xfffff & varg9 >> 88);
            v48 = v51 = v50 + 96;
            v50.word3 = bool(v24);
            0x3aa8(v50);
            v52 = 0x3ac6(address(v50.word2));
            v50.word1 = uint128(v52);
            v53, v54 = 0x3c89(v22 + 96);
            v21 = v55 = 0x343a();
            v55.word0 = v54;
            v21 = v56 = v55 + 32;
            v55.word1 = v53;
            v55.word2 = address(v22 + 96);
            v21 = v57 = v55 + 96;
            v55.word3 = bool(varg10);
            v58 = v59 = MEM[64];
            MEM[0] = MEM[0];
            v60 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v60) {
                v48 = v61 = 11068;
                v62 = v63 = 0x1a558;
                v64 = v65 = 0;
                if (v60) {
                    v66 = v67 = 5404;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v59 + 32 > uint64.max) | (v59 + 32 < v59)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v59 + 32;
                        v68 = v69 = v59 + 32;
                    }
                } else {
                    v70 = v71 = this.balance;
                }
                require(!((v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v58)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v58 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v68 = v58 + RETURNDATASIZE();
                require(v68 - v58 >= 32);
                v64 = MEM[v58];
                // Unknown jump to Block ['0x151c0x1f3', '0x51410x1f3']. Refer to 3-address code (TAC);
                v70 = this.balance;
                v72 = _SafeAdd(v64, this.balance);
                v73 = _SafeSub(v72, v48);
                if (!v23) {
                    v74 = _SafeSub(v21, msg.gas);
                    v75 = 0x34f5(v74);
                    v76 = _SafeMul(v77, v75);
                    require(v76 < v73, Error(52));
                    v78 = 0x34f5(msg.gas);
                    require(v78 >= msg.gas, Error(13665));
                    // Unknown jump to Block ['0x1b8760x1f3', '0x1bfb90x1f3']. Refer to 3-address code (TAC);
                } else {
                    v79 = _SafeSub(v21, msg.gas);
                    v80 = 0x3504(v79);
                    v81 = _SafeMul(v77, v80);
                    require(v81 < v73, Error(52));
                    v82 = _SafeSub(v73, v81);
                    require(v23 <= 1000);
                    v83 = _SafeMul(v82, v23);
                    v84 = _SafeSub(v82, v83 / 1000);
                    if (this.balance <= v83 / 1000) {
                        MEM[0] = MEM[0];
                        v85 = 0x34bd(v64);
                        0x5833(v85, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    if (v83 / 1000) {
                        v86 = block.coinbase.call().value(v83 / 1000).gas(10000);
                    }
                    v87 = 0x3504(msg.gas);
                    require(v87 >= msg.gas, Error(13666));
                    // Unknown jump to Block ['0x1b8760x1f3', '0x1bfb90x1f3']. Refer to 3-address code (TAC);
                }
                exit;
                exit;
                v48 = v88 = v64 + v70;
                require(v64 <= v88, Panic(17)); // arithmetic overflow or underflow
                v48 = v89 = 0x1bd28;
                v48 = v90 = 0x1bd70;
                v91 = v92 = 0x517a(address(MEM[v21]) * address(MEM[v21]), address(MEM[v21]) * address(MEM[v21]) % uint256.max - address(MEM[v21]) * address(MEM[v21]) - (address(MEM[v21]) * address(MEM[v21]) % uint256.max < address(MEM[v21]) * address(MEM[v21])));
                if (!v48) {
                    v91 = v93 = _SafeDiv(uint192.max + 1, v92);
                    v94 = address(MEM[v48]);
                } else {
                    v94 = v95 = address(MEM[v48]);
                }
                v96 = v94 * v94 % uint256.max - v94 * v94 - (v94 * v94 % uint256.max < v94 * v94);
                v21 = v97 = v94 * v94 - ((v96 * uint256.max % (uint96.max + 1) + v96) % (uint96.max + 1) + v94 * v94) % (uint96.max + 1) >> 96 | v96 - (v94 * v94 < ((v96 * uint256.max % (uint96.max + 1) + v96) % (uint96.max + 1) + v94 * v94) % (uint96.max + 1)) << 160;
                if (v96 != v94 * v94 < ((v96 * uint256.max % (uint96.max + 1) + v96) % (uint96.max + 1) + v94 * v94) % (uint96.max + 1)) {
                }
                if (!v23) {
                    v21 = v98 = _SafeDiv(uint192.max + 1, v97);
                }
                if (!v77) {
                    v21 = v99 = 0x4ea4(v55.word0, MEM[v21]);
                } else {
                    v21 = v100 = 0x4ea4(MEM[v21], v55.word0);
                }
                v21 = v101 = uint96.max + 1;
                while (1) {
                    v102 = v91 * v21;
                    v103 = v91 * v21 % uint256.max - v102 - (v91 * v21 % uint256.max < v102);
                    if (uint96.max + 1 <= v103) {
                        break;
                    } else {
                        if (v91 * v21 % uint256.max - v102 == v91 * v21 % uint256.max < v102) {
                            v91 = v102 >> 96;
                            // Unknown jump to Block ['0x1bd280x1f3', '0x1bd700x1f3']. Refer to 3-address code (TAC);
                        } else {
                            v91 = v102 - v91 * v21 % (uint96.max + 1) >> 96 | v103 - (v91 * v21 % (uint96.max + 1) > v102) << 160;
                            // Unknown jump to Block ['0x1bd280x1f3', '0x1bd700x1f3']. Refer to 3-address code (TAC);
                        }
                        continue;
                    }
                }
                if (v91 <= v21) {
                    v21 = v104 = 0x1a628;
                    v105 = v106 = 6096;
                    v107 = v108 = 0x1a649;
                    v109 = v110 = 11174;
                    v111 = v112 = 0x1a6fc;
                    MEM[v21] = bool(!MEM[v21]);
                    if (bool(MEM[v21])) {
                        v113 = v114 = 0x19a1f;
                        v115 = address(MEM[v21]) >> 48;
                    } else {
                        v113 = v116 = 0x1999a;
                        v117 = v118 = 6992;
                        v119 = v120 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v121 = address(MEM[v21]) >> 48;
                        // Unknown jump to Block 0x35200x1f3. Refer to 3-address code (TAC);
                    }
                } else {
                    v21 = v122 = 0x1a59e;
                    v105 = v123 = 5856;
                    v107 = v124 = 0x1a5bf;
                    v109 = v125 = 11103;
                    v111 = v126 = 0x1a605;
                    if (bool(MEM[v21])) {
                        v113 = v127 = 0x1987e;
                        v115 = v128 = address(MEM[v21]) >> 48;
                    } else {
                        v113 = v129 = 0x19834;
                        v117 = v130 = 6830;
                        v119 = v131 = _SafeMul(uint48.max + 1, uint48.max + 1);
                        v121 = v132 = address(MEM[v21]) >> 48;
                    }
                }
                require(v121, Panic(18)); // division by zero
                v115 = v133 = v119 / v121;
                // Unknown jump to Block ['0x1aae0x1f3', '0x1b500x1f3']. Refer to 3-address code (TAC);
                MEM[v21] = address(v115);
                // Unknown jump to Block ['0x1999a0x1f3', '0x19a1f0x1f3']. Refer to 3-address code (TAC);
                MEM[v48] = bool(!MEM[v48]);
                v134 = bool(MEM[v48]);
                if (bool(v134)) {
                    MEM[v48] = address(address(MEM[v48]) >> 48);
                    MEM[v21] = bool(!MEM[v21]);
                    v135 = v136 = bool(MEM[v21]);
                    // Unknown jump to Block 0x1a6fc. Refer to 3-address code (TAC);
                } else {
                    v137 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v138 = _SafeDiv(v137, address(MEM[v48]) >> 48);
                    MEM[v48] = address(v138);
                    MEM[v21] = bool(!MEM[v21]);
                    v135 = bool(MEM[v21]);
                }
                if (!v135) {
                    MEM[v21] = MEM[v21];
                    MEM[v21] = MEM[v21];
                }
                v139 = 0x59ac(MEM[v21] * MEM[v21 + 32]);
                v140 = uint128(uint128(MEM[v48 + 32]) * uint128(MEM[v21 + 32]));
                v141 = address(address(address(MEM[v48]) ** 2) * address(MEM[v21])) * MEM[v21 + 32];
                v142 = 0x57ed((v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140 * address(address(MEM[v48]) * address(MEM[v21])) % uint256.max - (v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140 * address(address(MEM[v48]) * address(MEM[v21])) - ((v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140 * address(address(MEM[v48]) * address(MEM[v21])) % uint256.max < (v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140 * address(address(MEM[v48]) * address(MEM[v21]))) + ((v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140 % uint256.max - (v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140 - ((v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140 % uint256.max < (v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140) + (v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) % uint256.max - v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - (v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) % uint256.max < v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32])) - (v139 * v48 * 0x5f5e100000000000000000000000000 % uint256.max - v139 * v48 * 0x5f5e100000000000000000000000000 - (v139 * v48 * 0x5f5e100000000000000000000000000 % uint256.max < v139 * v48 * 0x5f5e100000000000000000000000000) + (v139 * v48 % uint256.max - v139 * v48 - (v139 * v48 % uint256.max < v139 * v48)) * 0x5f5e100000000000000000000000000) - (v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) < v139 * v48 * 0x5f5e100000000000000000000000000)) * v140) * address(address(MEM[v48]) * address(MEM[v21])), (v21 * v48 * v21 * address(MEM[v48]) * (address(MEM[v21]) * MEM[v21 + 32]) - v139 * v48 * 0x5f5e100000000000000000000000000) * v140 * address(address(MEM[v48]) * address(MEM[v21])), (uint128(MEM[v48 + 32]) * v48 * v21 * v141 + uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) + (10 ** 12 * v140 << 144)) * (v21 << 48) % uint256.max - (uint128(MEM[v48 + 32]) * v48 * v21 * v141 + uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) + (10 ** 12 * v140 << 144)) * (v21 << 48) - ((uint128(MEM[v48 + 32]) * v48 * v21 * v141 + uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) + (10 ** 12 * v140 << 144)) * (v21 << 48) % uint256.max < (uint128(MEM[v48 + 32]) * v48 * v21 * v141 + uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) + (10 ** 12 * v140 << 144)) * (v21 << 48)) + (uint128(MEM[v48 + 32]) * v48 * v21 * v141 % uint256.max - uint128(MEM[v48 + 32]) * v48 * v21 * v141 - (uint128(MEM[v48 + 32]) * v48 * v21 * v141 % uint256.max < uint128(MEM[v48 + 32]) * v48 * v21 * v141) + (uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) % uint256.max - uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) - (uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) % uint256.max < uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96))) + (uint128(MEM[v48 + 32]) * v48 * v21 * v141 + uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) < uint128(MEM[v48 + 32]) * v48 * v21 * v141) + (10 ** 12 * v140 * (uint144.max + 1) % uint256.max - (10 ** 12 * v140 << 144) - (10 ** 12 * v140 * (uint144.max + 1) % uint256.max < 10 ** 12 * v140 << 144) + (10 ** 12 * v140 % uint256.max - 10 ** 12 * v140 - (10 ** 12 * v140 % uint256.max < 10 ** 12 * v140) << 144)) + (uint128(MEM[v48 + 32]) * v48 * v21 * v141 + uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) + (10 ** 12 * v140 << 144) < uint128(MEM[v48 + 32]) * v48 * v21 * v141 + uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96))) * (v21 << 48), (uint128(MEM[v48 + 32]) * v48 * v21 * v141 + uint128(10 ** 6 * uint128(MEM[v21 + 32])) * v48 * (address(MEM[v48]) * MEM[v21 + 32] << 96) + (10 ** 12 * v140 << 144)) * (v21 << 48));
                v143 = MEM[v21 + 64];
                v144 = 0x34ad(v21);
                v145 = new struct(16);
                v145.word1 = 16;
                v145.word2 = v142;
                v145.word3 = address(MEM[v143]);
                v145.word4 = address(MEM[v143 + 32]);
                v145.word5 = uint24(MEM[v143 + 64]);
                v145.word6 = int24(MEM[v143 + 96]);
                v145.word7 = address(MEM[128 + v143]);
                v145.word8 = bool(MEM[v21 + 96]);
                v145.word9 = address(MEM[v48 + 64]);
                v145.word10 = bool(MEM[v48 + 96]);
                v145.word11 = address(MEM[v21 + 64]);
                v145.word12 = MEM[v21];
                v145.word13 = MEM[v21 + 32];
                v145.word14 = v144;
                v145.word15 = bool(MEM[v21 + 96]);
                v145.word0 = 480;
                require(!((v145 + 512 > uint64.max) | (v145 + 512 < v145)), Panic(65)); // failed memory allocation (too much memory)
                v146 = new bytes[](v145.word0.length);
                MCOPY(v146.data, v145.data, v145.word0.length);
                v146[v145.word0.length] = 0;
                v147 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v146, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (v147) {
                    v48 = v148 = 0x1bfb9;
                    if (v147) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v149.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v150 = new bytes[](v149.length);
                        require(!((v150 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v149.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v150 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v149.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v150)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v149.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v150.data, v149.data, v149.length);
                        v150[v149.length] = 0;
                    }
                }
                MEM[v48] = bool(!MEM[v48]);
                v134 = v151 = bool(MEM[v48]);
                // Unknown jump to Block 0x1a649. Refer to 3-address code (TAC);
                MEM[v21] = address(v115);
                // Unknown jump to Block ['0x198340x1f3', '0x1987e0x1f3']. Refer to 3-address code (TAC);
                v152 = bool(MEM[v48]);
                if (bool(v152)) {
                    MEM[v48] = address(address(MEM[v48]) >> 48);
                    v153 = v154 = bool(MEM[v21]);
                    // Unknown jump to Block 0x1a605. Refer to 3-address code (TAC);
                } else {
                    v155 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v156 = _SafeDiv(v155, address(MEM[v48]) >> 48);
                    MEM[v48] = address(v156);
                    v153 = bool(MEM[v21]);
                }
                if (!v153) {
                    MEM[v21] = MEM[v21];
                    MEM[v21] = MEM[v21];
                }
                v157 = v21 * (v21 * v48) * address(MEM[v21]);
                v158 = 0x59ac(MEM[v21] * MEM[v21 + 32]);
                v159 = uint128(MEM[v48 + 32]) * v21 * address(MEM[v48]) + 10000 * (MEM[v21] << 48);
                v160 = 0x57ed((v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32]) * address(MEM[v48]) % uint256.max - (v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32]) * address(MEM[v48]) - ((v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32]) * address(MEM[v48]) % uint256.max < (v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32]) * address(MEM[v48])) + ((v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32]) % uint256.max - (v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32]) - ((v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32]) % uint256.max < (v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32])) + ((v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) % uint256.max - (v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) - ((v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) % uint256.max < (v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32])) + (v157 * (MEM[v21 + 32] * address(MEM[v48])) % uint256.max - v157 * (MEM[v21 + 32] * address(MEM[v48])) - (v157 * (MEM[v21 + 32] * address(MEM[v48])) % uint256.max < v157 * (MEM[v21 + 32] * address(MEM[v48]))) - (10 ** 8 * (v48 * v158) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v48 * v158) << 96) - (10 ** 8 * (v48 * v158) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v48 * v158) << 96)) - (v157 * (MEM[v21 + 32] * address(MEM[v48])) < 10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32])) * uint128(MEM[v48 + 32])) * address(MEM[v48]), (v157 * (MEM[v21 + 32] * address(MEM[v48])) - (10 ** 8 * (v48 * v158) << 96)) * uint128(MEM[v21 + 32]) * uint128(MEM[v48 + 32]) * address(MEM[v48]), (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 + uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144)) * v21 % uint256.max - (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 + uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144)) * v21 - ((v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 + uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144)) * v21 % uint256.max < (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 + uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144)) * v21) + (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 % uint256.max - v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 - (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 % uint256.max < v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159) + (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) % uint256.max - v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) - (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) % uint256.max < v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])))) * v159 + (uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144) % uint256.max - uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144) - (uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144) % uint256.max < uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144))) + (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 + uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144) < v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159)) * v21, (v48 * uint128(MEM[v21 + 32]) * address(address(MEM[v21]) * address(MEM[v48])) * v159 + uint128(10 ** 10 * uint128(MEM[v48 + 32])) * (MEM[v21] << 144)) * v21);
                v161 = 0x34ad(v21);
                v162 = _SafeDiv(MEM[v21] * v160 * 10000, (MEM[v21 + 32] - v160) * (10000 - v161));
                v163, v164, v165, v166, v167, v168 = 0x4d54(bool(MEM[v48 + 96]), 19802, 19809, v21 + 64, address(MEM[v21 + 64]), v21);
                if (bool(!MEM[v48 + 96])) {
                    MEM[0] = MEM[0];
                    v169, v170, v171, v172, v173, v174, v175 = v176, v177, v178 = v179, v180, v181 = v182 = 0x4da3(bool(MEM[v167 + 96]), MEM[v167 + 64], bool(MEM[v21 + 96]), 0x1c172, v160, 0x1c137, address(MEM[v165]), 17114, v166, 0, v168, address(MEM[v48 + 64]), v163);
                    MEM[v172] = v169 - v170 - 32;
                    require(!((v172 + (v169 - v170 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v172 + (v169 - v170 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v172)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v172 + (v169 - v170 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v183 = v184 = MEM[v182];
                    MEM[v184] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v184 + 4] = address(v174);
                    MEM[v184 + 4 + 32] = bool(v177);
                    MEM[v184 + 4 + 64] = v180;
                    MEM[v184 + 4 + 96] = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v184 + 4 + 128] = 160;
                    MEM[v184 + 4 + 160] = MEM[v172];
                    MCOPY(v184 + 4 + 160 + 32, 32 + v172, MEM[v172]);
                    MEM[32 + (MEM[v172] + (v184 + 4 + 160))] = 0;
                    v185 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v172]) + (v184 + 4 + 160) + 32;
                    // Unknown jump to Block 0x42da0x1f3. Refer to 3-address code (TAC);
                } else {
                    v186, v187, v188, v189, v190, v191, v175 = v192, v193, v178 = v194, v195, v181 = v196 = 0x4da3(bool(MEM[v167 + 96]), MEM[v167 + 64], bool(MEM[v21 + 96]), 0x1c0b2, v160, 0x1c077, address(MEM[v165]), 17114, v166, 0, v168, address(MEM[v48 + 64]), v163);
                    MEM[v189] = v186 - v187 - 32;
                    require(!((v189 + (v186 - v187 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v189 + (v186 - v187 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v189)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v189 + (v186 - v187 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v183 = MEM[v196];
                    MEM[v183] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v183 + 4] = address(v191);
                    MEM[v183 + 4 + 32] = bool(v193);
                    MEM[v183 + 4 + 64] = v195;
                    MEM[v183 + 4 + 96] = address(0x1000276a4);
                    MEM[v183 + 4 + 128] = 160;
                    MEM[v183 + 4 + 160] = MEM[v189];
                    MCOPY(v183 + 4 + 160 + 32, 32 + v189, MEM[v189]);
                    MEM[32 + (MEM[v189] + (v183 + 4 + 160))] = 0;
                    v185 = v197 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v189]) + (v183 + 4 + 160) + 32;
                }
                v198 = v178.call(MEM[v1f30x1c079:v1f30x1c079 + v1c0dV0x3875V0x1c1370x1f3 - v1f30x1c079], MEM[v1f30x1c079:v1f30x1c079 + v42da0x1f3_0x6]).value(v175).gas(msg.gas);
                if (v198) {
                    v48 = v199 = 0x1b876;
                    if (v198) {
                        if (64 > RETURNDATASIZE()) {
                            require(!((v183 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v183 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v183)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v183 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v200 = v183 + RETURNDATASIZE();
                        } else {
                            require(!((v183 + 64 > uint64.max) | (v183 + 64 < v183)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v183 + 64;
                            v200 = v201 = v183 + 64;
                        }
                        require(v200 - v183 >= 64);
                    }
                }
                v23 = 0x3ff & v48 >> 50;
                v21 = v202 = uint24(v48 >> 60);
                v77 = v203 = 0x3ffffffffffff & v48;
                v58 = MEM[64];
                MEM[0] = MEM[0];
                v204 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (v204) {
                    v64 = v205 = 0;
                    if (v204) {
                        v62 = v206 = 20485;
                        v66 = v207 = 20801;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v58 + 32 > uint64.max) | (v58 + 32 < v58)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v58 + 32;
                            v68 = v208 = v58 + 32;
                        }
                    }
                }
                v152 = v209 = bool(MEM[v48]);
                // Unknown jump to Block 0x1a5bf. Refer to 3-address code (TAC);
                revert();
            }
            require(!((v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v39 = v210 = v29 + RETURNDATASIZE();
            require(v39 - v29 >= 32);
            v35 = v211 = MEM[v29];
            // Unknown jump to Block ['0x3befB0x2a49', '0x3c0cB0x2a49']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3bc8B0x2a49. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
        require(!((v1 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v1 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v8 = v1 + v14;
        require(v8 - v1 >= 32);
        v4 = MEM[v1];
        require(!(address(v4) - v4));
        // Unknown jump to Block ['0x2c51', '0x2caa']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x29bd. Refer to 3-address code (TAC);
        v14 = RETURNDATASIZE();
        // Unknown jump to Block 0x2c3f0x1f3. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x29bf. Refer to 3-address code (TAC);
    } else {
        exit;
    }
}

function 0xb7754fdd(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, int24 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
    require(msg.data.length - 4 >= 416);
    require(!(bool(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg6) - varg6));
    require(!(bool(varg7) - varg7));
    require(!(address(varg8) - varg8));
    require(!(bool(varg9) - varg9));
    _unlockCallback = 1;
    revert();
}

function 0xb6d35a66(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    _unlockCallback = 1;
    v0 = 0x38de(varg7);
    if (!v0) {
        v1 = v2 = 0xfffff & varg7 >> 88;
        v3, v4 = 0x3c89(varg0);
        v1 = v5 = 0x343a();
        v5.word0 = v4;
        v1 = v6 = v5 + 32;
        v5.word1 = v3;
        v5.word2 = address(varg0);
        v1 = v7 = v5 + 96;
        v5.word3 = bool(varg1);
        v1 = v8 = 0xfffff & varg7 >> 108;
        v1 = v9 = 0x343a();
        v9.word0 = 0;
        v9.word1 = 0;
        v9.word2 = address(varg2);
        v1 = v10 = v9 + 96;
        v9.word3 = bool(varg3);
        0x3aa8(v9);
        v11 = 0x3ac6(address(v9.word2));
        v9.word1 = uint128(v11);
        v1 = v12 = 0x343a();
        v12.word0 = 0;
        v12.word1 = 0;
        v12.word2 = address(varg4);
        v1 = v13 = v12 + 96;
        v12.word3 = bool(varg5);
        0x3aa8(v12);
        v14 = 0x3ac6(address(v12.word2));
        v12.word1 = uint128(v14);
        v15 = v16 = MEM[64];
        MEM[0] = MEM[0];
        v17 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v17) {
            v18 = v19 = 10124;
            v1 = v20 = 10188;
            v21 = v22 = 0;
            if (v17) {
                v23 = v24 = 5404;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v16 + 32 > uint64.max) | (v16 + 32 < v16)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v16 + 32;
                    v25 = v26 = v16 + 32;
                }
            } else {
                v27 = v28 = this.balance;
            }
            require(!((v15 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v15 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v25 = v15 + RETURNDATASIZE();
            require(v25 - v15 >= 32);
            v21 = MEM[v15];
            // Unknown jump to Block ['0x151c0x1fd', '0x51410x1fd']. Refer to 3-address code (TAC);
            v27 = this.balance;
            v29 = _SafeAdd(v21, this.balance);
            v30 = _SafeSub(v29, v1);
            if (!v31) {
                v32 = _SafeSub(v1, msg.gas);
                v33 = 0x34f5(v32);
                v34 = _SafeMul(v1, v33);
                require(v34 < v30, Error(52));
                v35 = 0x34f5(msg.gas);
                require(v35 >= msg.gas, Error(13665));
                // Unknown jump to Block ['0x1b8760x1fd', '0x1ba140x1fd']. Refer to 3-address code (TAC);
            } else {
                v36 = _SafeSub(v1, msg.gas);
                v37 = 0x3504(v36);
                v38 = _SafeMul(v1, v37);
                require(v38 < v30, Error(52));
                v39 = _SafeSub(v30, v38);
                require(v31 <= 1000);
                v40 = _SafeMul(v39, v31);
                v41 = _SafeSub(v39, v40 / 1000);
                if (this.balance <= v40 / 1000) {
                    MEM[0] = MEM[0];
                    v42 = 0x34bd(v21);
                    0x5833(v42, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v40 / 1000) {
                    v43 = block.coinbase.call().value(v40 / 1000).gas(10000);
                }
                v44 = 0x3504(msg.gas);
                require(v44 >= msg.gas, Error(13666));
                // Unknown jump to Block ['0x1b8760x1fd', '0x1ba140x1fd']. Refer to 3-address code (TAC);
            }
            exit;
            exit;
            v1 = v45 = v21 + v27;
            require(v21 <= v45, Panic(17)); // arithmetic overflow or underflow
            v1 = v46 = address(MEM[v1]);
            v1 = v47 = bool(MEM[v1]);
            v1 = v48 = address(MEM[v1]);
            v1 = v49 = bool(MEM[v1]);
            v1 = v50 = 0x1b606;
            v1 = v51 = 16536;
            v1 = v52 = 0x1b629;
            v1 = v53 = 0x1b64e;
            v1 = v54 = 16558;
            v1 = v55 = 0x1b673;
            if (0 == v31) {
                v1 = v56 = 0x4ea4(MEM[v1], MEM[v1]);
            } else {
                v1 = v57 = 0x4ea4(MEM[v1], MEM[v1]);
                v58 = v59 = address(v46);
            }
            while (1) {
                v60 = v58 * v58 % uint256.max - v58 * v58 - (v58 * v58 % uint256.max < v58 * v58);
                // Unknown jump to Block ['0x1b6290x1fd', '0x1b64e0x1fd']. Refer to 3-address code (TAC);
                v61 = v58 * v58 < ((v60 * uint256.max % (uint96.max + 1) + v60) % (uint96.max + 1) + v58 * v58) % (uint96.max + 1);
                v1 = v62 = v58 * v58 - ((v60 * uint256.max % (uint96.max + 1) + v60) % (uint96.max + 1) + v58 * v58) % (uint96.max + 1) >> 96 | v60 - v61 << 160;
                if (v60 == v61) {
                    // Unknown jump to Block ['0x40980x1fd', '0x40ae0x1fd']. Refer to 3-address code (TAC);
                } else {
                    // Unknown jump to Block ['0x40980x1fd', '0x40ae0x1fd']. Refer to 3-address code (TAC);
                }
                if (!v1) {
                    v1 = v63 = _SafeDiv(uint192.max + 1, v62);
                    // Unknown jump to Block 0x3d540x1fd. Refer to 3-address code (TAC);
                } else {
                    v58 = v64 = address(v1);
                }
                // Unknown jump to Block 0x517a0x1fd. Refer to 3-address code (TAC);
            }
            if (!v1) {
                v1 = v65 = _SafeDiv(uint192.max + 1, v62);
                v1 = v66 = uint96.max + 1;
            } else {
                v1 = v67 = uint96.max + 1;
            }
            while (1) {
                v68 = v1 * v1;
                v69 = v1 * v1 % uint256.max;
                if (uint96.max + 1 <= v69 - v68 - (v69 < v68)) {
                    break;
                } else {
                    if (v69 - v68 == v69 < v68) {
                        v1 = v68 >> 96;
                        // Unknown jump to Block ['0x1b6060x1fd', '0x1b6730x1fd']. Refer to 3-address code (TAC);
                    } else {
                        v70 = v1 * v1 % (uint96.max + 1);
                        v1 = v68 - v70 >> 96 | v69 - v68 - (v69 < v68) - (v70 > v68) << 160;
                        // Unknown jump to Block ['0x1b6060x1fd', '0x1b6730x1fd']. Refer to 3-address code (TAC);
                    }
                    continue;
                }
            }
            if (v1 <= v1) {
                v1 = v71 = 0x1a267;
                MEM[v1] = bool(!MEM[v1]);
                if (bool(!MEM[v1])) {
                    MEM[v1] = MEM[v1];
                    MEM[v1] = MEM[v1];
                    MEM[v1] = bool(!MEM[v1]);
                    v72 = bool(MEM[v1]);
                } else {
                    MEM[v1] = bool(!MEM[v1]);
                    v72 = v73 = bool(MEM[v1]);
                }
                if (bool(v72)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    MEM[v1] = bool(!MEM[v1]);
                    v74 = v75 = bool(MEM[v1]);
                } else {
                    v76 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v77 = _SafeDiv(v76, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v77);
                    MEM[v1] = bool(!MEM[v1]);
                    v74 = bool(MEM[v1]);
                }
                if (bool(v74)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v78 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v79 = _SafeDiv(v78, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v79);
                }
                v80 = MEM[v1];
                v81 = v1 * (v1 * v1) * address(MEM[v1]);
                v82 = 0x59ac(v80 * MEM[v1 + 32]);
                v83 = uint128(MEM[v1 + 32]) * v1 * address(MEM[v1]) + 10000 * (v80 << 48);
                v84 = 0x57ed((v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) % uint256.max - (v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) - ((v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]) % uint256.max < (v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1])) + ((v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max - (v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) - ((v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) % uint256.max < (v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32])) + ((v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) % uint256.max - (v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) - ((v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) % uint256.max < (v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32])) + (v81 * (MEM[v1 + 32] * address(MEM[v1])) % uint256.max - v81 * (MEM[v1 + 32] * address(MEM[v1])) - (v81 * (MEM[v1 + 32] * address(MEM[v1])) % uint256.max < v81 * (MEM[v1 + 32] * address(MEM[v1]))) - (10 ** 8 * (v1 * v82) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v1 * v82) << 96) - (10 ** 8 * (v1 * v82) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v1 * v82) << 96)) - (v81 * (MEM[v1 + 32] * address(MEM[v1])) < 10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32])) * uint128(MEM[v1 + 32])) * address(MEM[v1]), (v81 * (MEM[v1 + 32] * address(MEM[v1])) - (10 ** 8 * (v1 * v82) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]) * address(MEM[v1]), (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144)) * v1 % uint256.max - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144)) * v1 - ((v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144)) * v1 % uint256.max < (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144)) * v1) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 % uint256.max - v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 % uint256.max < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max - v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) - (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) % uint256.max < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])))) * v83 + (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144) % uint256.max - uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144) - (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144) % uint256.max < uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144))) + (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144) < v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83)) * v1, (v1 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v1])) * v83 + uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v80 << 144)) * v1);
                v85 = 0x34ad(v1);
                v86 = _SafeDiv(MEM[v1] * v84 * 10000, (MEM[v1 + 32] - v84) * (10000 - v85));
                v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97 = 0x49f1(bool(MEM[v1 + 96]), 18935, 18942, v1, 0x1bece, v1, 0x1be93, v1 + 64, 17114, address(MEM[v1 + 64]), 0);
                if (v96 == bool(MEM[v1 + 96])) {
                    MEM[0] = MEM[0];
                    v98 = v99 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v98 = 0x1000276a4;
                }
                v100 = new struct(7);
                v101 = v100.data;
                v100.word1 = 9;
                v100.word2 = address(MEM[64 + v91]);
                v100.word3 = bool(MEM[v91 + 96]);
                v100.word4 = address(MEM[v93]);
                v100.word5 = v84;
                v100.word6 = bool(MEM[v89 + 96]);
                v100.word0 = 192;
                require(!((v100 + uint8(-32) > uint64.max) | (v100 + uint8(-32) < v100)), Panic(65)); // failed memory allocation (too much memory)
                v102 = v103 = MEM[64];
                v104 = new bytes[](v100.word0.length);
                MCOPY(v104.data, v100.data, v100.word0.length);
                v104[v100.word0.length] = 0;
                v105 = address(MEM[v1 + 64]).swap(address(v95), bool(v97), v87, address(v98), v104).value(v96).gas(msg.gas);
                if (v105) {
                    v1 = v106 = 0x1b876;
                    if (v105) {
                        // Unknown jump to Block 0x42f40x1fd. Refer to 3-address code (TAC);
                    }
                }
            } else {
                v1 = v107 = 0x1a025;
                if (bool(!MEM[v1])) {
                    MEM[v1] = MEM[v1];
                    MEM[v1] = MEM[v1];
                    v108 = bool(MEM[v1]);
                } else {
                    v108 = v109 = bool(MEM[v1]);
                }
                if (bool(v108)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    v110 = v111 = bool(MEM[v1]);
                } else {
                    v112 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v113 = _SafeDiv(v112, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v113);
                    v110 = bool(MEM[v1]);
                }
                if (bool(v110)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v114 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v115 = _SafeDiv(v114, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v115);
                }
                v116 = MEM[v1 + 32];
                v117 = address(MEM[v1]);
                v118 = v1 * v1 * v1 * address(v117);
                v119 = 0x59ac(MEM[v1] * v116);
                v120 = uint128(uint128(MEM[v1 + 32]) * uint128(MEM[v1 + 32]));
                v121 = 0x57ed((v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120 * address(v117 * address(MEM[v1])) % uint256.max - (v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120 * address(v117 * address(MEM[v1])) - ((v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120 * address(v117 * address(MEM[v1])) % uint256.max < (v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120 * address(v117 * address(MEM[v1]))) + ((v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120 % uint256.max - (v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120 - ((v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120 % uint256.max < (v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120) + (v118 * (address(MEM[v1]) * v116) % uint256.max - v118 * (address(MEM[v1]) * v116) - (v118 * (address(MEM[v1]) * v116) % uint256.max < v118 * (address(MEM[v1]) * v116)) - (v119 * v1 * 0x5f5e100000000000000000000000000 % uint256.max - v119 * v1 * 0x5f5e100000000000000000000000000 - (v119 * v1 * 0x5f5e100000000000000000000000000 % uint256.max < v119 * v1 * 0x5f5e100000000000000000000000000) + (v119 * v1 % uint256.max - v119 * v1 - (v119 * v1 % uint256.max < v119 * v1)) * 0x5f5e100000000000000000000000000) - (v118 * (address(MEM[v1]) * v116) < v119 * v1 * 0x5f5e100000000000000000000000000)) * v120) * address(v117 * address(MEM[v1])), (v118 * (address(MEM[v1]) * v116) - v119 * v1 * 0x5f5e100000000000000000000000000) * v120 * address(v117 * address(MEM[v1])), (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) + (10 ** 12 * v120 << 144)) * (v1 << 48) % uint256.max - (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) + (10 ** 12 * v120 << 144)) * (v1 << 48) - ((uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) + (10 ** 12 * v120 << 144)) * (v1 << 48) % uint256.max < (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) + (10 ** 12 * v120 << 144)) * (v1 << 48)) + (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) % uint256.max - uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) - (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) % uint256.max < uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116)) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) % uint256.max - uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) - (uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) % uint256.max < uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96))) + (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) < uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116)) + (10 ** 12 * v120 * (uint144.max + 1) % uint256.max - (10 ** 12 * v120 << 144) - (10 ** 12 * v120 * (uint144.max + 1) % uint256.max < 10 ** 12 * v120 << 144) + (10 ** 12 * v120 % uint256.max - 10 ** 12 * v120 - (10 ** 12 * v120 % uint256.max < 10 ** 12 * v120) << 144)) + (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) + (10 ** 12 * v120 << 144) < uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96))) * (v1 << 48), (uint128(MEM[v1 + 32]) * v1 * v1 * (address(address(address(v117) ** 2) * address(MEM[v1])) * v116) + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v1 * (address(v117) * v116 << 96) + (10 ** 12 * v120 << 144)) * (v1 << 48));
                v122, v123, v124, v125, v126 = 0x487e(bool(MEM[v1 + 96]), 18564, 18571, v1, v1);
                if (bool(!MEM[v1 + 96])) {
                    MEM[0] = MEM[0];
                    v127 = v128 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v127 = 0x1000276a4;
                }
                v129 = 0x34ad(v1);
                v130 = new struct(9);
                v131 = v130.data;
                v130.word1 = 15;
                v130.word2 = address(MEM[v124 + 64]);
                v130.word3 = bool(MEM[v124 + 96]);
                v130.word4 = address(MEM[v125 + 64]);
                v130.word5 = MEM[v125];
                v130.word6 = MEM[v1 + 32];
                v130.word7 = v129;
                v130.word8 = bool(MEM[v125 + 96]);
                v130.word0 = uint8.max + 1;
                require(!((v130 + 288 > uint64.max) | (v130 + 288 < v130)), Panic(65)); // failed memory allocation (too much memory)
                v102 = MEM[64];
                v132 = new bytes[](v130.word0.length);
                MCOPY(v132.data, v130.data, v130.word0.length);
                v132[v130.word0.length] = 0;
                v133 = address(MEM[v1 + 64]).swap(address(this), bool(v126), v122, address(v127), v132).gas(msg.gas);
                if (v133) {
                    v1 = v134 = 0x1ba14;
                    if (!v133) {
                    }
                }
            }
            if (64 > RETURNDATASIZE()) {
                require(!((v102 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v102 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v102)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v102 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v135 = v102 + RETURNDATASIZE();
            } else {
                require(!((v102 + 64 > uint64.max) | (v102 + 64 < v102)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v102 + 64;
                v135 = v136 = v102 + 64;
            }
            require(v135 - v102 >= 64);
            // Unknown jump to Block 0x4f930x1fd. Refer to 3-address code (TAC);
            v31 = v137 = 0x3ff & v1 >> 50;
            v1 = v138 = uint24(v1 >> 60);
            v1 = v139 = 0x3ffffffffffff & v1;
            v15 = MEM[64];
            MEM[0] = MEM[0];
            v140 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v140) {
                v21 = v141 = 0;
                if (v140) {
                    v18 = v142 = 20485;
                    v23 = v143 = 20801;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v15 + 32 > uint64.max) | (v15 + 32 < v15)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v15 + 32;
                        v25 = v144 = v15 + 32;
                    }
                }
            }
            revert();
            v58 = address(v1);
            // Unknown jump to Block 0x51660x1fd. Refer to 3-address code (TAC);
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0xa31de730(uint256 varg0, int24 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, int24 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public payable { 
    require(msg.data.length - 4 >= 416);
    require(!(bool(varg0) - varg0));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    require(!(address(varg8) - varg8));
    require(!(bool(varg9) - varg9));
    _unlockCallback = 1;
    revert();
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_unlockCallback);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 32);
    require(!(rawData.word1 - uint8(rawData.word1)));
    require(uint8(rawData.word1));
    require(uint8(rawData.word1) - 1);
    require(uint8(rawData.word1) - 2);
    require(uint8(rawData.word1) - 3);
    require(uint8(rawData.word1) - 4);
    require(uint8(rawData.word1) - 5);
    require(uint8(rawData.word1) - 6);
    require(uint8(rawData.word1) - 7);
    require(uint8(rawData.word1) - 8);
    require(uint8(rawData.word1) - 9);
    require(uint8(rawData.word1) - 10);
    require(uint8(rawData.word1) - 11);
    require(uint8(rawData.word1) - 12);
    require(uint8(rawData.word1) - 13);
    require(uint8(rawData.word1) - 14);
    require(uint8(rawData.word1) - 15);
    if (uint8(rawData.word1) - 16) {
        require(uint8(rawData.word1) - 17);
        require(!(18 - uint8(rawData.word1)), Error(0x3f3f3f75));
        v1 = v2 = 8627;
        v3 = v4 = 32;
        v5, v6 = 0x35d0(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
        require(v6 + v5 - v6 >= 288);
        v7 = msg.data[v6];
        require(!(address(msg.data[v6 + 32]) - msg.data[v6 + 32]));
        require(v6 + v5 - (v6 + 96) >= 160);
        v8 = new struct(5);
        require(!((v8 + 160 > uint64.max) | (v8 + 160 < v8)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v6 + 96]) - msg.data[v6 + 96]));
        v8.word0 = msg.data[v6 + 96];
        require(!(address(msg.data[v6 + 96 + 32]) - msg.data[v6 + 96 + 32]));
        v8.word1 = msg.data[v6 + 96 + 32];
        require(!(msg.data[v6 + 96 + 64] - uint24(msg.data[v6 + 96 + 64])));
        v8.word2 = msg.data[v6 + 96 + 64];
        require(!(msg.data[v6 + 96 + 96] - int24(msg.data[v6 + 96 + 96])));
        v8.word3 = msg.data[v6 + 96 + 96];
        require(!(address(msg.data[v6 + 96 + 128]) - msg.data[v6 + 96 + 128]));
        v8.word4 = msg.data[v6 + 96 + 128];
        v7 = v9 = msg.data[v6 + (uint8.max + 1)];
        require(!(bool(v9) - v9));
        v10 = v11 = address(msg.data[v6 + 32]);
        if (!v9) {
            MEM[0] = MEM[0];
            v12 = 0x3458();
            v12.word0 = bool(v9);
            v12.word1 = msg.data[v6 + 64];
            v12.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
            v7 = v13 = MEM[64];
            MEM[v13] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v14 = v15 = v13 + 4;
        } else {
            v12 = v16 = 0x3458();
            v16.word0 = bool(v9);
            v16.word1 = msg.data[v6 + 64];
            v16.word2 = address(0x1000276a4);
            v7 = v17 = MEM[64];
            MEM[v17] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v14 = v18 = v17 + 4;
        }
    } else {
        v3 = v19 = 32;
        v1 = v20 = 7609;
        v21, v22 = 0x35d0(4 + rawData + 32, msg.data[4 + rawData], msg.data[4 + rawData]);
        require(v22 + v21 - v22 >= 448);
        require(v22 + v21 - (v22 + 32) >= 160);
        v8 = v23 = new struct(5);
        require(!((v23 + 160 > uint64.max) | (v23 + 160 < v23)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v22 + 32]) - msg.data[v22 + 32]));
        v23.word0 = msg.data[v22 + 32];
        require(!(address(msg.data[v22 + 32 + 32]) - msg.data[v22 + 32 + 32]));
        v23.word1 = msg.data[v22 + 32 + 32];
        require(!(msg.data[v22 + 32 + 64] - uint24(msg.data[v22 + 32 + 64])));
        v23.word2 = msg.data[v22 + 32 + 64];
        require(!(msg.data[v22 + 32 + 96] - int24(msg.data[v22 + 32 + 96])));
        v23.word3 = msg.data[v22 + 32 + 96];
        require(!(address(msg.data[v22 + 32 + 128]) - msg.data[v22 + 32 + 128]));
        v23.word4 = msg.data[v22 + 32 + 128];
        v7 = v24 = msg.data[v22 + 192];
        require(!(bool(v24) - v24));
        v7 = v25 = msg.data[v22 + 224];
        require(!(address(v25) - v25));
        v8 = v26 = msg.data[v22 + (uint8.max + 1)];
        require(!(bool(v26) - v26));
        v10 = v27 = msg.data[v22 + 288];
        require(!(address(v27) - v27));
        v10 = v28 = msg.data[v22 + 320];
        v7 = v29 = msg.data[v22 + 352];
        v10 = msg.data[v22 + 384];
        require(!(v10 - uint24(v10)));
        v7 = v30 = msg.data[v22 + 416];
        require(!(bool(v30) - v30));
        if (0 == v24) {
            MEM[0] = MEM[0];
            v12 = v31 = 0x3458();
            v31.word0 = bool(v24);
            v31.word1 = msg.data[v22];
            v31.word2 = address(0x000000000000000000000000fffd8963efd1fc6a506488495d951d5263988d25);
            v7 = v32 = MEM[64];
            MEM[v32] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v14 = v33 = v32 + 4;
        } else {
            v12 = v34 = 0x3458();
            v34.word0 = bool(v24);
            v34.word1 = msg.data[v22];
            v34.word2 = address(0x1000276a4);
            v7 = v35 = MEM[64];
            MEM[v35] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            v14 = v36 = v35 + 4;
        }
    }
    MEM[v14] = address(MEM[v8]);
    MEM[v14 + 32] = address(MEM[v8 + 32]);
    MEM[v14 + 64] = uint24(MEM[v8 + 64]);
    MEM[v14 + 96] = int24(MEM[v8 + 96]);
    MEM[v14 + 128] = address(MEM[128 + v8]);
    MEM[v14 + 160] = bool(MEM[v12]);
    MEM[v14 + 192] = MEM[v12 + 32];
    MEM[v14 + 224] = address(MEM[64 + v12]);
    MEM[v14 + (uint8.max + 1)] = 288;
    MEM[v14 + 288] = 0;
    // Unknown jump to Block ['0x1db9', '0x21b3']. Refer to 3-address code (TAC);
    v37 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v368cV0x2166:v368cV0x2166 + v370f_0x1 + 320 - v368cV0x2166], MEM[v368cV0x2166:v368cV0x2166 + v21b3_0x3]).gas(msg.gas);
    if (v37) {
        v38 = v39 = 0;
        if (v37) {
            v40 = v41 = 8483;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v42 = v43 = v7 + 32;
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    if (!v7) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v44 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v23.word0), this, int128(v38 >> 128)).gas(msg.gas);
        if (v44) {
            if (v44) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v45 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(MEM[v23 + 32])).gas(msg.gas);
            if (v45) {
                v46 = v47 = 64;
                v48 = v49 = 0;
                v50 = v51 = 0x19c3f;
                v52 = v53 = 0x19c7d;
                if (v45) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v54 = v55 = int128(v38);
            }
        }
    } else {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v56 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v23 + 32]), this, int128(v38)).gas(msg.gas);
        if (v56) {
            if (v56) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v57 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v23.word0)).gas(msg.gas);
            if (v57) {
                v46 = v58 = 64;
                v48 = v59 = 0;
                v50 = v60 = 0x19b63;
                v52 = v61 = 0x19ba1;
                if (v57) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v54 = v62 = v38 >> 128;
            }
        }
    }
    if (v48 == v8) {
        MEM[0] = MEM[0];
        v63 = v64 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v63 = v65 = 0x1000276a4;
    }
    v66 = new struct(8);
    v67 = v66.data;
    v66.word1 = 21;
    v66.word2 = address(v10);
    v66.word3 = v28;
    v66.word4 = v7;
    v66.word5 = uint24(v10);
    v66.word6 = bool(v30);
    v66.word7 = !address(v23.word0);
    // Unknown jump to Block ['0x19ba1', '0x19c7d']. Refer to 3-address code (TAC);
    v68 = v69 = uint8.max + 1;
    v66.word0 = 224;
    require(!((v66 + (uint8.max + 1) > uint64.max) | (v66 + (uint8.max + 1) < v66)), Panic(65)); // failed memory allocation (too much memory)
    // Unknown jump to Block ['0x19b63', '0x19c3f']. Refer to 3-address code (TAC);
    v70 = v71 = MEM[v46];
    MEM[v71] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[v71 + 4] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v71 + 4 + 32] = bool(v8);
    MEM[v71 + 4 + 64] = int128(v54);
    MEM[v71 + 4 + 96] = address(v63);
    MEM[v71 + 4 + 128] = 160;
    MEM[v71 + 4 + 160] = v66.word0.length;
    MCOPY(v71 + 4 + 160 + 32, v66.data, v66.word0.length);
    MEM[32 + (v66.word0.length + (v71 + 4 + 160))] = 0;
    v72 = v73 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v66.word0.length) + (v71 + 4 + 160) + 32;
    v74 = address(v25).call(MEM[v18ac70x207_0x1:v18ac70x207_0x1 + v1c0dV0x3821V0x19c3f - v18ac70x207_0x1], MEM[v18ac70x207_0x1:v18ac70x207_0x1 + v19c3f_0x5]).value(v48).gas(msg.gas);
    if (v74) {
        if (v74) {
            if (64 > RETURNDATASIZE()) {
                require(!((v70 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v70 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v70)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v70 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v75 = v70 + RETURNDATASIZE();
            } else {
                require(!((v70 + 64 > uint64.max) | (v70 + 64 < v70)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v70 + 64;
                v75 = v76 = v70 + 64;
            }
            require(v75 - v70 >= 64);
        }
    }
    v70 = v77 = MEM[v46];
    MEM[v77] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[v77 + 4] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v77 + 4 + 32] = bool(v8);
    MEM[v77 + 4 + 64] = int128(v54);
    MEM[v77 + 4 + 96] = address(v63);
    MEM[v77 + 4 + 128] = 160;
    MEM[v77 + 4 + 160] = v66.word0.length;
    MCOPY(v77 + 4 + 160 + 32, v66.data, v66.word0.length);
    MEM[32 + (v66.word0.length + (v77 + 4 + 160))] = 0;
    v72 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v66.word0.length) + (v77 + 4 + 160) + 32;
    // Unknown jump to Block 0x1f68. Refer to 3-address code (TAC);
    v68 = v78 = uint8.max + 1;
    v66.word0 = 224;
    // Unknown jump to Block 0x34130x207. Refer to 3-address code (TAC);
    require(!((v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v42 = v7 + RETURNDATASIZE();
    require(v42 - v7 >= 32);
    v38 = MEM[v7];
    // Unknown jump to Block ['0x2123', '0x2335', '0x2558']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1ddc. Refer to 3-address code (TAC);
    v79 = new uint256[](MEM[96]);
    MCOPY(v79.data, 128, MEM[96]);
    MEM[32 + (MEM[96] + v79)] = 0;
    return v79;
    v80 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v368cV0x2166:v368cV0x2166 + v370f_0x1 + 320 - v368cV0x2166], MEM[v368cV0x2166:v368cV0x2166 + v21b3_0x3]).gas(msg.gas);
    if (v80) {
        v38 = v81 = 0;
        if (v80) {
            v40 = v82 = 9560;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v42 = v83 = v7 + 32;
            }
        }
    }
    if (!v7) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v84 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v8]), address(v10), int128(v38 >> 128)).gas(msg.gas);
        if (v84) {
            if (v84) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v85 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(MEM[v8 + 32])).gas(msg.gas);
            if (v85) {
                v86 = v87 = 9488;
                v88 = v89 = 0x19ed3;
                if (v85) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v90 = v91 = int128(v38);
            }
        }
    } else {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v92 = 0x4444c5dc75cb358380d2e3de08a90.take(address(MEM[v8 + 32]), address(v10), int128(v38)).gas(msg.gas);
        if (v92) {
            if (v92) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            if (address(MEM[v8])) {
                require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                v93 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(MEM[v8])).gas(msg.gas);
                if (v93) {
                    if (v93) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                }
            }
            v88 = v94 = 0x19dc8;
            v86 = v95 = 8826;
            v90 = v96 = v38 >> 128;
        }
    }
    require(int128(v90) != int128.min, Panic(17)); // arithmetic overflow or underflow
    // Unknown jump to Block ['0x19dc8', '0x19ed3']. Refer to 3-address code (TAC);
    v97 = v98 = int128(0 - int128(v90));
    if (address(MEM[v8])) {
        0x4717(v97);
        v7 = v99 = MEM[64];
        v100 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        if (v100) {
            if (!v100) {
            }
        }
    } else {
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        MEM[0] = MEM[0];
        v101 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v7).gas(msg.gas);
        if (v101) {
            if (v101) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            v7 = v102 = MEM[64];
            v103 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v97).gas(msg.gas);
            if (v103) {
                if (v103) {
                    // Unknown jump to Block 0x231d. Refer to 3-address code (TAC);
                }
            }
        }
    }
    v40 = v104 = 9013;
    if (32 <= RETURNDATASIZE()) {
        require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v7 + 32;
        v42 = v105 = v7 + 32;
    }
    v97 = v106 = int128(0 - int128(v90));
    // Unknown jump to Block 0x227c. Refer to 3-address code (TAC);
}

function 0x749d3c3b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    _unlockCallback = 1;
    v0 = 0x38de(varg7);
    if (!v0) {
        v1 = v2 = 0xfffff & varg7 >> 88;
        v1 = v3 = 0x343a();
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = address(varg0);
        v1 = v4 = v3 + 96;
        v3.word3 = bool(varg1);
        0x3aa8(v3);
        v5 = 0x3ac6(address(v3.word2));
        v3.word1 = uint128(v5);
        v6 = v7 = varg7 >> 108 & 0xfffff;
        v6 = v8 = 0x343a();
        v8.word0 = 0;
        v8.word1 = 0;
        v8.word2 = address(varg2);
        v6 = v9 = v8 + 96;
        v8.word3 = bool(varg3);
        0x3aa8(v8);
        v10 = 0x3ac6(address(v8.word2));
        v8.word1 = uint128(v10);
        v11, v12 = 0x3c89(varg4);
        v1 = v13 = 0x343a();
        v13.word0 = v12;
        v1 = v14 = v13 + 32;
        v13.word1 = v11;
        v13.word2 = address(varg4);
        v1 = v15 = v13 + 96;
        v13.word3 = bool(varg5);
        v16 = v17 = MEM[64];
        MEM[0] = MEM[0];
        v18 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v18) {
            v6 = v19 = 6748;
            v20 = v21 = 0x19764;
            v22 = v23 = 0;
            if (v18) {
                v24 = v25 = 5404;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v17 + 32 > uint64.max) | (v17 + 32 < v17)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v17 + 32;
                    v26 = v27 = v17 + 32;
                }
            } else {
                v28 = v29 = this.balance;
            }
            require(!((v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v26 = v16 + RETURNDATASIZE();
            require(v26 - v16 >= 32);
            v22 = MEM[v16];
            // Unknown jump to Block ['0x151c0x20c', '0x51410x20c']. Refer to 3-address code (TAC);
            v28 = this.balance;
            v30 = _SafeAdd(v22, this.balance);
            v31 = _SafeSub(v30, v6);
            if (!v32) {
                v33 = _SafeSub(v1, msg.gas);
                v34 = 0x34f5(v33);
                v35 = _SafeMul(v36, v34);
                require(v35 < v31, Error(52));
                v37 = 0x34f5(msg.gas);
                require(v37 >= msg.gas, Error(13665));
                // Unknown jump to Block ['0x1b8760x20c', '0x1ba140x20c']. Refer to 3-address code (TAC);
            } else {
                v38 = _SafeSub(v1, msg.gas);
                v39 = 0x3504(v38);
                v40 = _SafeMul(v36, v39);
                require(v40 < v31, Error(52));
                v41 = _SafeSub(v31, v40);
                require(v32 <= 1000);
                v42 = _SafeMul(v41, v32);
                v43 = _SafeSub(v41, v42 / 1000);
                if (this.balance <= v42 / 1000) {
                    MEM[0] = MEM[0];
                    v44 = 0x34bd(v22);
                    0x5833(v44, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v42 / 1000) {
                    v45 = block.coinbase.call().value(v42 / 1000).gas(10000);
                }
                v46 = 0x3504(msg.gas);
                require(v46 >= msg.gas, Error(13666));
                // Unknown jump to Block ['0x1b8760x20c', '0x1ba140x20c']. Refer to 3-address code (TAC);
            }
            exit;
            exit;
            v6 = v47 = v22 + v28;
            require(v22 <= v47, Panic(17)); // arithmetic overflow or underflow
            v6 = v48 = 0x1bd28;
            v6 = v49 = 0x1bd70;
            v50 = v51 = 0x517a(address(MEM[v1]) * address(MEM[v1]), address(MEM[v1]) * address(MEM[v1]) % uint256.max - address(MEM[v1]) * address(MEM[v1]) - (address(MEM[v1]) * address(MEM[v1]) % uint256.max < address(MEM[v1]) * address(MEM[v1])));
            if (!v6) {
                v50 = v52 = _SafeDiv(uint192.max + 1, v51);
                v53 = address(v8.word0);
            } else {
                v53 = v54 = address(v8.word0);
            }
            v55 = v53 * v53 % uint256.max - 0 - (v53 * v53 % uint256.max < 0);
            v1 = v56 = 0 - (v55 * uint256.max % (uint96.max + 1) + v55) % (uint96.max + 1) % (uint96.max + 1) >> 96 | v55 - (0 < (v55 * uint256.max % (uint96.max + 1) + v55) % (uint96.max + 1) % (uint96.max + 1)) << 160;
            if (v55 != 0 < (v55 * uint256.max % (uint96.max + 1) + v55) % (uint96.max + 1) % (uint96.max + 1)) {
            }
            if (!v32) {
                v1 = v57 = _SafeDiv(uint192.max + 1, v56);
            }
            if (!v36) {
                v1 = v58 = 0x4ea4(v13.word0, MEM[v1]);
            } else {
                v1 = v59 = 0x4ea4(MEM[v1], v13.word0);
            }
            v1 = v60 = uint96.max + 1;
            while (1) {
                v61 = v50 * v1;
                v62 = v50 * v1 % uint256.max - v61 - (v50 * v1 % uint256.max < v61);
                if (uint96.max + 1 <= v62) {
                    break;
                } else {
                    if (v50 * v1 % uint256.max - v61 == v50 * v1 % uint256.max < v61) {
                        v50 = v61 >> 96;
                        // Unknown jump to Block ['0x1bd280x20c', '0x1bd700x20c']. Refer to 3-address code (TAC);
                    } else {
                        v50 = v61 - v50 * v1 % (uint96.max + 1) >> 96 | v62 - (v50 * v1 % (uint96.max + 1) > v61) << 160;
                        // Unknown jump to Block ['0x1bd280x20c', '0x1bd700x20c']. Refer to 3-address code (TAC);
                    }
                    continue;
                }
            }
            if (v50 <= v1) {
                v1 = v63 = 0x198a3;
                v64 = v65 = 6096;
                v66 = v67 = 0x198c4;
                v68 = v69 = 7005;
                v70 = v71 = 0x19977;
                MEM[v1] = bool(!MEM[v1]);
                if (bool(MEM[v1])) {
                    v72 = v73 = 0x19a1f;
                    v74 = address(MEM[v1]) >> 48;
                } else {
                    v72 = v75 = 0x1999a;
                    v76 = v77 = 6992;
                    v78 = v79 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v80 = address(MEM[v1]) >> 48;
                    // Unknown jump to Block 0x35200x20c. Refer to 3-address code (TAC);
                }
            } else {
                v1 = v81 = 0x197aa;
                v64 = v82 = 5856;
                v66 = v83 = 0x197cb;
                v68 = v84 = 6843;
                v70 = v85 = 0x19811;
                if (bool(MEM[v1])) {
                    v72 = v86 = 0x1987e;
                    v74 = v87 = address(MEM[v1]) >> 48;
                } else {
                    v72 = v88 = 0x19834;
                    v76 = v89 = 6830;
                    v78 = v90 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v80 = v91 = address(MEM[v1]) >> 48;
                }
            }
            require(v80, Panic(18)); // division by zero
            v74 = v92 = v78 / v80;
            // Unknown jump to Block ['0x1aae0x20c', '0x1b500x20c']. Refer to 3-address code (TAC);
            MEM[v1] = address(v74);
            // Unknown jump to Block ['0x1999a0x20c', '0x19a1f0x20c']. Refer to 3-address code (TAC);
            MEM[v6] = bool(!MEM[v6]);
            v93 = bool(MEM[v6]);
            if (bool(v93)) {
                MEM[v6] = address(address(MEM[v6]) >> 48);
                MEM[v1] = bool(!MEM[v1]);
                v94 = v95 = bool(MEM[v1]);
                // Unknown jump to Block 0x19977. Refer to 3-address code (TAC);
            } else {
                v96 = _SafeMul(uint48.max + 1, uint48.max + 1);
                v97 = _SafeDiv(v96, address(MEM[v6]) >> 48);
                MEM[v6] = address(v97);
                MEM[v1] = bool(!MEM[v1]);
                v94 = bool(MEM[v1]);
            }
            if (!v94) {
                MEM[v1] = MEM[v1];
                MEM[v1] = MEM[v1];
            }
            v98 = 0x59ac(MEM[v1] * MEM[v1 + 32]);
            v99 = uint128(uint128(MEM[v6 + 32]) * uint128(MEM[v1 + 32]));
            v100 = address(address(MEM[v6]) * address(MEM[v1]));
            v101 = address(address(address(MEM[v6]) ** 2) * address(MEM[v1])) * MEM[v1 + 32];
            v102 = 0x57ed((v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99 * v100 % uint256.max - (v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99 * v100 - ((v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99 * v100 % uint256.max < (v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99 * v100) + ((v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99 % uint256.max - (v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99 - ((v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99 % uint256.max < (v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99) + (v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) % uint256.max - v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - (v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) % uint256.max < v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32])) - (v98 * v6 * 0x5f5e100000000000000000000000000 % uint256.max - v98 * v6 * 0x5f5e100000000000000000000000000 - (v98 * v6 * 0x5f5e100000000000000000000000000 % uint256.max < v98 * v6 * 0x5f5e100000000000000000000000000) + (v98 * v6 % uint256.max - v98 * v6 - (v98 * v6 % uint256.max < v98 * v6)) * 0x5f5e100000000000000000000000000) - (v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) < v98 * v6 * 0x5f5e100000000000000000000000000)) * v99) * v100, (v1 * v6 * v1 * address(MEM[v6]) * (address(MEM[v1]) * MEM[v1 + 32]) - v98 * v6 * 0x5f5e100000000000000000000000000) * v99 * v100, (uint128(MEM[v6 + 32]) * v6 * v1 * v101 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) + (10 ** 12 * v99 << 144)) * (v1 << 48) % uint256.max - (uint128(MEM[v6 + 32]) * v6 * v1 * v101 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) + (10 ** 12 * v99 << 144)) * (v1 << 48) - ((uint128(MEM[v6 + 32]) * v6 * v1 * v101 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) + (10 ** 12 * v99 << 144)) * (v1 << 48) % uint256.max < (uint128(MEM[v6 + 32]) * v6 * v1 * v101 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) + (10 ** 12 * v99 << 144)) * (v1 << 48)) + (uint128(MEM[v6 + 32]) * v6 * v1 * v101 % uint256.max - uint128(MEM[v6 + 32]) * v6 * v1 * v101 - (uint128(MEM[v6 + 32]) * v6 * v1 * v101 % uint256.max < uint128(MEM[v6 + 32]) * v6 * v1 * v101) + (uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) % uint256.max - uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) - (uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) % uint256.max < uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96))) + (uint128(MEM[v6 + 32]) * v6 * v1 * v101 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) < uint128(MEM[v6 + 32]) * v6 * v1 * v101) + (10 ** 12 * v99 * (uint144.max + 1) % uint256.max - (10 ** 12 * v99 << 144) - (10 ** 12 * v99 * (uint144.max + 1) % uint256.max < 10 ** 12 * v99 << 144) + (10 ** 12 * v99 % uint256.max - 10 ** 12 * v99 - (10 ** 12 * v99 % uint256.max < 10 ** 12 * v99) << 144)) + (uint128(MEM[v6 + 32]) * v6 * v1 * v101 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) + (10 ** 12 * v99 << 144) < uint128(MEM[v6 + 32]) * v6 * v1 * v101 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96))) * (v1 << 48), (uint128(MEM[v6 + 32]) * v6 * v1 * v101 + uint128(10 ** 6 * uint128(MEM[v1 + 32])) * v6 * (address(MEM[v6]) * MEM[v1 + 32] << 96) + (10 ** 12 * v99 << 144)) * (v1 << 48));
            v103, v104, v105, v106, v107 = 0x487e(bool(MEM[v1 + 96]), 18564, 18571, v6, v1);
            if (bool(!MEM[v1 + 96])) {
                MEM[0] = MEM[0];
                v108 = v109 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v108 = 0x1000276a4;
            }
            v110 = 0x34ad(v1);
            v111 = new struct(9);
            v112 = v111.data;
            v111.word1 = 15;
            v111.word2 = address(MEM[v105 + 64]);
            v111.word3 = bool(MEM[v105 + 96]);
            v111.word4 = address(MEM[v106 + 64]);
            v111.word5 = MEM[v106];
            v111.word6 = MEM[v1 + 32];
            v111.word7 = v110;
            v111.word8 = bool(MEM[v106 + 96]);
            v111.word0 = uint8.max + 1;
            require(!((v111 + 288 > uint64.max) | (v111 + 288 < v111)), Panic(65)); // failed memory allocation (too much memory)
            v113 = MEM[64];
            v114 = new bytes[](v111.word0.length);
            MCOPY(v114.data, v111.data, v111.word0.length);
            v114[v111.word0.length] = 0;
            v115 = address(MEM[v1 + 64]).swap(address(this), bool(v107), v103, address(v108), v114).gas(msg.gas);
            if (v115) {
                v6 = v116 = 0x1ba14;
                if (!v115) {
                }
            }
            MEM[v6] = bool(!MEM[v6]);
            v93 = v117 = bool(MEM[v6]);
            // Unknown jump to Block 0x198c4. Refer to 3-address code (TAC);
            MEM[v1] = address(v74);
            // Unknown jump to Block ['0x198340x20c', '0x1987e0x20c']. Refer to 3-address code (TAC);
            v118 = bool(MEM[v6]);
            if (bool(v118)) {
                MEM[v6] = address(address(MEM[v6]) >> 48);
                v119 = v120 = bool(MEM[v1]);
                // Unknown jump to Block 0x19811. Refer to 3-address code (TAC);
            } else {
                v121 = _SafeMul(uint48.max + 1, uint48.max + 1);
                v122 = _SafeDiv(v121, address(MEM[v6]) >> 48);
                MEM[v6] = address(v122);
                v119 = bool(MEM[v1]);
            }
            if (!v119) {
                MEM[v1] = MEM[v1];
                MEM[v1] = MEM[v1];
            }
            v123 = v1 * (v1 * v6) * address(MEM[v1]);
            v124 = 0x59ac(MEM[v1] * MEM[v1 + 32]);
            v125 = uint128(MEM[v6 + 32]) * v1 * address(MEM[v6]) + 10000 * (MEM[v1] << 48);
            v126 = 0x57ed((v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]) * address(MEM[v6]) % uint256.max - (v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]) * address(MEM[v6]) - ((v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]) * address(MEM[v6]) % uint256.max < (v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]) * address(MEM[v6])) + ((v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]) % uint256.max - (v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]) - ((v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]) % uint256.max < (v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32])) + ((v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) % uint256.max - (v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) - ((v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) % uint256.max < (v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32])) + (v123 * (MEM[v1 + 32] * address(MEM[v6])) % uint256.max - v123 * (MEM[v1 + 32] * address(MEM[v6])) - (v123 * (MEM[v1 + 32] * address(MEM[v6])) % uint256.max < v123 * (MEM[v1 + 32] * address(MEM[v6]))) - (10 ** 8 * (v6 * v124) * (uint96.max + 1) % uint256.max - (10 ** 8 * (v6 * v124) << 96) - (10 ** 8 * (v6 * v124) * (uint96.max + 1) % uint256.max < 10 ** 8 * (v6 * v124) << 96)) - (v123 * (MEM[v1 + 32] * address(MEM[v6])) < 10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32])) * uint128(MEM[v6 + 32])) * address(MEM[v6]), (v123 * (MEM[v1 + 32] * address(MEM[v6])) - (10 ** 8 * (v6 * v124) << 96)) * uint128(MEM[v1 + 32]) * uint128(MEM[v6 + 32]) * address(MEM[v6]), (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 + uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144)) * v1 % uint256.max - (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 + uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144)) * v1 - ((v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 + uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144)) * v1 % uint256.max < (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 + uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144)) * v1) + (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 % uint256.max - v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 - (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 % uint256.max < v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125) + (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) % uint256.max - v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) - (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) % uint256.max < v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])))) * v125 + (uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144) % uint256.max - uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144) - (uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144) % uint256.max < uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144))) + (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 + uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144) < v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125)) * v1, (v6 * uint128(MEM[v1 + 32]) * address(address(MEM[v1]) * address(MEM[v6])) * v125 + uint128(10 ** 10 * uint128(MEM[v6 + 32])) * (MEM[v1] << 144)) * v1);
            v127 = 0x34ad(v1);
            v128 = _SafeDiv(MEM[v1] * v126 * 10000, (MEM[v1 + 32] - v126) * (10000 - v127));
            v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139 = 0x49f1(bool(MEM[v6 + 96]), 18935, 18942, v1, 0x1bece, v1, 0x1be93, v1 + 64, 17114, address(MEM[v1 + 64]), 0);
            if (v138 == bool(MEM[v6 + 96])) {
                MEM[0] = MEM[0];
                v140 = v141 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v140 = 0x1000276a4;
            }
            v142 = new struct(7);
            v143 = v142.data;
            v142.word1 = 9;
            v142.word2 = address(MEM[64 + v133]);
            v142.word3 = bool(MEM[v133 + 96]);
            v142.word4 = address(MEM[v135]);
            v142.word5 = v126;
            v142.word6 = bool(MEM[v131 + 96]);
            v142.word0 = 192;
            require(!((v142 + uint8(-32) > uint64.max) | (v142 + uint8(-32) < v142)), Panic(65)); // failed memory allocation (too much memory)
            v113 = v144 = MEM[64];
            v145 = new bytes[](v142.word0.length);
            MCOPY(v145.data, v142.data, v142.word0.length);
            v145[v142.word0.length] = 0;
            v146 = address(MEM[v6 + 64]).swap(address(v137), bool(v139), v129, address(v140), v145).value(v138).gas(msg.gas);
            if (v146) {
                v6 = v147 = 0x1b876;
                if (v146) {
                    // Unknown jump to Block 0x42f40x20c. Refer to 3-address code (TAC);
                }
            }
            v32 = v148 = 0x3ff & v6 >> 50;
            v1 = v149 = uint24(v6 >> 60);
            v36 = v150 = 0x3ffffffffffff & v6;
            v16 = MEM[64];
            MEM[0] = MEM[0];
            v151 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v151) {
                v22 = v152 = 0;
                if (v151) {
                    v20 = v153 = 20485;
                    v24 = v154 = 20801;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v16 + 32 > uint64.max) | (v16 + 32 < v16)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v16 + 32;
                        v26 = v155 = v16 + 32;
                    }
                }
            }
            if (64 > RETURNDATASIZE()) {
                require(!((v113 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v113 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v113)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v113 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v156 = v113 + RETURNDATASIZE();
            } else {
                require(!((v113 + 64 > uint64.max) | (v113 + 64 < v113)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v113 + 64;
                v156 = v157 = v113 + 64;
            }
            require(v156 - v113 >= 64);
            v118 = v158 = bool(MEM[v6]);
            // Unknown jump to Block 0x197cb. Refer to 3-address code (TAC);
            revert();
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x6fe055ca(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(bool(varg6) - varg6));
    _unlockCallback = 1;
    revert();
}

function 0x6f5aeea3(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    v0, /* uint256 */ v1 = address(varg0).balanceOf(this).gas(msg.gas);
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
    require(v1 - 1 <= v1, Panic(17)); // arithmetic overflow or underflow
    v5 = new bytes[](68);
    MEM[v5.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v5 + 36] = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54;
    MEM[v5 + 68] = v1 - 1;
    require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v5.length;
    v7 = v8, /* uint256 */ v9 = varg0.transfer(0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54, v1 - 1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v10 = v11 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v10 = new bytes[](RETURNDATASIZE());
        require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
        v9 = v10.data;
        RETURNDATACOPY(v9, 0, RETURNDATASIZE());
    }
    if (v8) {
        v7 = v12 = !MEM[v10];
        if (bool(MEM[v10])) {
            require(v10 + MEM[v10] - v10 >= 32);
            v7 = v13 = MEM[v10 + 32];
            require(!(bool(v13) - v13));
        }
    }
    require(v7, Error(21574));
}

function 0x6b40136c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    _unlockCallback = 1;
    v0 = 0x38de(varg7);
    if (!v0) {
        v1 = v2 = 0xfffff & varg7 >> 88;
        v3, v4 = 0x3c89(varg0);
        v1 = v5 = 0x343a();
        v5.word0 = v4;
        v5.word1 = v3;
        v5.word2 = address(varg0);
        v5.word3 = bool(varg1);
        v6 = v7 = 5682;
        v1 = v8 = 0xfffff & varg7 >> 108;
        v9 = v10 = 5636;
        v11 = v12 = 5620;
        v13 = v14 = 0x192db;
        v15 = v16 = 0x19306;
        v1 = v17 = 0x343a();
        v17.word0 = 0;
        v17.word1 = 0;
        v18 = v19 = v17 + 64;
        v17.word2 = address(varg2);
        v17.word3 = bool(varg3);
        v20 = v17.word2.slot0().gas(msg.gas);
        require(v20);
        while (1) {
            v21 = address(MEM[v18]);
            // Unknown jump to Block ['0x19306', '0x458a0x21b']. Refer to 3-address code (TAC);
            v22 = v23 = bool(MEM[v24 + v13]);
            v25 = v26 = address(MEM[v27 + v28]);
            v29 = v30 = MEM[v28];
            v31 = v32 = MEM[v6];
            v33 = v34 = 0x34ad(v9);
            v35 = v36 = bool(MEM[v28 + 96]);
            v37 = new struct(10);
            v38 = v37.data;
            v37.word1 = 17;
            v37.word2 = v1;
            v37.word3 = address(v21);
            v37.word4 = bool(v22);
            v37.word5 = address(v25);
            v37.word6 = v29;
            v37.word7 = v31;
            v37.word8 = v33;
            v37.word9 = bool(v35);
            // Unknown jump to Block ['0x1bab3', '0x1bb83']. Refer to 3-address code (TAC);
            v39 = v40 = 320;
            v37.word0 = 288;
            require(!((v37 + 320 > uint64.max) | (v37 + 320 < v37)), Panic(65)); // failed memory allocation (too much memory)
            // Unknown jump to Block ['0x1bb21', '0x1bbf1']. Refer to 3-address code (TAC);
            v41 = v42 = MEM[v1];
            MEM[v42] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            v43 = v44 = v42 + 4;
            MEM[v43] = address(v1);
            MEM[v43 + 32] = bool(v1);
            MEM[v43 + 64] = v45;
            MEM[v43 + 96] = address(v1);
            MEM[v43 + 128] = 160;
            MEM[v43 + 160] = v37.word0.length;
            MCOPY(v43 + 160 + 32, v37.data, v37.word0.length);
            MEM[32 + (v37.word0.length + (v43 + 160))] = 0;
            v46 = v1.call(MEM[v1b8970x21b_0x1:v1b8970x21b_0x1 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v45b8.word0.length + v38750x21b_0x0 + 160 + 32 - v1b8970x21b_0x1], MEM[v1b8970x21b_0x1:v1b8970x21b_0x1 + v44d70x1c2f8_0x0V0x44ac]).value(v1).gas(msg.gas);
            if (!v46) {
                break;
            } else {
                v47 = v48 = 0x1b876;
                if (v46) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v41 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v41 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v41)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v41 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v49 = v41 + RETURNDATASIZE();
                    } else {
                        require(!((v41 + 64 > uint64.max) | (v41 + 64 < v41)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v41 + 64;
                        v49 = v50 = v41 + 64;
                    }
                    require(v49 - v41 >= 64);
                    break;
                } else {
                    break;
                }
                v28 = v51 = 0x3ff & v1 >> 50;
                v1 = v52 = uint24(v1 >> 60);
                v45 = v53 = 0x3ffffffffffff & v1;
                v54 = MEM[64];
                MEM[0] = MEM[0];
                v55 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                if (!v55) {
                    break;
                } else {
                    v56 = v57 = 0;
                    if (v55) {
                        v58 = v59 = 20485;
                        v60 = v61 = 20801;
                        if (32 > RETURNDATASIZE()) {
                            break;
                        } else {
                            require(!((v54 + 32 > uint64.max) | (v54 + 32 < v54)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v54 + 32;
                            v62 = v63 = v54 + 32;
                        }
                    } else {
                        break;
                    }
                }
            }
            v41 = v64 = MEM[v1];
            MEM[v64] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            v43 = v65 = v64 + 4;
            // Unknown jump to Block 0x38750x21b. Refer to 3-address code (TAC);
            v39 = v66 = 320;
            v37.word0 = 288;
            // Unknown jump to Block 0x34130x21b. Refer to 3-address code (TAC);
            v67 = 0x3ac6(v21);
            MEM[v1 + 32] = uint128(v67);
            v68, v69 = 0x3c89(v24);
            v1 = v70 = 0x343a();
            v70.word0 = v69;
            v1 = v71 = v70 + 32;
            v70.word1 = v68;
            v70.word2 = address(v24);
            v1 = v72 = v70 + 96;
            v70.word3 = bool(v45);
            v54 = v73 = MEM[64];
            MEM[0] = MEM[0];
            v74 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (!v74) {
                break;
            } else {
                v1 = v75 = 5804;
                v58 = v76 = 5766;
                v56 = v77 = 0;
                if (v74) {
                    v60 = v78 = 5404;
                    if (32 > RETURNDATASIZE()) {
                        break;
                    } else {
                        require(!((v73 + 32 > uint64.max) | (v73 + 32 < v73)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v73 + 32;
                        v62 = v79 = v73 + 32;
                    }
                } else {
                    v80 = v81 = this.balance;
                }
            }
            require(!((v54 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v54 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v54)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v54 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v62 = v54 + RETURNDATASIZE();
            require(v62 - v54 >= 32);
            v56 = MEM[v54];
            // Unknown jump to Block ['0x151c0x21b', '0x51410x21b']. Refer to 3-address code (TAC);
            v80 = this.balance;
            break;
            v1 = v82 = v56 + v80;
            require(v56 <= v82, Panic(17)); // arithmetic overflow or underflow
            v1 = v83 = 0x1b3c2;
            v1 = v84 = 0x1b3e6;
            if (0 == v47) {
                v85 = v86 = 0x4ea4(MEM[v1], MEM[v1 + 32]);
            } else {
                v85 = v87 = 0x4ea4(MEM[v1 + 32], MEM[v1]);
            }
            v88 = address(MEM[v1]) * address(MEM[v1]) % uint256.max;
            v89 = address(MEM[v1]) * address(MEM[v1]);
            v1 = v90 = v89 - (((v88 - v89 - (v88 < v89)) * uint256.max % (uint96.max + 1) + (v88 - v89 - (v88 < v89))) % (uint96.max + 1) + v89) % (uint96.max + 1) >> 96 | v88 - v89 - (v88 < v89) - (v89 < (((v88 - v89 - (v88 < v89)) * uint256.max % (uint96.max + 1) + (v88 - v89 - (v88 < v89))) % (uint96.max + 1) + v89) % (uint96.max + 1)) << 160;
            if (v88 - v89 - (v88 < v89) == v89 < (((v88 - v89 - (v88 < v89)) * uint256.max % (uint96.max + 1) + (v88 - v89 - (v88 < v89))) % (uint96.max + 1) + v89) % (uint96.max + 1)) {
                break;
            }
            if (!v28) {
                v1 = v91 = _SafeDiv(uint192.max + 1, v90);
            } else {
                break;
            }
            if (!v45) {
                v1 = v92 = 0x4ea4(MEM[v1], MEM[v1]);
            } else {
                v1 = v93 = 0x4ea4(MEM[v1], MEM[v1]);
            }
            v1 = v94 = uint96.max + 1;
            while (1) {
                v95 = v85 * v1 % uint256.max - v85 * v1 - (v85 * v1 % uint256.max < v85 * v1);
                if (uint96.max + 1 <= v95) {
                    break;
                } else {
                    if (v85 * v1 % uint256.max - v85 * v1 == v85 * v1 % uint256.max < v85 * v1) {
                        v85 = v85 * v1 >> 96;
                        // Unknown jump to Block ['0x1b3c2', '0x1b3e6']. Refer to 3-address code (TAC);
                    } else {
                        v96 = v85 * v1 % (uint96.max + 1);
                        v85 = v85 * v1 - v96 >> 96 | v95 - (v96 > v85 * v1) << 160;
                        // Unknown jump to Block ['0x1b3c2', '0x1b3e6']. Refer to 3-address code (TAC);
                    }
                    continue;
                }
            }
            if (v85 <= v1) {
                v1 = v97 = 0x194f7;
                v98 = !MEM[v1 + 96];
                MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                if (bool(!MEM[v1 + 96])) {
                    MEM[v1] = MEM[v1 + 32];
                    MEM[v1 + 32] = MEM[v1];
                    break;
                } else {
                    break;
                }
                MEM[v1 + 96] = bool(!MEM[v1 + 96]);
                if (bool(MEM[v1 + 96])) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    MEM[v1] = bool(!MEM[v1]);
                    v99 = v100 = bool(MEM[v1]);
                } else {
                    v101 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v102 = _SafeDiv(v101, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v102);
                    MEM[v1] = bool(!MEM[v1]);
                    v99 = bool(MEM[v1]);
                }
                if (!v99) {
                    MEM[v1] = MEM[v1];
                    MEM[v1] = MEM[v1];
                    break;
                } else {
                    break;
                }
            } else {
                v1 = v103 = 0x1934d;
                if (bool(!MEM[v1 + 96])) {
                    MEM[v1] = MEM[v1 + 32];
                    MEM[v1 + 32] = MEM[v1];
                    break;
                } else {
                    break;
                }
                if (bool(MEM[v1 + 96])) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                    v104 = v105 = bool(MEM[v1]);
                } else {
                    v106 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v107 = _SafeDiv(v106, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v107);
                    v104 = bool(MEM[v1]);
                }
                if (!v104) {
                    MEM[v1] = MEM[v1];
                    MEM[v1] = MEM[v1];
                    break;
                } else {
                    break;
                }
            }
            v6 = v108 = v1 + 32;
            v109 = MEM[v1];
            v110 = MEM[v108] * MEM[v1 + 32];
            v111 = address(MEM[v1]) * (v1 * (v1 * v1));
            v112 = v109 * MEM[v1 + 32];
            v113 = 0x585f(MEM[v1] * MEM[v108] * v112, MEM[v1] * MEM[v108] * v112 % uint256.max - MEM[v1] * MEM[v108] * v112 - (MEM[v1] * MEM[v108] * v112 % uint256.max < MEM[v1] * MEM[v108] * v112));
            v114 = v113 * v1 * 0x989680000000000000;
            v115 = uint128(MEM[v1 + 32]) * v1 * v1;
            v116 = 10000 * (v1 * address(MEM[v1])) * (v109 * MEM[v108] << 48);
            v1 = 0x57ed((v111 * v110 - v114) * address(uint128(MEM[v1 + 32]) * address(MEM[v1])) % uint256.max - (v111 * v110 - v114) * address(uint128(MEM[v1 + 32]) * address(MEM[v1])) - ((v111 * v110 - v114) * address(uint128(MEM[v1 + 32]) * address(MEM[v1])) % uint256.max < (v111 * v110 - v114) * address(uint128(MEM[v1 + 32]) * address(MEM[v1]))) + (v111 * v110 % uint256.max - v111 * v110 - (v111 * v110 % uint256.max < v111 * v110) - (v113 * v1 * 0x989680000000000000 % uint256.max - v114 - (v113 * v1 * 0x989680000000000000 % uint256.max < v114)) - (v111 * v110 < v114)) * address(uint128(MEM[v1 + 32]) * address(MEM[v1])), (v111 * v110 - v114) * address(uint128(MEM[v1 + 32]) * address(MEM[v1])), (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) + (v116 + v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]))) * v1 % uint256.max - (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) + (v116 + v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]))) * v1 - ((uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) + (v116 + v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]))) * v1 % uint256.max < (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) + (v116 + v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]))) * v1) + (v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]) % uint256.max - v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]) - (v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]) % uint256.max < v115 * (address(address(MEM[v1]) ** 2) * MEM[v108])) + (10000 * (v1 * address(MEM[v1])) * (v109 * MEM[v108] << 48) % uint256.max - v116 - (10000 * (v1 * address(MEM[v1])) * (v109 * MEM[v108] << 48) % uint256.max < v116)) + (v116 + v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]) < v116) + (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) % uint256.max - uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) - (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) % uint256.max < uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96))) + (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) + (v116 + v115 * (address(address(MEM[v1]) ** 2) * MEM[v108])) < uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96))) * v1, (uint128(10 ** 10 * uint128(MEM[v1 + 32])) * (v109 << 96) + (v116 + v115 * (address(address(MEM[v1]) ** 2) * MEM[v108]))) * v1);
            v117 = 0x34ad(v1);
            v118 = _SafeDiv(MEM[v1] * v1 * 10000, (MEM[v1 + 32] - v1) * (10000 - v117));
            v1 = v119 = address(MEM[v1 + 64]);
            v45 = v120, v121, v18 = v122, v24 = v123, v9 = v124, v1 = v125, v28 = v126, v1 = v127 = 0x454c(bool(MEM[v1 + 96]), 17746, 17753, v1 + 64, v1, v1, address(MEM[v1 + 64]), v1);
            if (bool(!MEM[v1 + 96])) {
                MEM[0] = MEM[0];
                v47 = v128 = 0x1bb83;
                v1 = v27 = 64;
                v1 = v129 = 0;
                v1 = v130 = 17114;
                v11 = v131 = 0x1bbb0;
                v13 = v132 = 96;
                v15 = v133 = 17802;
                v1 = v134 = 0x1bbf1;
                v1 = v135 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v1 = v136 = 0x1000276a4;
                v47 = v137 = 0x1bab3;
                v1 = v138 = 64;
                v1 = v139 = 0;
                v1 = v140 = 17114;
                v1 = v141 = 0x1bb21;
                v21 = v142 = address(MEM[v122]);
                v22 = bool(MEM[v123 + 96]);
                v25 = v143 = address(MEM[v138 + v126]);
                v29 = v144 = MEM[v126];
                v31 = v145 = MEM[v108];
                v33 = v146 = 0x34ad(v124);
                v35 = v147 = bool(MEM[v126 + 96]);
                // Unknown jump to Block 0x45b4. Refer to 3-address code (TAC);
            }
            revert();
        }
        v148 = _SafeAdd(v56, this.balance);
        v149 = _SafeSub(v148, v1);
        if (!v28) {
            v150 = _SafeSub(v1, msg.gas);
            v151 = 0x34f5(v150);
            v152 = _SafeMul(v45, v151);
            require(v152 < v149, Error(52));
            v153 = 0x34f5(msg.gas);
            require(v153 >= msg.gas, Error(13665));
        } else {
            v154 = _SafeSub(v1, msg.gas);
            v155 = 0x3504(v154);
            v156 = _SafeMul(v45, v155);
            require(v156 < v149, Error(52));
            v157 = _SafeSub(v149, v156);
            require(v28 <= 1000);
            v158 = _SafeMul(v157, v28);
            v159 = _SafeSub(v157, v158 / 1000);
            if (this.balance <= v158 / 1000) {
                MEM[0] = MEM[0];
                v160 = 0x34bd(v56);
                0x5833(v160, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            }
            if (v158 / 1000) {
                v161 = block.coinbase.call().value(v158 / 1000).gas(10000);
            }
            v162 = 0x3504(msg.gas);
            require(v162 >= msg.gas, Error(13666));
            // Unknown jump to Block 0x1b8760x21b. Refer to 3-address code (TAC);
        }
        // Unknown jump to Block ['0x1934d', '0x194f7']. Refer to 3-address code (TAC);
        exit;
        exit;
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x58c16b82(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(bool(varg3) - varg3));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    _unlockCallback = 1;
    v0 = 0x38de(varg7);
    if (!v0) {
        v1 = v2 = 0xfffff & varg7 >> 88;
        v3, v4 = 0x3c89(varg0);
        v1 = v5 = 0x343a();
        v5.word0 = v4;
        v1 = v6 = v5 + 32;
        v5.word1 = v3;
        v5.word2 = address(varg0);
        v1 = v7 = v5 + 96;
        v5.word3 = bool(varg1);
        v1 = v8 = 0xfffff & varg7 >> 108;
        v9, v10 = 0x3c89(varg2);
        v1 = v11 = 0x343a();
        v11.word0 = v10;
        v1 = v12 = v11 + 32;
        v11.word1 = v9;
        v11.word2 = address(varg2);
        v1 = v13 = v11 + 96;
        v11.word3 = bool(varg3);
        v1 = v14 = 0x343a();
        v14.word0 = 0;
        v14.word1 = 0;
        v14.word2 = address(varg4);
        v1 = v15 = v14 + 96;
        v14.word3 = bool(varg5);
        0x3aa8(v14);
        v16 = 0x3ac6(address(v14.word2));
        v14.word1 = uint128(v16);
        v17 = v18 = MEM[64];
        MEM[0] = MEM[0];
        v19 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v19) {
            v1 = v20 = 4955;
            v21 = v22 = 4920;
            v23 = v24 = 0;
            if (v19) {
                v25 = v26 = 5404;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v18 + 32 > uint64.max) | (v18 + 32 < v18)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v18 + 32;
                    v27 = v28 = v18 + 32;
                }
            }
            v29 = this.balance;
            v1 = v30 = v23 + v29;
            require(v23 <= v30, Panic(17)); // arithmetic overflow or underflow
            v1 = v31 = 0x1b6e1;
            v1 = v32 = 0x1b705;
            if (0 == v33) {
                v34 = v35 = 0x4ea4(MEM[v1], MEM[v1]);
            } else {
                v34 = v36 = 0x4ea4(MEM[v1], MEM[v1]);
            }
            if (!v1) {
                v1 = v37 = 0x4ea4(MEM[v1], MEM[v1]);
                v38 = address(MEM[v1]);
            } else {
                v1 = v39 = 0x4ea4(MEM[v1], MEM[v1]);
                v38 = v40 = address(MEM[v1]);
            }
            v41 = v38 * v38 % uint256.max - v38 * v38 - (v38 * v38 % uint256.max < v38 * v38);
            v1 = v42 = v38 * v38 - ((v41 * uint256.max % (uint96.max + 1) + v41) % (uint96.max + 1) + v38 * v38) % (uint96.max + 1) >> 96 | v41 - (v38 * v38 < ((v41 * uint256.max % (uint96.max + 1) + v41) % (uint96.max + 1) + v38 * v38) % (uint96.max + 1)) << 160;
            if (v41 != v38 * v38 < ((v41 * uint256.max % (uint96.max + 1) + v41) % (uint96.max + 1) + v38 * v38) % (uint96.max + 1)) {
            }
            if (!v43) {
                v1 = v44 = _SafeDiv(uint192.max + 1, v42);
                v1 = v45 = uint96.max + 1;
            } else {
                v1 = v46 = uint96.max + 1;
            }
            while (1) {
                v47 = v34 * v1;
                v48 = v34 * v1 % uint256.max < v47;
                v49 = v34 * v1 % uint256.max - v47;
                if (uint96.max + 1 <= v49 - v48) {
                    break;
                } else {
                    if (v49 == v48) {
                        v34 = v47 >> 96;
                        // Unknown jump to Block ['0x1b6e1', '0x1b705']. Refer to 3-address code (TAC);
                    } else {
                        v34 = v47 - v34 * v1 % (uint96.max + 1) >> 96 | v49 - v48 - (v34 * v1 % (uint96.max + 1) > v47) << 160;
                        // Unknown jump to Block ['0x1b6e1', '0x1b705']. Refer to 3-address code (TAC);
                    }
                    continue;
                }
            }
            if (v34 <= v1) {
                v1 = v50 = 5234;
                v1 = v51 = 0x18fc5;
                v1 = v52 = 0x18fe8;
                v1 = v53 = 5255;
                v1 = v54 = 0x19099;
                MEM[v1] = bool(!MEM[v1]);
                if (bool(!MEM[v1])) {
                    MEM[v1] = MEM[v1];
                    MEM[v1] = MEM[v1];
                }
                while (1) {
                    MEM[v1] = bool(!MEM[v1]);
                    v55 = MEM[v1];
                    // Unknown jump to Block ['0x18fc5', '0x19099']. Refer to 3-address code (TAC);
                    if (bool(!MEM[v1])) {
                        MEM[v1] = MEM[v1];
                        MEM[v1] = MEM[v1];
                        continue;
                    } else {
                        MEM[v1] = bool(!MEM[v1]);
                        v55 = v56 = bool(MEM[v1]);
                        // Unknown jump to Block 0x19099. Refer to 3-address code (TAC);
                    }
                }
                if (bool(v55)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v57 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v58 = _SafeDiv(v57, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v58);
                }
                v59 = address(MEM[v1]) * (v1 * (v1 * v1)) * (MEM[v1 + 32] * MEM[v1 + 32]);
                v60 = 0x585f(MEM[v1 + 32] * MEM[v1] * (MEM[v1] * MEM[v1 + 32]), MEM[v1 + 32] * MEM[v1] * (MEM[v1] * MEM[v1 + 32]) % uint256.max - MEM[v1 + 32] * MEM[v1] * (MEM[v1] * MEM[v1 + 32]) - (MEM[v1 + 32] * MEM[v1] * (MEM[v1] * MEM[v1 + 32]) % uint256.max < MEM[v1 + 32] * MEM[v1] * (MEM[v1] * MEM[v1 + 32])));
                v61 = (10000 * MEM[v1] + v1 * MEM[v1 + 32]) * (uint128(MEM[v1 + 32]) * v1 * v1 * address(MEM[v1]));
                v62 = 0x57ed((v59 - v1 * v60 * 0x989680000000000000) * uint128(MEM[v1 + 32]) % uint256.max - (v59 - v1 * v60 * 0x989680000000000000) * uint128(MEM[v1 + 32]) - ((v59 - v1 * v60 * 0x989680000000000000) * uint128(MEM[v1 + 32]) % uint256.max < (v59 - v1 * v60 * 0x989680000000000000) * uint128(MEM[v1 + 32])) + (address(MEM[v1]) * (v1 * (v1 * v1)) * (MEM[v1 + 32] * MEM[v1 + 32]) % uint256.max - v59 - (address(MEM[v1]) * (v1 * (v1 * v1)) * (MEM[v1 + 32] * MEM[v1 + 32]) % uint256.max < v59) - (v1 * v60 * 0x989680000000000000 % uint256.max - v1 * v60 * 0x989680000000000000 - (v1 * v60 * 0x989680000000000000 % uint256.max < v1 * v60 * 0x989680000000000000)) - (v59 < v1 * v60 * 0x989680000000000000)) * uint128(MEM[v1 + 32]), (v59 - v1 * v60 * 0x989680000000000000) * uint128(MEM[v1 + 32]), 10 ** 8 * v1 * (MEM[v1] * MEM[v1] << 48) % uint256.max - 10 ** 8 * v1 * (MEM[v1] * MEM[v1] << 48) - (10 ** 8 * v1 * (MEM[v1] * MEM[v1] << 48) % uint256.max < 10 ** 8 * v1 * (MEM[v1] * MEM[v1] << 48)) + ((10000 * MEM[v1] + v1 * MEM[v1 + 32]) * (uint128(MEM[v1 + 32]) * v1 * v1 * address(MEM[v1])) % uint256.max - v61 - ((10000 * MEM[v1] + v1 * MEM[v1 + 32]) * (uint128(MEM[v1 + 32]) * v1 * v1 * address(MEM[v1])) % uint256.max < v61)) + (10 ** 8 * v1 * (MEM[v1] * MEM[v1] << 48) + v61 < 10 ** 8 * v1 * (MEM[v1] * MEM[v1] << 48)), 10 ** 8 * v1 * (MEM[v1] * MEM[v1] << 48) + v61);
                v63 = 0x34ad(v1);
                v64 = _SafeDiv(MEM[v1] * v62 * 10000, (MEM[v1 + 32] - v62) * (10000 - v63));
                v65 = 0x34ad(v1);
                v66 = _SafeDiv(MEM[v1] * (v64 + 1) * 10000, (MEM[v1 + 32] - (v64 + 1)) * (10000 - v65));
                v67, v68, v69, v70, v71, v72, v73 = 0x420d(bool(MEM[v1 + 96]), 16915, 16922, v64 + 1, v62, address(MEM[v1 + 64]), v1);
                if (bool(!MEM[v1 + 96])) {
                    MEM[0] = MEM[0];
                    v74 = v75 = 64;
                    v76 = v77 = 0x1b8be;
                    v78 = v79 = 0;
                    v80 = v81 = 17114;
                    v82 = v83 = 0x1b912;
                    v84 = v85 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    v86 = address(MEM[v1 + 64]);
                    v87 = v88 = bool(MEM[v1 + 96]);
                } else {
                    v84 = 0x1000276a4;
                    v74 = 64;
                    v76 = v89 = 0x1b7e7;
                    v78 = 0;
                    v80 = v90 = 17114;
                    v82 = v91 = 0x1b83b;
                    v86 = v92 = address(MEM[v1 + 64]);
                    v87 = bool(MEM[v1 + 96]);
                }
                v93 = new struct(8);
                v94 = v93.data;
                v93.word1 = 7;
                v93.word2 = address(v86);
                v93.word3 = v69;
                v93.word4 = bool(v87);
                v93.word5 = address(MEM[v72 + v74]);
                v93.word6 = v70;
                v93.word7 = bool(MEM[v72 + 96]);
                // Unknown jump to Block ['0x1b7e70x220', '0x1b8be0x220']. Refer to 3-address code (TAC);
                v93.word0 = 224;
                require(!((v93 + (uint8.max + 1) > uint64.max) | (v93 + (uint8.max + 1) < v93)), Panic(65)); // failed memory allocation (too much memory)
                v95 = v96 = MEM[v74];
                MEM[v96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v96 + 4] = address(v71);
                MEM[v96 + 4 + 32] = bool(v73);
                MEM[v96 + 4 + 64] = v67;
                MEM[v96 + 4 + 96] = address(v84);
                MEM[v96 + 4 + 128] = 160;
                MEM[v96 + 4 + 160] = v93.word0.length;
                MCOPY(v96 + 4 + 160 + 32, v93.data, v93.word0.length);
                MEM[32 + (v93.word0.length + (v96 + 4 + 160))] = 0;
                v97 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v93.word0.length) + (v96 + 4 + 160) + 32;
                v98 = address(MEM[v1 + 64]).call(MEM[v2200x445d:v2200x445d + v1c0dV0x3875V0x1b83b0x220 - v2200x445d], MEM[v2200x445d:v2200x445d + v2200x4227]).value(v78).gas(msg.gas);
                if (v98) {
                    v1 = v99 = 0x1b876;
                    if (v98) {
                        // Unknown jump to Block 0x42f40x220. Refer to 3-address code (TAC);
                    }
                }
                v93.word0 = 224;
                require(!((v93 + (uint8.max + 1) > uint64.max) | (v93 + (uint8.max + 1) < v93)), Panic(65)); // failed memory allocation (too much memory)
                v95 = v100 = MEM[v74];
                MEM[v100] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v100 + 4] = address(v71);
                MEM[v100 + 4 + 32] = bool(v73);
                MEM[v100 + 4 + 64] = v67;
                MEM[v100 + 4 + 96] = address(v84);
                MEM[v100 + 4 + 128] = 160;
                MEM[v100 + 4 + 160] = v93.word0.length;
                MCOPY(v100 + 4 + 160 + 32, v93.data, v93.word0.length);
                MEM[32 + (v93.word0.length + (v100 + 4 + 160))] = 0;
                v97 = v101 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v93.word0.length) + (v100 + 4 + 160) + 32;
                // Unknown jump to Block 0x42da0x220. Refer to 3-address code (TAC);
            } else {
                v1 = v102 = 5008;
                v1 = v103 = 0x18e52;
                v1 = v104 = 0x18e75;
                v1 = v105 = 5019;
                v1 = v106 = 0x18eb9;
                if (bool(!MEM[v1])) {
                    MEM[v1] = MEM[v1];
                    MEM[v1] = MEM[v1];
                }
                while (1) {
                    v107 = MEM[v1];
                    // Unknown jump to Block ['0x18e52', '0x18eb9']. Refer to 3-address code (TAC);
                    if (bool(!MEM[v1])) {
                        MEM[v1] = MEM[v1];
                        MEM[v1] = MEM[v1];
                        continue;
                    } else {
                        v107 = v108 = bool(MEM[v1]);
                        // Unknown jump to Block 0x18eb9. Refer to 3-address code (TAC);
                    }
                }
                if (bool(v107)) {
                    MEM[v1] = address(address(MEM[v1]) >> 48);
                } else {
                    v109 = _SafeMul(uint48.max + 1, uint48.max + 1);
                    v110 = _SafeDiv(v109, address(MEM[v1]) >> 48);
                    MEM[v1] = address(v110);
                }
                v111 = 0x5695(MEM[v1], MEM[v1 + 32], v1, MEM[v1], MEM[v1 + 32], v1, address(MEM[v1]), uint128(MEM[v1 + 32]), v1, v1);
                v112 = 0x34ad(v1);
                v113 = _SafeDiv((10000 - v112) * v111 * MEM[v1 + 32], MEM[v1] * 10000 + (10000 - v112) * v111);
                v114 = 0x34ad(v1);
                v115 = _SafeDiv((10000 - v114) * v113 * MEM[v1 + 32], MEM[v1] * 10000 + (10000 - v114) * v113);
                if (bool(!MEM[v1 + 96])) {
                    MEM[0] = MEM[0];
                    v116 = v117 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v116 = 0x1000276a4;
                }
                v118 = new struct(8);
                v119 = v118.data;
                v118.word1 = 12;
                v118.word2 = v111;
                v118.word3 = address(MEM[64 + v1]);
                v118.word4 = v113;
                v118.word5 = bool(MEM[96 + v1]);
                v118.word6 = address(MEM[64 + v1]);
                v118.word7 = bool(MEM[96 + v1]);
                v118.word0 = 224;
                require(!((v118 + (uint8.max + 1) > uint64.max) | (v118 + (uint8.max + 1) < v118)), Panic(65)); // failed memory allocation (too much memory)
                v95 = MEM[64];
                v120 = new bytes[](v118.word0.length);
                MCOPY(v120.data, v118.data, v118.word0.length);
                v120[v118.word0.length] = 0;
                v121 = address(MEM[v1 + 64]).swap(address(this), bool(MEM[v1 + 96]), v115, address(v116), v120).gas(msg.gas);
                if (v121) {
                    v1 = v122 = 0x1ba14;
                    if (!v121) {
                    }
                }
            }
            if (64 > RETURNDATASIZE()) {
                require(!((v95 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v95 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v95)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v95 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v123 = v95 + RETURNDATASIZE();
            } else {
                require(!((v95 + 64 > uint64.max) | (v95 + 64 < v95)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v95 + 64;
                v123 = v124 = v95 + 64;
            }
            require(v123 - v95 >= 64);
            // Unknown jump to Block 0x4f930x220. Refer to 3-address code (TAC);
            v33 = v125 = 0x3ff & v1 >> 50;
            v1 = v126 = uint24(v1 >> 60);
            v43 = v127 = 0x3ffffffffffff & v1;
            v17 = MEM[64];
            MEM[0] = MEM[0];
            v128 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v128) {
                v23 = v129 = 0;
                if (v128) {
                    v21 = v130 = 20485;
                    v25 = v131 = 20801;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v17 + 32 > uint64.max) | (v17 + 32 < v17)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v17 + 32;
                        v27 = v132 = v17 + 32;
                    }
                }
            }
            revert();
            require(!((v17 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v17 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v17)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v17 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v27 = v17 + RETURNDATASIZE();
            require(v27 - v17 >= 32);
            v23 = MEM[v17];
            // Unknown jump to Block ['0x151c0x220', '0x51410x220']. Refer to 3-address code (TAC);
            v133 = _SafeAdd(v23, this.balance);
            v134 = _SafeSub(v133, v1);
            if (!v33) {
                v135 = _SafeSub(v1, msg.gas);
                v136 = 0x34f5(v135);
                v137 = _SafeMul(v43, v136);
                require(v137 < v134, Error(52));
                v138 = 0x34f5(msg.gas);
                require(v138 >= msg.gas, Error(13665));
                // Unknown jump to Block ['0x1b8760x220', '0x1ba140x220']. Refer to 3-address code (TAC);
            } else {
                v139 = _SafeSub(v1, msg.gas);
                v140 = 0x3504(v139);
                v141 = _SafeMul(v43, v140);
                require(v141 < v134, Error(52));
                v142 = _SafeSub(v134, v141);
                require(v33 <= 1000);
                v143 = _SafeMul(v142, v33);
                v144 = _SafeSub(v142, v143 / 1000);
                if (this.balance <= v143 / 1000) {
                    MEM[0] = MEM[0];
                    v145 = 0x34bd(v23);
                    0x5833(v145, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                }
                if (v143 / 1000) {
                    v146 = block.coinbase.call().value(v143 / 1000).gas(10000);
                }
                v147 = 0x3504(msg.gas);
                require(v147 >= msg.gas, Error(13666));
                // Unknown jump to Block ['0x1b8760x220', '0x1ba140x220']. Refer to 3-address code (TAC);
            }
            exit;
            exit;
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x3a2daf8d(uint256 varg0, uint256 varg1, int24 varg2, uint256 varg3, uint256 varg4, uint256 varg5, int24 varg6, uint256 varg7, uint256 varg8, uint256 varg9, int24 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15) public payable { 
    require(msg.data.length - 4 >= 512);
    require(!(bool(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg3) - varg3));
    require(!(bool(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(address(varg7) - varg7));
    require(!(bool(varg8) - varg8));
    require(!(bool(varg9) - varg9));
    require(!(address(varg11) - varg11));
    require(!(bool(varg12) - varg12));
    _unlockCallback = 1;
    revert();
}

function 0x2c2f9ced() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0;
}

function 0x25edf1c2() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
    v0, /* uint256 */ v1 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v3.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
}

function 0x332e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(10 ** 6 - v0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - v0, varg2, varg3, varg0;
}

function 0x343a() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3449() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3458() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x349b(uint256 varg0) private { 
    require(10 ** 6 - varg0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - varg0;
}

function 0x34ad(uint256 varg0) private { 
    require(10000 - varg0 <= 10000, Panic(17)); // arithmetic overflow or underflow
    return 10000 - varg0;
}

function 0x34bd(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x34f5(uint256 varg0) private { 
    require(varg0 <= varg0 + 1000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1000;
}

function 0x3504(uint256 varg0) private { 
    require(varg0 <= varg0 + 25000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 25000;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x353e(uint256 varg0) private { 
    require(!(10000 * varg0 / 10000 - varg0), Panic(17)); // arithmetic overflow or underflow
    return 10000 * varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x35d0(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(32 <= varg2);
    require(varg2 <= varg1);
    return varg2 - 32, 32 + varg0;
}

function 0x3865(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x38de(uint256 varg0) private { 
    v0 = varg0 >> 224;
    v1 = bool(varg0 >> 148);
    if (v1 - 1) {
        if (v1 - 4) {
            if (v1 - 2) {
                if (v1 - 5) {
                    if (v1 - 3) {
                        if (v1) {
                            require(CHAINID() != 1);
                            v2 = v3 = !v0;
                            if (bool(v0)) {
                                v2 = v4 = block.timestamp == v0;
                            }
                            if (v2) {
                                v2 = v5 = address(block.coinbase) == block.coinbase;
                                if (address(block.coinbase) != block.coinbase) {
                                    v2 = v6 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                    if (v6) {
                                        v2 = v7 = address(block.coinbase) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                    }
                                }
                            }
                            require(v2, Error(50));
                            v8 = v9 = uint72(varg0 >> 152);
                        } else {
                            require(block.timestamp == v0, Error(50));
                        }
                    } else {
                        v10 = v11 = !v0;
                        if (bool(v0)) {
                            v10 = v12 = block.timestamp == v0;
                        }
                        if (v10) {
                            v10 = v13 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == block.coinbase;
                            if (address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) != block.coinbase) {
                                v10 = v14 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                if (v14) {
                                    v10 = v15 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                }
                            }
                        }
                        require(v10, Error(50));
                        v8 = v16 = uint72(varg0 >> 152);
                    }
                } else {
                    v17 = v18 = !v0;
                    if (bool(v0)) {
                        v17 = v19 = block.timestamp == v0;
                    }
                    if (v17) {
                        v17 = v20 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == block.coinbase;
                        if (address(0x396343362be2a4da1ce0c1c210945346fb82aa49) != block.coinbase) {
                            v17 = v21 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                            if (v21) {
                                v17 = v22 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                            }
                        }
                    }
                    require(v17, Error(50));
                    v8 = v23 = uint72(varg0 >> 152);
                }
            } else {
                v24 = v25 = !v0;
                if (bool(v0)) {
                    v24 = v26 = block.timestamp == v0;
                }
                if (v24) {
                    v24 = v27 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == block.coinbase;
                    if (address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) != block.coinbase) {
                        v24 = v28 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                        if (v28) {
                            v24 = v29 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                        }
                    }
                }
                require(v24, Error(50));
                v8 = v30 = uint72(varg0 >> 152);
            }
        } else {
            v31 = v32 = !v0;
            if (bool(v0)) {
                v31 = v33 = block.timestamp == v0;
            }
            if (v31) {
                v31 = v34 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == block.coinbase;
                if (address(0xdadb0d80178819f2319190d340ce9a924f783711) != block.coinbase) {
                    v31 = v35 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                    if (v35) {
                        v31 = v36 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                    }
                }
            }
            require(v31, Error(50));
            v8 = v37 = uint72(varg0 >> 152);
        }
    } else {
        v38 = v39 = !v0;
        if (bool(v0)) {
            v38 = v40 = block.timestamp == v0;
        }
        if (v38) {
            v38 = v41 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == block.coinbase;
            if (address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) != block.coinbase) {
                v38 = v42 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                if (v42) {
                    v38 = v43 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                }
            }
        }
        require(v38, Error(50));
        v8 = v44 = uint72(varg0 >> 152);
    }
    if (!(block.coinbase.balance - v8)) {
        if (this.balance) {
            v45, /* uint256 */ v46 = block.coinbase.call().value(1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v47 = v48 = new bytes[](RETURNDATASIZE());
                require(!((v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
                v46 = v48.data;
                RETURNDATACOPY(v46, 0, RETURNDATASIZE());
            }
            return 1;
        } else {
            return 1;
        }
    }
    return 0;
}

function 0x3aa8(struct(4) varg0) private { 
    v0 = varg0.word2.slot0().gas(msg.gas);
    require(v0);
    return ;
}

function 0x3ac6(uint256 varg0) private { 
    v0, /* uint128 */ v1 = varg0.liquidity().gas(msg.gas);
    require((RETURNDATASIZE() > 15) & v0);
    return uint128(v1);
}

function 0x3c89(address varg0) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, v3 = varg0.getReserves().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v4 = 0;
    v2 = v5 = 0;
    if (v0) {
        v6 = v7 = 96;
        if (96 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v6 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v2 - uint112(v2)));
        require(!(uint32(v3) - v3));
    }
    return uint112(v2), uint112(v1);
}

function 0x420d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v0, varg2, varg3, varg4, varg5, varg6, varg0;
}

function 0x454c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v0, varg2, varg3, varg4, varg5, varg6, varg7, varg0;
}

function 0x4670(address varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg0;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    MEM[0] = MEM[0];
    v2 = v3, /* uint256 */ v4 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = v8 = MEM[v5 + 32];
            require(!(bool(v8) - v8));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x4717(uint256 varg0) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v0 + 68] = varg0;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    MEM[0] = MEM[0];
    v2 = v3, /* uint256 */ v4 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(0x4444c5dc75cb358380d2e3de08a90, varg0).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = v8 = MEM[v5 + 32];
            require(!(bool(v8) - v8));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x487e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v0, varg2, varg3, varg4, varg0;
}

function 0x49f1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v0, varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10, varg0;
}

function 0x4d54(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v0, varg2, varg3, varg4, varg5, varg0;
}

function 0x4da3(bool varg0, uint256 varg1, bool varg2, uint256 varg3, uint256 varg4, uint256 varg5, address varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) private { 
    v0 = MEM[v1] + 32;
    MEM[v0] = 23;
    MEM[v0 + 32] = varg4;
    MEM[v0 + 64] = varg6;
    MEM[v0 + 96] = varg2;
    MEM[v0 + 128] = address(MEM[varg1]);
    MEM[v0 + 128 + 32] = address(MEM[varg1 + 32]);
    MEM[v0 + 128 + 64] = uint24(MEM[varg1 + 64]);
    MEM[v0 + 128 + 96] = int24(MEM[varg1 + 96]);
    MEM[v0 + 128 + 128] = address(MEM[128 + varg1]);
    MEM[v0 + 288] = varg0;
    return v0 + 320, MEM[v1], varg5, MEM[v1], varg7, varg8, varg9, varg10, varg11, varg12;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * 1 % uint256.max - varg0 - (varg0 * 1 % uint256.max < varg0);
    require(varg1 > v0);
    if (varg0 * 1 % uint256.max - varg0 == varg0 * 1 % uint256.max < varg0) {
        return varg0 / varg1;
    } else {
        v1 = 0 - varg1 & varg1;
        v2 = varg1 / v1;
        v3 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return ((varg0 - varg0 * 1 % varg1) / v1 | (v0 - (varg0 * 1 % varg1 > varg0)) * ((0 - v1) / v1 + 1)) * ((2 - v2 * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3))) * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3)));
    }
}

function 0x4ea4(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * (uint96.max + 1) % uint256.max - (varg0 << 96) - (varg0 * (uint96.max + 1) % uint256.max < varg0 << 96);
    require(varg1 > v0);
    if (varg0 * (uint96.max + 1) % uint256.max - (varg0 << 96) == varg0 * (uint96.max + 1) % uint256.max < varg0 << 96) {
        return (varg0 << 96) / varg1;
    } else {
        v1 = 0 - varg1 & varg1;
        v2 = varg1 / v1;
        v3 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return (((varg0 << 96) - varg0 * (uint96.max + 1) % varg1) / v1 | (v0 - (varg0 * (uint96.max + 1) % varg1 > varg0 << 96)) * ((0 - v1) / v1 + 1)) * ((2 - v2 * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3))) * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3)));
    }
}

function 0x517a(uint256 varg0, uint256 varg1) private { 
    v0 = ((varg1 * uint256.max % (uint96.max + 1) + varg1) % (uint96.max + 1) + varg0) % (uint96.max + 1);
    v1 = varg0 - v0 >> 96 | varg1 - (varg0 < v0) << 160;
    if (varg1 == varg0 < v0) {
        return v1;
    } else {
        return v1;
    }
}

function 0x51a3(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = ((varg1 * uint256.max % varg2 + varg1) % varg2 + varg0) % varg2;
    v1 = 0 - varg2 & varg2;
    v2 = varg2 / v1;
    v3 = (varg0 - v0) / v1 | (varg1 - (varg0 < v0)) * ((0 - v1) / v1 + 1);
    if (varg1 == varg0 < v0) {
        v4 = _SafeDiv(v3, v2);
        return v4;
    } else {
        v5 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return (2 - v2 * ((2 - v2 * ((2 - v2 * v5) * v5)) * ((2 - v2 * v5) * v5))) * ((2 - v2 * ((2 - v2 * v5) * v5)) * ((2 - v2 * v5) * v5)) * v3;
    }
}

function 0x5651(uint128 varg0) private { 
    require(!(uint128(10 ** 7 * varg0) - 10 ** 7 * varg0), Panic(17)); // arithmetic overflow or underflow
    return uint128(10 ** 7 * varg0);
}

function 0x5673(uint128 varg0) private { 
    require(!(uint128(10 ** 6 * varg0) - 10 ** 6 * varg0), Panic(17)); // arithmetic overflow or underflow
    return uint128(10 ** 6 * varg0);
}

function 0x5695(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, address varg6, uint256 varg7, uint256 varg8, uint256 varg9) private { 
    if (!(varg0 - 10 ** 7 * varg0 / 10 ** 7)) {
        if (!varg3 | (uint48.max + 1 == (varg3 << 48) / varg3)) {
            v0 = _SafeMul(varg0, varg1);
            v1 = _SafeMul(varg3, varg4);
            v2 = 0x585f(v0 * v1, v0 * v1 % uint256.max - v0 * v1 - (v0 * v1 % uint256.max < v0 * v1));
            v3 = _SafeMul(varg9, v2);
            v4 = 0x5651(varg7);
            v5 = 0x353e(varg3);
            v6 = _SafeMul(varg5, varg1);
            v7 = _SafeAdd(v5, v6);
            v8 = 0x5673(varg7);
            v9 = _SafeMul(uint128(v8), uint48.max + 1);
            v10 = _SafeMul(v9, varg2);
            v11 = _SafeMul(varg2, varg5);
            v12 = _SafeMul(v11, varg8);
            v13 = _SafeMul(v12, varg6);
            v14 = _SafeMul(varg1, varg4);
            v15 = 0x57ed((v3 * varg6 - 10 ** 7 * varg0 * (varg3 << 48)) * uint128(v4) % uint256.max - (v3 * varg6 - 10 ** 7 * varg0 * (varg3 << 48)) * uint128(v4) - ((v3 * varg6 - 10 ** 7 * varg0 * (varg3 << 48)) * uint128(v4) % uint256.max < (v3 * varg6 - 10 ** 7 * varg0 * (varg3 << 48)) * uint128(v4)) + (v3 * varg6 % uint256.max - v3 * varg6 - (v3 * varg6 % uint256.max < v3 * varg6) - (10 ** 7 * varg0 * (varg3 << 48) % uint256.max - 10 ** 7 * varg0 * (varg3 << 48) - (10 ** 7 * varg0 * (varg3 << 48) % uint256.max < 10 ** 7 * varg0 * (varg3 << 48))) - (v3 * varg6 < 10 ** 7 * varg0 * (varg3 << 48))) * uint128(v4), (v3 * varg6 - 10 ** 7 * varg0 * (varg3 << 48)) * uint128(v4), v7 * v10 % uint256.max - v7 * v10 - (v7 * v10 % uint256.max < v7 * v10) + (v13 * v14 % uint256.max - v13 * v14 - (v13 * v14 % uint256.max < v13 * v14)) + (v13 * v14 + v7 * v10 < v13 * v14), v13 * v14 + v7 * v10);
            return v15;
        }
    }
    revert(Panic(17));
}

function 0x57ed(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = varg2 > varg0;
    if (varg2 <= varg0) {
        v0 = v2 = varg2 == varg0;
        if (v2) {
            v0 = v3 = varg3 > varg1;
        }
    }
    if (v0) {
        return 0;
    } else if (!varg2) {
        v4 = 0x51a3(varg1, varg0, varg3);
        return v4;
    } else {
        v5 = _SafeDiv(varg0, varg2);
        return v5;
    }
}

function 0x5833(uint256 varg0, uint256 varg1) private { 
    v0 = varg1.withdraw(varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x585f(uint256 varg0, uint256 varg1) private { 
    if (!varg1) {
        v0 = 0x59ac(varg0);
        return v0;
    } else {
        v1 = varg1 << ((varg1 < uint128.max + 1) << 7) << ((varg1 << ((varg1 < uint128.max + 1) << 7) < uint192.max + 1) << 6);
        v2 = v1 << ((v1 < uint224.max + 1) << 5) << ((v1 << ((v1 < uint224.max + 1) << 5) < uint240.max + 1) << 4) << ((v1 << ((v1 < uint224.max + 1) << 5) << ((v1 << ((v1 < uint224.max + 1) << 5) < uint240.max + 1) << 4) < uint248.max + 1) << 3);
        v3 = ((varg1 < uint128.max + 1) << 7) + ((varg1 << ((varg1 < uint128.max + 1) << 7) < uint192.max + 1) << 6) + ((v1 < uint224.max + 1) << 5) + ((v1 << ((v1 < uint224.max + 1) << 5) < uint240.max + 1) << 4) + ((v1 << ((v1 < uint224.max + 1) << 5) << ((v1 << ((v1 < uint224.max + 1) << 5) < uint240.max + 1) << 4) < uint248.max + 1) << 3) + ((v2 < 0x1000000000000000000000000000000000000000000000000000000000000000) << 2) + ((v2 << ((v2 < 0x1000000000000000000000000000000000000000000000000000000000000000) << 2) < 0x4000000000000000000000000000000000000000000000000000000000000000) << 1);
        v4 = v2 << ((v2 < 0x1000000000000000000000000000000000000000000000000000000000000000) << 2) << ((v2 << ((v2 < 0x1000000000000000000000000000000000000000000000000000000000000000) << 2) < 0x4000000000000000000000000000000000000000000000000000000000000000) << 1) | varg0 >> uint8.max + 1 - v3;
        v5 = 0x59ac(v4);
        v6 = _SafeMul(v5, v5);
        v7 = _SafeSub(v4, v6);
        v8 = (v7 << 128 | varg0 << v3 >> 128) / (v5 << 1) + (0 - (v7 >> 128)) / (v5 << 1) + ((v7 << 128 | varg0 << v3 >> 128) % (v5 << 1) + ((0 - (v7 >> 128)) % (v5 << 1) + (v7 >> 128))) / (v5 << 1);
        v9 = ((v7 << 128 | varg0 << v3 >> 128) % (v5 << 1) + ((0 - (v7 >> 128)) % (v5 << 1) + (v7 >> 128))) % (v5 << 1);
        v10 = v11 = (v5 << 128) + v8;
        v12 = v13 = v8 >> 128 > v9 >> 128;
        if (v8 >> 128 <= v9 >> 128) {
            v12 = v14 = v8 >> 128 == v9 >> 128;
            if (v14) {
                v12 = v15 = uint128(varg0 << v3) | v9 << 128 < v8 * v8;
            }
        }
        if (v12) {
            v10 = v16 = v11 - 1;
        }
        return v10 >> (v3 >> 1);
    }
}

function 0x59ac(uint256 varg0) private { 
    if (!varg0) {
        return 0;
    } else {
        v0 = varg0 >> (((varg0 > uint128.max + 1) | (varg0 == uint128.max + 1)) << 7);
        v1 = v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) >> (((v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) > uint32.max + 1) | (v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) == uint32.max + 1)) << 5);
        v2 = v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) >> (((v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) > uint8.max + 1) | (v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) == uint8.max + 1)) << 3);
        v3 = 1 << (((varg0 > uint128.max + 1) | (varg0 == uint128.max + 1)) << 6) << (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 5) << (((v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) > uint32.max + 1) | (v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) == uint32.max + 1)) << 4) << (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 3) << (((v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) > uint8.max + 1) | (v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) == uint8.max + 1)) << 2) << (((v2 > 16) | (v2 == 16)) << 1) << (((v2 >> (((v2 > 16) | (v2 == 16)) << 2) > 8) | (v2 >> (((v2 > 16) | (v2 == 16)) << 2) == 8)) << 1);
        v4 = _SafeDiv(varg0, v3);
        v5 = _SafeDiv(varg0, v4 + v3 >> 1);
        v6 = _SafeDiv(varg0, v5 + (v4 + v3 >> 1) >> 1);
        v7 = _SafeDiv(varg0, v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1);
        v8 = _SafeDiv(varg0, v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1);
        v9 = _SafeDiv(varg0, v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1);
        v10 = _SafeDiv(varg0, v9 + (v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1);
        v11 = v10 + (v9 + (v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1) >> 1;
        require(v11, Panic(18)); // division by zero
        if (v11 < varg0 / v11) {
            return v11;
        } else {
            return varg0 / v11;
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x60cc4b2 != v0) {
            if (0xa58f8e0 != v0) {
                if (0x10d1e85c != v0) {
                    if (0x1c422bb7 != v0) {
                        if (0x23a69e75 != v0) {
                            if (0x2561aca1 != v0) {
                                if (0x25edf1c2 == v0) {
                                    0x25edf1c2();
                                } else {
                                    if (0x29bec0f6 != v0) {
                                        if (0x2c2f9ced == v0) {
                                            0x2c2f9ced();
                                        } else if (0x30f76ad9 != v0) {
                                            if (0x3a1c453c != v0) {
                                                if (0x3a2daf8d == v0) {
                                                    0x3a2daf8d();
                                                } else if (0x427a2f1c != v0) {
                                                    if (0x4d7c481f != v0) {
                                                        if (0x58c16b82 == v0) {
                                                            0x58c16b82();
                                                        } else if (0x6b40136c == v0) {
                                                            0x6b40136c();
                                                        } else if (0x6e3aab9b != v0) {
                                                            if (0x6f5aeea3 == v0) {
                                                                0x6f5aeea3();
                                                            } else if (0x6fe055ca != v0) {
                                                                if (0x749d3c3b == v0) {
                                                                    0x749d3c3b();
                                                                } else if (0x7a436efe != v0) {
                                                                    if (0x84800812 != v0) {
                                                                        if (0x871bba25 != v0) {
                                                                            if (0x91dd7346 == v0) {
                                                                                unlockCallback(bytes);
                                                                            } else if (0x9f3d4ab8 != v0) {
                                                                                if (0xa0bd0131 != v0) {
                                                                                    if (0xa31de730 != v0) {
                                                                                        if (0xaf4cf912 != v0) {
                                                                                            if (0xb6d35a66 == v0) {
                                                                                                0xb6d35a66();
                                                                                            } else if (0xb7754fdd != v0) {
                                                                                                if (0xb9087966 == v0) {
                                                                                                    0xb9087966();
                                                                                                } else if (0xbf5fad43 != v0) {
                                                                                                    if (0xc18c82cc != v0) {
                                                                                                        if (0xcafecc44 != v0) {
                                                                                                            if (0xcbf02c23 != v0) {
                                                                                                                if (0xcf7d4f69 != v0) {
                                                                                                                    if (0xf73dfdb2 == v0) {
                                                                                                                        0xf73dfdb2();
                                                                                                                    } else if (0xfa461e33 != v0) {
                                                                                                                        if (!(0xfae2ff63 - v0)) {
                                                                                                                            0xfae2ff63();
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        0xb7754fdd();
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        0xa31de730();
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    0xbf5fad43();
                                }
                            }
                            0xcbf02c23();
                        }
                        0xa0bd0131();
                    }
                    0x6fe055ca();
                }
                0xc18c82cc();
            }
            0x0a58f8e0();
        }
        0x060cc4b2();
    }
    require(!msg.data.length);
    receive();
}
