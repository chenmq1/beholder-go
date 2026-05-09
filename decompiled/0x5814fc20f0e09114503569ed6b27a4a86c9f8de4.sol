// Decompiled by library.dedaub.com
// 2026.04.18 13:54 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 tstor_face00000000; // TRANSIENT_STORAGE[0xface00000000]



function pancakeV3MintCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    0x941(4, msg.sender);
    v0 = v1 = varg2 >> 96;
    v0 = v2 = varg3 >> 96;
    if (v1 <= v2) {
    }
    if (v3 <= v4) {
    }
    require(!(msg.sender - address(keccak256(0xff41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c90000000000000000000000, keccak256(v0, v0, varg4 >> 232), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))));
    if (varg0 > 0) {
        0x277e(v0, msg.sender, varg0);
    }
    if (varg1 > 0) {
        0x277e(v0, msg.sender, varg1);
    }
}

function pancakeV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public payable { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    0x941(1, msg.sender);
    v0 = v1 = varg2 >> 96;
    v0 = v2 = varg4 >> 96;
    if (v1 <= v2) {
    }
    require(!(msg.sender - address(keccak256(0xff41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c90000000000000000000000, keccak256(v0, v0, varg3 >> 232), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))));
    if (varg6 >> 240 > 0) {
        if (varg7 >> 248 > 0) {
            v3 = v4 = 179;
            v5 = v6 = 0;
            while (v5 < varg7 >> 248) {
                v7 = msg.data[v3] >> 248;
                v8 = v3 + 1;
                if (1 == v7) {
                    v9 = v10 = 1;
                    v11 = v8 + 20 + 1;
                    if (msg.data[v8 + 20] >> 248 > 0) {
                        v11 = v11 + 20 + 16;
                        0x277e(msg.data[v11] >> 96, msg.data[v8] >> 96, msg.data[v11 + 20] >> 128);
                    }
                    v12 = v11 + 1 + 16 + 1;
                    if (0 == msg.data[v11 + 1 + 16] >> 248) {
                        v13 = v14 = msg.data[v12] >> 96;
                        v12 = v12 + 20;
                    } else {
                        v13 = v15 = this;
                    }
                    if (0 == msg.data[v11] >> 248) {
                        0x28c3(msg.data[v8] >> 96, msg.data[v11 + 1] >> 128, 0, v13);
                    } else {
                        0x28c3(msg.data[v8] >> 96, 0, msg.data[v11 + 1] >> 128, v13);
                    }
                    v3 = v12 - v8 + v8;
                } else if (2 == v7) {
                    v9 = v16 = 1;
                    v17 = v8 + 20 + 3 + 1;
                    if (0 == msg.data[v8 + 20 + 3] >> 248 & 0x10) {
                        v18 = v19 = 0x1000276a4;
                        if (!(msg.data[v8 + 20 + 3] >> 248 & 0x1)) {
                            v18 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                    } else {
                        v18 = v20 = msg.data[v17] >> 96;
                        v17 = v17 + 20;
                    }
                    v21 = v17 + 20 + 20 + 16 + 16 + 1;
                    v22 = this;
                    if (0 == msg.data[v17 + 20 + 20 + 16 + 16] >> 248) {
                        v22 = v23 = msg.data[v21] >> 96;
                        v21 = v21 + 20;
                    } else {
                        0x931(1, msg.data[v8] >> 96);
                    }
                    MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[100] = v22;
                    MEM[132] = msg.data[v8 + 20 + 3] >> 248 & 0x1;
                    MEM[164] = msg.data[v17 + 20 + 20] >> 128;
                    MEM[196] = v18;
                    MEM[228] = 160;
                    MEM[260] = (msg.data[1 + v21] >> 240) + 46;
                    MEM[324] = 0;
                    MEM[292] = msg.data[v17] >> 96 << 96;
                    MEM[312] = msg.data[v8 + 20] >> 232 << 232;
                    MEM[315] = msg.data[v17 + 20] >> 96 << 96;
                    MEM[335] = msg.data[v21] >> 248 << 248;
                    MEM[336] = msg.data[1 + v21] >> 240 << 240;
                    v24 = uint8.max + 1;
                    if (msg.data[1 + v21] >> 240 > 0) {
                        v24 = v25 = 238 + (msg.data[1 + v21] >> 240);
                        if (v25 % 32 > 0) {
                            v24 = v26 = (v25 >> 5) + 1 << 5;
                            MEM[100 + (v25 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(338, 3 + v21, msg.data[1 + v21] >> 240);
                    }
                    v27 = (msg.data[v8] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x4ecV0x117 + 4], MEM[96:160]).gas(msg.gas);
                    require(v27, Error(32, 8, 'sav7:004'));
                    v28 = v29 = 0 - MEM[128];
                    if (!(msg.data[v8 + 20 + 3] >> 248 & 0x1)) {
                        v28 = v30 = 0 - MEM[96];
                    }
                    if (msg.data[v17 + 20 + 20 + 16] >> 128 > 0) {
                        require(msg.data[v17 + 20 + 20 + 16] >> 128 <= v28, Error(32, 8, 'sav7:005'));
                    }
                    v3 = (msg.data[1 + v21] >> 240) + (3 + v21 - v8) + v8;
                } else if (3 == v7) {
                    v9 = v31 = 1;
                    0x29b5(msg.data[v8 + 1 + 20] >> 96, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20 + 1 + 1] >> 128);
                    0x2925(msg.data[v8] >> 248, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 248, msg.data[v8 + 1 + 20 + 20 + 1] >> 248, msg.data[v8 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v8 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                    v3 = v8 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v8 + v8;
                } else if (4 == v7) {
                    v9 = v32 = 1;
                    0x29b5(msg.data[v8 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v8 + 32 + 20 + 20] >> 128);
                    0x2a67(msg.data[v8], 0, msg.data[v8 + 32] >> 96, msg.data[v8 + 32 + 20] >> 96, msg.data[v8 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v8 + 32 + 20 + 20 + 16] >> 128);
                    v3 = v8 + 32 + 20 + 20 + 16 + 16 - v8 + v8;
                } else {
                    if (5 == v7) {
                        v33 = v34 = 3644;
                        v9 = v35 = 1;
                        v36 = v8 + 1 + 1;
                        v37 = v38 = 0;
                        if (msg.data[v8 + 1] >> 248 > v38) {
                            v37 = v39 = msg.data[v36] >> 128;
                            v36 = v36 + 16;
                        }
                        v40 = v41 = msg.data[v36] >> 128;
                        v42 = v36 + 16 + 1;
                        if (0 == msg.data[v36 + 16] >> 248) {
                            v43 = v44 = msg.data[v42] >> 96;
                            v42 = v42 + 20;
                        } else {
                            v43 = v45 = this;
                        }
                        if (0 == msg.data[v8] >> 248) {
                            v46 = 5155;
                            if (v37 > 0) {
                                0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v37);
                            }
                            v47 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        } else {
                            v48 = 5032;
                            if (v37 > 0) {
                                0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v37);
                            }
                            v47 = v49 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        }
                    } else if (6 == v7) {
                        v9 = v50 = 1;
                        if (0 == msg.data[v8] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v8 + 1] >> 128);
                            0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v8 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v8 + 1] >> 128);
                            0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v8 + 1] >> 128);
                        }
                        v3 = v8 + 1 + 16 - v8 + v8;
                    } else if (7 == v7) {
                        v9 = v51 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            v52 = block.coinbase.call().value(msg.data[v8] >> 128).gas(msg.gas);
                            require(v52, Error(32, 8, 'sav7:040'));
                        }
                        v3 = 16 + v8;
                    } else if (8 == v7) {
                        v9 = v53 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                            MEM[100] = msg.data[v8] >> 128;
                            v54 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                            require(v54, Error(32, 8, 'sav7:00c'));
                        }
                        v3 = 16 + v8;
                    } else if (9 == v7) {
                        v9 = v55 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            v56 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v8] >> 128).gas(msg.gas);
                            require(v56, Error(32, 8, 'sav7:03f'));
                        }
                        v3 = 16 + v8;
                    } else if (10 == v7) {
                        v9 = v57 = 1;
                        0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                        v58 = v8 + 1;
                        require(msg.data[v8] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                        MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 128;
                        MEM[228] = msg.data[v8] >> 248;
                        v59 = v60 = 260;
                        MEM[164] = 128 + (msg.data[v8] >> 248 << 5) + 32;
                        MEM[100 + (128 + (msg.data[v8] >> 248 << 5) + 32)] = msg.data[v8] >> 248;
                        v61 = v62 = 100 + (128 + (msg.data[v8] >> 248 << 5) + 32) + 32;
                        MEM[196] = 128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32;
                        v63 = v64 = 0;
                        while (v63 < msg.data[v8] >> 248) {
                            v58 = v58 + 20 + 16;
                            MEM[v59] = msg.data[v58] >> 96;
                            v59 = v59 + 32;
                            MEM[v61] = msg.data[v58 + 20] >> 128;
                            v61 = v61 + 32;
                            v63 = v63 + 1;
                        }
                        MEM[100 + (128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32)] = msg.data[v58] >> 240;
                        v65 = 128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32 + 32;
                        if (msg.data[v58] >> 240 > 0) {
                            v65 = v66 = v65 + (msg.data[v58] >> 240);
                            if (v66 % 32 > 0) {
                                v65 = v67 = (v66 >> 5) + 1 << 5;
                                MEM[100 + (v66 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(100 + v65, v58 + 2, msg.data[v58] >> 240);
                        }
                        v68 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x4ecV0x117 + 4], MEM[96:96]).gas(msg.gas);
                        require(v68, Error(32, 8, 'sav7:00e'));
                        v3 = (msg.data[v58] >> 240) + (v58 + 2 - v8) + v8;
                    } else if (11 == v7) {
                        v9 = v69 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8 + 20] >> 128);
                        0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this);
                        v3 = 36 + v8;
                    } else if (12 == v7) {
                        v9 = v70 = 1;
                        v71 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this).gas(msg.gas);
                        require(v71, Error(32, 8, 'sav7:010'));
                        v3 = 36 + v8;
                    } else if (13 == v7) {
                        v9 = v72 = 1;
                        v73 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v73, Error(32, 8, 'sav7:011'));
                        v3 = 37 + v8;
                    } else if (14 == v7) {
                        v9 = v74 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8 + 20] >> 128);
                        0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, this);
                        v3 = 37 + v8;
                    } else if (15 == v7) {
                        v9 = v75 = 1;
                        if (1 == msg.data[v8 + 20 + 16] >> 248) {
                            v76 = 0x35b5e5ad9019092c665357240f594e;
                        } else {
                            require(2 == msg.data[v8 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                            v76 = v77 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                        }
                        if (msg.data[v8 + 20] >> 128 > 0) {
                            0x277e(msg.data[v8] >> 96, v76, msg.data[v8 + 20] >> 128);
                        }
                        v3 = 37 + v8;
                    } else if (16 == v7) {
                        v9 = v78 = 1;
                        0x29b5(msg.data[v8 + 1 + 20] >> 96, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 128);
                        if (0 == msg.data[v8] >> 248) {
                            0x2e0d(msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20 + 16] >> 128, msg.data[v8 + 1 + 20 + 20] >> 128);
                        } else {
                            0x2db3(msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 128, msg.data[v8 + 1 + 20 + 20 + 16] >> 128);
                        }
                        v3 = v8 + 1 + 20 + 20 + 16 + 16 - v8 + v8;
                    } else if (17 == v7) {
                        v9 = v79 = 1;
                        0x29b5(msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 128);
                        v3 = 56 + v8;
                    } else if (22 == v7) {
                        v9 = v80 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8 + 20] >> 128);
                        0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this);
                        v3 = 36 + v8;
                    } else if (23 == v7) {
                        v9 = v81 = 1;
                        v82 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this).gas(msg.gas);
                        require(v82, Error(32, 8, 'sav7:010'));
                        v3 = 36 + v8;
                    } else if (24 == v7) {
                        v9 = v83 = 1;
                        v84 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v84, Error(32, 8, 'sav7:011'));
                        v3 = 37 + v8;
                    } else if (25 == v7) {
                        v9 = v85 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8 + 20] >> 128);
                        0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, this);
                        v3 = 37 + v8;
                    } else if (31 == v7) {
                        v9 = v86 = 1;
                        0x29b5(msg.data[v8] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8 + 20 + 20 + 3 + 3 + 3] >> 128);
                        0x29b5(msg.data[v8 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                        0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 232, msg.data[v8 + 20 + 20 + 3] >> 232, msg.data[v8 + 20 + 20 + 3 + 3] >> 232, msg.data[v8 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                        v3 = v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v8 + v8;
                    } else if (32 == v7) {
                        v9 = v87 = 1;
                        0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 192, msg.data[v8 + 8] >> 128, 0, 0, msg.data[v8 + 8 + 16] >> 192);
                        0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 192, this, uint128.max, uint128.max);
                        v3 = v8 + 8 + 16 + 8 - v8 + v8;
                    } else if (33 == v7) {
                        v9 = v88 = 1;
                        0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v8] >> 128);
                        0x30f5(msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (34 == v7) {
                        v9 = v89 = 1;
                        0x3144(msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (35 == v7) {
                        v9 = v90 = 1;
                        0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                        MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                        MEM[164] = msg.data[v8] >> 128;
                        MEM[196] = 128;
                        MEM[228] = (msg.data[v8 + 16] >> 240) + 2;
                        MEM[260] = msg.data[v8 + 16] >> 240 << 240;
                        v91 = v92 = 192;
                        if (msg.data[v8 + 16] >> 240 > 0) {
                            v91 = v93 = 162 + (msg.data[v8 + 16] >> 240);
                            if (v93 % 32 > 0) {
                                v91 = v94 = (v93 >> 5) + 1 << 5;
                                MEM[100 + (v93 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(262, v8 + 16 + 2, msg.data[v8 + 16] >> 240);
                        }
                        v95 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x4ecV0x117 + 4], MEM[96:96]).gas(msg.gas);
                        require(v95, Error(32, 8, 'sav7:02b'));
                        v3 = (msg.data[v8 + 16] >> 240) + (v8 + 16 + 2 - v8) + v8;
                    } else if (36 == v7) {
                        v9 = v96 = 1;
                        0x3193(msg.data[v8] >> 248);
                        v3 = v8 + 1 - v8 + v8;
                    } else if (37 == v7) {
                        v9 = v97 = 1;
                        if (0 == msg.data[v8] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v8 + 1] >> 128);
                            0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v8 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v8 + 1] >> 128);
                            0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v8 + 1] >> 128);
                        }
                        v3 = v8 + 1 + 16 - v8 + v8;
                    } else if (38 == v7) {
                        v33 = v98 = 3164;
                        v9 = v99 = 1;
                        v47 = v100 = msg.data[v8] >> 96;
                        v101 = v8 + 20 + 1 + 1;
                        v102 = v103 = 0;
                        v104 = v105 = 0;
                        if (msg.data[v8 + 20 + 1] >> 248 > v105) {
                            v102 = v106 = msg.data[v101] >> 128;
                            v104 = v107 = msg.data[v101 + 16] >> 96;
                            v101 = v101 + 16 + 20;
                        }
                        v40 = msg.data[v101] >> 128;
                        v42 = v101 + 16 + 1;
                        if (0 == msg.data[v101 + 16] >> 248) {
                            v43 = msg.data[v42] >> 96;
                            v42 = v42 + 20;
                        } else {
                            v43 = v108 = this;
                        }
                        if (v102 > 0) {
                            0x277e(v104, v100, v102);
                        }
                        if (0 == msg.data[v8 + 20] >> 248) {
                            v48 = v109 = 5396;
                            // Unknown jump to Block 0x2d65B0x4ecB0x117. Refer to 3-address code (TAC);
                        } else {
                            v46 = v110 = 5321;
                        }
                    } else if (39 == v7) {
                        v9 = v111 = 1;
                        0x931(4, msg.data[v8] >> 96);
                        0x2faf(msg.data[v8] >> 96, this, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3] >> 128, msg.data[v8 + 20 + 3 + 3 + 16] >> 96, msg.data[v8 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v8 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                        v3 = v8 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v8 + v8;
                    } else if (40 == v7) {
                        v9 = v112 = 1;
                        0x303f(msg.data[v8] >> 96, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3] >> 128);
                        0x3095(msg.data[v8] >> 96, this, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3 + 16] >> 128, msg.data[v8 + 20 + 3 + 3 + 16 + 16] >> 128);
                        v3 = v8 + 20 + 3 + 3 + 16 + 16 + 16 - v8 + v8;
                    } else if (41 == v7) {
                        v9 = v113 = 1;
                        0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                        0x29b5(msg.data[v8] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v8 + 20] >> 128);
                        MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v8] >> 96;
                        MEM[132] = msg.data[v8 + 20] >> 128;
                        MEM[164] = 96;
                        MEM[196] = (msg.data[v8 + 20 + 16] >> 240) + 2;
                        MEM[228] = msg.data[v8 + 20 + 16] >> 240 << 240;
                        v114 = v115 = 160;
                        if (msg.data[v8 + 20 + 16] >> 240 > 0) {
                            v114 = v116 = 130 + (msg.data[v8 + 20 + 16] >> 240);
                            if (v116 % 32 > 0) {
                                v114 = v117 = (v116 >> 5) + 1 << 5;
                                MEM[100 + (v116 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(230, v8 + 20 + 16 + 2, msg.data[v8 + 20 + 16] >> 240);
                        }
                        v118 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x4ecV0x117 + 4], MEM[96:96]).gas(msg.gas);
                        require(v118, Error(32, 8, 'sav7:030'));
                        0x29b5(msg.data[v8] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                        v3 = (msg.data[v8 + 20 + 16] >> 240) + (v8 + 20 + 16 + 2 - v8) + v8;
                    } else if (42 == v7) {
                        v9 = v119 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v8 + 20 + 20] >> 128);
                        0x2a05(msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 128, 0);
                        v3 = 56 + v8;
                    } else if (43 == v7) {
                        v9 = v120 = 1;
                        if (0x286f580d == msg.data[v8 + 4] >> 224) {
                            v121 = v122 = 0;
                        } else {
                            require(0x8eb1b65e == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:032'));
                            v121 = v123 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v124 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x4ecV0x117] >> 224], MEM[128:128 + v1f68_0x5V0x4ecV0x117]).value(v121).gas(msg.gas);
                        require(v124, Error(32, 8, 'sav7:033'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (44 == v7) {
                        v9 = v125 = 1;
                        0x2925(msg.data[v8] >> 248, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20] >> 248, msg.data[v8 + 1 + 20 + 1] >> 248, msg.data[v8 + 1 + 20 + 1 + 1] >> 128, msg.data[v8 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                        v3 = v8 + 1 + 20 + 1 + 1 + 16 + 16 - v8 + v8;
                    } else if (45 == v7) {
                        v9 = v126 = 1;
                        if (0x42e3d72c == msg.data[v8 + 20 + 4] >> 224) {
                            v127 = v128 = 0;
                            0x931(9, msg.data[v8] >> 96);
                        } else {
                            require(0xf957f1ca == msg.data[v8 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                            v127 = v129 = 0;
                        }
                        CALLDATACOPY(128, v8 + 20 + 4, msg.data[v8 + 20] >> 224);
                        v130 = (msg.data[v8] >> 96).call(MEM[128:128 + msg.data[v99bV0x4ecV0x117 + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x4ecV0x117]).value(v127).gas(msg.gas);
                        require(v130, Error(32, 8, 'sav7:037'));
                        v3 = v8 + 20 + 4 + (msg.data[v8 + 20] >> 224) - v8 + v8;
                    } else if (46 == v7) {
                        v9 = v131 = 1;
                        0x277e(msg.data[20 + v8] >> 96, msg.data[v8] >> 96, msg.data[40 + v8] >> 128);
                        MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = this;
                        MEM[164] = msg.data[40 + v8] >> 128;
                        MEM[196] = msg.data[56 + v8] >> 248;
                        MEM[228] = msg.data[57 + v8] >> 248;
                        MEM[260] = msg.data[58 + v8] >> 224;
                        MEM[292] = 192;
                        MEM[324] = msg.data[78 + v8] >> 240;
                        v132 = v133 = 224;
                        if (msg.data[78 + v8] >> 240 > 0) {
                            v132 = v134 = v133 + (msg.data[78 + v8] >> 240);
                            if (v134 % 32 > 0) {
                                v132 = v135 = (v134 >> 5) + 1 << 5;
                                MEM[132 + (v134 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(356, 80 + v8, msg.data[78 + v8] >> 240);
                        }
                        v136 = (msg.data[v8] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x4ecV0x117 + 4], MEM[128:192]).gas(msg.gas);
                        require(v136, Error(32, 8, 'sav7:034'));
                        require(MEM[160] >= msg.data[62 + v8] >> 128, Error(32, 8, 'sav7:035'));
                        v3 = (msg.data[78 + v8] >> 240) + (80 + v8 - v8) + v8;
                    } else if (47 == v7) {
                        v9 = v137 = 1;
                        v138 = v139 = msg.data[v8 + 20] >> 128;
                        0x3286(msg.data[v8] >> 96);
                        if (msg.data[v8] >> 96) {
                            0x277e(msg.data[v8] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v139);
                            v138 = v140 = 0;
                        }
                        0x31e2(v138);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else if (48 == v7) {
                        v9 = v141 = 1;
                        0x322b(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else if (49 == v7) {
                        v9 = v142 = 1;
                        if (0x48c89491 == msg.data[v8 + 4] >> 224) {
                            v143 = v144 = 0;
                            0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                        } else if (0xf3cd914c == msg.data[v8 + 4] >> 224) {
                            v143 = v145 = 0;
                        } else {
                            require(0x5a6bcfda == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:038'));
                            v143 = v146 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v147 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x4ecV0x117] >> 224], MEM[128:128 + v2080_0x5V0x4ecV0x117]).value(v143).gas(msg.gas);
                        require(v147, Error(32, 8, 'sav7:039'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (50 == v7) {
                        v9 = v148 = 1;
                        if (0xf83d08ba == msg.data[v8 + 4] >> 224) {
                            v149 = v150 = 0;
                            0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0xc11dedd == msg.data[v8 + 4] >> 224) {
                            v149 = v151 = 0;
                            0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0 == msg.data[v8 + 4] >> 224) {
                            v149 = v152 = 0;
                        } else if (0x55f48d01 == msg.data[v8 + 4] >> 224) {
                            v149 = v153 = 0;
                        } else {
                            require(0x645ec9b5 == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:042'));
                            v149 = v154 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v155 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x4ecV0x117] >> 224], MEM[128:128 + v2198_0x5V0x4ecV0x117]).value(v149).gas(msg.gas);
                        require(v155, Error(32, 8, 'sav7:03d'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (51 == v7) {
                        v9 = v156 = 1;
                        0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (52 == v7) {
                        v9 = v157 = 1;
                        0x32d5(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else {
                        require(53 == v7, Error(32, 8, 'sav7:008'));
                        v9 = v158 = 1;
                        v159 = v160 = msg.data[v8 + 20 + 20 + 1] >> 128;
                        if (msg.data[v8 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            0x29b5(msg.data[v8 + 20] >> 96, msg.data[v8] >> 96, v160);
                        }
                        MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = msg.data[v8 + 20 + 20] >> 248;
                        MEM[164] = v160;
                        MEM[196] = 1;
                        MEM[228] = this;
                        v159 = v161 = 0;
                        if ((msg.data[v8 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v161) {
                        }
                        v162 = (msg.data[v8] >> 96).call(MEM[128:260], MEM[128:160]).value(v159).gas(msg.gas);
                        require(v162, Error(32, 8, 'sav7:043'));
                        require(MEM[128] >= msg.data[v8 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                        v3 = v8 + 20 + 20 + 1 + 16 + 16 - v8 + v8;
                    }
                    v163 = v47.sellQuote(v43).gas(msg.gas);
                    require(v163, Error(32, 8, 'sav7:00a'));
                    v164 = v165 = MEM[96];
                    // Unknown jump to Block ['0x13a8B0x4ecB0x117', '0x1514B0x4ecB0x117']. Refer to 3-address code (TAC);
                    if (v40 > 0) {
                        require(!(v40 - v164), Error(32, 8, 'sav7:00b'));
                    }
                    v3 = v42 - v8 + v8;
                    if (v40 > 0) {
                        require(!(v40 - v164), Error(32, 8, 'sav7:00b'));
                    }
                    v3 = v42 - v8 + v8;
                    v166 = v47.sellBase(v43).gas(msg.gas);
                    require(v166, Error(32, 8, 'sav7:00a'));
                    v164 = v167 = MEM[96];
                    // Unknown jump to Block ['0x1423B0x4ecB0x117', '0x14c9B0x4ecB0x117']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x13aaB0x4ecB0x117. Refer to 3-address code (TAC);
                }
                v5 = v5 + v9;
            }
        }
    }
    if (varg5 >> 248 > 0) {
        if (varg0 <= 0) {
        }
        if (v168 > 0) {
            0x277e(v1, msg.sender, v168);
        }
    }
}

function 0x4ced80a3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    0x941(4, msg.sender);
    v0 = v1 = varg2 >> 96;
    v0 = v2 = varg3 >> 96;
    if (v1 <= v2) {
    }
    if (v3 <= v4) {
    }
    require(!(msg.sender - address(keccak256(0xff70fe4a44ea505cfa3a57b95cf2862d4fd5f0f6870000000000000000000000, keccak256(v0, v0, varg4 >> 232), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))));
    if (varg0 > 0) {
        0x277e(v0, msg.sender, varg0);
    }
    if (varg1 > 0) {
        0x277e(v0, msg.sender, varg1);
    }
}

function solidlyV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public payable { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    0x941(1, msg.sender);
    v0 = v1 = varg2 >> 96;
    v0 = v2 = varg4 >> 96;
    if (v1 <= v2) {
    }
    require(!(msg.sender - address(keccak256(0xff70fe4a44ea505cfa3a57b95cf2862d4fd5f0f6870000000000000000000000, keccak256(v0, v0, varg3 >> 232), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))));
    if (varg6 >> 240 > 0) {
        if (varg7 >> 248 > 0) {
            v3 = v4 = 179;
            v5 = v6 = 0;
            while (v5 < varg7 >> 248) {
                v7 = msg.data[v3] >> 248;
                v8 = v3 + 1;
                if (1 == v7) {
                    v9 = v10 = 1;
                    v11 = v8 + 20 + 1;
                    if (msg.data[v8 + 20] >> 248 > 0) {
                        v11 = v11 + 20 + 16;
                        0x277e(msg.data[v11] >> 96, msg.data[v8] >> 96, msg.data[v11 + 20] >> 128);
                    }
                    v12 = v11 + 1 + 16 + 1;
                    if (0 == msg.data[v11 + 1 + 16] >> 248) {
                        v13 = v14 = msg.data[v12] >> 96;
                        v12 = v12 + 20;
                    } else {
                        v13 = v15 = this;
                    }
                    if (0 == msg.data[v11] >> 248) {
                        0x28c3(msg.data[v8] >> 96, msg.data[v11 + 1] >> 128, 0, v13);
                    } else {
                        0x28c3(msg.data[v8] >> 96, 0, msg.data[v11 + 1] >> 128, v13);
                    }
                    v3 = v12 - v8 + v8;
                } else if (2 == v7) {
                    v9 = v16 = 1;
                    v17 = v8 + 20 + 3 + 1;
                    if (0 == msg.data[v8 + 20 + 3] >> 248 & 0x10) {
                        v18 = v19 = 0x1000276a4;
                        if (!(msg.data[v8 + 20 + 3] >> 248 & 0x1)) {
                            v18 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                    } else {
                        v18 = v20 = msg.data[v17] >> 96;
                        v17 = v17 + 20;
                    }
                    v21 = v17 + 20 + 20 + 16 + 16 + 1;
                    v22 = this;
                    if (0 == msg.data[v17 + 20 + 20 + 16 + 16] >> 248) {
                        v22 = v23 = msg.data[v21] >> 96;
                        v21 = v21 + 20;
                    } else {
                        0x931(1, msg.data[v8] >> 96);
                    }
                    MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[100] = v22;
                    MEM[132] = msg.data[v8 + 20 + 3] >> 248 & 0x1;
                    MEM[164] = msg.data[v17 + 20 + 20] >> 128;
                    MEM[196] = v18;
                    MEM[228] = 160;
                    MEM[260] = (msg.data[1 + v21] >> 240) + 46;
                    MEM[324] = 0;
                    MEM[292] = msg.data[v17] >> 96 << 96;
                    MEM[312] = msg.data[v8 + 20] >> 232 << 232;
                    MEM[315] = msg.data[v17 + 20] >> 96 << 96;
                    MEM[335] = msg.data[v21] >> 248 << 248;
                    MEM[336] = msg.data[1 + v21] >> 240 << 240;
                    v24 = uint8.max + 1;
                    if (msg.data[1 + v21] >> 240 > 0) {
                        v24 = v25 = 238 + (msg.data[1 + v21] >> 240);
                        if (v25 % 32 > 0) {
                            v24 = v26 = (v25 >> 5) + 1 << 5;
                            MEM[100 + (v25 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(338, 3 + v21, msg.data[1 + v21] >> 240);
                    }
                    v27 = (msg.data[v8] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x3afV0x135 + 4], MEM[96:160]).gas(msg.gas);
                    require(v27, Error(32, 8, 'sav7:004'));
                    v28 = v29 = 0 - MEM[128];
                    if (!(msg.data[v8 + 20 + 3] >> 248 & 0x1)) {
                        v28 = v30 = 0 - MEM[96];
                    }
                    if (msg.data[v17 + 20 + 20 + 16] >> 128 > 0) {
                        require(msg.data[v17 + 20 + 20 + 16] >> 128 <= v28, Error(32, 8, 'sav7:005'));
                    }
                    v3 = (msg.data[1 + v21] >> 240) + (3 + v21 - v8) + v8;
                } else if (3 == v7) {
                    v9 = v31 = 1;
                    0x29b5(msg.data[v8 + 1 + 20] >> 96, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20 + 1 + 1] >> 128);
                    0x2925(msg.data[v8] >> 248, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 248, msg.data[v8 + 1 + 20 + 20 + 1] >> 248, msg.data[v8 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v8 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                    v3 = v8 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v8 + v8;
                } else if (4 == v7) {
                    v9 = v32 = 1;
                    0x29b5(msg.data[v8 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v8 + 32 + 20 + 20] >> 128);
                    0x2a67(msg.data[v8], 0, msg.data[v8 + 32] >> 96, msg.data[v8 + 32 + 20] >> 96, msg.data[v8 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v8 + 32 + 20 + 20 + 16] >> 128);
                    v3 = v8 + 32 + 20 + 20 + 16 + 16 - v8 + v8;
                } else {
                    if (5 == v7) {
                        v33 = v34 = 3644;
                        v9 = v35 = 1;
                        v36 = v8 + 1 + 1;
                        v37 = v38 = 0;
                        if (msg.data[v8 + 1] >> 248 > v38) {
                            v37 = v39 = msg.data[v36] >> 128;
                            v36 = v36 + 16;
                        }
                        v40 = v41 = msg.data[v36] >> 128;
                        v42 = v36 + 16 + 1;
                        if (0 == msg.data[v36 + 16] >> 248) {
                            v43 = v44 = msg.data[v42] >> 96;
                            v42 = v42 + 20;
                        } else {
                            v43 = v45 = this;
                        }
                        if (0 == msg.data[v8] >> 248) {
                            v46 = 5155;
                            if (v37 > 0) {
                                0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v37);
                            }
                            v47 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        } else {
                            v48 = 5032;
                            if (v37 > 0) {
                                0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v37);
                            }
                            v47 = v49 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        }
                    } else if (6 == v7) {
                        v9 = v50 = 1;
                        if (0 == msg.data[v8] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v8 + 1] >> 128);
                            0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v8 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v8 + 1] >> 128);
                            0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v8 + 1] >> 128);
                        }
                        v3 = v8 + 1 + 16 - v8 + v8;
                    } else if (7 == v7) {
                        v9 = v51 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            v52 = block.coinbase.call().value(msg.data[v8] >> 128).gas(msg.gas);
                            require(v52, Error(32, 8, 'sav7:040'));
                        }
                        v3 = 16 + v8;
                    } else if (8 == v7) {
                        v9 = v53 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                            MEM[100] = msg.data[v8] >> 128;
                            v54 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                            require(v54, Error(32, 8, 'sav7:00c'));
                        }
                        v3 = 16 + v8;
                    } else if (9 == v7) {
                        v9 = v55 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            v56 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v8] >> 128).gas(msg.gas);
                            require(v56, Error(32, 8, 'sav7:03f'));
                        }
                        v3 = 16 + v8;
                    } else if (10 == v7) {
                        v9 = v57 = 1;
                        0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                        v58 = v8 + 1;
                        require(msg.data[v8] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                        MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 128;
                        MEM[228] = msg.data[v8] >> 248;
                        v59 = v60 = 260;
                        MEM[164] = 128 + (msg.data[v8] >> 248 << 5) + 32;
                        MEM[100 + (128 + (msg.data[v8] >> 248 << 5) + 32)] = msg.data[v8] >> 248;
                        v61 = v62 = 100 + (128 + (msg.data[v8] >> 248 << 5) + 32) + 32;
                        MEM[196] = 128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32;
                        v63 = v64 = 0;
                        while (v63 < msg.data[v8] >> 248) {
                            v58 = v58 + 20 + 16;
                            MEM[v59] = msg.data[v58] >> 96;
                            v59 = v59 + 32;
                            MEM[v61] = msg.data[v58 + 20] >> 128;
                            v61 = v61 + 32;
                            v63 = v63 + 1;
                        }
                        MEM[100 + (128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32)] = msg.data[v58] >> 240;
                        v65 = 128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32 + 32;
                        if (msg.data[v58] >> 240 > 0) {
                            v65 = v66 = v65 + (msg.data[v58] >> 240);
                            if (v66 % 32 > 0) {
                                v65 = v67 = (v66 >> 5) + 1 << 5;
                                MEM[100 + (v66 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(100 + v65, v58 + 2, msg.data[v58] >> 240);
                        }
                        v68 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x3afV0x135 + 4], MEM[96:96]).gas(msg.gas);
                        require(v68, Error(32, 8, 'sav7:00e'));
                        v3 = (msg.data[v58] >> 240) + (v58 + 2 - v8) + v8;
                    } else if (11 == v7) {
                        v9 = v69 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8 + 20] >> 128);
                        0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this);
                        v3 = 36 + v8;
                    } else if (12 == v7) {
                        v9 = v70 = 1;
                        v71 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this).gas(msg.gas);
                        require(v71, Error(32, 8, 'sav7:010'));
                        v3 = 36 + v8;
                    } else if (13 == v7) {
                        v9 = v72 = 1;
                        v73 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v73, Error(32, 8, 'sav7:011'));
                        v3 = 37 + v8;
                    } else if (14 == v7) {
                        v9 = v74 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8 + 20] >> 128);
                        0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, this);
                        v3 = 37 + v8;
                    } else if (15 == v7) {
                        v9 = v75 = 1;
                        if (1 == msg.data[v8 + 20 + 16] >> 248) {
                            v76 = 0x35b5e5ad9019092c665357240f594e;
                        } else {
                            require(2 == msg.data[v8 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                            v76 = v77 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                        }
                        if (msg.data[v8 + 20] >> 128 > 0) {
                            0x277e(msg.data[v8] >> 96, v76, msg.data[v8 + 20] >> 128);
                        }
                        v3 = 37 + v8;
                    } else if (16 == v7) {
                        v9 = v78 = 1;
                        0x29b5(msg.data[v8 + 1 + 20] >> 96, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 128);
                        if (0 == msg.data[v8] >> 248) {
                            0x2e0d(msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20 + 16] >> 128, msg.data[v8 + 1 + 20 + 20] >> 128);
                        } else {
                            0x2db3(msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 128, msg.data[v8 + 1 + 20 + 20 + 16] >> 128);
                        }
                        v3 = v8 + 1 + 20 + 20 + 16 + 16 - v8 + v8;
                    } else if (17 == v7) {
                        v9 = v79 = 1;
                        0x29b5(msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 128);
                        v3 = 56 + v8;
                    } else if (22 == v7) {
                        v9 = v80 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8 + 20] >> 128);
                        0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this);
                        v3 = 36 + v8;
                    } else if (23 == v7) {
                        v9 = v81 = 1;
                        v82 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this).gas(msg.gas);
                        require(v82, Error(32, 8, 'sav7:010'));
                        v3 = 36 + v8;
                    } else if (24 == v7) {
                        v9 = v83 = 1;
                        v84 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v84, Error(32, 8, 'sav7:011'));
                        v3 = 37 + v8;
                    } else if (25 == v7) {
                        v9 = v85 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8 + 20] >> 128);
                        0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, this);
                        v3 = 37 + v8;
                    } else if (31 == v7) {
                        v9 = v86 = 1;
                        0x29b5(msg.data[v8] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8 + 20 + 20 + 3 + 3 + 3] >> 128);
                        0x29b5(msg.data[v8 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                        0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 232, msg.data[v8 + 20 + 20 + 3] >> 232, msg.data[v8 + 20 + 20 + 3 + 3] >> 232, msg.data[v8 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                        v3 = v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v8 + v8;
                    } else if (32 == v7) {
                        v9 = v87 = 1;
                        0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 192, msg.data[v8 + 8] >> 128, 0, 0, msg.data[v8 + 8 + 16] >> 192);
                        0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 192, this, uint128.max, uint128.max);
                        v3 = v8 + 8 + 16 + 8 - v8 + v8;
                    } else if (33 == v7) {
                        v9 = v88 = 1;
                        0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v8] >> 128);
                        0x30f5(msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (34 == v7) {
                        v9 = v89 = 1;
                        0x3144(msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (35 == v7) {
                        v9 = v90 = 1;
                        0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                        MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                        MEM[164] = msg.data[v8] >> 128;
                        MEM[196] = 128;
                        MEM[228] = (msg.data[v8 + 16] >> 240) + 2;
                        MEM[260] = msg.data[v8 + 16] >> 240 << 240;
                        v91 = v92 = 192;
                        if (msg.data[v8 + 16] >> 240 > 0) {
                            v91 = v93 = 162 + (msg.data[v8 + 16] >> 240);
                            if (v93 % 32 > 0) {
                                v91 = v94 = (v93 >> 5) + 1 << 5;
                                MEM[100 + (v93 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(262, v8 + 16 + 2, msg.data[v8 + 16] >> 240);
                        }
                        v95 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x3afV0x135 + 4], MEM[96:96]).gas(msg.gas);
                        require(v95, Error(32, 8, 'sav7:02b'));
                        v3 = (msg.data[v8 + 16] >> 240) + (v8 + 16 + 2 - v8) + v8;
                    } else if (36 == v7) {
                        v9 = v96 = 1;
                        0x3193(msg.data[v8] >> 248);
                        v3 = v8 + 1 - v8 + v8;
                    } else if (37 == v7) {
                        v9 = v97 = 1;
                        if (0 == msg.data[v8] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v8 + 1] >> 128);
                            0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v8 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v8 + 1] >> 128);
                            0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v8 + 1] >> 128);
                        }
                        v3 = v8 + 1 + 16 - v8 + v8;
                    } else if (38 == v7) {
                        v33 = v98 = 3164;
                        v9 = v99 = 1;
                        v47 = v100 = msg.data[v8] >> 96;
                        v101 = v8 + 20 + 1 + 1;
                        v102 = v103 = 0;
                        v104 = v105 = 0;
                        if (msg.data[v8 + 20 + 1] >> 248 > v105) {
                            v102 = v106 = msg.data[v101] >> 128;
                            v104 = v107 = msg.data[v101 + 16] >> 96;
                            v101 = v101 + 16 + 20;
                        }
                        v40 = msg.data[v101] >> 128;
                        v42 = v101 + 16 + 1;
                        if (0 == msg.data[v101 + 16] >> 248) {
                            v43 = msg.data[v42] >> 96;
                            v42 = v42 + 20;
                        } else {
                            v43 = v108 = this;
                        }
                        if (v102 > 0) {
                            0x277e(v104, v100, v102);
                        }
                        if (0 == msg.data[v8 + 20] >> 248) {
                            v48 = v109 = 5396;
                            // Unknown jump to Block 0x2d65B0x3afB0x135. Refer to 3-address code (TAC);
                        } else {
                            v46 = v110 = 5321;
                        }
                    } else if (39 == v7) {
                        v9 = v111 = 1;
                        0x931(4, msg.data[v8] >> 96);
                        0x2faf(msg.data[v8] >> 96, this, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3] >> 128, msg.data[v8 + 20 + 3 + 3 + 16] >> 96, msg.data[v8 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v8 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                        v3 = v8 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v8 + v8;
                    } else if (40 == v7) {
                        v9 = v112 = 1;
                        0x303f(msg.data[v8] >> 96, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3] >> 128);
                        0x3095(msg.data[v8] >> 96, this, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3 + 16] >> 128, msg.data[v8 + 20 + 3 + 3 + 16 + 16] >> 128);
                        v3 = v8 + 20 + 3 + 3 + 16 + 16 + 16 - v8 + v8;
                    } else if (41 == v7) {
                        v9 = v113 = 1;
                        0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                        0x29b5(msg.data[v8] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v8 + 20] >> 128);
                        MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v8] >> 96;
                        MEM[132] = msg.data[v8 + 20] >> 128;
                        MEM[164] = 96;
                        MEM[196] = (msg.data[v8 + 20 + 16] >> 240) + 2;
                        MEM[228] = msg.data[v8 + 20 + 16] >> 240 << 240;
                        v114 = v115 = 160;
                        if (msg.data[v8 + 20 + 16] >> 240 > 0) {
                            v114 = v116 = 130 + (msg.data[v8 + 20 + 16] >> 240);
                            if (v116 % 32 > 0) {
                                v114 = v117 = (v116 >> 5) + 1 << 5;
                                MEM[100 + (v116 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(230, v8 + 20 + 16 + 2, msg.data[v8 + 20 + 16] >> 240);
                        }
                        v118 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x3afV0x135 + 4], MEM[96:96]).gas(msg.gas);
                        require(v118, Error(32, 8, 'sav7:030'));
                        0x29b5(msg.data[v8] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                        v3 = (msg.data[v8 + 20 + 16] >> 240) + (v8 + 20 + 16 + 2 - v8) + v8;
                    } else if (42 == v7) {
                        v9 = v119 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v8 + 20 + 20] >> 128);
                        0x2a05(msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 128, 0);
                        v3 = 56 + v8;
                    } else if (43 == v7) {
                        v9 = v120 = 1;
                        if (0x286f580d == msg.data[v8 + 4] >> 224) {
                            v121 = v122 = 0;
                        } else {
                            require(0x8eb1b65e == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:032'));
                            v121 = v123 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v124 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x3afV0x135] >> 224], MEM[128:128 + v1f68_0x5V0x3afV0x135]).value(v121).gas(msg.gas);
                        require(v124, Error(32, 8, 'sav7:033'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (44 == v7) {
                        v9 = v125 = 1;
                        0x2925(msg.data[v8] >> 248, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20] >> 248, msg.data[v8 + 1 + 20 + 1] >> 248, msg.data[v8 + 1 + 20 + 1 + 1] >> 128, msg.data[v8 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                        v3 = v8 + 1 + 20 + 1 + 1 + 16 + 16 - v8 + v8;
                    } else if (45 == v7) {
                        v9 = v126 = 1;
                        if (0x42e3d72c == msg.data[v8 + 20 + 4] >> 224) {
                            v127 = v128 = 0;
                            0x931(9, msg.data[v8] >> 96);
                        } else {
                            require(0xf957f1ca == msg.data[v8 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                            v127 = v129 = 0;
                        }
                        CALLDATACOPY(128, v8 + 20 + 4, msg.data[v8 + 20] >> 224);
                        v130 = (msg.data[v8] >> 96).call(MEM[128:128 + msg.data[v99bV0x3afV0x135 + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x3afV0x135]).value(v127).gas(msg.gas);
                        require(v130, Error(32, 8, 'sav7:037'));
                        v3 = v8 + 20 + 4 + (msg.data[v8 + 20] >> 224) - v8 + v8;
                    } else if (46 == v7) {
                        v9 = v131 = 1;
                        0x277e(msg.data[20 + v8] >> 96, msg.data[v8] >> 96, msg.data[40 + v8] >> 128);
                        MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = this;
                        MEM[164] = msg.data[40 + v8] >> 128;
                        MEM[196] = msg.data[56 + v8] >> 248;
                        MEM[228] = msg.data[57 + v8] >> 248;
                        MEM[260] = msg.data[58 + v8] >> 224;
                        MEM[292] = 192;
                        MEM[324] = msg.data[78 + v8] >> 240;
                        v132 = v133 = 224;
                        if (msg.data[78 + v8] >> 240 > 0) {
                            v132 = v134 = v133 + (msg.data[78 + v8] >> 240);
                            if (v134 % 32 > 0) {
                                v132 = v135 = (v134 >> 5) + 1 << 5;
                                MEM[132 + (v134 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(356, 80 + v8, msg.data[78 + v8] >> 240);
                        }
                        v136 = (msg.data[v8] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x3afV0x135 + 4], MEM[128:192]).gas(msg.gas);
                        require(v136, Error(32, 8, 'sav7:034'));
                        require(MEM[160] >= msg.data[62 + v8] >> 128, Error(32, 8, 'sav7:035'));
                        v3 = (msg.data[78 + v8] >> 240) + (80 + v8 - v8) + v8;
                    } else if (47 == v7) {
                        v9 = v137 = 1;
                        v138 = v139 = msg.data[v8 + 20] >> 128;
                        0x3286(msg.data[v8] >> 96);
                        if (msg.data[v8] >> 96) {
                            0x277e(msg.data[v8] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v139);
                            v138 = v140 = 0;
                        }
                        0x31e2(v138);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else if (48 == v7) {
                        v9 = v141 = 1;
                        0x322b(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else if (49 == v7) {
                        v9 = v142 = 1;
                        if (0x48c89491 == msg.data[v8 + 4] >> 224) {
                            v143 = v144 = 0;
                            0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                        } else if (0xf3cd914c == msg.data[v8 + 4] >> 224) {
                            v143 = v145 = 0;
                        } else {
                            require(0x5a6bcfda == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:038'));
                            v143 = v146 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v147 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x3afV0x135] >> 224], MEM[128:128 + v2080_0x5V0x3afV0x135]).value(v143).gas(msg.gas);
                        require(v147, Error(32, 8, 'sav7:039'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (50 == v7) {
                        v9 = v148 = 1;
                        if (0xf83d08ba == msg.data[v8 + 4] >> 224) {
                            v149 = v150 = 0;
                            0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0xc11dedd == msg.data[v8 + 4] >> 224) {
                            v149 = v151 = 0;
                            0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0 == msg.data[v8 + 4] >> 224) {
                            v149 = v152 = 0;
                        } else if (0x55f48d01 == msg.data[v8 + 4] >> 224) {
                            v149 = v153 = 0;
                        } else {
                            require(0x645ec9b5 == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:042'));
                            v149 = v154 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v155 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x3afV0x135] >> 224], MEM[128:128 + v2198_0x5V0x3afV0x135]).value(v149).gas(msg.gas);
                        require(v155, Error(32, 8, 'sav7:03d'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (51 == v7) {
                        v9 = v156 = 1;
                        0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (52 == v7) {
                        v9 = v157 = 1;
                        0x32d5(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else {
                        require(53 == v7, Error(32, 8, 'sav7:008'));
                        v9 = v158 = 1;
                        v159 = v160 = msg.data[v8 + 20 + 20 + 1] >> 128;
                        if (msg.data[v8 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            0x29b5(msg.data[v8 + 20] >> 96, msg.data[v8] >> 96, v160);
                        }
                        MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = msg.data[v8 + 20 + 20] >> 248;
                        MEM[164] = v160;
                        MEM[196] = 1;
                        MEM[228] = this;
                        v159 = v161 = 0;
                        if ((msg.data[v8 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v161) {
                        }
                        v162 = (msg.data[v8] >> 96).call(MEM[128:260], MEM[128:160]).value(v159).gas(msg.gas);
                        require(v162, Error(32, 8, 'sav7:043'));
                        require(MEM[128] >= msg.data[v8 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                        v3 = v8 + 20 + 20 + 1 + 16 + 16 - v8 + v8;
                    }
                    v163 = v47.sellQuote(v43).gas(msg.gas);
                    require(v163, Error(32, 8, 'sav7:00a'));
                    v164 = v165 = MEM[96];
                    // Unknown jump to Block ['0x13a8B0x3afB0x135', '0x1514B0x3afB0x135']. Refer to 3-address code (TAC);
                    if (v40 > 0) {
                        require(!(v40 - v164), Error(32, 8, 'sav7:00b'));
                    }
                    v3 = v42 - v8 + v8;
                    if (v40 > 0) {
                        require(!(v40 - v164), Error(32, 8, 'sav7:00b'));
                    }
                    v3 = v42 - v8 + v8;
                    v166 = v47.sellBase(v43).gas(msg.gas);
                    require(v166, Error(32, 8, 'sav7:00a'));
                    v164 = v167 = MEM[96];
                    // Unknown jump to Block ['0x1423B0x3afB0x135', '0x14c9B0x3afB0x135']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x13aaB0x3afB0x135. Refer to 3-address code (TAC);
                }
                v5 = v5 + v9;
            }
        }
    }
    if (varg5 >> 248 > 0) {
        if (varg0 <= 0) {
        }
        if (v168 > 0) {
            0x277e(v1, msg.sender, v168);
        }
    }
}

function onFlashLoan(address initiator, address token, uint256 amount, uint256 fee, bytes data) public payable { 
    0x23e4();
    0x941(5, msg.sender);
    require(!(this - initiator), Error(32, 8, 'sav7:000'));
    require(!(0x6b175474e89094c44da98b954eedeac495271d0f - token), Error(32, 8, 'sav7:000'));
    if (fee >> 240 > 0) {
        if (data >> 248 > 0) {
            v0 = v1 = 199;
            v2 = v3 = 0;
            while (v2 < data >> 248) {
                v4 = msg.data[v0] >> 248;
                v5 = v0 + 1;
                if (1 == v4) {
                    v6 = v7 = 1;
                    v8 = v5 + 20 + 1;
                    if (msg.data[v5 + 20] >> 248 > 0) {
                        v8 = v8 + 20 + 16;
                        0x277e(msg.data[v8] >> 96, msg.data[v5] >> 96, msg.data[v8 + 20] >> 128);
                    }
                    v9 = v8 + 1 + 16 + 1;
                    if (0 == msg.data[v8 + 1 + 16] >> 248) {
                        v10 = v11 = msg.data[v9] >> 96;
                        v9 = v9 + 20;
                    } else {
                        v10 = v12 = this;
                    }
                    if (0 == msg.data[v8] >> 248) {
                        0x28c3(msg.data[v5] >> 96, msg.data[v8 + 1] >> 128, 0, v10);
                    } else {
                        0x28c3(msg.data[v5] >> 96, 0, msg.data[v8 + 1] >> 128, v10);
                    }
                    v0 = v9 - v5 + v5;
                } else if (2 == v4) {
                    v6 = v13 = 1;
                    v14 = v5 + 20 + 3 + 1;
                    if (0 == msg.data[v5 + 20 + 3] >> 248 & 0x10) {
                        v15 = v16 = 0x1000276a4;
                        if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                            v15 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                    } else {
                        v15 = v17 = msg.data[v14] >> 96;
                        v14 = v14 + 20;
                    }
                    v18 = v14 + 20 + 20 + 16 + 16 + 1;
                    v19 = this;
                    if (0 == msg.data[v14 + 20 + 20 + 16 + 16] >> 248) {
                        v19 = v20 = msg.data[v18] >> 96;
                        v18 = v18 + 20;
                    } else {
                        0x931(1, msg.data[v5] >> 96);
                    }
                    MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[100] = v19;
                    MEM[132] = msg.data[v5 + 20 + 3] >> 248 & 0x1;
                    MEM[164] = msg.data[v14 + 20 + 20] >> 128;
                    MEM[196] = v15;
                    MEM[228] = 160;
                    MEM[260] = (msg.data[1 + v18] >> 240) + 46;
                    MEM[324] = 0;
                    MEM[292] = msg.data[v14] >> 96 << 96;
                    MEM[312] = msg.data[v5 + 20] >> 232 << 232;
                    MEM[315] = msg.data[v14 + 20] >> 96 << 96;
                    MEM[335] = msg.data[v18] >> 248 << 248;
                    MEM[336] = msg.data[1 + v18] >> 240 << 240;
                    v21 = uint8.max + 1;
                    if (msg.data[1 + v18] >> 240 > 0) {
                        v21 = v22 = 238 + (msg.data[1 + v18] >> 240);
                        if (v22 % 32 > 0) {
                            v21 = v23 = (v22 >> 5) + 1 << 5;
                            MEM[100 + (v22 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(338, 3 + v18, msg.data[1 + v18] >> 240);
                    }
                    v24 = (msg.data[v5] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x744 + 4], MEM[96:160]).gas(msg.gas);
                    require(v24, Error(32, 8, 'sav7:004'));
                    v25 = v26 = 0 - MEM[128];
                    if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                        v25 = v27 = 0 - MEM[96];
                    }
                    if (msg.data[v14 + 20 + 20 + 16] >> 128 > 0) {
                        require(msg.data[v14 + 20 + 20 + 16] >> 128 <= v25, Error(32, 8, 'sav7:005'));
                    }
                    v0 = (msg.data[1 + v18] >> 240) + (3 + v18 - v5) + v5;
                } else if (3 == v4) {
                    v6 = v28 = 1;
                    0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128);
                    0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 248, msg.data[v5 + 1 + 20 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                    v0 = v5 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                } else if (4 == v4) {
                    v6 = v29 = 1;
                    0x29b5(msg.data[v5 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v5 + 32 + 20 + 20] >> 128);
                    0x2a67(msg.data[v5], 0, msg.data[v5 + 32] >> 96, msg.data[v5 + 32 + 20] >> 96, msg.data[v5 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v5 + 32 + 20 + 20 + 16] >> 128);
                    v0 = v5 + 32 + 20 + 20 + 16 + 16 - v5 + v5;
                } else {
                    if (5 == v4) {
                        v30 = v31 = 3644;
                        v6 = v32 = 1;
                        v33 = v5 + 1 + 1;
                        v34 = v35 = 0;
                        if (msg.data[v5 + 1] >> 248 > v35) {
                            v34 = v36 = msg.data[v33] >> 128;
                            v33 = v33 + 16;
                        }
                        v37 = v38 = msg.data[v33] >> 128;
                        v39 = v33 + 16 + 1;
                        if (0 == msg.data[v33 + 16] >> 248) {
                            v40 = v41 = msg.data[v39] >> 96;
                            v39 = v39 + 20;
                        } else {
                            v40 = v42 = this;
                        }
                        if (0 == msg.data[v5] >> 248) {
                            v43 = 5155;
                            if (v34 > 0) {
                                0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                            }
                            v44 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        } else {
                            v45 = 5032;
                            if (v34 > 0) {
                                0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                            }
                            v44 = v46 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        }
                    } else if (6 == v4) {
                        v6 = v47 = 1;
                        if (0 == msg.data[v5] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v5 + 1] >> 128);
                            0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v5 + 1] >> 128);
                            0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v5 + 1] >> 128);
                        }
                        v0 = v5 + 1 + 16 - v5 + v5;
                    } else if (7 == v4) {
                        v6 = v48 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            v49 = block.coinbase.call().value(msg.data[v5] >> 128).gas(msg.gas);
                            require(v49, Error(32, 8, 'sav7:040'));
                        }
                        v0 = 16 + v5;
                    } else if (8 == v4) {
                        v6 = v50 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                            MEM[100] = msg.data[v5] >> 128;
                            v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                            require(v51, Error(32, 8, 'sav7:00c'));
                        }
                        v0 = 16 + v5;
                    } else if (9 == v4) {
                        v6 = v52 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            v53 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v5] >> 128).gas(msg.gas);
                            require(v53, Error(32, 8, 'sav7:03f'));
                        }
                        v0 = 16 + v5;
                    } else if (10 == v4) {
                        v6 = v54 = 1;
                        0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                        v55 = v5 + 1;
                        require(msg.data[v5] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                        MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 128;
                        MEM[228] = msg.data[v5] >> 248;
                        v56 = v57 = 260;
                        MEM[164] = 128 + (msg.data[v5] >> 248 << 5) + 32;
                        MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v5] >> 248;
                        v58 = v59 = 100 + (128 + (msg.data[v5] >> 248 << 5) + 32) + 32;
                        MEM[196] = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32;
                        v60 = v61 = 0;
                        while (v60 < msg.data[v5] >> 248) {
                            v55 = v55 + 20 + 16;
                            MEM[v56] = msg.data[v55] >> 96;
                            v56 = v56 + 32;
                            MEM[v58] = msg.data[v55 + 20] >> 128;
                            v58 = v58 + 32;
                            v60 = v60 + 1;
                        }
                        MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v55] >> 240;
                        v62 = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32 + 32;
                        if (msg.data[v55] >> 240 > 0) {
                            v62 = v63 = v62 + (msg.data[v55] >> 240);
                            if (v63 % 32 > 0) {
                                v62 = v64 = (v63 >> 5) + 1 << 5;
                                MEM[100 + (v63 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(100 + v62, v55 + 2, msg.data[v55] >> 240);
                        }
                        v65 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x744 + 4], MEM[96:96]).gas(msg.gas);
                        require(v65, Error(32, 8, 'sav7:00e'));
                        v0 = (msg.data[v55] >> 240) + (v55 + 2 - v5) + v5;
                    } else if (11 == v4) {
                        v6 = v66 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                        0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                        v0 = 36 + v5;
                    } else if (12 == v4) {
                        v6 = v67 = 1;
                        v68 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                        require(v68, Error(32, 8, 'sav7:010'));
                        v0 = 36 + v5;
                    } else if (13 == v4) {
                        v6 = v69 = 1;
                        v70 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v70, Error(32, 8, 'sav7:011'));
                        v0 = 37 + v5;
                    } else if (14 == v4) {
                        v6 = v71 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                        0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                        v0 = 37 + v5;
                    } else if (15 == v4) {
                        v6 = v72 = 1;
                        if (1 == msg.data[v5 + 20 + 16] >> 248) {
                            v73 = 0x35b5e5ad9019092c665357240f594e;
                        } else {
                            require(2 == msg.data[v5 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                            v73 = v74 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                        }
                        if (msg.data[v5 + 20] >> 128 > 0) {
                            0x277e(msg.data[v5] >> 96, v73, msg.data[v5 + 20] >> 128);
                        }
                        v0 = 37 + v5;
                    } else if (16 == v4) {
                        v6 = v75 = 1;
                        0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128);
                        if (0 == msg.data[v5] >> 248) {
                            0x2e0d(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 16] >> 128, msg.data[v5 + 1 + 20 + 20] >> 128);
                        } else {
                            0x2db3(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128, msg.data[v5 + 1 + 20 + 20 + 16] >> 128);
                        }
                        v0 = v5 + 1 + 20 + 20 + 16 + 16 - v5 + v5;
                    } else if (17 == v4) {
                        v6 = v76 = 1;
                        0x29b5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128);
                        v0 = 56 + v5;
                    } else if (22 == v4) {
                        v6 = v77 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                        0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                        v0 = 36 + v5;
                    } else if (23 == v4) {
                        v6 = v78 = 1;
                        v79 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                        require(v79, Error(32, 8, 'sav7:010'));
                        v0 = 36 + v5;
                    } else if (24 == v4) {
                        v6 = v80 = 1;
                        v81 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v81, Error(32, 8, 'sav7:011'));
                        v0 = 37 + v5;
                    } else if (25 == v4) {
                        v6 = v82 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                        0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                        v0 = 37 + v5;
                    } else if (31 == v4) {
                        v6 = v83 = 1;
                        0x29b5(msg.data[v5] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128);
                        0x29b5(msg.data[v5 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                        0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 232, msg.data[v5 + 20 + 20 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                        v0 = v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v5 + v5;
                    } else if (32 == v4) {
                        v6 = v84 = 1;
                        0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, msg.data[v5 + 8] >> 128, 0, 0, msg.data[v5 + 8 + 16] >> 192);
                        0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, this, uint128.max, uint128.max);
                        v0 = v5 + 8 + 16 + 8 - v5 + v5;
                    } else if (33 == v4) {
                        v6 = v85 = 1;
                        0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v5] >> 128);
                        0x30f5(msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (34 == v4) {
                        v6 = v86 = 1;
                        0x3144(msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (35 == v4) {
                        v6 = v87 = 1;
                        0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                        MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                        MEM[164] = msg.data[v5] >> 128;
                        MEM[196] = 128;
                        MEM[228] = (msg.data[v5 + 16] >> 240) + 2;
                        MEM[260] = msg.data[v5 + 16] >> 240 << 240;
                        v88 = v89 = 192;
                        if (msg.data[v5 + 16] >> 240 > 0) {
                            v88 = v90 = 162 + (msg.data[v5 + 16] >> 240);
                            if (v90 % 32 > 0) {
                                v88 = v91 = (v90 >> 5) + 1 << 5;
                                MEM[100 + (v90 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(262, v5 + 16 + 2, msg.data[v5 + 16] >> 240);
                        }
                        v92 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x744 + 4], MEM[96:96]).gas(msg.gas);
                        require(v92, Error(32, 8, 'sav7:02b'));
                        v0 = (msg.data[v5 + 16] >> 240) + (v5 + 16 + 2 - v5) + v5;
                    } else if (36 == v4) {
                        v6 = v93 = 1;
                        0x3193(msg.data[v5] >> 248);
                        v0 = v5 + 1 - v5 + v5;
                    } else if (37 == v4) {
                        v6 = v94 = 1;
                        if (0 == msg.data[v5] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                            0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                            0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v5 + 1] >> 128);
                        }
                        v0 = v5 + 1 + 16 - v5 + v5;
                    } else if (38 == v4) {
                        v30 = v95 = 3164;
                        v6 = v96 = 1;
                        v44 = v97 = msg.data[v5] >> 96;
                        v98 = v5 + 20 + 1 + 1;
                        v99 = v100 = 0;
                        v101 = v102 = 0;
                        if (msg.data[v5 + 20 + 1] >> 248 > v102) {
                            v99 = v103 = msg.data[v98] >> 128;
                            v101 = v104 = msg.data[v98 + 16] >> 96;
                            v98 = v98 + 16 + 20;
                        }
                        v37 = msg.data[v98] >> 128;
                        v39 = v98 + 16 + 1;
                        if (0 == msg.data[v98 + 16] >> 248) {
                            v40 = msg.data[v39] >> 96;
                            v39 = v39 + 20;
                        } else {
                            v40 = v105 = this;
                        }
                        if (v99 > 0) {
                            0x277e(v101, v97, v99);
                        }
                        if (0 == msg.data[v5 + 20] >> 248) {
                            v45 = v106 = 5396;
                            // Unknown jump to Block 0x2d65B0x744. Refer to 3-address code (TAC);
                        } else {
                            v43 = v107 = 5321;
                        }
                    } else if (39 == v4) {
                        v6 = v108 = 1;
                        0x931(4, msg.data[v5] >> 96);
                        0x2faf(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128, msg.data[v5 + 20 + 3 + 3 + 16] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                        v0 = v5 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v5 + v5;
                    } else if (40 == v4) {
                        v6 = v109 = 1;
                        0x303f(msg.data[v5] >> 96, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128);
                        0x3095(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 3 + 3 + 16 + 16] >> 128);
                        v0 = v5 + 20 + 3 + 3 + 16 + 16 + 16 - v5 + v5;
                    } else if (41 == v4) {
                        v6 = v110 = 1;
                        0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                        0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v5 + 20] >> 128);
                        MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v5] >> 96;
                        MEM[132] = msg.data[v5 + 20] >> 128;
                        MEM[164] = 96;
                        MEM[196] = (msg.data[v5 + 20 + 16] >> 240) + 2;
                        MEM[228] = msg.data[v5 + 20 + 16] >> 240 << 240;
                        v111 = v112 = 160;
                        if (msg.data[v5 + 20 + 16] >> 240 > 0) {
                            v111 = v113 = 130 + (msg.data[v5 + 20 + 16] >> 240);
                            if (v113 % 32 > 0) {
                                v111 = v114 = (v113 >> 5) + 1 << 5;
                                MEM[100 + (v113 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(230, v5 + 20 + 16 + 2, msg.data[v5 + 20 + 16] >> 240);
                        }
                        v115 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x744 + 4], MEM[96:96]).gas(msg.gas);
                        require(v115, Error(32, 8, 'sav7:030'));
                        0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                        v0 = (msg.data[v5 + 20 + 16] >> 240) + (v5 + 20 + 16 + 2 - v5) + v5;
                    } else if (42 == v4) {
                        v6 = v116 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v5 + 20 + 20] >> 128);
                        0x2a05(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128, 0);
                        v0 = 56 + v5;
                    } else if (43 == v4) {
                        v6 = v117 = 1;
                        if (0x286f580d == msg.data[v5 + 4] >> 224) {
                            v118 = v119 = 0;
                        } else {
                            require(0x8eb1b65e == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:032'));
                            v118 = v120 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v121 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x744] >> 224], MEM[128:128 + v1f68_0x5V0x744]).value(v118).gas(msg.gas);
                        require(v121, Error(32, 8, 'sav7:033'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (44 == v4) {
                        v6 = v122 = 1;
                        0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20] >> 248, msg.data[v5 + 1 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                        v0 = v5 + 1 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                    } else if (45 == v4) {
                        v6 = v123 = 1;
                        if (0x42e3d72c == msg.data[v5 + 20 + 4] >> 224) {
                            v124 = v125 = 0;
                            0x931(9, msg.data[v5] >> 96);
                        } else {
                            require(0xf957f1ca == msg.data[v5 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                            v124 = v126 = 0;
                        }
                        CALLDATACOPY(128, v5 + 20 + 4, msg.data[v5 + 20] >> 224);
                        v127 = (msg.data[v5] >> 96).call(MEM[128:128 + msg.data[v99bV0x744 + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x744]).value(v124).gas(msg.gas);
                        require(v127, Error(32, 8, 'sav7:037'));
                        v0 = v5 + 20 + 4 + (msg.data[v5 + 20] >> 224) - v5 + v5;
                    } else if (46 == v4) {
                        v6 = v128 = 1;
                        0x277e(msg.data[20 + v5] >> 96, msg.data[v5] >> 96, msg.data[40 + v5] >> 128);
                        MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = this;
                        MEM[164] = msg.data[40 + v5] >> 128;
                        MEM[196] = msg.data[56 + v5] >> 248;
                        MEM[228] = msg.data[57 + v5] >> 248;
                        MEM[260] = msg.data[58 + v5] >> 224;
                        MEM[292] = 192;
                        MEM[324] = msg.data[78 + v5] >> 240;
                        v129 = v130 = 224;
                        if (msg.data[78 + v5] >> 240 > 0) {
                            v129 = v131 = v130 + (msg.data[78 + v5] >> 240);
                            if (v131 % 32 > 0) {
                                v129 = v132 = (v131 >> 5) + 1 << 5;
                                MEM[132 + (v131 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(356, 80 + v5, msg.data[78 + v5] >> 240);
                        }
                        v133 = (msg.data[v5] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x744 + 4], MEM[128:192]).gas(msg.gas);
                        require(v133, Error(32, 8, 'sav7:034'));
                        require(MEM[160] >= msg.data[62 + v5] >> 128, Error(32, 8, 'sav7:035'));
                        v0 = (msg.data[78 + v5] >> 240) + (80 + v5 - v5) + v5;
                    } else if (47 == v4) {
                        v6 = v134 = 1;
                        v135 = v136 = msg.data[v5 + 20] >> 128;
                        0x3286(msg.data[v5] >> 96);
                        if (msg.data[v5] >> 96) {
                            0x277e(msg.data[v5] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v136);
                            v135 = v137 = 0;
                        }
                        0x31e2(v135);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else if (48 == v4) {
                        v6 = v138 = 1;
                        0x322b(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else if (49 == v4) {
                        v6 = v139 = 1;
                        if (0x48c89491 == msg.data[v5 + 4] >> 224) {
                            v140 = v141 = 0;
                            0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                        } else if (0xf3cd914c == msg.data[v5 + 4] >> 224) {
                            v140 = v142 = 0;
                        } else {
                            require(0x5a6bcfda == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:038'));
                            v140 = v143 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v144 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x744] >> 224], MEM[128:128 + v2080_0x5V0x744]).value(v140).gas(msg.gas);
                        require(v144, Error(32, 8, 'sav7:039'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (50 == v4) {
                        v6 = v145 = 1;
                        if (0xf83d08ba == msg.data[v5 + 4] >> 224) {
                            v146 = v147 = 0;
                            0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0xc11dedd == msg.data[v5 + 4] >> 224) {
                            v146 = v148 = 0;
                            0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0 == msg.data[v5 + 4] >> 224) {
                            v146 = v149 = 0;
                        } else if (0x55f48d01 == msg.data[v5 + 4] >> 224) {
                            v146 = v150 = 0;
                        } else {
                            require(0x645ec9b5 == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:042'));
                            v146 = v151 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v152 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x744] >> 224], MEM[128:128 + v2198_0x5V0x744]).value(v146).gas(msg.gas);
                        require(v152, Error(32, 8, 'sav7:03d'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (51 == v4) {
                        v6 = v153 = 1;
                        0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (52 == v4) {
                        v6 = v154 = 1;
                        0x32d5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else {
                        require(53 == v4, Error(32, 8, 'sav7:008'));
                        v6 = v155 = 1;
                        v156 = v157 = msg.data[v5 + 20 + 20 + 1] >> 128;
                        if (msg.data[v5 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            0x29b5(msg.data[v5 + 20] >> 96, msg.data[v5] >> 96, v157);
                        }
                        MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = msg.data[v5 + 20 + 20] >> 248;
                        MEM[164] = v157;
                        MEM[196] = 1;
                        MEM[228] = this;
                        v156 = v158 = 0;
                        if ((msg.data[v5 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v158) {
                        }
                        v159 = (msg.data[v5] >> 96).call(MEM[128:260], MEM[128:160]).value(v156).gas(msg.gas);
                        require(v159, Error(32, 8, 'sav7:043'));
                        require(MEM[128] >= msg.data[v5 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                        v0 = v5 + 20 + 20 + 1 + 16 + 16 - v5 + v5;
                    }
                    v160 = v44.sellQuote(v40).gas(msg.gas);
                    require(v160, Error(32, 8, 'sav7:00a'));
                    v161 = v162 = MEM[96];
                    // Unknown jump to Block ['0x13a8B0x744', '0x1514B0x744']. Refer to 3-address code (TAC);
                    if (v37 > 0) {
                        require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                    }
                    v0 = v39 - v5 + v5;
                    if (v37 > 0) {
                        require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                    }
                    v0 = v39 - v5 + v5;
                    v163 = v44.sellBase(v40).gas(msg.gas);
                    require(v163, Error(32, 8, 'sav7:00a'));
                    v161 = v164 = MEM[96];
                    // Unknown jump to Block ['0x1423B0x744', '0x14c9B0x744']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x13aaB0x744. Refer to 3-address code (TAC);
                }
                v2 = v2 + v6;
            }
        }
    }
    v165 = 0x6b175474e89094c44da98b954eedeac495271d0f.approve(0x60744434d6339a6b27d73d9eda62b6f66a0a04fa, amount).gas(msg.gas);
    require(v165, Error(32, 8, 'sav7:006'));
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9;
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public payable { 
    0x23a6();
    0x941(2, msg.sender);
    if (userData.length > 0) {
        if (msg.data[userData.data] >> 248 > 0) {
            v0 = v1 = 1 + userData.data;
            v2 = v3 = 0;
            while (v2 < msg.data[userData.data] >> 248) {
                v4 = msg.data[v0] >> 248;
                v5 = v0 + 1;
                if (1 == v4) {
                    v6 = v7 = 1;
                    v8 = v5 + 20 + 1;
                    if (msg.data[v5 + 20] >> 248 > 0) {
                        v8 = v8 + 20 + 16;
                        0x277e(msg.data[v8] >> 96, msg.data[v5] >> 96, msg.data[v8 + 20] >> 128);
                    }
                    v9 = v8 + 1 + 16 + 1;
                    if (0 == msg.data[v8 + 1 + 16] >> 248) {
                        v10 = v11 = msg.data[v9] >> 96;
                        v9 = v9 + 20;
                    } else {
                        v10 = v12 = this;
                    }
                    if (0 == msg.data[v8] >> 248) {
                        0x28c3(msg.data[v5] >> 96, msg.data[v8 + 1] >> 128, 0, v10);
                    } else {
                        0x28c3(msg.data[v5] >> 96, 0, msg.data[v8 + 1] >> 128, v10);
                    }
                    v0 = v9 - v5 + v5;
                } else if (2 == v4) {
                    v6 = v13 = 1;
                    v14 = v5 + 20 + 3 + 1;
                    if (0 == msg.data[v5 + 20 + 3] >> 248 & 0x10) {
                        v15 = v16 = 0x1000276a4;
                        if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                            v15 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                    } else {
                        v15 = v17 = msg.data[v14] >> 96;
                        v14 = v14 + 20;
                    }
                    v18 = v14 + 20 + 20 + 16 + 16 + 1;
                    v19 = this;
                    if (0 == msg.data[v14 + 20 + 20 + 16 + 16] >> 248) {
                        v19 = v20 = msg.data[v18] >> 96;
                        v18 = v18 + 20;
                    } else {
                        0x931(1, msg.data[v5] >> 96);
                    }
                    MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[100] = v19;
                    MEM[132] = msg.data[v5 + 20 + 3] >> 248 & 0x1;
                    MEM[164] = msg.data[v14 + 20 + 20] >> 128;
                    MEM[196] = v15;
                    MEM[228] = 160;
                    MEM[260] = (msg.data[1 + v18] >> 240) + 46;
                    MEM[324] = 0;
                    MEM[292] = msg.data[v14] >> 96 << 96;
                    MEM[312] = msg.data[v5 + 20] >> 232 << 232;
                    MEM[315] = msg.data[v14 + 20] >> 96 << 96;
                    MEM[335] = msg.data[v18] >> 248 << 248;
                    MEM[336] = msg.data[1 + v18] >> 240 << 240;
                    v21 = uint8.max + 1;
                    if (msg.data[1 + v18] >> 240 > 0) {
                        v21 = v22 = 238 + (msg.data[1 + v18] >> 240);
                        if (v22 % 32 > 0) {
                            v21 = v23 = (v22 >> 5) + 1 << 5;
                            MEM[100 + (v22 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(338, 3 + v18, msg.data[1 + v18] >> 240);
                    }
                    v24 = (msg.data[v5] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x6a6V0x149 + 4], MEM[96:160]).gas(msg.gas);
                    require(v24, Error(32, 8, 'sav7:004'));
                    v25 = v26 = 0 - MEM[128];
                    if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                        v25 = v27 = 0 - MEM[96];
                    }
                    if (msg.data[v14 + 20 + 20 + 16] >> 128 > 0) {
                        require(msg.data[v14 + 20 + 20 + 16] >> 128 <= v25, Error(32, 8, 'sav7:005'));
                    }
                    v0 = (msg.data[1 + v18] >> 240) + (3 + v18 - v5) + v5;
                } else if (3 == v4) {
                    v6 = v28 = 1;
                    0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128);
                    0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 248, msg.data[v5 + 1 + 20 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                    v0 = v5 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                } else if (4 == v4) {
                    v6 = v29 = 1;
                    0x29b5(msg.data[v5 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v5 + 32 + 20 + 20] >> 128);
                    0x2a67(msg.data[v5], 0, msg.data[v5 + 32] >> 96, msg.data[v5 + 32 + 20] >> 96, msg.data[v5 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v5 + 32 + 20 + 20 + 16] >> 128);
                    v0 = v5 + 32 + 20 + 20 + 16 + 16 - v5 + v5;
                } else {
                    if (5 == v4) {
                        v30 = v31 = 3644;
                        v6 = v32 = 1;
                        v33 = v5 + 1 + 1;
                        v34 = v35 = 0;
                        if (msg.data[v5 + 1] >> 248 > v35) {
                            v34 = v36 = msg.data[v33] >> 128;
                            v33 = v33 + 16;
                        }
                        v37 = v38 = msg.data[v33] >> 128;
                        v39 = v33 + 16 + 1;
                        if (0 == msg.data[v33 + 16] >> 248) {
                            v40 = v41 = msg.data[v39] >> 96;
                            v39 = v39 + 20;
                        } else {
                            v40 = v42 = this;
                        }
                        if (0 == msg.data[v5] >> 248) {
                            v43 = 5155;
                            if (v34 > 0) {
                                0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                            }
                            v44 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        } else {
                            v45 = 5032;
                            if (v34 > 0) {
                                0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                            }
                            v44 = v46 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        }
                    } else if (6 == v4) {
                        v6 = v47 = 1;
                        if (0 == msg.data[v5] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v5 + 1] >> 128);
                            0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v5 + 1] >> 128);
                            0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v5 + 1] >> 128);
                        }
                        v0 = v5 + 1 + 16 - v5 + v5;
                    } else if (7 == v4) {
                        v6 = v48 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            v49 = block.coinbase.call().value(msg.data[v5] >> 128).gas(msg.gas);
                            require(v49, Error(32, 8, 'sav7:040'));
                        }
                        v0 = 16 + v5;
                    } else if (8 == v4) {
                        v6 = v50 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                            MEM[100] = msg.data[v5] >> 128;
                            v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                            require(v51, Error(32, 8, 'sav7:00c'));
                        }
                        v0 = 16 + v5;
                    } else if (9 == v4) {
                        v6 = v52 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            v53 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v5] >> 128).gas(msg.gas);
                            require(v53, Error(32, 8, 'sav7:03f'));
                        }
                        v0 = 16 + v5;
                    } else if (10 == v4) {
                        v6 = v54 = 1;
                        0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                        v55 = v5 + 1;
                        require(msg.data[v5] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                        MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 128;
                        MEM[228] = msg.data[v5] >> 248;
                        v56 = v57 = 260;
                        MEM[164] = 128 + (msg.data[v5] >> 248 << 5) + 32;
                        MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v5] >> 248;
                        v58 = v59 = 100 + (128 + (msg.data[v5] >> 248 << 5) + 32) + 32;
                        MEM[196] = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32;
                        v60 = v61 = 0;
                        while (v60 < msg.data[v5] >> 248) {
                            v55 = v55 + 20 + 16;
                            MEM[v56] = msg.data[v55] >> 96;
                            v56 = v56 + 32;
                            MEM[v58] = msg.data[v55 + 20] >> 128;
                            v58 = v58 + 32;
                            v60 = v60 + 1;
                        }
                        MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v55] >> 240;
                        v62 = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32 + 32;
                        if (msg.data[v55] >> 240 > 0) {
                            v62 = v63 = v62 + (msg.data[v55] >> 240);
                            if (v63 % 32 > 0) {
                                v62 = v64 = (v63 >> 5) + 1 << 5;
                                MEM[100 + (v63 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(100 + v62, v55 + 2, msg.data[v55] >> 240);
                        }
                        v65 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x6a6V0x149 + 4], MEM[96:96]).gas(msg.gas);
                        require(v65, Error(32, 8, 'sav7:00e'));
                        v0 = (msg.data[v55] >> 240) + (v55 + 2 - v5) + v5;
                    } else if (11 == v4) {
                        v6 = v66 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                        0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                        v0 = 36 + v5;
                    } else if (12 == v4) {
                        v6 = v67 = 1;
                        v68 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                        require(v68, Error(32, 8, 'sav7:010'));
                        v0 = 36 + v5;
                    } else if (13 == v4) {
                        v6 = v69 = 1;
                        v70 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v70, Error(32, 8, 'sav7:011'));
                        v0 = 37 + v5;
                    } else if (14 == v4) {
                        v6 = v71 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                        0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                        v0 = 37 + v5;
                    } else if (15 == v4) {
                        v6 = v72 = 1;
                        if (1 == msg.data[v5 + 20 + 16] >> 248) {
                            v73 = 0x35b5e5ad9019092c665357240f594e;
                        } else {
                            require(2 == msg.data[v5 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                            v73 = v74 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                        }
                        if (msg.data[v5 + 20] >> 128 > 0) {
                            0x277e(msg.data[v5] >> 96, v73, msg.data[v5 + 20] >> 128);
                        }
                        v0 = 37 + v5;
                    } else if (16 == v4) {
                        v6 = v75 = 1;
                        0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128);
                        if (0 == msg.data[v5] >> 248) {
                            0x2e0d(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 16] >> 128, msg.data[v5 + 1 + 20 + 20] >> 128);
                        } else {
                            0x2db3(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128, msg.data[v5 + 1 + 20 + 20 + 16] >> 128);
                        }
                        v0 = v5 + 1 + 20 + 20 + 16 + 16 - v5 + v5;
                    } else if (17 == v4) {
                        v6 = v76 = 1;
                        0x29b5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128);
                        v0 = 56 + v5;
                    } else if (22 == v4) {
                        v6 = v77 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                        0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                        v0 = 36 + v5;
                    } else if (23 == v4) {
                        v6 = v78 = 1;
                        v79 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                        require(v79, Error(32, 8, 'sav7:010'));
                        v0 = 36 + v5;
                    } else if (24 == v4) {
                        v6 = v80 = 1;
                        v81 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v81, Error(32, 8, 'sav7:011'));
                        v0 = 37 + v5;
                    } else if (25 == v4) {
                        v6 = v82 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                        0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                        v0 = 37 + v5;
                    } else if (31 == v4) {
                        v6 = v83 = 1;
                        0x29b5(msg.data[v5] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128);
                        0x29b5(msg.data[v5 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                        0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 232, msg.data[v5 + 20 + 20 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                        v0 = v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v5 + v5;
                    } else if (32 == v4) {
                        v6 = v84 = 1;
                        0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, msg.data[v5 + 8] >> 128, 0, 0, msg.data[v5 + 8 + 16] >> 192);
                        0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, this, uint128.max, uint128.max);
                        v0 = v5 + 8 + 16 + 8 - v5 + v5;
                    } else if (33 == v4) {
                        v6 = v85 = 1;
                        0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v5] >> 128);
                        0x30f5(msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (34 == v4) {
                        v6 = v86 = 1;
                        0x3144(msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (35 == v4) {
                        v6 = v87 = 1;
                        0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                        MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                        MEM[164] = msg.data[v5] >> 128;
                        MEM[196] = 128;
                        MEM[228] = (msg.data[v5 + 16] >> 240) + 2;
                        MEM[260] = msg.data[v5 + 16] >> 240 << 240;
                        v88 = v89 = 192;
                        if (msg.data[v5 + 16] >> 240 > 0) {
                            v88 = v90 = 162 + (msg.data[v5 + 16] >> 240);
                            if (v90 % 32 > 0) {
                                v88 = v91 = (v90 >> 5) + 1 << 5;
                                MEM[100 + (v90 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(262, v5 + 16 + 2, msg.data[v5 + 16] >> 240);
                        }
                        v92 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x6a6V0x149 + 4], MEM[96:96]).gas(msg.gas);
                        require(v92, Error(32, 8, 'sav7:02b'));
                        v0 = (msg.data[v5 + 16] >> 240) + (v5 + 16 + 2 - v5) + v5;
                    } else if (36 == v4) {
                        v6 = v93 = 1;
                        0x3193(msg.data[v5] >> 248);
                        v0 = v5 + 1 - v5 + v5;
                    } else if (37 == v4) {
                        v6 = v94 = 1;
                        if (0 == msg.data[v5] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                            0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                            0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v5 + 1] >> 128);
                        }
                        v0 = v5 + 1 + 16 - v5 + v5;
                    } else if (38 == v4) {
                        v30 = v95 = 3164;
                        v6 = v96 = 1;
                        v44 = v97 = msg.data[v5] >> 96;
                        v98 = v5 + 20 + 1 + 1;
                        v99 = v100 = 0;
                        v101 = v102 = 0;
                        if (msg.data[v5 + 20 + 1] >> 248 > v102) {
                            v99 = v103 = msg.data[v98] >> 128;
                            v101 = v104 = msg.data[v98 + 16] >> 96;
                            v98 = v98 + 16 + 20;
                        }
                        v37 = msg.data[v98] >> 128;
                        v39 = v98 + 16 + 1;
                        if (0 == msg.data[v98 + 16] >> 248) {
                            v40 = msg.data[v39] >> 96;
                            v39 = v39 + 20;
                        } else {
                            v40 = v105 = this;
                        }
                        if (v99 > 0) {
                            0x277e(v101, v97, v99);
                        }
                        if (0 == msg.data[v5 + 20] >> 248) {
                            v45 = v106 = 5396;
                            // Unknown jump to Block 0x2d65B0x6a6B0x149. Refer to 3-address code (TAC);
                        } else {
                            v43 = v107 = 5321;
                        }
                    } else if (39 == v4) {
                        v6 = v108 = 1;
                        0x931(4, msg.data[v5] >> 96);
                        0x2faf(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128, msg.data[v5 + 20 + 3 + 3 + 16] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                        v0 = v5 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v5 + v5;
                    } else if (40 == v4) {
                        v6 = v109 = 1;
                        0x303f(msg.data[v5] >> 96, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128);
                        0x3095(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 3 + 3 + 16 + 16] >> 128);
                        v0 = v5 + 20 + 3 + 3 + 16 + 16 + 16 - v5 + v5;
                    } else if (41 == v4) {
                        v6 = v110 = 1;
                        0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                        0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v5 + 20] >> 128);
                        MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v5] >> 96;
                        MEM[132] = msg.data[v5 + 20] >> 128;
                        MEM[164] = 96;
                        MEM[196] = (msg.data[v5 + 20 + 16] >> 240) + 2;
                        MEM[228] = msg.data[v5 + 20 + 16] >> 240 << 240;
                        v111 = v112 = 160;
                        if (msg.data[v5 + 20 + 16] >> 240 > 0) {
                            v111 = v113 = 130 + (msg.data[v5 + 20 + 16] >> 240);
                            if (v113 % 32 > 0) {
                                v111 = v114 = (v113 >> 5) + 1 << 5;
                                MEM[100 + (v113 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(230, v5 + 20 + 16 + 2, msg.data[v5 + 20 + 16] >> 240);
                        }
                        v115 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x6a6V0x149 + 4], MEM[96:96]).gas(msg.gas);
                        require(v115, Error(32, 8, 'sav7:030'));
                        0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                        v0 = (msg.data[v5 + 20 + 16] >> 240) + (v5 + 20 + 16 + 2 - v5) + v5;
                    } else if (42 == v4) {
                        v6 = v116 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v5 + 20 + 20] >> 128);
                        0x2a05(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128, 0);
                        v0 = 56 + v5;
                    } else if (43 == v4) {
                        v6 = v117 = 1;
                        if (0x286f580d == msg.data[v5 + 4] >> 224) {
                            v118 = v119 = 0;
                        } else {
                            require(0x8eb1b65e == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:032'));
                            v118 = v120 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v121 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x6a6V0x149] >> 224], MEM[128:128 + v1f68_0x5V0x6a6V0x149]).value(v118).gas(msg.gas);
                        require(v121, Error(32, 8, 'sav7:033'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (44 == v4) {
                        v6 = v122 = 1;
                        0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20] >> 248, msg.data[v5 + 1 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                        v0 = v5 + 1 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                    } else if (45 == v4) {
                        v6 = v123 = 1;
                        if (0x42e3d72c == msg.data[v5 + 20 + 4] >> 224) {
                            v124 = v125 = 0;
                            0x931(9, msg.data[v5] >> 96);
                        } else {
                            require(0xf957f1ca == msg.data[v5 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                            v124 = v126 = 0;
                        }
                        CALLDATACOPY(128, v5 + 20 + 4, msg.data[v5 + 20] >> 224);
                        v127 = (msg.data[v5] >> 96).call(MEM[128:128 + msg.data[v99bV0x6a6V0x149 + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x6a6V0x149]).value(v124).gas(msg.gas);
                        require(v127, Error(32, 8, 'sav7:037'));
                        v0 = v5 + 20 + 4 + (msg.data[v5 + 20] >> 224) - v5 + v5;
                    } else if (46 == v4) {
                        v6 = v128 = 1;
                        0x277e(msg.data[20 + v5] >> 96, msg.data[v5] >> 96, msg.data[40 + v5] >> 128);
                        MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = this;
                        MEM[164] = msg.data[40 + v5] >> 128;
                        MEM[196] = msg.data[56 + v5] >> 248;
                        MEM[228] = msg.data[57 + v5] >> 248;
                        MEM[260] = msg.data[58 + v5] >> 224;
                        MEM[292] = 192;
                        MEM[324] = msg.data[78 + v5] >> 240;
                        v129 = v130 = 224;
                        if (msg.data[78 + v5] >> 240 > 0) {
                            v129 = v131 = v130 + (msg.data[78 + v5] >> 240);
                            if (v131 % 32 > 0) {
                                v129 = v132 = (v131 >> 5) + 1 << 5;
                                MEM[132 + (v131 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(356, 80 + v5, msg.data[78 + v5] >> 240);
                        }
                        v133 = (msg.data[v5] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x6a6V0x149 + 4], MEM[128:192]).gas(msg.gas);
                        require(v133, Error(32, 8, 'sav7:034'));
                        require(MEM[160] >= msg.data[62 + v5] >> 128, Error(32, 8, 'sav7:035'));
                        v0 = (msg.data[78 + v5] >> 240) + (80 + v5 - v5) + v5;
                    } else if (47 == v4) {
                        v6 = v134 = 1;
                        v135 = v136 = msg.data[v5 + 20] >> 128;
                        0x3286(msg.data[v5] >> 96);
                        if (msg.data[v5] >> 96) {
                            0x277e(msg.data[v5] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v136);
                            v135 = v137 = 0;
                        }
                        0x31e2(v135);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else if (48 == v4) {
                        v6 = v138 = 1;
                        0x322b(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else if (49 == v4) {
                        v6 = v139 = 1;
                        if (0x48c89491 == msg.data[v5 + 4] >> 224) {
                            v140 = v141 = 0;
                            0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                        } else if (0xf3cd914c == msg.data[v5 + 4] >> 224) {
                            v140 = v142 = 0;
                        } else {
                            require(0x5a6bcfda == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:038'));
                            v140 = v143 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v144 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x6a6V0x149] >> 224], MEM[128:128 + v2080_0x5V0x6a6V0x149]).value(v140).gas(msg.gas);
                        require(v144, Error(32, 8, 'sav7:039'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (50 == v4) {
                        v6 = v145 = 1;
                        if (0xf83d08ba == msg.data[v5 + 4] >> 224) {
                            v146 = v147 = 0;
                            0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0xc11dedd == msg.data[v5 + 4] >> 224) {
                            v146 = v148 = 0;
                            0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0 == msg.data[v5 + 4] >> 224) {
                            v146 = v149 = 0;
                        } else if (0x55f48d01 == msg.data[v5 + 4] >> 224) {
                            v146 = v150 = 0;
                        } else {
                            require(0x645ec9b5 == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:042'));
                            v146 = v151 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v152 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x6a6V0x149] >> 224], MEM[128:128 + v2198_0x5V0x6a6V0x149]).value(v146).gas(msg.gas);
                        require(v152, Error(32, 8, 'sav7:03d'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (51 == v4) {
                        v6 = v153 = 1;
                        0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (52 == v4) {
                        v6 = v154 = 1;
                        0x32d5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else {
                        require(53 == v4, Error(32, 8, 'sav7:008'));
                        v6 = v155 = 1;
                        v156 = v157 = msg.data[v5 + 20 + 20 + 1] >> 128;
                        if (msg.data[v5 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            0x29b5(msg.data[v5 + 20] >> 96, msg.data[v5] >> 96, v157);
                        }
                        MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = msg.data[v5 + 20 + 20] >> 248;
                        MEM[164] = v157;
                        MEM[196] = 1;
                        MEM[228] = this;
                        v156 = v158 = 0;
                        if ((msg.data[v5 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v158) {
                        }
                        v159 = (msg.data[v5] >> 96).call(MEM[128:260], MEM[128:160]).value(v156).gas(msg.gas);
                        require(v159, Error(32, 8, 'sav7:043'));
                        require(MEM[128] >= msg.data[v5 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                        v0 = v5 + 20 + 20 + 1 + 16 + 16 - v5 + v5;
                    }
                    v160 = v44.sellQuote(v40).gas(msg.gas);
                    require(v160, Error(32, 8, 'sav7:00a'));
                    v161 = v162 = MEM[96];
                    // Unknown jump to Block ['0x13a8B0x6a6B0x149', '0x1514B0x6a6B0x149']. Refer to 3-address code (TAC);
                    if (v37 > 0) {
                        require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                    }
                    v0 = v39 - v5 + v5;
                    if (v37 > 0) {
                        require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                    }
                    v0 = v39 - v5 + v5;
                    v163 = v44.sellBase(v40).gas(msg.gas);
                    require(v163, Error(32, 8, 'sav7:00a'));
                    v161 = v164 = MEM[96];
                    // Unknown jump to Block ['0x1423B0x6a6B0x149', '0x14c9B0x6a6B0x149']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x13aaB0x6a6B0x149. Refer to 3-address code (TAC);
                }
                v2 = v2 + v6;
            }
        }
    }
    v165 = 36;
    v166 = 0;
    while (v166 < tokens.length) {
        0x277e(msg.data[tokens + v165], 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[feeAmounts + v165] + msg.data[amounts + v165]);
        v165 = v165 + 32;
        v166 = v166 + 1;
    }
}

function unlockCallback(bytes rawData) public payable { 
    0x24ee();
    0x941(11, msg.sender);
    if (rawData >> 248 > 0) {
        v0 = v1 = 69;
        v2 = v3 = 0;
        while (v2 < rawData >> 248) {
            v4 = msg.data[v0] >> 248;
            v5 = v0 + 1;
            if (1 == v4) {
                v6 = v7 = 1;
                v8 = v5 + 20 + 1;
                if (msg.data[v5 + 20] >> 248 > 0) {
                    v8 = v8 + 20 + 16;
                    0x277e(msg.data[v8] >> 96, msg.data[v5] >> 96, msg.data[v8 + 20] >> 128);
                }
                v9 = v8 + 1 + 16 + 1;
                if (0 == msg.data[v8 + 1 + 16] >> 248) {
                    v10 = v11 = msg.data[v9] >> 96;
                    v9 = v9 + 20;
                } else {
                    v10 = v12 = this;
                }
                if (0 == msg.data[v8] >> 248) {
                    0x28c3(msg.data[v5] >> 96, msg.data[v8 + 1] >> 128, 0, v10);
                } else {
                    0x28c3(msg.data[v5] >> 96, 0, msg.data[v8 + 1] >> 128, v10);
                }
                v0 = v9 - v5 + v5;
            } else if (2 == v4) {
                v6 = v13 = 1;
                v14 = v5 + 20 + 3 + 1;
                if (0 == msg.data[v5 + 20 + 3] >> 248 & 0x10) {
                    v15 = v16 = 0x1000276a4;
                    if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                        v15 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                } else {
                    v15 = v17 = msg.data[v14] >> 96;
                    v14 = v14 + 20;
                }
                v18 = v14 + 20 + 20 + 16 + 16 + 1;
                v19 = this;
                if (0 == msg.data[v14 + 20 + 20 + 16 + 16] >> 248) {
                    v19 = v20 = msg.data[v18] >> 96;
                    v18 = v18 + 20;
                } else {
                    0x931(1, msg.data[v5] >> 96);
                }
                MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[100] = v19;
                MEM[132] = msg.data[v5 + 20 + 3] >> 248 & 0x1;
                MEM[164] = msg.data[v14 + 20 + 20] >> 128;
                MEM[196] = v15;
                MEM[228] = 160;
                MEM[260] = (msg.data[1 + v18] >> 240) + 46;
                MEM[324] = 0;
                MEM[292] = msg.data[v14] >> 96 << 96;
                MEM[312] = msg.data[v5 + 20] >> 232 << 232;
                MEM[315] = msg.data[v14 + 20] >> 96 << 96;
                MEM[335] = msg.data[v18] >> 248 << 248;
                MEM[336] = msg.data[1 + v18] >> 240 << 240;
                v21 = uint8.max + 1;
                if (msg.data[1 + v18] >> 240 > 0) {
                    v21 = v22 = 238 + (msg.data[1 + v18] >> 240);
                    if (v22 % 32 > 0) {
                        v21 = v23 = (v22 >> 5) + 1 << 5;
                        MEM[100 + (v22 >> 5 << 5)] = 0;
                    }
                    CALLDATACOPY(338, 3 + v18, msg.data[1 + v18] >> 240);
                }
                v24 = (msg.data[v5] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x5af + 4], MEM[96:160]).gas(msg.gas);
                require(v24, Error(32, 8, 'sav7:004'));
                v25 = v26 = 0 - MEM[128];
                if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                    v25 = v27 = 0 - MEM[96];
                }
                if (msg.data[v14 + 20 + 20 + 16] >> 128 > 0) {
                    require(msg.data[v14 + 20 + 20 + 16] >> 128 <= v25, Error(32, 8, 'sav7:005'));
                }
                v0 = (msg.data[1 + v18] >> 240) + (3 + v18 - v5) + v5;
            } else if (3 == v4) {
                v6 = v28 = 1;
                0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128);
                0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 248, msg.data[v5 + 1 + 20 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                v0 = v5 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
            } else if (4 == v4) {
                v6 = v29 = 1;
                0x29b5(msg.data[v5 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v5 + 32 + 20 + 20] >> 128);
                0x2a67(msg.data[v5], 0, msg.data[v5 + 32] >> 96, msg.data[v5 + 32 + 20] >> 96, msg.data[v5 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v5 + 32 + 20 + 20 + 16] >> 128);
                v0 = v5 + 32 + 20 + 20 + 16 + 16 - v5 + v5;
            } else {
                if (5 == v4) {
                    v30 = v31 = 3644;
                    v6 = v32 = 1;
                    v33 = v5 + 1 + 1;
                    v34 = v35 = 0;
                    if (msg.data[v5 + 1] >> 248 > v35) {
                        v34 = v36 = msg.data[v33] >> 128;
                        v33 = v33 + 16;
                    }
                    v37 = v38 = msg.data[v33] >> 128;
                    v39 = v33 + 16 + 1;
                    if (0 == msg.data[v33 + 16] >> 248) {
                        v40 = v41 = msg.data[v39] >> 96;
                        v39 = v39 + 20;
                    } else {
                        v40 = v42 = this;
                    }
                    if (0 == msg.data[v5] >> 248) {
                        v43 = 5155;
                        if (v34 > 0) {
                            0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                        }
                        v44 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                    } else {
                        v45 = 5032;
                        if (v34 > 0) {
                            0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                        }
                        v44 = v46 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                    }
                } else if (6 == v4) {
                    v6 = v47 = 1;
                    if (0 == msg.data[v5] >> 248) {
                        0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v5 + 1] >> 128);
                        0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                    } else {
                        0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v5 + 1] >> 128);
                        0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v5 + 1] >> 128);
                    }
                    v0 = v5 + 1 + 16 - v5 + v5;
                } else if (7 == v4) {
                    v6 = v48 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        v49 = block.coinbase.call().value(msg.data[v5] >> 128).gas(msg.gas);
                        require(v49, Error(32, 8, 'sav7:040'));
                    }
                    v0 = 16 + v5;
                } else if (8 == v4) {
                    v6 = v50 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v5] >> 128;
                        v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                        require(v51, Error(32, 8, 'sav7:00c'));
                    }
                    v0 = 16 + v5;
                } else if (9 == v4) {
                    v6 = v52 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        v53 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v5] >> 128).gas(msg.gas);
                        require(v53, Error(32, 8, 'sav7:03f'));
                    }
                    v0 = 16 + v5;
                } else if (10 == v4) {
                    v6 = v54 = 1;
                    0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                    v55 = v5 + 1;
                    require(msg.data[v5] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                    MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                    MEM[100] = this;
                    MEM[132] = 128;
                    MEM[228] = msg.data[v5] >> 248;
                    v56 = v57 = 260;
                    MEM[164] = 128 + (msg.data[v5] >> 248 << 5) + 32;
                    MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v5] >> 248;
                    v58 = v59 = 100 + (128 + (msg.data[v5] >> 248 << 5) + 32) + 32;
                    MEM[196] = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32;
                    v60 = v61 = 0;
                    while (v60 < msg.data[v5] >> 248) {
                        v55 = v55 + 20 + 16;
                        MEM[v56] = msg.data[v55] >> 96;
                        v56 = v56 + 32;
                        MEM[v58] = msg.data[v55 + 20] >> 128;
                        v58 = v58 + 32;
                        v60 = v60 + 1;
                    }
                    MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v55] >> 240;
                    v62 = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32 + 32;
                    if (msg.data[v55] >> 240 > 0) {
                        v62 = v63 = v62 + (msg.data[v55] >> 240);
                        if (v63 % 32 > 0) {
                            v62 = v64 = (v63 >> 5) + 1 << 5;
                            MEM[100 + (v63 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(100 + v62, v55 + 2, msg.data[v55] >> 240);
                    }
                    v65 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x5af + 4], MEM[96:96]).gas(msg.gas);
                    require(v65, Error(32, 8, 'sav7:00e'));
                    v0 = (msg.data[v55] >> 240) + (v55 + 2 - v5) + v5;
                } else if (11 == v4) {
                    v6 = v66 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                    0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                    v0 = 36 + v5;
                } else if (12 == v4) {
                    v6 = v67 = 1;
                    v68 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                    require(v68, Error(32, 8, 'sav7:010'));
                    v0 = 36 + v5;
                } else if (13 == v4) {
                    v6 = v69 = 1;
                    v70 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                    require(v70, Error(32, 8, 'sav7:011'));
                    v0 = 37 + v5;
                } else if (14 == v4) {
                    v6 = v71 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                    0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                    v0 = 37 + v5;
                } else if (15 == v4) {
                    v6 = v72 = 1;
                    if (1 == msg.data[v5 + 20 + 16] >> 248) {
                        v73 = 0x35b5e5ad9019092c665357240f594e;
                    } else {
                        require(2 == msg.data[v5 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                        v73 = v74 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                    }
                    if (msg.data[v5 + 20] >> 128 > 0) {
                        0x277e(msg.data[v5] >> 96, v73, msg.data[v5 + 20] >> 128);
                    }
                    v0 = 37 + v5;
                } else if (16 == v4) {
                    v6 = v75 = 1;
                    0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128);
                    if (0 == msg.data[v5] >> 248) {
                        0x2e0d(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 16] >> 128, msg.data[v5 + 1 + 20 + 20] >> 128);
                    } else {
                        0x2db3(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128, msg.data[v5 + 1 + 20 + 20 + 16] >> 128);
                    }
                    v0 = v5 + 1 + 20 + 20 + 16 + 16 - v5 + v5;
                } else if (17 == v4) {
                    v6 = v76 = 1;
                    0x29b5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128);
                    v0 = 56 + v5;
                } else if (22 == v4) {
                    v6 = v77 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                    0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                    v0 = 36 + v5;
                } else if (23 == v4) {
                    v6 = v78 = 1;
                    v79 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                    require(v79, Error(32, 8, 'sav7:010'));
                    v0 = 36 + v5;
                } else if (24 == v4) {
                    v6 = v80 = 1;
                    v81 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                    require(v81, Error(32, 8, 'sav7:011'));
                    v0 = 37 + v5;
                } else if (25 == v4) {
                    v6 = v82 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                    0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                    v0 = 37 + v5;
                } else if (31 == v4) {
                    v6 = v83 = 1;
                    0x29b5(msg.data[v5] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128);
                    0x29b5(msg.data[v5 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                    0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 232, msg.data[v5 + 20 + 20 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                    v0 = v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v5 + v5;
                } else if (32 == v4) {
                    v6 = v84 = 1;
                    0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, msg.data[v5 + 8] >> 128, 0, 0, msg.data[v5 + 8 + 16] >> 192);
                    0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, this, uint128.max, uint128.max);
                    v0 = v5 + 8 + 16 + 8 - v5 + v5;
                } else if (33 == v4) {
                    v6 = v85 = 1;
                    0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v5] >> 128);
                    0x30f5(msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (34 == v4) {
                    v6 = v86 = 1;
                    0x3144(msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (35 == v4) {
                    v6 = v87 = 1;
                    0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                    MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                    MEM[100] = this;
                    MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    MEM[164] = msg.data[v5] >> 128;
                    MEM[196] = 128;
                    MEM[228] = (msg.data[v5 + 16] >> 240) + 2;
                    MEM[260] = msg.data[v5 + 16] >> 240 << 240;
                    v88 = v89 = 192;
                    if (msg.data[v5 + 16] >> 240 > 0) {
                        v88 = v90 = 162 + (msg.data[v5 + 16] >> 240);
                        if (v90 % 32 > 0) {
                            v88 = v91 = (v90 >> 5) + 1 << 5;
                            MEM[100 + (v90 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(262, v5 + 16 + 2, msg.data[v5 + 16] >> 240);
                    }
                    v92 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x5af + 4], MEM[96:96]).gas(msg.gas);
                    require(v92, Error(32, 8, 'sav7:02b'));
                    v0 = (msg.data[v5 + 16] >> 240) + (v5 + 16 + 2 - v5) + v5;
                } else if (36 == v4) {
                    v6 = v93 = 1;
                    0x3193(msg.data[v5] >> 248);
                    v0 = v5 + 1 - v5 + v5;
                } else if (37 == v4) {
                    v6 = v94 = 1;
                    if (0 == msg.data[v5] >> 248) {
                        0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                        0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                    } else {
                        0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                        0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v5 + 1] >> 128);
                    }
                    v0 = v5 + 1 + 16 - v5 + v5;
                } else if (38 == v4) {
                    v30 = v95 = 3164;
                    v6 = v96 = 1;
                    v44 = v97 = msg.data[v5] >> 96;
                    v98 = v5 + 20 + 1 + 1;
                    v99 = v100 = 0;
                    v101 = v102 = 0;
                    if (msg.data[v5 + 20 + 1] >> 248 > v102) {
                        v99 = v103 = msg.data[v98] >> 128;
                        v101 = v104 = msg.data[v98 + 16] >> 96;
                        v98 = v98 + 16 + 20;
                    }
                    v37 = msg.data[v98] >> 128;
                    v39 = v98 + 16 + 1;
                    if (0 == msg.data[v98 + 16] >> 248) {
                        v40 = msg.data[v39] >> 96;
                        v39 = v39 + 20;
                    } else {
                        v40 = v105 = this;
                    }
                    if (v99 > 0) {
                        0x277e(v101, v97, v99);
                    }
                    if (0 == msg.data[v5 + 20] >> 248) {
                        v45 = v106 = 5396;
                        // Unknown jump to Block 0x2d65B0x5af. Refer to 3-address code (TAC);
                    } else {
                        v43 = v107 = 5321;
                    }
                } else if (39 == v4) {
                    v6 = v108 = 1;
                    0x931(4, msg.data[v5] >> 96);
                    0x2faf(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128, msg.data[v5 + 20 + 3 + 3 + 16] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                    v0 = v5 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v5 + v5;
                } else if (40 == v4) {
                    v6 = v109 = 1;
                    0x303f(msg.data[v5] >> 96, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128);
                    0x3095(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 3 + 3 + 16 + 16] >> 128);
                    v0 = v5 + 20 + 3 + 3 + 16 + 16 + 16 - v5 + v5;
                } else if (41 == v4) {
                    v6 = v110 = 1;
                    0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                    0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v5 + 20] >> 128);
                    MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                    MEM[100] = msg.data[v5] >> 96;
                    MEM[132] = msg.data[v5 + 20] >> 128;
                    MEM[164] = 96;
                    MEM[196] = (msg.data[v5 + 20 + 16] >> 240) + 2;
                    MEM[228] = msg.data[v5 + 20 + 16] >> 240 << 240;
                    v111 = v112 = 160;
                    if (msg.data[v5 + 20 + 16] >> 240 > 0) {
                        v111 = v113 = 130 + (msg.data[v5 + 20 + 16] >> 240);
                        if (v113 % 32 > 0) {
                            v111 = v114 = (v113 >> 5) + 1 << 5;
                            MEM[100 + (v113 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(230, v5 + 20 + 16 + 2, msg.data[v5 + 20 + 16] >> 240);
                    }
                    v115 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x5af + 4], MEM[96:96]).gas(msg.gas);
                    require(v115, Error(32, 8, 'sav7:030'));
                    0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                    v0 = (msg.data[v5 + 20 + 16] >> 240) + (v5 + 20 + 16 + 2 - v5) + v5;
                } else if (42 == v4) {
                    v6 = v116 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v5 + 20 + 20] >> 128);
                    0x2a05(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128, 0);
                    v0 = 56 + v5;
                } else if (43 == v4) {
                    v6 = v117 = 1;
                    if (0x286f580d == msg.data[v5 + 4] >> 224) {
                        v118 = v119 = 0;
                    } else {
                        require(0x8eb1b65e == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:032'));
                        v118 = v120 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v121 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x5af] >> 224], MEM[128:128 + v1f68_0x5V0x5af]).value(v118).gas(msg.gas);
                    require(v121, Error(32, 8, 'sav7:033'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (44 == v4) {
                    v6 = v122 = 1;
                    0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20] >> 248, msg.data[v5 + 1 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                    v0 = v5 + 1 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                } else if (45 == v4) {
                    v6 = v123 = 1;
                    if (0x42e3d72c == msg.data[v5 + 20 + 4] >> 224) {
                        v124 = v125 = 0;
                        0x931(9, msg.data[v5] >> 96);
                    } else {
                        require(0xf957f1ca == msg.data[v5 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                        v124 = v126 = 0;
                    }
                    CALLDATACOPY(128, v5 + 20 + 4, msg.data[v5 + 20] >> 224);
                    v127 = (msg.data[v5] >> 96).call(MEM[128:128 + msg.data[v99bV0x5af + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x5af]).value(v124).gas(msg.gas);
                    require(v127, Error(32, 8, 'sav7:037'));
                    v0 = v5 + 20 + 4 + (msg.data[v5 + 20] >> 224) - v5 + v5;
                } else if (46 == v4) {
                    v6 = v128 = 1;
                    0x277e(msg.data[20 + v5] >> 96, msg.data[v5] >> 96, msg.data[40 + v5] >> 128);
                    MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                    MEM[132] = this;
                    MEM[164] = msg.data[40 + v5] >> 128;
                    MEM[196] = msg.data[56 + v5] >> 248;
                    MEM[228] = msg.data[57 + v5] >> 248;
                    MEM[260] = msg.data[58 + v5] >> 224;
                    MEM[292] = 192;
                    MEM[324] = msg.data[78 + v5] >> 240;
                    v129 = v130 = 224;
                    if (msg.data[78 + v5] >> 240 > 0) {
                        v129 = v131 = v130 + (msg.data[78 + v5] >> 240);
                        if (v131 % 32 > 0) {
                            v129 = v132 = (v131 >> 5) + 1 << 5;
                            MEM[132 + (v131 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(356, 80 + v5, msg.data[78 + v5] >> 240);
                    }
                    v133 = (msg.data[v5] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x5af + 4], MEM[128:192]).gas(msg.gas);
                    require(v133, Error(32, 8, 'sav7:034'));
                    require(MEM[160] >= msg.data[62 + v5] >> 128, Error(32, 8, 'sav7:035'));
                    v0 = (msg.data[78 + v5] >> 240) + (80 + v5 - v5) + v5;
                } else if (47 == v4) {
                    v6 = v134 = 1;
                    v135 = v136 = msg.data[v5 + 20] >> 128;
                    0x3286(msg.data[v5] >> 96);
                    if (msg.data[v5] >> 96) {
                        0x277e(msg.data[v5] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v136);
                        v135 = v137 = 0;
                    }
                    0x31e2(v135);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else if (48 == v4) {
                    v6 = v138 = 1;
                    0x322b(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else if (49 == v4) {
                    v6 = v139 = 1;
                    if (0x48c89491 == msg.data[v5 + 4] >> 224) {
                        v140 = v141 = 0;
                        0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                    } else if (0xf3cd914c == msg.data[v5 + 4] >> 224) {
                        v140 = v142 = 0;
                    } else {
                        require(0x5a6bcfda == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:038'));
                        v140 = v143 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v144 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x5af] >> 224], MEM[128:128 + v2080_0x5V0x5af]).value(v140).gas(msg.gas);
                    require(v144, Error(32, 8, 'sav7:039'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (50 == v4) {
                    v6 = v145 = 1;
                    if (0xf83d08ba == msg.data[v5 + 4] >> 224) {
                        v146 = v147 = 0;
                        0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                    } else if (0xc11dedd == msg.data[v5 + 4] >> 224) {
                        v146 = v148 = 0;
                        0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                    } else if (0 == msg.data[v5 + 4] >> 224) {
                        v146 = v149 = 0;
                    } else if (0x55f48d01 == msg.data[v5 + 4] >> 224) {
                        v146 = v150 = 0;
                    } else {
                        require(0x645ec9b5 == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:042'));
                        v146 = v151 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v152 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x5af] >> 224], MEM[128:128 + v2198_0x5V0x5af]).value(v146).gas(msg.gas);
                    require(v152, Error(32, 8, 'sav7:03d'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (51 == v4) {
                    v6 = v153 = 1;
                    0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (52 == v4) {
                    v6 = v154 = 1;
                    0x32d5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else {
                    require(53 == v4, Error(32, 8, 'sav7:008'));
                    v6 = v155 = 1;
                    v156 = v157 = msg.data[v5 + 20 + 20 + 1] >> 128;
                    if (msg.data[v5 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                        0x29b5(msg.data[v5 + 20] >> 96, msg.data[v5] >> 96, v157);
                    }
                    MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                    MEM[132] = msg.data[v5 + 20 + 20] >> 248;
                    MEM[164] = v157;
                    MEM[196] = 1;
                    MEM[228] = this;
                    v156 = v158 = 0;
                    if ((msg.data[v5 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v158) {
                    }
                    v159 = (msg.data[v5] >> 96).call(MEM[128:260], MEM[128:160]).value(v156).gas(msg.gas);
                    require(v159, Error(32, 8, 'sav7:043'));
                    require(MEM[128] >= msg.data[v5 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                    v0 = v5 + 20 + 20 + 1 + 16 + 16 - v5 + v5;
                }
                v160 = v44.sellQuote(v40).gas(msg.gas);
                require(v160, Error(32, 8, 'sav7:00a'));
                v161 = v162 = MEM[96];
                // Unknown jump to Block ['0x13a8B0x5af', '0x1514B0x5af']. Refer to 3-address code (TAC);
                if (v37 > 0) {
                    require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                }
                v0 = v39 - v5 + v5;
                if (v37 > 0) {
                    require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                }
                v0 = v39 - v5 + v5;
                v163 = v44.sellBase(v40).gas(msg.gas);
                require(v163, Error(32, 8, 'sav7:00a'));
                v161 = v164 = MEM[96];
                // Unknown jump to Block ['0x1423B0x5af', '0x14c9B0x5af']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x13aaB0x5af. Refer to 3-address code (TAC);
            }
            v2 = v2 + v6;
        }
    }
    return 0;
}

function uniswapV3MintCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    0x941(4, msg.sender);
    v0 = v1 = varg2 >> 96;
    v0 = v2 = varg3 >> 96;
    if (v1 <= v2) {
    }
    if (v3 <= v4) {
    }
    require(!(msg.sender - address(keccak256(0xff1f98431c8ad98523631ae4a59f267346ea31f9840000000000000000000000, keccak256(v0, v0, varg4 >> 232), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))));
    if (varg0 > 0) {
        0x277e(v0, msg.sender, varg0);
    }
    if (varg1 > 0) {
        0x277e(v0, msg.sender, varg1);
    }
}

function uniswapV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public payable { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    0x941(1, msg.sender);
    v0 = v1 = varg2 >> 96;
    v0 = v2 = varg4 >> 96;
    if (v1 <= v2) {
    }
    require(!(msg.sender - address(keccak256(0xff1f98431c8ad98523631ae4a59f267346ea31f9840000000000000000000000, keccak256(v0, v0, varg3 >> 232), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))));
    if (varg6 >> 240 > 0) {
        if (varg7 >> 248 > 0) {
            v3 = v4 = 179;
            v5 = v6 = 0;
            while (v5 < varg7 >> 248) {
                v7 = msg.data[v3] >> 248;
                v8 = v3 + 1;
                if (1 == v7) {
                    v9 = v10 = 1;
                    v11 = v8 + 20 + 1;
                    if (msg.data[v8 + 20] >> 248 > 0) {
                        v11 = v11 + 20 + 16;
                        0x277e(msg.data[v11] >> 96, msg.data[v8] >> 96, msg.data[v11 + 20] >> 128);
                    }
                    v12 = v11 + 1 + 16 + 1;
                    if (0 == msg.data[v11 + 1 + 16] >> 248) {
                        v13 = v14 = msg.data[v12] >> 96;
                        v12 = v12 + 20;
                    } else {
                        v13 = v15 = this;
                    }
                    if (0 == msg.data[v11] >> 248) {
                        0x28c3(msg.data[v8] >> 96, msg.data[v11 + 1] >> 128, 0, v13);
                    } else {
                        0x28c3(msg.data[v8] >> 96, 0, msg.data[v11 + 1] >> 128, v13);
                    }
                    v3 = v12 - v8 + v8;
                } else if (2 == v7) {
                    v9 = v16 = 1;
                    v17 = v8 + 20 + 3 + 1;
                    if (0 == msg.data[v8 + 20 + 3] >> 248 & 0x10) {
                        v18 = v19 = 0x1000276a4;
                        if (!(msg.data[v8 + 20 + 3] >> 248 & 0x1)) {
                            v18 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                    } else {
                        v18 = v20 = msg.data[v17] >> 96;
                        v17 = v17 + 20;
                    }
                    v21 = v17 + 20 + 20 + 16 + 16 + 1;
                    v22 = this;
                    if (0 == msg.data[v17 + 20 + 20 + 16 + 16] >> 248) {
                        v22 = v23 = msg.data[v21] >> 96;
                        v21 = v21 + 20;
                    } else {
                        0x931(1, msg.data[v8] >> 96);
                    }
                    MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[100] = v22;
                    MEM[132] = msg.data[v8 + 20 + 3] >> 248 & 0x1;
                    MEM[164] = msg.data[v17 + 20 + 20] >> 128;
                    MEM[196] = v18;
                    MEM[228] = 160;
                    MEM[260] = (msg.data[1 + v21] >> 240) + 46;
                    MEM[324] = 0;
                    MEM[292] = msg.data[v17] >> 96 << 96;
                    MEM[312] = msg.data[v8 + 20] >> 232 << 232;
                    MEM[315] = msg.data[v17 + 20] >> 96 << 96;
                    MEM[335] = msg.data[v21] >> 248 << 248;
                    MEM[336] = msg.data[1 + v21] >> 240 << 240;
                    v24 = uint8.max + 1;
                    if (msg.data[1 + v21] >> 240 > 0) {
                        v24 = v25 = 238 + (msg.data[1 + v21] >> 240);
                        if (v25 % 32 > 0) {
                            v24 = v26 = (v25 >> 5) + 1 << 5;
                            MEM[100 + (v25 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(338, 3 + v21, msg.data[1 + v21] >> 240);
                    }
                    v27 = (msg.data[v8] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x272V0x16c + 4], MEM[96:160]).gas(msg.gas);
                    require(v27, Error(32, 8, 'sav7:004'));
                    v28 = v29 = 0 - MEM[128];
                    if (!(msg.data[v8 + 20 + 3] >> 248 & 0x1)) {
                        v28 = v30 = 0 - MEM[96];
                    }
                    if (msg.data[v17 + 20 + 20 + 16] >> 128 > 0) {
                        require(msg.data[v17 + 20 + 20 + 16] >> 128 <= v28, Error(32, 8, 'sav7:005'));
                    }
                    v3 = (msg.data[1 + v21] >> 240) + (3 + v21 - v8) + v8;
                } else if (3 == v7) {
                    v9 = v31 = 1;
                    0x29b5(msg.data[v8 + 1 + 20] >> 96, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20 + 1 + 1] >> 128);
                    0x2925(msg.data[v8] >> 248, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 248, msg.data[v8 + 1 + 20 + 20 + 1] >> 248, msg.data[v8 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v8 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                    v3 = v8 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v8 + v8;
                } else if (4 == v7) {
                    v9 = v32 = 1;
                    0x29b5(msg.data[v8 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v8 + 32 + 20 + 20] >> 128);
                    0x2a67(msg.data[v8], 0, msg.data[v8 + 32] >> 96, msg.data[v8 + 32 + 20] >> 96, msg.data[v8 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v8 + 32 + 20 + 20 + 16] >> 128);
                    v3 = v8 + 32 + 20 + 20 + 16 + 16 - v8 + v8;
                } else {
                    if (5 == v7) {
                        v33 = v34 = 3644;
                        v9 = v35 = 1;
                        v36 = v8 + 1 + 1;
                        v37 = v38 = 0;
                        if (msg.data[v8 + 1] >> 248 > v38) {
                            v37 = v39 = msg.data[v36] >> 128;
                            v36 = v36 + 16;
                        }
                        v40 = v41 = msg.data[v36] >> 128;
                        v42 = v36 + 16 + 1;
                        if (0 == msg.data[v36 + 16] >> 248) {
                            v43 = v44 = msg.data[v42] >> 96;
                            v42 = v42 + 20;
                        } else {
                            v43 = v45 = this;
                        }
                        if (0 == msg.data[v8] >> 248) {
                            v46 = 5155;
                            if (v37 > 0) {
                                0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v37);
                            }
                            v47 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        } else {
                            v48 = 5032;
                            if (v37 > 0) {
                                0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v37);
                            }
                            v47 = v49 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        }
                    } else if (6 == v7) {
                        v9 = v50 = 1;
                        if (0 == msg.data[v8] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v8 + 1] >> 128);
                            0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v8 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v8 + 1] >> 128);
                            0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v8 + 1] >> 128);
                        }
                        v3 = v8 + 1 + 16 - v8 + v8;
                    } else if (7 == v7) {
                        v9 = v51 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            v52 = block.coinbase.call().value(msg.data[v8] >> 128).gas(msg.gas);
                            require(v52, Error(32, 8, 'sav7:040'));
                        }
                        v3 = 16 + v8;
                    } else if (8 == v7) {
                        v9 = v53 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                            MEM[100] = msg.data[v8] >> 128;
                            v54 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                            require(v54, Error(32, 8, 'sav7:00c'));
                        }
                        v3 = 16 + v8;
                    } else if (9 == v7) {
                        v9 = v55 = 1;
                        if (msg.data[v8] >> 128 > 0) {
                            v56 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v8] >> 128).gas(msg.gas);
                            require(v56, Error(32, 8, 'sav7:03f'));
                        }
                        v3 = 16 + v8;
                    } else if (10 == v7) {
                        v9 = v57 = 1;
                        0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                        v58 = v8 + 1;
                        require(msg.data[v8] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                        MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 128;
                        MEM[228] = msg.data[v8] >> 248;
                        v59 = v60 = 260;
                        MEM[164] = 128 + (msg.data[v8] >> 248 << 5) + 32;
                        MEM[100 + (128 + (msg.data[v8] >> 248 << 5) + 32)] = msg.data[v8] >> 248;
                        v61 = v62 = 100 + (128 + (msg.data[v8] >> 248 << 5) + 32) + 32;
                        MEM[196] = 128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32;
                        v63 = v64 = 0;
                        while (v63 < msg.data[v8] >> 248) {
                            v58 = v58 + 20 + 16;
                            MEM[v59] = msg.data[v58] >> 96;
                            v59 = v59 + 32;
                            MEM[v61] = msg.data[v58 + 20] >> 128;
                            v61 = v61 + 32;
                            v63 = v63 + 1;
                        }
                        MEM[100 + (128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32)] = msg.data[v58] >> 240;
                        v65 = 128 + (msg.data[v8] >> 248 << 5) + 32 + (msg.data[v8] >> 248 << 5) + 32 + 32;
                        if (msg.data[v58] >> 240 > 0) {
                            v65 = v66 = v65 + (msg.data[v58] >> 240);
                            if (v66 % 32 > 0) {
                                v65 = v67 = (v66 >> 5) + 1 << 5;
                                MEM[100 + (v66 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(100 + v65, v58 + 2, msg.data[v58] >> 240);
                        }
                        v68 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x272V0x16c + 4], MEM[96:96]).gas(msg.gas);
                        require(v68, Error(32, 8, 'sav7:00e'));
                        v3 = (msg.data[v58] >> 240) + (v58 + 2 - v8) + v8;
                    } else if (11 == v7) {
                        v9 = v69 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8 + 20] >> 128);
                        0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this);
                        v3 = 36 + v8;
                    } else if (12 == v7) {
                        v9 = v70 = 1;
                        v71 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this).gas(msg.gas);
                        require(v71, Error(32, 8, 'sav7:010'));
                        v3 = 36 + v8;
                    } else if (13 == v7) {
                        v9 = v72 = 1;
                        v73 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v73, Error(32, 8, 'sav7:011'));
                        v3 = 37 + v8;
                    } else if (14 == v7) {
                        v9 = v74 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8 + 20] >> 128);
                        0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, this);
                        v3 = 37 + v8;
                    } else if (15 == v7) {
                        v9 = v75 = 1;
                        if (1 == msg.data[v8 + 20 + 16] >> 248) {
                            v76 = 0x35b5e5ad9019092c665357240f594e;
                        } else {
                            require(2 == msg.data[v8 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                            v76 = v77 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                        }
                        if (msg.data[v8 + 20] >> 128 > 0) {
                            0x277e(msg.data[v8] >> 96, v76, msg.data[v8 + 20] >> 128);
                        }
                        v3 = 37 + v8;
                    } else if (16 == v7) {
                        v9 = v78 = 1;
                        0x29b5(msg.data[v8 + 1 + 20] >> 96, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 128);
                        if (0 == msg.data[v8] >> 248) {
                            0x2e0d(msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20 + 16] >> 128, msg.data[v8 + 1 + 20 + 20] >> 128);
                        } else {
                            0x2db3(msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20 + 20] >> 128, msg.data[v8 + 1 + 20 + 20 + 16] >> 128);
                        }
                        v3 = v8 + 1 + 20 + 20 + 16 + 16 - v8 + v8;
                    } else if (17 == v7) {
                        v9 = v79 = 1;
                        0x29b5(msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 128);
                        v3 = 56 + v8;
                    } else if (22 == v7) {
                        v9 = v80 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8 + 20] >> 128);
                        0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this);
                        v3 = 36 + v8;
                    } else if (23 == v7) {
                        v9 = v81 = 1;
                        v82 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, this).gas(msg.gas);
                        require(v82, Error(32, 8, 'sav7:010'));
                        v3 = 36 + v8;
                    } else if (24 == v7) {
                        v9 = v83 = 1;
                        v84 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v84, Error(32, 8, 'sav7:011'));
                        v3 = 37 + v8;
                    } else if (25 == v7) {
                        v9 = v85 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8 + 20] >> 128);
                        0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v8] >> 96, msg.data[v8 + 20] >> 128, msg.data[v8 + 20 + 16] >> 248, this);
                        v3 = 37 + v8;
                    } else if (31 == v7) {
                        v9 = v86 = 1;
                        0x29b5(msg.data[v8] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8 + 20 + 20 + 3 + 3 + 3] >> 128);
                        0x29b5(msg.data[v8 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                        0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 232, msg.data[v8 + 20 + 20 + 3] >> 232, msg.data[v8 + 20 + 20 + 3 + 3] >> 232, msg.data[v8 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                        v3 = v8 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v8 + v8;
                    } else if (32 == v7) {
                        v9 = v87 = 1;
                        0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 192, msg.data[v8 + 8] >> 128, 0, 0, msg.data[v8 + 8 + 16] >> 192);
                        0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v8] >> 192, this, uint128.max, uint128.max);
                        v3 = v8 + 8 + 16 + 8 - v8 + v8;
                    } else if (33 == v7) {
                        v9 = v88 = 1;
                        0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v8] >> 128);
                        0x30f5(msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (34 == v7) {
                        v9 = v89 = 1;
                        0x3144(msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (35 == v7) {
                        v9 = v90 = 1;
                        0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                        MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                        MEM[164] = msg.data[v8] >> 128;
                        MEM[196] = 128;
                        MEM[228] = (msg.data[v8 + 16] >> 240) + 2;
                        MEM[260] = msg.data[v8 + 16] >> 240 << 240;
                        v91 = v92 = 192;
                        if (msg.data[v8 + 16] >> 240 > 0) {
                            v91 = v93 = 162 + (msg.data[v8 + 16] >> 240);
                            if (v93 % 32 > 0) {
                                v91 = v94 = (v93 >> 5) + 1 << 5;
                                MEM[100 + (v93 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(262, v8 + 16 + 2, msg.data[v8 + 16] >> 240);
                        }
                        v95 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x272V0x16c + 4], MEM[96:96]).gas(msg.gas);
                        require(v95, Error(32, 8, 'sav7:02b'));
                        v3 = (msg.data[v8 + 16] >> 240) + (v8 + 16 + 2 - v8) + v8;
                    } else if (36 == v7) {
                        v9 = v96 = 1;
                        0x3193(msg.data[v8] >> 248);
                        v3 = v8 + 1 - v8 + v8;
                    } else if (37 == v7) {
                        v9 = v97 = 1;
                        if (0 == msg.data[v8] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v8 + 1] >> 128);
                            0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v8 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v8 + 1] >> 128);
                            0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v8 + 1] >> 128);
                        }
                        v3 = v8 + 1 + 16 - v8 + v8;
                    } else if (38 == v7) {
                        v33 = v98 = 3164;
                        v9 = v99 = 1;
                        v47 = v100 = msg.data[v8] >> 96;
                        v101 = v8 + 20 + 1 + 1;
                        v102 = v103 = 0;
                        v104 = v105 = 0;
                        if (msg.data[v8 + 20 + 1] >> 248 > v105) {
                            v102 = v106 = msg.data[v101] >> 128;
                            v104 = v107 = msg.data[v101 + 16] >> 96;
                            v101 = v101 + 16 + 20;
                        }
                        v40 = msg.data[v101] >> 128;
                        v42 = v101 + 16 + 1;
                        if (0 == msg.data[v101 + 16] >> 248) {
                            v43 = msg.data[v42] >> 96;
                            v42 = v42 + 20;
                        } else {
                            v43 = v108 = this;
                        }
                        if (v102 > 0) {
                            0x277e(v104, v100, v102);
                        }
                        if (0 == msg.data[v8 + 20] >> 248) {
                            v48 = v109 = 5396;
                            // Unknown jump to Block 0x2d65B0x272B0x16c. Refer to 3-address code (TAC);
                        } else {
                            v46 = v110 = 5321;
                        }
                    } else if (39 == v7) {
                        v9 = v111 = 1;
                        0x931(4, msg.data[v8] >> 96);
                        0x2faf(msg.data[v8] >> 96, this, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3] >> 128, msg.data[v8 + 20 + 3 + 3 + 16] >> 96, msg.data[v8 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v8 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                        v3 = v8 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v8 + v8;
                    } else if (40 == v7) {
                        v9 = v112 = 1;
                        0x303f(msg.data[v8] >> 96, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3] >> 128);
                        0x3095(msg.data[v8] >> 96, this, msg.data[v8 + 20] >> 232, msg.data[v8 + 20 + 3] >> 232, msg.data[v8 + 20 + 3 + 3 + 16] >> 128, msg.data[v8 + 20 + 3 + 3 + 16 + 16] >> 128);
                        v3 = v8 + 20 + 3 + 3 + 16 + 16 + 16 - v8 + v8;
                    } else if (41 == v7) {
                        v9 = v113 = 1;
                        0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                        0x29b5(msg.data[v8] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v8 + 20] >> 128);
                        MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v8] >> 96;
                        MEM[132] = msg.data[v8 + 20] >> 128;
                        MEM[164] = 96;
                        MEM[196] = (msg.data[v8 + 20 + 16] >> 240) + 2;
                        MEM[228] = msg.data[v8 + 20 + 16] >> 240 << 240;
                        v114 = v115 = 160;
                        if (msg.data[v8 + 20 + 16] >> 240 > 0) {
                            v114 = v116 = 130 + (msg.data[v8 + 20 + 16] >> 240);
                            if (v116 % 32 > 0) {
                                v114 = v117 = (v116 >> 5) + 1 << 5;
                                MEM[100 + (v116 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(230, v8 + 20 + 16 + 2, msg.data[v8 + 20 + 16] >> 240);
                        }
                        v118 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x272V0x16c + 4], MEM[96:96]).gas(msg.gas);
                        require(v118, Error(32, 8, 'sav7:030'));
                        0x29b5(msg.data[v8] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                        v3 = (msg.data[v8 + 20 + 16] >> 240) + (v8 + 20 + 16 + 2 - v8) + v8;
                    } else if (42 == v7) {
                        v9 = v119 = 1;
                        0x29b5(msg.data[v8] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v8 + 20 + 20] >> 128);
                        0x2a05(msg.data[v8] >> 96, msg.data[v8 + 20] >> 96, msg.data[v8 + 20 + 20] >> 128, 0);
                        v3 = 56 + v8;
                    } else if (43 == v7) {
                        v9 = v120 = 1;
                        if (0x286f580d == msg.data[v8 + 4] >> 224) {
                            v121 = v122 = 0;
                        } else {
                            require(0x8eb1b65e == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:032'));
                            v121 = v123 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v124 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x272V0x16c] >> 224], MEM[128:128 + v1f68_0x5V0x272V0x16c]).value(v121).gas(msg.gas);
                        require(v124, Error(32, 8, 'sav7:033'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (44 == v7) {
                        v9 = v125 = 1;
                        0x2925(msg.data[v8] >> 248, msg.data[v8 + 1] >> 96, msg.data[v8 + 1 + 20] >> 248, msg.data[v8 + 1 + 20 + 1] >> 248, msg.data[v8 + 1 + 20 + 1 + 1] >> 128, msg.data[v8 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                        v3 = v8 + 1 + 20 + 1 + 1 + 16 + 16 - v8 + v8;
                    } else if (45 == v7) {
                        v9 = v126 = 1;
                        if (0x42e3d72c == msg.data[v8 + 20 + 4] >> 224) {
                            v127 = v128 = 0;
                            0x931(9, msg.data[v8] >> 96);
                        } else {
                            require(0xf957f1ca == msg.data[v8 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                            v127 = v129 = 0;
                        }
                        CALLDATACOPY(128, v8 + 20 + 4, msg.data[v8 + 20] >> 224);
                        v130 = (msg.data[v8] >> 96).call(MEM[128:128 + msg.data[v99bV0x272V0x16c + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x272V0x16c]).value(v127).gas(msg.gas);
                        require(v130, Error(32, 8, 'sav7:037'));
                        v3 = v8 + 20 + 4 + (msg.data[v8 + 20] >> 224) - v8 + v8;
                    } else if (46 == v7) {
                        v9 = v131 = 1;
                        0x277e(msg.data[20 + v8] >> 96, msg.data[v8] >> 96, msg.data[40 + v8] >> 128);
                        MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = this;
                        MEM[164] = msg.data[40 + v8] >> 128;
                        MEM[196] = msg.data[56 + v8] >> 248;
                        MEM[228] = msg.data[57 + v8] >> 248;
                        MEM[260] = msg.data[58 + v8] >> 224;
                        MEM[292] = 192;
                        MEM[324] = msg.data[78 + v8] >> 240;
                        v132 = v133 = 224;
                        if (msg.data[78 + v8] >> 240 > 0) {
                            v132 = v134 = v133 + (msg.data[78 + v8] >> 240);
                            if (v134 % 32 > 0) {
                                v132 = v135 = (v134 >> 5) + 1 << 5;
                                MEM[132 + (v134 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(356, 80 + v8, msg.data[78 + v8] >> 240);
                        }
                        v136 = (msg.data[v8] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x272V0x16c + 4], MEM[128:192]).gas(msg.gas);
                        require(v136, Error(32, 8, 'sav7:034'));
                        require(MEM[160] >= msg.data[62 + v8] >> 128, Error(32, 8, 'sav7:035'));
                        v3 = (msg.data[78 + v8] >> 240) + (80 + v8 - v8) + v8;
                    } else if (47 == v7) {
                        v9 = v137 = 1;
                        v138 = v139 = msg.data[v8 + 20] >> 128;
                        0x3286(msg.data[v8] >> 96);
                        if (msg.data[v8] >> 96) {
                            0x277e(msg.data[v8] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v139);
                            v138 = v140 = 0;
                        }
                        0x31e2(v138);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else if (48 == v7) {
                        v9 = v141 = 1;
                        0x322b(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else if (49 == v7) {
                        v9 = v142 = 1;
                        if (0x48c89491 == msg.data[v8 + 4] >> 224) {
                            v143 = v144 = 0;
                            0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                        } else if (0xf3cd914c == msg.data[v8 + 4] >> 224) {
                            v143 = v145 = 0;
                        } else {
                            require(0x5a6bcfda == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:038'));
                            v143 = v146 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v147 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x272V0x16c] >> 224], MEM[128:128 + v2080_0x5V0x272V0x16c]).value(v143).gas(msg.gas);
                        require(v147, Error(32, 8, 'sav7:039'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (50 == v7) {
                        v9 = v148 = 1;
                        if (0xf83d08ba == msg.data[v8 + 4] >> 224) {
                            v149 = v150 = 0;
                            0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0xc11dedd == msg.data[v8 + 4] >> 224) {
                            v149 = v151 = 0;
                            0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0 == msg.data[v8 + 4] >> 224) {
                            v149 = v152 = 0;
                        } else if (0x55f48d01 == msg.data[v8 + 4] >> 224) {
                            v149 = v153 = 0;
                        } else {
                            require(0x645ec9b5 == msg.data[v8 + 4] >> 224, Error(32, 8, 'sav7:042'));
                            v149 = v154 = 0;
                        }
                        CALLDATACOPY(128, v8 + 4, msg.data[v8] >> 224);
                        v155 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x272V0x16c] >> 224], MEM[128:128 + v2198_0x5V0x272V0x16c]).value(v149).gas(msg.gas);
                        require(v155, Error(32, 8, 'sav7:03d'));
                        v3 = v8 + 4 + (msg.data[v8] >> 224) - v8 + v8;
                    } else if (51 == v7) {
                        v9 = v156 = 1;
                        0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v8] >> 128);
                        v3 = v8 + 16 - v8 + v8;
                    } else if (52 == v7) {
                        v9 = v157 = 1;
                        0x32d5(msg.data[v8] >> 96, msg.data[v8 + 20] >> 128);
                        v3 = v8 + 20 + 16 - v8 + v8;
                    } else {
                        require(53 == v7, Error(32, 8, 'sav7:008'));
                        v9 = v158 = 1;
                        v159 = v160 = msg.data[v8 + 20 + 20 + 1] >> 128;
                        if (msg.data[v8 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            0x29b5(msg.data[v8 + 20] >> 96, msg.data[v8] >> 96, v160);
                        }
                        MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = msg.data[v8 + 20 + 20] >> 248;
                        MEM[164] = v160;
                        MEM[196] = 1;
                        MEM[228] = this;
                        v159 = v161 = 0;
                        if ((msg.data[v8 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v161) {
                        }
                        v162 = (msg.data[v8] >> 96).call(MEM[128:260], MEM[128:160]).value(v159).gas(msg.gas);
                        require(v162, Error(32, 8, 'sav7:043'));
                        require(MEM[128] >= msg.data[v8 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                        v3 = v8 + 20 + 20 + 1 + 16 + 16 - v8 + v8;
                    }
                    v163 = v47.sellQuote(v43).gas(msg.gas);
                    require(v163, Error(32, 8, 'sav7:00a'));
                    v164 = v165 = MEM[96];
                    // Unknown jump to Block ['0x13a8B0x272B0x16c', '0x1514B0x272B0x16c']. Refer to 3-address code (TAC);
                    if (v40 > 0) {
                        require(!(v40 - v164), Error(32, 8, 'sav7:00b'));
                    }
                    v3 = v42 - v8 + v8;
                    if (v40 > 0) {
                        require(!(v40 - v164), Error(32, 8, 'sav7:00b'));
                    }
                    v3 = v42 - v8 + v8;
                    v166 = v47.sellBase(v43).gas(msg.gas);
                    require(v166, Error(32, 8, 'sav7:00a'));
                    v164 = v167 = MEM[96];
                    // Unknown jump to Block ['0x1423B0x272B0x16c', '0x14c9B0x272B0x16c']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x13aaB0x272B0x16c. Refer to 3-address code (TAC);
                }
                v5 = v5 + v9;
            }
        }
    }
    if (varg5 >> 248 > 0) {
        if (varg0 <= 0) {
        }
        if (v168 > 0) {
            0x277e(v1, msg.sender, v168);
        }
    }
}

function initialize008joDSK(string varg0, string varg1, uint256 varg2) public payable { 
    if (varg0 >> 224 > 0) {
        require(!((block.blockhash(block.number - 1) >> 224) - (varg0 >> 224)), Error(32, 8, 'sav7:001'));
    }
    if (varg1 >> 224 > 0) {
        require(!(block.timestamp - (varg1 >> 224)), Error(32, 8, 'sav7:001'));
    }
    if (0x35b5e5ad9019092c665357240f594e != msg.sender) {
        if (0x99cb7fc48a935bceb9f05bbae54e8987 != msg.sender) {
            if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != msg.sender) {
                if (0x654fae4aa229d104cabead47e56703f58b174be4 != msg.sender) {
                    if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != msg.sender) {
                        require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == msg.sender, Error(32, 8, 'sav7:000'));
                    }
                }
            }
        }
    }
    if (varg2 >> 248 > 0) {
        v0 = v1 = 13;
        v2 = v3 = 0;
        while (v2 < varg2 >> 248) {
            v4 = msg.data[v0] >> 248;
            v5 = v0 + 1;
            if (1 == v4) {
                v6 = v7 = 1;
                v8 = v5 + 20 + 1;
                if (msg.data[v5 + 20] >> 248 > 0) {
                    v8 = v8 + 20 + 16;
                    0x277e(msg.data[v8] >> 96, msg.data[v5] >> 96, msg.data[v8 + 20] >> 128);
                }
                v9 = v8 + 1 + 16 + 1;
                if (0 == msg.data[v8 + 1 + 16] >> 248) {
                    v10 = v11 = msg.data[v9] >> 96;
                    v9 = v9 + 20;
                } else {
                    v10 = v12 = this;
                }
                if (0 == msg.data[v8] >> 248) {
                    0x28c3(msg.data[v5] >> 96, msg.data[v8 + 1] >> 128, 0, v10);
                } else {
                    0x28c3(msg.data[v5] >> 96, 0, msg.data[v8 + 1] >> 128, v10);
                }
                v0 = v9 - v5 + v5;
            } else if (2 == v4) {
                v6 = v13 = 1;
                v14 = v5 + 20 + 3 + 1;
                if (0 == msg.data[v5 + 20 + 3] >> 248 & 0x10) {
                    v15 = v16 = 0x1000276a4;
                    if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                        v15 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                } else {
                    v15 = v17 = msg.data[v14] >> 96;
                    v14 = v14 + 20;
                }
                v18 = v14 + 20 + 20 + 16 + 16 + 1;
                v19 = this;
                if (0 == msg.data[v14 + 20 + 20 + 16 + 16] >> 248) {
                    v19 = v20 = msg.data[v18] >> 96;
                    v18 = v18 + 20;
                } else {
                    0x931(1, msg.data[v5] >> 96);
                }
                MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[100] = v19;
                MEM[132] = msg.data[v5 + 20 + 3] >> 248 & 0x1;
                MEM[164] = msg.data[v14 + 20 + 20] >> 128;
                MEM[196] = v15;
                MEM[228] = 160;
                MEM[260] = (msg.data[1 + v18] >> 240) + 46;
                MEM[324] = 0;
                MEM[292] = msg.data[v14] >> 96 << 96;
                MEM[312] = msg.data[v5 + 20] >> 232 << 232;
                MEM[315] = msg.data[v14 + 20] >> 96 << 96;
                MEM[335] = msg.data[v18] >> 248 << 248;
                MEM[336] = msg.data[1 + v18] >> 240 << 240;
                v21 = uint8.max + 1;
                if (msg.data[1 + v18] >> 240 > 0) {
                    v21 = v22 = 238 + (msg.data[1 + v18] >> 240);
                    if (v22 % 32 > 0) {
                        v21 = v23 = (v22 >> 5) + 1 << 5;
                        MEM[100 + (v22 >> 5 << 5)] = 0;
                    }
                    CALLDATACOPY(338, 3 + v18, msg.data[1 + v18] >> 240);
                }
                v24 = (msg.data[v5] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x85dV0x17b + 4], MEM[96:160]).gas(msg.gas);
                require(v24, Error(32, 8, 'sav7:004'));
                v25 = v26 = 0 - MEM[128];
                if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                    v25 = v27 = 0 - MEM[96];
                }
                if (msg.data[v14 + 20 + 20 + 16] >> 128 > 0) {
                    require(msg.data[v14 + 20 + 20 + 16] >> 128 <= v25, Error(32, 8, 'sav7:005'));
                }
                v0 = (msg.data[1 + v18] >> 240) + (3 + v18 - v5) + v5;
            } else if (3 == v4) {
                v6 = v28 = 1;
                0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128);
                0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 248, msg.data[v5 + 1 + 20 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                v0 = v5 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
            } else if (4 == v4) {
                v6 = v29 = 1;
                0x29b5(msg.data[v5 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v5 + 32 + 20 + 20] >> 128);
                0x2a67(msg.data[v5], 0, msg.data[v5 + 32] >> 96, msg.data[v5 + 32 + 20] >> 96, msg.data[v5 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v5 + 32 + 20 + 20 + 16] >> 128);
                v0 = v5 + 32 + 20 + 20 + 16 + 16 - v5 + v5;
            } else {
                if (5 == v4) {
                    v30 = v31 = 3644;
                    v6 = v32 = 1;
                    v33 = v5 + 1 + 1;
                    v34 = v35 = 0;
                    if (msg.data[v5 + 1] >> 248 > v35) {
                        v34 = v36 = msg.data[v33] >> 128;
                        v33 = v33 + 16;
                    }
                    v37 = v38 = msg.data[v33] >> 128;
                    v39 = v33 + 16 + 1;
                    if (0 == msg.data[v33 + 16] >> 248) {
                        v40 = v41 = msg.data[v39] >> 96;
                        v39 = v39 + 20;
                    } else {
                        v40 = v42 = this;
                    }
                    if (0 == msg.data[v5] >> 248) {
                        v43 = 5155;
                        if (v34 > 0) {
                            0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                        }
                        v44 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                    } else {
                        v45 = 5032;
                        if (v34 > 0) {
                            0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                        }
                        v44 = v46 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                    }
                } else if (6 == v4) {
                    v6 = v47 = 1;
                    if (0 == msg.data[v5] >> 248) {
                        0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v5 + 1] >> 128);
                        0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                    } else {
                        0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v5 + 1] >> 128);
                        0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v5 + 1] >> 128);
                    }
                    v0 = v5 + 1 + 16 - v5 + v5;
                } else if (7 == v4) {
                    v6 = v48 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        v49 = block.coinbase.call().value(msg.data[v5] >> 128).gas(msg.gas);
                        require(v49, Error(32, 8, 'sav7:040'));
                    }
                    v0 = 16 + v5;
                } else if (8 == v4) {
                    v6 = v50 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v5] >> 128;
                        v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                        require(v51, Error(32, 8, 'sav7:00c'));
                    }
                    v0 = 16 + v5;
                } else if (9 == v4) {
                    v6 = v52 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        v53 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v5] >> 128).gas(msg.gas);
                        require(v53, Error(32, 8, 'sav7:03f'));
                    }
                    v0 = 16 + v5;
                } else if (10 == v4) {
                    v6 = v54 = 1;
                    0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                    v55 = v5 + 1;
                    require(msg.data[v5] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                    MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                    MEM[100] = this;
                    MEM[132] = 128;
                    MEM[228] = msg.data[v5] >> 248;
                    v56 = v57 = 260;
                    MEM[164] = 128 + (msg.data[v5] >> 248 << 5) + 32;
                    MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v5] >> 248;
                    v58 = v59 = 100 + (128 + (msg.data[v5] >> 248 << 5) + 32) + 32;
                    MEM[196] = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32;
                    v60 = v61 = 0;
                    while (v60 < msg.data[v5] >> 248) {
                        v55 = v55 + 20 + 16;
                        MEM[v56] = msg.data[v55] >> 96;
                        v56 = v56 + 32;
                        MEM[v58] = msg.data[v55 + 20] >> 128;
                        v58 = v58 + 32;
                        v60 = v60 + 1;
                    }
                    MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v55] >> 240;
                    v62 = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32 + 32;
                    if (msg.data[v55] >> 240 > 0) {
                        v62 = v63 = v62 + (msg.data[v55] >> 240);
                        if (v63 % 32 > 0) {
                            v62 = v64 = (v63 >> 5) + 1 << 5;
                            MEM[100 + (v63 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(100 + v62, v55 + 2, msg.data[v55] >> 240);
                    }
                    v65 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x85dV0x17b + 4], MEM[96:96]).gas(msg.gas);
                    require(v65, Error(32, 8, 'sav7:00e'));
                    v0 = (msg.data[v55] >> 240) + (v55 + 2 - v5) + v5;
                } else if (11 == v4) {
                    v6 = v66 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                    0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                    v0 = 36 + v5;
                } else if (12 == v4) {
                    v6 = v67 = 1;
                    v68 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                    require(v68, Error(32, 8, 'sav7:010'));
                    v0 = 36 + v5;
                } else if (13 == v4) {
                    v6 = v69 = 1;
                    v70 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                    require(v70, Error(32, 8, 'sav7:011'));
                    v0 = 37 + v5;
                } else if (14 == v4) {
                    v6 = v71 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                    0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                    v0 = 37 + v5;
                } else if (15 == v4) {
                    v6 = v72 = 1;
                    if (1 == msg.data[v5 + 20 + 16] >> 248) {
                        v73 = 0x35b5e5ad9019092c665357240f594e;
                    } else {
                        require(2 == msg.data[v5 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                        v73 = v74 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                    }
                    if (msg.data[v5 + 20] >> 128 > 0) {
                        0x277e(msg.data[v5] >> 96, v73, msg.data[v5 + 20] >> 128);
                    }
                    v0 = 37 + v5;
                } else if (16 == v4) {
                    v6 = v75 = 1;
                    0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128);
                    if (0 == msg.data[v5] >> 248) {
                        0x2e0d(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 16] >> 128, msg.data[v5 + 1 + 20 + 20] >> 128);
                    } else {
                        0x2db3(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128, msg.data[v5 + 1 + 20 + 20 + 16] >> 128);
                    }
                    v0 = v5 + 1 + 20 + 20 + 16 + 16 - v5 + v5;
                } else if (17 == v4) {
                    v6 = v76 = 1;
                    0x29b5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128);
                    v0 = 56 + v5;
                } else if (22 == v4) {
                    v6 = v77 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                    0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                    v0 = 36 + v5;
                } else if (23 == v4) {
                    v6 = v78 = 1;
                    v79 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                    require(v79, Error(32, 8, 'sav7:010'));
                    v0 = 36 + v5;
                } else if (24 == v4) {
                    v6 = v80 = 1;
                    v81 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                    require(v81, Error(32, 8, 'sav7:011'));
                    v0 = 37 + v5;
                } else if (25 == v4) {
                    v6 = v82 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                    0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                    v0 = 37 + v5;
                } else if (31 == v4) {
                    v6 = v83 = 1;
                    0x29b5(msg.data[v5] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128);
                    0x29b5(msg.data[v5 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                    0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 232, msg.data[v5 + 20 + 20 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                    v0 = v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v5 + v5;
                } else if (32 == v4) {
                    v6 = v84 = 1;
                    0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, msg.data[v5 + 8] >> 128, 0, 0, msg.data[v5 + 8 + 16] >> 192);
                    0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, this, uint128.max, uint128.max);
                    v0 = v5 + 8 + 16 + 8 - v5 + v5;
                } else if (33 == v4) {
                    v6 = v85 = 1;
                    0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v5] >> 128);
                    0x30f5(msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (34 == v4) {
                    v6 = v86 = 1;
                    0x3144(msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (35 == v4) {
                    v6 = v87 = 1;
                    0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                    MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                    MEM[100] = this;
                    MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    MEM[164] = msg.data[v5] >> 128;
                    MEM[196] = 128;
                    MEM[228] = (msg.data[v5 + 16] >> 240) + 2;
                    MEM[260] = msg.data[v5 + 16] >> 240 << 240;
                    v88 = v89 = 192;
                    if (msg.data[v5 + 16] >> 240 > 0) {
                        v88 = v90 = 162 + (msg.data[v5 + 16] >> 240);
                        if (v90 % 32 > 0) {
                            v88 = v91 = (v90 >> 5) + 1 << 5;
                            MEM[100 + (v90 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(262, v5 + 16 + 2, msg.data[v5 + 16] >> 240);
                    }
                    v92 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x85dV0x17b + 4], MEM[96:96]).gas(msg.gas);
                    require(v92, Error(32, 8, 'sav7:02b'));
                    v0 = (msg.data[v5 + 16] >> 240) + (v5 + 16 + 2 - v5) + v5;
                } else if (36 == v4) {
                    v6 = v93 = 1;
                    0x3193(msg.data[v5] >> 248);
                    v0 = v5 + 1 - v5 + v5;
                } else if (37 == v4) {
                    v6 = v94 = 1;
                    if (0 == msg.data[v5] >> 248) {
                        0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                        0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                    } else {
                        0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                        0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v5 + 1] >> 128);
                    }
                    v0 = v5 + 1 + 16 - v5 + v5;
                } else if (38 == v4) {
                    v30 = v95 = 3164;
                    v6 = v96 = 1;
                    v44 = v97 = msg.data[v5] >> 96;
                    v98 = v5 + 20 + 1 + 1;
                    v99 = v100 = 0;
                    v101 = v102 = 0;
                    if (msg.data[v5 + 20 + 1] >> 248 > v102) {
                        v99 = v103 = msg.data[v98] >> 128;
                        v101 = v104 = msg.data[v98 + 16] >> 96;
                        v98 = v98 + 16 + 20;
                    }
                    v37 = msg.data[v98] >> 128;
                    v39 = v98 + 16 + 1;
                    if (0 == msg.data[v98 + 16] >> 248) {
                        v40 = msg.data[v39] >> 96;
                        v39 = v39 + 20;
                    } else {
                        v40 = v105 = this;
                    }
                    if (v99 > 0) {
                        0x277e(v101, v97, v99);
                    }
                    if (0 == msg.data[v5 + 20] >> 248) {
                        v45 = v106 = 5396;
                        // Unknown jump to Block 0x2d65B0x85dB0x17b. Refer to 3-address code (TAC);
                    } else {
                        v43 = v107 = 5321;
                    }
                } else if (39 == v4) {
                    v6 = v108 = 1;
                    0x931(4, msg.data[v5] >> 96);
                    0x2faf(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128, msg.data[v5 + 20 + 3 + 3 + 16] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                    v0 = v5 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v5 + v5;
                } else if (40 == v4) {
                    v6 = v109 = 1;
                    0x303f(msg.data[v5] >> 96, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128);
                    0x3095(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 3 + 3 + 16 + 16] >> 128);
                    v0 = v5 + 20 + 3 + 3 + 16 + 16 + 16 - v5 + v5;
                } else if (41 == v4) {
                    v6 = v110 = 1;
                    0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                    0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v5 + 20] >> 128);
                    MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                    MEM[100] = msg.data[v5] >> 96;
                    MEM[132] = msg.data[v5 + 20] >> 128;
                    MEM[164] = 96;
                    MEM[196] = (msg.data[v5 + 20 + 16] >> 240) + 2;
                    MEM[228] = msg.data[v5 + 20 + 16] >> 240 << 240;
                    v111 = v112 = 160;
                    if (msg.data[v5 + 20 + 16] >> 240 > 0) {
                        v111 = v113 = 130 + (msg.data[v5 + 20 + 16] >> 240);
                        if (v113 % 32 > 0) {
                            v111 = v114 = (v113 >> 5) + 1 << 5;
                            MEM[100 + (v113 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(230, v5 + 20 + 16 + 2, msg.data[v5 + 20 + 16] >> 240);
                    }
                    v115 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x85dV0x17b + 4], MEM[96:96]).gas(msg.gas);
                    require(v115, Error(32, 8, 'sav7:030'));
                    0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                    v0 = (msg.data[v5 + 20 + 16] >> 240) + (v5 + 20 + 16 + 2 - v5) + v5;
                } else if (42 == v4) {
                    v6 = v116 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v5 + 20 + 20] >> 128);
                    0x2a05(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128, 0);
                    v0 = 56 + v5;
                } else if (43 == v4) {
                    v6 = v117 = 1;
                    if (0x286f580d == msg.data[v5 + 4] >> 224) {
                        v118 = v119 = 0;
                    } else {
                        require(0x8eb1b65e == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:032'));
                        v118 = v120 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v121 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x85dV0x17b] >> 224], MEM[128:128 + v1f68_0x5V0x85dV0x17b]).value(v118).gas(msg.gas);
                    require(v121, Error(32, 8, 'sav7:033'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (44 == v4) {
                    v6 = v122 = 1;
                    0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20] >> 248, msg.data[v5 + 1 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                    v0 = v5 + 1 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                } else if (45 == v4) {
                    v6 = v123 = 1;
                    if (0x42e3d72c == msg.data[v5 + 20 + 4] >> 224) {
                        v124 = v125 = 0;
                        0x931(9, msg.data[v5] >> 96);
                    } else {
                        require(0xf957f1ca == msg.data[v5 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                        v124 = v126 = 0;
                    }
                    CALLDATACOPY(128, v5 + 20 + 4, msg.data[v5 + 20] >> 224);
                    v127 = (msg.data[v5] >> 96).call(MEM[128:128 + msg.data[v99bV0x85dV0x17b + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x85dV0x17b]).value(v124).gas(msg.gas);
                    require(v127, Error(32, 8, 'sav7:037'));
                    v0 = v5 + 20 + 4 + (msg.data[v5 + 20] >> 224) - v5 + v5;
                } else if (46 == v4) {
                    v6 = v128 = 1;
                    0x277e(msg.data[20 + v5] >> 96, msg.data[v5] >> 96, msg.data[40 + v5] >> 128);
                    MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                    MEM[132] = this;
                    MEM[164] = msg.data[40 + v5] >> 128;
                    MEM[196] = msg.data[56 + v5] >> 248;
                    MEM[228] = msg.data[57 + v5] >> 248;
                    MEM[260] = msg.data[58 + v5] >> 224;
                    MEM[292] = 192;
                    MEM[324] = msg.data[78 + v5] >> 240;
                    v129 = v130 = 224;
                    if (msg.data[78 + v5] >> 240 > 0) {
                        v129 = v131 = v130 + (msg.data[78 + v5] >> 240);
                        if (v131 % 32 > 0) {
                            v129 = v132 = (v131 >> 5) + 1 << 5;
                            MEM[132 + (v131 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(356, 80 + v5, msg.data[78 + v5] >> 240);
                    }
                    v133 = (msg.data[v5] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x85dV0x17b + 4], MEM[128:192]).gas(msg.gas);
                    require(v133, Error(32, 8, 'sav7:034'));
                    require(MEM[160] >= msg.data[62 + v5] >> 128, Error(32, 8, 'sav7:035'));
                    v0 = (msg.data[78 + v5] >> 240) + (80 + v5 - v5) + v5;
                } else if (47 == v4) {
                    v6 = v134 = 1;
                    v135 = v136 = msg.data[v5 + 20] >> 128;
                    0x3286(msg.data[v5] >> 96);
                    if (msg.data[v5] >> 96) {
                        0x277e(msg.data[v5] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v136);
                        v135 = v137 = 0;
                    }
                    0x31e2(v135);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else if (48 == v4) {
                    v6 = v138 = 1;
                    0x322b(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else if (49 == v4) {
                    v6 = v139 = 1;
                    if (0x48c89491 == msg.data[v5 + 4] >> 224) {
                        v140 = v141 = 0;
                        0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                    } else if (0xf3cd914c == msg.data[v5 + 4] >> 224) {
                        v140 = v142 = 0;
                    } else {
                        require(0x5a6bcfda == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:038'));
                        v140 = v143 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v144 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x85dV0x17b] >> 224], MEM[128:128 + v2080_0x5V0x85dV0x17b]).value(v140).gas(msg.gas);
                    require(v144, Error(32, 8, 'sav7:039'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (50 == v4) {
                    v6 = v145 = 1;
                    if (0xf83d08ba == msg.data[v5 + 4] >> 224) {
                        v146 = v147 = 0;
                        0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                    } else if (0xc11dedd == msg.data[v5 + 4] >> 224) {
                        v146 = v148 = 0;
                        0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                    } else if (0 == msg.data[v5 + 4] >> 224) {
                        v146 = v149 = 0;
                    } else if (0x55f48d01 == msg.data[v5 + 4] >> 224) {
                        v146 = v150 = 0;
                    } else {
                        require(0x645ec9b5 == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:042'));
                        v146 = v151 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v152 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x85dV0x17b] >> 224], MEM[128:128 + v2198_0x5V0x85dV0x17b]).value(v146).gas(msg.gas);
                    require(v152, Error(32, 8, 'sav7:03d'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (51 == v4) {
                    v6 = v153 = 1;
                    0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (52 == v4) {
                    v6 = v154 = 1;
                    0x32d5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else {
                    require(53 == v4, Error(32, 8, 'sav7:008'));
                    v6 = v155 = 1;
                    v156 = v157 = msg.data[v5 + 20 + 20 + 1] >> 128;
                    if (msg.data[v5 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                        0x29b5(msg.data[v5 + 20] >> 96, msg.data[v5] >> 96, v157);
                    }
                    MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                    MEM[132] = msg.data[v5 + 20 + 20] >> 248;
                    MEM[164] = v157;
                    MEM[196] = 1;
                    MEM[228] = this;
                    v156 = v158 = 0;
                    if ((msg.data[v5 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v158) {
                    }
                    v159 = (msg.data[v5] >> 96).call(MEM[128:260], MEM[128:160]).value(v156).gas(msg.gas);
                    require(v159, Error(32, 8, 'sav7:043'));
                    require(MEM[128] >= msg.data[v5 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                    v0 = v5 + 20 + 20 + 1 + 16 + 16 - v5 + v5;
                }
                v160 = v44.sellQuote(v40).gas(msg.gas);
                require(v160, Error(32, 8, 'sav7:00a'));
                v161 = v162 = MEM[96];
                // Unknown jump to Block ['0x13a8B0x85dB0x17b', '0x1514B0x85dB0x17b']. Refer to 3-address code (TAC);
                if (v37 > 0) {
                    require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                }
                v0 = v39 - v5 + v5;
                if (v37 > 0) {
                    require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                }
                v0 = v39 - v5 + v5;
                v163 = v44.sellBase(v40).gas(msg.gas);
                require(v163, Error(32, 8, 'sav7:00a'));
                v161 = v164 = MEM[96];
                // Unknown jump to Block ['0x1423B0x85dB0x17b', '0x14c9B0x85dB0x17b']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x13aaB0x85dB0x17b. Refer to 3-address code (TAC);
            }
            v2 = v2 + v6;
        }
    }
}

function fallback() public payable { 
}

function 0x23a6() private { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    require(!(msg.sender - 0xba12222222228d8ba445958a75a0704d566bf2c8), Error(32, 8, 'sav7:000'));
    return ;
}

function 0x23e4() private { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    require(!(msg.sender - 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa), Error(32, 8, 'sav7:000'));
    return ;
}

function 0x2422() private { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    require(!(msg.sender - 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb), Error(32, 8, 'sav7:000'));
    return ;
}

function 0x2460() private { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    if (0x31373595f40ea48a7aab6cbcb0d377c6066e2dca == msg.sender) {
        return ;
    } else if (0x6efad5f7ec1d267c66b1b582b89b2ec32a36d57a == msg.sender) {
        return ;
    } else {
        require(0xeb1da432d5c1a9fdf52aa5d37698f34706f91397 == msg.sender, Error(32, 8, 'sav7:000'));
        return ;
    }
}

function 0x24ee() private { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    require(!(msg.sender - 0x4444c5dc75cb358380d2e3de08a90), Error(32, 8, 'sav7:000'));
    return ;
}

function 0x252c() private { 
    if (0x83b294466fe88cf8d4e73fd69b36e904d5db9133 != tx.origin) {
        if (0x654fae4aa229d104cabead47e56703f58b174be4 != tx.origin) {
            if (0x2a7424368f6a3deaaea212fa51b17d66aeb77a83 != tx.origin) {
                require(0x4a6feaaf06ed77421df557c6e213dd6997f759f7 == tx.origin, Error(32, 8, 'sav7:000'));
            }
        }
    }
    require(!(msg.sender - 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444), Error(32, 8, 'sav7:000'));
    return ;
}

function 0x277e(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.transfer(varg1, varg2).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:002'));
    return ;
}

function 0x288e(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:03e'));
    return ;
}

function 0x28c3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0.swap(varg1, varg2, varg3, 128, 0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:003'));
    return ;
}

function 0x2925(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    varg4 = v0 = 0;
    v1 = v2 = 0x5b41b908;
    if (varg0 == 2) {
        v1 = v3 = 0x3df02124;
    }
    if (varg6 != 1) {
    }
    v4 = varg1.setMetaGold(varg2, varg3, varg4, varg5).value(varg4).gas(msg.gas);
    require(v4, Error(32, 8, 'sav6:006'));
    return ;
}

function 0x29b5(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.approve(varg1, varg2).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:006'));
    return ;
}

function 0x2a05(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg0, varg1, varg2, varg3).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:031'));
    return ;
}

function 0x2a67(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) private { 
    v0 = 0xba12222222228d8ba445958a75a0704d566bf2c8.swap(224, varg5, varg6, varg7, varg8, varg9, uint256.max, varg0, varg1, varg2, varg3, varg4, 192, 0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:007'));
    return ;
}

function 0x2b09(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0.deposit(varg1, varg2, varg3, 0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:00f'));
    return ;
}

function 0x2c1c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg0.repay(varg1, varg2, varg3, varg4).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:012'));
    return ;
}

function 0x2c77(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.buyGem(varg1, varg2).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:009'));
    return ;
}

function 0x2cc7(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.sellGem(varg1, varg2).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:009'));
    return ;
}

function 0x2db3(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.sellBaseToken(varg1, varg2, 96, 0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:014'));
    return ;
}

function 0x2e0d(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.buyBaseToken(varg1, varg2, 96, 0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:015'));
    return ;
}

function 0x2e67(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = varg0.decreaseLiquidity(varg1, varg2, varg3, varg4, varg5).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:026'));
    return ;
}

function 0x2ec7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11) private { 
    v0 = varg0.mint(varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10, varg11).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:027'));
    return ;
}

function 0x2f54(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg0.collect(varg1, varg2, varg3, varg4).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:028'));
    return ;
}

function 0x2faf(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    MEM[292] = 0;
    MEM[324] = 0;
    v0 = varg0.mint(varg1, varg2, varg3, varg4, 160, 64, varg5, varg6, varg7 << 232).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:02d'));
    return ;
}

function 0x303f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0.burn(varg1, varg2, varg3).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:02e'));
    return ;
}

function 0x3095(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = varg0.collect(varg1, varg2, varg3, varg4, varg5).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:02f'));
    return ;
}

function 0x30f5(uint256 varg0) private { 
    v0 = 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0.wrap(varg0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:029'));
    return ;
}

function 0x3144(uint256 varg0) private { 
    v0 = 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0.unwrap(varg0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:02a'));
    return ;
}

function 0x3193(uint256 varg0) private { 
    v0 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.setUserEMode(varg0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:02c'));
    return ;
}

function 0x31e2(uint256 varg0) private { 
    v0 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:03a'));
    return ;
}

function 0x322b(uint256 varg0, uint256 varg1) private { 
    v0 = 0x4444c5dc75cb358380d2e3de08a90.take(varg0, this, varg1).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:03b'));
    return ;
}

function 0x3286(uint256 varg0) private { 
    v0 = 0x4444c5dc75cb358380d2e3de08a90.sync(varg0).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:03c'));
    return ;
}

function 0x32d5(uint256 varg0, uint256 varg1) private { 
    v0 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.withdraw(varg0, this, varg1).gas(msg.gas);
    require(v0, Error(32, 8, 'sav7:041'));
    return ;
}

function 0x8a4(uint256 varg0) private { 
    tstor_face00000000 = varg0;
    return ;
}

function 0x931(uint256 varg0, uint256 varg1) private { 
    require(uint16.max >= tstor_face00000000 + 1);
    STORAGE[0xface00000000 + (tstor_face00000000 + 1)] = varg0 << 160 | varg1;
    0x8a4(tstor_face00000000 + 1);
    return ;
}

function 0x941(uint256 varg0, uint256 varg1) private { 
    require(tstor_face00000000);
    0x8a4(tstor_face00000000 - 1);
    require(!((STORAGE[0xface00000000 + tstor_face00000000] >> 160) - varg0));
    require(!(address(STORAGE[0xface00000000 + tstor_face00000000]) - varg1));
    return ;
}

function payCallback(uint256 varg0, address varg1) public payable { 
    0x252c();
    0x941(13, msg.sender);
    0x277e(varg0, msg.sender, varg1 >> 128);
}

function locked(uint256 tokenId) public payable { 
    0x252c();
    0x941(12, msg.sender);
    if (tokenId >> 248 > 0) {
        v0 = v1 = 37;
        v2 = v3 = 0;
        while (v2 < tokenId >> 248) {
            v4 = msg.data[v0] >> 248;
            v5 = v0 + 1;
            if (1 == v4) {
                v6 = v7 = 1;
                v8 = v5 + 20 + 1;
                if (msg.data[v5 + 20] >> 248 > 0) {
                    v8 = v8 + 20 + 16;
                    0x277e(msg.data[v8] >> 96, msg.data[v5] >> 96, msg.data[v8 + 20] >> 128);
                }
                v9 = v8 + 1 + 16 + 1;
                if (0 == msg.data[v8 + 1 + 16] >> 248) {
                    v10 = v11 = msg.data[v9] >> 96;
                    v9 = v9 + 20;
                } else {
                    v10 = v12 = this;
                }
                if (0 == msg.data[v8] >> 248) {
                    0x28c3(msg.data[v5] >> 96, msg.data[v8 + 1] >> 128, 0, v10);
                } else {
                    0x28c3(msg.data[v5] >> 96, 0, msg.data[v8 + 1] >> 128, v10);
                }
                v0 = v9 - v5 + v5;
            } else if (2 == v4) {
                v6 = v13 = 1;
                v14 = v5 + 20 + 3 + 1;
                if (0 == msg.data[v5 + 20 + 3] >> 248 & 0x10) {
                    v15 = v16 = 0x1000276a4;
                    if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                        v15 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                } else {
                    v15 = v17 = msg.data[v14] >> 96;
                    v14 = v14 + 20;
                }
                v18 = v14 + 20 + 20 + 16 + 16 + 1;
                v19 = this;
                if (0 == msg.data[v14 + 20 + 20 + 16 + 16] >> 248) {
                    v19 = v20 = msg.data[v18] >> 96;
                    v18 = v18 + 20;
                } else {
                    0x931(1, msg.data[v5] >> 96);
                }
                MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[100] = v19;
                MEM[132] = msg.data[v5 + 20 + 3] >> 248 & 0x1;
                MEM[164] = msg.data[v14 + 20 + 20] >> 128;
                MEM[196] = v15;
                MEM[228] = 160;
                MEM[260] = (msg.data[1 + v18] >> 240) + 46;
                MEM[324] = 0;
                MEM[292] = msg.data[v14] >> 96 << 96;
                MEM[312] = msg.data[v5 + 20] >> 232 << 232;
                MEM[315] = msg.data[v14 + 20] >> 96 << 96;
                MEM[335] = msg.data[v18] >> 248 << 248;
                MEM[336] = msg.data[1 + v18] >> 240 << 240;
                v21 = uint8.max + 1;
                if (msg.data[1 + v18] >> 240 > 0) {
                    v21 = v22 = 238 + (msg.data[1 + v18] >> 240);
                    if (v22 % 32 > 0) {
                        v21 = v23 = (v22 >> 5) + 1 << 5;
                        MEM[100 + (v22 >> 5 << 5)] = 0;
                    }
                    CALLDATACOPY(338, 3 + v18, msg.data[1 + v18] >> 240);
                }
                v24 = (msg.data[v5] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x5dbV0xd6 + 4], MEM[96:160]).gas(msg.gas);
                require(v24, Error(32, 8, 'sav7:004'));
                v25 = v26 = 0 - MEM[128];
                if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                    v25 = v27 = 0 - MEM[96];
                }
                if (msg.data[v14 + 20 + 20 + 16] >> 128 > 0) {
                    require(msg.data[v14 + 20 + 20 + 16] >> 128 <= v25, Error(32, 8, 'sav7:005'));
                }
                v0 = (msg.data[1 + v18] >> 240) + (3 + v18 - v5) + v5;
            } else if (3 == v4) {
                v6 = v28 = 1;
                0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128);
                0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 248, msg.data[v5 + 1 + 20 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                v0 = v5 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
            } else if (4 == v4) {
                v6 = v29 = 1;
                0x29b5(msg.data[v5 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v5 + 32 + 20 + 20] >> 128);
                0x2a67(msg.data[v5], 0, msg.data[v5 + 32] >> 96, msg.data[v5 + 32 + 20] >> 96, msg.data[v5 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v5 + 32 + 20 + 20 + 16] >> 128);
                v0 = v5 + 32 + 20 + 20 + 16 + 16 - v5 + v5;
            } else {
                if (5 == v4) {
                    v30 = v31 = 3644;
                    v6 = v32 = 1;
                    v33 = v5 + 1 + 1;
                    v34 = v35 = 0;
                    if (msg.data[v5 + 1] >> 248 > v35) {
                        v34 = v36 = msg.data[v33] >> 128;
                        v33 = v33 + 16;
                    }
                    v37 = v38 = msg.data[v33] >> 128;
                    v39 = v33 + 16 + 1;
                    if (0 == msg.data[v33 + 16] >> 248) {
                        v40 = v41 = msg.data[v39] >> 96;
                        v39 = v39 + 20;
                    } else {
                        v40 = v42 = this;
                    }
                    if (0 == msg.data[v5] >> 248) {
                        v43 = 5155;
                        if (v34 > 0) {
                            0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                        }
                        v44 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                    } else {
                        v45 = 5032;
                        if (v34 > 0) {
                            0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                        }
                        v44 = v46 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                    }
                } else if (6 == v4) {
                    v6 = v47 = 1;
                    if (0 == msg.data[v5] >> 248) {
                        0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v5 + 1] >> 128);
                        0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                    } else {
                        0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v5 + 1] >> 128);
                        0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v5 + 1] >> 128);
                    }
                    v0 = v5 + 1 + 16 - v5 + v5;
                } else if (7 == v4) {
                    v6 = v48 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        v49 = block.coinbase.call().value(msg.data[v5] >> 128).gas(msg.gas);
                        require(v49, Error(32, 8, 'sav7:040'));
                    }
                    v0 = 16 + v5;
                } else if (8 == v4) {
                    v6 = v50 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v5] >> 128;
                        v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                        require(v51, Error(32, 8, 'sav7:00c'));
                    }
                    v0 = 16 + v5;
                } else if (9 == v4) {
                    v6 = v52 = 1;
                    if (msg.data[v5] >> 128 > 0) {
                        v53 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v5] >> 128).gas(msg.gas);
                        require(v53, Error(32, 8, 'sav7:03f'));
                    }
                    v0 = 16 + v5;
                } else if (10 == v4) {
                    v6 = v54 = 1;
                    0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                    v55 = v5 + 1;
                    require(msg.data[v5] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                    MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                    MEM[100] = this;
                    MEM[132] = 128;
                    MEM[228] = msg.data[v5] >> 248;
                    v56 = v57 = 260;
                    MEM[164] = 128 + (msg.data[v5] >> 248 << 5) + 32;
                    MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v5] >> 248;
                    v58 = v59 = 100 + (128 + (msg.data[v5] >> 248 << 5) + 32) + 32;
                    MEM[196] = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32;
                    v60 = v61 = 0;
                    while (v60 < msg.data[v5] >> 248) {
                        v55 = v55 + 20 + 16;
                        MEM[v56] = msg.data[v55] >> 96;
                        v56 = v56 + 32;
                        MEM[v58] = msg.data[v55 + 20] >> 128;
                        v58 = v58 + 32;
                        v60 = v60 + 1;
                    }
                    MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v55] >> 240;
                    v62 = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32 + 32;
                    if (msg.data[v55] >> 240 > 0) {
                        v62 = v63 = v62 + (msg.data[v55] >> 240);
                        if (v63 % 32 > 0) {
                            v62 = v64 = (v63 >> 5) + 1 << 5;
                            MEM[100 + (v63 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(100 + v62, v55 + 2, msg.data[v55] >> 240);
                    }
                    v65 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x5dbV0xd6 + 4], MEM[96:96]).gas(msg.gas);
                    require(v65, Error(32, 8, 'sav7:00e'));
                    v0 = (msg.data[v55] >> 240) + (v55 + 2 - v5) + v5;
                } else if (11 == v4) {
                    v6 = v66 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                    0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                    v0 = 36 + v5;
                } else if (12 == v4) {
                    v6 = v67 = 1;
                    v68 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                    require(v68, Error(32, 8, 'sav7:010'));
                    v0 = 36 + v5;
                } else if (13 == v4) {
                    v6 = v69 = 1;
                    v70 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                    require(v70, Error(32, 8, 'sav7:011'));
                    v0 = 37 + v5;
                } else if (14 == v4) {
                    v6 = v71 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                    0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                    v0 = 37 + v5;
                } else if (15 == v4) {
                    v6 = v72 = 1;
                    if (1 == msg.data[v5 + 20 + 16] >> 248) {
                        v73 = 0x35b5e5ad9019092c665357240f594e;
                    } else {
                        require(2 == msg.data[v5 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                        v73 = v74 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                    }
                    if (msg.data[v5 + 20] >> 128 > 0) {
                        0x277e(msg.data[v5] >> 96, v73, msg.data[v5 + 20] >> 128);
                    }
                    v0 = 37 + v5;
                } else if (16 == v4) {
                    v6 = v75 = 1;
                    0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128);
                    if (0 == msg.data[v5] >> 248) {
                        0x2e0d(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 16] >> 128, msg.data[v5 + 1 + 20 + 20] >> 128);
                    } else {
                        0x2db3(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128, msg.data[v5 + 1 + 20 + 20 + 16] >> 128);
                    }
                    v0 = v5 + 1 + 20 + 20 + 16 + 16 - v5 + v5;
                } else if (17 == v4) {
                    v6 = v76 = 1;
                    0x29b5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128);
                    v0 = 56 + v5;
                } else if (22 == v4) {
                    v6 = v77 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                    0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                    v0 = 36 + v5;
                } else if (23 == v4) {
                    v6 = v78 = 1;
                    v79 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                    require(v79, Error(32, 8, 'sav7:010'));
                    v0 = 36 + v5;
                } else if (24 == v4) {
                    v6 = v80 = 1;
                    v81 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                    require(v81, Error(32, 8, 'sav7:011'));
                    v0 = 37 + v5;
                } else if (25 == v4) {
                    v6 = v82 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                    0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                    v0 = 37 + v5;
                } else if (31 == v4) {
                    v6 = v83 = 1;
                    0x29b5(msg.data[v5] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128);
                    0x29b5(msg.data[v5 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                    0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 232, msg.data[v5 + 20 + 20 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                    v0 = v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v5 + v5;
                } else if (32 == v4) {
                    v6 = v84 = 1;
                    0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, msg.data[v5 + 8] >> 128, 0, 0, msg.data[v5 + 8 + 16] >> 192);
                    0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, this, uint128.max, uint128.max);
                    v0 = v5 + 8 + 16 + 8 - v5 + v5;
                } else if (33 == v4) {
                    v6 = v85 = 1;
                    0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v5] >> 128);
                    0x30f5(msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (34 == v4) {
                    v6 = v86 = 1;
                    0x3144(msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (35 == v4) {
                    v6 = v87 = 1;
                    0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                    MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                    MEM[100] = this;
                    MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    MEM[164] = msg.data[v5] >> 128;
                    MEM[196] = 128;
                    MEM[228] = (msg.data[v5 + 16] >> 240) + 2;
                    MEM[260] = msg.data[v5 + 16] >> 240 << 240;
                    v88 = v89 = 192;
                    if (msg.data[v5 + 16] >> 240 > 0) {
                        v88 = v90 = 162 + (msg.data[v5 + 16] >> 240);
                        if (v90 % 32 > 0) {
                            v88 = v91 = (v90 >> 5) + 1 << 5;
                            MEM[100 + (v90 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(262, v5 + 16 + 2, msg.data[v5 + 16] >> 240);
                    }
                    v92 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x5dbV0xd6 + 4], MEM[96:96]).gas(msg.gas);
                    require(v92, Error(32, 8, 'sav7:02b'));
                    v0 = (msg.data[v5 + 16] >> 240) + (v5 + 16 + 2 - v5) + v5;
                } else if (36 == v4) {
                    v6 = v93 = 1;
                    0x3193(msg.data[v5] >> 248);
                    v0 = v5 + 1 - v5 + v5;
                } else if (37 == v4) {
                    v6 = v94 = 1;
                    if (0 == msg.data[v5] >> 248) {
                        0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                        0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                    } else {
                        0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                        0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v5 + 1] >> 128);
                    }
                    v0 = v5 + 1 + 16 - v5 + v5;
                } else if (38 == v4) {
                    v30 = v95 = 3164;
                    v6 = v96 = 1;
                    v44 = v97 = msg.data[v5] >> 96;
                    v98 = v5 + 20 + 1 + 1;
                    v99 = v100 = 0;
                    v101 = v102 = 0;
                    if (msg.data[v5 + 20 + 1] >> 248 > v102) {
                        v99 = v103 = msg.data[v98] >> 128;
                        v101 = v104 = msg.data[v98 + 16] >> 96;
                        v98 = v98 + 16 + 20;
                    }
                    v37 = msg.data[v98] >> 128;
                    v39 = v98 + 16 + 1;
                    if (0 == msg.data[v98 + 16] >> 248) {
                        v40 = msg.data[v39] >> 96;
                        v39 = v39 + 20;
                    } else {
                        v40 = v105 = this;
                    }
                    if (v99 > 0) {
                        0x277e(v101, v97, v99);
                    }
                    if (0 == msg.data[v5 + 20] >> 248) {
                        v45 = v106 = 5396;
                        // Unknown jump to Block 0x2d65B0x5dbB0xd6. Refer to 3-address code (TAC);
                    } else {
                        v43 = v107 = 5321;
                    }
                } else if (39 == v4) {
                    v6 = v108 = 1;
                    0x931(4, msg.data[v5] >> 96);
                    0x2faf(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128, msg.data[v5 + 20 + 3 + 3 + 16] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                    v0 = v5 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v5 + v5;
                } else if (40 == v4) {
                    v6 = v109 = 1;
                    0x303f(msg.data[v5] >> 96, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128);
                    0x3095(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 3 + 3 + 16 + 16] >> 128);
                    v0 = v5 + 20 + 3 + 3 + 16 + 16 + 16 - v5 + v5;
                } else if (41 == v4) {
                    v6 = v110 = 1;
                    0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                    0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v5 + 20] >> 128);
                    MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                    MEM[100] = msg.data[v5] >> 96;
                    MEM[132] = msg.data[v5 + 20] >> 128;
                    MEM[164] = 96;
                    MEM[196] = (msg.data[v5 + 20 + 16] >> 240) + 2;
                    MEM[228] = msg.data[v5 + 20 + 16] >> 240 << 240;
                    v111 = v112 = 160;
                    if (msg.data[v5 + 20 + 16] >> 240 > 0) {
                        v111 = v113 = 130 + (msg.data[v5 + 20 + 16] >> 240);
                        if (v113 % 32 > 0) {
                            v111 = v114 = (v113 >> 5) + 1 << 5;
                            MEM[100 + (v113 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(230, v5 + 20 + 16 + 2, msg.data[v5 + 20 + 16] >> 240);
                    }
                    v115 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x5dbV0xd6 + 4], MEM[96:96]).gas(msg.gas);
                    require(v115, Error(32, 8, 'sav7:030'));
                    0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                    v0 = (msg.data[v5 + 20 + 16] >> 240) + (v5 + 20 + 16 + 2 - v5) + v5;
                } else if (42 == v4) {
                    v6 = v116 = 1;
                    0x29b5(msg.data[v5] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v5 + 20 + 20] >> 128);
                    0x2a05(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128, 0);
                    v0 = 56 + v5;
                } else if (43 == v4) {
                    v6 = v117 = 1;
                    if (0x286f580d == msg.data[v5 + 4] >> 224) {
                        v118 = v119 = 0;
                    } else {
                        require(0x8eb1b65e == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:032'));
                        v118 = v120 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v121 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x5dbV0xd6] >> 224], MEM[128:128 + v1f68_0x5V0x5dbV0xd6]).value(v118).gas(msg.gas);
                    require(v121, Error(32, 8, 'sav7:033'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (44 == v4) {
                    v6 = v122 = 1;
                    0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20] >> 248, msg.data[v5 + 1 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                    v0 = v5 + 1 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                } else if (45 == v4) {
                    v6 = v123 = 1;
                    if (0x42e3d72c == msg.data[v5 + 20 + 4] >> 224) {
                        v124 = v125 = 0;
                        0x931(9, msg.data[v5] >> 96);
                    } else {
                        require(0xf957f1ca == msg.data[v5 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                        v124 = v126 = 0;
                    }
                    CALLDATACOPY(128, v5 + 20 + 4, msg.data[v5 + 20] >> 224);
                    v127 = (msg.data[v5] >> 96).call(MEM[128:128 + msg.data[v99bV0x5dbV0xd6 + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x5dbV0xd6]).value(v124).gas(msg.gas);
                    require(v127, Error(32, 8, 'sav7:037'));
                    v0 = v5 + 20 + 4 + (msg.data[v5 + 20] >> 224) - v5 + v5;
                } else if (46 == v4) {
                    v6 = v128 = 1;
                    0x277e(msg.data[20 + v5] >> 96, msg.data[v5] >> 96, msg.data[40 + v5] >> 128);
                    MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                    MEM[132] = this;
                    MEM[164] = msg.data[40 + v5] >> 128;
                    MEM[196] = msg.data[56 + v5] >> 248;
                    MEM[228] = msg.data[57 + v5] >> 248;
                    MEM[260] = msg.data[58 + v5] >> 224;
                    MEM[292] = 192;
                    MEM[324] = msg.data[78 + v5] >> 240;
                    v129 = v130 = 224;
                    if (msg.data[78 + v5] >> 240 > 0) {
                        v129 = v131 = v130 + (msg.data[78 + v5] >> 240);
                        if (v131 % 32 > 0) {
                            v129 = v132 = (v131 >> 5) + 1 << 5;
                            MEM[132 + (v131 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(356, 80 + v5, msg.data[78 + v5] >> 240);
                    }
                    v133 = (msg.data[v5] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x5dbV0xd6 + 4], MEM[128:192]).gas(msg.gas);
                    require(v133, Error(32, 8, 'sav7:034'));
                    require(MEM[160] >= msg.data[62 + v5] >> 128, Error(32, 8, 'sav7:035'));
                    v0 = (msg.data[78 + v5] >> 240) + (80 + v5 - v5) + v5;
                } else if (47 == v4) {
                    v6 = v134 = 1;
                    v135 = v136 = msg.data[v5 + 20] >> 128;
                    0x3286(msg.data[v5] >> 96);
                    if (msg.data[v5] >> 96) {
                        0x277e(msg.data[v5] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v136);
                        v135 = v137 = 0;
                    }
                    0x31e2(v135);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else if (48 == v4) {
                    v6 = v138 = 1;
                    0x322b(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else if (49 == v4) {
                    v6 = v139 = 1;
                    if (0x48c89491 == msg.data[v5 + 4] >> 224) {
                        v140 = v141 = 0;
                        0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                    } else if (0xf3cd914c == msg.data[v5 + 4] >> 224) {
                        v140 = v142 = 0;
                    } else {
                        require(0x5a6bcfda == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:038'));
                        v140 = v143 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v144 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x5dbV0xd6] >> 224], MEM[128:128 + v2080_0x5V0x5dbV0xd6]).value(v140).gas(msg.gas);
                    require(v144, Error(32, 8, 'sav7:039'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (50 == v4) {
                    v6 = v145 = 1;
                    if (0xf83d08ba == msg.data[v5 + 4] >> 224) {
                        v146 = v147 = 0;
                        0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                    } else if (0xc11dedd == msg.data[v5 + 4] >> 224) {
                        v146 = v148 = 0;
                        0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                    } else if (0 == msg.data[v5 + 4] >> 224) {
                        v146 = v149 = 0;
                    } else if (0x55f48d01 == msg.data[v5 + 4] >> 224) {
                        v146 = v150 = 0;
                    } else {
                        require(0x645ec9b5 == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:042'));
                        v146 = v151 = 0;
                    }
                    CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                    v152 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x5dbV0xd6] >> 224], MEM[128:128 + v2198_0x5V0x5dbV0xd6]).value(v146).gas(msg.gas);
                    require(v152, Error(32, 8, 'sav7:03d'));
                    v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                } else if (51 == v4) {
                    v6 = v153 = 1;
                    0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v5] >> 128);
                    v0 = v5 + 16 - v5 + v5;
                } else if (52 == v4) {
                    v6 = v154 = 1;
                    0x32d5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                    v0 = v5 + 20 + 16 - v5 + v5;
                } else {
                    require(53 == v4, Error(32, 8, 'sav7:008'));
                    v6 = v155 = 1;
                    v156 = v157 = msg.data[v5 + 20 + 20 + 1] >> 128;
                    if (msg.data[v5 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                        0x29b5(msg.data[v5 + 20] >> 96, msg.data[v5] >> 96, v157);
                    }
                    MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                    MEM[132] = msg.data[v5 + 20 + 20] >> 248;
                    MEM[164] = v157;
                    MEM[196] = 1;
                    MEM[228] = this;
                    v156 = v158 = 0;
                    if ((msg.data[v5 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v158) {
                    }
                    v159 = (msg.data[v5] >> 96).call(MEM[128:260], MEM[128:160]).value(v156).gas(msg.gas);
                    require(v159, Error(32, 8, 'sav7:043'));
                    require(MEM[128] >= msg.data[v5 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                    v0 = v5 + 20 + 20 + 1 + 16 + 16 - v5 + v5;
                }
                v160 = v44.sellQuote(v40).gas(msg.gas);
                require(v160, Error(32, 8, 'sav7:00a'));
                v161 = v162 = MEM[96];
                // Unknown jump to Block ['0x13a8B0x5dbB0xd6', '0x1514B0x5dbB0xd6']. Refer to 3-address code (TAC);
                if (v37 > 0) {
                    require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                }
                v0 = v39 - v5 + v5;
                if (v37 > 0) {
                    require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                }
                v0 = v39 - v5 + v5;
                v163 = v44.sellBase(v40).gas(msg.gas);
                require(v163, Error(32, 8, 'sav7:00a'));
                v161 = v164 = MEM[96];
                // Unknown jump to Block ['0x1423B0x5dbB0xd6', '0x14c9B0x5dbB0xd6']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x13aaB0x5dbB0xd6. Refer to 3-address code (TAC);
            }
            v2 = v2 + v6;
        }
    }
}

function onERC721Received() public payable { 
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000;
}

function maverickV2AddLiquidityCallback(address varg0, address varg1, uint256 varg2, uint256 varg3) public payable { 
    0x2460();
    0x941(9, msg.sender);
    if (varg2 > 0) {
        0x277e(varg0, msg.sender, varg2);
    }
    if (varg3 > 0) {
        0x277e(varg1, msg.sender, varg3);
    }
}

function onMorphoFlashLoan(uint256 varg0, bytes data) public payable { 
    0x2422();
    0x941(8, msg.sender);
    if (varg0 >> 240 > 0) {
        if (data >> 248 > 0) {
            v0 = v1 = 103;
            v2 = v3 = 0;
            while (v2 < data >> 248) {
                v4 = msg.data[v0] >> 248;
                v5 = v0 + 1;
                if (1 == v4) {
                    v6 = v7 = 1;
                    v8 = v5 + 20 + 1;
                    if (msg.data[v5 + 20] >> 248 > 0) {
                        v8 = v8 + 20 + 16;
                        0x277e(msg.data[v8] >> 96, msg.data[v5] >> 96, msg.data[v8 + 20] >> 128);
                    }
                    v9 = v8 + 1 + 16 + 1;
                    if (0 == msg.data[v8 + 1 + 16] >> 248) {
                        v10 = v11 = msg.data[v9] >> 96;
                        v9 = v9 + 20;
                    } else {
                        v10 = v12 = this;
                    }
                    if (0 == msg.data[v8] >> 248) {
                        0x28c3(msg.data[v5] >> 96, msg.data[v8 + 1] >> 128, 0, v10);
                    } else {
                        0x28c3(msg.data[v5] >> 96, 0, msg.data[v8 + 1] >> 128, v10);
                    }
                    v0 = v9 - v5 + v5;
                } else if (2 == v4) {
                    v6 = v13 = 1;
                    v14 = v5 + 20 + 3 + 1;
                    if (0 == msg.data[v5 + 20 + 3] >> 248 & 0x10) {
                        v15 = v16 = 0x1000276a4;
                        if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                            v15 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                    } else {
                        v15 = v17 = msg.data[v14] >> 96;
                        v14 = v14 + 20;
                    }
                    v18 = v14 + 20 + 20 + 16 + 16 + 1;
                    v19 = this;
                    if (0 == msg.data[v14 + 20 + 20 + 16 + 16] >> 248) {
                        v19 = v20 = msg.data[v18] >> 96;
                        v18 = v18 + 20;
                    } else {
                        0x931(1, msg.data[v5] >> 96);
                    }
                    MEM[96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[100] = v19;
                    MEM[132] = msg.data[v5 + 20 + 3] >> 248 & 0x1;
                    MEM[164] = msg.data[v14 + 20 + 20] >> 128;
                    MEM[196] = v15;
                    MEM[228] = 160;
                    MEM[260] = (msg.data[1 + v18] >> 240) + 46;
                    MEM[324] = 0;
                    MEM[292] = msg.data[v14] >> 96 << 96;
                    MEM[312] = msg.data[v5 + 20] >> 232 << 232;
                    MEM[315] = msg.data[v14 + 20] >> 96 << 96;
                    MEM[335] = msg.data[v18] >> 248 << 248;
                    MEM[336] = msg.data[1 + v18] >> 240 << 240;
                    v21 = uint8.max + 1;
                    if (msg.data[1 + v18] >> 240 > 0) {
                        v21 = v22 = 238 + (msg.data[1 + v18] >> 240);
                        if (v22 % 32 > 0) {
                            v21 = v23 = (v22 >> 5) + 1 << 5;
                            MEM[100 + (v22 >> 5 << 5)] = 0;
                        }
                        CALLDATACOPY(338, 3 + v18, msg.data[1 + v18] >> 240);
                    }
                    v24 = (msg.data[v5] >> 96).call(MEM[96:96 + vf9cV0xe6bV0x7cfV0xf9 + 4], MEM[96:160]).gas(msg.gas);
                    require(v24, Error(32, 8, 'sav7:004'));
                    v25 = v26 = 0 - MEM[128];
                    if (!(msg.data[v5 + 20 + 3] >> 248 & 0x1)) {
                        v25 = v27 = 0 - MEM[96];
                    }
                    if (msg.data[v14 + 20 + 20 + 16] >> 128 > 0) {
                        require(msg.data[v14 + 20 + 20 + 16] >> 128 <= v25, Error(32, 8, 'sav7:005'));
                    }
                    v0 = (msg.data[1 + v18] >> 240) + (3 + v18 - v5) + v5;
                } else if (3 == v4) {
                    v6 = v28 = 1;
                    0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128);
                    0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 248, msg.data[v5 + 1 + 20 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 20 + 1 + 1 + 16] >> 128, 0);
                    v0 = v5 + 1 + 20 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                } else if (4 == v4) {
                    v6 = v29 = 1;
                    0x29b5(msg.data[v5 + 32] >> 96, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[v5 + 32 + 20 + 20] >> 128);
                    0x2a67(msg.data[v5], 0, msg.data[v5 + 32] >> 96, msg.data[v5 + 32 + 20] >> 96, msg.data[v5 + 32 + 20 + 20] >> 128, this, 0, this, 0, msg.data[v5 + 32 + 20 + 20 + 16] >> 128);
                    v0 = v5 + 32 + 20 + 20 + 16 + 16 - v5 + v5;
                } else {
                    if (5 == v4) {
                        v30 = v31 = 3644;
                        v6 = v32 = 1;
                        v33 = v5 + 1 + 1;
                        v34 = v35 = 0;
                        if (msg.data[v5 + 1] >> 248 > v35) {
                            v34 = v36 = msg.data[v33] >> 128;
                            v33 = v33 + 16;
                        }
                        v37 = v38 = msg.data[v33] >> 128;
                        v39 = v33 + 16 + 1;
                        if (0 == msg.data[v33 + 16] >> 248) {
                            v40 = v41 = msg.data[v39] >> 96;
                            v39 = v39 + 20;
                        } else {
                            v40 = v42 = this;
                        }
                        if (0 == msg.data[v5] >> 248) {
                            v43 = 5155;
                            if (v34 > 0) {
                                0x277e(0x6b175474e89094c44da98b954eedeac495271d0f, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                            }
                            v44 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        } else {
                            v45 = 5032;
                            if (v34 > 0) {
                                0x277e(0xdac17f958d2ee523a2206206994597c13d831ec7, 0x3058ef90929cb8180174d74c507176cca6835d73, v34);
                            }
                            v44 = v46 = 0x3058ef90929cb8180174d74c507176cca6835d73;
                        }
                    } else if (6 == v4) {
                        v6 = v47 = 1;
                        if (0 == msg.data[v5] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0x89b78cfa322f6c5de0abceecab66aee45393cc5a, msg.data[v5 + 1] >> 128);
                            0x2c77(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xa59649758aa4d66e25f08dd01271e891fe52199, msg.data[v5 + 1] >> 128);
                            0x2cc7(0x89b78cfa322f6c5de0abceecab66aee45393cc5a, this, msg.data[v5 + 1] >> 128);
                        }
                        v0 = v5 + 1 + 16 - v5 + v5;
                    } else if (7 == v4) {
                        v6 = v48 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            v49 = block.coinbase.call().value(msg.data[v5] >> 128).gas(msg.gas);
                            require(v49, Error(32, 8, 'sav7:040'));
                        }
                        v0 = 16 + v5;
                    } else if (8 == v4) {
                        v6 = v50 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            MEM[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                            MEM[100] = msg.data[v5] >> 128;
                            v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[96:132], MEM[96:96]).gas(msg.gas);
                            require(v51, Error(32, 8, 'sav7:00c'));
                        }
                        v0 = 16 + v5;
                    } else if (9 == v4) {
                        v6 = v52 = 1;
                        if (msg.data[v5] >> 128 > 0) {
                            v53 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v5] >> 128).gas(msg.gas);
                            require(v53, Error(32, 8, 'sav7:03f'));
                        }
                        v0 = 16 + v5;
                    } else if (10 == v4) {
                        v6 = v54 = 1;
                        0x931(2, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                        v55 = v5 + 1;
                        require(msg.data[v5] >> 248 >= 1, Error(32, 8, 'sav7:00d'));
                        MEM[96] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 128;
                        MEM[228] = msg.data[v5] >> 248;
                        v56 = v57 = 260;
                        MEM[164] = 128 + (msg.data[v5] >> 248 << 5) + 32;
                        MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v5] >> 248;
                        v58 = v59 = 100 + (128 + (msg.data[v5] >> 248 << 5) + 32) + 32;
                        MEM[196] = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32;
                        v60 = v61 = 0;
                        while (v60 < msg.data[v5] >> 248) {
                            v55 = v55 + 20 + 16;
                            MEM[v56] = msg.data[v55] >> 96;
                            v56 = v56 + 32;
                            MEM[v58] = msg.data[v55 + 20] >> 128;
                            v58 = v58 + 32;
                            v60 = v60 + 1;
                        }
                        MEM[100 + (128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32)] = msg.data[v55] >> 240;
                        v62 = 128 + (msg.data[v5] >> 248 << 5) + 32 + (msg.data[v5] >> 248 << 5) + 32 + 32;
                        if (msg.data[v55] >> 240 > 0) {
                            v62 = v63 = v62 + (msg.data[v55] >> 240);
                            if (v63 % 32 > 0) {
                                v62 = v64 = (v63 >> 5) + 1 << 5;
                                MEM[100 + (v63 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(100 + v62, v55 + 2, msg.data[v55] >> 240);
                        }
                        v65 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[96:96 + v16e1V0xdcbV0x7cfV0xf9 + 4], MEM[96:96]).gas(msg.gas);
                        require(v65, Error(32, 8, 'sav7:00e'));
                        v0 = (msg.data[v55] >> 240) + (v55 + 2 - v5) + v5;
                    } else if (11 == v4) {
                        v6 = v66 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                        0x2b09(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                        v0 = 36 + v5;
                    } else if (12 == v4) {
                        v6 = v67 = 1;
                        v68 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                        require(v68, Error(32, 8, 'sav7:010'));
                        v0 = 36 + v5;
                    } else if (13 == v4) {
                        v6 = v69 = 1;
                        v70 = 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v70, Error(32, 8, 'sav7:011'));
                        v0 = 37 + v5;
                    } else if (14 == v4) {
                        v6 = v71 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5 + 20] >> 128);
                        0x2c1c(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                        v0 = 37 + v5;
                    } else if (15 == v4) {
                        v6 = v72 = 1;
                        if (1 == msg.data[v5 + 20 + 16] >> 248) {
                            v73 = 0x35b5e5ad9019092c665357240f594e;
                        } else {
                            require(2 == msg.data[v5 + 20 + 16] >> 248, Error(32, 8, 'sav7:013'));
                            v73 = v74 = 0x99cb7fc48a935bceb9f05bbae54e8987;
                        }
                        if (msg.data[v5 + 20] >> 128 > 0) {
                            0x277e(msg.data[v5] >> 96, v73, msg.data[v5 + 20] >> 128);
                        }
                        v0 = 37 + v5;
                    } else if (16 == v4) {
                        v6 = v75 = 1;
                        0x29b5(msg.data[v5 + 1 + 20] >> 96, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128);
                        if (0 == msg.data[v5] >> 248) {
                            0x2e0d(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20 + 16] >> 128, msg.data[v5 + 1 + 20 + 20] >> 128);
                        } else {
                            0x2db3(msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20 + 20] >> 128, msg.data[v5 + 1 + 20 + 20 + 16] >> 128);
                        }
                        v0 = v5 + 1 + 20 + 20 + 16 + 16 - v5 + v5;
                    } else if (17 == v4) {
                        v6 = v76 = 1;
                        0x29b5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128);
                        v0 = 56 + v5;
                    } else if (22 == v4) {
                        v6 = v77 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                        0x2b09(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this);
                        v0 = 36 + v5;
                    } else if (23 == v4) {
                        v6 = v78 = 1;
                        v79 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.withdraw(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, this).gas(msg.gas);
                        require(v79, Error(32, 8, 'sav7:010'));
                        v0 = 36 + v5;
                    } else if (24 == v4) {
                        v6 = v80 = 1;
                        v81 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.borrow(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, 0, this).gas(msg.gas);
                        require(v81, Error(32, 8, 'sav7:011'));
                        v0 = 37 + v5;
                    } else if (25 == v4) {
                        v6 = v82 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5 + 20] >> 128);
                        0x2c1c(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, msg.data[v5] >> 96, msg.data[v5 + 20] >> 128, msg.data[v5 + 20 + 16] >> 248, this);
                        v0 = 37 + v5;
                    } else if (31 == v4) {
                        v6 = v83 = 1;
                        0x29b5(msg.data[v5] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128);
                        0x29b5(msg.data[v5 + 20] >> 96, 0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128);
                        0x2ec7(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 232, msg.data[v5 + 20 + 20 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3] >> 232, msg.data[v5 + 20 + 20 + 3 + 3 + 3] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16] >> 128, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16] >> 128, this, msg.data[v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16] >> 192);
                        v0 = v5 + 20 + 20 + 3 + 3 + 3 + 16 + 16 + 16 + 16 + 8 - v5 + v5;
                    } else if (32 == v4) {
                        v6 = v84 = 1;
                        0x2e67(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, msg.data[v5 + 8] >> 128, 0, 0, msg.data[v5 + 8 + 16] >> 192);
                        0x2f54(0xc36442b4a4522e871399cd717abdd847ab11fe88, msg.data[v5] >> 192, this, uint128.max, uint128.max);
                        v0 = v5 + 8 + 16 + 8 - v5 + v5;
                    } else if (33 == v4) {
                        v6 = v85 = 1;
                        0x29b5(0xae7ab96520de3a18e5e111b5eaab095312d7fe84, 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0, msg.data[v5] >> 128);
                        0x30f5(msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (34 == v4) {
                        v6 = v86 = 1;
                        0x3144(msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (35 == v4) {
                        v6 = v87 = 1;
                        0x931(5, 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa);
                        MEM[96] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000;
                        MEM[100] = this;
                        MEM[132] = 0x6b175474e89094c44da98b954eedeac495271d0f;
                        MEM[164] = msg.data[v5] >> 128;
                        MEM[196] = 128;
                        MEM[228] = (msg.data[v5 + 16] >> 240) + 2;
                        MEM[260] = msg.data[v5 + 16] >> 240 << 240;
                        v88 = v89 = 192;
                        if (msg.data[v5 + 16] >> 240 > 0) {
                            v88 = v90 = 162 + (msg.data[v5 + 16] >> 240);
                            if (v90 % 32 > 0) {
                                v88 = v91 = (v90 >> 5) + 1 << 5;
                                MEM[100 + (v90 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(262, v5 + 16 + 2, msg.data[v5 + 16] >> 240);
                        }
                        v92 = 0x60744434d6339a6b27d73d9eda62b6f66a0a04fa.call(MEM[96:96 + v1d77_0x3V0xc8bV0x7cfV0xf9 + 4], MEM[96:96]).gas(msg.gas);
                        require(v92, Error(32, 8, 'sav7:02b'));
                        v0 = (msg.data[v5 + 16] >> 240) + (v5 + 16 + 2 - v5) + v5;
                    } else if (36 == v4) {
                        v6 = v93 = 1;
                        0x3193(msg.data[v5] >> 248);
                        v0 = v5 + 1 - v5 + v5;
                    } else if (37 == v4) {
                        v6 = v94 = 1;
                        if (0 == msg.data[v5] >> 248) {
                            0x29b5(0x6b175474e89094c44da98b954eedeac495271d0f, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                            0x2c77(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, (msg.data[v5 + 1] >> 128) / 10 ** 12);
                        } else {
                            0x29b5(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, 0xf6e72db5454dd049d0788e411b06cfaf16853042, msg.data[v5 + 1] >> 128);
                            0x2cc7(0xf6e72db5454dd049d0788e411b06cfaf16853042, this, msg.data[v5 + 1] >> 128);
                        }
                        v0 = v5 + 1 + 16 - v5 + v5;
                    } else if (38 == v4) {
                        v30 = v95 = 3164;
                        v6 = v96 = 1;
                        v44 = v97 = msg.data[v5] >> 96;
                        v98 = v5 + 20 + 1 + 1;
                        v99 = v100 = 0;
                        v101 = v102 = 0;
                        if (msg.data[v5 + 20 + 1] >> 248 > v102) {
                            v99 = v103 = msg.data[v98] >> 128;
                            v101 = v104 = msg.data[v98 + 16] >> 96;
                            v98 = v98 + 16 + 20;
                        }
                        v37 = msg.data[v98] >> 128;
                        v39 = v98 + 16 + 1;
                        if (0 == msg.data[v98 + 16] >> 248) {
                            v40 = msg.data[v39] >> 96;
                            v39 = v39 + 20;
                        } else {
                            v40 = v105 = this;
                        }
                        if (v99 > 0) {
                            0x277e(v101, v97, v99);
                        }
                        if (0 == msg.data[v5 + 20] >> 248) {
                            v45 = v106 = 5396;
                            // Unknown jump to Block 0x2d65B0x7cfB0xf9. Refer to 3-address code (TAC);
                        } else {
                            v43 = v107 = 5321;
                        }
                    } else if (39 == v4) {
                        v6 = v108 = 1;
                        0x931(4, msg.data[v5] >> 96);
                        0x2faf(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128, msg.data[v5 + 20 + 3 + 3 + 16] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20] >> 96, msg.data[v5 + 20 + 3 + 3 + 16 + 20 + 20] >> 232);
                        v0 = v5 + 20 + 3 + 3 + 16 + 20 + 20 + 3 - v5 + v5;
                    } else if (40 == v4) {
                        v6 = v109 = 1;
                        0x303f(msg.data[v5] >> 96, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3] >> 128);
                        0x3095(msg.data[v5] >> 96, this, msg.data[v5 + 20] >> 232, msg.data[v5 + 20 + 3] >> 232, msg.data[v5 + 20 + 3 + 3 + 16] >> 128, msg.data[v5 + 20 + 3 + 3 + 16 + 16] >> 128);
                        v0 = v5 + 20 + 3 + 3 + 16 + 16 + 16 - v5 + v5;
                    } else if (41 == v4) {
                        v6 = v110 = 1;
                        0x931(8, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                        0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, msg.data[v5 + 20] >> 128);
                        MEM[96] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                        MEM[100] = msg.data[v5] >> 96;
                        MEM[132] = msg.data[v5 + 20] >> 128;
                        MEM[164] = 96;
                        MEM[196] = (msg.data[v5 + 20 + 16] >> 240) + 2;
                        MEM[228] = msg.data[v5 + 20 + 16] >> 240 << 240;
                        v111 = v112 = 160;
                        if (msg.data[v5 + 20 + 16] >> 240 > 0) {
                            v111 = v113 = 130 + (msg.data[v5 + 20 + 16] >> 240);
                            if (v113 % 32 > 0) {
                                v111 = v114 = (v113 >> 5) + 1 << 5;
                                MEM[100 + (v113 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(230, v5 + 20 + 16 + 2, msg.data[v5 + 20 + 16] >> 240);
                        }
                        v115 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.call(MEM[96:96 + v1e7d_0x3V0xc13V0x7cfV0xf9 + 4], MEM[96:96]).gas(msg.gas);
                        require(v115, Error(32, 8, 'sav7:030'));
                        0x29b5(msg.data[v5] >> 96, 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0);
                        v0 = (msg.data[v5 + 20 + 16] >> 240) + (v5 + 20 + 16 + 2 - v5) + v5;
                    } else if (42 == v4) {
                        v6 = v116 = 1;
                        0x29b5(msg.data[v5] >> 96, 0x22d473030f116ddee9f6b43ac78ba3, msg.data[v5 + 20 + 20] >> 128);
                        0x2a05(msg.data[v5] >> 96, msg.data[v5 + 20] >> 96, msg.data[v5 + 20 + 20] >> 128, 0);
                        v0 = 56 + v5;
                    } else if (43 == v4) {
                        v6 = v117 = 1;
                        if (0x286f580d == msg.data[v5 + 4] >> 224) {
                            v118 = v119 = 0;
                        } else {
                            require(0x8eb1b65e == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:032'));
                            v118 = v120 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v121 = 0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1.call(MEM[128:128 + msg.data[v99bV0x7cfV0xf9] >> 224], MEM[128:128 + v1f68_0x5V0x7cfV0xf9]).value(v118).gas(msg.gas);
                        require(v121, Error(32, 8, 'sav7:033'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (44 == v4) {
                        v6 = v122 = 1;
                        0x2925(msg.data[v5] >> 248, msg.data[v5 + 1] >> 96, msg.data[v5 + 1 + 20] >> 248, msg.data[v5 + 1 + 20 + 1] >> 248, msg.data[v5 + 1 + 20 + 1 + 1] >> 128, msg.data[v5 + 1 + 20 + 1 + 1 + 16] >> 128, 1);
                        v0 = v5 + 1 + 20 + 1 + 1 + 16 + 16 - v5 + v5;
                    } else if (45 == v4) {
                        v6 = v123 = 1;
                        if (0x42e3d72c == msg.data[v5 + 20 + 4] >> 224) {
                            v124 = v125 = 0;
                            0x931(9, msg.data[v5] >> 96);
                        } else {
                            require(0xf957f1ca == msg.data[v5 + 20 + 4] >> 224, Error(32, 8, 'sav7:036'));
                            v124 = v126 = 0;
                        }
                        CALLDATACOPY(128, v5 + 20 + 4, msg.data[v5 + 20] >> 224);
                        v127 = (msg.data[v5] >> 96).call(MEM[128:128 + msg.data[v99bV0x7cfV0xf9 + 20] >> 224], MEM[128:128 + v197b_0x5V0xbc3V0x7cfV0xf9]).value(v124).gas(msg.gas);
                        require(v127, Error(32, 8, 'sav7:037'));
                        v0 = v5 + 20 + 4 + (msg.data[v5 + 20] >> 224) - v5 + v5;
                    } else if (46 == v4) {
                        v6 = v128 = 1;
                        0x277e(msg.data[20 + v5] >> 96, msg.data[v5] >> 96, msg.data[40 + v5] >> 128);
                        MEM[128] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = this;
                        MEM[164] = msg.data[40 + v5] >> 128;
                        MEM[196] = msg.data[56 + v5] >> 248;
                        MEM[228] = msg.data[57 + v5] >> 248;
                        MEM[260] = msg.data[58 + v5] >> 224;
                        MEM[292] = 192;
                        MEM[324] = msg.data[78 + v5] >> 240;
                        v129 = v130 = 224;
                        if (msg.data[78 + v5] >> 240 > 0) {
                            v129 = v131 = v130 + (msg.data[78 + v5] >> 240);
                            if (v131 % 32 > 0) {
                                v129 = v132 = (v131 >> 5) + 1 << 5;
                                MEM[132 + (v131 >> 5 << 5)] = 0;
                            }
                            CALLDATACOPY(356, 80 + v5, msg.data[78 + v5] >> 240);
                        }
                        v133 = (msg.data[v5] >> 96).call(MEM[128:128 + v1a80_0x3V0xbafV0x7cfV0xf9 + 4], MEM[128:192]).gas(msg.gas);
                        require(v133, Error(32, 8, 'sav7:034'));
                        require(MEM[160] >= msg.data[62 + v5] >> 128, Error(32, 8, 'sav7:035'));
                        v0 = (msg.data[78 + v5] >> 240) + (80 + v5 - v5) + v5;
                    } else if (47 == v4) {
                        v6 = v134 = 1;
                        v135 = v136 = msg.data[v5 + 20] >> 128;
                        0x3286(msg.data[v5] >> 96);
                        if (msg.data[v5] >> 96) {
                            0x277e(msg.data[v5] >> 96, 0x4444c5dc75cb358380d2e3de08a90, v136);
                            v135 = v137 = 0;
                        }
                        0x31e2(v135);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else if (48 == v4) {
                        v6 = v138 = 1;
                        0x322b(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else if (49 == v4) {
                        v6 = v139 = 1;
                        if (0x48c89491 == msg.data[v5 + 4] >> 224) {
                            v140 = v141 = 0;
                            0x931(11, 0x4444c5dc75cb358380d2e3de08a90);
                        } else if (0xf3cd914c == msg.data[v5 + 4] >> 224) {
                            v140 = v142 = 0;
                        } else {
                            require(0x5a6bcfda == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:038'));
                            v140 = v143 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v144 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[128:128 + msg.data[v99bV0x7cfV0xf9] >> 224], MEM[128:128 + v2080_0x5V0x7cfV0xf9]).value(v140).gas(msg.gas);
                        require(v144, Error(32, 8, 'sav7:039'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (50 == v4) {
                        v6 = v145 = 1;
                        if (0xf83d08ba == msg.data[v5 + 4] >> 224) {
                            v146 = v147 = 0;
                            0x931(12, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0xc11dedd == msg.data[v5 + 4] >> 224) {
                            v146 = v148 = 0;
                            0x931(13, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444);
                        } else if (0 == msg.data[v5 + 4] >> 224) {
                            v146 = v149 = 0;
                        } else if (0x55f48d01 == msg.data[v5 + 4] >> 224) {
                            v146 = v150 = 0;
                        } else {
                            require(0x645ec9b5 == msg.data[v5 + 4] >> 224, Error(32, 8, 'sav7:042'));
                            v146 = v151 = 0;
                        }
                        CALLDATACOPY(128, v5 + 4, msg.data[v5] >> 224);
                        v152 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[128:128 + msg.data[v99bV0x7cfV0xf9] >> 224], MEM[128:128 + v2198_0x5V0x7cfV0xf9]).value(v146).gas(msg.gas);
                        require(v152, Error(32, 8, 'sav7:03d'));
                        v0 = v5 + 4 + (msg.data[v5] >> 224) - v5 + v5;
                    } else if (51 == v4) {
                        v6 = v153 = 1;
                        0x288e(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, msg.data[v5] >> 128);
                        v0 = v5 + 16 - v5 + v5;
                    } else if (52 == v4) {
                        v6 = v154 = 1;
                        0x32d5(msg.data[v5] >> 96, msg.data[v5 + 20] >> 128);
                        v0 = v5 + 20 + 16 - v5 + v5;
                    } else {
                        require(53 == v4, Error(32, 8, 'sav7:008'));
                        v6 = v155 = 1;
                        v156 = v157 = msg.data[v5 + 20 + 20 + 1] >> 128;
                        if (msg.data[v5 + 20] >> 96 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            0x29b5(msg.data[v5 + 20] >> 96, msg.data[v5] >> 96, v157);
                        }
                        MEM[128] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = msg.data[v5 + 20 + 20] >> 248;
                        MEM[164] = v157;
                        MEM[196] = 1;
                        MEM[228] = this;
                        v156 = v158 = 0;
                        if ((msg.data[v5 + 20] >> 96 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) <= v158) {
                        }
                        v159 = (msg.data[v5] >> 96).call(MEM[128:260], MEM[128:160]).value(v156).gas(msg.gas);
                        require(v159, Error(32, 8, 'sav7:043'));
                        require(MEM[128] >= msg.data[v5 + 20 + 20 + 1 + 16] >> 128, Error(32, 8, 'sav7:044'));
                        v0 = v5 + 20 + 20 + 1 + 16 + 16 - v5 + v5;
                    }
                    v160 = v44.sellQuote(v40).gas(msg.gas);
                    require(v160, Error(32, 8, 'sav7:00a'));
                    v161 = v162 = MEM[96];
                    // Unknown jump to Block ['0x13a8B0x7cfB0xf9', '0x1514B0x7cfB0xf9']. Refer to 3-address code (TAC);
                    if (v37 > 0) {
                        require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                    }
                    v0 = v39 - v5 + v5;
                    if (v37 > 0) {
                        require(!(v37 - v161), Error(32, 8, 'sav7:00b'));
                    }
                    v0 = v39 - v5 + v5;
                    v163 = v44.sellBase(v40).gas(msg.gas);
                    require(v163, Error(32, 8, 'sav7:00a'));
                    v161 = v164 = MEM[96];
                    // Unknown jump to Block ['0x1423B0x7cfB0xf9', '0x14c9B0x7cfB0xf9']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x13aaB0x7cfB0xf9. Refer to 3-address code (TAC);
                }
                v2 = v2 + v6;
            }
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__() public payable { 
}
