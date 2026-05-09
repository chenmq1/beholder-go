// Decompiled by library.dedaub.com
// 2025.12.06 20:06 UTC
// Compiled using the solidity compiler version 0.8.24


// Data structures and variables inferred from the use of storage instructions
bytes32 _lockAcquired; // TRANSIENT_STORAGE[0x10585b2fa64525d167b706ddb32cd1fd3619e593a0f6af693bc8cc4db141142a]



function 0x115e(uint256 varg0, address varg1, uint256 varg2) private { 
    0x24d(MEM[64], 100);
    v0 = v1, /* uint256 */ v2 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        v5 = 0x29c(RETURNDATASIZE());
        v3 = v6 = MEM[64];
        0x24d(v6, v5);
        MEM[v6] = RETURNDATASIZE();
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (v1) {
        v0 = v7 = !MEM[v3];
        if (bool(MEM[v3])) {
            require(v3 + MEM[v3] + 32 - (v3 + 32) >= 32);
            v0 = MEM[v3 + 32];
            require(!(v0 - bool(v0)));
        }
    }
    require(v0, Error(0x745f6631));
    return ;
}

function 0x1213(address varg0) private { 
    v0 = varg0;
    v1 = v2 = v0 == 0xcf05368fa36128a5ba01606474d4bd181a49735c;
    if (v0 != 0xcf05368fa36128a5ba01606474d4bd181a49735c) {
        v1 = v3 = v0 == 0x419365fecbaeb4d67d6b7ad4856a3a7cb65a399c;
    }
    if (!v1) {
        v1 = v4 = v0 == 0x97c1e72ea73c5d3737080b884201e39d7f26c845;
    }
    if (!v1) {
        v1 = v5 = v0 == 0xca3ff0e1b7cefaa1876c5a214ae8d3a09f59732b;
    }
    if (!v1) {
        v1 = v6 = v0 == 0x932298f5c5ea1cdaff1ad35aaa3a8c65a9ea8df4;
    }
    if (!v1) {
        v1 = v7 = v0 == 0xc1115e19de3fc9398744e7be7f72262e639acddc;
    }
    if (!v1) {
        v1 = v8 = v0 == 0x21b48803c7dbdf4981a446cca823bf35e4646fd7;
    }
    if (!v1) {
        v1 = v9 = v0 == 0xbb3a72ac6a30cab98206a8e6d143c61c9780d403;
    }
    if (!v1) {
        v1 = v10 = v0 == 0x57b9f348bf12feb243409d10567042655cf37115;
    }
    if (!v1) {
        v1 = v11 = v0 == 0x6efbaef7d3e8afaee9f57f14900c19a164bde6df;
    }
    if (!v1) {
        v1 = v12 = v0 == 0xf0e77cb32d7c6851e045c9fdb7ac0af23ee1c99f;
    }
    if (!v1) {
        v1 = v13 = v0 == 0x6388dbc119f9a7b0f7bc8ebeb93abdd2c7b8d4b3;
    }
    if (!v1) {
        v1 = v14 = v0 == 0xbd5d080f785bd388bc3222d4b37cecf1b39cbd3a;
    }
    if (!v1) {
        v1 = v15 = v0 == 0x61ab867ac84aa45fd5c81975bb00d585668e4de2;
    }
    if (!v1) {
        return 0;
    } else {
        return 1;
    }
}

function ShibaswapV2SwapCallback() public payable { 
}

function 0xf3a1d1bd(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(address(varg1) - varg1));
    require(address(varg1), Error(0x775f6337));
    require(0xce544bcbb20af95afaea28bb9a585ad4d671254f == msg.sender, Error(0x775f7537));
    require(this.balance >= varg0, Error(0x775f6135));
    v0 = 0xcf5();
    v1, /* uint256 */ v2 = address(varg1).call(MEM[v142e_0x0V0x9af + 32:v142e_0x0V0x9af + 32 + MEM[v142e_0x0V0x9af]], MEM[0:0]).value(varg0).gas(msg.gas);
    if (RETURNDATASIZE()) {
        v3 = 0x29c(RETURNDATASIZE());
        v4 = v5 = MEM[64];
        0x24d(v5, v3);
        MEM[v5] = RETURNDATASIZE();
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, Error(0x746d6640));
}

function swapV2Call(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    v0 = 0x29c(varg1.length);
    v1 = new bytes[](varg1.length);
    0x24d(v1, v0);
    require(varg1.data + varg1.length <= msg.data.length);
    CALLDATACOPY(v1.data, varg1.data, varg1.length);
    v1[varg1.length] = 0;
    require(STORAGE[msg.sender] == 1, Error(29298));
    STORAGE[msg.sender] = 0;
    if (1 < v1.length) {
        if (1 < v1.length) {
            MEM8[v1 + 33] = 0x0 & 0xFF;
            v2 = v1.length;
            v3 = v1.data;
            require(!(keccak256(v1) - _lockAcquired), Error('cszgb'));
            v4 = 0x1b8e(v1, MEM[v1 + 33] >> 248, 959);
            v5 = v6 = 0;
            require(v4 < MEM[MEM[v1 + 33] >> 248], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v7 = v8 = 0;
            v9 = v10 = 0;
            if (0 == !(MEM[32 + (v4 + (MEM[v1 + 33] >> 248))] >> 248)) {
                if (MEM[32 + (v4 + (MEM[v1 + 33] >> 248))] >> 248 == 3) {
                    v7 = v11 = MEM[21 + ((MEM[v1 + 33] >> 248) + v4)];
                }
                v12 = v13 = 1032;
                v14 = v15 = 0xc9c(v16);
            } else {
                v7 = v17 = MEM[(MEM[v1 + 33] >> 248) + v4 + 21];
                v12 = v18 = 1032;
                v7 = v19 = MEM[(MEM[v1 + 33] >> 248) + v4 + 36];
                v9 = v20 = MEM[(MEM[v1 + 33] >> 248) + v4 + 70];
                v5 = v21 = 1;
                v14 = v22 = 0xc9c(v16);
            }
            0x14d2(MEM[v1 + 33] >> 248, v14);
            if (v5) {
                0x115e(v9, v7, uint112(v7));
                exit;
            } else {
                exit;
            }
        }
    }
    revert(Panic(50));
}

function WETH() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
}

function 0x14d2(bytes varg0, uint256 varg1) private { 
    require(3 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = v1 = MEM[varg0 + 35] >> 248;
    v0 = v2 = 0x1b8e(varg0, varg1, 5364);
    v0 = v3 = 0;
    while (v0 < v0) {
        if (v0) {
            return ;
        } else {
            v0 = v4 = 5414;
            if (v0) {
                require(1 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[33 + v0] = (byte(bytes1(v0 << v0), 0x0)) & 0xFF;
            }
            require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v0 = v5 = 0;
            v6 = uint8(MEM[32 + (v0 + v0)] >> v0);
            if (v6) {
                if (v6 - 1) {
                    if (v6 - 2) {
                        if (v6 - 3) {
                            if (v6 - 4) {
                                if (v6 - 5) {
                                    if (v6 - 6) {
                                        if (v6 - 7) {
                                            if (v6 - 8) {
                                                if (v6 - 9) {
                                                    if (v6 - 10) {
                                                        if (v6 - 11) {
                                                            if (v6 - 16) {
                                                                if (v6 - 17) {
                                                                    if (v6 - 18) {
                                                                        if (v6 - 19) {
                                                                            if (v6 - 20) {
                                                                                if (v6 - 21) {
                                                                                    if (v6 - 22) {
                                                                                        if (v6 - 25) {
                                                                                            if (v6 - 27) {
                                                                                                if (v6 - 28) {
                                                                                                    if (v6 - 29) {
                                                                                                        if (v6 - 30) {
                                                                                                            v7 = v6 == 31;
                                                                                                            if (v6 != 31) {
                                                                                                                v7 = v8 = v6 == 33;
                                                                                                            }
                                                                                                            if (!v7) {
                                                                                                                v9 = v6 == 32;
                                                                                                                if (v6 != 32) {
                                                                                                                    v9 = v10 = v6 == 34;
                                                                                                                }
                                                                                                                if (!v9) {
                                                                                                                    if (v6 - 35) {
                                                                                                                        v11 = v6 == 39;
                                                                                                                        if (v6 != 39) {
                                                                                                                            v11 = v12 = v6 == 40;
                                                                                                                        }
                                                                                                                        if (!v11) {
                                                                                                                            v11 = v13 = v6 == 41;
                                                                                                                        }
                                                                                                                        if (!v11) {
                                                                                                                            v11 = v14 = v6 == 42;
                                                                                                                        }
                                                                                                                        if (!v11) {
                                                                                                                            if (v6 - 37) {
                                                                                                                                if (v6 - 38) {
                                                                                                                                    if (v6 - 43) {
                                                                                                                                        if (v6 - 44) {
                                                                                                                                            if (v6 - 45) {
                                                                                                                                                if (v6 - 46) {
                                                                                                                                                    if (v6 - 47) {
                                                                                                                                                        require(!(48 - v6), Error(0x697673));
                                                                                                                                                        v15 = v16 = 8378;
                                                                                                                                                        v15 = v17 = address(MEM[v0 + v0 + 21]);
                                                                                                                                                        v18 = v19 = MEM[64];
                                                                                                                                                        0x24d(v19, 100);
                                                                                                                                                        v20 = v21 = address(v17).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                                            v22 = 96;
                                                                                                                                                        } else {
                                                                                                                                                            v23 = 0x29c(RETURNDATASIZE());
                                                                                                                                                            v22 = v24 = MEM[64];
                                                                                                                                                            0x24d(v24, v23);
                                                                                                                                                            MEM[v24] = RETURNDATASIZE();
                                                                                                                                                            RETURNDATACOPY(v24 + 32, 0, RETURNDATASIZE());
                                                                                                                                                        }
                                                                                                                                                        if (v21) {
                                                                                                                                                            v20 = v25 = !MEM[v22];
                                                                                                                                                            if (bool(MEM[v22])) {
                                                                                                                                                                require(v22 + MEM[v22] + 32 - (v22 + 32) >= 32);
                                                                                                                                                                v20 = MEM[v22 + 32];
                                                                                                                                                                require(!(v20 - bool(v20)));
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        if (v20) {
                                                                                                                                                            v20 = v26 = bool((address(v17)).code.size);
                                                                                                                                                        }
                                                                                                                                                        if (!v20) {
                                                                                                                                                            v18 = MEM[64];
                                                                                                                                                            MEM[v18 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v18 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                                            MEM[v18 + 68] = 0;
                                                                                                                                                            v27 = v28 = 100;
                                                                                                                                                            MEM[v18] = 68;
                                                                                                                                                            v27 = v29 = 16513;
                                                                                                                                                            v27 = v30 = 16508;
                                                                                                                                                            v15 = v31 = 16502;
                                                                                                                                                            0x24d(v18, v28);
                                                                                                                                                            require(!((v18 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                            MEM[64] = v18 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                                                                                                            // Unknown jump to Block 0x20baB0x1ec90x14d2. Refer to 3-address code (TAC);
                                                                                                                                                            0x4575(v15, v18);
                                                                                                                                                            0x4575(v15, v18);
                                                                                                                                                            // Unknown jump to Block 0x20baB0x1ec90x14d2. Refer to 3-address code (TAC);
                                                                                                                                                            v32 = address(v15).call(MEM[v3fc70x4041V0x205fV0x1ec90x14d2 + 32:v3fc70x4041V0x205fV0x1ec90x14d2 + 32 + MEM[v3fc70x4041V0x205fV0x1ec90x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                                                // Unknown jump to Block 0x20baB0x1ec90x14d2. Refer to 3-address code (TAC);
                                                                                                                                                            } else {
                                                                                                                                                                v33 = RETURNDATASIZE();
                                                                                                                                                                // Unknown jump to Block 0x20baB0x1ec90x14d2. Refer to 3-address code (TAC);
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        if (0 == (uint8(MEM[v0 + v0 + 106]) == 1)) {
                                                                                                                                                            v34 = v35 = MEM[64];
                                                                                                                                                            MEM[v35] = 0xa64833a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v35 + 4] = uint8(MEM[v0 + v0 + 84]);
                                                                                                                                                            MEM[v35 + 4 + 32] = uint8(MEM[v0 + v0 + 85]);
                                                                                                                                                            MEM[v35 + 4 + 64] = uint112(MEM[v0 + v0 + 49]);
                                                                                                                                                            MEM[v35 + 4 + 96] = uint112(MEM[v0 + v0 + 63]);
                                                                                                                                                            MEM[v35 + 4 + 128] = address(MEM[v0 + v0 + 105]);
                                                                                                                                                            v36 = 160 + (v35 + 4);
                                                                                                                                                        } else {
                                                                                                                                                            v34 = v37 = MEM[64];
                                                                                                                                                            MEM[v37] = 0xce7d650300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v37 + 4] = uint8(MEM[v0 + v0 + 84]);
                                                                                                                                                            MEM[v37 + 4 + 32] = uint8(MEM[v0 + v0 + 85]);
                                                                                                                                                            MEM[v37 + 4 + 64] = uint112(MEM[v0 + v0 + 49]);
                                                                                                                                                            MEM[v37 + 4 + 96] = uint112(MEM[v0 + v0 + 63]);
                                                                                                                                                            MEM[v37 + 4 + 128] = 0;
                                                                                                                                                            MEM[v37 + 4 + 160] = address(MEM[v0 + v0 + 105]);
                                                                                                                                                            v36 = v38 = 192 + (v37 + 4);
                                                                                                                                                        }
                                                                                                                                                        v39 = address(MEM[v0 + v0 + 83]).call(MEM[v5820x205f_0x1V0x1ec90x14d2:v5820x205f_0x1V0x1ec90x14d2 + v201bV0x2114V0x1ec90x14d2 - v5820x205f_0x1V0x1ec90x14d2], MEM[v5820x205f_0x1V0x1ec90x14d2:v5820x205f_0x1V0x1ec90x14d2 + 32]).gas(msg.gas);
                                                                                                                                                        if (!v39) {
                                                                                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                                                                                        } else {
                                                                                                                                                            if (v39) {
                                                                                                                                                                v40 = v41 = 32;
                                                                                                                                                                if (32 > RETURNDATASIZE()) {
                                                                                                                                                                    v40 = v42 = RETURNDATASIZE();
                                                                                                                                                                    0x24d(v34, v42);
                                                                                                                                                                } else {
                                                                                                                                                                    0x24d(v34, v41);
                                                                                                                                                                }
                                                                                                                                                                require(v34 + v40 - v34 >= 32);
                                                                                                                                                            }
                                                                                                                                                            v0 = v0 + 106;
                                                                                                                                                        }
                                                                                                                                                    } else {
                                                                                                                                                        v43 = v44 = 8585;
                                                                                                                                                        v43 = v45 = address(MEM[v0 + v0 + 21]);
                                                                                                                                                        v46 = v47 = MEM[64];
                                                                                                                                                        0x24d(v47, 100);
                                                                                                                                                        v48 = v49 = address(v45).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                                            v50 = 96;
                                                                                                                                                        } else {
                                                                                                                                                            v51 = 0x29c(RETURNDATASIZE());
                                                                                                                                                            v50 = v52 = MEM[64];
                                                                                                                                                            0x24d(v52, v51);
                                                                                                                                                            MEM[v52] = RETURNDATASIZE();
                                                                                                                                                            RETURNDATACOPY(v52 + 32, 0, RETURNDATASIZE());
                                                                                                                                                        }
                                                                                                                                                        if (v49) {
                                                                                                                                                            v48 = v53 = !MEM[v50];
                                                                                                                                                            if (bool(MEM[v50])) {
                                                                                                                                                                require(v50 + MEM[v50] + 32 - (v50 + 32) >= 32);
                                                                                                                                                                v48 = MEM[v50 + 32];
                                                                                                                                                                require(!(v48 - bool(v48)));
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        if (v48) {
                                                                                                                                                            v48 = v54 = bool((address(v45)).code.size);
                                                                                                                                                        }
                                                                                                                                                        if (!v48) {
                                                                                                                                                            v46 = MEM[64];
                                                                                                                                                            MEM[v46 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v46 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                                            MEM[v46 + 68] = 0;
                                                                                                                                                            v55 = v56 = 100;
                                                                                                                                                            MEM[v46] = 68;
                                                                                                                                                            v55 = v57 = 16513;
                                                                                                                                                            v55 = v58 = 16508;
                                                                                                                                                            v43 = v59 = 16502;
                                                                                                                                                            0x24d(v46, v56);
                                                                                                                                                            require(!((v46 + (v55 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v46 + (v55 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v46)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                            MEM[64] = v46 + (v55 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                                                                                                            // Unknown jump to Block 0x2189B0x1eb80x14d2. Refer to 3-address code (TAC);
                                                                                                                                                            0x4575(v43, v46);
                                                                                                                                                            0x4575(v43, v46);
                                                                                                                                                            // Unknown jump to Block 0x2189B0x1eb80x14d2. Refer to 3-address code (TAC);
                                                                                                                                                            v60 = address(v43).call(MEM[v3fc70x4041V0x2135V0x1eb80x14d2 + 32:v3fc70x4041V0x2135V0x1eb80x14d2 + 32 + MEM[v3fc70x4041V0x2135V0x1eb80x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                                                // Unknown jump to Block 0x2189B0x1eb80x14d2. Refer to 3-address code (TAC);
                                                                                                                                                            } else {
                                                                                                                                                                v61 = RETURNDATASIZE();
                                                                                                                                                                // Unknown jump to Block 0x2189B0x1eb80x14d2. Refer to 3-address code (TAC);
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        if (0 == (uint8(MEM[v0 + v0 + 86]) == 1)) {
                                                                                                                                                            v62 = v63 = MEM[64];
                                                                                                                                                            MEM[v63] = 0xa64833a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v63 + 4] = uint8(MEM[v0 + v0 + 84]);
                                                                                                                                                            MEM[v63 + 4 + 32] = uint8(MEM[v0 + v0 + 85]);
                                                                                                                                                            MEM[v63 + 4 + 64] = uint112(MEM[v0 + v0 + 49]);
                                                                                                                                                            MEM[v63 + 4 + 96] = uint112(MEM[v0 + v0 + 63]);
                                                                                                                                                            MEM[v63 + 4 + 128] = address(this);
                                                                                                                                                            v64 = 160 + (v63 + 4);
                                                                                                                                                        } else {
                                                                                                                                                            v62 = v65 = MEM[64];
                                                                                                                                                            MEM[v65] = 0xce7d650300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v65 + 4] = uint8(MEM[v0 + v0 + 84]);
                                                                                                                                                            MEM[v65 + 4 + 32] = uint8(MEM[v0 + v0 + 85]);
                                                                                                                                                            MEM[v65 + 4 + 64] = uint112(MEM[v0 + v0 + 49]);
                                                                                                                                                            MEM[v65 + 4 + 96] = uint112(MEM[v0 + v0 + 63]);
                                                                                                                                                            MEM[v65 + 4 + 128] = 0;
                                                                                                                                                            MEM[v65 + 4 + 160] = address(this);
                                                                                                                                                            v64 = v66 = 192 + (v65 + 4);
                                                                                                                                                        }
                                                                                                                                                        v67 = address(MEM[v0 + v0 + 83]).call(MEM[v5820x2135_0x1V0x1eb80x14d2:v5820x2135_0x1V0x1eb80x14d2 + v201bV0x21cbV0x1eb80x14d2 - v5820x2135_0x1V0x1eb80x14d2], MEM[v5820x2135_0x1V0x1eb80x14d2:v5820x2135_0x1V0x1eb80x14d2 + 32]).gas(msg.gas);
                                                                                                                                                        if (!v67) {
                                                                                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                                                                                        } else if (v67) {
                                                                                                                                                            v68 = v69 = 32;
                                                                                                                                                            if (32 > RETURNDATASIZE()) {
                                                                                                                                                                v68 = v70 = RETURNDATASIZE();
                                                                                                                                                                0x24d(v62, v70);
                                                                                                                                                            } else {
                                                                                                                                                                0x24d(v62, v69);
                                                                                                                                                            }
                                                                                                                                                            require(v62 + v68 - v62 >= 32);
                                                                                                                                                            v0 = v0 + 86;
                                                                                                                                                        } else {
                                                                                                                                                            v0 = v0 + 86;
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                } else {
                                                                                                                                                    v71 = v72 = 8770;
                                                                                                                                                    v71 = v73 = address(MEM[v0 + v0 + 21]);
                                                                                                                                                    v74 = v75 = MEM[64];
                                                                                                                                                    0x24d(v75, 100);
                                                                                                                                                    v76 = v77 = address(v73).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                                                        v78 = 96;
                                                                                                                                                    } else {
                                                                                                                                                        v79 = 0x29c(RETURNDATASIZE());
                                                                                                                                                        v78 = v80 = MEM[64];
                                                                                                                                                        0x24d(v80, v79);
                                                                                                                                                        MEM[v80] = RETURNDATASIZE();
                                                                                                                                                        RETURNDATACOPY(v80 + 32, 0, RETURNDATASIZE());
                                                                                                                                                    }
                                                                                                                                                    if (v77) {
                                                                                                                                                        v76 = v81 = !MEM[v78];
                                                                                                                                                        if (bool(MEM[v78])) {
                                                                                                                                                            require(v78 + MEM[v78] + 32 - (v78 + 32) >= 32);
                                                                                                                                                            v76 = MEM[v78 + 32];
                                                                                                                                                            require(!(v76 - bool(v76)));
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    if (v76) {
                                                                                                                                                        v76 = v82 = bool((address(v73)).code.size);
                                                                                                                                                    }
                                                                                                                                                    if (!v76) {
                                                                                                                                                        v74 = MEM[64];
                                                                                                                                                        MEM[v74 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                        MEM[v74 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                                        MEM[v74 + 68] = 0;
                                                                                                                                                        v83 = v84 = 100;
                                                                                                                                                        MEM[v74] = 68;
                                                                                                                                                        v83 = v85 = 16513;
                                                                                                                                                        v83 = v86 = 16508;
                                                                                                                                                        v71 = v87 = 16502;
                                                                                                                                                        0x24d(v74, v84);
                                                                                                                                                        require(!((v74 + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v74 + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v74)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                        // Unknown jump to Block 0x2242B0x1ea60x14d2. Refer to 3-address code (TAC);
                                                                                                                                                        0x4575(v71, v74);
                                                                                                                                                        0x4575(v71, v74);
                                                                                                                                                        // Unknown jump to Block 0x2242B0x1ea60x14d2. Refer to 3-address code (TAC);
                                                                                                                                                        v88 = address(v71).call(MEM[v3fc70x4041V0x21edV0x1ea60x14d2 + 32:v3fc70x4041V0x21edV0x1ea60x14d2 + 32 + MEM[v3fc70x4041V0x21edV0x1ea60x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                                            // Unknown jump to Block 0x2242B0x1ea60x14d2. Refer to 3-address code (TAC);
                                                                                                                                                        } else {
                                                                                                                                                            v89 = RETURNDATASIZE();
                                                                                                                                                            // Unknown jump to Block 0x2242B0x1ea60x14d2. Refer to 3-address code (TAC);
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    v90, /* uint256 */ v91 = address(MEM[v0 + v0 + 83]).exchange(uint8(MEM[v0 + v0 + 84]), uint8(MEM[v0 + v0 + 85]), uint112(MEM[v0 + v0 + 49]), uint112(MEM[v0 + v0 + 63]), address(MEM[v0 + v0 + 105])).gas(msg.gas);
                                                                                                                                                    if (!v90) {
                                                                                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                                                                                    } else if (v90) {
                                                                                                                                                        v92 = v93 = 32;
                                                                                                                                                        if (32 > RETURNDATASIZE()) {
                                                                                                                                                            v92 = v94 = RETURNDATASIZE();
                                                                                                                                                            0x24d(MEM[64], v94);
                                                                                                                                                        } else {
                                                                                                                                                            0x24d(MEM[64], v93);
                                                                                                                                                        }
                                                                                                                                                        require(MEM[64] + v92 - MEM[64] >= 32);
                                                                                                                                                        v0 = v0 + 105;
                                                                                                                                                    } else {
                                                                                                                                                        v0 = v0 + 105;
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            } else {
                                                                                                                                                v95 = v96 = 8898;
                                                                                                                                                v95 = v97 = address(MEM[v0 + v0 + 21]);
                                                                                                                                                v98 = v99 = MEM[64];
                                                                                                                                                0x24d(v99, 100);
                                                                                                                                                v100 = v101 = address(v97).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                                                    v102 = 96;
                                                                                                                                                } else {
                                                                                                                                                    v103 = 0x29c(RETURNDATASIZE());
                                                                                                                                                    v102 = v104 = MEM[64];
                                                                                                                                                    0x24d(v104, v103);
                                                                                                                                                    MEM[v104] = RETURNDATASIZE();
                                                                                                                                                    RETURNDATACOPY(v104 + 32, 0, RETURNDATASIZE());
                                                                                                                                                }
                                                                                                                                                if (v101) {
                                                                                                                                                    v100 = v105 = !MEM[v102];
                                                                                                                                                    if (bool(MEM[v102])) {
                                                                                                                                                        require(v102 + MEM[v102] + 32 - (v102 + 32) >= 32);
                                                                                                                                                        v100 = MEM[v102 + 32];
                                                                                                                                                        require(!(v100 - bool(v100)));
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                if (v100) {
                                                                                                                                                    v100 = v106 = bool((address(v97)).code.size);
                                                                                                                                                }
                                                                                                                                                if (!v100) {
                                                                                                                                                    v98 = MEM[64];
                                                                                                                                                    MEM[v98 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                    MEM[v98 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                                    MEM[v98 + 68] = 0;
                                                                                                                                                    v107 = v108 = 100;
                                                                                                                                                    MEM[v98] = 68;
                                                                                                                                                    v107 = v109 = 16513;
                                                                                                                                                    v107 = v110 = 16508;
                                                                                                                                                    v95 = v111 = 16502;
                                                                                                                                                    0x24d(v98, v108);
                                                                                                                                                    require(!((v98 + (v107 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v98 + (v107 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v98)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                    // Unknown jump to Block 0x22c2B0x1e940x14d2. Refer to 3-address code (TAC);
                                                                                                                                                    0x4575(v95, v98);
                                                                                                                                                    0x4575(v95, v98);
                                                                                                                                                    // Unknown jump to Block 0x22c2B0x1e940x14d2. Refer to 3-address code (TAC);
                                                                                                                                                    v112 = address(v95).call(MEM[v3fc70x4041V0x2277V0x1e940x14d2 + 32:v3fc70x4041V0x2277V0x1e940x14d2 + 32 + MEM[v3fc70x4041V0x2277V0x1e940x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                                                        // Unknown jump to Block 0x22c2B0x1e940x14d2. Refer to 3-address code (TAC);
                                                                                                                                                    } else {
                                                                                                                                                        v113 = RETURNDATASIZE();
                                                                                                                                                        // Unknown jump to Block 0x22c2B0x1e940x14d2. Refer to 3-address code (TAC);
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                v114, /* uint256 */ v115 = address(MEM[v0 + v0 + 83]).exchange(uint8(MEM[v0 + v0 + 84]), uint8(MEM[v0 + v0 + 85]), uint112(MEM[v0 + v0 + 49]), uint112(MEM[v0 + v0 + 63]), address(this)).gas(msg.gas);
                                                                                                                                                if (!v114) {
                                                                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                                                                } else if (v114) {
                                                                                                                                                    v116 = v117 = 32;
                                                                                                                                                    if (32 > RETURNDATASIZE()) {
                                                                                                                                                        v116 = v118 = RETURNDATASIZE();
                                                                                                                                                        0x24d(MEM[64], v118);
                                                                                                                                                    } else {
                                                                                                                                                        0x24d(MEM[64], v117);
                                                                                                                                                    }
                                                                                                                                                    require(MEM[64] + v116 - MEM[64] >= 32);
                                                                                                                                                    v0 = v0 + 85;
                                                                                                                                                } else {
                                                                                                                                                    v0 = v0 + 85;
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        } else {
                                                                                                                                            v119 = v120 = 9041;
                                                                                                                                            v119 = v121 = address(MEM[v0 + v0 + 21]);
                                                                                                                                            v122 = v123 = MEM[64];
                                                                                                                                            0x24d(v123, 100);
                                                                                                                                            v124 = v125 = address(v121).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                                v126 = 96;
                                                                                                                                            } else {
                                                                                                                                                v127 = 0x29c(RETURNDATASIZE());
                                                                                                                                                v126 = v128 = MEM[64];
                                                                                                                                                0x24d(v128, v127);
                                                                                                                                                MEM[v128] = RETURNDATASIZE();
                                                                                                                                                RETURNDATACOPY(v128 + 32, 0, RETURNDATASIZE());
                                                                                                                                            }
                                                                                                                                            if (v125) {
                                                                                                                                                v124 = v129 = !MEM[v126];
                                                                                                                                                if (bool(MEM[v126])) {
                                                                                                                                                    require(v126 + MEM[v126] + 32 - (v126 + 32) >= 32);
                                                                                                                                                    v124 = MEM[v126 + 32];
                                                                                                                                                    require(!(v124 - bool(v124)));
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            if (v124) {
                                                                                                                                                v124 = v130 = bool((address(v121)).code.size);
                                                                                                                                            }
                                                                                                                                            if (!v124) {
                                                                                                                                                v122 = MEM[64];
                                                                                                                                                MEM[v122 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                MEM[v122 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                                MEM[v122 + 68] = 0;
                                                                                                                                                v131 = v132 = 100;
                                                                                                                                                MEM[v122] = 68;
                                                                                                                                                v131 = v133 = 16513;
                                                                                                                                                v131 = v134 = 16508;
                                                                                                                                                v119 = v135 = 16502;
                                                                                                                                                0x24d(v122, v132);
                                                                                                                                                require(!((v122 + (v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v122 + (v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v122)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                // Unknown jump to Block 0x2351B0x1e820x14d2. Refer to 3-address code (TAC);
                                                                                                                                                0x4575(v119, v122);
                                                                                                                                                0x4575(v119, v122);
                                                                                                                                                // Unknown jump to Block 0x2351B0x1e820x14d2. Refer to 3-address code (TAC);
                                                                                                                                                v136 = address(v119).call(MEM[v3fc70x4041V0x22fcV0x1e820x14d2 + 32:v3fc70x4041V0x22fcV0x1e820x14d2 + 32 + MEM[v3fc70x4041V0x22fcV0x1e820x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                                                    // Unknown jump to Block 0x2351B0x1e820x14d2. Refer to 3-address code (TAC);
                                                                                                                                                } else {
                                                                                                                                                    v137 = RETURNDATASIZE();
                                                                                                                                                    // Unknown jump to Block 0x2351B0x1e820x14d2. Refer to 3-address code (TAC);
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            v138, /* uint256 */ v139 = address(MEM[v0 + v0 + 83]).exchange(uint8(MEM[v0 + v0 + 84]), uint8(MEM[v0 + v0 + 85]), uint112(MEM[v0 + v0 + 49]), uint112(MEM[v0 + v0 + 63]), 0, address(MEM[v0 + v0 + 105])).gas(msg.gas);
                                                                                                                                            if (!v138) {
                                                                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                                                                            } else if (v138) {
                                                                                                                                                v140 = v141 = 32;
                                                                                                                                                if (32 > RETURNDATASIZE()) {
                                                                                                                                                    v140 = v142 = RETURNDATASIZE();
                                                                                                                                                    0x24d(MEM[64], v142);
                                                                                                                                                } else {
                                                                                                                                                    0x24d(MEM[64], v141);
                                                                                                                                                }
                                                                                                                                                require(MEM[64] + v140 - MEM[64] >= 32);
                                                                                                                                                v0 = v0 + 105;
                                                                                                                                            } else {
                                                                                                                                                v0 = v0 + 105;
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        v143 = v144 = 9145;
                                                                                                                                        v143 = v145 = address(MEM[v0 + v0 + 21]);
                                                                                                                                        v146 = v147 = MEM[64];
                                                                                                                                        0x24d(v147, 100);
                                                                                                                                        v148 = v149 = address(v145).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                            v150 = 96;
                                                                                                                                        } else {
                                                                                                                                            v151 = 0x29c(RETURNDATASIZE());
                                                                                                                                            v150 = v152 = MEM[64];
                                                                                                                                            0x24d(v152, v151);
                                                                                                                                            MEM[v152] = RETURNDATASIZE();
                                                                                                                                            RETURNDATACOPY(v152 + 32, 0, RETURNDATASIZE());
                                                                                                                                        }
                                                                                                                                        if (v149) {
                                                                                                                                            v148 = v153 = !MEM[v150];
                                                                                                                                            if (bool(MEM[v150])) {
                                                                                                                                                require(v150 + MEM[v150] + 32 - (v150 + 32) >= 32);
                                                                                                                                                v148 = MEM[v150 + 32];
                                                                                                                                                require(!(v148 - bool(v148)));
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        if (v148) {
                                                                                                                                            v148 = v154 = bool((address(v145)).code.size);
                                                                                                                                        }
                                                                                                                                        if (!v148) {
                                                                                                                                            v146 = MEM[64];
                                                                                                                                            MEM[v146 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                            MEM[v146 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                            MEM[v146 + 68] = 0;
                                                                                                                                            v155 = v156 = 100;
                                                                                                                                            MEM[v146] = 68;
                                                                                                                                            v155 = v157 = 16513;
                                                                                                                                            v155 = v158 = 16508;
                                                                                                                                            v143 = v159 = 16502;
                                                                                                                                            0x24d(v146, v156);
                                                                                                                                            require(!((v146 + (v155 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v146 + (v155 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v146)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                            // Unknown jump to Block 0x23b9B0x1e700x14d2. Refer to 3-address code (TAC);
                                                                                                                                            0x4575(v143, v146);
                                                                                                                                            0x4575(v143, v146);
                                                                                                                                            // Unknown jump to Block 0x23b9B0x1e700x14d2. Refer to 3-address code (TAC);
                                                                                                                                            v160 = address(v143).call(MEM[v3fc70x4041V0x236eV0x1e700x14d2 + 32:v3fc70x4041V0x236eV0x1e700x14d2 + 32 + MEM[v3fc70x4041V0x236eV0x1e700x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                                // Unknown jump to Block 0x23b9B0x1e700x14d2. Refer to 3-address code (TAC);
                                                                                                                                            } else {
                                                                                                                                                v161 = RETURNDATASIZE();
                                                                                                                                                // Unknown jump to Block 0x23b9B0x1e700x14d2. Refer to 3-address code (TAC);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        v162, /* uint256 */ v163 = address(MEM[v0 + v0 + 83]).exchange(uint8(MEM[v0 + v0 + 84]), uint8(MEM[v0 + v0 + 85]), uint112(MEM[v0 + v0 + 49]), uint112(MEM[v0 + v0 + 63]), 0, address(this)).gas(msg.gas);
                                                                                                                                        if (!v162) {
                                                                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                                                                        } else if (v162) {
                                                                                                                                            v164 = v165 = 32;
                                                                                                                                            if (32 > RETURNDATASIZE()) {
                                                                                                                                                v164 = v166 = RETURNDATASIZE();
                                                                                                                                                0x24d(MEM[64], v166);
                                                                                                                                            } else {
                                                                                                                                                0x24d(MEM[64], v165);
                                                                                                                                            }
                                                                                                                                            require(MEM[64] + v164 - MEM[64] >= 32);
                                                                                                                                            v0 = v0 + 85;
                                                                                                                                        } else {
                                                                                                                                            v0 = v0 + 85;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                } else {
                                                                                                                                    v167 = v168 = 9327;
                                                                                                                                    v167 = v169 = address(MEM[v0 + v0 + 21]);
                                                                                                                                    v170 = v171 = MEM[64];
                                                                                                                                    0x24d(v171, 100);
                                                                                                                                    v172 = v173 = address(v169).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                                        v174 = 96;
                                                                                                                                    } else {
                                                                                                                                        v175 = 0x29c(RETURNDATASIZE());
                                                                                                                                        v174 = v176 = MEM[64];
                                                                                                                                        0x24d(v176, v175);
                                                                                                                                        MEM[v176] = RETURNDATASIZE();
                                                                                                                                        RETURNDATACOPY(v176 + 32, 0, RETURNDATASIZE());
                                                                                                                                    }
                                                                                                                                    if (v173) {
                                                                                                                                        v172 = v177 = !MEM[v174];
                                                                                                                                        if (bool(MEM[v174])) {
                                                                                                                                            require(v174 + MEM[v174] + 32 - (v174 + 32) >= 32);
                                                                                                                                            v172 = MEM[v174 + 32];
                                                                                                                                            require(!(v172 - bool(v172)));
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    if (v172) {
                                                                                                                                        v172 = v178 = bool((address(v169)).code.size);
                                                                                                                                    }
                                                                                                                                    if (!v172) {
                                                                                                                                        v170 = MEM[64];
                                                                                                                                        MEM[v170 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                        MEM[v170 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                        MEM[v170 + 68] = 0;
                                                                                                                                        v179 = v180 = 100;
                                                                                                                                        MEM[v170] = 68;
                                                                                                                                        v179 = v181 = 16513;
                                                                                                                                        v179 = v182 = 16508;
                                                                                                                                        v167 = v183 = 16502;
                                                                                                                                        0x24d(v170, v180);
                                                                                                                                        require(!((v170 + (v179 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v170 + (v179 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v170)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                        // Unknown jump to Block 0x246fB0x1e5e0x14d2. Refer to 3-address code (TAC);
                                                                                                                                        0x4575(v167, v170);
                                                                                                                                        0x4575(v167, v170);
                                                                                                                                        // Unknown jump to Block 0x246fB0x1e5e0x14d2. Refer to 3-address code (TAC);
                                                                                                                                        v184 = address(v167).call(MEM[v3fc70x4041V0x2417V0x1e5e0x14d2 + 32:v3fc70x4041V0x2417V0x1e5e0x14d2 + 32 + MEM[v3fc70x4041V0x2417V0x1e5e0x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                            // Unknown jump to Block 0x246fB0x1e5e0x14d2. Refer to 3-address code (TAC);
                                                                                                                                        } else {
                                                                                                                                            v185 = RETURNDATASIZE();
                                                                                                                                            // Unknown jump to Block 0x246fB0x1e5e0x14d2. Refer to 3-address code (TAC);
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    v186, /* uint256 */ v187 = address(MEM[v0 + v0 + 83]).exchange(int128(uint8(MEM[v0 + v0 + 84])), int128(uint8(MEM[v0 + v0 + 85])), uint112(MEM[v0 + v0 + 49]), uint112(MEM[v0 + v0 + 63]), address(MEM[v0 + v0 + 105])).gas(msg.gas);
                                                                                                                                    if (!v186) {
                                                                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                                                                    } else if (v186) {
                                                                                                                                        v188 = v189 = 32;
                                                                                                                                        if (32 > RETURNDATASIZE()) {
                                                                                                                                            v188 = v190 = RETURNDATASIZE();
                                                                                                                                            0x24d(MEM[64], v190);
                                                                                                                                        } else {
                                                                                                                                            0x24d(MEM[64], v189);
                                                                                                                                        }
                                                                                                                                        require(MEM[64] + v188 - MEM[64] >= 32);
                                                                                                                                        v0 = v0 + 105;
                                                                                                                                    } else {
                                                                                                                                        v0 = v0 + 105;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                v191 = v192 = 9441;
                                                                                                                                v191 = v193 = address(MEM[v0 + v0 + 21]);
                                                                                                                                v194 = v195 = MEM[64];
                                                                                                                                0x24d(v195, 100);
                                                                                                                                v196 = v197 = address(v193).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                                    v198 = 96;
                                                                                                                                } else {
                                                                                                                                    v199 = 0x29c(RETURNDATASIZE());
                                                                                                                                    v198 = v200 = MEM[64];
                                                                                                                                    0x24d(v200, v199);
                                                                                                                                    MEM[v200] = RETURNDATASIZE();
                                                                                                                                    RETURNDATACOPY(v200 + 32, 0, RETURNDATASIZE());
                                                                                                                                }
                                                                                                                                if (v197) {
                                                                                                                                    v196 = v201 = !MEM[v198];
                                                                                                                                    if (bool(MEM[v198])) {
                                                                                                                                        require(v198 + MEM[v198] + 32 - (v198 + 32) >= 32);
                                                                                                                                        v196 = MEM[v198 + 32];
                                                                                                                                        require(!(v196 - bool(v196)));
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                if (v196) {
                                                                                                                                    v196 = v202 = bool((address(v193)).code.size);
                                                                                                                                }
                                                                                                                                if (!v196) {
                                                                                                                                    v194 = MEM[64];
                                                                                                                                    MEM[v194 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                    MEM[v194 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                    MEM[v194 + 68] = 0;
                                                                                                                                    v203 = v204 = 100;
                                                                                                                                    MEM[v194] = 68;
                                                                                                                                    v203 = v205 = 16513;
                                                                                                                                    v203 = v206 = 16508;
                                                                                                                                    v191 = v207 = 16502;
                                                                                                                                    0x24d(v194, v204);
                                                                                                                                    require(!((v194 + (v203 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v194 + (v203 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v194)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                    // Unknown jump to Block 0x24e1B0x1e4c0x14d2. Refer to 3-address code (TAC);
                                                                                                                                    0x4575(v191, v194);
                                                                                                                                    0x4575(v191, v194);
                                                                                                                                    // Unknown jump to Block 0x24e1B0x1e4c0x14d2. Refer to 3-address code (TAC);
                                                                                                                                    v208 = address(v191).call(MEM[v3fc70x4041V0x2495V0x1e4c0x14d2 + 32:v3fc70x4041V0x2495V0x1e4c0x14d2 + 32 + MEM[v3fc70x4041V0x2495V0x1e4c0x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                                        // Unknown jump to Block 0x24e1B0x1e4c0x14d2. Refer to 3-address code (TAC);
                                                                                                                                    } else {
                                                                                                                                        v209 = RETURNDATASIZE();
                                                                                                                                        // Unknown jump to Block 0x24e1B0x1e4c0x14d2. Refer to 3-address code (TAC);
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                v210, /* uint256 */ v211 = address(MEM[v0 + v0 + 83]).exchange(int128(uint8(MEM[v0 + v0 + 84])), int128(uint8(MEM[v0 + v0 + 85])), uint112(MEM[v0 + v0 + 49]), uint112(MEM[v0 + v0 + 63]), address(this)).gas(msg.gas);
                                                                                                                                if (!v210) {
                                                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                                                } else if (v210) {
                                                                                                                                    v212 = v213 = 32;
                                                                                                                                    if (32 > RETURNDATASIZE()) {
                                                                                                                                        v212 = v214 = RETURNDATASIZE();
                                                                                                                                        0x24d(MEM[64], v214);
                                                                                                                                    } else {
                                                                                                                                        0x24d(MEM[64], v213);
                                                                                                                                    }
                                                                                                                                    require(MEM[64] + v212 - MEM[64] >= 32);
                                                                                                                                    v0 = v0 + 85;
                                                                                                                                } else {
                                                                                                                                    v0 = v0 + 85;
                                                                                                                                }
                                                                                                                            }
                                                                                                                        } else {
                                                                                                                            v215 = v216 = 9569;
                                                                                                                            v215 = v217 = address(MEM[v0 + v0 + 21]);
                                                                                                                            v218 = v219 = MEM[64];
                                                                                                                            0x24d(v219, 100);
                                                                                                                            v220 = v221 = address(v217).approve(address(MEM[v0 + v0 + 83]), uint112(MEM[v0 + v0 + 35])).gas(msg.gas);
                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                v222 = 96;
                                                                                                                            } else {
                                                                                                                                v223 = 0x29c(RETURNDATASIZE());
                                                                                                                                v222 = v224 = MEM[64];
                                                                                                                                0x24d(v224, v223);
                                                                                                                                MEM[v224] = RETURNDATASIZE();
                                                                                                                                RETURNDATACOPY(v224 + 32, 0, RETURNDATASIZE());
                                                                                                                            }
                                                                                                                            if (v221) {
                                                                                                                                v220 = v225 = !MEM[v222];
                                                                                                                                if (bool(MEM[v222])) {
                                                                                                                                    require(v222 + MEM[v222] + 32 - (v222 + 32) >= 32);
                                                                                                                                    v220 = MEM[v222 + 32];
                                                                                                                                    require(!(v220 - bool(v220)));
                                                                                                                                }
                                                                                                                            }
                                                                                                                            if (v220) {
                                                                                                                                v220 = v226 = bool((address(v217)).code.size);
                                                                                                                            }
                                                                                                                            if (!v220) {
                                                                                                                                v218 = MEM[64];
                                                                                                                                MEM[v218 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                MEM[v218 + 36] = address(MEM[v0 + v0 + 83]);
                                                                                                                                MEM[v218 + 68] = 0;
                                                                                                                                v227 = v228 = 100;
                                                                                                                                MEM[v218] = 68;
                                                                                                                                v227 = v229 = 16513;
                                                                                                                                v227 = v230 = 16508;
                                                                                                                                v215 = v231 = 16502;
                                                                                                                                0x24d(v218, v228);
                                                                                                                                require(!((v218 + (v227 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v218 + (v227 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v218)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                // Unknown jump to Block 0x2561B0x1e3a0x14d2. Refer to 3-address code (TAC);
                                                                                                                                0x4575(v215, v218);
                                                                                                                                0x4575(v215, v218);
                                                                                                                                // Unknown jump to Block 0x2561B0x1e3a0x14d2. Refer to 3-address code (TAC);
                                                                                                                                v232 = address(v215).call(MEM[v3fc70x4041V0x250fV0x1e3a0x14d2 + 32:v3fc70x4041V0x250fV0x1e3a0x14d2 + 32 + MEM[v3fc70x4041V0x250fV0x1e3a0x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                                    // Unknown jump to Block 0x2561B0x1e3a0x14d2. Refer to 3-address code (TAC);
                                                                                                                                } else {
                                                                                                                                    v233 = RETURNDATASIZE();
                                                                                                                                    // Unknown jump to Block 0x2561B0x1e3a0x14d2. Refer to 3-address code (TAC);
                                                                                                                                }
                                                                                                                            }
                                                                                                                            v234, /* uint256 */ v235 = address(MEM[v0 + v0 + 83]).exchange(int128(uint8(MEM[v0 + v0 + 84])), int128(uint8(MEM[v0 + v0 + 85])), uint112(MEM[v0 + v0 + 49]), uint112(MEM[v0 + v0 + 63])).gas(msg.gas);
                                                                                                                            if (!v234) {
                                                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                                                            } else if (v234) {
                                                                                                                                v236 = v237 = 32;
                                                                                                                                if (32 > RETURNDATASIZE()) {
                                                                                                                                    v236 = v238 = RETURNDATASIZE();
                                                                                                                                    0x24d(MEM[64], v238);
                                                                                                                                } else {
                                                                                                                                    0x24d(MEM[64], v237);
                                                                                                                                }
                                                                                                                                require(MEM[64] + v236 - MEM[64] >= 32);
                                                                                                                                v0 = v0 + 85;
                                                                                                                            } else {
                                                                                                                                v0 = v0 + 85;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        v0 = v239 = 7185;
                                                                                                                        v0 = 0x25b1(v0);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    v0 = v240 = 7185;
                                                                                                                    v0 = 0x28df(v0, v0);
                                                                                                                    v241 = v0 + v0;
                                                                                                                    v242 = v243 = address(MEM[v241 + 41]);
                                                                                                                    v242 = v244 = 10545;
                                                                                                                    v245 = v246 = MEM[64];
                                                                                                                    0x24d(v246, 100);
                                                                                                                    v247 = v248, /* uint256 */ v249 = address(v243).approve(address(MEM[v241 + 21]), uint112(MEM[v241 + 55])).gas(msg.gas);
                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                        v250 = 96;
                                                                                                                    } else {
                                                                                                                        v251 = 0x29c(RETURNDATASIZE());
                                                                                                                        v250 = v252 = MEM[64];
                                                                                                                        0x24d(v252, v251);
                                                                                                                        MEM[v252] = RETURNDATASIZE();
                                                                                                                        RETURNDATACOPY(v249, 0, RETURNDATASIZE());
                                                                                                                    }
                                                                                                                    if (v248) {
                                                                                                                        v247 = v253 = !MEM[v250];
                                                                                                                        if (bool(MEM[v250])) {
                                                                                                                            require(v250 + MEM[v250] + 32 - (v250 + 32) >= 32);
                                                                                                                            v247 = MEM[v250 + 32];
                                                                                                                            require(!(v247 - bool(v247)));
                                                                                                                        }
                                                                                                                    }
                                                                                                                    if (v247) {
                                                                                                                        v247 = v254 = bool((address(v243)).code.size);
                                                                                                                    }
                                                                                                                    if (!v247) {
                                                                                                                        v245 = MEM[64];
                                                                                                                        MEM[v245 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                        MEM[v245 + 36] = address(MEM[v241 + 21]);
                                                                                                                        MEM[v245 + 68] = 0;
                                                                                                                        v255 = v256 = 100;
                                                                                                                        MEM[v245] = 68;
                                                                                                                        v255 = v257 = 16513;
                                                                                                                        v255 = v258 = 16508;
                                                                                                                        v242 = v259 = 16502;
                                                                                                                        0x24d(v245, v256);
                                                                                                                        require(!((v245 + (v255 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v245 + (v255 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v245)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                        MEM[64] = v245 + (v255 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                                                                        // Unknown jump to Block 0x29310x14d2. Refer to 3-address code (TAC);
                                                                                                                        0x4575(v242, v245);
                                                                                                                        0x4575(v242, v245);
                                                                                                                        // Unknown jump to Block 0x29310x14d2. Refer to 3-address code (TAC);
                                                                                                                        v260 = address(v242).call(MEM[v3fc70x4041V0x28df0x14d2 + 32:v3fc70x4041V0x28df0x14d2 + 32 + MEM[v3fc70x4041V0x28df0x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                            // Unknown jump to Block 0x29310x14d2. Refer to 3-address code (TAC);
                                                                                                                        } else {
                                                                                                                            v261 = RETURNDATASIZE();
                                                                                                                            // Unknown jump to Block 0x29310x14d2. Refer to 3-address code (TAC);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    v262 = 0xcf5();
                                                                                                                    v263 = 0x26e();
                                                                                                                    v263.word0 = MEM[v241 + 135];
                                                                                                                    v263.word1 = 0;
                                                                                                                    v263.word2 = address(MEM[v241 + 41]);
                                                                                                                    v263.word3 = address(MEM[v241 + 89]);
                                                                                                                    v263.word4 = uint112(MEM[v241 + 69]);
                                                                                                                    v263.word5 = v262;
                                                                                                                    v264 = 0x27d();
                                                                                                                    v264.word0 = this;
                                                                                                                    v264.word1 = 0;
                                                                                                                    v264.word2 = address(MEM[155 + v241]);
                                                                                                                    v264.word3 = 0;
                                                                                                                    v265 = 0xccb(block.timestamp);
                                                                                                                    MEM[MEM[64]] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                                                                                                    MEM[MEM[64] + 4] = 224;
                                                                                                                    MEM[MEM[64] + 4 + 224] = v263.word0;
                                                                                                                    require(v263.word1 < 2, Panic(33)); // failed convertion to enum type
                                                                                                                    MEM[MEM[64] + 4 + (uint8.max + 1)] = v263.word1;
                                                                                                                    MEM[MEM[64] + 4 + 288] = address(v263.word2);
                                                                                                                    MEM[MEM[64] + 4 + 320] = address(v263.word3);
                                                                                                                    MEM[MEM[64] + 4 + 352] = v263.word4;
                                                                                                                    MEM[MEM[64] + 4 + 384] = 192;
                                                                                                                    MEM[MEM[64] + 4 + 416] = MEM[v263.word5];
                                                                                                                    v266 = 0;
                                                                                                                    while (v266 < MEM[v263.word5]) {
                                                                                                                        MEM[v266 + (MEM[64] + 4 + 416 + 32)] = MEM[v266 + (v263.word5 + 32)];
                                                                                                                        v266 += 32;
                                                                                                                    }
                                                                                                                    MEM[MEM[v263.word5] + (MEM[64] + 4 + 416 + 32)] = 0;
                                                                                                                    MEM[MEM[64] + 4 + 32] = address(v264.word0);
                                                                                                                    MEM[MEM[64] + 4 + 32 + 32] = bool(v264.word1);
                                                                                                                    MEM[MEM[64] + 4 + 32 + 64] = address(v264.word2);
                                                                                                                    MEM[MEM[64] + 4 + 32 + 96] = bool(v264.word3);
                                                                                                                }
                                                                                                            } else {
                                                                                                                v0 = v267 = 7185;
                                                                                                                v0 = 0x29e2(v0, v0);
                                                                                                                v268 = v0 + v0;
                                                                                                                v269 = v270 = 10801;
                                                                                                                v269 = v271 = address(MEM[v268 + 41]);
                                                                                                                v272 = v273 = MEM[64];
                                                                                                                0x24d(v273, 100);
                                                                                                                v274 = v275, /* uint256 */ v276 = address(v271).approve(address(MEM[v268 + 21]), uint112(MEM[v268 + 55])).gas(msg.gas);
                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                    v277 = 96;
                                                                                                                } else {
                                                                                                                    v278 = 0x29c(RETURNDATASIZE());
                                                                                                                    v277 = v279 = MEM[64];
                                                                                                                    0x24d(v279, v278);
                                                                                                                    MEM[v279] = RETURNDATASIZE();
                                                                                                                    RETURNDATACOPY(v276, 0, RETURNDATASIZE());
                                                                                                                }
                                                                                                                if (v275) {
                                                                                                                    v274 = v280 = !MEM[v277];
                                                                                                                    if (bool(MEM[v277])) {
                                                                                                                        require(v277 + MEM[v277] + 32 - (v277 + 32) >= 32);
                                                                                                                        v274 = MEM[v277 + 32];
                                                                                                                        require(!(v274 - bool(v274)));
                                                                                                                    }
                                                                                                                }
                                                                                                                if (v274) {
                                                                                                                    v274 = v281 = bool((address(v271)).code.size);
                                                                                                                }
                                                                                                                if (!v274) {
                                                                                                                    v272 = MEM[64];
                                                                                                                    MEM[v272 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                    MEM[v272 + 36] = address(MEM[v268 + 21]);
                                                                                                                    MEM[v272 + 68] = 0;
                                                                                                                    v282 = v283 = 100;
                                                                                                                    MEM[v272] = 68;
                                                                                                                    v282 = v284 = 16513;
                                                                                                                    v282 = v285 = 16508;
                                                                                                                    v269 = v286 = 16502;
                                                                                                                    0x24d(v272, v283);
                                                                                                                    require(!((v272 + (v282 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v272 + (v282 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v272)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                    MEM[64] = v272 + (v282 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                                                                    // Unknown jump to Block 0x2a310x14d2. Refer to 3-address code (TAC);
                                                                                                                    0x4575(v269, v272);
                                                                                                                    0x4575(v269, v272);
                                                                                                                    // Unknown jump to Block 0x2a310x14d2. Refer to 3-address code (TAC);
                                                                                                                    v287 = address(v269).call(MEM[v3fc70x4041V0x29e20x14d2 + 32:v3fc70x4041V0x29e20x14d2 + 32 + MEM[v3fc70x4041V0x29e20x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                        // Unknown jump to Block 0x2a310x14d2. Refer to 3-address code (TAC);
                                                                                                                    } else {
                                                                                                                        v288 = RETURNDATASIZE();
                                                                                                                        // Unknown jump to Block 0x2a310x14d2. Refer to 3-address code (TAC);
                                                                                                                    }
                                                                                                                }
                                                                                                                v289 = v290 = 10812;
                                                                                                                v289 = v291 = 0xcf5();
                                                                                                                if (!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64]))) {
                                                                                                                    MEM[64] = MEM[64] + 32;
                                                                                                                    MEM[MEM[64]] = 0;
                                                                                                                    CALLDATACOPY(0, msg.data.length, 0);
                                                                                                                }
                                                                                                            }
                                                                                                        } else {
                                                                                                            v292 = v0 + v0;
                                                                                                            v293 = v294 = 11060;
                                                                                                            v293 = v295 = address(MEM[v292 + 41]);
                                                                                                            v296 = v297 = MEM[64];
                                                                                                            0x24d(v297, 100);
                                                                                                            v298 = v299 = address(v295).approve(address(MEM[v292 + 21]), uint112(MEM[v292 + 55])).gas(msg.gas);
                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                v300 = 96;
                                                                                                            } else {
                                                                                                                v301 = 0x29c(RETURNDATASIZE());
                                                                                                                v300 = v302 = MEM[64];
                                                                                                                0x24d(v302, v301);
                                                                                                                MEM[v302] = RETURNDATASIZE();
                                                                                                                RETURNDATACOPY(v302 + 32, 0, RETURNDATASIZE());
                                                                                                            }
                                                                                                            if (v299) {
                                                                                                                v298 = v303 = !MEM[v300];
                                                                                                                if (bool(MEM[v300])) {
                                                                                                                    require(v300 + MEM[v300] + 32 - (v300 + 32) >= 32);
                                                                                                                    v298 = MEM[v300 + 32];
                                                                                                                    require(!(v298 - bool(v298)));
                                                                                                                }
                                                                                                            }
                                                                                                            if (v298) {
                                                                                                                v298 = v304 = bool((address(v295)).code.size);
                                                                                                            }
                                                                                                            if (!v298) {
                                                                                                                v296 = MEM[64];
                                                                                                                MEM[v296 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                MEM[v296 + 36] = address(MEM[v292 + 21]);
                                                                                                                MEM[v296 + 68] = 0;
                                                                                                                v305 = v306 = 100;
                                                                                                                MEM[v296] = 68;
                                                                                                                v305 = v307 = 16513;
                                                                                                                v305 = v308 = 16508;
                                                                                                                v293 = v309 = 16502;
                                                                                                                0x24d(v296, v306);
                                                                                                                require(!((v296 + (v305 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v296 + (v305 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v296)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                // Unknown jump to Block 0x2b340x14d2. Refer to 3-address code (TAC);
                                                                                                                0x4575(v293, v296);
                                                                                                                0x4575(v293, v296);
                                                                                                                // Unknown jump to Block 0x2b340x14d2. Refer to 3-address code (TAC);
                                                                                                                v310 = address(v293).call(MEM[v3fc70x4041V0x2aef0x14d2 + 32:v3fc70x4041V0x2aef0x14d2 + 32 + MEM[v3fc70x4041V0x2aef0x14d2]], MEM[0:0]).gas(msg.gas);
                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                    // Unknown jump to Block 0x2b340x14d2. Refer to 3-address code (TAC);
                                                                                                                } else {
                                                                                                                    v311 = RETURNDATASIZE();
                                                                                                                    // Unknown jump to Block 0x2b340x14d2. Refer to 3-address code (TAC);
                                                                                                                }
                                                                                                            }
                                                                                                            v312, /* uint256 */ v313, /* uint256 */ v314 = address(MEM[v292 + 21]).swapExactAmountIn(address(MEM[v292 + 41]), uint112(MEM[v292 + 69]), address(MEM[v292 + 89]), uint112(MEM[v292 + 103]), uint256.max).gas(msg.gas);
                                                                                                            if (!v312) {
                                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                                            } else if (v312) {
                                                                                                                v315 = 64;
                                                                                                                if (64 > RETURNDATASIZE()) {
                                                                                                                    v315 = v316 = RETURNDATASIZE();
                                                                                                                }
                                                                                                                0x24d(MEM[64], v315);
                                                                                                                require(MEM[64] + v315 - MEM[64] >= 64);
                                                                                                                v0 = v0 + 103;
                                                                                                            } else {
                                                                                                                v0 = v0 + 103;
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        STORAGE[address(MEM[v0 + v0 + 21])] = 1;
                                                                                                        MEM[MEM[64]] = 0x8154831900000000000000000000000000000000000000000000000000000000;
                                                                                                        MEM[MEM[64] + 4] = 32;
                                                                                                        MEM[MEM[64] + 36] = MEM[v0];
                                                                                                        v317 = 0;
                                                                                                        while (v317 < MEM[v0]) {
                                                                                                            MEM[v317 + (MEM[64] + 36 + 32)] = MEM[v317 + (v0 + 32)];
                                                                                                            v317 += 32;
                                                                                                        }
                                                                                                        MEM[MEM[v0] + (MEM[64] + 36 + 32)] = 0;
                                                                                                        v318 = address(MEM[v0 + v0 + 21]).call(v319, MEM[64] + 0x8154831900000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                                                                                                        if (!v318) {
                                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                                        } else {
                                                                                                            if (v318) {
                                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                0x24d(MEM[64], RETURNDATASIZE());
                                                                                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                                                                                require(0x8154831900000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                                                                                require(MEM[64] + 0x8154831900000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                                                                                                v320 = 0x29c(v321.length);
                                                                                                                v322 = new uint256[](v321.length);
                                                                                                                0x24d(v322, v320);
                                                                                                                require(MEM[64] + 0x8154831900000000000000000000000000000000000000000000000000000000 + v321.length + 32 <= MEM[64] + RETURNDATASIZE());
                                                                                                                v323 = 0;
                                                                                                                while (v323 < v321.length) {
                                                                                                                    MEM[v323 + v322.data] = MEM[v323 + v321.data];
                                                                                                                    v323 += 32;
                                                                                                                }
                                                                                                                MEM[v321.length + v322.data] = 0;
                                                                                                            }
                                                                                                            v0 = v0 + 21;
                                                                                                            v0 = v324 = 1;
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    v0 = v325 = 7182;
                                                                                                    v0 = v326, v0, v0 = v327 = 0x2dc4(v0, v0);
                                                                                                    v328 = v0 + v0;
                                                                                                    v329 = 0x2c9e();
                                                                                                    v330 = v0 + 64;
                                                                                                    v331 = 0x2c9e();
                                                                                                    v332 = v0 + v330;
                                                                                                    v333 = new struct(6);
                                                                                                    require(!((v333 + 192 > uint64.max) | (v333 + 192 < v333)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                    v333.word0 = address(MEM[v332 + 20]);
                                                                                                    v333.word1 = address(MEM[v332 + 40]);
                                                                                                    v333.word2 = address(MEM[v332 + 60]);
                                                                                                    v333.word3 = address(MEM[v332 + 80]);
                                                                                                    v333.word4 = uint24(MEM[v332 + 83]);
                                                                                                    v333.word5 = MEM[v332 + 115];
                                                                                                    v334 = 0x2cde();
                                                                                                    v334.word0 = uint8(MEM[v328 + 22]) == 1;
                                                                                                    v335 = 0xf28(uint112(MEM[v328 + 64]));
                                                                                                    v334.word1 = v335;
                                                                                                    if (0 == (uint8(MEM[v328 + 22]) == 1)) {
                                                                                                        v334.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                                                                                        // Unknown jump to Block 0x2e590x14d2. Refer to 3-address code (TAC);
                                                                                                    } else {
                                                                                                        v334.word2 = address(0x1000276a4);
                                                                                                    }
                                                                                                }
                                                                                            } else {
                                                                                                STORAGE[address(MEM[v0 + v0 + 21])] = 1;
                                                                                                MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                                                                MEM[MEM[64] + 4] = 32;
                                                                                                MEM[MEM[64] + 36] = MEM[v0];
                                                                                                v336 = 0;
                                                                                                while (v336 < MEM[v0]) {
                                                                                                    MEM[v336 + (MEM[64] + 36 + 32)] = MEM[v336 + (v0 + 32)];
                                                                                                    v336 += 32;
                                                                                                }
                                                                                                MEM[MEM[v0] + (MEM[64] + 36 + 32)] = 0;
                                                                                                v337 = address(MEM[v0 + v0 + 21]).call(v319, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                                                                                                if (!v337) {
                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                } else {
                                                                                                    if (v337) {
                                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                        0x24d(MEM[64], RETURNDATASIZE());
                                                                                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                                                                        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                                                                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                                                                                        v338 = 0x29c(v339.length);
                                                                                                        v340 = new uint256[](v339.length);
                                                                                                        0x24d(v340, v338);
                                                                                                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v339.length + 32 <= MEM[64] + RETURNDATASIZE());
                                                                                                        v341 = 0;
                                                                                                        while (v341 < v339.length) {
                                                                                                            MEM[v341 + v340.data] = MEM[v341 + v339.data];
                                                                                                            v341 += 32;
                                                                                                        }
                                                                                                        MEM[v339.length + v340.data] = 0;
                                                                                                    }
                                                                                                    v0 = v0 + 21;
                                                                                                    v0 = v342 = 1;
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            v0 = v343 = 7182;
                                                                                            v0 = v344, v0 = 0x30fe(v0, v0);
                                                                                            v345 = 0x3016();
                                                                                            v346 = 0x3016();
                                                                                            v347 = v0 + (v0 + 64);
                                                                                            v348 = new struct(5);
                                                                                            if (!((v348 + 160 > uint64.max) | (v348 + 160 < v348))) {
                                                                                                v348.word0 = address(MEM[v347 + 20]);
                                                                                                v348.word1 = address(MEM[v347 + 40]);
                                                                                                v348.word2 = uint24(MEM[v347 + 43]);
                                                                                                v348.word3 = int24(uint24(MEM[v347 + 46]));
                                                                                            }
                                                                                        }
                                                                                        revert(Panic(65));
                                                                                    } else {
                                                                                        v0 = v349 = 0;
                                                                                        STORAGE[address(MEM[v0 + v0 + 21])] = 1;
                                                                                        if (uint8(MEM[v0 + v0 + 71]) == 1) {
                                                                                            v0 = v350 = 1;
                                                                                        }
                                                                                        if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                                                                                            v351 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                                                        } else {
                                                                                            v351 = v352 = 0x1000276a4;
                                                                                        }
                                                                                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                                                        MEM[MEM[64] + 4] = address(MEM[v0 + v0 + 70]);
                                                                                        MEM[MEM[64] + 4 + 32] = uint8(MEM[v0 + v0 + 22]) == 1;
                                                                                        MEM[MEM[64] + 4 + 64] = uint112(MEM[v0 + v0 + 50]);
                                                                                        MEM[MEM[64] + 4 + 96] = address(v351);
                                                                                        MEM[MEM[64] + 4 + 128] = 160;
                                                                                        MEM[MEM[64] + 4 + 160] = MEM[v0];
                                                                                        v353 = 0;
                                                                                        while (v353 < MEM[v0]) {
                                                                                            MEM[v353 + (MEM[64] + 4 + 160 + 32)] = MEM[v353 + (v0 + 32)];
                                                                                            v353 += 32;
                                                                                        }
                                                                                        MEM[MEM[v0] + (MEM[64] + 4 + 160 + 32)] = 0;
                                                                                        v354, /* uint256 */ v355, /* uint256 */ v356 = address(MEM[v0 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v14d2arg0x2] + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                                                                        if (!v354) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            if (v354) {
                                                                                                v357 = v358 = 64;
                                                                                                if (64 > RETURNDATASIZE()) {
                                                                                                    v357 = v359 = RETURNDATASIZE();
                                                                                                    0x24d(MEM[64], v359);
                                                                                                } else {
                                                                                                    0x24d(MEM[64], v358);
                                                                                                }
                                                                                                require(MEM[64] + v357 - MEM[64] >= 64);
                                                                                            }
                                                                                            v0 = v0 + 71;
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    v0 = v360, v0 = 0x3353(v0, v0);
                                                                                }
                                                                            } else {
                                                                                v0 = v361 = 0;
                                                                                STORAGE[address(MEM[v0 + v0 + 21])] = 1;
                                                                                if (uint8(MEM[v0 + v0 + 105]) == 1) {
                                                                                    v0 = v362 = 1;
                                                                                }
                                                                                if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                                                                                    v363 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                                                    v364 = v365 = MEM[64];
                                                                                    MEM[v365] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                                                    v366 = uint112(MEM[v0 + v0 + 84]);
                                                                                    v367 = v365 + 4;
                                                                                } else {
                                                                                    v363 = v368 = 0x1000276a4;
                                                                                    v364 = v369 = MEM[64];
                                                                                    MEM[v369] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                                                    v366 = v370 = uint112(MEM[v0 + v0 + 84]);
                                                                                    v367 = v371 = v369 + 4;
                                                                                }
                                                                                MEM[v367] = address(MEM[v0 + v0 + 104]);
                                                                                MEM[v367 + 32] = uint8(MEM[v0 + v0 + 22]) == 1;
                                                                                MEM[v367 + 64] = v366;
                                                                                MEM[v367 + 96] = address(v363);
                                                                                MEM[v367 + 128] = 160;
                                                                                MEM[v367 + 160] = MEM[v0];
                                                                                v372 = 0;
                                                                                while (v372 < MEM[v0]) {
                                                                                    MEM[v372 + (v367 + 160 + 32)] = MEM[v372 + (v0 + 32)];
                                                                                    v372 += 32;
                                                                                }
                                                                                MEM[MEM[v0] + (v367 + 160 + 32)] = 0;
                                                                                v373 = address(MEM[v0 + v0 + 21]).call(MEM[v2ad90x3411_0x0V0x1d3d0x14d2:v2ad90x3411_0x0V0x1d3d0x14d2 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v14d2arg0x2] + v34110x32ebV0x1d3d0x14d2 + 160 + 32 - v2ad90x3411_0x0V0x1d3d0x14d2], MEM[v2ad90x3411_0x0V0x1d3d0x14d2:v2ad90x3411_0x0V0x1d3d0x14d2 + 64]).gas(msg.gas);
                                                                                if (!v373) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else if (v373) {
                                                                                    v374 = v375 = 64;
                                                                                    if (64 > RETURNDATASIZE()) {
                                                                                        v374 = v376 = RETURNDATASIZE();
                                                                                        0x24d(v364, v376);
                                                                                    } else {
                                                                                        0x24d(v364, v375);
                                                                                    }
                                                                                    require(v364 + v374 - v364 >= 64);
                                                                                    v0 = v0 + 105;
                                                                                } else {
                                                                                    v0 = v0 + 105;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            v0 = v377, v0 = 0x34b6(v0, v0);
                                                                        }
                                                                    } else {
                                                                        0x44bf(MEM[v0 + v0 + 21], MEM[v0 + v0 + 41], MEM[v0 + v0 + 61], MEM[v0 + v0 + 81], uint112(MEM[v0 + v0 + 95]), uint112(MEM[v0 + v0 + 109]));
                                                                        v0 = v0 + 109;
                                                                        // Unknown jump to Block 0x1c110x14d2. Refer to 3-address code (TAC);
                                                                    }
                                                                } else {
                                                                    0x44bf(MEM[v0 + v0 + 21], MEM[v0 + v0 + 41], MEM[v0 + v0 + 61], this, uint112(MEM[v0 + v0 + 75]), uint112(MEM[v0 + v0 + 89]));
                                                                    v0 = v0 + 89;
                                                                    // Unknown jump to Block 0x1c110x14d2. Refer to 3-address code (TAC);
                                                                }
                                                            } else {
                                                                v378 = v379 = MEM[v0 + v0 + 21];
                                                                if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                                                                    v380 = v381 = 13885;
                                                                    v382 = 1;
                                                                    v383 = 0;
                                                                    v384 = v385 = uint160.max;
                                                                    v380 = v386 = address(MEM[v0 + v0 + 70]);
                                                                    v378 = v387 = MEM[64];
                                                                    0x24d(v387, 100);
                                                                    v388 = v389 = address(v386).approve(address(v379), uint112(MEM[v0 + v0 + 36])).gas(msg.gas);
                                                                    if (!RETURNDATASIZE()) {
                                                                        v390 = 96;
                                                                    } else {
                                                                        v391 = 0x29c(RETURNDATASIZE());
                                                                        v390 = v392 = MEM[64];
                                                                        0x24d(v392, v391);
                                                                        MEM[v392] = RETURNDATASIZE();
                                                                        RETURNDATACOPY(v392 + 32, 0, RETURNDATASIZE());
                                                                    }
                                                                    if (v389) {
                                                                        v388 = v393 = !MEM[v390];
                                                                        if (bool(MEM[v390])) {
                                                                            require(v390 + MEM[v390] + 32 - (v390 + 32) >= 32);
                                                                            v388 = MEM[v390 + 32];
                                                                            require(!(v388 - bool(v388)));
                                                                        }
                                                                    }
                                                                    if (v388) {
                                                                        v388 = v394 = bool((address(v386)).code.size);
                                                                    }
                                                                    if (!v388) {
                                                                        v378 = v395 = MEM[64];
                                                                        MEM[v395 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                        MEM[v395 + 36] = address(v379);
                                                                        MEM[v395 + 68] = 0;
                                                                        MEM[v395] = 68;
                                                                        v384 = v396 = 16513;
                                                                        v384 = v397 = 16508;
                                                                        0x24d(v395, 100);
                                                                        0x4575(v386, v395);
                                                                        0x4575(v386, v378);
                                                                        // Unknown jump to Block 0x363dB0x1cf00x14d2. Refer to 3-address code (TAC);
                                                                        v398 = address(v380).call(MEM[v15500x362b_0x6V0x36acV0x1cf00x14d2 + 32:v15500x362b_0x6V0x36acV0x1cf00x14d2 + 32 + MEM[v15500x362b_0x6V0x36acV0x1cf00x14d2]], MEM[0:0]).gas(msg.gas);
                                                                        if (!RETURNDATASIZE()) {
                                                                            // Unknown jump to Block 0x363dB0x1cf00x14d2. Refer to 3-address code (TAC);
                                                                        } else {
                                                                            v399 = RETURNDATASIZE();
                                                                            // Unknown jump to Block 0x363dB0x1cf00x14d2. Refer to 3-address code (TAC);
                                                                        }
                                                                    } else {
                                                                        // Unknown jump to Block 0x363dB0x1cf00x14d2. Refer to 3-address code (TAC);
                                                                    }
                                                                } else {
                                                                    v400 = v401 = 13885;
                                                                    v382 = v402 = 0;
                                                                    v383 = v403 = 1;
                                                                    v384 = v404 = uint160.max;
                                                                    v400 = v405 = address(MEM[v0 + v0 + 70]);
                                                                    v378 = v406 = MEM[64];
                                                                    0x24d(v406, 100);
                                                                    v407 = v408 = address(v405).approve(address(v379), uint112(MEM[v0 + v0 + 36])).gas(msg.gas);
                                                                    if (!RETURNDATASIZE()) {
                                                                        v409 = 96;
                                                                    } else {
                                                                        v410 = 0x29c(RETURNDATASIZE());
                                                                        v409 = v411 = MEM[64];
                                                                        0x24d(v411, v410);
                                                                        MEM[v411] = RETURNDATASIZE();
                                                                        RETURNDATACOPY(v411 + 32, 0, RETURNDATASIZE());
                                                                    }
                                                                    if (v408) {
                                                                        v407 = v412 = !MEM[v409];
                                                                        if (bool(MEM[v409])) {
                                                                            require(v409 + MEM[v409] + 32 - (v409 + 32) >= 32);
                                                                            v407 = MEM[v409 + 32];
                                                                            require(!(v407 - bool(v407)));
                                                                        }
                                                                    }
                                                                    if (v407) {
                                                                        v407 = v413 = bool((address(v405)).code.size);
                                                                    }
                                                                    if (!v407) {
                                                                        v378 = v414 = MEM[64];
                                                                        MEM[v414 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                        MEM[v414 + 36] = address(v379);
                                                                        MEM[v414 + 68] = 0;
                                                                        MEM[v414] = 68;
                                                                        v384 = v415 = 16513;
                                                                        v384 = v416 = 16508;
                                                                        0x24d(v414, 100);
                                                                        0x4575(v405, v414);
                                                                        0x4575(v405, v378);
                                                                        // Unknown jump to Block 0x363dB0x1cf00x14d2. Refer to 3-address code (TAC);
                                                                        v417 = address(v400).call(MEM[v15500x362b_0x6V0x36acV0x1cf00x14d2 + 32:v15500x362b_0x6V0x36acV0x1cf00x14d2 + 32 + MEM[v15500x362b_0x6V0x36acV0x1cf00x14d2]], MEM[0:0]).gas(msg.gas);
                                                                        if (!RETURNDATASIZE()) {
                                                                            // Unknown jump to Block 0x363dB0x1cf00x14d2. Refer to 3-address code (TAC);
                                                                        } else {
                                                                            v418 = RETURNDATASIZE();
                                                                            // Unknown jump to Block 0x363dB0x1cf00x14d2. Refer to 3-address code (TAC);
                                                                        }
                                                                    }
                                                                }
                                                                require((v378 & v384).code.size);
                                                                v419 = (v378 & v384).setMetaGold(uint8(v382), uint8(v383), uint112(MEM[v0 + v0 + 50]), uint112(MEM[v0 + v0 + 84])).gas(msg.gas);
                                                                if (!v419) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else if (v419) {
                                                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64];
                                                                    0x918(MEM[64], MEM[64]);
                                                                    v0 = v0 + 84;
                                                                } else {
                                                                    v0 = v0 + 84;
                                                                }
                                                            }
                                                        } else {
                                                            if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                                                                v420 = v421 = uint112(MEM[v0 + v0 + 36]);
                                                                v422 = v423 = 0;
                                                            } else {
                                                                v420 = v424 = 0;
                                                                v422 = v425 = uint112(MEM[v0 + v0 + 36]);
                                                            }
                                                            v426 = v427 = 0x36ba();
                                                            v427.word0 = v420;
                                                            v427.word1 = v422;
                                                            v428 = 0xcf5();
                                                            require((address(MEM[v0 + v0 + 21])).code.size);
                                                            MEM[MEM[64]] = 0x2d42ed5600000000000000000000000000000000000000000000000000000000;
                                                            v429 = v430 = MEM[64] + 4;
                                                            v431 = 0;
                                                            while (v431 < 2) {
                                                                MEM[v429] = MEM[v426];
                                                                v429 = v429 + 32;
                                                                v426 = v426 + 32;
                                                                v431 = v431 + 1;
                                                            }
                                                            MEM[v430 + 64] = address(MEM[v0 + v0 + 56]);
                                                            MEM[v430 + 96] = 128;
                                                            MEM[v430 + 128] = MEM[v428];
                                                            v432 = 0;
                                                            while (v432 < MEM[v428]) {
                                                                MEM[v432 + (v430 + 128 + 32)] = MEM[v432 + (v428 + 32)];
                                                                v432 += 32;
                                                            }
                                                            MEM[MEM[v428] + (v430 + 128 + 32)] = 0;
                                                            v433 = address(MEM[v0 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v377c_0x0V0x1cdd0x14d2] + v37a4V0x1cdd0x14d2 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                            if (!v433) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else if (v433) {
                                                                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                MEM[64] = MEM[64];
                                                                0x918(MEM[64], MEM[64]);
                                                                v0 = v0 + 56;
                                                            } else {
                                                                v0 = v0 + 56;
                                                            }
                                                        }
                                                    } else {
                                                        if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                                                            v434 = v435 = uint112(MEM[v0 + v0 + 36]);
                                                            v436 = v437 = 0;
                                                        } else {
                                                            v434 = v438 = 0;
                                                            v436 = v439 = uint112(MEM[v0 + v0 + 36]);
                                                        }
                                                        v440 = v441 = 0x36ba();
                                                        v441.word0 = v434;
                                                        v441.word1 = v436;
                                                        v442 = 0xcf5();
                                                        require((address(MEM[v0 + v0 + 21])).code.size);
                                                        MEM[MEM[64]] = 0x2d42ed5600000000000000000000000000000000000000000000000000000000;
                                                        v443 = v444 = MEM[64] + 4;
                                                        v445 = 0;
                                                        while (v445 < 2) {
                                                            MEM[v443] = MEM[v440];
                                                            v443 = v443 + 32;
                                                            v440 = v440 + 32;
                                                            v445 = v445 + 1;
                                                        }
                                                        MEM[v444 + 64] = address(this);
                                                        MEM[v444 + 96] = 128;
                                                        MEM[v444 + 128] = MEM[v442];
                                                        v446 = 0;
                                                        while (v446 < MEM[v442]) {
                                                            MEM[v446 + (v444 + 128 + 32)] = MEM[v446 + (v442 + 32)];
                                                            v446 += 32;
                                                        }
                                                        MEM[MEM[v442] + (v444 + 128 + 32)] = 0;
                                                        v447 = address(MEM[v0 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v381d_0x0V0x1cca0x14d2] + v3845V0x1cca0x14d2 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                        if (!v447) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else if (v447) {
                                                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            0x918(MEM[64], MEM[64]);
                                                            v0 = v0 + 36;
                                                        } else {
                                                            v0 = v0 + 36;
                                                        }
                                                    }
                                                } else {
                                                    0x115e(MEM[v0 + v0 + 70], MEM[v0 + v0 + 21], uint112(MEM[v0 + v0 + 36]));
                                                    if (uint8(MEM[v0 + v0 + 22]) - 1) {
                                                        v448 = v449 = uint112(MEM[v0 + v0 + 50]);
                                                        v450 = v451 = 0;
                                                    } else {
                                                        v448 = v452 = 0;
                                                        v450 = v453 = uint112(MEM[v0 + v0 + 50]);
                                                    }
                                                    v454 = v455 = 0x36ba();
                                                    v455.word0 = v448;
                                                    v455.word1 = v450;
                                                    v456 = 0xcf5();
                                                    require((address(MEM[v0 + v0 + 21])).code.size);
                                                    MEM[MEM[64]] = 0x2d42ed5600000000000000000000000000000000000000000000000000000000;
                                                    v457 = v458 = MEM[64] + 4;
                                                    v459 = 0;
                                                    while (v459 < 2) {
                                                        MEM[v457] = MEM[v454];
                                                        v457 = v457 + 32;
                                                        v454 = v454 + 32;
                                                        v459 = v459 + 1;
                                                    }
                                                    MEM[v458 + 64] = address(MEM[v0 + v0 + 90]);
                                                    MEM[v458 + 96] = 128;
                                                    MEM[v458 + 128] = MEM[v456];
                                                    v460 = 0;
                                                    while (v460 < MEM[v456]) {
                                                        MEM[v460 + (v458 + 128 + 32)] = MEM[v460 + (v456 + 32)];
                                                        v460 += 32;
                                                    }
                                                    MEM[MEM[v456] + (v458 + 128 + 32)] = 0;
                                                    v461 = address(MEM[v0 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v38d9_0x0V0x1cb70x14d2] + v3901V0x1cb70x14d2 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (!v461) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else if (v461) {
                                                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64];
                                                        0x918(MEM[64], MEM[64]);
                                                        v0 = v0 + 90;
                                                    } else {
                                                        v0 = v0 + 90;
                                                    }
                                                }
                                            } else {
                                                0x115e(MEM[v0 + v0 + 70], MEM[v0 + v0 + 21], uint112(MEM[v0 + v0 + 36]));
                                                if (uint8(MEM[v0 + v0 + 22]) - 1) {
                                                    v462 = v463 = uint112(MEM[v0 + v0 + 50]);
                                                    v464 = v465 = 0;
                                                } else {
                                                    v462 = v466 = 0;
                                                    v464 = v467 = uint112(MEM[v0 + v0 + 50]);
                                                }
                                                v468 = v469 = 0x36ba();
                                                v469.word0 = v462;
                                                v469.word1 = v464;
                                                v470 = 0xcf5();
                                                require((address(MEM[v0 + v0 + 21])).code.size);
                                                MEM[MEM[64]] = 0x2d42ed5600000000000000000000000000000000000000000000000000000000;
                                                v471 = v472 = MEM[64] + 4;
                                                v473 = 0;
                                                while (v473 < 2) {
                                                    MEM[v471] = MEM[v468];
                                                    v471 = v471 + 32;
                                                    v468 = v468 + 32;
                                                    v473 = v473 + 1;
                                                }
                                                MEM[v472 + 64] = address(this);
                                                MEM[v472 + 96] = 128;
                                                MEM[v472 + 128] = MEM[v470];
                                                v474 = 0;
                                                while (v474 < MEM[v470]) {
                                                    MEM[v474 + (v472 + 128 + 32)] = MEM[v474 + (v470 + 32)];
                                                    v474 += 32;
                                                }
                                                MEM[MEM[v470] + (v472 + 128 + 32)] = 0;
                                                v475 = address(MEM[v0 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3988_0x0V0x1ca40x14d2] + v39b0V0x1ca40x14d2 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                if (!v475) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else if (v475) {
                                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64];
                                                    0x918(MEM[64], MEM[64]);
                                                    v0 = v0 + 70;
                                                } else {
                                                    v0 = v0 + 70;
                                                }
                                            }
                                        } else {
                                            if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                                                v476 = uint112(MEM[v0 + v0 + 36]);
                                                v477 = 0;
                                            } else {
                                                v476 = v478 = 0;
                                                v477 = v479 = uint112(MEM[v0 + v0 + 36]);
                                            }
                                            require((address(MEM[v0 + v0 + 21])).code.size);
                                            v480 = address(MEM[v0 + v0 + 21]).swap(v476, v477, this).gas(msg.gas);
                                            if (!v480) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else if (v480) {
                                                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                0x918(MEM[64], MEM[64]);
                                                v0 = v0 + 36;
                                            } else {
                                                v0 = v0 + 36;
                                            }
                                        }
                                    } else {
                                        if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                                            v481 = uint112(MEM[v0 + v0 + 36]);
                                            v482 = 0;
                                        } else {
                                            v481 = v483 = 0;
                                            v482 = v484 = uint112(MEM[v0 + v0 + 36]);
                                        }
                                        require((address(MEM[v0 + v0 + 21])).code.size);
                                        v485 = address(MEM[v0 + v0 + 21]).swap(v481, v482, address(MEM[v0 + v0 + 56])).gas(msg.gas);
                                        if (!v485) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v485) {
                                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            0x918(MEM[64], MEM[64]);
                                            v0 = v0 + 56;
                                        } else {
                                            v0 = v0 + 56;
                                        }
                                    }
                                } else {
                                    0x115e(MEM[v0 + v0 + 70], MEM[v0 + v0 + 21], uint112(MEM[v0 + v0 + 36]));
                                    if (uint8(MEM[v0 + v0 + 22]) - 1) {
                                        v486 = 0;
                                        v487 = uint112(MEM[v0 + v0 + 50]);
                                    } else {
                                        v487 = v488 = 0;
                                        v486 = v489 = uint112(MEM[v0 + v0 + 50]);
                                    }
                                    require((address(MEM[v0 + v0 + 21])).code.size);
                                    v490 = address(MEM[v0 + v0 + 21]).swap(v487, v486, address(MEM[v0 + v0 + 90])).gas(msg.gas);
                                    if (!v490) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else if (v490) {
                                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        0x918(MEM[64], MEM[64]);
                                        v0 = v0 + 90;
                                    } else {
                                        v0 = v0 + 90;
                                    }
                                }
                            } else {
                                0x115e(MEM[v0 + v0 + 70], MEM[v0 + v0 + 21], uint112(MEM[v0 + v0 + 36]));
                                if (uint8(MEM[v0 + v0 + 22]) - 1) {
                                    v491 = uint112(MEM[v0 + v0 + 50]);
                                    v492 = 0;
                                } else {
                                    v491 = v493 = 0;
                                    v492 = v494 = uint112(MEM[v0 + v0 + 50]);
                                }
                                require((address(MEM[v0 + v0 + 21])).code.size);
                                v495 = address(MEM[v0 + v0 + 21]).swap(v491, v492, this).gas(msg.gas);
                                if (!v495) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v495) {
                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    0x918(MEM[64], MEM[64]);
                                    v0 = v0 + 70;
                                } else {
                                    v0 = v0 + 70;
                                }
                            }
                        } else {
                            v0 = v496 = 7182;
                            v0 = v497 = 0;
                            if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                                v498 = uint112(MEM[v0 + v0 + 36]);
                                v499 = v500 = 1;
                                v501 = 0;
                            } else {
                                v499 = v502 = 1;
                                v498 = v503 = 0;
                                v501 = v504 = uint112(MEM[v0 + v0 + 36]);
                            }
                            if (uint8(MEM[v0 + v0 + 37]) - v499) {
                                v505 = 0xcf5();
                                require((address(MEM[v0 + v0 + 21])).code.size);
                                v506 = v507 = MEM[64];
                                MEM[v507] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                MEM[v507 + 4] = v498;
                                MEM[v507 + 4 + 32] = v501;
                                MEM[v507 + 4 + 64] = address(this);
                                MEM[v507 + 4 + 96] = 128;
                                MEM[v507 + 4 + 128] = MEM[v505];
                                v508 = 0;
                                while (v508 < MEM[v505]) {
                                    MEM[v508 + (v507 + 4 + 128 + 32)] = MEM[v508 + (v505 + 32)];
                                    v508 += 32;
                                }
                                MEM[MEM[v505] + (v507 + 4 + 128 + 32)] = 0;
                                v509 = address(MEM[v0 + v0 + 21]).call(MEM[v3d19V0x1c440x14d2:v3d19V0x1c440x14d2 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3d06_0x0V0x1c440x14d2] + v3d19V0x1c440x14d2 + 4 + 128 + 32 - v3d19V0x1c440x14d2], MEM[v3d19V0x1c440x14d2:v3d19V0x1c440x14d2]).gas(msg.gas);
                                if (v509) {
                                    v0 = v510 = 37;
                                    if (v509) {
                                        v511 = v512 = 15706;
                                        require(v507 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v507;
                                    } else {
                                        v0 = v0 + v510;
                                    }
                                }
                            } else {
                                STORAGE[address(MEM[v0 + v0 + 21])] = 1;
                                require((address(MEM[v0 + v0 + 21])).code.size);
                                v506 = v513 = MEM[64];
                                MEM[v513] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                MEM[v513 + 4] = v498;
                                MEM[v513 + 4 + 32] = v501;
                                MEM[v513 + 4 + 64] = address(this);
                                MEM[v513 + 4 + 96] = 128;
                                MEM[v513 + 4 + 128] = MEM[v0];
                                v514 = 0;
                                while (v514 < MEM[v0]) {
                                    MEM[v514 + (v513 + 4 + 128 + 32)] = MEM[v514 + (v0 + 32)];
                                    v514 += 32;
                                }
                                MEM[MEM[v0] + (v513 + 4 + 128 + 32)] = 0;
                                v515 = address(MEM[v0 + v0 + 21]).call(MEM[v3ca9V0x1c440x14d2:v3ca9V0x1c440x14d2 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v14d2arg0x2] + v3ca9V0x1c440x14d2 + 4 + 128 + 32 - v3ca9V0x1c440x14d2], MEM[v3ca9V0x1c440x14d2:v3ca9V0x1c440x14d2]).gas(msg.gas);
                                if (v515) {
                                    if (v515) {
                                        v511 = v516 = 15596;
                                        require(v513 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v513;
                                    }
                                }
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                            v0 = v517 = 1;
                            v0 = v0 + 37;
                            // Unknown jump to Block 0x1c0e0x14d2. Refer to 3-address code (TAC);
                            0x918(v506, v506);
                            v0 += v0;
                            // Unknown jump to Block 0x3cd4B0x1c440x14d2. Refer to 3-address code (TAC);
                        }
                    } else {
                        if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                            v518 = uint112(MEM[v0 + v0 + 36]);
                            v519 = 0;
                        } else {
                            v518 = v520 = 0;
                            v519 = v521 = uint112(MEM[v0 + v0 + 36]);
                        }
                        v522 = 0xcf5();
                        require((address(MEM[v0 + v0 + 21])).code.size);
                        MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = v518;
                        MEM[MEM[64] + 4 + 32] = v519;
                        MEM[MEM[64] + 4 + 64] = address(MEM[v0 + v0 + 56]);
                        MEM[MEM[64] + 4 + 96] = 128;
                        MEM[MEM[64] + 4 + 128] = MEM[v522];
                        v523 = 0;
                        while (v523 < MEM[v522]) {
                            MEM[v523 + (MEM[64] + 4 + 128 + 32)] = MEM[v523 + (v522 + 32)];
                            v523 += 32;
                        }
                        MEM[MEM[v522] + (MEM[64] + 4 + 128 + 32)] = 0;
                        v524 = address(MEM[v0 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3db8_0x0V0x1c310x14d2] + MEM[64] + 4 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (!v524) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else if (v524) {
                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            0x918(MEM[64], MEM[64]);
                            v0 = v0 + 56;
                        } else {
                            v0 = v0 + 56;
                        }
                    }
                } else {
                    0x115e(MEM[v0 + v0 + 70], MEM[v0 + v0 + 21], uint112(MEM[v0 + v0 + 36]));
                    if (uint8(MEM[v0 + v0 + 22]) - 1) {
                        v525 = 0;
                        v526 = uint112(MEM[v0 + v0 + 50]);
                    } else {
                        v526 = v527 = 0;
                        v525 = v528 = uint112(MEM[v0 + v0 + 50]);
                    }
                    v529 = 0xcf5();
                    require((address(MEM[v0 + v0 + 21])).code.size);
                    MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = v526;
                    MEM[MEM[64] + 4 + 32] = v525;
                    MEM[MEM[64] + 4 + 64] = address(MEM[v0 + v0 + 90]);
                    MEM[MEM[64] + 4 + 96] = 128;
                    MEM[MEM[64] + 4 + 128] = MEM[v529];
                    v530 = 0;
                    while (v530 < MEM[v529]) {
                        MEM[v530 + (MEM[64] + 4 + 128 + 32)] = MEM[v530 + (v529 + 32)];
                        v530 += 32;
                    }
                    MEM[MEM[v529] + (MEM[64] + 4 + 128 + 32)] = 0;
                    v531 = address(MEM[v0 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3e4f_0x0V0x1c1e0x14d2] + MEM[64] + 4 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (!v531) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else if (v531) {
                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        0x918(MEM[64], MEM[64]);
                        v0 = v0 + 90;
                    } else {
                        v0 = v0 + 90;
                    }
                }
            } else {
                v0 = v532 = 7182;
                v0 = v533 = 0;
                if (0 == (uint8(MEM[v0 + v0 + 22]) == 1)) {
                    v534 = uint112(MEM[v0 + v0 + 50]);
                    v535 = v536 = 1;
                    v537 = 0;
                } else {
                    v535 = v538 = 1;
                    v534 = v539 = 0;
                    v537 = v540 = uint112(MEM[v0 + v0 + 50]);
                }
                if (uint8(MEM[v0 + v0 + 71]) - v535) {
                    0x115e(MEM[v0 + v0 + 70], MEM[v0 + v0 + 21], uint112(MEM[v0 + v0 + 36]));
                    v541 = 0xcf5();
                    require((address(MEM[v0 + v0 + 21])).code.size);
                    v542 = v543 = MEM[64];
                    MEM[v543] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[v543 + 4] = v534;
                    MEM[v543 + 4 + 32] = v537;
                    MEM[v543 + 4 + 64] = address(this);
                    MEM[v543 + 4 + 96] = 128;
                    MEM[v543 + 4 + 128] = MEM[v541];
                    v544 = 0;
                    while (v544 < MEM[v541]) {
                        MEM[v544 + (v543 + 4 + 128 + 32)] = MEM[v544 + (v541 + 32)];
                        v544 += 32;
                    }
                    MEM[MEM[v541] + (v543 + 4 + 128 + 32)] = 0;
                    v545 = address(MEM[v0 + v0 + 21]).call(MEM[v3f7dV0x1c030x14d2:v3f7dV0x1c030x14d2 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3f6a_0x0V0x1c030x14d2] + v3f7dV0x1c030x14d2 + 4 + 128 + 32 - v3f7dV0x1c030x14d2], MEM[v3f7dV0x1c030x14d2:v3f7dV0x1c030x14d2]).gas(msg.gas);
                    if (v545) {
                        v0 = v546 = 71;
                        if (v545) {
                            v547 = v548 = 15706;
                            require(v543 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v543;
                        } else {
                            v0 = v0 + v546;
                        }
                    }
                } else {
                    STORAGE[address(MEM[v0 + v0 + 21])] = 1;
                    require((address(MEM[v0 + v0 + 21])).code.size);
                    v542 = v549 = MEM[64];
                    MEM[v549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[v549 + 4] = v534;
                    MEM[v549 + 4 + 32] = v537;
                    MEM[v549 + 4 + 64] = address(this);
                    MEM[v549 + 4 + 96] = 128;
                    MEM[v549 + 4 + 128] = MEM[v0];
                    v550 = 0;
                    while (v550 < MEM[v0]) {
                        MEM[v550 + (v549 + 4 + 128 + 32)] = MEM[v550 + (v0 + 32)];
                        v550 += 32;
                    }
                    MEM[MEM[v0] + (v549 + 4 + 128 + 32)] = 0;
                    v551 = address(MEM[v0 + v0 + 21]).call(MEM[v3ef8V0x1c030x14d2:v3ef8V0x1c030x14d2 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v14d2arg0x2] + v3ef8V0x1c030x14d2 + 4 + 128 + 32 - v3ef8V0x1c030x14d2], MEM[v3ef8V0x1c030x14d2:v3ef8V0x1c030x14d2]).gas(msg.gas);
                    if (v551) {
                        if (v551) {
                            v547 = v552 = 16187;
                            require(v549 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v549;
                        }
                    }
                }
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
                v0 = v553 = 1;
                v0 = v0 + 71;
                // Unknown jump to Block 0x1c0e0x14d2. Refer to 3-address code (TAC);
                0x918(v542, v542);
                v0 += v0;
                // Unknown jump to Block 0x3f23B0x1c030x14d2. Refer to 3-address code (TAC);
            }
            v0 += 1;
        }
    }
    return ;
}

function lockAcquired(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    v0 = 0x29c(rawData.length);
    v1 = new bytes[](rawData.length);
    0x24d(v1, v0);
    require(rawData.data + rawData.length <= msg.data.length);
    CALLDATACOPY(v1.data, rawData.data, rawData.length);
    v1[rawData.length] = 0;
    require(STORAGE[msg.sender] == 1, Error(29298));
    STORAGE[msg.sender] = 0;
    if (1 < v1.length) {
        if (1 < v1.length) {
            MEM8[v1 + 33] = 0x0 & 0xFF;
            v2 = v1.length;
            v3 = v1.data;
            require(!(keccak256(v1) - _lockAcquired), Error('cszgb'));
            v4 = 0xc9c(MEM[v1 + 33] >> 248);
            0x14d2(v1, v4);
            v5 = 0xcf5();
            v6 = new uint256[](MEM[v5]);
            v7 = 0;
            while (v7 < MEM[v5]) {
                MEM[v7 + v6.data] = MEM[v7 + (v5 + 32)];
                v7 += 32;
            }
            MEM[MEM[v5] + v6.data] = 0;
            return v6;
        }
    }
    revert(Panic(50));
}

function 0x49907c7a(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(address(varg1) - varg1));
    require(msg.sender == 0xac97c523aa35289902ea3c39b6998c428a01b111, Error('w_u99'));
    v0 = v1 = address(varg1) == 0xac97c523aa35289902ea3c39b6998c428a01b111;
    if (address(varg1) != 0xac97c523aa35289902ea3c39b6998c428a01b111) {
        require(varg0 <= 0x29a2241af62c0000, Error('h amount'));
    } else {
        require(varg0 <= 0x429d069189e0000, Error('w amount'));
    }
    v0 = v2 = 0x1213(address(varg1));
    if (v2) {
    }
    require(v0, Error(0x775f7530));
    v3, /* uint256 */ v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    if (v3) {
        v4 = v5 = 0;
        if (v3) {
            v6 = v7 = 32;
            if (32 > RETURNDATASIZE()) {
                v6 = RETURNDATASIZE();
                0x24d(MEM[64], v6);
            } else {
                0x24d(MEM[64], v7);
            }
            require(MEM[64] + v6 - MEM[64] >= 32);
        }
        require(v4 >= varg0, Error(0x775f62));
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        v8 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg0).gas(msg.gas);
        if (v8) {
            if (v8) {
                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                0x918(MEM[64], MEM[64]);
            }
            v9 = 0xcf5();
            v10, /* uint256 */ v11 = address(varg1).call(MEM[v1540x142e_0x0 + 32:v1540x142e_0x0 + 32 + MEM[v1540x142e_0x0]], MEM[0:0]).value(varg0).gas(msg.gas);
            if (RETURNDATASIZE()) {
                v12 = 0x29c(RETURNDATASIZE());
                v13 = v14 = MEM[64];
                0x24d(v14, v12);
                MEM[v14] = RETURNDATASIZE();
                RETURNDATACOPY(v11, 0, RETURNDATASIZE());
            }
            require(v10, Error(0x746d6640));
            exit;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x350f0558(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(address(varg1) - varg1));
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    require(!(0xce544bcbb20af95afaea28bb9a585ad4d671254f - msg.sender), Error(0x775f7534));
    require(!bool(!varg0.length), Error(0x775f7440));
    require(!bool(!address(varg1)), Error(0x775f7535));
    require(varg0.length == varg2.length, Error(0x775f7031));
    v0 = v1 = 0;
    while (1) {
        if (v0 < varg0.length) {
            v2 = 0xb3a(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v2]) - msg.data[v2]));
            v3 = 0xb3a(varg2.data, varg2.length, v0);
            0x115e(msg.data[v2], varg1, msg.data[v3]);
            v0 = v0 + 1;
        } else {
            exit;
        }
    }
}

function 0x23cffbe9(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == 0xac97c523aa35289902ea3c39b6998c428a01b111, Error('wrong'));
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    if (v0) {
        v1 = v2 = 0;
        if (v0) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = RETURNDATASIZE();
            }
            0x24d(MEM[64], v3);
            require(MEM[64] + v3 - MEM[64] >= 32);
        }
        require(v1 >= varg0, Error(0x6c61636b));
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg0).gas(msg.gas);
        if (v5) {
            if (v5) {
                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                0x918(MEM[64], MEM[64]);
                exit;
            } else {
                exit;
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x160a(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    return 32 + (varg0 << 5);
}

function elkDexV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(_data + 35 < msg.data.length);
    require(_data.length <= uint64.max);
    require(_data + _data.length + 36 <= msg.data.length);
    require(STORAGE[msg.sender] == 1, Error(29298));
    STORAGE[msg.sender] = 0;
    v0 = 0x29c(_data.length);
    v1 = new bytes[](_data.length);
    0x24d(v1, v0);
    require(_data.data + _data.length <= msg.data.length);
    CALLDATACOPY(v1.data, _data.data, _data.length);
    v1[_data.length] = 0;
    0xf6a(amount0Delta, amount1Delta, v1);
}

function 0x1653(uint256 varg0) private { 
    require(!varg0 | (35 == varg0 * 35 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * 35;
}

function 0x1669(uint256 varg0) private { 
    require((varg0 / varg0 == 1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x1901(uint256 varg0) private { 
    _lockAcquired = keccak256(MEM[v1901arg0x0 + 32:v1901arg0x0 + 32 + MEM[v1901arg0x0]]);
    v0 = v1 = 0;
    require(3 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = v2 = 0xff00000000000000000000000000000000000000000000000000000000000000;
    v0 = v3 = uint8(MEM[varg0 + 35] >> 248);
    require(3 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v4 = 0x1669(MEM[varg0 + 35] >> 248);
    v5 = v6 = 0xcbd(v4);
    v0 = v7 = 0;
    while (v0 < v0) {
        if (v0) {
            return ;
        } else {
            v0 = v8 = 6516;
            v0 = v9 = 1;
            if (v0) {
                require(1 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[33 + v0] = (byte(v0 << 248 & v0, 0x0)) & 0xFF;
            }
            require(v5 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v0 = v10 = 0;
            v11 = uint8(bytes1(MEM[32 + (v5 + v0)]) >> 248);
            if (v11) {
                if (v11 - 1) {
                    if (v11 - 2) {
                        if (v11 - 3) {
                            if (v11 - 4) {
                                if (v11 - 5) {
                                    if (v11 - 6) {
                                        if (v11 - 7) {
                                            if (v11 - 8) {
                                                if (v11 - 9) {
                                                    if (v11 - 10) {
                                                        if (v11 - 11) {
                                                            if (v11 - 16) {
                                                                if (v11 - 17) {
                                                                    if (v11 - 18) {
                                                                        if (v11 - 19) {
                                                                            if (v11 - 20) {
                                                                                if (v11 - 21) {
                                                                                    if (v11 - 22) {
                                                                                        if (v11 - 25) {
                                                                                            if (v11 - 27) {
                                                                                                if (v11 - 28) {
                                                                                                    if (v11 - 29) {
                                                                                                        if (v11 - 30) {
                                                                                                            v12 = v11 == 31;
                                                                                                            if (v11 != 31) {
                                                                                                                v12 = v13 = v11 == 33;
                                                                                                            }
                                                                                                            if (!v12) {
                                                                                                                v14 = v11 == 32;
                                                                                                                if (v11 != 32) {
                                                                                                                    v14 = v15 = v11 == 34;
                                                                                                                }
                                                                                                                if (!v14) {
                                                                                                                    if (v11 - 35) {
                                                                                                                        v16 = v11 == 39;
                                                                                                                        if (v11 != 39) {
                                                                                                                            v16 = v17 = v11 == 40;
                                                                                                                        }
                                                                                                                        if (!v16) {
                                                                                                                            v16 = v18 = v11 == 41;
                                                                                                                        }
                                                                                                                        if (!v16) {
                                                                                                                            v16 = v19 = v11 == 42;
                                                                                                                        }
                                                                                                                        if (!v16) {
                                                                                                                            if (v11 - 37) {
                                                                                                                                if (v11 - 38) {
                                                                                                                                    if (v11 - 43) {
                                                                                                                                        if (v11 - 44) {
                                                                                                                                            if (v11 - 45) {
                                                                                                                                                if (v11 - 46) {
                                                                                                                                                    if (v11 - 47) {
                                                                                                                                                        require(!(48 - v11), Error(0x697673));
                                                                                                                                                        v20 = v21 = 8378;
                                                                                                                                                        v20 = v22 = address(MEM[v5 + v0 + 21]);
                                                                                                                                                        v23 = v24 = MEM[64];
                                                                                                                                                        0x24d(v24, 100);
                                                                                                                                                        v25 = v26 = address(v22).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                                            v27 = 96;
                                                                                                                                                        } else {
                                                                                                                                                            v28 = 0x29c(RETURNDATASIZE());
                                                                                                                                                            v27 = v29 = MEM[64];
                                                                                                                                                            0x24d(v29, v28);
                                                                                                                                                            MEM[v29] = RETURNDATASIZE();
                                                                                                                                                            RETURNDATACOPY(v29 + 32, 0, RETURNDATASIZE());
                                                                                                                                                        }
                                                                                                                                                        if (v26) {
                                                                                                                                                            v25 = v30 = !MEM[v27];
                                                                                                                                                            if (bool(MEM[v27])) {
                                                                                                                                                                require(v27 + MEM[v27] + 32 - (v27 + 32) >= 32);
                                                                                                                                                                v25 = MEM[v27 + 32];
                                                                                                                                                                require(!(v25 - bool(v25)));
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        if (v25) {
                                                                                                                                                            v25 = v31 = bool((address(v22)).code.size);
                                                                                                                                                        }
                                                                                                                                                        if (!v25) {
                                                                                                                                                            v23 = MEM[64];
                                                                                                                                                            MEM[v23 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v23 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                                            MEM[v23 + 68] = 0;
                                                                                                                                                            v32 = v33 = 100;
                                                                                                                                                            MEM[v23] = 68;
                                                                                                                                                            v32 = v34 = 16513;
                                                                                                                                                            v32 = v35 = 16508;
                                                                                                                                                            v20 = v36 = 16502;
                                                                                                                                                            0x24d(v23, v33);
                                                                                                                                                            require(!((v23 + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                            MEM[64] = v23 + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                                                                                                            // Unknown jump to Block 0x20baB0x1ec90x1901. Refer to 3-address code (TAC);
                                                                                                                                                            0x4575(v20, v23);
                                                                                                                                                            0x4575(v20, v23);
                                                                                                                                                            // Unknown jump to Block 0x20baB0x1ec90x1901. Refer to 3-address code (TAC);
                                                                                                                                                            v37 = address(v20).call(MEM[v3fc70x4041V0x205fV0x1ec90x1901 + 32:v3fc70x4041V0x205fV0x1ec90x1901 + 32 + MEM[v3fc70x4041V0x205fV0x1ec90x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                                                // Unknown jump to Block 0x20baB0x1ec90x1901. Refer to 3-address code (TAC);
                                                                                                                                                            } else {
                                                                                                                                                                v38 = RETURNDATASIZE();
                                                                                                                                                                // Unknown jump to Block 0x20baB0x1ec90x1901. Refer to 3-address code (TAC);
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        if (0 == (uint8(MEM[v5 + v0 + 106]) == 1)) {
                                                                                                                                                            v39 = v40 = MEM[64];
                                                                                                                                                            MEM[v40] = 0xa64833a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v40 + 4] = uint8(MEM[v5 + v0 + 84]);
                                                                                                                                                            MEM[v40 + 4 + 32] = uint8(MEM[v5 + v0 + 85]);
                                                                                                                                                            MEM[v40 + 4 + 64] = uint112(MEM[v5 + v0 + 49]);
                                                                                                                                                            MEM[v40 + 4 + 96] = uint112(MEM[v5 + v0 + 63]);
                                                                                                                                                            MEM[v40 + 4 + 128] = address(MEM[v5 + v0 + 105]);
                                                                                                                                                            v41 = 160 + (v40 + 4);
                                                                                                                                                        } else {
                                                                                                                                                            v39 = v42 = MEM[64];
                                                                                                                                                            MEM[v42] = 0xce7d650300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v42 + 4] = uint8(MEM[v5 + v0 + 84]);
                                                                                                                                                            MEM[v42 + 4 + 32] = uint8(MEM[v5 + v0 + 85]);
                                                                                                                                                            MEM[v42 + 4 + 64] = uint112(MEM[v5 + v0 + 49]);
                                                                                                                                                            MEM[v42 + 4 + 96] = uint112(MEM[v5 + v0 + 63]);
                                                                                                                                                            MEM[v42 + 4 + 128] = 0;
                                                                                                                                                            MEM[v42 + 4 + 160] = address(MEM[v5 + v0 + 105]);
                                                                                                                                                            v41 = v43 = 192 + (v42 + 4);
                                                                                                                                                        }
                                                                                                                                                        v44 = address(MEM[v5 + v0 + 83]).call(MEM[v5820x205f_0x1V0x1ec90x1901:v5820x205f_0x1V0x1ec90x1901 + v201bV0x2114V0x1ec90x1901 - v5820x205f_0x1V0x1ec90x1901], MEM[v5820x205f_0x1V0x1ec90x1901:v5820x205f_0x1V0x1ec90x1901 + 32]).gas(msg.gas);
                                                                                                                                                        if (!v44) {
                                                                                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                                                                                        } else {
                                                                                                                                                            if (v44) {
                                                                                                                                                                v45 = v46 = 32;
                                                                                                                                                                if (32 > RETURNDATASIZE()) {
                                                                                                                                                                    v45 = v47 = RETURNDATASIZE();
                                                                                                                                                                    0x24d(v39, v47);
                                                                                                                                                                } else {
                                                                                                                                                                    0x24d(v39, v46);
                                                                                                                                                                }
                                                                                                                                                                require(v39 + v45 - v39 >= 32);
                                                                                                                                                            }
                                                                                                                                                            v5 = v5 + 106;
                                                                                                                                                        }
                                                                                                                                                    } else {
                                                                                                                                                        v48 = v49 = 8585;
                                                                                                                                                        v48 = v50 = address(MEM[v5 + v0 + 21]);
                                                                                                                                                        v51 = v52 = MEM[64];
                                                                                                                                                        0x24d(v52, 100);
                                                                                                                                                        v53 = v54 = address(v50).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                                            v55 = 96;
                                                                                                                                                        } else {
                                                                                                                                                            v56 = 0x29c(RETURNDATASIZE());
                                                                                                                                                            v55 = v57 = MEM[64];
                                                                                                                                                            0x24d(v57, v56);
                                                                                                                                                            MEM[v57] = RETURNDATASIZE();
                                                                                                                                                            RETURNDATACOPY(v57 + 32, 0, RETURNDATASIZE());
                                                                                                                                                        }
                                                                                                                                                        if (v54) {
                                                                                                                                                            v53 = v58 = !MEM[v55];
                                                                                                                                                            if (bool(MEM[v55])) {
                                                                                                                                                                require(v55 + MEM[v55] + 32 - (v55 + 32) >= 32);
                                                                                                                                                                v53 = MEM[v55 + 32];
                                                                                                                                                                require(!(v53 - bool(v53)));
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        if (v53) {
                                                                                                                                                            v53 = v59 = bool((address(v50)).code.size);
                                                                                                                                                        }
                                                                                                                                                        if (!v53) {
                                                                                                                                                            v51 = MEM[64];
                                                                                                                                                            MEM[v51 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v51 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                                            MEM[v51 + 68] = 0;
                                                                                                                                                            v60 = v61 = 100;
                                                                                                                                                            MEM[v51] = 68;
                                                                                                                                                            v60 = v62 = 16513;
                                                                                                                                                            v60 = v63 = 16508;
                                                                                                                                                            v48 = v64 = 16502;
                                                                                                                                                            0x24d(v51, v61);
                                                                                                                                                            require(!((v51 + (v60 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (v60 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                            MEM[64] = v51 + (v60 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                                                                                                            // Unknown jump to Block 0x2189B0x1eb80x1901. Refer to 3-address code (TAC);
                                                                                                                                                            0x4575(v48, v51);
                                                                                                                                                            0x4575(v48, v51);
                                                                                                                                                            // Unknown jump to Block 0x2189B0x1eb80x1901. Refer to 3-address code (TAC);
                                                                                                                                                            v65 = address(v48).call(MEM[v3fc70x4041V0x2135V0x1eb80x1901 + 32:v3fc70x4041V0x2135V0x1eb80x1901 + 32 + MEM[v3fc70x4041V0x2135V0x1eb80x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                                                // Unknown jump to Block 0x2189B0x1eb80x1901. Refer to 3-address code (TAC);
                                                                                                                                                            } else {
                                                                                                                                                                v66 = RETURNDATASIZE();
                                                                                                                                                                // Unknown jump to Block 0x2189B0x1eb80x1901. Refer to 3-address code (TAC);
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        if (0 == (uint8(MEM[v5 + v0 + 86]) == 1)) {
                                                                                                                                                            v67 = v68 = MEM[64];
                                                                                                                                                            MEM[v68] = 0xa64833a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v68 + 4] = uint8(MEM[v5 + v0 + 84]);
                                                                                                                                                            MEM[v68 + 4 + 32] = uint8(MEM[v5 + v0 + 85]);
                                                                                                                                                            MEM[v68 + 4 + 64] = uint112(MEM[v5 + v0 + 49]);
                                                                                                                                                            MEM[v68 + 4 + 96] = uint112(MEM[v5 + v0 + 63]);
                                                                                                                                                            MEM[v68 + 4 + 128] = address(this);
                                                                                                                                                            v69 = 160 + (v68 + 4);
                                                                                                                                                        } else {
                                                                                                                                                            v67 = v70 = MEM[64];
                                                                                                                                                            MEM[v70] = 0xce7d650300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            MEM[v70 + 4] = uint8(MEM[v5 + v0 + 84]);
                                                                                                                                                            MEM[v70 + 4 + 32] = uint8(MEM[v5 + v0 + 85]);
                                                                                                                                                            MEM[v70 + 4 + 64] = uint112(MEM[v5 + v0 + 49]);
                                                                                                                                                            MEM[v70 + 4 + 96] = uint112(MEM[v5 + v0 + 63]);
                                                                                                                                                            MEM[v70 + 4 + 128] = 0;
                                                                                                                                                            MEM[v70 + 4 + 160] = address(this);
                                                                                                                                                            v69 = v71 = 192 + (v70 + 4);
                                                                                                                                                        }
                                                                                                                                                        v72 = address(MEM[v5 + v0 + 83]).call(MEM[v5820x2135_0x1V0x1eb80x1901:v5820x2135_0x1V0x1eb80x1901 + v201bV0x21cbV0x1eb80x1901 - v5820x2135_0x1V0x1eb80x1901], MEM[v5820x2135_0x1V0x1eb80x1901:v5820x2135_0x1V0x1eb80x1901 + 32]).gas(msg.gas);
                                                                                                                                                        if (!v72) {
                                                                                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                                                                                        } else if (v72) {
                                                                                                                                                            v73 = v74 = 32;
                                                                                                                                                            if (32 > RETURNDATASIZE()) {
                                                                                                                                                                v73 = v75 = RETURNDATASIZE();
                                                                                                                                                                0x24d(v67, v75);
                                                                                                                                                            } else {
                                                                                                                                                                0x24d(v67, v74);
                                                                                                                                                            }
                                                                                                                                                            require(v67 + v73 - v67 >= 32);
                                                                                                                                                            v5 = v5 + 86;
                                                                                                                                                        } else {
                                                                                                                                                            v5 = v5 + 86;
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                } else {
                                                                                                                                                    v76 = v77 = 8770;
                                                                                                                                                    v76 = v78 = address(MEM[v5 + v0 + 21]);
                                                                                                                                                    v79 = v80 = MEM[64];
                                                                                                                                                    0x24d(v80, 100);
                                                                                                                                                    v81 = v82 = address(v78).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                                                        v83 = 96;
                                                                                                                                                    } else {
                                                                                                                                                        v84 = 0x29c(RETURNDATASIZE());
                                                                                                                                                        v83 = v85 = MEM[64];
                                                                                                                                                        0x24d(v85, v84);
                                                                                                                                                        MEM[v85] = RETURNDATASIZE();
                                                                                                                                                        RETURNDATACOPY(v85 + 32, 0, RETURNDATASIZE());
                                                                                                                                                    }
                                                                                                                                                    if (v82) {
                                                                                                                                                        v81 = v86 = !MEM[v83];
                                                                                                                                                        if (bool(MEM[v83])) {
                                                                                                                                                            require(v83 + MEM[v83] + 32 - (v83 + 32) >= 32);
                                                                                                                                                            v81 = MEM[v83 + 32];
                                                                                                                                                            require(!(v81 - bool(v81)));
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    if (v81) {
                                                                                                                                                        v81 = v87 = bool((address(v78)).code.size);
                                                                                                                                                    }
                                                                                                                                                    if (!v81) {
                                                                                                                                                        v79 = MEM[64];
                                                                                                                                                        MEM[v79 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                        MEM[v79 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                                        MEM[v79 + 68] = 0;
                                                                                                                                                        v88 = v89 = 100;
                                                                                                                                                        MEM[v79] = 68;
                                                                                                                                                        v88 = v90 = 16513;
                                                                                                                                                        v88 = v91 = 16508;
                                                                                                                                                        v76 = v92 = 16502;
                                                                                                                                                        0x24d(v79, v89);
                                                                                                                                                        require(!((v79 + (v88 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (v88 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                        // Unknown jump to Block 0x2242B0x1ea60x1901. Refer to 3-address code (TAC);
                                                                                                                                                        0x4575(v76, v79);
                                                                                                                                                        0x4575(v76, v79);
                                                                                                                                                        // Unknown jump to Block 0x2242B0x1ea60x1901. Refer to 3-address code (TAC);
                                                                                                                                                        v93 = address(v76).call(MEM[v3fc70x4041V0x21edV0x1ea60x1901 + 32:v3fc70x4041V0x21edV0x1ea60x1901 + 32 + MEM[v3fc70x4041V0x21edV0x1ea60x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                                            // Unknown jump to Block 0x2242B0x1ea60x1901. Refer to 3-address code (TAC);
                                                                                                                                                        } else {
                                                                                                                                                            v94 = RETURNDATASIZE();
                                                                                                                                                            // Unknown jump to Block 0x2242B0x1ea60x1901. Refer to 3-address code (TAC);
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    v95, /* uint256 */ v96 = address(MEM[v5 + v0 + 83]).exchange(uint8(MEM[v5 + v0 + 84]), uint8(MEM[v5 + v0 + 85]), uint112(MEM[v5 + v0 + 49]), uint112(MEM[v5 + v0 + 63]), address(MEM[v5 + v0 + 105])).gas(msg.gas);
                                                                                                                                                    if (!v95) {
                                                                                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                                                                                    } else if (v95) {
                                                                                                                                                        v97 = v98 = 32;
                                                                                                                                                        if (32 > RETURNDATASIZE()) {
                                                                                                                                                            v97 = v99 = RETURNDATASIZE();
                                                                                                                                                            0x24d(MEM[64], v99);
                                                                                                                                                        } else {
                                                                                                                                                            0x24d(MEM[64], v98);
                                                                                                                                                        }
                                                                                                                                                        require(MEM[64] + v97 - MEM[64] >= 32);
                                                                                                                                                        v5 = v5 + 105;
                                                                                                                                                    } else {
                                                                                                                                                        v5 = v5 + 105;
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            } else {
                                                                                                                                                v100 = v101 = 8898;
                                                                                                                                                v100 = v102 = address(MEM[v5 + v0 + 21]);
                                                                                                                                                v103 = v104 = MEM[64];
                                                                                                                                                0x24d(v104, 100);
                                                                                                                                                v105 = v106 = address(v102).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                                                    v107 = 96;
                                                                                                                                                } else {
                                                                                                                                                    v108 = 0x29c(RETURNDATASIZE());
                                                                                                                                                    v107 = v109 = MEM[64];
                                                                                                                                                    0x24d(v109, v108);
                                                                                                                                                    MEM[v109] = RETURNDATASIZE();
                                                                                                                                                    RETURNDATACOPY(v109 + 32, 0, RETURNDATASIZE());
                                                                                                                                                }
                                                                                                                                                if (v106) {
                                                                                                                                                    v105 = v110 = !MEM[v107];
                                                                                                                                                    if (bool(MEM[v107])) {
                                                                                                                                                        require(v107 + MEM[v107] + 32 - (v107 + 32) >= 32);
                                                                                                                                                        v105 = MEM[v107 + 32];
                                                                                                                                                        require(!(v105 - bool(v105)));
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                if (v105) {
                                                                                                                                                    v105 = v111 = bool((address(v102)).code.size);
                                                                                                                                                }
                                                                                                                                                if (!v105) {
                                                                                                                                                    v103 = MEM[64];
                                                                                                                                                    MEM[v103 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                    MEM[v103 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                                    MEM[v103 + 68] = 0;
                                                                                                                                                    v112 = v113 = 100;
                                                                                                                                                    MEM[v103] = 68;
                                                                                                                                                    v112 = v114 = 16513;
                                                                                                                                                    v112 = v115 = 16508;
                                                                                                                                                    v100 = v116 = 16502;
                                                                                                                                                    0x24d(v103, v113);
                                                                                                                                                    require(!((v103 + (v112 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v103 + (v112 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v103)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                    // Unknown jump to Block 0x22c2B0x1e940x1901. Refer to 3-address code (TAC);
                                                                                                                                                    0x4575(v100, v103);
                                                                                                                                                    0x4575(v100, v103);
                                                                                                                                                    // Unknown jump to Block 0x22c2B0x1e940x1901. Refer to 3-address code (TAC);
                                                                                                                                                    v117 = address(v100).call(MEM[v3fc70x4041V0x2277V0x1e940x1901 + 32:v3fc70x4041V0x2277V0x1e940x1901 + 32 + MEM[v3fc70x4041V0x2277V0x1e940x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                                                        // Unknown jump to Block 0x22c2B0x1e940x1901. Refer to 3-address code (TAC);
                                                                                                                                                    } else {
                                                                                                                                                        v118 = RETURNDATASIZE();
                                                                                                                                                        // Unknown jump to Block 0x22c2B0x1e940x1901. Refer to 3-address code (TAC);
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                v119, /* uint256 */ v120 = address(MEM[v5 + v0 + 83]).exchange(uint8(MEM[v5 + v0 + 84]), uint8(MEM[v5 + v0 + 85]), uint112(MEM[v5 + v0 + 49]), uint112(MEM[v5 + v0 + 63]), address(this)).gas(msg.gas);
                                                                                                                                                if (!v119) {
                                                                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                                                                } else if (v119) {
                                                                                                                                                    v121 = v122 = 32;
                                                                                                                                                    if (32 > RETURNDATASIZE()) {
                                                                                                                                                        v121 = v123 = RETURNDATASIZE();
                                                                                                                                                        0x24d(MEM[64], v123);
                                                                                                                                                    } else {
                                                                                                                                                        0x24d(MEM[64], v122);
                                                                                                                                                    }
                                                                                                                                                    require(MEM[64] + v121 - MEM[64] >= 32);
                                                                                                                                                    v5 = v5 + 85;
                                                                                                                                                } else {
                                                                                                                                                    v5 = v5 + 85;
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        } else {
                                                                                                                                            v124 = v125 = 9041;
                                                                                                                                            v124 = v126 = address(MEM[v5 + v0 + 21]);
                                                                                                                                            v127 = v128 = MEM[64];
                                                                                                                                            0x24d(v128, 100);
                                                                                                                                            v129 = v130 = address(v126).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                                v131 = 96;
                                                                                                                                            } else {
                                                                                                                                                v132 = 0x29c(RETURNDATASIZE());
                                                                                                                                                v131 = v133 = MEM[64];
                                                                                                                                                0x24d(v133, v132);
                                                                                                                                                MEM[v133] = RETURNDATASIZE();
                                                                                                                                                RETURNDATACOPY(v133 + 32, 0, RETURNDATASIZE());
                                                                                                                                            }
                                                                                                                                            if (v130) {
                                                                                                                                                v129 = v134 = !MEM[v131];
                                                                                                                                                if (bool(MEM[v131])) {
                                                                                                                                                    require(v131 + MEM[v131] + 32 - (v131 + 32) >= 32);
                                                                                                                                                    v129 = MEM[v131 + 32];
                                                                                                                                                    require(!(v129 - bool(v129)));
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            if (v129) {
                                                                                                                                                v129 = v135 = bool((address(v126)).code.size);
                                                                                                                                            }
                                                                                                                                            if (!v129) {
                                                                                                                                                v127 = MEM[64];
                                                                                                                                                MEM[v127 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                                MEM[v127 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                                MEM[v127 + 68] = 0;
                                                                                                                                                v136 = v137 = 100;
                                                                                                                                                MEM[v127] = 68;
                                                                                                                                                v136 = v138 = 16513;
                                                                                                                                                v136 = v139 = 16508;
                                                                                                                                                v124 = v140 = 16502;
                                                                                                                                                0x24d(v127, v137);
                                                                                                                                                require(!((v127 + (v136 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v127 + (v136 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v127)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                                // Unknown jump to Block 0x2351B0x1e820x1901. Refer to 3-address code (TAC);
                                                                                                                                                0x4575(v124, v127);
                                                                                                                                                0x4575(v124, v127);
                                                                                                                                                // Unknown jump to Block 0x2351B0x1e820x1901. Refer to 3-address code (TAC);
                                                                                                                                                v141 = address(v124).call(MEM[v3fc70x4041V0x22fcV0x1e820x1901 + 32:v3fc70x4041V0x22fcV0x1e820x1901 + 32 + MEM[v3fc70x4041V0x22fcV0x1e820x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                                                    // Unknown jump to Block 0x2351B0x1e820x1901. Refer to 3-address code (TAC);
                                                                                                                                                } else {
                                                                                                                                                    v142 = RETURNDATASIZE();
                                                                                                                                                    // Unknown jump to Block 0x2351B0x1e820x1901. Refer to 3-address code (TAC);
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            v143, /* uint256 */ v144 = address(MEM[v5 + v0 + 83]).exchange(uint8(MEM[v5 + v0 + 84]), uint8(MEM[v5 + v0 + 85]), uint112(MEM[v5 + v0 + 49]), uint112(MEM[v5 + v0 + 63]), 0, address(MEM[v5 + v0 + 105])).gas(msg.gas);
                                                                                                                                            if (!v143) {
                                                                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                                                                            } else if (v143) {
                                                                                                                                                v145 = v146 = 32;
                                                                                                                                                if (32 > RETURNDATASIZE()) {
                                                                                                                                                    v145 = v147 = RETURNDATASIZE();
                                                                                                                                                    0x24d(MEM[64], v147);
                                                                                                                                                } else {
                                                                                                                                                    0x24d(MEM[64], v146);
                                                                                                                                                }
                                                                                                                                                require(MEM[64] + v145 - MEM[64] >= 32);
                                                                                                                                                v5 = v5 + 105;
                                                                                                                                            } else {
                                                                                                                                                v5 = v5 + 105;
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        v148 = v149 = 9145;
                                                                                                                                        v148 = v150 = address(MEM[v5 + v0 + 21]);
                                                                                                                                        v151 = v152 = MEM[64];
                                                                                                                                        0x24d(v152, 100);
                                                                                                                                        v153 = v154 = address(v150).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                            v155 = 96;
                                                                                                                                        } else {
                                                                                                                                            v156 = 0x29c(RETURNDATASIZE());
                                                                                                                                            v155 = v157 = MEM[64];
                                                                                                                                            0x24d(v157, v156);
                                                                                                                                            MEM[v157] = RETURNDATASIZE();
                                                                                                                                            RETURNDATACOPY(v157 + 32, 0, RETURNDATASIZE());
                                                                                                                                        }
                                                                                                                                        if (v154) {
                                                                                                                                            v153 = v158 = !MEM[v155];
                                                                                                                                            if (bool(MEM[v155])) {
                                                                                                                                                require(v155 + MEM[v155] + 32 - (v155 + 32) >= 32);
                                                                                                                                                v153 = MEM[v155 + 32];
                                                                                                                                                require(!(v153 - bool(v153)));
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        if (v153) {
                                                                                                                                            v153 = v159 = bool((address(v150)).code.size);
                                                                                                                                        }
                                                                                                                                        if (!v153) {
                                                                                                                                            v151 = MEM[64];
                                                                                                                                            MEM[v151 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                            MEM[v151 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                            MEM[v151 + 68] = 0;
                                                                                                                                            v160 = v161 = 100;
                                                                                                                                            MEM[v151] = 68;
                                                                                                                                            v160 = v162 = 16513;
                                                                                                                                            v160 = v163 = 16508;
                                                                                                                                            v148 = v164 = 16502;
                                                                                                                                            0x24d(v151, v161);
                                                                                                                                            require(!((v151 + (v160 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v151 + (v160 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v151)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                            // Unknown jump to Block 0x23b9B0x1e700x1901. Refer to 3-address code (TAC);
                                                                                                                                            0x4575(v148, v151);
                                                                                                                                            0x4575(v148, v151);
                                                                                                                                            // Unknown jump to Block 0x23b9B0x1e700x1901. Refer to 3-address code (TAC);
                                                                                                                                            v165 = address(v148).call(MEM[v3fc70x4041V0x236eV0x1e700x1901 + 32:v3fc70x4041V0x236eV0x1e700x1901 + 32 + MEM[v3fc70x4041V0x236eV0x1e700x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                                // Unknown jump to Block 0x23b9B0x1e700x1901. Refer to 3-address code (TAC);
                                                                                                                                            } else {
                                                                                                                                                v166 = RETURNDATASIZE();
                                                                                                                                                // Unknown jump to Block 0x23b9B0x1e700x1901. Refer to 3-address code (TAC);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        v167, /* uint256 */ v168 = address(MEM[v5 + v0 + 83]).exchange(uint8(MEM[v5 + v0 + 84]), uint8(MEM[v5 + v0 + 85]), uint112(MEM[v5 + v0 + 49]), uint112(MEM[v5 + v0 + 63]), 0, address(this)).gas(msg.gas);
                                                                                                                                        if (!v167) {
                                                                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                                                                        } else if (v167) {
                                                                                                                                            v169 = v170 = 32;
                                                                                                                                            if (32 > RETURNDATASIZE()) {
                                                                                                                                                v169 = v171 = RETURNDATASIZE();
                                                                                                                                                0x24d(MEM[64], v171);
                                                                                                                                            } else {
                                                                                                                                                0x24d(MEM[64], v170);
                                                                                                                                            }
                                                                                                                                            require(MEM[64] + v169 - MEM[64] >= 32);
                                                                                                                                            v5 = v5 + 85;
                                                                                                                                        } else {
                                                                                                                                            v5 = v5 + 85;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                } else {
                                                                                                                                    v172 = v173 = 9327;
                                                                                                                                    v172 = v174 = address(MEM[v5 + v0 + 21]);
                                                                                                                                    v175 = v176 = MEM[64];
                                                                                                                                    0x24d(v176, 100);
                                                                                                                                    v177 = v178 = address(v174).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                                        v179 = 96;
                                                                                                                                    } else {
                                                                                                                                        v180 = 0x29c(RETURNDATASIZE());
                                                                                                                                        v179 = v181 = MEM[64];
                                                                                                                                        0x24d(v181, v180);
                                                                                                                                        MEM[v181] = RETURNDATASIZE();
                                                                                                                                        RETURNDATACOPY(v181 + 32, 0, RETURNDATASIZE());
                                                                                                                                    }
                                                                                                                                    if (v178) {
                                                                                                                                        v177 = v182 = !MEM[v179];
                                                                                                                                        if (bool(MEM[v179])) {
                                                                                                                                            require(v179 + MEM[v179] + 32 - (v179 + 32) >= 32);
                                                                                                                                            v177 = MEM[v179 + 32];
                                                                                                                                            require(!(v177 - bool(v177)));
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    if (v177) {
                                                                                                                                        v177 = v183 = bool((address(v174)).code.size);
                                                                                                                                    }
                                                                                                                                    if (!v177) {
                                                                                                                                        v175 = MEM[64];
                                                                                                                                        MEM[v175 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                        MEM[v175 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                        MEM[v175 + 68] = 0;
                                                                                                                                        v184 = v185 = 100;
                                                                                                                                        MEM[v175] = 68;
                                                                                                                                        v184 = v186 = 16513;
                                                                                                                                        v184 = v187 = 16508;
                                                                                                                                        v172 = v188 = 16502;
                                                                                                                                        0x24d(v175, v185);
                                                                                                                                        require(!((v175 + (v184 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v175 + (v184 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v175)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                        // Unknown jump to Block 0x246fB0x1e5e0x1901. Refer to 3-address code (TAC);
                                                                                                                                        0x4575(v172, v175);
                                                                                                                                        0x4575(v172, v175);
                                                                                                                                        // Unknown jump to Block 0x246fB0x1e5e0x1901. Refer to 3-address code (TAC);
                                                                                                                                        v189 = address(v172).call(MEM[v3fc70x4041V0x2417V0x1e5e0x1901 + 32:v3fc70x4041V0x2417V0x1e5e0x1901 + 32 + MEM[v3fc70x4041V0x2417V0x1e5e0x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                        if (!RETURNDATASIZE()) {
                                                                                                                                            // Unknown jump to Block 0x246fB0x1e5e0x1901. Refer to 3-address code (TAC);
                                                                                                                                        } else {
                                                                                                                                            v190 = RETURNDATASIZE();
                                                                                                                                            // Unknown jump to Block 0x246fB0x1e5e0x1901. Refer to 3-address code (TAC);
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    v191, /* uint256 */ v192 = address(MEM[v5 + v0 + 83]).exchange(int128(uint8(MEM[v5 + v0 + 84])), int128(uint8(MEM[v5 + v0 + 85])), uint112(MEM[v5 + v0 + 49]), uint112(MEM[v5 + v0 + 63]), address(MEM[v5 + v0 + 105])).gas(msg.gas);
                                                                                                                                    if (!v191) {
                                                                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                                                                    } else if (v191) {
                                                                                                                                        v193 = v194 = 32;
                                                                                                                                        if (32 > RETURNDATASIZE()) {
                                                                                                                                            v193 = v195 = RETURNDATASIZE();
                                                                                                                                            0x24d(MEM[64], v195);
                                                                                                                                        } else {
                                                                                                                                            0x24d(MEM[64], v194);
                                                                                                                                        }
                                                                                                                                        require(MEM[64] + v193 - MEM[64] >= 32);
                                                                                                                                        v5 = v5 + 105;
                                                                                                                                    } else {
                                                                                                                                        v5 = v5 + 105;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            } else {
                                                                                                                                v196 = v197 = 9441;
                                                                                                                                v196 = v198 = address(MEM[v5 + v0 + 21]);
                                                                                                                                v199 = v200 = MEM[64];
                                                                                                                                0x24d(v200, 100);
                                                                                                                                v201 = v202 = address(v198).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                                    v203 = 96;
                                                                                                                                } else {
                                                                                                                                    v204 = 0x29c(RETURNDATASIZE());
                                                                                                                                    v203 = v205 = MEM[64];
                                                                                                                                    0x24d(v205, v204);
                                                                                                                                    MEM[v205] = RETURNDATASIZE();
                                                                                                                                    RETURNDATACOPY(v205 + 32, 0, RETURNDATASIZE());
                                                                                                                                }
                                                                                                                                if (v202) {
                                                                                                                                    v201 = v206 = !MEM[v203];
                                                                                                                                    if (bool(MEM[v203])) {
                                                                                                                                        require(v203 + MEM[v203] + 32 - (v203 + 32) >= 32);
                                                                                                                                        v201 = MEM[v203 + 32];
                                                                                                                                        require(!(v201 - bool(v201)));
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                if (v201) {
                                                                                                                                    v201 = v207 = bool((address(v198)).code.size);
                                                                                                                                }
                                                                                                                                if (!v201) {
                                                                                                                                    v199 = MEM[64];
                                                                                                                                    MEM[v199 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                    MEM[v199 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                    MEM[v199 + 68] = 0;
                                                                                                                                    v208 = v209 = 100;
                                                                                                                                    MEM[v199] = 68;
                                                                                                                                    v208 = v210 = 16513;
                                                                                                                                    v208 = v211 = 16508;
                                                                                                                                    v196 = v212 = 16502;
                                                                                                                                    0x24d(v199, v209);
                                                                                                                                    require(!((v199 + (v208 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v199 + (v208 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v199)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                    // Unknown jump to Block 0x24e1B0x1e4c0x1901. Refer to 3-address code (TAC);
                                                                                                                                    0x4575(v196, v199);
                                                                                                                                    0x4575(v196, v199);
                                                                                                                                    // Unknown jump to Block 0x24e1B0x1e4c0x1901. Refer to 3-address code (TAC);
                                                                                                                                    v213 = address(v196).call(MEM[v3fc70x4041V0x2495V0x1e4c0x1901 + 32:v3fc70x4041V0x2495V0x1e4c0x1901 + 32 + MEM[v3fc70x4041V0x2495V0x1e4c0x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                    if (!RETURNDATASIZE()) {
                                                                                                                                        // Unknown jump to Block 0x24e1B0x1e4c0x1901. Refer to 3-address code (TAC);
                                                                                                                                    } else {
                                                                                                                                        v214 = RETURNDATASIZE();
                                                                                                                                        // Unknown jump to Block 0x24e1B0x1e4c0x1901. Refer to 3-address code (TAC);
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                v215, /* uint256 */ v216 = address(MEM[v5 + v0 + 83]).exchange(int128(uint8(MEM[v5 + v0 + 84])), int128(uint8(MEM[v5 + v0 + 85])), uint112(MEM[v5 + v0 + 49]), uint112(MEM[v5 + v0 + 63]), address(this)).gas(msg.gas);
                                                                                                                                if (!v215) {
                                                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                                                } else if (v215) {
                                                                                                                                    v217 = v218 = 32;
                                                                                                                                    if (32 > RETURNDATASIZE()) {
                                                                                                                                        v217 = v219 = RETURNDATASIZE();
                                                                                                                                        0x24d(MEM[64], v219);
                                                                                                                                    } else {
                                                                                                                                        0x24d(MEM[64], v218);
                                                                                                                                    }
                                                                                                                                    require(MEM[64] + v217 - MEM[64] >= 32);
                                                                                                                                    v5 = v5 + 85;
                                                                                                                                } else {
                                                                                                                                    v5 = v5 + 85;
                                                                                                                                }
                                                                                                                            }
                                                                                                                        } else {
                                                                                                                            v220 = v221 = 9569;
                                                                                                                            v220 = v222 = address(MEM[v5 + v0 + 21]);
                                                                                                                            v223 = v224 = MEM[64];
                                                                                                                            0x24d(v224, 100);
                                                                                                                            v225 = v226 = address(v222).approve(address(MEM[v5 + v0 + 83]), uint112(MEM[v5 + v0 + 35])).gas(msg.gas);
                                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                                v227 = 96;
                                                                                                                            } else {
                                                                                                                                v228 = 0x29c(RETURNDATASIZE());
                                                                                                                                v227 = v229 = MEM[64];
                                                                                                                                0x24d(v229, v228);
                                                                                                                                MEM[v229] = RETURNDATASIZE();
                                                                                                                                RETURNDATACOPY(v229 + 32, 0, RETURNDATASIZE());
                                                                                                                            }
                                                                                                                            if (v226) {
                                                                                                                                v225 = v230 = !MEM[v227];
                                                                                                                                if (bool(MEM[v227])) {
                                                                                                                                    require(v227 + MEM[v227] + 32 - (v227 + 32) >= 32);
                                                                                                                                    v225 = MEM[v227 + 32];
                                                                                                                                    require(!(v225 - bool(v225)));
                                                                                                                                }
                                                                                                                            }
                                                                                                                            if (v225) {
                                                                                                                                v225 = v231 = bool((address(v222)).code.size);
                                                                                                                            }
                                                                                                                            if (!v225) {
                                                                                                                                v223 = MEM[64];
                                                                                                                                MEM[v223 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                                MEM[v223 + 36] = address(MEM[v5 + v0 + 83]);
                                                                                                                                MEM[v223 + 68] = 0;
                                                                                                                                v232 = v233 = 100;
                                                                                                                                MEM[v223] = 68;
                                                                                                                                v232 = v234 = 16513;
                                                                                                                                v232 = v235 = 16508;
                                                                                                                                v220 = v236 = 16502;
                                                                                                                                0x24d(v223, v233);
                                                                                                                                require(!((v223 + (v232 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v223 + (v232 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v223)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                                // Unknown jump to Block 0x2561B0x1e3a0x1901. Refer to 3-address code (TAC);
                                                                                                                                0x4575(v220, v223);
                                                                                                                                0x4575(v220, v223);
                                                                                                                                // Unknown jump to Block 0x2561B0x1e3a0x1901. Refer to 3-address code (TAC);
                                                                                                                                v237 = address(v220).call(MEM[v3fc70x4041V0x250fV0x1e3a0x1901 + 32:v3fc70x4041V0x250fV0x1e3a0x1901 + 32 + MEM[v3fc70x4041V0x250fV0x1e3a0x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                                    // Unknown jump to Block 0x2561B0x1e3a0x1901. Refer to 3-address code (TAC);
                                                                                                                                } else {
                                                                                                                                    v238 = RETURNDATASIZE();
                                                                                                                                    // Unknown jump to Block 0x2561B0x1e3a0x1901. Refer to 3-address code (TAC);
                                                                                                                                }
                                                                                                                            }
                                                                                                                            v239, /* uint256 */ v240 = address(MEM[v5 + v0 + 83]).exchange(int128(uint8(MEM[v5 + v0 + 84])), int128(uint8(MEM[v5 + v0 + 85])), uint112(MEM[v5 + v0 + 49]), uint112(MEM[v5 + v0 + 63])).gas(msg.gas);
                                                                                                                            if (!v239) {
                                                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                                                            } else if (v239) {
                                                                                                                                v241 = v242 = 32;
                                                                                                                                if (32 > RETURNDATASIZE()) {
                                                                                                                                    v241 = v243 = RETURNDATASIZE();
                                                                                                                                    0x24d(MEM[64], v243);
                                                                                                                                } else {
                                                                                                                                    0x24d(MEM[64], v242);
                                                                                                                                }
                                                                                                                                require(MEM[64] + v241 - MEM[64] >= 32);
                                                                                                                                v5 = v5 + 85;
                                                                                                                            } else {
                                                                                                                                v5 = v5 + 85;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        v0 = v244 = 7185;
                                                                                                                        v5 = 0x25b1(v0);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    v5 = 0x28df(v0, v5);
                                                                                                                }
                                                                                                            } else {
                                                                                                                v5 = 0x29e2(v0, v5);
                                                                                                            }
                                                                                                        } else {
                                                                                                            v245 = v5 + v0;
                                                                                                            v246 = v247 = 11060;
                                                                                                            v246 = v248 = address(MEM[v245 + 41]);
                                                                                                            v249 = v250 = MEM[64];
                                                                                                            0x24d(v250, 100);
                                                                                                            v251 = v252 = address(v248).approve(address(MEM[v245 + 21]), uint112(MEM[v245 + 55])).gas(msg.gas);
                                                                                                            if (!RETURNDATASIZE()) {
                                                                                                                v253 = 96;
                                                                                                            } else {
                                                                                                                v254 = 0x29c(RETURNDATASIZE());
                                                                                                                v253 = v255 = MEM[64];
                                                                                                                0x24d(v255, v254);
                                                                                                                MEM[v255] = RETURNDATASIZE();
                                                                                                                RETURNDATACOPY(v255 + 32, 0, RETURNDATASIZE());
                                                                                                            }
                                                                                                            if (v252) {
                                                                                                                v251 = v256 = !MEM[v253];
                                                                                                                if (bool(MEM[v253])) {
                                                                                                                    require(v253 + MEM[v253] + 32 - (v253 + 32) >= 32);
                                                                                                                    v251 = MEM[v253 + 32];
                                                                                                                    require(!(v251 - bool(v251)));
                                                                                                                }
                                                                                                            }
                                                                                                            if (v251) {
                                                                                                                v251 = v257 = bool((address(v248)).code.size);
                                                                                                            }
                                                                                                            if (!v251) {
                                                                                                                v249 = MEM[64];
                                                                                                                MEM[v249 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                                                                MEM[v249 + 36] = address(MEM[v245 + 21]);
                                                                                                                MEM[v249 + 68] = 0;
                                                                                                                v258 = v259 = 100;
                                                                                                                MEM[v249] = 68;
                                                                                                                v258 = v260 = 16513;
                                                                                                                v258 = v261 = 16508;
                                                                                                                v246 = v262 = 16502;
                                                                                                                0x24d(v249, v259);
                                                                                                                require(!((v249 + (v258 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v249 + (v258 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v249)), Panic(65)); // failed memory allocation (too much memory)
                                                                                                                // Unknown jump to Block 0x2b340x1901. Refer to 3-address code (TAC);
                                                                                                                0x4575(v246, v249);
                                                                                                                0x4575(v246, v249);
                                                                                                                // Unknown jump to Block 0x2b340x1901. Refer to 3-address code (TAC);
                                                                                                                v263 = address(v246).call(MEM[v3fc70x4041V0x2aef0x1901 + 32:v3fc70x4041V0x2aef0x1901 + 32 + MEM[v3fc70x4041V0x2aef0x1901]], MEM[0:0]).gas(msg.gas);
                                                                                                                if (!RETURNDATASIZE()) {
                                                                                                                    // Unknown jump to Block 0x2b340x1901. Refer to 3-address code (TAC);
                                                                                                                } else {
                                                                                                                    v264 = RETURNDATASIZE();
                                                                                                                    // Unknown jump to Block 0x2b340x1901. Refer to 3-address code (TAC);
                                                                                                                }
                                                                                                            }
                                                                                                            v265, /* uint256 */ v266, /* uint256 */ v267 = address(MEM[v245 + 21]).swapExactAmountIn(address(MEM[v245 + 41]), uint112(MEM[v245 + 69]), address(MEM[v245 + 89]), uint112(MEM[v245 + 103]), uint256.max).gas(msg.gas);
                                                                                                            if (!v265) {
                                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                                            } else if (v265) {
                                                                                                                v268 = 64;
                                                                                                                if (64 > RETURNDATASIZE()) {
                                                                                                                    v268 = v269 = RETURNDATASIZE();
                                                                                                                }
                                                                                                                0x24d(MEM[64], v268);
                                                                                                                require(MEM[64] + v268 - MEM[64] >= 64);
                                                                                                                v5 = v5 + 103;
                                                                                                            } else {
                                                                                                                v5 = v5 + 103;
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
                                                                                                        STORAGE[address(MEM[v0 + v5 + 21])] = 1;
                                                                                                        MEM[MEM[64]] = 0x8154831900000000000000000000000000000000000000000000000000000000;
                                                                                                        MEM[MEM[64] + 4] = 32;
                                                                                                        MEM[MEM[64] + 36] = MEM[v0];
                                                                                                        v270 = 0;
                                                                                                        while (v270 < MEM[v0]) {
                                                                                                            MEM[v270 + (MEM[64] + 36 + 32)] = MEM[v270 + (v0 + 32)];
                                                                                                            v270 += 32;
                                                                                                        }
                                                                                                        MEM[MEM[v0] + (MEM[64] + 36 + 32)] = 0;
                                                                                                        v271 = address(MEM[v0 + v5 + 21]).call(v272, MEM[64] + 0x8154831900000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                                                                                                        if (!v271) {
                                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                                        } else {
                                                                                                            if (v271) {
                                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                                0x24d(MEM[64], RETURNDATASIZE());
                                                                                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                                                                                require(0x8154831900000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                                                                                require(MEM[64] + 0x8154831900000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                                                                                                v273 = 0x29c(v274.length);
                                                                                                                v275 = new uint256[](v274.length);
                                                                                                                0x24d(v275, v273);
                                                                                                                require(MEM[64] + 0x8154831900000000000000000000000000000000000000000000000000000000 + v274.length + 32 <= MEM[64] + RETURNDATASIZE());
                                                                                                                v276 = 0;
                                                                                                                while (v276 < v274.length) {
                                                                                                                    MEM[v276 + v275.data] = MEM[v276 + v274.data];
                                                                                                                    v276 += 32;
                                                                                                                }
                                                                                                                MEM[v274.length + v275.data] = 0;
                                                                                                            }
                                                                                                            v5 = v5 + 21;
                                                                                                            v0 = v277 = 1;
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    v0 = v278, v5, v0 = v279 = 0x2dc4(v0, v5);
                                                                                                }
                                                                                            } else {
                                                                                                STORAGE[address(MEM[v0 + v5 + 21])] = 1;
                                                                                                MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                                                                MEM[MEM[64] + 4] = 32;
                                                                                                MEM[MEM[64] + 36] = MEM[v0];
                                                                                                v280 = 0;
                                                                                                while (v280 < MEM[v0]) {
                                                                                                    MEM[v280 + (MEM[64] + 36 + 32)] = MEM[v280 + (v0 + 32)];
                                                                                                    v280 += 32;
                                                                                                }
                                                                                                MEM[MEM[v0] + (MEM[64] + 36 + 32)] = 0;
                                                                                                v281 = address(MEM[v0 + v5 + 21]).call(v272, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                                                                                                if (!v281) {
                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                } else {
                                                                                                    if (v281) {
                                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                        0x24d(MEM[64], RETURNDATASIZE());
                                                                                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                                                                        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                                                                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                                                                                                        v282 = 0x29c(v283.length);
                                                                                                        v284 = new uint256[](v283.length);
                                                                                                        0x24d(v284, v282);
                                                                                                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v283.length + 32 <= MEM[64] + RETURNDATASIZE());
                                                                                                        v285 = 0;
                                                                                                        while (v285 < v283.length) {
                                                                                                            MEM[v285 + v284.data] = MEM[v285 + v283.data];
                                                                                                            v285 += 32;
                                                                                                        }
                                                                                                        MEM[v283.length + v284.data] = 0;
                                                                                                    }
                                                                                                    v5 = v5 + 21;
                                                                                                    v0 = v286 = 1;
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            v0 = v287, v5 = 0x30fe(v0, v5);
                                                                                        }
                                                                                    } else {
                                                                                        v0 = v288 = 0;
                                                                                        STORAGE[address(MEM[v0 + v5 + 21])] = 1;
                                                                                        if (uint8(MEM[v0 + v5 + 71]) == 1) {
                                                                                            v0 = v289 = 1;
                                                                                        }
                                                                                        if (0 == (uint8(MEM[v0 + v5 + 22]) == 1)) {
                                                                                            v290 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                                                        } else {
                                                                                            v290 = v291 = 0x1000276a4;
                                                                                        }
                                                                                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                                                        MEM[MEM[64] + 4] = address(MEM[v0 + v5 + 70]);
                                                                                        MEM[MEM[64] + 4 + 32] = uint8(MEM[v0 + v5 + 22]) == 1;
                                                                                        MEM[MEM[64] + 4 + 64] = uint112(MEM[v0 + v5 + 50]);
                                                                                        MEM[MEM[64] + 4 + 96] = address(v290);
                                                                                        MEM[MEM[64] + 4 + 128] = 160;
                                                                                        MEM[MEM[64] + 4 + 160] = MEM[v0];
                                                                                        v292 = 0;
                                                                                        while (v292 < MEM[v0]) {
                                                                                            MEM[v292 + (MEM[64] + 4 + 160 + 32)] = MEM[v292 + (v0 + 32)];
                                                                                            v292 += 32;
                                                                                        }
                                                                                        MEM[MEM[v0] + (MEM[64] + 4 + 160 + 32)] = 0;
                                                                                        v293, /* uint256 */ v294, /* uint256 */ v295 = address(MEM[v0 + v5 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v1901arg0x1] + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                                                                        if (!v293) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            if (v293) {
                                                                                                v296 = v297 = 64;
                                                                                                if (64 > RETURNDATASIZE()) {
                                                                                                    v296 = v298 = RETURNDATASIZE();
                                                                                                    0x24d(MEM[64], v298);
                                                                                                } else {
                                                                                                    0x24d(MEM[64], v297);
                                                                                                }
                                                                                                require(MEM[64] + v296 - MEM[64] >= 64);
                                                                                            }
                                                                                            v5 = v5 + 71;
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    v0 = v299, v5 = 0x3353(v0, v5);
                                                                                }
                                                                            } else {
                                                                                v0 = v300 = 0;
                                                                                STORAGE[address(MEM[v0 + v5 + 21])] = 1;
                                                                                if (uint8(MEM[v0 + v5 + 105]) == 1) {
                                                                                    v0 = v301 = 1;
                                                                                }
                                                                                if (0 == (uint8(MEM[v0 + v5 + 22]) == 1)) {
                                                                                    v302 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                                                    v303 = v304 = MEM[64];
                                                                                    MEM[v304] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                                                    v305 = uint112(MEM[v0 + v5 + 84]);
                                                                                    v306 = v304 + 4;
                                                                                } else {
                                                                                    v302 = v307 = 0x1000276a4;
                                                                                    v303 = v308 = MEM[64];
                                                                                    MEM[v308] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                                                    v305 = v309 = uint112(MEM[v0 + v5 + 84]);
                                                                                    v306 = v310 = v308 + 4;
                                                                                }
                                                                                MEM[v306] = address(MEM[v0 + v5 + 104]);
                                                                                MEM[v306 + 32] = uint8(MEM[v0 + v5 + 22]) == 1;
                                                                                MEM[v306 + 64] = v305;
                                                                                MEM[v306 + 96] = address(v302);
                                                                                MEM[v306 + 128] = 160;
                                                                                MEM[v306 + 160] = MEM[v0];
                                                                                v311 = 0;
                                                                                while (v311 < MEM[v0]) {
                                                                                    MEM[v311 + (v306 + 160 + 32)] = MEM[v311 + (v0 + 32)];
                                                                                    v311 += 32;
                                                                                }
                                                                                MEM[MEM[v0] + (v306 + 160 + 32)] = 0;
                                                                                v312 = address(MEM[v0 + v5 + 21]).call(MEM[v2ad90x3411_0x0V0x1d3d0x1901:v2ad90x3411_0x0V0x1d3d0x1901 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v1901arg0x1] + v34110x32ebV0x1d3d0x1901 + 160 + 32 - v2ad90x3411_0x0V0x1d3d0x1901], MEM[v2ad90x3411_0x0V0x1d3d0x1901:v2ad90x3411_0x0V0x1d3d0x1901 + 64]).gas(msg.gas);
                                                                                if (!v312) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else if (v312) {
                                                                                    v313 = v314 = 64;
                                                                                    if (64 > RETURNDATASIZE()) {
                                                                                        v313 = v315 = RETURNDATASIZE();
                                                                                        0x24d(v303, v315);
                                                                                    } else {
                                                                                        0x24d(v303, v314);
                                                                                    }
                                                                                    require(v303 + v313 - v303 >= 64);
                                                                                    v5 = v5 + 105;
                                                                                } else {
                                                                                    v5 = v5 + 105;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            v0 = v316, v5 = 0x34b6(v0, v5);
                                                                        }
                                                                    } else {
                                                                        0x44bf(MEM[v0 + v5 + 21], MEM[v0 + v5 + 41], MEM[v0 + v5 + 61], MEM[v0 + v5 + 81], uint112(MEM[v0 + v5 + 95]), uint112(MEM[v0 + v5 + 109]));
                                                                        v5 = v5 + 109;
                                                                        // Unknown jump to Block 0x1c110x1901. Refer to 3-address code (TAC);
                                                                    }
                                                                } else {
                                                                    0x44bf(MEM[v0 + v5 + 21], MEM[v0 + v5 + 41], MEM[v0 + v5 + 61], this, uint112(MEM[v0 + v5 + 75]), uint112(MEM[v0 + v5 + 89]));
                                                                    v5 = v5 + 89;
                                                                    // Unknown jump to Block 0x1c110x1901. Refer to 3-address code (TAC);
                                                                }
                                                            } else {
                                                                v317 = v318 = MEM[v5 + v0 + 21];
                                                                if (0 == (uint8(MEM[v5 + v0 + 22]) == 1)) {
                                                                    v319 = v320 = 13885;
                                                                    v321 = 1;
                                                                    v322 = 0;
                                                                    v323 = v324 = uint160.max;
                                                                    v319 = v325 = address(MEM[v5 + v0 + 70]);
                                                                    v317 = v326 = MEM[64];
                                                                    0x24d(v326, 100);
                                                                    v327 = v328 = address(v325).approve(address(v318), uint112(MEM[v5 + v0 + 36])).gas(msg.gas);
                                                                    if (!RETURNDATASIZE()) {
                                                                        v329 = 96;
                                                                    } else {
                                                                        v330 = 0x29c(RETURNDATASIZE());
                                                                        v329 = v331 = MEM[64];
                                                                        0x24d(v331, v330);
                                                                        MEM[v331] = RETURNDATASIZE();
                                                                        RETURNDATACOPY(v331 + 32, 0, RETURNDATASIZE());
                                                                    }
                                                                    if (v328) {
                                                                        v327 = v332 = !MEM[v329];
                                                                        if (bool(MEM[v329])) {
                                                                            require(v329 + MEM[v329] + 32 - (v329 + 32) >= 32);
                                                                            v327 = MEM[v329 + 32];
                                                                            require(!(v327 - bool(v327)));
                                                                        }
                                                                    }
                                                                    if (v327) {
                                                                        v327 = v333 = bool((address(v325)).code.size);
                                                                    }
                                                                    if (!v327) {
                                                                        v317 = v334 = MEM[64];
                                                                        MEM[v334 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                        MEM[v334 + 36] = address(v318);
                                                                        MEM[v334 + 68] = 0;
                                                                        MEM[v334] = 68;
                                                                        v323 = v335 = 16513;
                                                                        v323 = v336 = 16508;
                                                                        0x24d(v334, 100);
                                                                        0x4575(v325, v334);
                                                                        0x4575(v325, v317);
                                                                        // Unknown jump to Block 0x363dB0x1cf00x1901. Refer to 3-address code (TAC);
                                                                        v337 = address(v319).call(MEM[v15500x362b_0x6V0x36acV0x1cf00x1901 + 32:v15500x362b_0x6V0x36acV0x1cf00x1901 + 32 + MEM[v15500x362b_0x6V0x36acV0x1cf00x1901]], MEM[0:0]).gas(msg.gas);
                                                                        if (!RETURNDATASIZE()) {
                                                                            // Unknown jump to Block 0x363dB0x1cf00x1901. Refer to 3-address code (TAC);
                                                                        } else {
                                                                            v338 = RETURNDATASIZE();
                                                                            // Unknown jump to Block 0x363dB0x1cf00x1901. Refer to 3-address code (TAC);
                                                                        }
                                                                    } else {
                                                                        // Unknown jump to Block 0x363dB0x1cf00x1901. Refer to 3-address code (TAC);
                                                                    }
                                                                } else {
                                                                    v339 = v340 = 13885;
                                                                    v321 = v341 = 0;
                                                                    v322 = v342 = 1;
                                                                    v323 = v343 = uint160.max;
                                                                    v339 = v344 = address(MEM[v5 + v0 + 70]);
                                                                    v317 = v345 = MEM[64];
                                                                    0x24d(v345, 100);
                                                                    v346 = v347 = address(v344).approve(address(v318), uint112(MEM[v5 + v0 + 36])).gas(msg.gas);
                                                                    if (!RETURNDATASIZE()) {
                                                                        v348 = 96;
                                                                    } else {
                                                                        v349 = 0x29c(RETURNDATASIZE());
                                                                        v348 = v350 = MEM[64];
                                                                        0x24d(v350, v349);
                                                                        MEM[v350] = RETURNDATASIZE();
                                                                        RETURNDATACOPY(v350 + 32, 0, RETURNDATASIZE());
                                                                    }
                                                                    if (v347) {
                                                                        v346 = v351 = !MEM[v348];
                                                                        if (bool(MEM[v348])) {
                                                                            require(v348 + MEM[v348] + 32 - (v348 + 32) >= 32);
                                                                            v346 = MEM[v348 + 32];
                                                                            require(!(v346 - bool(v346)));
                                                                        }
                                                                    }
                                                                    if (v346) {
                                                                        v346 = v352 = bool((address(v344)).code.size);
                                                                    }
                                                                    if (!v346) {
                                                                        v317 = v353 = MEM[64];
                                                                        MEM[v353 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                                        MEM[v353 + 36] = address(v318);
                                                                        MEM[v353 + 68] = 0;
                                                                        MEM[v353] = 68;
                                                                        v323 = v354 = 16513;
                                                                        v323 = v355 = 16508;
                                                                        0x24d(v353, 100);
                                                                        0x4575(v344, v353);
                                                                        0x4575(v344, v317);
                                                                        // Unknown jump to Block 0x363dB0x1cf00x1901. Refer to 3-address code (TAC);
                                                                        v356 = address(v339).call(MEM[v15500x362b_0x6V0x36acV0x1cf00x1901 + 32:v15500x362b_0x6V0x36acV0x1cf00x1901 + 32 + MEM[v15500x362b_0x6V0x36acV0x1cf00x1901]], MEM[0:0]).gas(msg.gas);
                                                                        if (!RETURNDATASIZE()) {
                                                                            // Unknown jump to Block 0x363dB0x1cf00x1901. Refer to 3-address code (TAC);
                                                                        } else {
                                                                            v357 = RETURNDATASIZE();
                                                                            // Unknown jump to Block 0x363dB0x1cf00x1901. Refer to 3-address code (TAC);
                                                                        }
                                                                    }
                                                                }
                                                                require((v317 & v323).code.size);
                                                                v358 = (v317 & v323).setMetaGold(uint8(v321), uint8(v322), uint112(MEM[v5 + v0 + 50]), uint112(MEM[v5 + v0 + 84])).gas(msg.gas);
                                                                if (!v358) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else if (v358) {
                                                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64];
                                                                    0x918(MEM[64], MEM[64]);
                                                                    v5 = v5 + 84;
                                                                } else {
                                                                    v5 = v5 + 84;
                                                                }
                                                            }
                                                        } else {
                                                            if (0 == (uint8(MEM[v5 + v0 + 22]) == 1)) {
                                                                v359 = v360 = uint112(MEM[v5 + v0 + 36]);
                                                                v361 = v362 = 0;
                                                            } else {
                                                                v359 = v363 = 0;
                                                                v361 = v364 = uint112(MEM[v5 + v0 + 36]);
                                                            }
                                                            v365 = v366 = 0x36ba();
                                                            v366.word0 = v359;
                                                            v366.word1 = v361;
                                                            v367 = 0xcf5();
                                                            require((address(MEM[v5 + v0 + 21])).code.size);
                                                            MEM[MEM[64]] = 0x2d42ed5600000000000000000000000000000000000000000000000000000000;
                                                            v368 = v369 = MEM[64] + 4;
                                                            v370 = 0;
                                                            while (v370 < 2) {
                                                                MEM[v368] = MEM[v365];
                                                                v368 = v368 + 32;
                                                                v365 = v365 + 32;
                                                                v370 = v370 + 1;
                                                            }
                                                            MEM[v369 + 64] = address(MEM[v5 + v0 + 56]);
                                                            MEM[v369 + 96] = 128;
                                                            MEM[v369 + 128] = MEM[v367];
                                                            v371 = 0;
                                                            while (v371 < MEM[v367]) {
                                                                MEM[v371 + (v369 + 128 + 32)] = MEM[v371 + (v367 + 32)];
                                                                v371 += 32;
                                                            }
                                                            MEM[MEM[v367] + (v369 + 128 + 32)] = 0;
                                                            v372 = address(MEM[v5 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v377c_0x0V0x1cdd0x1901] + v37a4V0x1cdd0x1901 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                            if (!v372) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else if (v372) {
                                                                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                MEM[64] = MEM[64];
                                                                0x918(MEM[64], MEM[64]);
                                                                v5 = v5 + 56;
                                                            } else {
                                                                v5 = v5 + 56;
                                                            }
                                                        }
                                                    } else {
                                                        if (0 == (uint8(MEM[v5 + v0 + 22]) == 1)) {
                                                            v373 = v374 = uint112(MEM[v5 + v0 + 36]);
                                                            v375 = v376 = 0;
                                                        } else {
                                                            v373 = v377 = 0;
                                                            v375 = v378 = uint112(MEM[v5 + v0 + 36]);
                                                        }
                                                        v379 = v380 = 0x36ba();
                                                        v380.word0 = v373;
                                                        v380.word1 = v375;
                                                        v381 = 0xcf5();
                                                        require((address(MEM[v5 + v0 + 21])).code.size);
                                                        MEM[MEM[64]] = 0x2d42ed5600000000000000000000000000000000000000000000000000000000;
                                                        v382 = v383 = MEM[64] + 4;
                                                        v384 = 0;
                                                        while (v384 < 2) {
                                                            MEM[v382] = MEM[v379];
                                                            v382 = v382 + 32;
                                                            v379 = v379 + 32;
                                                            v384 = v384 + 1;
                                                        }
                                                        MEM[v383 + 64] = address(this);
                                                        MEM[v383 + 96] = 128;
                                                        MEM[v383 + 128] = MEM[v381];
                                                        v385 = 0;
                                                        while (v385 < MEM[v381]) {
                                                            MEM[v385 + (v383 + 128 + 32)] = MEM[v385 + (v381 + 32)];
                                                            v385 += 32;
                                                        }
                                                        MEM[MEM[v381] + (v383 + 128 + 32)] = 0;
                                                        v386 = address(MEM[v5 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v381d_0x0V0x1cca0x1901] + v3845V0x1cca0x1901 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                        if (!v386) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else if (v386) {
                                                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            0x918(MEM[64], MEM[64]);
                                                            v5 = v5 + 36;
                                                        } else {
                                                            v5 = v5 + 36;
                                                        }
                                                    }
                                                } else {
                                                    0x115e(MEM[v5 + v0 + 70], MEM[v5 + v0 + 21], uint112(MEM[v5 + v0 + 36]));
                                                    if (uint8(MEM[v5 + v0 + 22]) - 1) {
                                                        v387 = v388 = uint112(MEM[v5 + v0 + 50]);
                                                        v389 = v390 = 0;
                                                    } else {
                                                        v387 = v391 = 0;
                                                        v389 = v392 = uint112(MEM[v5 + v0 + 50]);
                                                    }
                                                    v393 = v394 = 0x36ba();
                                                    v394.word0 = v387;
                                                    v394.word1 = v389;
                                                    v395 = 0xcf5();
                                                    require((address(MEM[v5 + v0 + 21])).code.size);
                                                    MEM[MEM[64]] = 0x2d42ed5600000000000000000000000000000000000000000000000000000000;
                                                    v396 = v397 = MEM[64] + 4;
                                                    v398 = 0;
                                                    while (v398 < 2) {
                                                        MEM[v396] = MEM[v393];
                                                        v396 = v396 + 32;
                                                        v393 = v393 + 32;
                                                        v398 = v398 + 1;
                                                    }
                                                    MEM[v397 + 64] = address(MEM[v5 + v0 + 90]);
                                                    MEM[v397 + 96] = 128;
                                                    MEM[v397 + 128] = MEM[v395];
                                                    v399 = 0;
                                                    while (v399 < MEM[v395]) {
                                                        MEM[v399 + (v397 + 128 + 32)] = MEM[v399 + (v395 + 32)];
                                                        v399 += 32;
                                                    }
                                                    MEM[MEM[v395] + (v397 + 128 + 32)] = 0;
                                                    v400 = address(MEM[v5 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v38d9_0x0V0x1cb70x1901] + v3901V0x1cb70x1901 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (!v400) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else if (v400) {
                                                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64];
                                                        0x918(MEM[64], MEM[64]);
                                                        v5 = v5 + 90;
                                                    } else {
                                                        v5 = v5 + 90;
                                                    }
                                                }
                                            } else {
                                                0x115e(MEM[v5 + v0 + 70], MEM[v5 + v0 + 21], uint112(MEM[v5 + v0 + 36]));
                                                if (uint8(MEM[v5 + v0 + 22]) - 1) {
                                                    v401 = v402 = uint112(MEM[v5 + v0 + 50]);
                                                    v403 = v404 = 0;
                                                } else {
                                                    v401 = v405 = 0;
                                                    v403 = v406 = uint112(MEM[v5 + v0 + 50]);
                                                }
                                                v407 = v408 = 0x36ba();
                                                v408.word0 = v401;
                                                v408.word1 = v403;
                                                v409 = 0xcf5();
                                                require((address(MEM[v5 + v0 + 21])).code.size);
                                                MEM[MEM[64]] = 0x2d42ed5600000000000000000000000000000000000000000000000000000000;
                                                v410 = v411 = MEM[64] + 4;
                                                v412 = 0;
                                                while (v412 < 2) {
                                                    MEM[v410] = MEM[v407];
                                                    v410 = v410 + 32;
                                                    v407 = v407 + 32;
                                                    v412 = v412 + 1;
                                                }
                                                MEM[v411 + 64] = address(this);
                                                MEM[v411 + 96] = 128;
                                                MEM[v411 + 128] = MEM[v409];
                                                v413 = 0;
                                                while (v413 < MEM[v409]) {
                                                    MEM[v413 + (v411 + 128 + 32)] = MEM[v413 + (v409 + 32)];
                                                    v413 += 32;
                                                }
                                                MEM[MEM[v409] + (v411 + 128 + 32)] = 0;
                                                v414 = address(MEM[v5 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3988_0x0V0x1ca40x1901] + v39b0V0x1ca40x1901 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                if (!v414) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else if (v414) {
                                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64];
                                                    0x918(MEM[64], MEM[64]);
                                                    v5 = v5 + 70;
                                                } else {
                                                    v5 = v5 + 70;
                                                }
                                            }
                                        } else {
                                            if (0 == (uint8(MEM[v5 + v0 + 22]) == 1)) {
                                                v415 = uint112(MEM[v5 + v0 + 36]);
                                                v416 = 0;
                                            } else {
                                                v415 = v417 = 0;
                                                v416 = v418 = uint112(MEM[v5 + v0 + 36]);
                                            }
                                            require((address(MEM[v5 + v0 + 21])).code.size);
                                            v419 = address(MEM[v5 + v0 + 21]).swap(v415, v416, this).gas(msg.gas);
                                            if (!v419) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else if (v419) {
                                                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                0x918(MEM[64], MEM[64]);
                                                v5 = v5 + 36;
                                            } else {
                                                v5 = v5 + 36;
                                            }
                                        }
                                    } else {
                                        if (0 == (uint8(MEM[v5 + v0 + 22]) == 1)) {
                                            v420 = uint112(MEM[v5 + v0 + 36]);
                                            v421 = 0;
                                        } else {
                                            v420 = v422 = 0;
                                            v421 = v423 = uint112(MEM[v5 + v0 + 36]);
                                        }
                                        require((address(MEM[v5 + v0 + 21])).code.size);
                                        v424 = address(MEM[v5 + v0 + 21]).swap(v420, v421, address(MEM[v5 + v0 + 56])).gas(msg.gas);
                                        if (!v424) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v424) {
                                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            0x918(MEM[64], MEM[64]);
                                            v5 = v5 + 56;
                                        } else {
                                            v5 = v5 + 56;
                                        }
                                    }
                                } else {
                                    0x115e(MEM[v5 + v0 + 70], MEM[v5 + v0 + 21], uint112(MEM[v5 + v0 + 36]));
                                    if (uint8(MEM[v5 + v0 + 22]) - 1) {
                                        v425 = 0;
                                        v426 = uint112(MEM[v5 + v0 + 50]);
                                    } else {
                                        v426 = v427 = 0;
                                        v425 = v428 = uint112(MEM[v5 + v0 + 50]);
                                    }
                                    require((address(MEM[v5 + v0 + 21])).code.size);
                                    v429 = address(MEM[v5 + v0 + 21]).swap(v426, v425, address(MEM[v5 + v0 + 90])).gas(msg.gas);
                                    if (!v429) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else if (v429) {
                                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        0x918(MEM[64], MEM[64]);
                                        v5 = v5 + 90;
                                    } else {
                                        v5 = v5 + 90;
                                    }
                                }
                            } else {
                                0x115e(MEM[v5 + v0 + 70], MEM[v5 + v0 + 21], uint112(MEM[v5 + v0 + 36]));
                                if (uint8(MEM[v5 + v0 + 22]) - 1) {
                                    v430 = uint112(MEM[v5 + v0 + 50]);
                                    v431 = 0;
                                } else {
                                    v430 = v432 = 0;
                                    v431 = v433 = uint112(MEM[v5 + v0 + 50]);
                                }
                                require((address(MEM[v5 + v0 + 21])).code.size);
                                v434 = address(MEM[v5 + v0 + 21]).swap(v430, v431, this).gas(msg.gas);
                                if (!v434) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v434) {
                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    0x918(MEM[64], MEM[64]);
                                    v5 = v5 + 70;
                                } else {
                                    v5 = v5 + 70;
                                }
                            }
                        } else {
                            v5 = v435 = 7182;
                            v0 = v436 = 0;
                            if (0 == (uint8(MEM[v0 + v5 + 22]) == 1)) {
                                v437 = uint112(MEM[v0 + v5 + 36]);
                                v438 = v439 = 1;
                                v440 = 0;
                            } else {
                                v438 = v441 = 1;
                                v437 = v442 = 0;
                                v440 = v443 = uint112(MEM[v0 + v5 + 36]);
                            }
                            if (uint8(MEM[v0 + v5 + 37]) - v438) {
                                v444 = 0xcf5();
                                require((address(MEM[v0 + v5 + 21])).code.size);
                                v445 = v446 = MEM[64];
                                MEM[v446] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                MEM[v446 + 4] = v437;
                                MEM[v446 + 4 + 32] = v440;
                                MEM[v446 + 4 + 64] = address(this);
                                MEM[v446 + 4 + 96] = 128;
                                MEM[v446 + 4 + 128] = MEM[v444];
                                v447 = 0;
                                while (v447 < MEM[v444]) {
                                    MEM[v447 + (v446 + 4 + 128 + 32)] = MEM[v447 + (v444 + 32)];
                                    v447 += 32;
                                }
                                MEM[MEM[v444] + (v446 + 4 + 128 + 32)] = 0;
                                v448 = address(MEM[v0 + v5 + 21]).call(MEM[v3d19V0x1c440x1901:v3d19V0x1c440x1901 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3d06_0x0V0x1c440x1901] + v3d19V0x1c440x1901 + 4 + 128 + 32 - v3d19V0x1c440x1901], MEM[v3d19V0x1c440x1901:v3d19V0x1c440x1901]).gas(msg.gas);
                                if (v448) {
                                    v5 = v449 = 37;
                                    if (v448) {
                                        v450 = v451 = 15706;
                                        require(v446 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v446;
                                    } else {
                                        v5 = v5 + v449;
                                    }
                                }
                            } else {
                                STORAGE[address(MEM[v0 + v5 + 21])] = 1;
                                require((address(MEM[v0 + v5 + 21])).code.size);
                                v445 = v452 = MEM[64];
                                MEM[v452] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                MEM[v452 + 4] = v437;
                                MEM[v452 + 4 + 32] = v440;
                                MEM[v452 + 4 + 64] = address(this);
                                MEM[v452 + 4 + 96] = 128;
                                MEM[v452 + 4 + 128] = MEM[v0];
                                v453 = 0;
                                while (v453 < MEM[v0]) {
                                    MEM[v453 + (v452 + 4 + 128 + 32)] = MEM[v453 + (v0 + 32)];
                                    v453 += 32;
                                }
                                MEM[MEM[v0] + (v452 + 4 + 128 + 32)] = 0;
                                v454 = address(MEM[v0 + v5 + 21]).call(MEM[v3ca9V0x1c440x1901:v3ca9V0x1c440x1901 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v1901arg0x1] + v3ca9V0x1c440x1901 + 4 + 128 + 32 - v3ca9V0x1c440x1901], MEM[v3ca9V0x1c440x1901:v3ca9V0x1c440x1901]).gas(msg.gas);
                                if (v454) {
                                    if (v454) {
                                        v450 = v455 = 15596;
                                        require(v452 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v452;
                                    }
                                }
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                            v0 = v456 = 1;
                            v5 = v5 + 37;
                            // Unknown jump to Block 0x1c0e0x1901. Refer to 3-address code (TAC);
                            0x918(v445, v445);
                            v5 += v5;
                            // Unknown jump to Block 0x3cd4B0x1c440x1901. Refer to 3-address code (TAC);
                        }
                    } else {
                        if (0 == (uint8(MEM[v5 + v0 + 22]) == 1)) {
                            v457 = uint112(MEM[v5 + v0 + 36]);
                            v458 = 0;
                        } else {
                            v457 = v459 = 0;
                            v458 = v460 = uint112(MEM[v5 + v0 + 36]);
                        }
                        v461 = 0xcf5();
                        require((address(MEM[v5 + v0 + 21])).code.size);
                        MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = v457;
                        MEM[MEM[64] + 4 + 32] = v458;
                        MEM[MEM[64] + 4 + 64] = address(MEM[v5 + v0 + 56]);
                        MEM[MEM[64] + 4 + 96] = 128;
                        MEM[MEM[64] + 4 + 128] = MEM[v461];
                        v462 = 0;
                        while (v462 < MEM[v461]) {
                            MEM[v462 + (MEM[64] + 4 + 128 + 32)] = MEM[v462 + (v461 + 32)];
                            v462 += 32;
                        }
                        MEM[MEM[v461] + (MEM[64] + 4 + 128 + 32)] = 0;
                        v463 = address(MEM[v5 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3db8_0x0V0x1c310x1901] + MEM[64] + 4 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (!v463) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else if (v463) {
                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            0x918(MEM[64], MEM[64]);
                            v5 = v5 + 56;
                        } else {
                            v5 = v5 + 56;
                        }
                    }
                } else {
                    0x115e(MEM[v5 + v0 + 70], MEM[v5 + v0 + 21], uint112(MEM[v5 + v0 + 36]));
                    if (uint8(MEM[v5 + v0 + 22]) - 1) {
                        v464 = 0;
                        v465 = uint112(MEM[v5 + v0 + 50]);
                    } else {
                        v465 = v466 = 0;
                        v464 = v467 = uint112(MEM[v5 + v0 + 50]);
                    }
                    v468 = 0xcf5();
                    require((address(MEM[v5 + v0 + 21])).code.size);
                    MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = v465;
                    MEM[MEM[64] + 4 + 32] = v464;
                    MEM[MEM[64] + 4 + 64] = address(MEM[v5 + v0 + 90]);
                    MEM[MEM[64] + 4 + 96] = 128;
                    MEM[MEM[64] + 4 + 128] = MEM[v468];
                    v469 = 0;
                    while (v469 < MEM[v468]) {
                        MEM[v469 + (MEM[64] + 4 + 128 + 32)] = MEM[v469 + (v468 + 32)];
                        v469 += 32;
                    }
                    MEM[MEM[v468] + (MEM[64] + 4 + 128 + 32)] = 0;
                    v470 = address(MEM[v5 + v0 + 21]).call(MEM[MEM[64]:MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3e4f_0x0V0x1c1e0x1901] + MEM[64] + 4 + 128 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (!v470) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else if (v470) {
                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        0x918(MEM[64], MEM[64]);
                        v5 = v5 + 90;
                    } else {
                        v5 = v5 + 90;
                    }
                }
            } else {
                v5 = v471 = 7182;
                v0 = v472 = 0;
                if (0 == (uint8(MEM[v0 + v5 + 22]) == 1)) {
                    v473 = uint112(MEM[v0 + v5 + 50]);
                    v474 = v475 = 1;
                    v476 = 0;
                } else {
                    v474 = v477 = 1;
                    v473 = v478 = 0;
                    v476 = v479 = uint112(MEM[v0 + v5 + 50]);
                }
                if (uint8(MEM[v0 + v5 + 71]) - v474) {
                    0x115e(MEM[v0 + v5 + 70], MEM[v0 + v5 + 21], uint112(MEM[v0 + v5 + 36]));
                    v480 = 0xcf5();
                    require((address(MEM[v0 + v5 + 21])).code.size);
                    v481 = v482 = MEM[64];
                    MEM[v482] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[v482 + 4] = v473;
                    MEM[v482 + 4 + 32] = v476;
                    MEM[v482 + 4 + 64] = address(this);
                    MEM[v482 + 4 + 96] = 128;
                    MEM[v482 + 4 + 128] = MEM[v480];
                    v483 = 0;
                    while (v483 < MEM[v480]) {
                        MEM[v483 + (v482 + 4 + 128 + 32)] = MEM[v483 + (v480 + 32)];
                        v483 += 32;
                    }
                    MEM[MEM[v480] + (v482 + 4 + 128 + 32)] = 0;
                    v484 = address(MEM[v0 + v5 + 21]).call(MEM[v3f7dV0x1c030x1901:v3f7dV0x1c030x1901 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3f6a_0x0V0x1c030x1901] + v3f7dV0x1c030x1901 + 4 + 128 + 32 - v3f7dV0x1c030x1901], MEM[v3f7dV0x1c030x1901:v3f7dV0x1c030x1901]).gas(msg.gas);
                    if (v484) {
                        v5 = v485 = 71;
                        if (v484) {
                            v486 = v487 = 15706;
                            require(v482 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v482;
                        } else {
                            v5 = v5 + v485;
                        }
                    }
                } else {
                    STORAGE[address(MEM[v0 + v5 + 21])] = 1;
                    require((address(MEM[v0 + v5 + 21])).code.size);
                    v481 = v488 = MEM[64];
                    MEM[v488] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[v488 + 4] = v473;
                    MEM[v488 + 4 + 32] = v476;
                    MEM[v488 + 4 + 64] = address(this);
                    MEM[v488 + 4 + 96] = 128;
                    MEM[v488 + 4 + 128] = MEM[v0];
                    v489 = 0;
                    while (v489 < MEM[v0]) {
                        MEM[v489 + (v488 + 4 + 128 + 32)] = MEM[v489 + (v0 + 32)];
                        v489 += 32;
                    }
                    MEM[MEM[v0] + (v488 + 4 + 128 + 32)] = 0;
                    v490 = address(MEM[v0 + v5 + 21]).call(MEM[v3ef8V0x1c030x1901:v3ef8V0x1c030x1901 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v1901arg0x1] + v3ef8V0x1c030x1901 + 4 + 128 + 32 - v3ef8V0x1c030x1901], MEM[v3ef8V0x1c030x1901:v3ef8V0x1c030x1901]).gas(msg.gas);
                    if (v490) {
                        if (v490) {
                            v486 = v491 = 16187;
                            require(v488 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v488;
                        }
                    }
                }
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
                v0 = v492 = 1;
                v5 = v5 + 71;
                // Unknown jump to Block 0x1c0e0x1901. Refer to 3-address code (TAC);
                0x918(v481, v481);
                v5 += v5;
                // Unknown jump to Block 0x3f23B0x1c030x1901. Refer to 3-address code (TAC);
            }
            v0 += v0;
        }
    }
    return ;
}

function 0x19a8(uint256 varg0) private { 
    v0 = v1 = 0;
    while (v0 < MEM[varg0]) {
        require(v0 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v0 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2 = 0x1f2e(address(MEM[(v0 << 5) + varg0 + 32]));
        require(v2 >= STORAGE[address(MEM[(v0 << 5) + varg0 + 32])], Error(0x6e6f6f6d));
        v0 += 1;
    }
    return ;
}

function 0x1b8e(bytes varg0, uint256 varg1, uint256 varg2) private { 
    require(3 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = v1 = 7084;
    v2 = v3 = 0x1669(MEM[varg0 + 35] >> 248);
    while (1) {
        varg2 = v4 = 0xcbd(v2);
        if (!varg1) {
            return v4;
        } else {
            v5 = v6 = 0;
        }
        if (v5 < varg1) {
            v7 = v8 = uint8.max;
            varg1 = v9 = 1;
            v0 = v10 = 7127;
            v2 = v11 = 0x1669(v5);
        } else {
            return varg2;
        }
        varg2 = varg2 + (MEM[v7 + v4 + varg1] & v7);
        require(varg2 <= varg2, Panic(17)); // arithmetic overflow or underflow
        v5 += 1;
    }
}

function 0x1f2e(uint256 varg0) private { 
    v0 = new bytes[](36);
    MEM[v0.data] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = this;
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.balanceOf(this).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        v7 = 0x29c(RETURNDATASIZE());
        v5 = v8 = MEM[64];
        0x24d(v8, v7);
        MEM[v8] = RETURNDATASIZE();
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v9 = MEM[v5] >= 32;
    }
    require(v2, Error(0x625f7134));
    require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
    return MEM[v5 + 32];
}

function 0x24d(bytes varg0, uint256 varg1) private { 
    v0 = varg0 + (varg1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(!((v0 > uint64.max) | (v0 < varg0)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v0;
    return ;
}

function 0x25b1(uint256 varg0) private { 
    v0 = v1 + varg0;
    v1 = v2 = MEM[v0 + 41];
    v1 = v3 = MEM[v0 + 105];
    if (0 == (uint8(MEM[v0 + 106]) == 1)) {
        v4 = v5 = 10203;
        v4 = v6 = address(MEM[v0 + 21]);
        v7 = v8 = MEM[64];
        0x24d(v8, 100);
        v9 = v10, /* uint256 */ v11 = address(v6).approve(address(MEM[v0 + 103]), uint112(MEM[v0 + 55])).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v12 = 96;
        } else {
            v13 = 0x29c(RETURNDATASIZE());
            v12 = v14 = MEM[64];
            0x24d(v14, v13);
            MEM[v14] = RETURNDATASIZE();
            RETURNDATACOPY(v11, 0, RETURNDATASIZE());
        }
        if (v10) {
            v9 = v15 = !MEM[v12];
            if (bool(MEM[v12])) {
                require(v12 + MEM[v12] + 32 - (v12 + 32) >= 32);
                v9 = MEM[v12 + 32];
                require(!(v9 - bool(v9)));
            }
        }
        if (v9) {
            v9 = v16 = bool((address(v6)).code.size);
        }
        if (!v9) {
            v7 = MEM[64];
            MEM[v7 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
            MEM[v7 + 36] = address(MEM[v0 + 103]);
            MEM[v7 + 68] = 0;
            v17 = v18 = 100;
            MEM[v7] = 68;
            v17 = v19 = 16513;
            v17 = v20 = 16508;
            v4 = v21 = 16502;
            0x24d(v7, v18);
            require(!((v7 + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
            // Unknown jump to Block 0x27db. Refer to 3-address code (TAC);
            0x4575(v4, v7);
            0x4575(v4, v7);
            // Unknown jump to Block 0x27db. Refer to 3-address code (TAC);
            v22 = address(v4).call(MEM[v3fc70x4041V0x27ae + 32:v3fc70x4041V0x27ae + 32 + MEM[v3fc70x4041V0x27ae]], MEM[0:0]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                // Unknown jump to Block 0x27db. Refer to 3-address code (TAC);
            } else {
                v23 = RETURNDATASIZE();
                // Unknown jump to Block 0x27db. Refer to 3-address code (TAC);
            }
        }
        v24 = v25 = MEM[64];
        v26 = address(MEM[v0 + 103]).exchange(int128(uint8(MEM[v0 + 104])), int128(uint8(v3)), uint112(MEM[v0 + 69]), uint112(MEM[v0 + 83]), address(this)).gas(msg.gas);
        if (v26) {
            v27 = 106;
            if (v26) {
                v28 = v29 = 8439;
                v30 = v31 = 32;
                if (32 <= RETURNDATASIZE()) {
                    0x24d(v25, v31);
                }
            }
        }
    } else {
        v27 = v32 = uint160.max;
        if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 - address(MEM[v0 + 21])) {
            v24 = v33 = MEM[64];
            v34 = address(MEM[v0 + 103]).exchange(int128(uint8(MEM[v0 + 104])), int128(uint8(v3)), uint112(MEM[v0 + 69]), uint112(MEM[v0 + 83]), address(this)).gas(msg.gas);
            if (v34) {
                if (v34) {
                    v28 = v35 = 10151;
                    v30 = v36 = 32;
                    if (32 <= RETURNDATASIZE()) {
                        0x24d(v33, v36);
                    }
                }
            }
        } else {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            v37 = v38 = MEM[64];
            v39 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint112(MEM[v0 + 55])).gas(msg.gas);
            if (v39) {
                v40 = v41 = 9884;
                if (v39) {
                    v42 = v43 = 10042;
                    require(v38 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v38;
                }
            }
        }
    }
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    revert(MEM[64], RETURNDATASIZE());
    v24 = v44 = MEM[64];
    v45 = address(MEM[v0 + 103]).exchange(int128(uint8(MEM[v0 + 104])), int128(uint8(v1)), uint112(MEM[v0 + 69]), uint112(MEM[v0 + 83]), address(this)).value(uint112(MEM[v0 + 55])).gas(msg.gas);
    if (v45) {
        if (v45) {
            v28 = v46 = 10022;
            v30 = v47 = 32;
            if (32 <= RETURNDATASIZE()) {
                0x24d(v44, v47);
            }
        }
    }
    0x918(v37, v37);
    // Unknown jump to Block 0x26ba. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2672. Refer to 3-address code (TAC);
    if (v1 & v27 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        v37 = v48 = MEM[64];
        v49 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(uint112(MEM[v0 + 83])).gas(msg.gas);
        if (v49) {
            v40 = v50 = 106;
            if (v49) {
                v42 = v51 = 9992;
                require(v48 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v48;
            }
        }
    }
    return v1 + 106;
    v30 = RETURNDATASIZE();
    0x24d(v24, v30);
    require(v24 + v30 - v24 >= 32);
    // Unknown jump to Block ['0x20f70x25b1', '0x2726', '0x27a7']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2789. Refer to 3-address code (TAC);
    return v1 + v27;
}

function 0x26e() private { 
    v0 = new struct(6);
    require(!((v0 + 192 > uint64.max) | (v0 + 192 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x27d() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x28df(uint256 varg0, uint256 varg1) private { 
    v0 = varg1 + varg0;
    v1 = v2 = address(MEM[v0 + 41]);
    v1 = v3 = 10545;
    v4 = v5 = MEM[64];
    0x24d(v5, 100);
    v6 = v7, /* uint256 */ v8 = address(v2).approve(address(MEM[v0 + 21]), uint112(MEM[v0 + 55])).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v9 = 96;
    } else {
        v10 = 0x29c(RETURNDATASIZE());
        v9 = v11 = MEM[64];
        0x24d(v11, v10);
        MEM[v11] = RETURNDATASIZE();
        RETURNDATACOPY(v8, 0, RETURNDATASIZE());
    }
    if (v7) {
        v6 = v12 = !MEM[v9];
        if (bool(MEM[v9])) {
            require(v9 + MEM[v9] + 32 - (v9 + 32) >= 32);
            v6 = MEM[v9 + 32];
            require(!(v6 - bool(v6)));
        }
    }
    if (v6) {
        v6 = v13 = bool((address(v2)).code.size);
    }
    if (!v6) {
        v4 = MEM[64];
        MEM[v4 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v4 + 36] = address(MEM[v0 + 21]);
        MEM[v4 + 68] = 0;
        v14 = v15 = 100;
        MEM[v4] = 68;
        v14 = v16 = 16513;
        v14 = v17 = 16508;
        v1 = v18 = 16502;
        0x24d(v4, v15);
        require(!((v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        // Unknown jump to Block 0x29310x28df. Refer to 3-address code (TAC);
        0x4575(v1, v4);
        0x4575(v1, v4);
        // Unknown jump to Block 0x29310x28df. Refer to 3-address code (TAC);
        v19 = address(v1).call(MEM[v3fc70x4041V0x28df + 32:v3fc70x4041V0x28df + 32 + MEM[v3fc70x4041V0x28df]], MEM[0:0]).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            // Unknown jump to Block 0x29310x28df. Refer to 3-address code (TAC);
        } else {
            v20 = RETURNDATASIZE();
            // Unknown jump to Block 0x29310x28df. Refer to 3-address code (TAC);
        }
    }
    v21 = 0xcf5();
    v22 = 0x26e();
    v22.word0 = MEM[v0 + 135];
    v22.word1 = 0;
    v22.word2 = address(MEM[v0 + 41]);
    v22.word3 = address(MEM[v0 + 89]);
    v22.word4 = uint112(MEM[v0 + 69]);
    v22.word5 = v21;
    v23 = 0x27d();
    v23.word0 = this;
    v23.word1 = 0;
    v23.word2 = address(MEM[155 + v0]);
    v23.word3 = 0;
    v24 = 0xccb(block.timestamp);
    v25 = new uint256[](v22.word0);
    require(v22.word1 < 2, Panic(33)); // failed convertion to enum type
    MEM[v25.data] = v22.word1;
    v26 = 0;
    while (v26 < MEM[v22.word5]) {
        MEM[v26 + (MEM[64] + 4 + 416 + 32)] = MEM[v26 + (v22.word5 + 32)];
        v26 += 32;
    }
    MEM[MEM[v22.word5] + (MEM[64] + 4 + 416 + 32)] = 0;
    v27 = new uint256[](v24);
    v28, /* uint256 */ v29 = address(MEM[v0 + 21]).swap(v25, address(v23.word0), bool(v23.word1), address(v23.word2), bool(v23.word3), uint112(MEM[v0 + 103]), v24, v30, v30, address(v22.word2), address(v22.word3), v22.word4, v27, MEM[v22.word5]).gas(msg.gas);
    if (!v28) {
        v31 = RETURNDATASIZE();
        revert(v30, v30, v30, v30, v30, v30, v30, v30, v30, address(v22.word2), address(v22.word3));
    } else if (v28) {
        v32 = v33 = 32;
        if (32 > RETURNDATASIZE()) {
            v32 = RETURNDATASIZE();
            0x24d(MEM[64], v32);
        } else {
            0x24d(MEM[64], v33);
        }
        require(MEM[64] + v32 - MEM[64] >= 32);
        return varg1 + 155;
    } else {
        return varg1 + 155;
    }
}

function 0x29c(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    return 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0);
}

function 0x29e2(uint256 varg0, uint256 varg1) private { 
    v0 = varg1 + varg0;
    v1 = v2 = 10801;
    v1 = v3 = address(MEM[v0 + 41]);
    v4 = v5 = MEM[64];
    0x24d(v5, 100);
    v6 = v7, /* uint256 */ v8 = address(v3).approve(address(MEM[v0 + 21]), uint112(MEM[v0 + 55])).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v9 = 96;
    } else {
        v10 = 0x29c(RETURNDATASIZE());
        v9 = v11 = MEM[64];
        0x24d(v11, v10);
        MEM[v11] = RETURNDATASIZE();
        RETURNDATACOPY(v8, 0, RETURNDATASIZE());
    }
    if (v7) {
        v6 = v12 = !MEM[v9];
        if (bool(MEM[v9])) {
            require(v9 + MEM[v9] + 32 - (v9 + 32) >= 32);
            v6 = MEM[v9 + 32];
            require(!(v6 - bool(v6)));
        }
    }
    if (v6) {
        v6 = v13 = bool((address(v3)).code.size);
    }
    if (!v6) {
        v4 = MEM[64];
        MEM[v4 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v4 + 36] = address(MEM[v0 + 21]);
        MEM[v4 + 68] = 0;
        v14 = v15 = 100;
        MEM[v4] = 68;
        v14 = v16 = 16513;
        v14 = v17 = 16508;
        v1 = v18 = 16502;
        0x24d(v4, v15);
        require(!((v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        // Unknown jump to Block 0x2a310x29e2. Refer to 3-address code (TAC);
        0x4575(v1, v4);
        0x4575(v1, v4);
        // Unknown jump to Block 0x2a310x29e2. Refer to 3-address code (TAC);
        v19 = address(v1).call(MEM[v3fc70x4041V0x29e2 + 32:v3fc70x4041V0x29e2 + 32 + MEM[v3fc70x4041V0x29e2]], MEM[0:0]).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            // Unknown jump to Block 0x2a310x29e2. Refer to 3-address code (TAC);
        } else {
            v20 = RETURNDATASIZE();
            // Unknown jump to Block 0x2a310x29e2. Refer to 3-address code (TAC);
        }
    }
    v21 = 0xcf5();
    v22 = 0x26e();
    v22.word0 = MEM[v0 + 135];
    v22.word1 = 0;
    v22.word2 = address(MEM[v0 + 41]);
    v22.word3 = address(MEM[v0 + 89]);
    v22.word4 = uint112(MEM[v0 + 69]);
    v22.word5 = v21;
    v23 = 0x27d();
    v23.word0 = this;
    v23.word1 = 0;
    v23.word2 = this;
    v23.word3 = 0;
    v24 = 0xccb(block.timestamp);
    v25 = new uint256[](v22.word0);
    require(v22.word1 < 2, Panic(33)); // failed convertion to enum type
    MEM[v25.data] = v22.word1;
    v26 = 0;
    while (v26 < MEM[v22.word5]) {
        MEM[v26 + (MEM[64] + 4 + 416 + 32)] = MEM[v26 + (v22.word5 + 32)];
        v26 += 32;
    }
    MEM[MEM[v22.word5] + (MEM[64] + 4 + 416 + 32)] = 0;
    v27 = new uint256[](v24);
    v28, /* uint256 */ v29 = address(MEM[v0 + 21]).swap(v25, address(v23.word0), bool(v23.word1), address(v23.word2), bool(v23.word3), uint112(MEM[v0 + 103]), v24, v30, v30, address(v22.word2), address(v22.word3), v22.word4, v27, MEM[v22.word5]).gas(msg.gas);
    if (!v28) {
        v31 = RETURNDATASIZE();
        revert(v30, v30, v30, v30, v30, v30, v30, v30, v30, address(v22.word2), address(v22.word3));
    } else if (v28) {
        v32 = v33 = 32;
        if (32 > RETURNDATASIZE()) {
            v32 = RETURNDATASIZE();
            0x24d(MEM[64], v32);
        } else {
            0x24d(MEM[64], v33);
        }
        require(MEM[64] + v32 - MEM[64] >= 32);
        return varg1 + 135;
    } else {
        return varg1 + 135;
    }
}

function 0x2c9e() private { 
    v0 = new struct(6);
    require(!((v0 + 192 > uint64.max) | (v0 + 192 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    return v0;
}

function 0x2cde() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    return v0;
}

function 0x2dc4(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = varg0 + varg1;
    v0 = v3 = MEM[v2 + 21];
    v0 = v4 = MEM[v2 + 36];
    v0 = v5 = MEM[v2 + 50];
    v6 = 0x2c9e();
    v7 = 0x2c9e();
    v8 = varg0 + (varg1 + 64);
    v0 = v9 = new struct(6);
    require(!((v9 + 192 > uint64.max) | (v9 + 192 < v9)), Panic(65)); // failed memory allocation (too much memory)
    v9.word0 = address(MEM[v8 + 20]);
    v9.word1 = address(MEM[v8 + 40]);
    v9.word2 = address(MEM[v8 + 60]);
    v9.word3 = address(MEM[v8 + 80]);
    v9.word4 = uint24(MEM[v8 + 83]);
    v9.word5 = MEM[v8 + 115];
    v0 = v10 = varg1 + 64 + 115;
    v0 = v11 = 11941;
    v0 = v12 = MEM[varg0 + v10 + 1];
    v0 = v13 = 0x2cde();
    v0 = v14 = uint8(MEM[v2 + 22]) == 1;
    v13.word0 = v14;
    v0 = v15 = uint112.max;
    v16 = 0xf28(uint112(MEM[v2 + 64]));
    v0 = v17 = 32;
    v13.word1 = v16;
    if (0 == v14) {
        v13.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        // Unknown jump to Block 0x2e590x2dc4. Refer to 3-address code (TAC);
    } else {
        v13.word2 = address(0x1000276a4);
    }
    v0 = v18 = 11902;
    v0 = v19 = 11890;
    v20 = address(v9.word3);
    while (1) {
        v20 = address(v20);
        // Unknown jump to Block ['0x2e720x2dc4', '0x2e7e']. Refer to 3-address code (TAC);
    }
    v21 = 0xcf5();
    v22 = new uint256[](MEM[v21]);
    v23 = 0;
    while (v23 < MEM[v21]) {
        MEM[v23 + v22.data] = MEM[v23 + (v21 + 32)];
        v23 += 32;
    }
    MEM[MEM[v21] + v22.data] = 0;
    v24 = v20.swap(address(MEM[v0]), address(MEM[v0 + 32]), address(MEM[v0 + 64]), address(MEM[v0 + 96]), uint24(MEM[v0 + 128]), MEM[160 + v0], bool(MEM[v0]), MEM[v0 + 32], address(MEM[v0 + 64]), v22).gas(msg.gas);
    if (!v24) {
        v25 = RETURNDATASIZE();
        revert(v26, v26, v26, v26, v26, v26, v26, v26, v26, v22);
    } else {
        v27 = v28 = 0;
        if (v24) {
            if (v0 > RETURNDATASIZE()) {
                v0 = v29 = RETURNDATASIZE();
                0x24d(MEM[64], v29);
            } else {
                0x24d(MEM[64], v0);
            }
            require(MEM[64] + v0 - MEM[64] >= 32);
        }
        if (0 == int128(v27 >> 128) > 0) {
            v30 = v31 = uint128(v27);
        } else {
            v30 = v32 = uint128(v27 >> 128);
        }
        v33 = v30 < v0 & v0;
        require(!bool(v33), Error('p4_c_a'));
        if (!v0) {
            v34 = v35 = address(MEM[v0]);
        } else {
            v34 = address(MEM[v0 + v0]);
        }
        if (!v0) {
            v36 = v37 = address(MEM[v0 + v0]);
        } else {
            v36 = address(MEM[v0]);
        }
        if (uint8(v0) - 1) {
            0x414a(v34, v0, v30);
            0x4209(v36, v0, v0 & v0);
            return v0, v0 + 1, v10;
        } else {
            0x414a(v34, v0, v30);
            require(1 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        }
    }
}

function 0x3016() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    return v0;
}

function 0x30fe(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 + varg1;
    v1 = 0x3016();
    v2 = 0x3016();
    v3 = varg0 + (varg1 + 64);
    v4 = new struct(5);
    require(!((v4 + 160 > uint64.max) | (v4 + 160 < v4)), Panic(65)); // failed memory allocation (too much memory)
    v4.word0 = address(MEM[v3 + 20]);
    v4.word1 = address(MEM[v3 + 40]);
    v4.word2 = uint24(MEM[v3 + 43]);
    v4.word3 = int24(uint24(MEM[v3 + 46]));
    v4.word4 = address(MEM[v3 + 66]);
    v5 = v6 = 0x2cde();
    v6.word0 = uint8(MEM[v0 + 22]) == 1;
    v7 = 0xf28(uint112(MEM[v0 + 64]));
    v8 = v9 = 32;
    v6.word1 = v7;
    if (0 == (uint8(MEM[v0 + 22]) == 1)) {
        v6.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        // Unknown jump to Block 0x3185. Refer to 3-address code (TAC);
    } else {
        v6.word2 = 0x1000276a4;
    }
    v10 = 0xcf5();
    v11 = new uint256[](MEM[v10]);
    v12 = 0;
    while (v12 < MEM[v10]) {
        MEM[v12 + v11.data] = MEM[v12 + (v10 + 32)];
        v12 += 32;
    }
    MEM[MEM[v10] + v11.data] = 0;
    v13, /* uint256 */ v14 = address(MEM[v0 + 21]).swap(address(v4.word0), address(v4.word1), uint24(v4.word2), int24(v4.word3), address(v4.word4), bool(MEM[v5]), MEM[v5 + 32], address(MEM[v5 + 64]), v11).gas(msg.gas);
    if (!v13) {
        v15 = RETURNDATASIZE();
        revert(v16, v16, v16, v16, v16, v16, v16, v16, v16, MEM[v10]);
    } else {
        v14 = v17 = 0;
        if (v13) {
            if (v9 > RETURNDATASIZE()) {
                v8 = RETURNDATASIZE();
                0x24d(MEM[64], v8);
            } else {
                0x24d(MEM[64], v9);
            }
            require(MEM[64] + v8 - MEM[64] >= 32);
        }
        if (0 == int128(v14 >> 128) > 0) {
            v18 = v19 = uint128(v14);
        } else {
            v18 = v20 = uint128(v14 >> 128);
        }
        require(v18 >= uint112(MEM[v0 + 50]), Error('w4_c_a'));
        if (uint8(MEM[v0 + 22]) != 1) {
            v21 = v22 = address(v4.word0);
        } else {
            v21 = address(v4.word1);
        }
        if (uint8(MEM[v0 + 22]) != 1) {
            v23 = v24 = address(v4.word1);
        } else {
            v23 = address(v4.word0);
        }
        if (uint8(MEM[varg0 + (varg1 + 64 + 66) + 1]) - 1) {
            0x414a(v21, MEM[v0 + 21], v18);
            0x4209(v23, MEM[v0 + 21], uint112(MEM[v0 + 36]));
            return 0, varg1 + 64 + 66 + 1;
        } else {
            0x414a(v21, MEM[v0 + 21], v18);
            require(1 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        }
    }
}

function 0x3353(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = varg0 + varg1;
    v3 = v4 = MEM[v2 + 21];
    STORAGE[address(v4)] = 1;
    if (uint8(MEM[v2 + 51]) == 1) {
        v0 = v5 = 1;
    }
    v6 = v7 = 0;
    v8 = v9 = 64;
    if (v7 == (uint8(MEM[v2 + 22]) == 1)) {
        v10 = MEM[v9];
        MEM[v10] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v10 + 4] = address(this);
        MEM[v10 + 4 + 32] = uint8(MEM[v2 + 22]) == 1;
        MEM[v10 + 4 + 64] = uint112(MEM[v2 + 50]);
        MEM[v10 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        MEM[v10 + 4 + 128] = 160;
        MEM[v10 + 4 + 160] = MEM[varg0];
        v11 = 0;
        while (v11 < MEM[varg0]) {
            MEM[v11 + (v10 + 4 + 160 + 32)] = MEM[v11 + (varg0 + 32)];
            v11 += 32;
        }
        MEM[MEM[varg0] + (v10 + 4 + 160 + 32)] = 0;
        v12 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[varg0]) + (v10 + 4 + 160) + 32;
        // Unknown jump to Block 0x33c9. Refer to 3-address code (TAC);
    } else {
        v10 = v13 = MEM[v9];
        MEM[v13] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 4] = address(this);
        MEM[v13 + 4 + 32] = uint8(MEM[v2 + 22]) == 1;
        MEM[v13 + 4 + 64] = uint112(MEM[v2 + 50]);
        MEM[v13 + 4 + 96] = address(0x1000276a4);
        MEM[v13 + 4 + 128] = 160;
        MEM[v13 + 4 + 160] = MEM[varg0];
        v14 = 0;
        while (v14 < MEM[varg0]) {
            MEM[v14 + (v13 + 4 + 160 + 32)] = MEM[v14 + (varg0 + 32)];
            v14 += 32;
        }
        MEM[MEM[varg0] + (v13 + 4 + 160 + 32)] = 0;
        v12 = v15 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[varg0]) + (v13 + 4 + 160) + 32;
    }
    v16 = address(v3).call(MEM[v33acV0x33ea:v33acV0x33ea + v87bV0x323b0x33aaV0x33ea - v33acV0x33ea], MEM[v33acV0x33ea:v33acV0x33ea + v33c9_0x6]).value(v6).gas(msg.gas);
    require(v16, MEM[64], RETURNDATASIZE());
    if (v16) {
        v17 = v18 = 64;
        if (64 > RETURNDATASIZE()) {
            v17 = RETURNDATASIZE();
            0x24d(v10, v17);
        } else {
            0x24d(v10, v18);
        }
        require(v10 + v17 - v10 >= 64);
        return v0, varg1 + 51;
    } else {
        return v0, varg1 + 51;
    }
}

function 0x34b6(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = varg0 + varg1;
    v3 = v4 = MEM[v2 + 21];
    STORAGE[address(v4)] = 1;
    if (uint8(MEM[v2 + 85]) == 1) {
        v0 = v5 = 1;
    }
    v6 = v7 = 0;
    v8 = v9 = 64;
    if (v7 == (uint8(MEM[v2 + 22]) == 1)) {
        v10 = MEM[v9];
        MEM[v10] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v10 + 4] = address(this);
        MEM[v10 + 4 + 32] = uint8(MEM[v2 + 22]) == 1;
        MEM[v10 + 4 + 64] = uint112(MEM[v2 + 84]);
        MEM[v10 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        MEM[v10 + 4 + 128] = 160;
        MEM[v10 + 4 + 160] = MEM[varg0];
        v11 = 0;
        while (v11 < MEM[varg0]) {
            MEM[v11 + (v10 + 4 + 160 + 32)] = MEM[v11 + (varg0 + 32)];
            v11 += 32;
        }
        MEM[MEM[varg0] + (v10 + 4 + 160 + 32)] = 0;
        v12 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[varg0]) + (v10 + 4 + 160) + 32;
        // Unknown jump to Block 0x352b. Refer to 3-address code (TAC);
    } else {
        v10 = v13 = MEM[v9];
        MEM[v13] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 4] = address(this);
        MEM[v13 + 4 + 32] = uint8(MEM[v2 + 22]) == 1;
        MEM[v13 + 4 + 64] = uint112(MEM[v2 + 84]);
        MEM[v13 + 4 + 96] = address(0x1000276a4);
        MEM[v13 + 4 + 128] = 160;
        MEM[v13 + 4 + 160] = MEM[varg0];
        v14 = 0;
        while (v14 < MEM[varg0]) {
            MEM[v14 + (v13 + 4 + 160 + 32)] = MEM[v14 + (varg0 + 32)];
            v14 += 32;
        }
        MEM[MEM[varg0] + (v13 + 4 + 160 + 32)] = 0;
        v12 = v15 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[varg0]) + (v13 + 4 + 160) + 32;
    }
    v16 = address(v3).call(MEM[v33acV0x354c:v33acV0x354c + v87bV0x323b0x33aaV0x354c - v33acV0x354c], MEM[v33acV0x354c:v33acV0x354c + v352b_0x6]).value(v6).gas(msg.gas);
    require(v16, MEM[64], RETURNDATASIZE());
    if (v16) {
        v17 = v18 = 64;
        if (64 > RETURNDATASIZE()) {
            v17 = RETURNDATASIZE();
            0x24d(v10, v17);
        } else {
            0x24d(v10, v18);
        }
        require(v10 + v17 - v10 >= 64);
        return v0, varg1 + 85;
    } else {
        return v0, varg1 + 85;
    }
}

function 0x36ba() private { 
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0, msg.data.length, 64);
    return v0;
}

function 0x414a(uint256 varg0, address varg1, uint256 varg2) private { 
    require(varg1.code.size);
    v0 = v1 = MEM[64];
    v2 = varg1.take(address(varg0), this, varg2).gas(msg.gas);
    if (v2) {
        if (v2) {
            v3 = v4 = 16899;
            require(v1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1;
        }
        if (!address(v5)) {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            v0 = v6 = MEM[64];
            v7 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg2).gas(msg.gas);
            if (v7) {
                if (v7) {
                    v3 = v8 = 635;
                    require(v6 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v6;
                } else {
                    return ;
                }
            }
        } else {
            return ;
        }
        0x918(v0, v0);
        return ;
        // Unknown jump to Block 0x419e. Refer to 3-address code (TAC);
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x4209(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = uint160.max;
    v2 = v3 = address(varg1);
    require(v3.code.size);
    v4 = v5 = MEM[64];
    v6 = v3.sync(address(varg0)).gas(msg.gas);
    if (v6) {
        if (v6) {
            v7 = v8 = 17200;
            require(v5 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v5;
        }
        if (v2 & v0) {
            0x115e(v2 & v0, varg2, varg2);
            v9 = v10 = MEM[64];
            v11 = v2.settle().gas(msg.gas);
            if (v11) {
                if (!v11) {
                    return ;
                }
            }
        } else {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            v4 = v12 = MEM[64];
            v13 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg2).gas(msg.gas);
            if (v13) {
                v0 = v14 = 32;
                if (v13) {
                    v7 = v15 = 17132;
                    require(v12 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v12;
                }
            }
        }
        v9 = v16 = MEM[64];
        v17 = v2.settle().value(varg2).gas(msg.gas);
        if (v17) {
            if (!v17) {
                return ;
            }
        }
        v18 = v19 = 32;
        if (32 > RETURNDATASIZE()) {
            v18 = RETURNDATASIZE();
            0x24d(v9, v18);
        } else {
            0x24d(v9, v19);
        }
        require(v9 + v18 - v9 >= 32);
        return ;
        0x918(v4, v4);
        // Unknown jump to Block 0x42a4. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x424d. Refer to 3-address code (TAC);
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x43db(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(v0 + 31 < varg1);
    v1 = 0x160a(MEM[v0]);
    0x24d(MEM[64], v1);
    MEM[MEM[64]] = MEM[v0];
    v2 = v3 = MEM[64] + 32;
    require(v0 + (MEM[v0] << 5) + 32 <= varg1);
    v4 = v5 = 32 + v0;
    while (v4 < v0 + (MEM[v0] << 5) + 32) {
        MEM[v2] = MEM[v4];
        v4 += 32;
        v2 += 32;
    }
    return MEM[64];
}

function 0x44bf(address varg0, address varg1, address varg2, address varg3, uint256 varg4, uint256 varg5) private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 2;
    CALLDATACOPY(v0.data, msg.data.length, 64);
    if (v0.word0.length) {
        v1 = v2 = varg0;
        v0.word1 = v2;
        if (1 < v0.word0.length) {
            v0.word2 = varg1;
            v1 = v3 = 17695;
            v4 = v5 = MEM[64];
            0x24d(v5, 100);
            v6 = v7, /* uint256 */ v8 = address(v2).approve(varg2, varg4).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v9 = 96;
            } else {
                v10 = 0x29c(RETURNDATASIZE());
                v9 = v11 = MEM[64];
                0x24d(v11, v10);
                MEM[v11] = RETURNDATASIZE();
                RETURNDATACOPY(v8, 0, RETURNDATASIZE());
            }
            if (v7) {
                v6 = v12 = !MEM[v9];
                if (bool(MEM[v9])) {
                    require(v9 + MEM[v9] + 32 - (v9 + 32) >= 32);
                    v6 = MEM[v9 + 32];
                    require(!(v6 - bool(v6)));
                }
            }
            if (v6) {
                v6 = v13 = bool((address(v2)).code.size);
            }
            if (!v6) {
                v4 = MEM[64];
                MEM[v4 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                MEM[v4 + 36] = varg2;
                MEM[v4 + 68] = 0;
                v14 = v15 = 100;
                MEM[v4] = 68;
                v14 = v16 = 16513;
                v14 = v17 = 16508;
                v1 = v18 = 16502;
                0x24d(v4, v15);
                require(!((v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
                // Unknown jump to Block 0x451f. Refer to 3-address code (TAC);
                0x4575(v1, v4);
                0x4575(v1, v4);
                // Unknown jump to Block 0x451f. Refer to 3-address code (TAC);
                v19 = address(v1).call(MEM[v3fc70x4041V0x44ff + 32:v3fc70x4041V0x44ff + 32 + MEM[v3fc70x4041V0x44ff]], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    // Unknown jump to Block 0x451f. Refer to 3-address code (TAC);
                } else {
                    v20 = RETURNDATASIZE();
                    // Unknown jump to Block 0x451f. Refer to 3-address code (TAC);
                }
            }
            v21 = 0xcd9(block.timestamp);
            v22 = v23 = MEM[64];
            v24 = new address[](v0.word0.length);
            v25 = v26 = v24.data;
            v27 = v28 = v0.data;
            v29 = v30 = 0;
            while (v29 < v0.word0.length) {
                MEM[v25] = address(MEM[v27]);
                v25 += 32;
                v27 += 32;
                v29 += 1;
            }
            v31 = varg2.swapExactTokensForTokens(varg4, varg5, v24, varg3, v21, v32, v2).gas(msg.gas);
            require(v31, MEM[64], RETURNDATASIZE());
            if (v31) {
                RETURNDATACOPY(v23, 0, RETURNDATASIZE());
                0x24d(v23, RETURNDATASIZE());
                v33 = v34 = v23 + RETURNDATASIZE();
                v22 = v35 = 0x43db(v23, v34);
                return ;
                require(v33 - v22 >= 32);
                require(MEM[v22] <= uint64.max);
                require(v22 + MEM[v22] + 31 < v33);
            } else {
                return ;
            }
        }
    }
    revert(Panic(50));
}

function 0x4575(address varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.call(MEM[v4575arg0x1 + 32:v4575arg0x1 + 32 + MEM[v4575arg0x1]], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v2 = v3 = 96;
    } else {
        v4 = 0x29c(RETURNDATASIZE());
        v2 = v5 = MEM[64];
        0x24d(v5, v4);
        MEM[v5] = RETURNDATASIZE();
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    if (v0) {
        v6 = v7 = !MEM[v2];
        if (v7) {
            v6 = v8 = !varg0.code.size;
        }
        require(!v6, AddressEmptyCode(varg0));
        v9 = v10 = bool(MEM[v2]);
        if (v10) {
            require(v2 + MEM[v2] + 32 - (v2 + 32) >= 32);
            require(!(MEM[v2 + 32] - bool(MEM[v2 + 32])));
            v9 = v11 = !MEM[v2 + 32];
        }
        require(!v9, SafeERC20FailedOperation(varg0));
        return ;
    } else {
        require(!MEM[v2], 32 + v2, MEM[v2]);
        revert(FailedInnerCall());
    }
}

function 0x918(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 0);
    return ;
}

function 0xb3a(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0xc9c(uint256 varg0) private { 
    require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1;
}

function 0xcaf(uint256 varg0) private { 
    require(varg0 <= varg0 + 31, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 31;
}

function 0xcbd(uint256 varg0) private { 
    require(4 <= 4 + varg0, Panic(17)); // arithmetic overflow or underflow
    return 4 + varg0;
}

function 0xccb(uint256 varg0) private { 
    require(varg0 <= varg0 + 24, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 24;
}

function 0xcd9(uint256 varg0) private { 
    require(varg0 <= varg0 + 3000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 3000;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0xcf5() private { 
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + 32;
    MEM[MEM[64]] = 0;
    CALLDATACOPY(0, msg.data.length, 0);
    return MEM[64];
}

function 0xdb3(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0x1213(msg.sender);
    if (!v1) {
        v0 = v2 = 0xac97c523aa35289902ea3c39b6998c428a01b111 == msg.sender;
    }
    require(v0, Error('w_c83'));
    if ((msg.data[1] >> 248) - uint8.max) {
        require(!(uint8(block.timestamp % 100) - (msg.data[1] >> 248)), Error('w_t44'));
    }
    if ((msg.data[2] >> 248) - 10) {
        require(uint8(block.number % 100) == msg.data[2] >> 248, Error('w_b77'));
    }
    require(3 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v3 = 0x160a(uint8(bytes1(msg.data[3]) >> 248));
    v4 = MEM[64];
    0x24d(v4, v3);
    v5 = 0x160a(uint8(bytes1(msg.data[3]) >> 248));
    CALLDATACOPY(v4 + 32, msg.data.length, v5 - 32);
    v6 = v7 = 0;
    while (v6 < uint8(bytes1(msg.data[3]) >> 248)) {
        v8 = 0x1653(v6);
        v9 = 0xcbd(v8);
        require(v6 < uint8(bytes1(msg.data[3]) >> 248), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[(v6 << 5) + v4 + 32] = address(msg.data[v9] >> 96);
        v10 = 0x1f2e(msg.data[v9] >> 96);
        if ((msg.data[v9 + 20] >> 248) - 1) {
            v11 = v12 = _SafeAdd(v10, msg.data[v9 + 21] >> 144);
        } else {
            v11 = v13 = _SafeSub(v10, msg.data[v9 + 21] >> 144);
        }
        STORAGE[msg.data[v9] >> 96] = v11;
        v6 = v6 + 1;
    }
    varg1 = v14 = uint8(bytes1(msg.data[3]) >> 248) * 35;
    v15 = v16 = 4;
    v17 = v18 = 3588;
    v19 = 0x29c(msg.data.length);
    0x24d(MEM[64], v19);
    require(msg.data.length <= msg.data.length);
    CALLDATACOPY(MEM[64] + 32, 0, msg.data.length);
    MEM[MEM[64] + msg.data.length + 32] = 0;
    if (4 + v14 <= 4 + v14 + 1) {
        require(msg.data.length >= 4 + v14 + 1, Error('toUint8_outOfBounds'));
        v20 = v21 = MEM[1 + (4 + v14 + MEM[64])];
        while (1) {
            revert(Panic(17));
            // Unknown jump to Block ['0xe04', '0xe9c']. Refer to 3-address code (TAC);
            varg2 = v22 = 5;
            varg0 = v23 = 1;
            v4 = v24 = varg1 + (uint8(v20) << 1) + 5;
            v25 = v26 = 0;
            if (v25 < uint8(v20)) {
                v27 = varg1 + (v25 << v23) + varg2;
                v28 = 0x29c(msg.data.length);
                0x24d(MEM[64], v28);
                require(msg.data.length <= msg.data.length);
                CALLDATACOPY(MEM[64] + 32, 0, msg.data.length);
                MEM[MEM[64] + msg.data.length + 32] = 0;
                if (v27 <= v27 + 2) {
                    require(msg.data.length >= v27 + 2, Error('toUint16_outOfBounds'));
                    v15 = v29 = uint16(MEM[2 + (v27 + MEM[64])]);
                    v30 = 0x29c(msg.data.length);
                    0x24d(MEM[64], v30);
                    require(msg.data.length <= msg.data.length);
                    CALLDATACOPY(MEM[64] + 32, 0, msg.data.length);
                    MEM[MEM[64] + msg.data.length + 32] = 0;
                    v31 = 0xcaf(v29);
                    require(v31 >= v29, Error('slice_overflow'));
                    v32 = _SafeAdd(v4, v29);
                    require(v32 <= msg.data.length, Error('slice_outOfBounds'));
                    if (v29) {
                        varg1 = v33 = MEM[64];
                        v34 = v35 = v33 + (v29 & 0x1f) + (!(v29 & 0x1f) << 5);
                        v36 = v37 = MEM[64] + (v29 & 0x1f) + (!(v29 & 0x1f) << 5) + v4;
                        while (v34 < v35 + v29) {
                            MEM[v34] = MEM[v36];
                            v34 = v34 + 32;
                            v36 = v36 + 32;
                        }
                        MEM[v33] = v29;
                        MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v34;
                    } else {
                        varg1 = v38 = MEM[64];
                        MEM[v38] = 0;
                        MEM[64] = v38 + 32;
                    }
                    v17 = v39 = 3740;
                    require(MEM[varg1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v20 = bytes1(MEM[32 + varg1]) >> 248;
                }
            } else {
                0x19a8(v4);
                if (msg.data[v4] >> 248) {
                    if (msg.data[v4 + 1] >> 248 == 1) {
                        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                        v40 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint112(msg.data[v4 + 2] >> 144)).gas(msg.gas);
                        if (v40) {
                            if (v40) {
                                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                0x918(MEM[64], MEM[64]);
                            }
                        }
                    }
                    if (msg.data[v4] >> 248 == 1) {
                        v41 = v42 = 0;
                        if (!(msg.data[v4 + 2] >> 144)) {
                            v41 = v43 = 2300;
                        }
                        v44 = block.coinbase.call().value(msg.data[v4 + 2] >> 144).gas(v41);
                        if (v44) {
                        }
                    } else if (msg.data[v4] >> 248 == 7) {
                        v45 = v46 = 0;
                        if (!(msg.data[v4 + 2] >> 144)) {
                            v45 = v47 = 2300;
                        }
                        v48 = (msg.data[v4 + 16] >> 96).call().value(msg.data[v4 + 2] >> 144).gas(v45);
                        if (v48) {
                        }
                    } else if (msg.data[v4] >> 248 == 4) {
                        v49 = v50 = 0;
                        if (!(msg.data[v4 + 56] >> 144)) {
                            v49 = v51 = 2300;
                        }
                        v52 = (msg.data[v4 + 16] >> 96).call().value(msg.data[v4 + 56] >> 144).gas(v49);
                        if (v52) {
                            v53 = v54 = 0;
                            if (!(msg.data[v4 + 70] >> 144)) {
                                v53 = v55 = 2300;
                            }
                            v56 = (msg.data[36 + v4] >> 96).call().value(msg.data[v4 + 70] >> 144).gas(v53);
                            if (v56) {
                            }
                        }
                    }
                    revert(MEM[64], RETURNDATASIZE());
                }
                return ;
            }
            if (uint8(v20)) {
                if (0 == (uint8(v20) == varg0)) {
                    v57 = MEM[64] + v15;
                    MEM[v57] = 32;
                    MEM[v57 + 32] = 2;
                    MEM[v57 + 64] = 0x4c55000000000000000000000000000000000000000000000000000000000000;
                    revert(Error());
                } else {
                    0x1901(varg1);
                }
            } else {
                _lockAcquired = keccak256(MEM[vdb3arg0x1 + 32:vdb3arg0x1 + 32 + MEM[vdb3arg0x1]]);
                0x14d2(varg1, 0);
            }
            v4 = v4 + v15;
            v25 = v25 + varg0;
            // Unknown jump to Block 0xe18. Refer to 3-address code (TAC);
        }
    }
}

function 0xf28(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0xf6a(uint256 varg0, uint256 varg1, bytes varg2) private { 
    require(1 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = MEM[varg2 + 33] >> 248;
    require(1 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM8[33 + varg2] = 0x0 & 0xFF;
    v1 = varg2.length;
    v2 = varg2.data;
    require(!(keccak256(varg2) - _lockAcquired), Error('cszgb'));
    if (varg0 >= 0) {
        v3 = v4 = 0xf28(varg1);
    } else {
        v3 = v5 = 0xf28(varg0);
    }
    v6 = 0x1b8e(varg2, v0, 4016);
    require(v6 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v7 = v8 = 0;
    if (uint8(bytes1(MEM[32 + (v6 + v0)]) >> 248) - 19) {
        if (uint8(bytes1(MEM[32 + (v6 + v0)]) >> 248) - 20) {
            if (uint8(bytes1(MEM[32 + (v6 + v0)]) >> 248) - 21) {
                require(!(22 - uint8(bytes1(MEM[32 + (v6 + v0)]) >> 248)), Error('exec3p'));
                v9 = v10 = MEM[v0 + v6 + 21];
                v11 = v12, v13 = v14, v15 = v16, v17 = v18, v19 = v20, v21 = v22, v23 = v24 = 0xffd(varg2, 4111, MEM[v0 + v6 + 71], uint8.max, 1, v0, v25, 0);
            } else {
                v9 = v26 = MEM[v0 + v6 + 21];
                v11 = v27, v13 = v28, v15 = v29, v17 = v30, v19 = v31, v21 = v32, v23 = v33 = 0xffd(varg2, 4111, MEM[v0 + v6 + 51], uint8.max, 1, v0, v25, 0);
            }
        } else {
            v9 = v34 = MEM[v0 + v6 + 21];
            v7 = v35 = MEM[v0 + v6 + 36];
            v7 = v36 = MEM[v0 + v6 + 70];
            v11 = v37, v13 = v38, v15 = v39, v17 = v40, v19 = v41, v21 = v42, v23 = v43 = 0xffd(varg2, 4111, MEM[v0 + v6 + 105], uint8.max, 1, v0, v25, 1);
        }
    } else {
        v9 = v44 = MEM[v0 + v6 + 21];
        v7 = v45 = MEM[v0 + v6 + 36];
        v7 = v46 = MEM[v0 + v6 + 70];
        v11 = v47, v13 = v48, v15 = v49, v17 = v50, v19 = v51, v21 = v52, v23 = v53 = 0xffd(varg2, 4111, MEM[v0 + v6 + 85], uint8.max, 1, v0, v25, 1);
    }
    if (v11 & v13 == v15) {
        v54 = 0xc9c(v19);
        0x14d2(v17, v54);
    }
    if (v21) {
        0x115e(v7, v9, v7 & v23);
    }
    return;
}

function 0xffd(bytes varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    require(uint112(v0) <= varg0, Error(0x64336f6e));
    return varg2, varg3, varg4, varg5, varg6, varg7, uint112.max;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x90b93dc == function_selector >> 224) {
            elkDexV3SwapCallback(int256,int256,bytes);
        } else {
            if (0x10d1e85c != function_selector >> 224) {
                if (0x1ac5336d != function_selector >> 224) {
                    if (0x1c22ccb5 != function_selector >> 224) {
                        if (0x23a69e75 != function_selector >> 224) {
                            if (0x23cffbe9 == function_selector >> 224) {
                                0x23cffbe9();
                            } else if (0x2c8958f6 != function_selector >> 224) {
                                if (0x350f0558 == function_selector >> 224) {
                                    0x350f0558();
                                } else if (0x49907c7a == function_selector >> 224) {
                                    0x49907c7a();
                                } else if (0x5b3bc4fe != function_selector >> 224) {
                                    if (0x73f75faa != function_selector >> 224) {
                                        if (0x84800812 != function_selector >> 224) {
                                            if (0x91dd7346 != function_selector >> 224) {
                                                if (0x92eeafbe != function_selector >> 224) {
                                                    if (0xab6291fe != function_selector >> 224) {
                                                        if (0xad5c4648 == function_selector >> 224) {
                                                            WETH();
                                                        } else if (0xb2ff9f26 != function_selector >> 224) {
                                                            if (0xb6d3f3f0 != function_selector >> 224) {
                                                                if (0xc4e21d86 != function_selector >> 224) {
                                                                    if (0xc651d0ef != function_selector >> 224) {
                                                                        if (0xe0154ff0 != function_selector >> 224) {
                                                                            if (0xf3a1d1bd == function_selector >> 224) {
                                                                                0xf3a1d1bd();
                                                                            } else if (0xf40a74a8 != function_selector >> 224) {
                                                                                if (0xfa461e33 != function_selector >> 224) {
                                                                                }
                                                                            }
                                                                        }
                                                                        nineMMV3SwapCallback(int256,int256,bytes);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            lockAcquired(bytes);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            swapV2Call(address,uint256,uint256,bytes);
        }
    }
    if (msg.data.length) {
        0xdb3(28);
    }
}
