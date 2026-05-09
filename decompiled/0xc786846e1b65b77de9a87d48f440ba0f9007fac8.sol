// Decompiled by library.dedaub.com
// 2025.12.15 03:33 UTC
// Compiled using the solidity compiler version 0.8.23


// Data structures and variables inferred from the use of storage instructions
address _withdrawMoney; // STORAGE[0x0] bytes 0 to 19



function 0xe1ced726(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = msg.sender == 0xb6fa76be6f9503299dded765b903bbff3f9164d0;
    if (msg.sender != 0xb6fa76be6f9503299dded765b903bbff3f9164d0) {
        v0 = v2 = msg.sender == 0xbe48edae966f484cca7747caa73940068c7bb99;
    }
    if (!v0) {
        v0 = v3 = msg.sender == 0xbe2d0f535665e43477c37c57288859ec0b609b77;
    }
    if (!v0) {
        v0 = v4 = msg.sender == 0x39b9a705f5aa2fdf315bf5cc8ecd71dc821f45b1;
    }
    if (!v0) {
        v0 = v5 = msg.sender == 0x85a325539242d3b808f16232cc9a2cb4df9bea89;
    }
    if (!v0) {
        v0 = v6 = msg.sender == 0xafc9e6b3fa2222a9f3ee2e0301f0362120dae821;
    }
    require(v0, Error(0x653230));
    v7 = v8 = 0;
    v9 = v10 = 28;
    while (v7 < (byte(varg0, 0x1))) {
        v11 = v12 = 0;
        v7 = v13 = byte(msg.data[v9], v12);
        if (!(0x1 & (byte(msg.data[v9], 0x3)))) {
            v11 = v14 = uint128(msg.data[v9]);
            if (!(0x4 & (byte(msg.data[v9], 0x3)))) {
                v7 = v15 = msg.data[v9 + 32] >> 128;
                v16 = v17 = msg.data[v9 + 48] >> 128;
                v18 = v9 + 64;
            } else {
                v11 = v19 = msg.data[v9 + 32] >> 128;
                v7 = msg.data[v9 + 48] >> 128;
                v16 = msg.data[v9 + 64] >> 128;
                v18 = v9 + 80;
            }
        } else {
            v7 = v20 = uint128(msg.data[v9]);
            v16 = v21 = msg.data[v9 + 32] >> 128;
            v18 = v9 + 48;
        }
        require((byte(msg.data[v9], 0x2)) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        require(!((MEM[64] + (32 + ((byte(msg.data[v9], 0x2)) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (32 + ((byte(msg.data[v9], 0x2)) << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require((byte(msg.data[v9], 0x2)) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 32 + ((byte(msg.data[v9], 0x2)) << 5) - 32);
        v22 = v23 = 1;
        while (v22 <= (byte(msg.data[v9], 0x2))) {
            MEM[MEM[64] + (v22 << 5)] = msg.data[v18] >> 96 ^ 0xb6fa76be6f9503299dded765b903bbff3f9164d0;
            v18 = v18 + 20;
            v22 = v22 + 1;
        }
        v9 = uint16(msg.data[v9] >> 176) + v18 + uint16(msg.data[v9] >> 160);
        v24 = v25 = bool((byte(msg.data[v9], 0x3)) & 0x5);
        if (v25) {
            v24 = v26 = v13 == 1;
            if (v13 != 1) {
                v24 = v13 == 2;
            }
        }
        if (v24) {
            v27 = v28 = 0;
            while (v27 < (byte(msg.data[v9], 0x1))) {
                v29 = v30 = v7 & 0x7f == 1;
                if (v7 & 0x7f != 1) {
                    v29 = v31 = v7 & 0x7f == 4;
                }
                if (!v29) {
                    require(!(v7 & 0x7f), Error(0x653337));
                    require(v27 < (byte(msg.data[v9], 0x2)), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v32 = address(MEM[(v27 << 5) + MEM[64] + 32]).getReserves().gas(msg.gas);
                    v27 = v33 = MEM[0];
                    v27 = MEM[32];
                    if (v7 & 0x80) {
                    }
                } else {
                    require(v27 < (byte(msg.data[v9], 0x2)), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v34 = v35 = 0;
                    if ((0x7f & v7) - 4) {
                        if (1 - (0x7f & v7)) {
                            v36 = v37 = 0;
                            v38 = v39 = 4;
                            v40 = v41 = 32;
                        } else {
                            v42 = address(MEM[(v27 << 5) + MEM[64] + 32]).slot0().gas(msg.gas);
                            v40 = 32;
                            v36 = 0;
                            v38 = 4;
                            v34 = MEM[v36];
                        }
                    } else {
                        v40 = v43 = 32;
                        v36 = v44 = 0;
                        v38 = v45 = 4;
                        v34 = v46 = 0x2032(address(MEM[(v27 << 5) + MEM[64] + 32]));
                    }
                    MEM[v36] = 0x1a68650200000000000000000000000000000000000000000000000000000000;
                    v47 = address(MEM[(v27 << 5) + MEM[64] + 32]).staticcall(MEM[v1a53V0x12e8V0x114:v1a53V0x12e8V0x114 + v1a54V0x12e8V0x114], MEM[v1a53V0x12e8V0x114:v1a53V0x12e8V0x114 + v1a51V0x12e8V0x114]).gas(msg.gas);
                    v48 = !MEM[0];
                    if (bool(MEM[0])) {
                        v48 = v49 = !v34;
                    }
                    if (v48) {
                        v27 = v50 = 0;
                        v27 = v51 = 0;
                    } else {
                        require(((MEM[0] << 96) / MEM[0] == uint96.max + 1) | v48, Panic(17)); // arithmetic overflow or underflow
                        v27 = v52 = _SafeDiv(MEM[0] << 96, v34);
                        v27 = v53 = 0x21b3(MEM[0], v34);
                    }
                    if (v7 & 0x80) {
                    }
                }
                if (!v27) {
                    v54 = v55 = 1;
                } else {
                    v54 = 1;
                    v27 = _SafeDiv(v27 * v27, v27 + v27 * (0x186a0 - uint16(v16)) / 0x186a0);
                    v27 = _SafeDiv((0x186a0 - uint16(v16)) * v27 / 0x186a0 * v27, v27 + v27 * (0x186a0 - uint16(v16)) / 0x186a0);
                }
                v7 = v7 >> 8;
                v16 = v16 >> 16;
                v27 = v27 + v54;
            }
            v56 = v57 = v27 * (0x186a0 - uint16(v16)) / 0x186a0;
            v58 = v59 = 181;
            if (v57 >= uint136.max + 1) {
                v58 = v60 = 0xb50000000000000000;
                v56 = v61 = v57 >> 128;
            }
            if (v56 >= uint72.max + 1) {
                v56 = v62 = v56 >> 64;
                v58 = v63 = v58 << 32;
            }
            if (v56 >= uint40.max + 1) {
                v56 = v64 = v56 >> 32;
                v58 = v65 = v58 << 16;
            }
            if (v56 >= uint24.max + 1) {
                v56 = v66 = v56 >> 16;
                v58 = v67 = v58 << 8;
            }
            v68 = v57 / (v57 / ((v56 + (uint16.max + 1)) * v58 >> 18) + ((v56 + (uint16.max + 1)) * v58 >> 18) >> 1) + (v57 / ((v56 + (uint16.max + 1)) * v58 >> 18) + ((v56 + (uint16.max + 1)) * v58 >> 18) >> 1) >> 1;
            v69 = v57 / (v57 / (v57 / v68 + v68 >> 1) + (v57 / v68 + v68 >> 1) >> 1) + (v57 / (v57 / v68 + v68 >> 1) + (v57 / v68 + v68 >> 1) >> 1) >> 1;
            v70 = v71 = 181;
            if (v72 >= uint136.max + 1) {
                v70 = v73 = 0xb50000000000000000;
                v27 = v74 = v72 >> 128;
            }
            if (v27 >= uint72.max + 1) {
                v27 = v75 = v27 >> 64;
                v70 = v76 = v70 << 32;
            }
            if (v27 >= uint40.max + 1) {
                v27 = v77 = v27 >> 32;
                v70 = v78 = v70 << 16;
            }
            if (v27 >= uint24.max + 1) {
                v27 = v79 = v27 >> 16;
                v70 = v80 = v70 << 8;
            }
            v81 = v72 / (v72 / ((v27 + (uint16.max + 1)) * v70 >> 18) + ((v27 + (uint16.max + 1)) * v70 >> 18) >> 1) + (v72 / ((v27 + (uint16.max + 1)) * v70 >> 18) + ((v27 + (uint16.max + 1)) * v70 >> 18) >> 1) >> 1;
            v82 = v72 / (v72 / (v72 / v81 + v81 >> 1) + (v72 / v81 + v81 >> 1) >> 1) + (v72 / (v72 / v81 + v81 >> 1) + (v72 / v81 + v81 >> 1) >> 1) >> 1;
            if (((v72 / (v72 / v82 + v82 >> 1) + (v72 / v82 + v82 >> 1) >> 1) - (v72 / (v72 / (v72 / v82 + v82 >> 1) + (v72 / v82 + v82 >> 1) >> 1) < v72 / (v72 / v82 + v82 >> 1) + (v72 / v82 + v82 >> 1) >> 1)) * ((v57 / (v57 / v69 + v69 >> 1) + (v57 / v69 + v69 >> 1) >> 1) - (v57 / (v57 / (v57 / v69 + v69 >> 1) + (v57 / v69 + v69 >> 1) >> 1) < v57 / (v57 / v69 + v69 >> 1) + (v57 / v69 + v69 >> 1) >> 1)) > v27) {
                v11 = v83 = _SafeDiv((((v72 / (v72 / v82 + v82 >> 1) + (v72 / v82 + v82 >> 1) >> 1) - (v72 / (v72 / (v72 / v82 + v82 >> 1) + (v72 / v82 + v82 >> 1) >> 1) < v72 / (v72 / v82 + v82 >> 1) + (v72 / v82 + v82 >> 1) >> 1)) * ((v57 / (v57 / v69 + v69 >> 1) + (v57 / v69 + v69 >> 1) >> 1) - (v57 / (v57 / (v57 / v69 + v69 >> 1) + (v57 / v69 + v69 >> 1) >> 1) < v57 / (v57 / v69 + v69 >> 1) + (v57 / v69 + v69 >> 1) >> 1)) - v27) * 0x186a0, 0x186a0 - uint16(v16));
            } else {
                v11 = v84 = 0;
            }
            if (!v11) {
                v85 = v86 = 1;
            } else {
                v87 = 0x1b29(v11, v27, v27, 0x186a0 - uint16(v16));
                if (v87 <= v11) {
                    v85 = v88 = 1;
                    // Unknown jump to Block 0xdddB0x114. Refer to 3-address code (TAC);
                } else {
                    if (!(0x1 & (byte(msg.data[v9], 0x3)))) {
                        if (v87 - v11 >= v11) {
                        }
                    } else if (v13 == 1) {
                        if (v87 - v11 > uint32(msg.data[v9] >> 192) * msg.gas) {
                        }
                    }
                    v85 = v89 = 1;
                    // Unknown jump to Block 0xdddB0x114. Refer to 3-address code (TAC);
                }
            }
        }
        if (!(v7 & 0x80)) {
            v90 = v91 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            v90 = v92 = 0x1000276a4;
        }
        MEM[MEM[64] + 32] = v13;
        MEM[MEM[64] + 64] = byte(msg.data[v9], 0x1);
        MEM[MEM[64] + 96] = v11;
        MEM[MEM[64] + 128] = (byte(varg0, 0x0)) & 0x1 | (byte(msg.data[v9], 0x3)) & 0x2;
        MEM[MEM[64] + 160] = v7;
        MEM[MEM[64] + 192] = 192;
        MEM[MEM[64] + 224] = byte(msg.data[v9], 0x2);
        v93 = v94 = MEM[64] + (uint8.max + 1);
        v95 = MEM[64] + 32;
        v96 = 0;
        while (v96 < (byte(msg.data[v9], 0x2))) {
            MEM[v93] = address(MEM[v95]);
            v95 += 32;
            v93 = v93 + 32;
            v96 += 1;
        }
        require(!((MEM[64] + (v93 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v93 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(byte(msg.data[v9], 0x2), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v7 = v97 = address(MEM[32 + MEM[64]]);
        v98 = v99 = v7 & 0x7f00 == uint8.max + 1;
        if (v7 & 0x7f00 != uint8.max + 1) {
            v98 = v100 = v7 & 0x7f00 == 1024;
        }
        if (!v98) {
            require(!(v7 & 0x7f00), Error(0x653430));
            if (0 == (byte(msg.data[v9], 0x2)) > 1) {
                v101 = v102 = this;
            } else {
                require(1 < (byte(msg.data[v9], 0x2)), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v101 = v103 = address(MEM[64 + MEM[64]]);
            }
        } else {
            v101 = this;
        }
        v104 = v105 = 0;
        if (3 == v13) {
            if (!(v7 & 0x80)) {
                v106 = v97.token1().gas(msg.gas);
                v104 = MEM[0];
            } else {
                v107 = v97.token0().gas(msg.gas);
                v104 = v108 = MEM[0];
            }
            v109 = v104.balanceOf(this).gas(msg.gas);
            v11 = MEM[0];
            if (!v11) {
                v85 = 1;
            }
        }
        v110 = 1 == 0x7f & v7;
        if (1 != 0x7f & v7) {
            v110 = v111 = 0x7f & v7 == 4;
        }
        if (!v110) {
            require(0 != !(v7 & 0x7f), Error(0x653338));
            v112 = v97.getReserves().gas(msg.gas);
            v113 = v114 = MEM[0];
            v113 = MEM[32];
            if (v7 & 0x80) {
            }
            if (3 == v13) {
                v115 = v104.transfer(v97, v11).gas(msg.gas);
                if ((byte(msg.data[v9], 0x3)) & 0x2) {
                    v116 = v104.balanceOf(v97).gas(msg.gas);
                    v11 = v117 = MEM[0] - v113;
                }
            }
            v118 = bool(v113);
            if (v118) {
                v118 = v119 = bool(v113);
            }
            require(v118, Error(0x653131));
            require(!v11 | (v11 * 997 / v11 == 997), Panic(17)); // arithmetic overflow or underflow
            v120 = _SafeMul(v11 * 997, v113);
            require((v113 * 1000 / v113 == 1000) | !v113, Panic(17)); // arithmetic overflow or underflow
            v121 = _SafeAdd(v113 * 1000, v11 * 997);
            v122 = _SafeDiv(v120, v121);
            if (!(v7 & 0x80)) {
                v122 = v123 = 0;
            } else {
                v122 = v124 = 0;
            }
            if (v13 == 3) {
                require(v97.code.size);
                v125 = v97.swap(v122, v122, address(v101), 128, 0).gas(msg.gas);
                if (!v125) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v85 = v126 = 1;
                    if (v125) {
                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                    }
                    if ((byte(msg.data[v9], v126)) > v126) {
                        v127 = 0x1c54(byte(msg.data[v9], v126), v122, bool((byte(msg.data[v9], 0x3)) & 0x2), v7, MEM[64]);
                    }
                }
            } else {
                require(v97.code.size);
                MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = v122;
                MEM[MEM[64] + 36] = v122;
                MEM[MEM[64] + 68] = this;
                MEM[MEM[64] + 100] = 128;
                MEM[MEM[64] + 132] = v93 - MEM[64] - 32;
                v128 = 0;
                while (v128 < v93 - MEM[64] - 32) {
                    MEM[32 + (v128 + (MEM[64] + 132))] = MEM[32 + (MEM[64] + v128)];
                    v128 += 32;
                }
                MEM[MEM[64] + 132 + (v93 - MEM[64] - 32) + 32] = 0;
                v129 = v97.call(MEM[MEM[64]:MEM[64] + vce4_0x2V0x114 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 132 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (v129) {
                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                }
                if (v129) {
                    v85 = v130 = 1;
                } else {
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v131 = v132 = new bytes[](RETURNDATASIZE());
                        require(!((v132 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v132 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v132)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v132.data, 0, RETURNDATASIZE());
                    }
                    require(1 != (byte(varg0, 0x0)), Error(0x653331));
                    v85 = v133 = 1;
                }
            }
        } else {
            if (v7 & 0x7f == 4) {
                v134 = 0x2032(v97);
                if (!(v7 & 0x80)) {
                    v90 = 0xfffffffffffffffffffffffffffffffffffffff8 & v134 << 3;
                } else {
                    v90 = v135 = 0x1fffffffffffffffffffffffffffffffffffffff & v134 >> 3;
                }
            }
            if (3 == v13) {
                if (uint16(v16 >> ((byte(msg.data[v9], 0x1)) << 4))) {
                    v11 = v136 = (0x186a0 - uint16(v16 >> ((byte(msg.data[v9], 0x1)) << 4))) * v11 / 0x186a0 - 1;
                }
            }
            MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 4] = address(v101);
            MEM[MEM[64] + 36] = bool(v7 & 0x80);
            MEM[MEM[64] + 68] = v11;
            MEM[MEM[64] + 100] = address(v90);
            MEM[MEM[64] + 132] = 160;
            MEM[MEM[64] + 164] = v93 - MEM[64] - 32;
            v137 = 0;
            while (v137 < v93 - MEM[64] - 32) {
                MEM[32 + (v137 + (MEM[64] + 164))] = MEM[32 + (MEM[64] + v137)];
                v137 += 32;
            }
            MEM[MEM[64] + 164 + (v93 - MEM[64] - 32) + 32] = 0;
            v138, /* uint256 */ v139, /* uint256 */ v140 = v97.call(MEM[MEM[64]:MEM[64] + vce4_0x2V0x114 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 164 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
            if (v138) {
                v141 = v142 = 64;
                if (64 > RETURNDATASIZE()) {
                    v141 = v143 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v141 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v141 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v141 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v141 - MEM[64] >= 64);
            }
            if (v138) {
                v85 = v144 = 1;
            } else {
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v145 = v146 = new bytes[](RETURNDATASIZE());
                    require(!((v146 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v146 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v146)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v146.data, 0, RETURNDATASIZE());
                }
                require(1 != (byte(varg0, 0x0)), Error(0x653330));
                v85 = v147 = 1;
            }
        }
        v7 = v7 + v85;
    }
    v148 = 1 == (byte(varg0, 0x0));
    if (v148) {
        v148 = v149 = 2 == v7;
    }
    if (v148) {
        v148 = v150 = 1 == (byte(varg0, 0x1));
    }
    if (!v148) {
        v151 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        v152 = v153 = MEM[0];
    } else {
        v154 = v155 = !(v7 & 0x7f);
        if (bool(v7 & 0x7f)) {
            v154 = v156 = v7 & 0x7f == 1;
        }
        if (!v154) {
            v154 = v157 = v7 & 0x7f == 4;
        }
        require(v154, Error(0x653339));
        if (!(0x80 & v7)) {
            v158 = v7.token1().gas(msg.gas);
            v159 = MEM[0];
            v160 = v161 = this;
        } else {
            v162 = v7.token0().gas(msg.gas);
            v159 = v163 = MEM[0];
            v160 = v164 = this;
        }
        v165 = v159.balanceOf(v160).gas(msg.gas);
        v152 = v166 = MEM[0];
    }
    if (!(byte(varg0, 0x0))) {
        if (msg.gas * ((byte(varg0, 0x4)) * 50000 - msg.gas + 24000) < v152) {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            v167, /* uint256 */ v168 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v152).gas(msg.gas);
            require(v167, v168, RETURNDATASIZE());
            if (v167) {
                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
            }
            require((byte(varg0, 0x2)) < 100, Error(0x653136));
            v169 = v170 = 0;
            if (varg1 >> 128) {
                if (varg1 >> 128 >= v152) {
                    v169 = v171 = v152 - msg.gas * ((byte(varg0, 0x4)) * 50000 - msg.gas + 24000);
                } else if (varg1 >> 128 > msg.gas * ((byte(varg0, 0x4)) * 50000 - msg.gas + 24000)) {
                    v169 = v172 = (varg1 >> 128) - msg.gas * ((byte(varg0, 0x4)) * 50000 - msg.gas + 24000);
                }
            }
            v173 = (v152 - msg.gas * ((byte(varg0, 0x4)) * 50000 - msg.gas + 24000) - v169) * (byte(varg0, 0x2)) / 100 + v169;
            v152 = v174 = v152 - v173;
            if (bool(v173)) {
                v175 = v176 = 0;
                if (!v173) {
                    v175 = v177 = 2300;
                }
                v178, /* uint256 */ v179 = block.coinbase.call().value(v173).gas(v175);
                require(v178, MEM[64], RETURNDATASIZE());
            }
            if (v152 != v173) {
                v180, /* uint256 */ v181 = msg.sender.call().value(v174);
                require(v180, v181, RETURNDATASIZE());
            }
        } else {
            require((byte(varg0, 0x3)) & 0x4, Error(0x653039));
            if (bool(v152)) {
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                v182, /* uint256 */ v183 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v152).gas(msg.gas);
                require(v182, v183, RETURNDATASIZE());
                if (v182) {
                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                }
                v184 = 0;
            }
        }
        v185, /* uint256 */ v186 = msg.sender.call().value(v152).gas(v184);
        require(v185, MEM[64], RETURNDATASIZE());
        v184 = v187 = 2300;
        // Unknown jump to Block 0x9a7B0x114. Refer to 3-address code (TAC);
    }
    return v152;
}

function 0xd2cef11c(uint256 varg0, uint256 varg1, uint256 varg2, struct(7) varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(!(address(varg0) - varg0));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(msg.data[4 + varg3] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = tx.origin == 0xb6fa76be6f9503299dded765b903bbff3f9164d0;
    if (tx.origin != 0xb6fa76be6f9503299dded765b903bbff3f9164d0) {
        v1 = v3 = tx.origin == 0xbe48edae966f484cca7747caa73940068c7bb99;
    }
    if (!v1) {
        v1 = v4 = tx.origin == 0xbe2d0f535665e43477c37c57288859ec0b609b77;
    }
    if (!v1) {
        v1 = v5 = tx.origin == 0x39b9a705f5aa2fdf315bf5cc8ecd71dc821f45b1;
    }
    if (!v1) {
        v1 = v6 = tx.origin == 0x85a325539242d3b808f16232cc9a2cb4df9bea89;
    }
    if (!v1) {
        v1 = v7 = tx.origin == 0xafc9e6b3fa2222a9f3ee2e0301f0362120dae821;
    }
    require(v1, Error(0x653133));
    require(4 + varg3 + 32 + msg.data[4 + varg3] - (4 + varg3 + 32) >= 192);
    v8 = varg3.word3;
    require(varg3.word6 <= uint64.max);
    require(4 + varg3 + 32 + varg3.word6 + 31 < 4 + varg3 + 32 + msg.data[4 + varg3]);
    require(msg.data[4 + varg3 + 32 + varg3.word6] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new uint256[](msg.data[4 + varg3 + 32 + varg3.word6]);
    require(!((v9 + (32 + (msg.data[4 + varg3 + 32 + varg3.word6] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (msg.data[4 + varg3 + 32 + varg3.word6] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
    v10 = v11 = v9.data;
    require(4 + varg3 + 32 + varg3.word6 + (msg.data[4 + varg3 + 32 + varg3.word6] << 5) + 32 <= 4 + varg3 + 32 + msg.data[4 + varg3]);
    v12 = v13 = 32 + (4 + varg3 + 32 + varg3.word6);
    while (v12 < 4 + varg3 + 32 + varg3.word6 + (msg.data[4 + varg3 + 32 + varg3.word6] << 5) + 32) {
        require(!(msg.data[v12] - address(msg.data[v12])));
        MEM[v10] = msg.data[v12];
        v12 += 32;
        v10 += 32;
    }
    require(v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (!varg1) {
    }
    v14 = v15 = 0;
    v16 = v17 = 0;
    if (varg3.word2 > 1) {
        if (!(varg3.word5 & 0x7f00)) {
            if (bool(!(varg3.word5 & 0x80))) {
                v18 = address(MEM[v9.data]).token0().gas(msg.gas);
                v19 = MEM[0];
            } else {
                v20 = address(MEM[v9.data]).token1().gas(msg.gas);
                v19 = v21 = MEM[0];
            }
            v22 = v19.balanceOf(this).gas(msg.gas);
            require(1 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v23 = v19.transfer(address(MEM[64 + v9]), MEM[0]).gas(msg.gas);
        }
        v14 = v24 = bool(varg3.word4 & 0x2);
        v25 = 1;
        if (varg3.word2 <= v25) {
            v16 = v26 = 0;
        } else {
            v27 = varg3.word5 >> 8;
            require(1 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v28 = address(MEM[64 + v9]);
            v28 = v29 = 0;
            while (v25 < varg3.word2) {
                if (v25 - (varg3.word2 - 1)) {
                    require(v25 + v25 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v28 = v30 = address(v9[v25 + v25]);
                    break;
                } else {
                    break;
                }
                if (v25 >= varg3.word2 - 1) {
                    v28 = v31 = this;
                } else {
                    v32 = v27 & 0x7f00 == uint8.max + 1;
                    if (v27 & 0x7f00 != uint8.max + 1) {
                        v32 = v33 = v27 & 0x7f00 == 1024;
                        break;
                    } else {
                        break;
                    }
                    if (!v32) {
                        require(!(v27 & 0x7f00), Error(0x653335));
                        break;
                    } else {
                        v28 = v34 = this;
                    }
                }
                v35 = v27 & 0x7f == v25;
                if (v27 & 0x7f != v25) {
                    v35 = v36 = v27 & 0x7f == 4;
                    break;
                } else {
                    break;
                }
                if (!v35) {
                    require(0 != !(v27 & 0x7f), Error(0x653336));
                    v37 = v28.getReserves().gas(msg.gas);
                    v38 = v39 = MEM[0];
                    v38 = MEM[32];
                    if (bool(!(v27 & 0x80))) {
                        break;
                    }
                    if (v24) {
                        if (bool(!(v27 & 0x80))) {
                            v40 = v28.token1().gas(msg.gas);
                            v41 = MEM[0x0].balanceOf(v28).gas(msg.gas);
                            v16 = v42 = MEM[0] - v38;
                            break;
                        } else {
                            v43 = v28.token0().gas(msg.gas);
                            v44 = MEM[0x0].balanceOf(v28).gas(msg.gas);
                            v16 = v45 = MEM[0] - v38;
                            break;
                        }
                    } else {
                        break;
                    }
                    v46 = bool(v38);
                    if (v46) {
                        v46 = v47 = bool(v38);
                        break;
                    } else {
                        break;
                    }
                    require(v46, Error(0x653131));
                    require(!v16 | (v16 * 997 / v16 == 997), Panic(17)); // arithmetic overflow or underflow
                    v48 = _SafeMul(v16 * 997, v38);
                    require((v38 * 1000 / v38 == 1000) | !v38, Panic(17)); // arithmetic overflow or underflow
                    v49 = _SafeAdd(v38 * 1000, v16 * 997);
                    v16 = _SafeDiv(v48, v49);
                    if (bool(!(v27 & 0x80))) {
                        v16 = v50 = 0;
                    } else {
                        v16 = v51 = 0;
                    }
                    require((address(v28)).code.size);
                    v52 = address(v28).swap(v16, v16, address(v28), 128, 0).gas(msg.gas);
                    if (!v52) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else if (v52) {
                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                    } else {
                        break;
                    }
                } else {
                    if (0 == v27 & 0x80) {
                        v53 = v54 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v53 = 0x1000276a4;
                    }
                    if (v24) {
                        if (bool(!(v27 & 0x80))) {
                            v55 = v28.token1().gas(msg.gas);
                            v56 = MEM[0x0].balanceOf(this).gas(msg.gas);
                            v57 = MEM[0];
                        } else {
                            v58 = v28.token0().gas(msg.gas);
                            v59 = MEM[0x0].balanceOf(this).gas(msg.gas);
                            v57 = v60 = MEM[0];
                        }
                        if (v16 > v57) {
                            v61 = _SafeDiv((v16 - v57) * 10000, v16);
                            v16 = v62 = v57 - (v61 + v25) * v57 / 10000 - 1;
                            break;
                        } else {
                            break;
                        }
                        break;
                    } else {
                        break;
                    }
                    if (v27 & 0x7f == 4) {
                        v63 = 0x2032(v28);
                        if (0 == v27 & 0x80) {
                            v53 = v64 = 0xfffffffffffffffffffffffffffffffffffffff8 & v63 << 3;
                            break;
                        } else {
                            v53 = v65 = 0x1fffffffffffffffffffffffffffffffffffffff & v63 >> 3;
                        }
                        break;
                    } else {
                        break;
                    }
                    v66, /* uint256 */ v67, /* uint256 */ v68 = address(v28).swap(address(v28), v27 & 0x80, v16, address(v53), 160, 0).gas(msg.gas);
                    if (!v66) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v67 = v69 = 0;
                        v68 = v70 = 0;
                        if (v66) {
                            if (RETURNDATASIZE() < 64) {
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v71 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 64;
                                v71 = v72 = MEM[64] + 64;
                            }
                            require(v71 - MEM[64] >= 64);
                            break;
                        } else {
                            break;
                        }
                        if (bool(!(v27 & 0x80))) {
                            v16 = v73 = 0 - v67;
                        } else {
                            v16 = 0 - v68;
                        }
                    }
                }
                v27 = v27 >> 8;
                v25 += v25;
            }
        }
        v74 = v75 = varg3.word1 == 1;
        if (varg3.word1 != 1) {
            v74 = v76 = varg3.word1 == 2;
        }
        if (v74) {
            require(v8 < v16, Error(0x653131));
        }
    }
    if (0 == (2 == varg3.word1)) {
        v77 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(MEM[v9.data]), v8).gas(msg.gas);
        exit;
    } else {
        if (bool(!(varg3.word5 & 0x80))) {
            v78 = address(MEM[v9.data]).token1().gas(msg.gas);
            v79 = MEM[0];
        } else {
            v80 = address(MEM[v9.data]).token0().gas(msg.gas);
            v79 = v81 = MEM[0];
        }
        if (v14) {
            v82 = v79.balanceOf(this).gas(msg.gas);
            if (v16 > MEM[0]) {
                v83 = _SafeSub(v16, MEM[0]);
                require(!v83 | (0x186a0 == v83 * 0x186a0 / v83), Panic(17)); // arithmetic overflow or underflow
                v84 = _SafeDiv(v83 * 0x186a0, v16);
                require(v84 <= v84 + 1, Panic(17)); // arithmetic overflow or underflow
                require(!v8 | (0x186a0 == v8 * 0x186a0 / v8), Panic(17)); // arithmetic overflow or underflow
                require(uint256.max + (0x186a0 - v84) <= 0x186a0, Panic(17)); // arithmetic overflow or underflow
                v85 = _SafeDiv(v8 * 0x186a0, uint256.max + (0x186a0 - v84));
                v8 = v86 = v85 + 1;
                require(v85 <= v86, Panic(17)); // arithmetic overflow or underflow
                require(v86 < MEM[0], Error(0x653137));
            }
        }
        v87 = v79.transfer(address(MEM[v9.data]), v8).gas(msg.gas);
        exit;
    }
}

function withdrawErc20(address token) public nonPayable { 
    v0 = v1 = 32;
    require(msg.data.length - 4 >= v1);
    require(_withdrawMoney == msg.sender, Error(0x653030));
    v2 = MEM[64];
    v3, v4 = token.balanceOf(this).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v5 = 0;
    if (v3) {
        if (v1 > RETURNDATASIZE()) {
            v0 = v6 = RETURNDATASIZE();
        }
        require(!((v2 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
        require(v2 + v0 - v2 >= v1);
    }
    v7 = MEM[64];
    v8, /* bool */ v9 = token.transfer(_withdrawMoney, v4).gas(msg.gas);
    require(v8, MEM[64], RETURNDATASIZE());
    v9 = v10 = 0;
    if (v8) {
        if (v1 > RETURNDATASIZE()) {
            v0 = v11 = RETURNDATASIZE();
        }
        require(!((v7 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v7 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v7 + v0 - v7 >= v1);
        require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
    }
    return bool(v9);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x1647(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x18ba(uint256 varg0) private { 
    v0 = varg0.balanceOf(this).gas(msg.gas);
    v1 = varg0.transfer(msg.sender, MEM[0]).gas(msg.gas);
    return ;
}

function 0x1b29(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = !varg1;
    if (bool(varg1)) {
        v0 = v2 = !varg2;
    }
    if (v0) {
        return 0;
    } else {
        v3 = _SafeMul(varg0, varg3);
        v4 = _SafeMul(v3, varg2);
        require((varg1 * 0x186a0 / varg1 == 0x186a0) | v1, Panic(17)); // arithmetic overflow or underflow
        v5 = _SafeAdd(varg1 * 0x186a0, v3);
        v6 = _SafeDiv(v4, v5);
        return v6;
    }
}

function 0x1c54(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = v1 = 1;
    if (varg0 <= v1) {
        return 0;
    } else {
        v2 = varg3 >> 8;
        require(1 < varg4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 = address(MEM[64 + varg4]);
        v3 = v4 = 0;
        while (v0 < varg0) {
            if (v0 - (varg0 - 1)) {
                require(v0 + v1 < varg4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v3 = v5 = address(varg4[v0 + v1]);
            }
            if (v0 >= varg0 - 1) {
                v3 = v6 = this;
            } else {
                v7 = v2 & 0x7f00 == uint8.max + 1;
                if (v2 & 0x7f00 != uint8.max + 1) {
                    v7 = v8 = v2 & 0x7f00 == 1024;
                }
                if (!v7) {
                    require(!(v2 & 0x7f00), Error(0x653335));
                } else {
                    v3 = v9 = this;
                }
            }
            v10 = v2 & 0x7f == v1;
            if (v2 & 0x7f != v1) {
                v10 = v11 = v2 & 0x7f == 4;
            }
            if (!v10) {
                require(0 != !(v2 & 0x7f), Error(0x653336));
                v12 = v3.getReserves().gas(msg.gas);
                v13 = v14 = MEM[0];
                v13 = MEM[32];
                if (!bool(!(v2 & 0x80))) {
                }
                if (varg2) {
                    if (bool(!(v2 & 0x80))) {
                        v15 = v3.token1().gas(msg.gas);
                        v16 = MEM[0x0].balanceOf(v3).gas(msg.gas);
                        varg1 = v17 = MEM[0] - v13;
                    } else {
                        v18 = v3.token0().gas(msg.gas);
                        v19 = MEM[0x0].balanceOf(v3).gas(msg.gas);
                        varg1 = v20 = MEM[0] - v13;
                    }
                }
                v21 = bool(v13);
                if (v21) {
                    v21 = v22 = bool(v13);
                }
                require(v21, Error(0x653131));
                require(!varg1 | (varg1 * 997 / varg1 == 997), Panic(17)); // arithmetic overflow or underflow
                v23 = _SafeMul(varg1 * 997, v13);
                require((v13 * 1000 / v13 == 1000) | !v13, Panic(17)); // arithmetic overflow or underflow
                v24 = _SafeAdd(v13 * 1000, varg1 * 997);
                varg1 = _SafeDiv(v23, v24);
                if (bool(!(v2 & 0x80))) {
                    varg1 = v25 = 0;
                } else {
                    varg1 = v26 = 0;
                }
                require((address(v3)).code.size);
                v27 = address(v3).swap(varg1, varg1, address(v3), 128, 0).gas(msg.gas);
                if (!v27) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else if (v27) {
                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                }
            } else {
                if (0 == v2 & 0x80) {
                    v28 = v29 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v28 = 0x1000276a4;
                }
                if (varg2) {
                    if (bool(!(v2 & 0x80))) {
                        v30 = v3.token1().gas(msg.gas);
                        v31 = MEM[0x0].balanceOf(this).gas(msg.gas);
                        v32 = MEM[0];
                    } else {
                        v33 = v3.token0().gas(msg.gas);
                        v34 = MEM[0x0].balanceOf(this).gas(msg.gas);
                        v32 = v35 = MEM[0];
                    }
                    if (varg1 > v32) {
                        v36 = _SafeDiv((varg1 - v32) * 10000, varg1);
                        varg1 = v37 = v32 - (v36 + v1) * v32 / 10000 - 1;
                    }
                }
                if (v2 & 0x7f == 4) {
                    v38 = 0x2032(v3);
                    if (0 == v2 & 0x80) {
                        v28 = v39 = 0xfffffffffffffffffffffffffffffffffffffff8 & v38 << 3;
                    } else {
                        v28 = v40 = 0x1fffffffffffffffffffffffffffffffffffffff & v38 >> 3;
                    }
                }
                v41, /* uint256 */ v42, /* uint256 */ v43 = address(v3).swap(address(v3), v2 & 0x80, varg1, address(v28), 160, 0).gas(msg.gas);
                if (!v41) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v42 = v44 = 0;
                    v43 = v45 = 0;
                    if (v41) {
                        if (RETURNDATASIZE() < 64) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v46 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 64;
                            v46 = v47 = MEM[64] + 64;
                        }
                        require(v46 - MEM[64] >= 64);
                    }
                    if (bool(!(v2 & 0x80))) {
                        varg1 = v48 = 0 - v42;
                    } else {
                        varg1 = v49 = 0 - v43;
                    }
                }
            }
            v2 = v2 >> 8;
            v0 += v1;
        }
        return varg1;
    }
}

function 0x2032(address varg0) private { 
    v0 = v1 = 224;
    v2, /* address */ v3, /* int24 */ v4, /* uint16 */ v5, v6, v7, /* int24 */ v8, /* int24 */ v9 = varg0.safelyGetStateOfAMM().gas(msg.gas);
    v3 = v10 = 0;
    if (v2) {
        if (v1 > RETURNDATASIZE()) {
            v0 = v11 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v0 - MEM[64] >= v1);
        require(!0x97ce1c5100000000000000000000000000000000000000000000000000000000);
        require(!(v4 - int24(v4)));
        require(!(v5 - uint16(v5)));
        require(!(uint8(v6) - v6));
        require(!(uint128(v7) - v7));
        require(!(v8 - int24(v8)));
        require(!(v9 - int24(v9)));
    }
    if (v2) {
        return address(v3);
    } else {
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v12 = v13 = new bytes[](RETURNDATASIZE());
            require(!((v13 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v13 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v13)), Panic(65)); // failed memory allocation (too much memory)
            RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());
        }
        v14, /* address */ v15, /* int24 */ v16, /* uint16 */ v17, /* uint16 */ v18, /* uint16 */ v19, /* uint16 */ v20, /* bool */ v21 = varg0.globalState().gas(msg.gas);
        require(v14, MEM[64], RETURNDATASIZE());
        v15 = v22 = 0;
        if (v14) {
            if (v1 > RETURNDATASIZE()) {
                v0 = v23 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v0 - MEM[64] >= v1);
            require(!0xe76c01e400000000000000000000000000000000000000000000000000000000);
            require(!(v16 - int24(v16)));
            require(!(v17 - uint16(v17)));
            require(!(v18 - uint16(v18)));
            require(!(v19 - uint16(v19)));
            require(!(v20 - uint16(v20)));
            require(!(v21 - bool(v21)));
        }
        return address(v15);
    }
}

function 0x21b3(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * varg1;
    v1 = varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0);
    if (varg0 * varg1 % uint256.max - v0 == varg0 * varg1 % uint256.max < v0) {
        return v0 >> 96;
    } else {
        require(uint96.max + 1 > v1);
        require((v1 == varg0 * varg1 % (uint96.max + 1) > v0) | (uint160.max + 1 == (v1 - (varg0 * varg1 % (uint96.max + 1) > v0) << 160) / (v1 - (varg0 * varg1 % (uint96.max + 1) > v0))), Panic(17)); // arithmetic overflow or underflow
        v2 = v0 - varg0 * varg1 % (uint96.max + 1) >> 96 | v1 - (varg0 * varg1 % (uint96.max + 1) > v0) << 160;
        require(!v2 | (1 == v2 / v2), Panic(17)); // arithmetic overflow or underflow
        return v2;
    }
}

function withdrawMoney() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(msg.sender == _withdrawMoney, Error(0x653030));
    v0 = v1 = 0;
    if (!this.balance) {
        v0 = v2 = 2300;
    }
    v3, /* uint256 */ v4 = msg.sender.call().value(this.balance).gas(v0);
    require(v3, v4, RETURNDATASIZE());
}

function getBalance() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return this.balance;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function receive() public payable { 
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = tx.origin == 0xb6fa76be6f9503299dded765b903bbff3f9164d0;
    if (tx.origin != 0xb6fa76be6f9503299dded765b903bbff3f9164d0) {
        v1 = v3 = tx.origin == 0xbe48edae966f484cca7747caa73940068c7bb99;
    }
    if (!v1) {
        v1 = v4 = tx.origin == 0xbe2d0f535665e43477c37c57288859ec0b609b77;
    }
    if (!v1) {
        v1 = v5 = tx.origin == 0x39b9a705f5aa2fdf315bf5cc8ecd71dc821f45b1;
    }
    if (!v1) {
        v1 = v6 = tx.origin == 0x85a325539242d3b808f16232cc9a2cb4df9bea89;
    }
    if (!v1) {
        v1 = v7 = tx.origin == 0xafc9e6b3fa2222a9f3ee2e0301f0362120dae821;
    }
    require(v1, Error(0x653135));
    if (!msg.data[4 + data]) {
        if (0 <= amount1Delta) {
            v8 = msg.sender.token1().gas(msg.gas);
            0x18ba(MEM[0]);
        } else {
            v9 = msg.sender.token0().gas(msg.gas);
            v10 = MEM[0x0].balanceOf(this).gas(msg.gas);
            v11 = MEM[0x0].transfer(msg.sender, MEM[0]).gas(msg.gas);
        }
    } else {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 192);
        require(data.word6 <= uint64.max);
        require(4 + data + 32 + data.word6 + 31 < 4 + data + 32 + msg.data[4 + data]);
        require(msg.data[4 + data + 32 + data.word6] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v12 = new uint256[](msg.data[4 + data + 32 + data.word6]);
        require(!((v12 + (32 + (msg.data[4 + data + 32 + data.word6] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (32 + (msg.data[4 + data + 32 + data.word6] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
        v13 = v14 = v12.data;
        require(4 + data + 32 + data.word6 + (msg.data[4 + data + 32 + data.word6] << 5) + 32 <= 4 + data + 32 + msg.data[4 + data]);
        v15 = v16 = 32 + (4 + data + 32 + data.word6);
        while (v15 < 4 + data + 32 + data.word6 + (msg.data[4 + data + 32 + data.word6] << 5) + 32) {
            require(!(msg.data[v15] - address(msg.data[v15])));
            MEM[v13] = msg.data[v15];
            v15 += 32;
            v13 += 32;
        }
        require(v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (!(data.word5 & 0x80)) {
            v17 = v18 = 0x1647(amount0Delta);
        } else {
            v17 = v19 = 0x1647(amount1Delta);
        }
        v20 = 0;
        v21 = 0;
        if (data.word2 > 1) {
            v20 = v22 = bool(data.word4 & 0x2);
            v21 = v23 = 0x1c54(data.word2, v17, v22, data.word5, v12);
            v24 = v25 = data.word1 == 1;
            if (data.word1 != 1) {
                v24 = v26 = data.word1 == 2;
            }
            if (v24) {
                require(v27 < v23, Error(0x653132));
            }
        }
        if (0 == (2 == data.word1)) {
            v28 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(MEM[v12.data]), v27).gas(msg.gas);
        } else {
            if (bool(!(data.word5 & 0x80))) {
                v29 = address(MEM[v12.data]).token1().gas(msg.gas);
                v30 = MEM[0];
            } else {
                v31 = address(MEM[v12.data]).token0().gas(msg.gas);
                v30 = v32 = MEM[0];
            }
            if (v20) {
                v33 = v30.balanceOf(this).gas(msg.gas);
                if (v21 > MEM[0]) {
                    v34 = _SafeSub(v21, MEM[0]);
                    require(!v34 | (0x186a0 == v34 * 0x186a0 / v34), Panic(17)); // arithmetic overflow or underflow
                    v35 = _SafeDiv(v34 * 0x186a0, v21);
                    require(v35 <= v35 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(!v27 | (0x186a0 == v27 * 0x186a0 / v27), Panic(17)); // arithmetic overflow or underflow
                    require(uint256.max + (0x186a0 - v35) <= 0x186a0, Panic(17)); // arithmetic overflow or underflow
                    v36 = _SafeDiv(v27 * 0x186a0, uint256.max + (0x186a0 - v35));
                    v27 = v37 = v36 + 1;
                    require(v36 <= v37, Panic(17)); // arithmetic overflow or underflow
                    require(v37 < MEM[0], Error(0x653138));
                }
            }
            v38 = v30.transfer(address(MEM[v12.data]), v27).gas(msg.gas);
        }
    }
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_withdrawMoney == msg.sender, Error(0x653030));
    _withdrawMoney = newOwner;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xc6f72bc != function_selector >> 224) {
            if (0x10d1e85c != function_selector >> 224) {
                if (0x12065fe0 == function_selector >> 224) {
                    getBalance();
                } else {
                    if (0x23a69e75 != function_selector >> 224) {
                        if (0x2c8958f6 != function_selector >> 224) {
                            if (0x654b6487 != function_selector >> 224) {
                                if (0x84800812 != function_selector >> 224) {
                                    if (0xac446002 == function_selector >> 224) {
                                        withdrawMoney();
                                    } else if (0xc7e42b1b == function_selector >> 224) {
                                        withdrawErc20(address);
                                    } else if (0xd2cef11c != function_selector >> 224) {
                                        if (0xe1ced726 == function_selector >> 224) {
                                            0xe1ced726();
                                        } else if (0xf2fde38b == function_selector >> 224) {
                                            transferOwnership(address);
                                        } else if (0xfa461e33 != function_selector >> 224) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                    algebraSwapCallback(int256,int256,bytes);
                }
            }
        }
        0x0c6f72bc();
    }
    if (!msg.data.length) {
        receive();
    } else {
        exit;
    }
}
