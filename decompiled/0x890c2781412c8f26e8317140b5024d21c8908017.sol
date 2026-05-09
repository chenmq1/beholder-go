// Decompiled by library.dedaub.com
// 2026.04.17 14:10 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 _uniswapV2Call; // TRANSIENT_STORAGE[0x0]



function 0x44d79ec4(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = varg2;
    v0 = 0x14bd(varg4);
    if (!v0) {
        v1 = v2 = MEM[64];
        v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v3) {
            v4 = v5 = 0x242a6;
            v4 = v6 = 3545;
            v7 = v8 = 0;
            if (v3) {
                v9 = v10 = 1301;
                v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x51b0x103. Refer to 3-address code (TAC);
                }
            } else {
                v12 = v13 = this.balance;
            }
            require(!((v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v14 = v1 + v11;
            require(v14 - v1 >= 32);
            v7 = MEM[v1];
            // Unknown jump to Block ['0x20790x103', '0x2df10x103', '0x5150x103']. Refer to 3-address code (TAC);
            v12 = this.balance;
            if (msg.value % 10) {
                if (msg.value % 10 - 1) {
                    if (msg.value % 10 - 2) {
                        require(!(3 - msg.value % 10), Error(0x533132));
                        v15, v16 = 0x1707(v4);
                        v17 = 0x1ecf(msg.value / 10, v16, v7, v15);
                        0x24cb(v4, v4, v7);
                        v18 = v19 = address(v4);
                        require(v19.code.size);
                        v20 = v21 = MEM[64];
                        MEM[v21] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[v21 + 4] = v17;
                        v22 = v23 = 0;
                        MEM[v21 + 36] = v23;
                        MEM[v21 + 68] = this;
                        MEM[v21 + 100] = 128;
                        MEM[v21 + 132] = v23;
                        v24 = v25 = v21 + 164;
                    } else {
                        v26, v27 = 0x1707(v4);
                        v28 = 0x1ecf(msg.value / 10, v26, v7, v27);
                        0x24cb(v4, v4, v7);
                        v18 = address(v4);
                        require(v18.code.size);
                        v20 = MEM[64];
                        MEM[v20] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        v22 = 0;
                        MEM[v20 + 4] = v22;
                        MEM[v20 + 36] = v28;
                        MEM[v20 + 68] = this;
                        MEM[v20 + 100] = 128;
                        MEM[v20 + 132] = v22;
                        v24 = v20 + 164;
                    }
                    v29 = v18.call(MEM[v1030x1ee6:v1030x1ee6 + v1030x1f38 - v1030x1ee6], MEM[v1030x1ee6:v1030x1ee6 + v1030x1f0a]).value(v22).gas(msg.gas);
                    if (v29) {
                        v4 = v30 = 0x247d2;
                        if (v29) {
                            require(!((v20 > uint64.max) | (v20 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v20;
                            require(v20 - v20 >= 0);
                        }
                    }
                } else {
                    v31 = v32 = 64;
                    v33 = v34 = 0;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v36 = MEM[v32];
                    MEM[v36] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v36 + 4] = address(this);
                    MEM[v36 + 4 + 32] = 0;
                    MEM[v36 + 4 + 64] = v7;
                    MEM[v36 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v36 + 4 + 128] = 160;
                    MEM[v36 + 4 + 160] = v37.length;
                    MCOPY(v36 + 4 + 160 + 32, v37.data, v37.length);
                    MEM[v36 + 4 + 160 + v37.length + 32] = 0;
                    v38 = 32 + (v36 + 4 + 160) + 32;
                }
            } else {
                v31 = 64;
                v33 = 0;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v35 = MEM[v31];
                MEM[v35] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v35 + 4] = address(this);
                MEM[v35 + 4 + 32] = 1;
                MEM[v35 + 4 + 64] = v7;
                MEM[v35 + 4 + 96] = address(0x1000276a4);
                MEM[v35 + 4 + 128] = 160;
                MEM[v35 + 4 + 160] = v39.length;
                MCOPY(v35 + 4 + 160 + 32, v39.data, v39.length);
                MEM[v35 + 4 + 160 + v39.length + 32] = 0;
                v38 = v40 = 32 + (v35 + 4 + 160) + 32;
            }
            v41 = address(v4).call(MEM[v1030x1d7d:v1030x1d7d + v18c3V0x19ffV0x1e610x103 - v1030x1d7d], MEM[v1030x1d7d:v1030x1d7d + v1030x1cf9]).value(v33).gas(msg.gas);
            if (v41) {
                v4 = v42 = 0x24765;
                if (v41) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v43 = v35 + RETURNDATASIZE();
                    } else {
                        require(!((v35 + 64 > uint64.max) | (v35 + 64 < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + 64;
                        v43 = v44 = v35 + 64;
                    }
                    require(v43 - v35 >= 64);
                }
            }
            _uniswapV2Call = 0;
            v1 = v45 = MEM[64];
            v4 = v4 & 0x3ffffffffffff;
            v4 = v46 = uint24(v4 >> 60);
            v4 = 0x3ff & v4 >> 50;
            v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v47) {
                v7 = v48 = 0;
                if (v47) {
                    v9 = v49 = 11761;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v45 + 32;
                        v14 = v50 = v45 + 32;
                    }
                }
            }
            v51 = this.balance;
            v52 = _SafeAdd(v7, v51);
            v53 = _SafeSub(v52, v4);
            if (!v4) {
                v54 = _SafeSub(v4, msg.gas);
                v55 = 0x134d(v54);
                v56 = _SafeMul(v4, v55);
                require(v56 < v53, Error(52));
                v57 = 0x134d(msg.gas);
                require(v57 >= msg.gas, Error(13665));
                v58 = _SafeSub(v53, v56);
                0x312a(v52, v7, v58, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                // Unknown jump to Block ['0x247650x103', '0x247d20x103']. Refer to 3-address code (TAC);
            } else {
                v59 = _SafeSub(v4, msg.gas);
                v60 = 0x135c(v59);
                v61 = _SafeMul(v4, v60);
                require(v61 < v53, Error(52));
                v62 = _SafeSub(v53, v61);
                require(v4 <= 1000);
                v63 = _SafeMul(v62, v4);
                v64 = _SafeSub(v62, v63 / 1000);
                v65 = 0;
                if (this.balance <= v63 / 1000) {
                    v66 = 0x1378(v7);
                    0x324c(v66, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v65 = v67 = 1;
                }
                if (v63 / 1000) {
                    v68 = block.coinbase.call().value(v63 / 1000).gas(10000);
                }
                v69 = 0x135c(msg.gas);
                require(v69 >= msg.gas, Error(13666));
                v70 = v4 < 10 ** 9;
                if (v70) {
                    if (v52 - v63 / 1000 <= v52) {
                        v70 = v71 = 10 ** 17 < v52 - v63 / 1000;
                    }
                }
                if (v70) {
                    v72 = 0x197e(v4);
                    v70 = v73 = v72 < v64;
                }
                if (v70) {
                    if (!v65) {
                        if (this.balance < v7) {
                            v74 = 0x1378(v7);
                            0x23bd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v74);
                        } else {
                            v75 = 0x1378(this.balance);
                            v76, /* uint256 */ v77 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v75).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v78 = v79 = new bytes[](RETURNDATASIZE());
                                require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                                v77 = v79.data;
                                RETURNDATACOPY(v77, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v80 = 0x1378(this.balance);
                        v81, /* uint256 */ v82 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v80).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v83 = v84 = new bytes[](RETURNDATASIZE());
                            require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                            v82 = v84.data;
                            RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                        }
                    }
                }
                // Unknown jump to Block ['0x247650x103', '0x247d20x103']. Refer to 3-address code (TAC);
            }
            exit;
            // Unknown jump to Block 0x242a6. Refer to 3-address code (TAC);
            v11 = v85 = RETURNDATASIZE();
            // Unknown jump to Block 0x5030x103. Refer to 3-address code (TAC);
            v4 = v86 = v7 + v12;
            if (v7 <= v86) {
                v87, v88 = 0x1707(v4);
                v89 = 0x17dd(v4);
                v90 = 0x182e(v4);
                v91 = v90 * v90 * v88 % uint256.max - v90 * v90 * v88 - (v90 * v90 * v88 % uint256.max < v90 * v90 * v88) + (v90 * v90 % uint256.max - v90 * v90 - (v90 * v90 % uint256.max < v90 * v90)) * v88;
                v92 = v93 = v87 * (uint192.max + 1) % uint256.max - (v87 << 192) - (v87 * (uint192.max + 1) % uint256.max < v87 << 192) < v91;
                if (v87 * (uint192.max + 1) % uint256.max - (v87 << 192) - (v87 * (uint192.max + 1) % uint256.max < v87 << 192) >= v91) {
                    v92 = v94 = v87 * (uint192.max + 1) % uint256.max - (v87 << 192) - (v87 * (uint192.max + 1) % uint256.max < v87 << 192) == v91;
                    if (v94) {
                        v92 = v95 = v87 << 192 < v90 * v90 * v88;
                    }
                }
                if (0 == v92) {
                    0x220a(v4, v4, 0xfffff & v4 >> 108, 0xfffff & v4 >> 88, 0xfffff & v4 >> 128, v89, v90, v88, v87);
                } else {
                    0x22b4(v4, v4, 0xfffff & v4 >> 88, 0xfffff & v4 >> 108, 0xfffff & v4 >> 128, v88, v87, v89, v90);
                }
                v1 = MEM[64];
                v96 = address(v4).balanceOf(this).gas(msg.gas);
                if (v96) {
                    v7 = v97 = 0;
                    if (v96) {
                        v9 = v98 = 8313;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v1 + 32;
                            v14 = v99 = v1 + 32;
                        }
                    }
                }
            }
            revert(Panic(17));
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x2c6e2884(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = varg2;
    v0 = 0x14bd(varg4);
    if (!v0) {
        v1 = v2 = MEM[64];
        v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v3) {
            v4 = v5 = 0x2423d;
            v4 = v6 = 3291;
            v7 = v8 = 0;
            if (v3) {
                v9 = v10 = 1301;
                v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x51b0x108. Refer to 3-address code (TAC);
                }
            } else {
                v12 = v13 = this.balance;
            }
            require(!((v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v14 = v1 + v11;
            require(v14 - v1 >= 32);
            v7 = MEM[v1];
            // Unknown jump to Block ['0x20790x108', '0x2df10x108', '0x5150x108']. Refer to 3-address code (TAC);
            v12 = this.balance;
            if (msg.value % 10) {
                if (msg.value % 10 - 1) {
                    if (msg.value % 10 - 2) {
                        require(!(3 - msg.value % 10), Error(0x533132));
                        v15, v16 = 0x1707(v4);
                        v17 = 0x1ecf(msg.value / 10, v16, v7, v15);
                        0x24cb(v4, v4, v7);
                        v18 = v19 = address(v4);
                        require(v19.code.size);
                        v20 = v21 = MEM[64];
                        MEM[v21] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[v21 + 4] = v17;
                        v22 = v23 = 0;
                        MEM[v21 + 36] = v23;
                        MEM[v21 + 68] = this;
                        MEM[v21 + 100] = 128;
                        MEM[v21 + 132] = v23;
                        v24 = v25 = v21 + 164;
                    } else {
                        v26, v27 = 0x1707(v4);
                        v28 = 0x1ecf(msg.value / 10, v26, v7, v27);
                        0x24cb(v4, v4, v7);
                        v18 = address(v4);
                        require(v18.code.size);
                        v20 = MEM[64];
                        MEM[v20] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        v22 = 0;
                        MEM[v20 + 4] = v22;
                        MEM[v20 + 36] = v28;
                        MEM[v20 + 68] = this;
                        MEM[v20 + 100] = 128;
                        MEM[v20 + 132] = v22;
                        v24 = v20 + 164;
                    }
                    v29 = v18.call(MEM[v1080x1ee6:v1080x1ee6 + v1080x1f38 - v1080x1ee6], MEM[v1080x1ee6:v1080x1ee6 + v1080x1f0a]).value(v22).gas(msg.gas);
                    if (v29) {
                        v4 = v30 = 0x247d2;
                        if (v29) {
                            require(!((v20 > uint64.max) | (v20 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v20;
                            require(v20 - v20 >= 0);
                        }
                    }
                } else {
                    v31 = v32 = 64;
                    v33 = v34 = 0;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v36 = MEM[v32];
                    MEM[v36] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v36 + 4] = address(this);
                    MEM[v36 + 4 + 32] = 0;
                    MEM[v36 + 4 + 64] = v7;
                    MEM[v36 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v36 + 4 + 128] = 160;
                    MEM[v36 + 4 + 160] = v37.length;
                    MCOPY(v36 + 4 + 160 + 32, v37.data, v37.length);
                    MEM[v36 + 4 + 160 + v37.length + 32] = 0;
                    v38 = 32 + (v36 + 4 + 160) + 32;
                }
            } else {
                v31 = 64;
                v33 = 0;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v35 = MEM[v31];
                MEM[v35] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v35 + 4] = address(this);
                MEM[v35 + 4 + 32] = 1;
                MEM[v35 + 4 + 64] = v7;
                MEM[v35 + 4 + 96] = address(0x1000276a4);
                MEM[v35 + 4 + 128] = 160;
                MEM[v35 + 4 + 160] = v39.length;
                MCOPY(v35 + 4 + 160 + 32, v39.data, v39.length);
                MEM[v35 + 4 + 160 + v39.length + 32] = 0;
                v38 = v40 = 32 + (v35 + 4 + 160) + 32;
            }
            v41 = address(v4).call(MEM[v1080x1d7d:v1080x1d7d + v18c3V0x19ffV0x1e610x108 - v1080x1d7d], MEM[v1080x1d7d:v1080x1d7d + v1080x1cf9]).value(v33).gas(msg.gas);
            if (v41) {
                v4 = v42 = 0x24765;
                if (v41) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v43 = v35 + RETURNDATASIZE();
                    } else {
                        require(!((v35 + 64 > uint64.max) | (v35 + 64 < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + 64;
                        v43 = v44 = v35 + 64;
                    }
                    require(v43 - v35 >= 64);
                }
            }
            _uniswapV2Call = 0;
            v1 = v45 = MEM[64];
            v4 = v4 & 0x3ffffffffffff;
            v4 = v46 = uint24(v4 >> 60);
            v4 = 0x3ff & v4 >> 50;
            v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v47) {
                v7 = v48 = 0;
                if (v47) {
                    v9 = v49 = 11761;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v45 + 32;
                        v14 = v50 = v45 + 32;
                    }
                }
            }
            v51 = this.balance;
            v52 = _SafeAdd(v7, v51);
            v53 = _SafeSub(v52, v4);
            if (!v4) {
                v54 = _SafeSub(v4, msg.gas);
                v55 = 0x134d(v54);
                v56 = _SafeMul(v4, v55);
                require(v56 < v53, Error(52));
                v57 = 0x134d(msg.gas);
                require(v57 >= msg.gas, Error(13665));
                v58 = _SafeSub(v53, v56);
                0x312a(v52, v7, v58, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                // Unknown jump to Block ['0x247650x108', '0x247d20x108']. Refer to 3-address code (TAC);
            } else {
                v59 = _SafeSub(v4, msg.gas);
                v60 = 0x135c(v59);
                v61 = _SafeMul(v4, v60);
                require(v61 < v53, Error(52));
                v62 = _SafeSub(v53, v61);
                require(v4 <= 1000);
                v63 = _SafeMul(v62, v4);
                v64 = _SafeSub(v62, v63 / 1000);
                v65 = 0;
                if (this.balance <= v63 / 1000) {
                    v66 = 0x1378(v7);
                    0x324c(v66, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v65 = v67 = 1;
                }
                if (v63 / 1000) {
                    v68 = block.coinbase.call().value(v63 / 1000).gas(10000);
                }
                v69 = 0x135c(msg.gas);
                require(v69 >= msg.gas, Error(13666));
                v70 = v4 < 10 ** 9;
                if (v70) {
                    if (v52 - v63 / 1000 <= v52) {
                        v70 = v71 = 10 ** 17 < v52 - v63 / 1000;
                    }
                }
                if (v70) {
                    v72 = 0x197e(v4);
                    v70 = v73 = v72 < v64;
                }
                if (v70) {
                    if (!v65) {
                        if (this.balance < v7) {
                            v74 = 0x1378(v7);
                            0x23bd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v74);
                        } else {
                            v75 = 0x1378(this.balance);
                            v76, /* uint256 */ v77 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v75).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v78 = v79 = new bytes[](RETURNDATASIZE());
                                require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                                v77 = v79.data;
                                RETURNDATACOPY(v77, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v80 = 0x1378(this.balance);
                        v81, /* uint256 */ v82 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v80).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v83 = v84 = new bytes[](RETURNDATASIZE());
                            require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                            v82 = v84.data;
                            RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                        }
                    }
                }
                // Unknown jump to Block ['0x247650x108', '0x247d20x108']. Refer to 3-address code (TAC);
            }
            exit;
            // Unknown jump to Block 0x2423d. Refer to 3-address code (TAC);
            v11 = v85 = RETURNDATASIZE();
            // Unknown jump to Block 0x5030x108. Refer to 3-address code (TAC);
            v4 = v86 = v7 + v12;
            if (v7 <= v86) {
                v87 = 0x17dd(v4);
                v88 = 0x182e(v4);
                v89 = 0x17dd(v4);
                v90 = 0x182e(v4);
                if (v88 <= v90) {
                    0x21a3(v4, v4, 0xfffff & v4 >> 108, 0xfffff & v4 >> 88, 0xfffff & v4 >> 128, v89, v90, v87, v88);
                } else {
                    0x21a3(v4, v4, 0xfffff & v4 >> 88, 0xfffff & v4 >> 108, 0xfffff & v4 >> 128, v87, v88, v89, v90);
                }
                v1 = MEM[64];
                v91 = address(v4).balanceOf(this).gas(msg.gas);
                if (v91) {
                    v7 = v92 = 0;
                    if (v91) {
                        v9 = v93 = 8313;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v1 + 32;
                            v14 = v94 = v1 + 32;
                        }
                    }
                }
            }
            revert(Panic(17));
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
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

function 0x1a37e82a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = varg2;
    v0 = 0x14bd(varg4);
    if (!v0) {
        v1 = v2 = MEM[64];
        v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v3) {
            v4 = v5 = 0x23fe6;
            v4 = v6 = 1745;
            v7 = v8 = 0;
            if (v3) {
                v9 = v10 = 1301;
                v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x51b0x117. Refer to 3-address code (TAC);
                }
            } else {
                v12 = v13 = this.balance;
            }
            require(!((v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v14 = v1 + v11;
            require(v14 - v1 >= 32);
            v7 = MEM[v1];
            // Unknown jump to Block ['0x20790x117', '0x2df10x117', '0x5150x117']. Refer to 3-address code (TAC);
            v12 = this.balance;
            if (msg.value % 10) {
                if (msg.value % 10 - 1) {
                    if (msg.value % 10 - 2) {
                        require(!(3 - msg.value % 10), Error(0x533132));
                        v15, v16 = 0x1707(v4);
                        v17 = 0x1ecf(msg.value / 10, v16, v7, v15);
                        0x24cb(v4, v4, v7);
                        v18 = v19 = address(v4);
                        require(v19.code.size);
                        v20 = v21 = MEM[64];
                        MEM[v21] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[v21 + 4] = v17;
                        v22 = v23 = 0;
                        MEM[v21 + 36] = v23;
                        MEM[v21 + 68] = this;
                        MEM[v21 + 100] = 128;
                        MEM[v21 + 132] = v23;
                        v24 = v25 = v21 + 164;
                    } else {
                        v26, v27 = 0x1707(v4);
                        v28 = 0x1ecf(msg.value / 10, v26, v7, v27);
                        0x24cb(v4, v4, v7);
                        v18 = address(v4);
                        require(v18.code.size);
                        v20 = MEM[64];
                        MEM[v20] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        v22 = 0;
                        MEM[v20 + 4] = v22;
                        MEM[v20 + 36] = v28;
                        MEM[v20 + 68] = this;
                        MEM[v20 + 100] = 128;
                        MEM[v20 + 132] = v22;
                        v24 = v20 + 164;
                    }
                    v29 = v18.call(MEM[v1170x1ee6:v1170x1ee6 + v1170x1f38 - v1170x1ee6], MEM[v1170x1ee6:v1170x1ee6 + v1170x1f0a]).value(v22).gas(msg.gas);
                    if (v29) {
                        v4 = v30 = 0x247d2;
                        if (v29) {
                            require(!((v20 > uint64.max) | (v20 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v20;
                            require(v20 - v20 >= 0);
                        }
                    }
                } else {
                    v31 = v32 = 64;
                    v33 = v34 = 0;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v36 = MEM[v32];
                    MEM[v36] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v36 + 4] = address(this);
                    MEM[v36 + 4 + 32] = 0;
                    MEM[v36 + 4 + 64] = v7;
                    MEM[v36 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v36 + 4 + 128] = 160;
                    MEM[v36 + 4 + 160] = v37.length;
                    MCOPY(v36 + 4 + 160 + 32, v37.data, v37.length);
                    MEM[v36 + 4 + 160 + v37.length + 32] = 0;
                    v38 = 32 + (v36 + 4 + 160) + 32;
                }
            } else {
                v31 = 64;
                v33 = 0;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v35 = MEM[v31];
                MEM[v35] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v35 + 4] = address(this);
                MEM[v35 + 4 + 32] = 1;
                MEM[v35 + 4 + 64] = v7;
                MEM[v35 + 4 + 96] = address(0x1000276a4);
                MEM[v35 + 4 + 128] = 160;
                MEM[v35 + 4 + 160] = v39.length;
                MCOPY(v35 + 4 + 160 + 32, v39.data, v39.length);
                MEM[v35 + 4 + 160 + v39.length + 32] = 0;
                v38 = v40 = 32 + (v35 + 4 + 160) + 32;
            }
            v41 = address(v4).call(MEM[v1170x1d7d:v1170x1d7d + v18c3V0x19ffV0x1e610x117 - v1170x1d7d], MEM[v1170x1d7d:v1170x1d7d + v1170x1cf9]).value(v33).gas(msg.gas);
            if (v41) {
                v4 = v42 = 0x24765;
                if (v41) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v43 = v35 + RETURNDATASIZE();
                    } else {
                        require(!((v35 + 64 > uint64.max) | (v35 + 64 < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + 64;
                        v43 = v44 = v35 + 64;
                    }
                    require(v43 - v35 >= 64);
                }
            }
            _uniswapV2Call = 0;
            v1 = v45 = MEM[64];
            v4 = v4 & 0x3ffffffffffff;
            v4 = v46 = uint24(v4 >> 60);
            v4 = 0x3ff & v4 >> 50;
            v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v47) {
                v7 = v48 = 0;
                if (v47) {
                    v9 = v49 = 11761;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v45 + 32;
                        v14 = v50 = v45 + 32;
                    }
                }
            }
            v51 = this.balance;
            v52 = _SafeAdd(v7, v51);
            v53 = _SafeSub(v52, v4);
            if (!v4) {
                v54 = _SafeSub(v4, msg.gas);
                v55 = 0x134d(v54);
                v56 = _SafeMul(v4, v55);
                require(v56 < v53, Error(52));
                v57 = 0x134d(msg.gas);
                require(v57 >= msg.gas, Error(13665));
                v58 = _SafeSub(v53, v56);
                0x312a(v52, v7, v58, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                // Unknown jump to Block ['0x247650x117', '0x247d20x117']. Refer to 3-address code (TAC);
            } else {
                v59 = _SafeSub(v4, msg.gas);
                v60 = 0x135c(v59);
                v61 = _SafeMul(v4, v60);
                require(v61 < v53, Error(52));
                v62 = _SafeSub(v53, v61);
                require(v4 <= 1000);
                v63 = _SafeMul(v62, v4);
                v64 = _SafeSub(v62, v63 / 1000);
                v65 = 0;
                if (this.balance <= v63 / 1000) {
                    v66 = 0x1378(v7);
                    0x324c(v66, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v65 = v67 = 1;
                }
                if (v63 / 1000) {
                    v68 = block.coinbase.call().value(v63 / 1000).gas(10000);
                }
                v69 = 0x135c(msg.gas);
                require(v69 >= msg.gas, Error(13666));
                v70 = v4 < 10 ** 9;
                if (v70) {
                    if (v52 - v63 / 1000 <= v52) {
                        v70 = v71 = 10 ** 17 < v52 - v63 / 1000;
                    }
                }
                if (v70) {
                    v72 = 0x197e(v4);
                    v70 = v73 = v72 < v64;
                }
                if (v70) {
                    if (!v65) {
                        if (this.balance < v7) {
                            v74 = 0x1378(v7);
                            0x23bd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v74);
                        } else {
                            v75 = 0x1378(this.balance);
                            v76, /* uint256 */ v77 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v75).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v78 = v79 = new bytes[](RETURNDATASIZE());
                                require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                                v77 = v79.data;
                                RETURNDATACOPY(v77, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v80 = 0x1378(this.balance);
                        v81, /* uint256 */ v82 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v80).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v83 = v84 = new bytes[](RETURNDATASIZE());
                            require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                            v82 = v84.data;
                            RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                        }
                    }
                }
                // Unknown jump to Block ['0x247650x117', '0x247d20x117']. Refer to 3-address code (TAC);
            }
            exit;
            // Unknown jump to Block 0x23fe6. Refer to 3-address code (TAC);
            v11 = v85 = RETURNDATASIZE();
            // Unknown jump to Block 0x5030x117. Refer to 3-address code (TAC);
            v4 = v86 = v7 + v12;
            if (v7 <= v86) {
                v87 = 0x17dd(v4);
                v88 = 0x182e(v4);
                v89, v90 = 0x1707(v4);
                v91 = v88 * v88 * v90 % uint256.max - v88 * v88 * v90 - (v88 * v88 * v90 % uint256.max < v88 * v88 * v90) + (v88 * v88 % uint256.max - v88 * v88 - (v88 * v88 % uint256.max < v88 * v88)) * v90;
                v92 = v93 = v91 > v89 * (uint192.max + 1) % uint256.max - (v89 << 192) - (v89 * (uint192.max + 1) % uint256.max < v89 << 192);
                if (v91 <= v89 * (uint192.max + 1) % uint256.max - (v89 << 192) - (v89 * (uint192.max + 1) % uint256.max < v89 << 192)) {
                    v92 = v94 = v91 == v89 * (uint192.max + 1) % uint256.max - (v89 << 192) - (v89 * (uint192.max + 1) % uint256.max < v89 << 192);
                    if (v94) {
                        v92 = v95 = v88 * v88 * v90 > v89 << 192;
                    }
                }
                if (0 == v92) {
                    0x1b99(v4, v4, 0xfffff & v4 >> 108, 0xfffff & v4 >> 88, 0xfffff & v4 >> 128, v90, v89, v87, v88);
                } else {
                    0x1a40(v4, v4, 0xfffff & v4 >> 88, 0xfffff & v4 >> 108, 0xfffff & v4 >> 128, v87, v88, v90, v89);
                }
                v1 = MEM[64];
                v96 = address(v4).balanceOf(this).gas(msg.gas);
                if (v96) {
                    v7 = v97 = 0;
                    if (v96) {
                        v9 = v98 = 8313;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v1 + 32;
                            v14 = v99 = v1 + 32;
                        }
                    }
                }
            }
            revert(Panic(17));
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x145daf6d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = varg2;
    v0 = 0x14bd(varg4);
    if (!v0) {
        v1 = v2 = MEM[64];
        v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v3) {
            v4 = v5 = 0x23f7d;
            v4 = v6 = 1501;
            v7 = v8 = 0;
            if (v3) {
                v9 = v10 = 1301;
                v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x51b0x11c. Refer to 3-address code (TAC);
                }
            } else {
                v12 = v13 = this.balance;
            }
            require(!((v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v14 = v1 + v11;
            require(v14 - v1 >= 32);
            v7 = MEM[v1];
            // Unknown jump to Block ['0x20790x11c', '0x2df10x11c', '0x5150x11c']. Refer to 3-address code (TAC);
            v12 = this.balance;
            if (msg.value % 10) {
                if (msg.value % 10 - 1) {
                    if (msg.value % 10 - 2) {
                        require(!(3 - msg.value % 10), Error(0x533132));
                        v15, v16 = 0x1707(v4);
                        v17 = 0x1ecf(msg.value / 10, v16, v7, v15);
                        0x24cb(v4, v4, v7);
                        v18 = v19 = address(v4);
                        require(v19.code.size);
                        v20 = v21 = MEM[64];
                        MEM[v21] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[v21 + 4] = v17;
                        v22 = v23 = 0;
                        MEM[v21 + 36] = v23;
                        MEM[v21 + 68] = this;
                        MEM[v21 + 100] = 128;
                        MEM[v21 + 132] = v23;
                        v24 = v25 = v21 + 164;
                    } else {
                        v26, v27 = 0x1707(v4);
                        v28 = 0x1ecf(msg.value / 10, v26, v7, v27);
                        0x24cb(v4, v4, v7);
                        v18 = address(v4);
                        require(v18.code.size);
                        v20 = MEM[64];
                        MEM[v20] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        v22 = 0;
                        MEM[v20 + 4] = v22;
                        MEM[v20 + 36] = v28;
                        MEM[v20 + 68] = this;
                        MEM[v20 + 100] = 128;
                        MEM[v20 + 132] = v22;
                        v24 = v20 + 164;
                    }
                    v29 = v18.call(MEM[v11c0x1ee6:v11c0x1ee6 + v11c0x1f38 - v11c0x1ee6], MEM[v11c0x1ee6:v11c0x1ee6 + v11c0x1f0a]).value(v22).gas(msg.gas);
                    if (v29) {
                        v4 = v30 = 0x247d2;
                        if (v29) {
                            require(!((v20 > uint64.max) | (v20 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v20;
                            require(v20 - v20 >= 0);
                        }
                    }
                } else {
                    v31 = v32 = 64;
                    v33 = v34 = 0;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v36 = MEM[v32];
                    MEM[v36] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v36 + 4] = address(this);
                    MEM[v36 + 4 + 32] = 0;
                    MEM[v36 + 4 + 64] = v7;
                    MEM[v36 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v36 + 4 + 128] = 160;
                    MEM[v36 + 4 + 160] = v37.length;
                    MCOPY(v36 + 4 + 160 + 32, v37.data, v37.length);
                    MEM[v36 + 4 + 160 + v37.length + 32] = 0;
                    v38 = 32 + (v36 + 4 + 160) + 32;
                }
            } else {
                v31 = 64;
                v33 = 0;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v35 = MEM[v31];
                MEM[v35] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v35 + 4] = address(this);
                MEM[v35 + 4 + 32] = 1;
                MEM[v35 + 4 + 64] = v7;
                MEM[v35 + 4 + 96] = address(0x1000276a4);
                MEM[v35 + 4 + 128] = 160;
                MEM[v35 + 4 + 160] = v39.length;
                MCOPY(v35 + 4 + 160 + 32, v39.data, v39.length);
                MEM[v35 + 4 + 160 + v39.length + 32] = 0;
                v38 = v40 = 32 + (v35 + 4 + 160) + 32;
            }
            v41 = address(v4).call(MEM[v11c0x1d7d:v11c0x1d7d + v18c3V0x19ffV0x1e610x11c - v11c0x1d7d], MEM[v11c0x1d7d:v11c0x1d7d + v11c0x1cf9]).value(v33).gas(msg.gas);
            if (v41) {
                v4 = v42 = 0x24765;
                if (v41) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v43 = v35 + RETURNDATASIZE();
                    } else {
                        require(!((v35 + 64 > uint64.max) | (v35 + 64 < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + 64;
                        v43 = v44 = v35 + 64;
                    }
                    require(v43 - v35 >= 64);
                }
            }
            _uniswapV2Call = 0;
            v1 = v45 = MEM[64];
            v4 = v4 & 0x3ffffffffffff;
            v4 = v46 = uint24(v4 >> 60);
            v4 = 0x3ff & v4 >> 50;
            v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v47) {
                v7 = v48 = 0;
                if (v47) {
                    v9 = v49 = 11761;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v45 + 32;
                        v14 = v50 = v45 + 32;
                    }
                }
            }
            v51 = this.balance;
            v52 = _SafeAdd(v7, v51);
            v53 = _SafeSub(v52, v4);
            if (!v4) {
                v54 = _SafeSub(v4, msg.gas);
                v55 = 0x134d(v54);
                v56 = _SafeMul(v4, v55);
                require(v56 < v53, Error(52));
                v57 = 0x134d(msg.gas);
                require(v57 >= msg.gas, Error(13665));
                v58 = _SafeSub(v53, v56);
                0x312a(v52, v7, v58, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                // Unknown jump to Block ['0x247650x11c', '0x247d20x11c']. Refer to 3-address code (TAC);
            } else {
                v59 = _SafeSub(v4, msg.gas);
                v60 = 0x135c(v59);
                v61 = _SafeMul(v4, v60);
                require(v61 < v53, Error(52));
                v62 = _SafeSub(v53, v61);
                require(v4 <= 1000);
                v63 = _SafeMul(v62, v4);
                v64 = _SafeSub(v62, v63 / 1000);
                v65 = 0;
                if (this.balance <= v63 / 1000) {
                    v66 = 0x1378(v7);
                    0x324c(v66, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v65 = v67 = 1;
                }
                if (v63 / 1000) {
                    v68 = block.coinbase.call().value(v63 / 1000).gas(10000);
                }
                v69 = 0x135c(msg.gas);
                require(v69 >= msg.gas, Error(13666));
                v70 = v4 < 10 ** 9;
                if (v70) {
                    if (v52 - v63 / 1000 <= v52) {
                        v70 = v71 = 10 ** 17 < v52 - v63 / 1000;
                    }
                }
                if (v70) {
                    v72 = 0x197e(v4);
                    v70 = v73 = v72 < v64;
                }
                if (v70) {
                    if (!v65) {
                        if (this.balance < v7) {
                            v74 = 0x1378(v7);
                            0x23bd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v74);
                        } else {
                            v75 = 0x1378(this.balance);
                            v76, /* uint256 */ v77 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v75).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v78 = v79 = new bytes[](RETURNDATASIZE());
                                require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                                v77 = v79.data;
                                RETURNDATACOPY(v77, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v80 = 0x1378(this.balance);
                        v81, /* uint256 */ v82 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v80).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v83 = v84 = new bytes[](RETURNDATASIZE());
                            require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                            v82 = v84.data;
                            RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                        }
                    }
                }
                // Unknown jump to Block ['0x247650x11c', '0x247d20x11c']. Refer to 3-address code (TAC);
            }
            exit;
            // Unknown jump to Block 0x23f7d. Refer to 3-address code (TAC);
            v11 = v85 = RETURNDATASIZE();
            // Unknown jump to Block 0x5030x11c. Refer to 3-address code (TAC);
            v4 = v86 = v7 + v12;
            if (v7 <= v86) {
                v87, v88 = 0x1707(v4);
                v89, v90 = 0x1707(v4);
                if (v90 * v87 <= v89 * v88) {
                    0x20b8(v4, v4, 0xfffff & v4 >> 108, 0xfffff & v4 >> 88, 0xfffff & v4 >> 128, v90, v89, v88, v87);
                } else {
                    0x20b8(v4, v4, 0xfffff & v4 >> 88, 0xfffff & v4 >> 108, 0xfffff & v4 >> 128, v88, v87, v90, v89);
                }
                v1 = MEM[64];
                v91 = address(v4).balanceOf(this).gas(msg.gas);
                if (v91) {
                    v7 = v92 = 0;
                    if (v91) {
                        v9 = v93 = 8313;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v1 + 32;
                            v14 = v94 = v1 + 32;
                        }
                    }
                }
            }
            revert(Panic(17));
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x11e7c4ec(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = varg2;
    v0 = 0x14bd(varg4);
    if (!v0) {
        v1 = v2 = MEM[64];
        v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v3) {
            v4 = v5 = 0x23ec8;
            v4 = v6 = 1090;
            v7 = v8 = 0;
            if (v3) {
                v9 = v10 = 1301;
                v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x51b0x121. Refer to 3-address code (TAC);
                }
            }
            v12 = this.balance;
            v4 = v13 = v7 + v12;
            if (v7 <= v13) {
                v14, v15 = 0x1707(v4);
                v16 = 0x17dd(v4);
                v17 = 0x182e(v4);
                v18 = v17 * v17 * v15 % uint256.max - v17 * v17 * v15 - (v17 * v17 * v15 % uint256.max < v17 * v17 * v15) + (v17 * v17 % uint256.max - v17 * v17 - (v17 * v17 % uint256.max < v17 * v17)) * v15;
                v19 = v20 = v14 * (uint192.max + 1) % uint256.max - (v14 << 192) - (v14 * (uint192.max + 1) % uint256.max < v14 << 192) > v18;
                if (v14 * (uint192.max + 1) % uint256.max - (v14 << 192) - (v14 * (uint192.max + 1) % uint256.max < v14 << 192) <= v18) {
                    v19 = v21 = v14 * (uint192.max + 1) % uint256.max - (v14 << 192) - (v14 * (uint192.max + 1) % uint256.max < v14 << 192) == v18;
                    if (v21) {
                        v19 = v22 = v14 << 192 > v17 * v17 * v15;
                    }
                }
                if (0 == v19) {
                    0x1a40(v4, v4, 0xfffff & v4 >> 108, 0xfffff & v4 >> 88, 0xfffff & v4 >> 128, v16, v17, v15, v14);
                } else {
                    0x1b99(v4, v4, 0xfffff & v4 >> 88, 0xfffff & v4 >> 108, 0xfffff & v4 >> 128, v15, v14, v16, v17);
                }
                v1 = MEM[64];
                v23 = address(v4).balanceOf(this).gas(msg.gas);
                if (v23) {
                    v7 = v24 = 0;
                    if (v23) {
                        v9 = v25 = 8313;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v1 + 32;
                            v26 = v27 = v1 + 32;
                        }
                    }
                }
            }
            revert(Panic(17));
            require(!((v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v26 = v1 + v11;
            require(v26 - v1 >= 32);
            v7 = MEM[v1];
            // Unknown jump to Block ['0x20790x121', '0x2df10x121', '0x5150x121']. Refer to 3-address code (TAC);
            if (msg.value % 10) {
                if (msg.value % 10 - 1) {
                    if (msg.value % 10 - 2) {
                        require(!(3 - msg.value % 10), Error(0x533132));
                        v28, v29 = 0x1707(v4);
                        v30 = 0x1ecf(msg.value / 10, v29, v7, v28);
                        0x24cb(v4, v4, v7);
                        v31 = v32 = address(v4);
                        require(v32.code.size);
                        v33 = v34 = MEM[64];
                        MEM[v34] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[v34 + 4] = v30;
                        v35 = v36 = 0;
                        MEM[v34 + 36] = v36;
                        MEM[v34 + 68] = this;
                        MEM[v34 + 100] = 128;
                        MEM[v34 + 132] = v36;
                        v37 = v38 = v34 + 164;
                    } else {
                        v39, v40 = 0x1707(v4);
                        v41 = 0x1ecf(msg.value / 10, v39, v7, v40);
                        0x24cb(v4, v4, v7);
                        v31 = address(v4);
                        require(v31.code.size);
                        v33 = MEM[64];
                        MEM[v33] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        v35 = 0;
                        MEM[v33 + 4] = v35;
                        MEM[v33 + 36] = v41;
                        MEM[v33 + 68] = this;
                        MEM[v33 + 100] = 128;
                        MEM[v33 + 132] = v35;
                        v37 = v33 + 164;
                    }
                    v42 = v31.call(MEM[v1210x1ee6:v1210x1ee6 + v1210x1f38 - v1210x1ee6], MEM[v1210x1ee6:v1210x1ee6 + v1210x1f0a]).value(v35).gas(msg.gas);
                    if (v42) {
                        v4 = v43 = 0x247d2;
                        if (v42) {
                            require(!((v33 > uint64.max) | (v33 < v33)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v33;
                            require(v33 - v33 >= 0);
                        }
                    }
                } else {
                    v44 = v45 = 64;
                    v46 = v47 = 0;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v48 = v49 = MEM[v45];
                    MEM[v49] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v49 + 4] = address(this);
                    MEM[v49 + 4 + 32] = 0;
                    MEM[v49 + 4 + 64] = v7;
                    MEM[v49 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v49 + 4 + 128] = 160;
                    MEM[v49 + 4 + 160] = v50.length;
                    MCOPY(v49 + 4 + 160 + 32, v50.data, v50.length);
                    MEM[v49 + 4 + 160 + v50.length + 32] = 0;
                    v51 = 32 + (v49 + 4 + 160) + 32;
                }
            } else {
                v44 = 64;
                v46 = 0;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v48 = MEM[v44];
                MEM[v48] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v48 + 4] = address(this);
                MEM[v48 + 4 + 32] = 1;
                MEM[v48 + 4 + 64] = v7;
                MEM[v48 + 4 + 96] = address(0x1000276a4);
                MEM[v48 + 4 + 128] = 160;
                MEM[v48 + 4 + 160] = v52.length;
                MCOPY(v48 + 4 + 160 + 32, v52.data, v52.length);
                MEM[v48 + 4 + 160 + v52.length + 32] = 0;
                v51 = v53 = 32 + (v48 + 4 + 160) + 32;
            }
            v54 = address(v4).call(MEM[v1210x1d7d:v1210x1d7d + v18c3V0x19ffV0x1e610x121 - v1210x1d7d], MEM[v1210x1d7d:v1210x1d7d + v1210x1cf9]).value(v46).gas(msg.gas);
            if (v54) {
                v4 = v55 = 0x24765;
                if (v54) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v48 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v48 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v56 = v48 + RETURNDATASIZE();
                    } else {
                        require(!((v48 + 64 > uint64.max) | (v48 + 64 < v48)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v48 + 64;
                        v56 = v57 = v48 + 64;
                    }
                    require(v56 - v48 >= 64);
                }
            }
            _uniswapV2Call = 0;
            v1 = v58 = MEM[64];
            v4 = v4 & 0x3ffffffffffff;
            v4 = v59 = uint24(v4 >> 60);
            v4 = 0x3ff & v4 >> 50;
            v60 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v60) {
                v7 = v61 = 0;
                if (v60) {
                    v9 = v62 = 11761;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v58 + 32 > uint64.max) | (v58 + 32 < v58)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v58 + 32;
                        v26 = v63 = v58 + 32;
                    }
                }
            }
            v64 = this.balance;
            v65 = _SafeAdd(v7, v64);
            v66 = _SafeSub(v65, v4);
            if (!v4) {
                v67 = _SafeSub(v4, msg.gas);
                v68 = 0x134d(v67);
                v69 = _SafeMul(v4, v68);
                require(v69 < v66, Error(52));
                v70 = 0x134d(msg.gas);
                require(v70 >= msg.gas, Error(13665));
                v71 = _SafeSub(v66, v69);
                0x312a(v65, v7, v71, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                // Unknown jump to Block ['0x247650x121', '0x247d20x121']. Refer to 3-address code (TAC);
            } else {
                v72 = _SafeSub(v4, msg.gas);
                v73 = 0x135c(v72);
                v74 = _SafeMul(v4, v73);
                require(v74 < v66, Error(52));
                v75 = _SafeSub(v66, v74);
                require(v4 <= 1000);
                v76 = _SafeMul(v75, v4);
                v77 = _SafeSub(v75, v76 / 1000);
                v78 = 0;
                if (this.balance <= v76 / 1000) {
                    v79 = 0x1378(v7);
                    0x324c(v79, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v78 = v80 = 1;
                }
                if (v76 / 1000) {
                    v81 = block.coinbase.call().value(v76 / 1000).gas(10000);
                }
                v82 = 0x135c(msg.gas);
                require(v82 >= msg.gas, Error(13666));
                v83 = v4 < 10 ** 9;
                if (v83) {
                    if (v65 - v76 / 1000 <= v65) {
                        v83 = v84 = 10 ** 17 < v65 - v76 / 1000;
                    }
                }
                if (v83) {
                    v85 = 0x197e(v4);
                    v83 = v86 = v85 < v77;
                }
                if (v83) {
                    if (!v78) {
                        if (this.balance < v7) {
                            v87 = 0x1378(v7);
                            0x23bd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v87);
                        } else {
                            v88 = 0x1378(this.balance);
                            v89, /* uint256 */ v90 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v88).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v91 = v92 = new bytes[](RETURNDATASIZE());
                                require(!((v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v92)), Panic(65)); // failed memory allocation (too much memory)
                                v90 = v92.data;
                                RETURNDATACOPY(v90, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v93 = 0x1378(this.balance);
                        v94, /* uint256 */ v95 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v93).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v96 = v97 = new bytes[](RETURNDATASIZE());
                            require(!((v97 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v97 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v97)), Panic(65)); // failed memory allocation (too much memory)
                            v95 = v97.data;
                            RETURNDATACOPY(v95, 0, RETURNDATASIZE());
                        }
                    }
                }
                // Unknown jump to Block ['0x247650x121', '0x247d20x121']. Refer to 3-address code (TAC);
            }
            exit;
            // Unknown jump to Block 0x23ec8. Refer to 3-address code (TAC);
            v11 = v98 = RETURNDATASIZE();
            // Unknown jump to Block 0x5030x121. Refer to 3-address code (TAC);
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x134d(uint256 varg0) private { 
    require(varg0 <= varg0 + 1000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1000;
}

function 0x135c(uint256 varg0) private { 
    require(varg0 <= varg0 + 25000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 25000;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x1378(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x14bd(uint256 varg0) private { 
    v0 = varg0 >> 224;
    v1 = bool(varg0 >> 148);
    if (v1 - 1) {
        if (v1 - 4) {
            if (v1 - 2) {
                if (v1 - 5) {
                    if (v1 - 3) {
                        if (v1 - 6) {
                            if (v1 - 7) {
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
                                    v10 = v13 = address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) == block.coinbase;
                                    if (address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) != block.coinbase) {
                                        v10 = v14 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                        if (v14) {
                                            v10 = v15 = address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
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
                                v17 = v20 = address(0xa28b0ac939fc6baaadc79a94f425345c60463417) == block.coinbase;
                                if (address(0xa28b0ac939fc6baaadc79a94f425345c60463417) != block.coinbase) {
                                    v17 = v21 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                    if (v21) {
                                        v17 = v22 = address(0xa28b0ac939fc6baaadc79a94f425345c60463417) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
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
                            v24 = v27 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == block.coinbase;
                            if (address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) != block.coinbase) {
                                v24 = v28 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                if (v28) {
                                    v24 = v29 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
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
                        v31 = v34 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == block.coinbase;
                        if (address(0x396343362be2a4da1ce0c1c210945346fb82aa49) != block.coinbase) {
                            v31 = v35 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                            if (v35) {
                                v31 = v36 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
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
                    v38 = v41 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == block.coinbase;
                    if (address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) != block.coinbase) {
                        v38 = v42 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                        if (v42) {
                            v38 = v43 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                        }
                    }
                }
                require(v38, Error(50));
                v8 = v44 = uint72(varg0 >> 152);
            }
        } else {
            v45 = v46 = !v0;
            if (bool(v0)) {
                v45 = v47 = block.timestamp == v0;
            }
            if (v45) {
                v45 = v48 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == block.coinbase;
                if (address(0xdadb0d80178819f2319190d340ce9a924f783711) != block.coinbase) {
                    v45 = v49 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                    if (v49) {
                        v45 = v50 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                    }
                }
            }
            require(v45, Error(50));
            v8 = v51 = uint72(varg0 >> 152);
        }
    } else {
        v52 = v53 = !v0;
        if (bool(v0)) {
            v52 = v54 = block.timestamp == v0;
        }
        if (v52) {
            v52 = v55 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == block.coinbase;
            if (address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) != block.coinbase) {
                v52 = v56 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                if (v56) {
                    v52 = v57 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                }
            }
        }
        require(v52, Error(50));
        v8 = v58 = uint72(varg0 >> 152);
    }
    if (!(block.coinbase.balance - v8)) {
        _uniswapV2Call = 0;
        if (this.balance) {
            v59, /* uint256 */ v60 = block.coinbase.call().value(1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v61 = v62 = new bytes[](RETURNDATASIZE());
                require(!((v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v62)), Panic(65)); // failed memory allocation (too much memory)
                v60 = v62.data;
                RETURNDATACOPY(v60, 0, RETURNDATASIZE());
            }
            return 1;
        } else {
            return 1;
        }
    }
    return 0;
}

function 0x1707(address varg0) private { 
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

function 0x17dd(uint256 varg0) private { 
    v0, /* uint128 */ v1 = varg0.liquidity().gas(msg.gas);
    require((RETURNDATASIZE() > 15) & v0);
    return uint128(v1);
}

function 0x182e(uint256 varg0) private { 
    v0, /* address */ v1 = varg0.slot0().gas(msg.gas);
    require((RETURNDATASIZE() > 31) & v0);
    return address(v1);
}

function 0x197e(uint256 varg0) private { 
    require(!(20000 * varg0 / 20000 - varg0), Panic(17)); // arithmetic overflow or underflow
    return 20000 * varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x1a40(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x2741(v0);
    v2 = 0x2890(varg6, varg5, varg2, varg8, v1, varg3, varg4);
    require(v2 <= 10 ** 24, Error(20301));
    v3 = 0x2960(varg1, varg7, varg8, 10000 - varg3);
    v4 = new bytes[](v3.word0);
    MCOPY(v4.data, v3.data, v3.word0);
    v4[v3.word0] = 0;
    v5, /* uint256 */ v6, /* uint256 */ v7 = varg0.swap(address(varg1), 1, v2, address(0x1000276a4), v4).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (v5) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v8 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v8 = v9 = MEM[64] + 64;
        }
        require(v8 - MEM[64] >= 64);
        return ;
    } else {
        return ;
    }
}

function 0x1b6d(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x1b99(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = _SafeMul(varg5, varg6);
    v1 = 0x2741(v0);
    v2 = 0x2a29(varg6, v1, varg2, varg8, varg7, varg3, varg4);
    require(v2 <= 10 ** 24, Error(20301));
    v3 = 0x1b6d(v2);
    v4 = 0x29f8(varg0, varg5, varg6, 10000 - varg2);
    v5 = new bytes[](v4.word0);
    MCOPY(v5.data, v4.data, v4.word0);
    v5[v4.word0] = 0;
    v6, /* uint256 */ v7, /* uint256 */ v8 = varg1.swap(address(this), 0, v3, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v5).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v9 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v9 = v10 = MEM[64] + 64;
        }
        require(v9 - MEM[64] >= 64);
        return ;
    } else {
        return ;
    }
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x1ecf(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg3 * 10000 + (10000 - varg0) * varg2;
    require(v0, Panic(18)); // division by zero
    return (10000 - varg0) * varg2 * varg1 / v0;
}

function 0x20b8(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = _SafeMul(varg5, varg6);
    v1 = 0x2741(v0);
    v2 = _SafeMul(varg7, varg8);
    v3 = 0x2741(v2);
    v4 = varg2 * (varg3 * varg6 + 10000 * varg8);
    require(v4, Panic(18)); // division by zero
    v5 = (varg2 * varg3 * varg7 * varg6 - v1 * v3 * varg4 * 10000) / v4;
    v6 = 0x2722(varg8, varg7, v5, 10000 - varg3);
    require(v5 <= 10 ** 24, Error(20301));
    v7 = 0x2e20(varg0, varg5, varg6, 10000 - varg2, v6);
    require(varg1.code.size);
    v8 = new bytes[](v7.word0);
    MCOPY(v8.data, v7.data, v7.word0);
    v8[v7.word0] = 0;
    v9 = varg1.swap(v5, 0, address(this), v8).gas(msg.gas);
    require(v9, MEM[64], RETURNDATASIZE());
    if (v9) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        return ;
    } else {
        return ;
    }
}

function 0x21a3(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = 0x2e8b(varg6, varg5, varg2, varg8, varg7, varg3, varg4);
    require(v0 <= 10 ** 24, Error(20301));
    v1 = 0x1b6d(v0);
    v2 = 0x2f2b(varg0);
    v3 = new bytes[](v2.word0);
    MCOPY(v3.data, v2.data, v2.word0);
    v3[v2.word0] = 0;
    v4, /* uint256 */ v5, /* uint256 */ v6 = varg1.swap(address(this), 0, v1, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v3).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (v4) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v7 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v7 = v8 = MEM[64] + 64;
        }
        require(v7 - MEM[64] >= 64);
        return ;
    } else {
        return ;
    }
}

function 0x220a(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = _SafeMul(varg7, varg8);
    v1 = 0x2741(v0);
    v2 = 0x2f65(varg6, varg5, varg2, varg7, v1, varg3, varg4);
    require(v2 <= 10 ** 24, Error(20301));
    v3 = 0x2960(varg1, varg7, varg8, 10000 - varg3);
    v4 = new bytes[](v3.word0);
    MCOPY(v4.data, v3.data, v3.word0);
    v4[v3.word0] = 0;
    v5, /* uint256 */ v6, /* uint256 */ v7 = varg0.swap(address(varg1), 0, v2, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v4).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (v5) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v8 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v8 = v9 = MEM[64] + 64;
        }
        require(v8 - MEM[64] >= 64);
        return ;
    } else {
        return ;
    }
}

function 0x22b4(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = _SafeMul(varg5, varg6);
    v1 = 0x2741(v0);
    v2 = 0x2fc5(varg5, v1, varg2, varg8, varg7, varg3, varg4);
    require(v2 <= 10 ** 24, Error(20301));
    v3 = 0x1b6d(v2);
    v4 = 0x29f8(varg0, varg5, varg6, 10000 - varg2);
    v5 = new bytes[](v4.word0);
    MCOPY(v5.data, v4.data, v4.word0);
    v5[v4.word0] = 0;
    v6, /* uint256 */ v7, /* uint256 */ v8 = varg1.swap(address(this), 1, v3, address(0x1000276a4), v5).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v9 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v9 = v10 = MEM[64] + 64;
        }
        require(v9 - MEM[64] >= 64);
        return ;
    } else {
        return ;
    }
}

function 0x2358(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = 0x305d(varg6, varg5, varg2, varg8, varg7, varg3, varg4);
    require(v0 <= 10 ** 24, Error(20301));
    v1 = 0x1b6d(v0);
    v2 = 0x2f2b(varg0);
    v3 = new bytes[](v2.word0);
    MCOPY(v3.data, v2.data, v2.word0);
    v3[v2.word0] = 0;
    v4, /* uint256 */ v5, /* uint256 */ v6 = varg1.swap(address(this), 1, v1, address(0x1000276a4), v3).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (v4) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v7 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v7 = v8 = MEM[64] + 64;
        }
        require(v7 - MEM[64] >= 64);
        return ;
    } else {
        return ;
    }
}

function 0x23bd(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.transfer(0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54, varg1).gas(msg.gas);
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
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = MEM[v5 + 32];
            require(!(v2 - bool(v2)));
        }
    }
    require(v2, Error(21574));
    return ;
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1, v2 = 0x265b(v0);
    v3, v4 = 0x2695(v1);
    require(v3 + v3.length - v3 >= 128);
    require(!(MEM[v3 + 128] - bool(MEM[v3 + 128])));
    if (!amount1) {
        v5 = 0x2722(MEM[v3.data], MEM[v3 + 64], v2, MEM[v3 + 96]);
        0x24cb(_uniswapV2Call, v4, v5);
        v6 = v7 = address(v4);
        require(v7.code.size);
        v8 = v9 = MEM[64];
        MEM[v9] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        v10 = v11 = 0;
        MEM[v9 + 4] = v11;
        MEM[v9 + 36] = v2;
        MEM[v9 + 68] = msg.sender;
        MEM[v9 + 100] = 128;
        MEM[v9 + 132] = v11;
        v12 = v13 = v9 + 164;
    } else {
        v14 = 0x2722(MEM[v3 + 64], MEM[v3.data], v2, MEM[v3 + 96]);
        0x24cb(_uniswapV2Call, v4, v14);
        v6 = address(v4);
        require(v6.code.size);
        v8 = MEM[64];
        MEM[v8] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = v2;
        v10 = 0;
        MEM[v8 + 36] = v10;
        MEM[v8 + 68] = msg.sender;
        MEM[v8 + 100] = 128;
        MEM[v8 + 132] = v10;
        v12 = v8 + 164;
    }
    v15 = v6.call(MEM[v23d3d0x25e:v23d3d0x25e + v23d3d0x2af - v23d3d0x25e], MEM[v23d3d0x25e:v23d3d0x25e + v23d3d0x28a]).value(v10).gas(msg.gas);
    require(v15, MEM[64], RETURNDATASIZE());
    if (v15) {
        require(!((v8 > uint64.max) | (v8 < v8)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v8;
        require(v8 - v8 >= 0);
        exit;
    } else {
        exit;
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV2Call);
    v1 = msg.data[4 + data] == 32;
    if (v1) {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
        v1 = v2 = data.word1 == 0x99abcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcba99;
    }
    if (!v1) {
        if (msg.data[4 + data]) {
            require(msg.data[4 + data] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = new bytes[](msg.data[4 + data]);
            require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
            require(4 + data + 32 + msg.data[4 + data] <= msg.data.length);
            CALLDATACOPY(v3.data, 4 + data + 32, msg.data[4 + data]);
            v3[msg.data[4 + data]] = 0;
            v4, v5 = 0x2695(v3);
            if (v4.length) {
                require(v4 + v4.length - v4 >= 128);
                require(!(MEM[v4 + 128] - bool(MEM[v4 + 128])));
                v6 = v7 = 0;
                if (!MEM[v4 + 128]) {
                    if (0 == amount1Delta > 0) {
                        v8 = 0x2722(MEM[v4 + 64], MEM[v4.data], amount0Delta, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v8);
                    } else {
                        v6 = v9 = 0;
                        v10 = 0x2722(MEM[v4.data], MEM[v4 + 64], amount1Delta, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v10);
                    }
                    require((address(v5)).code.size);
                    v11 = address(v5).swap(v6, v6, msg.sender, 128, 0).gas(msg.gas);
                    if (v11) {
                        if (v11) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            exit;
                        } else {
                            exit;
                        }
                    }
                } else {
                    if (amount1Delta <= 0) {
                        v12 = 0x1b6d(amount1Delta);
                        v13 = v14 = 0x2acd(MEM[v4 + 64], MEM[v4.data], v12, MEM[v4 + 96]);
                        v15 = 0;
                    } else {
                        v13 = 0;
                        v16 = 0x1b6d(amount0Delta);
                        v15 = v17 = 0x2acd(MEM[v4.data], MEM[v4 + 64], v16, MEM[v4 + 96]);
                    }
                    require((address(v5)).code.size);
                    v18 = address(v5).swap(v13, v15, this, 128, 0).gas(msg.gas);
                    if (v18) {
                        if (v18) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                        }
                        v19 = new bytes[](68);
                        MEM[v19.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v19 + 36] = msg.sender;
                        MEM[v19 + 68] = v6;
                        require(!((v19 + 128 > uint64.max) | (v19 + 128 < v19)), Panic(65)); // failed memory allocation (too much memory)
                        v20 = v19.length;
                        v21 = v22, /* uint256 */ v23 = _uniswapV2Call.transfer(msg.sender, v6).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v24 = v25 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v24 = v26 = new bytes[](RETURNDATASIZE());
                            require(!((v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
                            v23 = v26.data;
                            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
                        }
                        if (v22) {
                            v21 = v27 = !MEM[v24];
                            if (bool(MEM[v24])) {
                                require(v24 + MEM[v24] - v24 >= 32);
                                v21 = MEM[v24 + 32];
                                require(!(v21 - bool(v21)));
                            }
                        }
                        require(v21, Error(21574));
                        exit;
                    }
                }
            } else {
                v28 = v29 = 0x1b6d(amount1Delta);
                v30 = 1;
                v31 = 0x1000276a4;
                if (amount0Delta > 0) {
                    v28 = v32 = 0x1b6d(amount0Delta);
                    v31 = v33 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    v30 = v34 = 0;
                }
                v35 = new uint256[](0);
                v36, /* uint256 */ v37, /* uint256 */ v38 = address(v5).swap(msg.sender, bool(v30), v28, address(v31), v35).gas(msg.gas);
                if (v36) {
                    if (v36) {
                        v39 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v39 = v40 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v39 - MEM[64] >= 64);
                        exit;
                    } else {
                        exit;
                    }
                }
            }
            revert(MEM[64], RETURNDATASIZE());
        } else if (amount0Delta > 0) {
            0x24cb(_uniswapV2Call, msg.sender, amount0Delta);
            exit;
        }
    } else if (amount0Delta > 0) {
        0x24cb(_uniswapV2Call, msg.sender, amount0Delta);
        exit;
    }
    0x24cb(_uniswapV2Call, msg.sender, amount1Delta);
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV2Call);
    v1 = msg.data[4 + data] == 32;
    if (v1) {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
        v1 = v2 = data.word1 == 0x99abcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcba99;
    }
    if (!v1) {
        if (msg.data[4 + data]) {
            require(msg.data[4 + data] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = new bytes[](msg.data[4 + data]);
            require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
            require(4 + data + 32 + msg.data[4 + data] <= msg.data.length);
            CALLDATACOPY(v3.data, 4 + data + 32, msg.data[4 + data]);
            v3[msg.data[4 + data]] = 0;
            v4, v5 = 0x2695(v3);
            if (v4.length) {
                require(v4 + v4.length - v4 >= 128);
                require(!(MEM[v4 + 128] - bool(MEM[v4 + 128])));
                v6 = v7 = 0;
                if (!MEM[v4 + 128]) {
                    if (0 == amount1Delta > 0) {
                        v8 = 0x2722(MEM[v4 + 64], MEM[v4.data], amount0Delta, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v8);
                    } else {
                        v6 = v9 = 0;
                        v10 = 0x2722(MEM[v4.data], MEM[v4 + 64], amount1Delta, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v10);
                    }
                    require((address(v5)).code.size);
                    v11 = address(v5).swap(v6, v6, msg.sender, 128, 0).gas(msg.gas);
                    if (v11) {
                        if (v11) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            exit;
                        } else {
                            exit;
                        }
                    }
                } else {
                    if (amount1Delta <= 0) {
                        v12 = 0x1b6d(amount1Delta);
                        v13 = v14 = 0x2acd(MEM[v4 + 64], MEM[v4.data], v12, MEM[v4 + 96]);
                        v15 = 0;
                    } else {
                        v13 = 0;
                        v16 = 0x1b6d(amount0Delta);
                        v15 = v17 = 0x2acd(MEM[v4.data], MEM[v4 + 64], v16, MEM[v4 + 96]);
                    }
                    require((address(v5)).code.size);
                    v18 = address(v5).swap(v13, v15, this, 128, 0).gas(msg.gas);
                    if (v18) {
                        if (v18) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                        }
                        v19 = new bytes[](68);
                        MEM[v19.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v19 + 36] = msg.sender;
                        MEM[v19 + 68] = v6;
                        require(!((v19 + 128 > uint64.max) | (v19 + 128 < v19)), Panic(65)); // failed memory allocation (too much memory)
                        v20 = v19.length;
                        v21 = v22, /* uint256 */ v23 = _uniswapV2Call.transfer(msg.sender, v6).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v24 = v25 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v24 = v26 = new bytes[](RETURNDATASIZE());
                            require(!((v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
                            v23 = v26.data;
                            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
                        }
                        if (v22) {
                            v21 = v27 = !MEM[v24];
                            if (bool(MEM[v24])) {
                                require(v24 + MEM[v24] - v24 >= 32);
                                v21 = MEM[v24 + 32];
                                require(!(v21 - bool(v21)));
                            }
                        }
                        require(v21, Error(21574));
                        exit;
                    }
                }
            } else {
                v28 = v29 = 0x1b6d(amount1Delta);
                v30 = 1;
                v31 = 0x1000276a4;
                if (amount0Delta > 0) {
                    v28 = v32 = 0x1b6d(amount0Delta);
                    v31 = v33 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    v30 = v34 = 0;
                }
                v35 = new uint256[](0);
                v36, /* uint256 */ v37, /* uint256 */ v38 = address(v5).swap(msg.sender, bool(v30), v28, address(v31), v35).gas(msg.gas);
                if (v36) {
                    if (v36) {
                        v39 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v39 = v40 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v39 - MEM[64] >= 64);
                        exit;
                    } else {
                        exit;
                    }
                }
            }
            revert(MEM[64], RETURNDATASIZE());
        } else if (amount0Delta > 0) {
            0x24cb(_uniswapV2Call, msg.sender, amount0Delta);
            exit;
        }
    } else if (amount0Delta > 0) {
        0x24cb(_uniswapV2Call, msg.sender, amount0Delta);
        exit;
    }
    0x24cb(_uniswapV2Call, msg.sender, amount1Delta);
}

function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    require(_uniswapV2Call);
    require(_data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](_data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + _data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + _data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(_data.data + _data.length <= msg.data.length);
    CALLDATACOPY(v0.data, _data.data, _data.length);
    v0[_data.length] = 0;
    v1, v2 = 0x265b(v0);
    v3, v4 = 0x2695(v1);
    require(v3 + v3.length - v3 >= 128);
    require(!(MEM[v3 + 128] - bool(MEM[v3 + 128])));
    if (!_amount1) {
        v5 = 0x2722(MEM[v3.data], MEM[v3 + 64], v2, MEM[v3 + 96]);
        0x24cb(_uniswapV2Call, v4, v5);
        v6 = v7 = address(v4);
        require(v7.code.size);
        v8 = v9 = MEM[64];
        MEM[v9] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        v10 = v11 = 0;
        MEM[v9 + 4] = v11;
        MEM[v9 + 36] = v2;
        MEM[v9 + 68] = msg.sender;
        MEM[v9 + 100] = 128;
        MEM[v9 + 132] = v11;
        v12 = v13 = v9 + 164;
    } else {
        v14 = 0x2722(MEM[v3 + 64], MEM[v3.data], v2, MEM[v3 + 96]);
        0x24cb(_uniswapV2Call, v4, v14);
        v6 = address(v4);
        require(v6.code.size);
        v8 = MEM[64];
        MEM[v8] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = v2;
        v10 = 0;
        MEM[v8 + 36] = v10;
        MEM[v8 + 68] = msg.sender;
        MEM[v8 + 100] = 128;
        MEM[v8 + 132] = v10;
        v12 = v8 + 164;
    }
    v15 = v6.call(MEM[v23da90x25e:v23da90x25e + v23da90x2af - v23da90x25e], MEM[v23da90x25e:v23da90x25e + v23da90x28a]).value(v10).gas(msg.gas);
    require(v15, MEM[64], RETURNDATASIZE());
    if (v15) {
        require(!((v8 > uint64.max) | (v8 < v8)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v8;
        require(v8 - v8 >= 0);
        exit;
    } else {
        exit;
    }
}

function 0x9f3d4ab8(uint256 varg0, uint256 varg1, struct(2) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV2Call);
    v1 = msg.data[4 + varg2] == 32;
    if (v1) {
        require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
        v1 = v2 = varg2.word1 == 0x99abcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcba99;
    }
    if (!v1) {
        if (msg.data[4 + varg2]) {
            require(msg.data[4 + varg2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = new bytes[](msg.data[4 + varg2]);
            require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + varg2]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + varg2]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
            require(4 + varg2 + 32 + msg.data[4 + varg2] <= msg.data.length);
            CALLDATACOPY(v3.data, 4 + varg2 + 32, msg.data[4 + varg2]);
            v3[msg.data[4 + varg2]] = 0;
            v4, v5 = 0x2695(v3);
            if (v4.length) {
                require(v4 + v4.length - v4 >= 128);
                require(!(MEM[v4 + 128] - bool(MEM[v4 + 128])));
                v6 = v7 = 0;
                if (!MEM[v4 + 128]) {
                    if (0 == varg1 > 0) {
                        v8 = 0x2722(MEM[v4 + 64], MEM[v4.data], varg0, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v8);
                    } else {
                        v6 = v9 = 0;
                        v10 = 0x2722(MEM[v4.data], MEM[v4 + 64], varg1, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v10);
                    }
                    require((address(v5)).code.size);
                    v11 = address(v5).swap(v6, v6, msg.sender, 128, 0).gas(msg.gas);
                    if (v11) {
                        if (v11) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            exit;
                        } else {
                            exit;
                        }
                    }
                } else {
                    if (varg1 <= 0) {
                        v12 = 0x1b6d(varg1);
                        v13 = v14 = 0x2acd(MEM[v4 + 64], MEM[v4.data], v12, MEM[v4 + 96]);
                        v15 = 0;
                    } else {
                        v13 = 0;
                        v16 = 0x1b6d(varg0);
                        v15 = v17 = 0x2acd(MEM[v4.data], MEM[v4 + 64], v16, MEM[v4 + 96]);
                    }
                    require((address(v5)).code.size);
                    v18 = address(v5).swap(v13, v15, this, 128, 0).gas(msg.gas);
                    if (v18) {
                        if (v18) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                        }
                        v19 = new bytes[](68);
                        MEM[v19.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v19 + 36] = msg.sender;
                        MEM[v19 + 68] = v6;
                        require(!((v19 + 128 > uint64.max) | (v19 + 128 < v19)), Panic(65)); // failed memory allocation (too much memory)
                        v20 = v19.length;
                        v21 = v22, /* uint256 */ v23 = _uniswapV2Call.transfer(msg.sender, v6).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v24 = v25 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v24 = v26 = new bytes[](RETURNDATASIZE());
                            require(!((v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
                            v23 = v26.data;
                            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
                        }
                        if (v22) {
                            v21 = v27 = !MEM[v24];
                            if (bool(MEM[v24])) {
                                require(v24 + MEM[v24] - v24 >= 32);
                                v21 = MEM[v24 + 32];
                                require(!(v21 - bool(v21)));
                            }
                        }
                        require(v21, Error(21574));
                        exit;
                    }
                }
            } else {
                v28 = v29 = 0x1b6d(varg1);
                v30 = 1;
                v31 = 0x1000276a4;
                if (varg0 > 0) {
                    v28 = v32 = 0x1b6d(varg0);
                    v31 = v33 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    v30 = v34 = 0;
                }
                v35 = new uint256[](0);
                v36, /* uint256 */ v37, /* uint256 */ v38 = address(v5).swap(msg.sender, bool(v30), v28, address(v31), v35).gas(msg.gas);
                if (v36) {
                    if (v36) {
                        v39 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v39 = v40 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v39 - MEM[64] >= 64);
                        exit;
                    } else {
                        exit;
                    }
                }
            }
            revert(MEM[64], RETURNDATASIZE());
        } else if (varg0 > 0) {
            0x24cb(_uniswapV2Call, msg.sender, varg0);
            exit;
        }
    } else if (varg0 > 0) {
        0x24cb(_uniswapV2Call, msg.sender, varg0);
        exit;
    }
    0x24cb(_uniswapV2Call, msg.sender, varg1);
}

function 0xa0bd0131(uint256 varg0, uint256 varg1, struct(2) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV2Call);
    v1 = msg.data[4 + varg2] == 32;
    if (v1) {
        require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
        v1 = v2 = varg2.word1 == 0x99abcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcba99;
    }
    if (!v1) {
        if (msg.data[4 + varg2]) {
            require(msg.data[4 + varg2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = new bytes[](msg.data[4 + varg2]);
            require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + varg2]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + varg2]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
            require(4 + varg2 + 32 + msg.data[4 + varg2] <= msg.data.length);
            CALLDATACOPY(v3.data, 4 + varg2 + 32, msg.data[4 + varg2]);
            v3[msg.data[4 + varg2]] = 0;
            v4, v5 = 0x2695(v3);
            if (v4.length) {
                require(v4 + v4.length - v4 >= 128);
                require(!(MEM[v4 + 128] - bool(MEM[v4 + 128])));
                v6 = v7 = 0;
                if (!MEM[v4 + 128]) {
                    if (0 == varg1 > 0) {
                        v8 = 0x2722(MEM[v4 + 64], MEM[v4.data], varg0, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v8);
                    } else {
                        v6 = v9 = 0;
                        v10 = 0x2722(MEM[v4.data], MEM[v4 + 64], varg1, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v10);
                    }
                    require((address(v5)).code.size);
                    v11 = address(v5).swap(v6, v6, msg.sender, 128, 0).gas(msg.gas);
                    if (v11) {
                        if (v11) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            exit;
                        } else {
                            exit;
                        }
                    }
                } else {
                    if (varg1 <= 0) {
                        v12 = 0x1b6d(varg1);
                        v13 = v14 = 0x2acd(MEM[v4 + 64], MEM[v4.data], v12, MEM[v4 + 96]);
                        v15 = 0;
                    } else {
                        v13 = 0;
                        v16 = 0x1b6d(varg0);
                        v15 = v17 = 0x2acd(MEM[v4.data], MEM[v4 + 64], v16, MEM[v4 + 96]);
                    }
                    require((address(v5)).code.size);
                    v18 = address(v5).swap(v13, v15, this, 128, 0).gas(msg.gas);
                    if (v18) {
                        if (v18) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                        }
                        v19 = new bytes[](68);
                        MEM[v19.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v19 + 36] = msg.sender;
                        MEM[v19 + 68] = v6;
                        require(!((v19 + 128 > uint64.max) | (v19 + 128 < v19)), Panic(65)); // failed memory allocation (too much memory)
                        v20 = v19.length;
                        v21 = v22, /* uint256 */ v23 = _uniswapV2Call.transfer(msg.sender, v6).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v24 = v25 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v24 = v26 = new bytes[](RETURNDATASIZE());
                            require(!((v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
                            v23 = v26.data;
                            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
                        }
                        if (v22) {
                            v21 = v27 = !MEM[v24];
                            if (bool(MEM[v24])) {
                                require(v24 + MEM[v24] - v24 >= 32);
                                v21 = MEM[v24 + 32];
                                require(!(v21 - bool(v21)));
                            }
                        }
                        require(v21, Error(21574));
                        exit;
                    }
                }
            } else {
                v28 = v29 = 0x1b6d(varg1);
                v30 = 1;
                v31 = 0x1000276a4;
                if (varg0 > 0) {
                    v28 = v32 = 0x1b6d(varg0);
                    v31 = v33 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    v30 = v34 = 0;
                }
                v35 = new uint256[](0);
                v36, /* uint256 */ v37, /* uint256 */ v38 = address(v5).swap(msg.sender, bool(v30), v28, address(v31), v35).gas(msg.gas);
                if (v36) {
                    if (v36) {
                        v39 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v39 = v40 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v39 - MEM[64] >= 64);
                        exit;
                    } else {
                        exit;
                    }
                }
            }
            revert(MEM[64], RETURNDATASIZE());
        } else if (varg0 > 0) {
            0x24cb(_uniswapV2Call, msg.sender, varg0);
            exit;
        }
    } else if (varg0 > 0) {
        0x24cb(_uniswapV2Call, msg.sender, varg0);
        exit;
    }
    0x24cb(_uniswapV2Call, msg.sender, varg1);
}

function 0x24cb(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.transfer(varg1, varg2).gas(msg.gas);
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
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = MEM[v5 + 32];
            require(!(v2 - bool(v2)));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x2564(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = _SafeMul(varg5, varg6);
    v1 = 0x2741(v0);
    v2 = _SafeMul(varg7, varg8);
    v3 = 0x2741(v2);
    v4 = varg2 * varg3 * varg5;
    require(v4 + varg2 * varg7 * 10000, Panic(18)); // division by zero
    v5 = (v4 * varg8 - v1 * v3 * varg4 * 10000) / (v4 + varg2 * varg7 * 10000);
    v6 = 0x2722(varg7, varg8, v5, 10000 - varg3);
    require(v5 <= 10 ** 24, Error(20301));
    v7 = 0x2e20(varg0, varg5, varg6, 10000 - varg2, v6);
    require(varg1.code.size);
    v8 = new bytes[](v7.word0);
    MCOPY(v8.data, v7.data, v7.word0);
    v8[v7.word0] = 0;
    v9 = varg1.swap(0, v5, address(this), v8).gas(msg.gas);
    require(v9, MEM[64], RETURNDATASIZE());
    if (v9) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        return ;
    } else {
        return ;
    }
}

function 0x2615(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    MCOPY(v1.data, varg0 + 32, v0);
    v1[v0] = 0;
    return v1;
}

function 0x265b(bytes varg0) private { 
    require(varg0 + varg0.length - varg0 >= 64);
    require(MEM[varg0 + 64] <= uint64.max);
    v0 = 0x2615(varg0 + MEM[varg0 + 64] + 32, varg0 + varg0.length + 32);
    return v0, MEM[varg0.data];
}

function 0x2695(bytes varg0) private { 
    require(varg0 + varg0.length - varg0 >= 64);
    require(!(address(MEM[varg0.data]) - MEM[varg0.data]));
    require(MEM[varg0 + 64] <= uint64.max);
    v0 = 0x2615(varg0 + MEM[varg0 + 64] + 32, varg0 + varg0.length + 32);
    return v0, address(MEM[varg0.data]);
}

function 0x2722(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = (varg1 - varg2) * (10000 - varg3);
    require(v0, Panic(18)); // division by zero
    return varg0 * varg2 * 10000 / v0 + 1;
}

function 0x2741(uint256 varg0) private { 
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

function 0x2890(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = (varg0 * varg6 * varg4 - 0x186a0000000000000000000000000 * varg3) * 0x186a0000000000000000000000000;
    v1 = varg5 * varg1 * varg0 + 0x2710000000000000000000000000 * varg3;
    v2 = varg2 * varg0;
    v3 = _SafeDiv(v0 * varg1 % uint256.max - v0 * varg1 - (v0 * varg1 % uint256.max < v0 * varg1) + ((varg0 * varg6 * varg4 - 0x186a0000000000000000000000000 * varg3) * 0x186a0000000000000000000000000 % uint256.max - v0 - ((varg0 * varg6 * varg4 - 0x186a0000000000000000000000000 * varg3) * 0x186a0000000000000000000000000 % uint256.max < v0) + (varg0 * varg6 * varg4 % uint256.max - varg0 * varg6 * varg4 - (varg0 * varg6 * varg4 % uint256.max < varg0 * varg6 * varg4) - (varg0 * varg6 * varg4 < 0x186a0000000000000000000000000 * varg3)) * 0x186a0000000000000000000000000) * varg1, v0 * varg1, v1 * v2 % uint256.max - v1 * v2 - (v1 * v2 % uint256.max < v1 * v2) + ((v1 < varg5 * varg1 * varg0) + (varg5 * varg1 * varg0 % uint256.max - varg5 * varg1 * varg0 - (varg5 * varg1 * varg0 % uint256.max < varg5 * varg1 * varg0))) * v2, v1 * v2);
    return v3;
}

function 0x2960(address varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = 1;
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = new struct(8);
    v2.word1 = varg0;
    v2.word2 = 64;
    v2.word3 = v0.word0;
    MCOPY(v2.data + 64 + 32, v0.data, v0.word0);
    MEM[v2.data + 64 + v0.word0 + 32] = 0;
    v2.word0 = 224;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    return v2;
}

function 0x29f8(address varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = 0;
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = new struct(8);
    v2.word1 = varg0;
    v2.word2 = 64;
    v2.word3 = v0.word0;
    MCOPY(v2.data + 64 + 32, v0.data, v0.word0);
    MEM[v2.data + 64 + v0.word0 + 32] = 0;
    v2.word0 = 224;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    return v2;
}

function 0x2a29(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = (varg2 << 91) * varg5 * varg0;
    v1 = 15625 * varg4 * varg3 + (varg5 << 90) * varg0;
    v2 = varg2 * varg3;
    v3 = _SafeDiv((v0 - varg6 * varg1 * 3125 * varg3) * varg4 * 0x800000000000000000000000 % uint256.max - ((v0 - varg6 * varg1 * 3125 * varg3) * varg4 << 95) - ((v0 - varg6 * varg1 * 3125 * varg3) * varg4 * 0x800000000000000000000000 % uint256.max < (v0 - varg6 * varg1 * 3125 * varg3) * varg4 << 95) + ((v0 - varg6 * varg1 * 3125 * varg3) * varg4 % uint256.max - (v0 - varg6 * varg1 * 3125 * varg3) * varg4 - ((v0 - varg6 * varg1 * 3125 * varg3) * varg4 % uint256.max < (v0 - varg6 * varg1 * 3125 * varg3) * varg4) + (0 - ((v0 < varg6 * varg1 * 3125 * varg3) + (varg6 * varg1 * 3125 * varg3 % uint256.max - varg6 * varg1 * 3125 * varg3 - (varg6 * varg1 * 3125 * varg3 % uint256.max < varg6 * varg1 * 3125 * varg3)))) * varg4 << 95), (v0 - varg6 * varg1 * 3125 * varg3) * varg4 << 95, v1 * v2 % uint256.max - v1 * v2 - (v1 * v2 % uint256.max < v1 * v2) + ((v1 < 15625 * varg4 * varg3) + (15625 * varg4 * varg3 % uint256.max - 15625 * varg4 * varg3 - (15625 * varg4 * varg3 % uint256.max < 15625 * varg4 * varg3))) * v2, v1 * v2);
    return v3;
}

function 0x2acd(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0 * 10000 + (10000 - varg3) * varg2;
    require(v0, Panic(18)); // division by zero
    return (10000 - varg3) * varg2 * varg1 / v0;
}

function 0x2e20(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = new struct(5);
    v1 = v0.data;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = 0;
    v0.word0 = 128;
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = new struct(8);
    v2.word1 = varg0;
    v2.word2 = 64;
    v2.word3 = v0.word0;
    MCOPY(v2.data + 64 + 32, v0.data, v0.word0);
    MEM[v2.data + 64 + v0.word0 + 32] = 0;
    v2.word0 = 224;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    v3 = new struct(11);
    v4 = v3.data;
    v3.word1 = varg4;
    v3.word2 = 64;
    v3.word3 = v2.word0;
    MCOPY(v3 + 96 + 32, v2.data, v2.word0);
    MEM[v3 + 96 + v2.word0 + 32] = 0;
    v3.word0 = 320;
    require(!((v3 + 352 > uint64.max) | (v3 + 352 < v3)), Panic(65)); // failed memory allocation (too much memory)
    return v3;
}

function 0x2e8b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg0;
    v1 = v0 - varg6 * varg3 * 10 ** 6 << 96;
    v2 = v1 * varg1 * varg4;
    v3 = varg1 * varg5 * varg0 + 10 ** 6 * varg4 * varg3;
    v4 = v3 * varg2 * varg3;
    v5 = _SafeDiv(v1 * varg1 * varg4 % uint256.max - v2 - (v1 * varg1 * varg4 % uint256.max < v2) + (v1 * varg1 % uint256.max - v1 * varg1 - (v1 * varg1 % uint256.max < v1 * varg1) + ((v0 - varg6 * varg3 * 10 ** 6) * (uint96.max + 1) % uint256.max - v1 - ((v0 - varg6 * varg3 * 10 ** 6) * (uint96.max + 1) % uint256.max < v1) + (0 - (v0 < varg6 * varg3 * 10 ** 6) << 96)) * varg1) * varg4, v2, v3 * varg2 * varg3 % uint256.max - v4 - (v3 * varg2 * varg3 % uint256.max < v4) + (v3 * varg2 % uint256.max - v3 * varg2 - (v3 * varg2 % uint256.max < v3 * varg2) + (varg1 * varg5 * varg0 % uint256.max - varg1 * varg5 * varg0 - (varg1 * varg5 * varg0 % uint256.max < varg1 * varg5 * varg0) + (10 ** 6 * varg4 * varg3 % uint256.max - 10 ** 6 * varg4 * varg3 - (10 ** 6 * varg4 * varg3 % uint256.max < 10 ** 6 * varg4 * varg3)) + (v3 < varg1 * varg5 * varg0)) * varg2) * varg3, v4);
    return v5;
}

function 0x2f2b(address varg0) private { 
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = varg0;
    v0.word2 = 64;
    v0.word3 = 0;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x2f65(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = (varg6 << 91) * varg4 - 3125 * varg0 * varg3;
    v1 = (varg5 << 92) * varg1 + 625 * varg3 * varg0;
    v2 = _SafeDiv(v0 * (3125 * varg1) * varg0 % uint256.max - v0 * (3125 * varg1) * varg0 - (v0 * (3125 * varg1) * varg0 % uint256.max < v0 * (3125 * varg1) * varg0) + (v0 * (3125 * varg1) % uint256.max - v0 * (3125 * varg1) - (v0 * (3125 * varg1) % uint256.max < v0 * (3125 * varg1)) + (0 - (((varg6 << 91) * varg4 < 3125 * varg0 * varg3) + (3125 * varg0 * varg3 % uint256.max - 3125 * varg0 * varg3 - (3125 * varg0 * varg3 % uint256.max < 3125 * varg0 * varg3)))) * (3125 * varg1)) * varg0, v0 * (3125 * varg1) * varg0, v1 * (varg2 << 90) % uint256.max - v1 * (varg2 << 90) - (v1 * (varg2 << 90) % uint256.max < v1 * (varg2 << 90)) + ((v1 < (varg5 << 92) * varg1) + (625 * varg3 * varg0 % uint256.max - 625 * varg3 * varg0 - (625 * varg3 * varg0 % uint256.max < 625 * varg3 * varg0))) * (varg2 << 90), v1 * (varg2 << 90));
    return v2;
}

function 0x2fc5(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg3;
    v1 = v0 * varg0 - varg6 * varg1 * 0x186a0000000000000000000000000;
    v2 = v1 * varg3 * varg4;
    v3 = 0xf4240000000000000000000000000 * varg4 + varg3 * (varg5 * varg0);
    v4 = _SafeDiv(v1 * varg3 * varg4 % uint256.max - v2 - (v1 * varg3 * varg4 % uint256.max < v2) + (v1 * varg3 % uint256.max - v1 * varg3 - (v1 * varg3 % uint256.max < v1 * varg3) + (v0 * varg0 % uint256.max - v0 * varg0 - (v0 * varg0 % uint256.max < v0 * varg0) - (v0 * varg0 < varg6 * varg1 * 0x186a0000000000000000000000000)) * varg3) * varg4, v2, v3 * (varg2 << 96) % uint256.max - v3 * (varg2 << 96) - (v3 * (varg2 << 96) % uint256.max < v3 * (varg2 << 96)) + ((v3 < 0xf4240000000000000000000000000 * varg4) + (varg3 * (varg5 * varg0) % uint256.max - varg3 * (varg5 * varg0) - (varg3 * (varg5 * varg0) % uint256.max < varg3 * (varg5 * varg0)))) * (varg2 << 96), v3 * (varg2 << 96));
    return v4;
}

function 0x305d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg3;
    v1 = (v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3;
    v2 = 10 ** 6 * varg4 * varg0 + varg5 * varg1 * varg3;
    v3 = _SafeDiv(v1 * varg1 % uint256.max - v1 * varg1 - (v1 * varg1 % uint256.max < v1 * varg1) + ((v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3 % uint256.max - v1 - ((v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3 % uint256.max < v1) + ((v0 - varg6 * varg0 * 10 ** 6) * varg4 % uint256.max - (v0 - varg6 * varg0 * 10 ** 6) * varg4 - ((v0 - varg6 * varg0 * 10 ** 6) * varg4 % uint256.max < (v0 - varg6 * varg0 * 10 ** 6) * varg4) + (0 - (v0 < varg6 * varg0 * 10 ** 6)) * varg4) * varg3) * varg1, v1 * varg1, v2 * (varg2 << 96) % uint256.max - v2 * (varg2 << 96) - (v2 * (varg2 << 96) % uint256.max < v2 * (varg2 << 96)) + (10 ** 6 * varg4 * varg0 % uint256.max - 10 ** 6 * varg4 * varg0 - (10 ** 6 * varg4 * varg0 % uint256.max < 10 ** 6 * varg4 * varg0) + (varg5 * varg1 * varg3 % uint256.max - varg5 * varg1 * varg3 - (varg5 * varg1 * varg3 % uint256.max < varg5 * varg1 * varg3)) + (v2 < 10 ** 6 * varg4 * varg0)) * (varg2 << 96), v2 * (varg2 << 96));
    return v3;
}

function _SafeDiv(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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
        v4 = ((varg0 * uint256.max % varg3 + varg0) % varg3 + varg1) % varg3;
        v5 = 0 - varg3 & varg3;
        v6 = varg3 / v5;
        v7 = (varg1 - v4) / v5 | (varg0 - (varg1 < v4)) * ((0 - v5) / v5 + 1);
        if (varg0 == varg1 < v4) {
            v8 = v9 = _SafeDiv(v7, v6);
        } else {
            v10 = (2 - v6 * ((2 - v6 * ((2 - v6 * (3 * v6 ^ 0x2)) * (3 * v6 ^ 0x2))) * ((2 - v6 * (3 * v6 ^ 0x2)) * (3 * v6 ^ 0x2)))) * ((2 - v6 * ((2 - v6 * (3 * v6 ^ 0x2)) * (3 * v6 ^ 0x2))) * ((2 - v6 * (3 * v6 ^ 0x2)) * (3 * v6 ^ 0x2)));
            v8 = v11 = (2 - v6 * ((2 - v6 * ((2 - v6 * v10) * v10)) * ((2 - v6 * v10) * v10))) * ((2 - v6 * ((2 - v6 * v10) * v10)) * ((2 - v6 * v10) * v10)) * v7;
        }
        return v8;
    } else {
        return varg0 / varg2;
    }
}

function 0x312a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = v1 = varg3 < 10 ** 9;
    if (v1) {
        v0 = v2 = 10 ** 17 < varg0;
    }
    if (v0) {
        v3 = 0x197e(varg3);
        v0 = v4 = v3 < varg2;
    }
    if (v0) {
        if (this.balance < varg1) {
            v5 = 0x1378(varg1);
            0x23bd(varg4, v5);
            return ;
        } else {
            v6 = 0x1378(this.balance);
            v7, /* uint256 */ v8 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v6).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v9 = v10 = new bytes[](RETURNDATASIZE());
                require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                v8 = v10.data;
                RETURNDATACOPY(v8, 0, RETURNDATASIZE());
            }
            return ;
        }
    } else {
        return ;
    }
}

function 0x324c(uint256 varg0, uint256 varg1) private { 
    v0 = varg1.withdraw(varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV2Call);
    v1 = msg.data[4 + data] == 32;
    if (v1) {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
        v1 = v2 = data.word1 == 0x99abcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcbaabcdeffedcba99;
    }
    if (!v1) {
        if (msg.data[4 + data]) {
            require(msg.data[4 + data] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = new bytes[](msg.data[4 + data]);
            require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
            require(4 + data + 32 + msg.data[4 + data] <= msg.data.length);
            CALLDATACOPY(v3.data, 4 + data + 32, msg.data[4 + data]);
            v3[msg.data[4 + data]] = 0;
            v4, v5 = 0x2695(v3);
            if (v4.length) {
                require(v4 + v4.length - v4 >= 128);
                require(!(MEM[v4 + 128] - bool(MEM[v4 + 128])));
                v6 = v7 = 0;
                if (!MEM[v4 + 128]) {
                    if (0 == amount1Delta > 0) {
                        v8 = 0x2722(MEM[v4 + 64], MEM[v4.data], amount0Delta, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v8);
                    } else {
                        v6 = v9 = 0;
                        v10 = 0x2722(MEM[v4.data], MEM[v4 + 64], amount1Delta, MEM[v4 + 96]);
                        0x24cb(_uniswapV2Call, v5, v10);
                    }
                    require((address(v5)).code.size);
                    v11 = address(v5).swap(v6, v6, msg.sender, 128, 0).gas(msg.gas);
                    if (v11) {
                        if (v11) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            exit;
                        } else {
                            exit;
                        }
                    }
                } else {
                    if (amount1Delta <= 0) {
                        v12 = 0x1b6d(amount1Delta);
                        v13 = v14 = 0x2acd(MEM[v4 + 64], MEM[v4.data], v12, MEM[v4 + 96]);
                        v15 = 0;
                    } else {
                        v13 = 0;
                        v16 = 0x1b6d(amount0Delta);
                        v15 = v17 = 0x2acd(MEM[v4.data], MEM[v4 + 64], v16, MEM[v4 + 96]);
                    }
                    require((address(v5)).code.size);
                    v18 = address(v5).swap(v13, v15, this, 128, 0).gas(msg.gas);
                    if (v18) {
                        if (v18) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                        }
                        v19 = new bytes[](68);
                        MEM[v19.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v19 + 36] = msg.sender;
                        MEM[v19 + 68] = v6;
                        require(!((v19 + 128 > uint64.max) | (v19 + 128 < v19)), Panic(65)); // failed memory allocation (too much memory)
                        v20 = v19.length;
                        v21 = v22, /* uint256 */ v23 = _uniswapV2Call.transfer(msg.sender, v6).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v24 = v25 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v24 = v26 = new bytes[](RETURNDATASIZE());
                            require(!((v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
                            v23 = v26.data;
                            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
                        }
                        if (v22) {
                            v21 = v27 = !MEM[v24];
                            if (bool(MEM[v24])) {
                                require(v24 + MEM[v24] - v24 >= 32);
                                v21 = MEM[v24 + 32];
                                require(!(v21 - bool(v21)));
                            }
                        }
                        require(v21, Error(21574));
                        exit;
                    }
                }
            } else {
                v28 = v29 = 0x1b6d(amount1Delta);
                v30 = 1;
                v31 = 0x1000276a4;
                if (amount0Delta > 0) {
                    v28 = v32 = 0x1b6d(amount0Delta);
                    v31 = v33 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    v30 = v34 = 0;
                }
                v35 = new uint256[](0);
                v36, /* uint256 */ v37, /* uint256 */ v38 = address(v5).swap(msg.sender, bool(v30), v28, address(v31), v35).gas(msg.gas);
                if (v36) {
                    if (v36) {
                        v39 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v39 = v40 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v39 - MEM[64] >= 64);
                        exit;
                    } else {
                        exit;
                    }
                }
            }
            revert(MEM[64], RETURNDATASIZE());
        } else if (amount0Delta > 0) {
            0x24cb(_uniswapV2Call, msg.sender, amount0Delta);
            exit;
        }
    } else if (amount0Delta > 0) {
        0x24cb(_uniswapV2Call, msg.sender, amount0Delta);
        exit;
    }
    0x24cb(_uniswapV2Call, msg.sender, amount1Delta);
}

function receive() public payable { 
}

function 0xd66a3f98(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = varg2;
    v0 = 0x14bd(varg4);
    if (!v0) {
        v1 = v2 = MEM[64];
        v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v3) {
            v4 = v5 = 0x2444e;
            v4 = v6 = 4587;
            v7 = v8 = 0;
            if (v3) {
                v9 = v10 = 1301;
                v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x51b0xea. Refer to 3-address code (TAC);
                }
            } else {
                v12 = v13 = this.balance;
            }
            require(!((v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v14 = v1 + v11;
            require(v14 - v1 >= 32);
            v7 = MEM[v1];
            // Unknown jump to Block ['0x20790xea', '0x2df10xea', '0x5150xea']. Refer to 3-address code (TAC);
            v12 = this.balance;
            if (msg.value % 10) {
                if (msg.value % 10 - 1) {
                    if (msg.value % 10 - 2) {
                        require(!(3 - msg.value % 10), Error(0x533132));
                        v15, v16 = 0x1707(v4);
                        v17 = 0x1ecf(msg.value / 10, v16, v7, v15);
                        0x24cb(v4, v4, v7);
                        v18 = v19 = address(v4);
                        require(v19.code.size);
                        v20 = v21 = MEM[64];
                        MEM[v21] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[v21 + 4] = v17;
                        v22 = v23 = 0;
                        MEM[v21 + 36] = v23;
                        MEM[v21 + 68] = this;
                        MEM[v21 + 100] = 128;
                        MEM[v21 + 132] = v23;
                        v24 = v25 = v21 + 164;
                    } else {
                        v26, v27 = 0x1707(v4);
                        v28 = 0x1ecf(msg.value / 10, v26, v7, v27);
                        0x24cb(v4, v4, v7);
                        v18 = address(v4);
                        require(v18.code.size);
                        v20 = MEM[64];
                        MEM[v20] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        v22 = 0;
                        MEM[v20 + 4] = v22;
                        MEM[v20 + 36] = v28;
                        MEM[v20 + 68] = this;
                        MEM[v20 + 100] = 128;
                        MEM[v20 + 132] = v22;
                        v24 = v20 + 164;
                    }
                    v29 = v18.call(MEM[vea0x1ee6:vea0x1ee6 + vea0x1f38 - vea0x1ee6], MEM[vea0x1ee6:vea0x1ee6 + vea0x1f0a]).value(v22).gas(msg.gas);
                    if (v29) {
                        v4 = v30 = 0x247d2;
                        if (v29) {
                            require(!((v20 > uint64.max) | (v20 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v20;
                            require(v20 - v20 >= 0);
                        }
                    }
                } else {
                    v31 = v32 = 64;
                    v33 = v34 = 0;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v36 = MEM[v32];
                    MEM[v36] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v36 + 4] = address(this);
                    MEM[v36 + 4 + 32] = 0;
                    MEM[v36 + 4 + 64] = v7;
                    MEM[v36 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v36 + 4 + 128] = 160;
                    MEM[v36 + 4 + 160] = v37.length;
                    MCOPY(v36 + 4 + 160 + 32, v37.data, v37.length);
                    MEM[v36 + 4 + 160 + v37.length + 32] = 0;
                    v38 = 32 + (v36 + 4 + 160) + 32;
                }
            } else {
                v31 = 64;
                v33 = 0;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v35 = MEM[v31];
                MEM[v35] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v35 + 4] = address(this);
                MEM[v35 + 4 + 32] = 1;
                MEM[v35 + 4 + 64] = v7;
                MEM[v35 + 4 + 96] = address(0x1000276a4);
                MEM[v35 + 4 + 128] = 160;
                MEM[v35 + 4 + 160] = v39.length;
                MCOPY(v35 + 4 + 160 + 32, v39.data, v39.length);
                MEM[v35 + 4 + 160 + v39.length + 32] = 0;
                v38 = v40 = 32 + (v35 + 4 + 160) + 32;
            }
            v41 = address(v4).call(MEM[vea0x1d7d:vea0x1d7d + v18c3V0x19ffV0x1e610xea - vea0x1d7d], MEM[vea0x1d7d:vea0x1d7d + vea0x1cf9]).value(v33).gas(msg.gas);
            if (v41) {
                v4 = v42 = 0x24765;
                if (v41) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v43 = v35 + RETURNDATASIZE();
                    } else {
                        require(!((v35 + 64 > uint64.max) | (v35 + 64 < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + 64;
                        v43 = v44 = v35 + 64;
                    }
                    require(v43 - v35 >= 64);
                }
            }
            _uniswapV2Call = 0;
            v1 = v45 = MEM[64];
            v4 = v4 & 0x3ffffffffffff;
            v4 = v46 = uint24(v4 >> 60);
            v4 = 0x3ff & v4 >> 50;
            v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v47) {
                v7 = v48 = 0;
                if (v47) {
                    v9 = v49 = 11761;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v45 + 32;
                        v14 = v50 = v45 + 32;
                    }
                }
            }
            v51 = this.balance;
            v52 = _SafeAdd(v7, v51);
            v53 = _SafeSub(v52, v4);
            if (!v4) {
                v54 = _SafeSub(v4, msg.gas);
                v55 = 0x134d(v54);
                v56 = _SafeMul(v4, v55);
                require(v56 < v53, Error(52));
                v57 = 0x134d(msg.gas);
                require(v57 >= msg.gas, Error(13665));
                v58 = _SafeSub(v53, v56);
                0x312a(v52, v7, v58, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                // Unknown jump to Block ['0x247650xea', '0x247d20xea']. Refer to 3-address code (TAC);
            } else {
                v59 = _SafeSub(v4, msg.gas);
                v60 = 0x135c(v59);
                v61 = _SafeMul(v4, v60);
                require(v61 < v53, Error(52));
                v62 = _SafeSub(v53, v61);
                require(v4 <= 1000);
                v63 = _SafeMul(v62, v4);
                v64 = _SafeSub(v62, v63 / 1000);
                v65 = 0;
                if (this.balance <= v63 / 1000) {
                    v66 = 0x1378(v7);
                    0x324c(v66, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v65 = v67 = 1;
                }
                if (v63 / 1000) {
                    v68 = block.coinbase.call().value(v63 / 1000).gas(10000);
                }
                v69 = 0x135c(msg.gas);
                require(v69 >= msg.gas, Error(13666));
                v70 = v4 < 10 ** 9;
                if (v70) {
                    if (v52 - v63 / 1000 <= v52) {
                        v70 = v71 = 10 ** 17 < v52 - v63 / 1000;
                    }
                }
                if (v70) {
                    v72 = 0x197e(v4);
                    v70 = v73 = v72 < v64;
                }
                if (v70) {
                    if (!v65) {
                        if (this.balance < v7) {
                            v74 = 0x1378(v7);
                            0x23bd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v74);
                        } else {
                            v75 = 0x1378(this.balance);
                            v76, /* uint256 */ v77 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v75).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v78 = v79 = new bytes[](RETURNDATASIZE());
                                require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                                v77 = v79.data;
                                RETURNDATACOPY(v77, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v80 = 0x1378(this.balance);
                        v81, /* uint256 */ v82 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v80).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v83 = v84 = new bytes[](RETURNDATASIZE());
                            require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                            v82 = v84.data;
                            RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                        }
                    }
                }
                // Unknown jump to Block ['0x247650xea', '0x247d20xea']. Refer to 3-address code (TAC);
            }
            exit;
            // Unknown jump to Block 0x2444e. Refer to 3-address code (TAC);
            v11 = v85 = RETURNDATASIZE();
            // Unknown jump to Block 0x5030xea. Refer to 3-address code (TAC);
            v4 = v86 = v7 + v12;
            if (v7 <= v86) {
                v87 = 0x17dd(v4);
                v88 = 0x182e(v4);
                v89, v90 = 0x1707(v4);
                v91 = v88 * v88 * v90 % uint256.max - v88 * v88 * v90 - (v88 * v88 * v90 % uint256.max < v88 * v88 * v90) + (v88 * v88 % uint256.max - v88 * v88 - (v88 * v88 % uint256.max < v88 * v88)) * v90;
                v92 = v93 = v91 < v89 * (uint192.max + 1) % uint256.max - (v89 << 192) - (v89 * (uint192.max + 1) % uint256.max < v89 << 192);
                if (v91 >= v89 * (uint192.max + 1) % uint256.max - (v89 << 192) - (v89 * (uint192.max + 1) % uint256.max < v89 << 192)) {
                    v92 = v94 = v91 == v89 * (uint192.max + 1) % uint256.max - (v89 << 192) - (v89 * (uint192.max + 1) % uint256.max < v89 << 192);
                    if (v94) {
                        v92 = v95 = v88 * v88 * v90 < v89 << 192;
                    }
                }
                if (0 == v92) {
                    0x22b4(v4, v4, 0xfffff & v4 >> 108, 0xfffff & v4 >> 88, 0xfffff & v4 >> 128, v90, v89, v87, v88);
                } else {
                    0x220a(v4, v4, 0xfffff & v4 >> 88, 0xfffff & v4 >> 108, 0xfffff & v4 >> 128, v87, v88, v90, v89);
                }
                v1 = MEM[64];
                v96 = address(v4).balanceOf(this).gas(msg.gas);
                if (v96) {
                    v7 = v97 = 0;
                    if (v96) {
                        v9 = v98 = 8313;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v1 + 32;
                            v14 = v99 = v1 + 32;
                        }
                    }
                }
            }
            revert(Panic(17));
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x8546f969(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = varg2;
    v0 = 0x14bd(varg4);
    if (!v0) {
        v1 = v2 = MEM[64];
        v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v3) {
            v4 = v5 = 0x243e5;
            v4 = v6 = 4343;
            v7 = v8 = 0;
            if (v3) {
                v9 = v10 = 1301;
                v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x51b0xef. Refer to 3-address code (TAC);
                }
            } else {
                v12 = v13 = this.balance;
            }
            require(!((v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v14 = v1 + v11;
            require(v14 - v1 >= 32);
            v7 = MEM[v1];
            // Unknown jump to Block ['0x20790xef', '0x2df10xef', '0x5150xef']. Refer to 3-address code (TAC);
            v12 = this.balance;
            if (msg.value % 10) {
                if (msg.value % 10 - 1) {
                    if (msg.value % 10 - 2) {
                        require(!(3 - msg.value % 10), Error(0x533132));
                        v15, v16 = 0x1707(v4);
                        v17 = 0x1ecf(msg.value / 10, v16, v7, v15);
                        0x24cb(v4, v4, v7);
                        v18 = v19 = address(v4);
                        require(v19.code.size);
                        v20 = v21 = MEM[64];
                        MEM[v21] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[v21 + 4] = v17;
                        v22 = v23 = 0;
                        MEM[v21 + 36] = v23;
                        MEM[v21 + 68] = this;
                        MEM[v21 + 100] = 128;
                        MEM[v21 + 132] = v23;
                        v24 = v25 = v21 + 164;
                    } else {
                        v26, v27 = 0x1707(v4);
                        v28 = 0x1ecf(msg.value / 10, v26, v7, v27);
                        0x24cb(v4, v4, v7);
                        v18 = address(v4);
                        require(v18.code.size);
                        v20 = MEM[64];
                        MEM[v20] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        v22 = 0;
                        MEM[v20 + 4] = v22;
                        MEM[v20 + 36] = v28;
                        MEM[v20 + 68] = this;
                        MEM[v20 + 100] = 128;
                        MEM[v20 + 132] = v22;
                        v24 = v20 + 164;
                    }
                    v29 = v18.call(MEM[vef0x1ee6:vef0x1ee6 + vef0x1f38 - vef0x1ee6], MEM[vef0x1ee6:vef0x1ee6 + vef0x1f0a]).value(v22).gas(msg.gas);
                    if (v29) {
                        v4 = v30 = 0x247d2;
                        if (v29) {
                            require(!((v20 > uint64.max) | (v20 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v20;
                            require(v20 - v20 >= 0);
                        }
                    }
                } else {
                    v31 = v32 = 64;
                    v33 = v34 = 0;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v36 = MEM[v32];
                    MEM[v36] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v36 + 4] = address(this);
                    MEM[v36 + 4 + 32] = 0;
                    MEM[v36 + 4 + 64] = v7;
                    MEM[v36 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v36 + 4 + 128] = 160;
                    MEM[v36 + 4 + 160] = v37.length;
                    MCOPY(v36 + 4 + 160 + 32, v37.data, v37.length);
                    MEM[v36 + 4 + 160 + v37.length + 32] = 0;
                    v38 = 32 + (v36 + 4 + 160) + 32;
                }
            } else {
                v31 = 64;
                v33 = 0;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v35 = MEM[v31];
                MEM[v35] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v35 + 4] = address(this);
                MEM[v35 + 4 + 32] = 1;
                MEM[v35 + 4 + 64] = v7;
                MEM[v35 + 4 + 96] = address(0x1000276a4);
                MEM[v35 + 4 + 128] = 160;
                MEM[v35 + 4 + 160] = v39.length;
                MCOPY(v35 + 4 + 160 + 32, v39.data, v39.length);
                MEM[v35 + 4 + 160 + v39.length + 32] = 0;
                v38 = v40 = 32 + (v35 + 4 + 160) + 32;
            }
            v41 = address(v4).call(MEM[vef0x1d7d:vef0x1d7d + v18c3V0x19ffV0x1e610xef - vef0x1d7d], MEM[vef0x1d7d:vef0x1d7d + vef0x1cf9]).value(v33).gas(msg.gas);
            if (v41) {
                v4 = v42 = 0x24765;
                if (v41) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v43 = v35 + RETURNDATASIZE();
                    } else {
                        require(!((v35 + 64 > uint64.max) | (v35 + 64 < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + 64;
                        v43 = v44 = v35 + 64;
                    }
                    require(v43 - v35 >= 64);
                }
            }
            _uniswapV2Call = 0;
            v1 = v45 = MEM[64];
            v4 = v4 & 0x3ffffffffffff;
            v4 = v46 = uint24(v4 >> 60);
            v4 = 0x3ff & v4 >> 50;
            v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v47) {
                v7 = v48 = 0;
                if (v47) {
                    v9 = v49 = 11761;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v45 + 32;
                        v14 = v50 = v45 + 32;
                    }
                }
            }
            v51 = this.balance;
            v52 = _SafeAdd(v7, v51);
            v53 = _SafeSub(v52, v4);
            if (!v4) {
                v54 = _SafeSub(v4, msg.gas);
                v55 = 0x134d(v54);
                v56 = _SafeMul(v4, v55);
                require(v56 < v53, Error(52));
                v57 = 0x134d(msg.gas);
                require(v57 >= msg.gas, Error(13665));
                v58 = _SafeSub(v53, v56);
                0x312a(v52, v7, v58, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                // Unknown jump to Block ['0x247650xef', '0x247d20xef']. Refer to 3-address code (TAC);
            } else {
                v59 = _SafeSub(v4, msg.gas);
                v60 = 0x135c(v59);
                v61 = _SafeMul(v4, v60);
                require(v61 < v53, Error(52));
                v62 = _SafeSub(v53, v61);
                require(v4 <= 1000);
                v63 = _SafeMul(v62, v4);
                v64 = _SafeSub(v62, v63 / 1000);
                v65 = 0;
                if (this.balance <= v63 / 1000) {
                    v66 = 0x1378(v7);
                    0x324c(v66, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v65 = v67 = 1;
                }
                if (v63 / 1000) {
                    v68 = block.coinbase.call().value(v63 / 1000).gas(10000);
                }
                v69 = 0x135c(msg.gas);
                require(v69 >= msg.gas, Error(13666));
                v70 = v4 < 10 ** 9;
                if (v70) {
                    if (v52 - v63 / 1000 <= v52) {
                        v70 = v71 = 10 ** 17 < v52 - v63 / 1000;
                    }
                }
                if (v70) {
                    v72 = 0x197e(v4);
                    v70 = v73 = v72 < v64;
                }
                if (v70) {
                    if (!v65) {
                        if (this.balance < v7) {
                            v74 = 0x1378(v7);
                            0x23bd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v74);
                        } else {
                            v75 = 0x1378(this.balance);
                            v76, /* uint256 */ v77 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v75).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v78 = v79 = new bytes[](RETURNDATASIZE());
                                require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                                v77 = v79.data;
                                RETURNDATACOPY(v77, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v80 = 0x1378(this.balance);
                        v81, /* uint256 */ v82 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v80).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v83 = v84 = new bytes[](RETURNDATASIZE());
                            require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                            v82 = v84.data;
                            RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                        }
                    }
                }
                // Unknown jump to Block ['0x247650xef', '0x247d20xef']. Refer to 3-address code (TAC);
            }
            exit;
            // Unknown jump to Block 0x243e5. Refer to 3-address code (TAC);
            v11 = v85 = RETURNDATASIZE();
            // Unknown jump to Block 0x5030xef. Refer to 3-address code (TAC);
            v4 = v86 = v7 + v12;
            if (v7 <= v86) {
                v87, v88 = 0x1707(v4);
                v89, v90 = 0x1707(v4);
                if (v90 * v87 >= v89 * v88) {
                    0x2564(v4, v4, 0xfffff & v4 >> 108, 0xfffff & v4 >> 88, 0xfffff & v4 >> 128, v90, v89, v88, v87);
                } else {
                    0x2564(v4, v4, 0xfffff & v4 >> 88, 0xfffff & v4 >> 108, 0xfffff & v4 >> 128, v88, v87, v90, v89);
                }
                v1 = MEM[64];
                v91 = address(v4).balanceOf(this).gas(msg.gas);
                if (v91) {
                    v7 = v92 = 0;
                    if (v91) {
                        v9 = v93 = 8313;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v1 + 32;
                            v14 = v94 = v1 + 32;
                        }
                    }
                }
            }
            revert(Panic(17));
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
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
    0x23bd(varg0, v1 - 1);
}

function 0x6a569381(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV2Call = varg2;
    v0 = 0x14bd(varg4);
    if (!v0) {
        v1 = v2 = MEM[64];
        v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v3) {
            v4 = v5 = 0x24334;
            v4 = v6 = 3858;
            v7 = v8 = 0;
            if (v3) {
                v9 = v10 = 1301;
                v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x51b0xfe. Refer to 3-address code (TAC);
                }
            } else {
                v12 = v13 = this.balance;
            }
            require(!((v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v14 = v1 + v11;
            require(v14 - v1 >= 32);
            v7 = MEM[v1];
            // Unknown jump to Block ['0x20790xfe', '0x2df10xfe', '0x5150xfe']. Refer to 3-address code (TAC);
            v12 = this.balance;
            if (msg.value % 10) {
                if (msg.value % 10 - 1) {
                    if (msg.value % 10 - 2) {
                        require(!(3 - msg.value % 10), Error(0x533132));
                        v15, v16 = 0x1707(v4);
                        v17 = 0x1ecf(msg.value / 10, v16, v7, v15);
                        0x24cb(v4, v4, v7);
                        v18 = v19 = address(v4);
                        require(v19.code.size);
                        v20 = v21 = MEM[64];
                        MEM[v21] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[v21 + 4] = v17;
                        v22 = v23 = 0;
                        MEM[v21 + 36] = v23;
                        MEM[v21 + 68] = this;
                        MEM[v21 + 100] = 128;
                        MEM[v21 + 132] = v23;
                        v24 = v25 = v21 + 164;
                    } else {
                        v26, v27 = 0x1707(v4);
                        v28 = 0x1ecf(msg.value / 10, v26, v7, v27);
                        0x24cb(v4, v4, v7);
                        v18 = address(v4);
                        require(v18.code.size);
                        v20 = MEM[64];
                        MEM[v20] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        v22 = 0;
                        MEM[v20 + 4] = v22;
                        MEM[v20 + 36] = v28;
                        MEM[v20 + 68] = this;
                        MEM[v20 + 100] = 128;
                        MEM[v20 + 132] = v22;
                        v24 = v20 + 164;
                    }
                    v29 = v18.call(MEM[vfe0x1ee6:vfe0x1ee6 + vfe0x1f38 - vfe0x1ee6], MEM[vfe0x1ee6:vfe0x1ee6 + vfe0x1f0a]).value(v22).gas(msg.gas);
                    if (v29) {
                        v4 = v30 = 0x247d2;
                        if (v29) {
                            require(!((v20 > uint64.max) | (v20 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v20;
                            require(v20 - v20 >= 0);
                        }
                    }
                } else {
                    v31 = v32 = 64;
                    v33 = v34 = 0;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v35 = v36 = MEM[v32];
                    MEM[v36] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v36 + 4] = address(this);
                    MEM[v36 + 4 + 32] = 0;
                    MEM[v36 + 4 + 64] = v7;
                    MEM[v36 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v36 + 4 + 128] = 160;
                    MEM[v36 + 4 + 160] = v37.length;
                    MCOPY(v36 + 4 + 160 + 32, v37.data, v37.length);
                    MEM[v36 + 4 + 160 + v37.length + 32] = 0;
                    v38 = 32 + (v36 + 4 + 160) + 32;
                }
            } else {
                v31 = 64;
                v33 = 0;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v35 = MEM[v31];
                MEM[v35] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v35 + 4] = address(this);
                MEM[v35 + 4 + 32] = 1;
                MEM[v35 + 4 + 64] = v7;
                MEM[v35 + 4 + 96] = address(0x1000276a4);
                MEM[v35 + 4 + 128] = 160;
                MEM[v35 + 4 + 160] = v39.length;
                MCOPY(v35 + 4 + 160 + 32, v39.data, v39.length);
                MEM[v35 + 4 + 160 + v39.length + 32] = 0;
                v38 = v40 = 32 + (v35 + 4 + 160) + 32;
            }
            v41 = address(v4).call(MEM[vfe0x1d7d:vfe0x1d7d + v18c3V0x19ffV0x1e610xfe - vfe0x1d7d], MEM[vfe0x1d7d:vfe0x1d7d + vfe0x1cf9]).value(v33).gas(msg.gas);
            if (v41) {
                v4 = v42 = 0x24765;
                if (v41) {
                    if (64 > RETURNDATASIZE()) {
                        require(!((v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v43 = v35 + RETURNDATASIZE();
                    } else {
                        require(!((v35 + 64 > uint64.max) | (v35 + 64 < v35)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v35 + 64;
                        v43 = v44 = v35 + 64;
                    }
                    require(v43 - v35 >= 64);
                }
            }
            _uniswapV2Call = 0;
            v1 = v45 = MEM[64];
            v4 = v4 & 0x3ffffffffffff;
            v4 = v46 = uint24(v4 >> 60);
            v4 = 0x3ff & v4 >> 50;
            v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v47) {
                v7 = v48 = 0;
                if (v47) {
                    v9 = v49 = 11761;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v45 + 32;
                        v14 = v50 = v45 + 32;
                    }
                }
            }
            v51 = this.balance;
            v52 = _SafeAdd(v7, v51);
            v53 = _SafeSub(v52, v4);
            if (!v4) {
                v54 = _SafeSub(v4, msg.gas);
                v55 = 0x134d(v54);
                v56 = _SafeMul(v4, v55);
                require(v56 < v53, Error(52));
                v57 = 0x134d(msg.gas);
                require(v57 >= msg.gas, Error(13665));
                v58 = _SafeSub(v53, v56);
                0x312a(v52, v7, v58, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                // Unknown jump to Block ['0x247650xfe', '0x247d20xfe']. Refer to 3-address code (TAC);
            } else {
                v59 = _SafeSub(v4, msg.gas);
                v60 = 0x135c(v59);
                v61 = _SafeMul(v4, v60);
                require(v61 < v53, Error(52));
                v62 = _SafeSub(v53, v61);
                require(v4 <= 1000);
                v63 = _SafeMul(v62, v4);
                v64 = _SafeSub(v62, v63 / 1000);
                v65 = 0;
                if (this.balance <= v63 / 1000) {
                    v66 = 0x1378(v7);
                    0x324c(v66, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v65 = v67 = 1;
                }
                if (v63 / 1000) {
                    v68 = block.coinbase.call().value(v63 / 1000).gas(10000);
                }
                v69 = 0x135c(msg.gas);
                require(v69 >= msg.gas, Error(13666));
                v70 = v4 < 10 ** 9;
                if (v70) {
                    if (v52 - v63 / 1000 <= v52) {
                        v70 = v71 = 10 ** 17 < v52 - v63 / 1000;
                    }
                }
                if (v70) {
                    v72 = 0x197e(v4);
                    v70 = v73 = v72 < v64;
                }
                if (v70) {
                    if (!v65) {
                        if (this.balance < v7) {
                            v74 = 0x1378(v7);
                            0x23bd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v74);
                        } else {
                            v75 = 0x1378(this.balance);
                            v76, /* uint256 */ v77 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v75).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v78 = v79 = new bytes[](RETURNDATASIZE());
                                require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                                v77 = v79.data;
                                RETURNDATACOPY(v77, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v80 = 0x1378(this.balance);
                        v81, /* uint256 */ v82 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v80).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v83 = v84 = new bytes[](RETURNDATASIZE());
                            require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                            v82 = v84.data;
                            RETURNDATACOPY(v82, 0, RETURNDATASIZE());
                        }
                    }
                }
                // Unknown jump to Block ['0x247650xfe', '0x247d20xfe']. Refer to 3-address code (TAC);
            }
            exit;
            // Unknown jump to Block 0x24334. Refer to 3-address code (TAC);
            v11 = v85 = RETURNDATASIZE();
            // Unknown jump to Block 0x5030xfe. Refer to 3-address code (TAC);
            v4 = v86 = v7 + v12;
            if (v7 <= v86) {
                v87 = 0x17dd(v4);
                v88 = 0x182e(v4);
                v89 = 0x17dd(v4);
                v90 = 0x182e(v4);
                if (v88 >= v90) {
                    0x2358(v4, v4, 0xfffff & v4 >> 108, 0xfffff & v4 >> 88, 0xfffff & v4 >> 128, v89, v90, v87, v88);
                } else {
                    0x2358(v4, v4, 0xfffff & v4 >> 88, 0xfffff & v4 >> 108, 0xfffff & v4 >> 128, v87, v88, v89, v90);
                }
                v1 = MEM[64];
                v91 = address(v4).balanceOf(this).gas(msg.gas);
                if (v91) {
                    v7 = v92 = 0;
                    if (v91) {
                        v9 = v93 = 8313;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v1 + 32;
                            v14 = v94 = v1 + 32;
                        }
                    }
                }
            }
            revert(Panic(17));
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x10d1e85c == function_selector >> 224) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x11e7c4ec == function_selector >> 224) {
            0x11e7c4ec();
        } else if (0x145daf6d == function_selector >> 224) {
            0x145daf6d();
        } else if (0x1a37e82a == function_selector >> 224) {
            0x1a37e82a();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x25edf1c2 == function_selector >> 224) {
            0x25edf1c2();
        } else if (0x2c2f9ced == function_selector >> 224) {
            0x2c2f9ced();
        } else if (0x2c6e2884 == function_selector >> 224) {
            0x2c6e2884();
        } else if (0x3a1c453c == function_selector >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x44d79ec4 == function_selector >> 224) {
            0x44d79ec4();
        } else if (0x6a569381 == function_selector >> 224) {
            0x6a569381();
        } else if (0x6f5aeea3 == function_selector >> 224) {
            0x6f5aeea3();
        } else if (0x84800812 == function_selector >> 224) {
            pancakeCall(address,uint256,uint256,bytes);
        } else if (0x8546f969 == function_selector >> 224) {
            0x8546f969();
        } else if (0x9f3d4ab8 == function_selector >> 224) {
            0x9f3d4ab8();
        } else if (0xa0bd0131 == function_selector >> 224) {
            0xa0bd0131();
        } else if (0xd66a3f98 == function_selector >> 224) {
            0xd66a3f98();
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
