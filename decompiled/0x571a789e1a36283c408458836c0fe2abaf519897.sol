// Decompiled by library.dedaub.com
// 2025.12.17 23:24 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) mapping_0; // STORAGE[0x0]
uint256 stor_6; // STORAGE[0x6]
address _disperse; // STORAGE[0x1] bytes 0 to 19
address _universalRouter; // STORAGE[0x2] bytes 0 to 19
address _poolManager; // STORAGE[0x3] bytes 0 to 19
address stor_4_0_19; // STORAGE[0x4] bytes 0 to 19
address _algebraSwapCallback; // STORAGE[0x5] bytes 0 to 19


// Events
Deposited(address, uint256, bool);
Withdrawn(address, uint256);
RouterUpdated(address);
OperatorUpdated(address, bool);

function 0xa86c7383(address varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192, MEM[128], MEM[128]);
    require(varg4 <= uint64.max, MEM[128], MEM[128]);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max);
    require((varg4.length << 5) + (4 + varg4) + 32 <= msg.data.length);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = v4 = MEM[128];
        if (!varg4.length) {
            MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else if (!varg2) {
            MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            v5 = v6 = MEM[128];
            v7, /* address */ v8 = varg0.token0().gas(msg.gas);
            require(v7, MEM[64], RETURNDATASIZE());
            v8 = v9 = MEM[128];
            if (v7) {
                v10 = v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    v10 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v10 - MEM[64] >= 32);
                require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
            }
            v12 = v13 = MEM[128];
            while (v12 < varg4.length) {
                v14 = 0x3d81(varg4.data, varg4.length, v12);
                require(!(msg.data[v14] - address(msg.data[v14])));
                v15, /* uint112 */ v16, /* uint112 */ v16, /* uint32 */ v17 = varg0.getReserves().gas(msg.gas);
                require(v15, MEM[64], RETURNDATASIZE());
                v16 = v18 = MEM[128];
                if (v15) {
                    v19 = v20 = 96;
                    if (v20 > RETURNDATASIZE()) {
                        v19 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v19 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v16 - uint112(v16)));
                    require(!(v17 - uint32(v17)));
                }
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v8)) {
                    v21 = v22 = uint112(v16);
                    v23 = v24 = _SafeMul(uint112(v16), varg2);
                } else {
                    v21 = v25 = uint112(v16);
                    v23 = v26 = _SafeMul(uint112(v16), varg2);
                }
                if (!(!v23 | (1000 == v23 * 1000 / v23))) {
                    MEM[MEM[128]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    MEM[4] = 17;
                    revert(MEM[128], 36);
                } else {
                    v27 = _SafeSub(v21, varg2);
                    if (!(!v27 | (997 == v27 * 997 / v27))) {
                        MEM[MEM[128]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                        MEM[4] = 17;
                        revert(MEM[128], 36);
                    } else {
                        v28 = _SafeDiv(v23 * 1000, v27 * 997);
                        if (v28 > v28 + 1) {
                            MEM[MEM[128]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                            MEM[4] = 17;
                            revert(MEM[128], 36);
                        } else {
                            v29, v30 = varg1.balanceOf(address(msg.data[v14])).gas(msg.gas);
                            require(v29, MEM[64], RETURNDATASIZE());
                            v30 = v31 = MEM[128];
                            if (v29) {
                                v32 = v33 = 32;
                                if (v33 > RETURNDATASIZE()) {
                                    v32 = v34 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v32 - MEM[64] >= 32);
                            }
                            0x51d3(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, v28 + 1);
                            v35 = 0x5c49(varg0, msg.data[v14]);
                            v36, v37 = varg1.balanceOf(address(msg.data[v14])).gas(msg.gas);
                            require(v36, MEM[64], RETURNDATASIZE());
                            v37 = v38 = MEM[128];
                            if (v36) {
                                v39 = v40 = 32;
                                if (v40 > RETURNDATASIZE()) {
                                    v39 = v41 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v39 - MEM[64] >= 32);
                            }
                            v42 = _SafeSub(v37, v30);
                            if (v42 < varg2) {
                                MEM[MEM[128]] = 0xa0927dc300000000000000000000000000000000000000000000000000000000;
                                revert(MEM[128], 4);
                            } else {
                                v5 = _SafeAdd(v5, v28 + 1);
                                if (v5 > varg3) {
                                    MEM[MEM[128]] = 0x8199f5f300000000000000000000000000000000000000000000000000000000;
                                    revert(MEM[128], 4);
                                } else {
                                    v3 = _SafeAdd(v3, varg2);
                                    v12 = v12 + 1;
                                }
                            }
                        }
                    }
                }
            }
            if (varg5) {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                v43 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg5).value(MEM[128]).gas(msg.gas);
                require(v43, MEM[64], RETURNDATASIZE());
                if (v43) {
                    require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!MEM[128], MEM[128], MEM[128]);
                }
                v44 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg5).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v45 = v46 = new bytes[](RETURNDATASIZE());
                    require(!((v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v46 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v46)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v46.data, 0, RETURNDATASIZE());
                }
                if (!v44) {
                    MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg5);
                }
            }
            emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(varg1, v5, v3, varg4.length, varg5, MEM[128]);
            return v3;
        }
    }
}

function 0xa6e5e869(address varg0, address varg1, address varg2, address varg3, address varg4, address varg5, address varg6, address varg7, address varg8) public nonPayable { 
    require(msg.data.length - 4 >= 288, MEM[128], MEM[128]);
    require(160 <= msg.data.length - 4, MEM[128], MEM[128]);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!varg5) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!stor_4_0_19) {
        MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = _SafeAdd(varg5, varg8);
        v4, v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v4, MEM[64], RETURNDATASIZE());
        v5 = v6 = MEM[128];
        if (v4) {
            v7 = v8 = 32;
            if (32 > RETURNDATASIZE()) {
                v7 = v9 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v7 - MEM[64] >= 32);
        }
        if (v5 < v3) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            v10 = v11 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            v12 = v13 = varg0;
            v14 = v15 = varg0 != v13;
            require(!v15);
            v16 = v17 = 0;
            v18 = v19 = v13 == v11;
            if (v13 != v11) {
                v18 = v20 = !v13;
            }
            v21 = 0x60000;
            MEM[v21 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v21 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!((v21 + 64 > uint64.max) | (v21 + 64 < v21)), Panic(65)); // failed memory allocation (too much memory)
            v22 = new struct(4);
            require(!((v22 + 128 > uint64.max) | (v22 + 128 < v22)), Panic(65)); // failed memory allocation (too much memory)
            v22.word0 = 3;
            v23 = v24 = 0;
            while (v23 < 96) {
                MEM[v22 + v23 + 32] = 96;
                v23 = v23 + 32;
            }
            v25 = new struct(5);
            require(!((v25 + 160 > uint64.max) | (v25 + 160 < v25)), Panic(65)); // failed memory allocation (too much memory)
            v26 = v27 = 4;
            require(msg.data.length - v27 >= 160);
            v28 = new struct(5);
            require(!((v28 + 160 > uint64.max) | (v28 + 160 < v28)), Panic(65)); // failed memory allocation (too much memory)
            v28.word0 = varg0;
            v28.word1 = varg1;
            require(!(varg2 - uint24(varg2)));
            v28.word2 = varg2;
            require(!(int24(varg3) - varg3));
            v28.word3 = varg3;
            v28.word4 = varg4;
            v25.word0 = v28;
            v25.word1 = bool(v18);
            v25.word2 = uint128(varg5);
            v25.word3 = uint128(varg6);
            v29 = v30 = 32;
            v31 = new struct(1);
            require(!((v31 + 32 > uint64.max) | (v31 + 32 < v31)), Panic(65)); // failed memory allocation (too much memory)
            v31.word0 = 0;
            v25.word4 = v31;
            MEM[MEM[64] + v30] = v30;
            MEM[MEM[64] + 64] = address(MEM[v25.word0]);
            MEM[MEM[64] + 64 + 32] = address(MEM[v25.word0 + 32]);
            MEM[MEM[64] + 64 + 64] = uint24(MEM[v25.word0 + 64]);
            MEM[MEM[64] + 64 + 96] = int24(MEM[v25.word0 + 96]);
            MEM[MEM[64] + 64 + 128] = address(MEM[128 + v25.word0]);
            MEM[MEM[64] + 64 + 160] = bool(v25.word1);
            MEM[MEM[64] + 64 + 192] = uint128(v25.word2);
            MEM[MEM[64] + 64 + 224] = uint128(v25.word3);
            MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
            MEM[MEM[64] + 64 + 288] = MEM[v25.word4];
            MCOPY(MEM[64] + 64 + 288 + 32, 32 + v25.word4, MEM[v25.word4]);
            MEM[32 + (MEM[v25.word4] + (MEM[64] + 64 + 288))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v25.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
            require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v25.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v25.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(v22.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v32 = v22.data;
            v22.word1 = MEM[64];
            require(v22.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v33 = v22.data;
            if (!v18) {
                v34 = v35 = new struct(3);
                v35.word1 = varg1;
                v35.word2 = varg5;
                v35.word0 = 64;
                require(!((v35 + 96 > uint64.max) | (v35 + 96 < v35)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v22.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v36 = 64 + v22;
            } else {
                v14 = 0;
                v34 = new struct(3);
                v34.word1 = varg0;
                v34.word2 = varg5;
                v34.word0 = 64;
                require(!((v34 + 96 > uint64.max) | (v34 + 96 < v34)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v22.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v36 = v37 = 64 + v22;
            }
            MEM[v36] = v34;
            require(1 < v22.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (!v18) {
                require(!v14);
                v38 = new struct(3);
                v38.word1 = address(v39);
                v38.word2 = varg6;
                v38.word0 = 64;
                require(!((v38 + 96 > uint64.max) | (v38 + 96 < v38)), Panic(65)); // failed memory allocation (too much memory)
                require(2 < v22.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v40 = 96 + v22;
            } else {
                v38 = v41 = new struct(3);
                v41.word1 = varg1;
                v41.word2 = varg6;
                v41.word0 = 64;
                require(!((v41 + 96 > uint64.max) | (v41 + 96 < v41)), Panic(65)); // failed memory allocation (too much memory)
                require(2 < v22.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v40 = v42 = 96 + v22;
            }
            MEM[v40] = v38;
            require(2 < MEM[v22], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v43 = new struct(2);
            require(!((v43 + 64 > uint64.max) | (v43 + 64 < v43)), Panic(65)); // failed memory allocation (too much memory)
            v43.word0 = 1;
            v44 = v45 = 0;
            while (v44 < 32) {
                MEM[v43 + v44 + 32] = 96;
                v44 = v44 + 32;
            }
            MEM[MEM[64] + v29] = 64;
            MEM[MEM[64] + v29 + 64] = MEM[v21];
            MCOPY(MEM[64] + v29 + 64 + 32, 32 + v21, MEM[v21]);
            MEM[32 + (MEM[v21] + (MEM[64] + v29 + 64))] = 0;
            v46 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v21]) + (MEM[64] + v29 + 64) + 32;
            MEM[MEM[64] + v29 + 32] = v46 - (MEM[64] + v29);
            MEM[v46] = MEM[v22];
            v47 = v46 + 32;
            v48 = v49 = v46 + (MEM[v22] << 5) + 32;
            v50 = v22 + 32;
            v51 = 0;
            while (v51 < MEM[v22]) {
                MEM[v47] = v48 - v46 - 32;
                MEM[v48] = MEM[MEM[v50]];
                MCOPY(v48 + 32, 32 + MEM[v50], MEM[MEM[v50]]);
                MEM[32 + (MEM[MEM[v50]] + v48)] = 0;
                v48 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v50]]) + v48 + 32;
                v50 = v50 + 32;
                v47 = v47 + 32;
                v51 = v51 + 1;
            }
            MEM[MEM[64]] = v48 - MEM[64] - 32;
            require(!((MEM[64] + (v48 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v48 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v52 = v43.data;
            v43.word1 = MEM[64];
            require(v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v53 = v43.data;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v54 = v55 = varg0;
            v54 = varg1;
            if (v55 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                if (!bool(v55)) {
                }
            } else if (v55 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
            }
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            v56, v57 = address(v54).balanceOf(address(v58)).gas(msg.gas);
            require(v56, MEM[64], RETURNDATASIZE());
            v57 = v59 = 0;
            if (v56) {
                if (v29 > RETURNDATASIZE()) {
                    v29 = v60 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v29 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v29 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v29 - MEM[64] >= v29);
            }
            if (v12) {
                require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size);
                v61 = new bytes[](v62.length);
                MCOPY(v61.data, v62.data, v62.length);
                v61[v62.length] = 0;
                v63 = v61.data;
                v64 = new uint256[](v43.word0.length);
                v61[32][32] = v43.word0.length;
                v65 = v64.data;
                v66 = v67 = v64.data + 32;
                v68 = v43.data;
                v69 = 0;
                while (v69 < v43.word0.length) {
                    MEM[v65] = v66 - v64 - 32;
                    MEM[v66] = MEM[MEM[v68]];
                    MCOPY(v66 + 32, 32 + MEM[v68], MEM[MEM[v68]]);
                    MEM[32 + (MEM[MEM[v68]] + v66)] = 0;
                    v66 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v68]]) + v66 + 32;
                    v68 = v68 + 32;
                    v65 = v65 + 32;
                    v69 = v69 + 1;
                }
                v70, /* uint256 */ v71 = stor_4_0_19.execute(v61, v64, block.timestamp + 1).gas(msg.gas);
                require(v70, v71, RETURNDATASIZE());
                if (v70) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    v16 = v72 = 0;
                }
            } else {
                require(v10.code.size, v17, v17);
                v73, /* uint256 */ v74 = v10.withdraw(v75).value(v17).gas(msg.gas);
                require(v73, MEM[64], RETURNDATASIZE());
                if (v73) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v17, v17, v17);
                }
                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size, v17, v17);
                v76 = new bytes[](v62.length);
                MCOPY(v76.data, v62.data, v62.length);
                v76[v62.length] = 0;
                v77 = v76.data;
                v78 = new uint256[](v43.word0.length);
                v76[32][32] = v43.word0.length;
                v79 = v78.data;
                v80 = v81 = v78.data + 32;
                v82 = v43.data;
                v83 = 0;
                while (v83 < v43.word0.length) {
                    MEM[v79] = v80 - v78 - 32;
                    MEM[v80] = MEM[MEM[v82]];
                    MCOPY(v80 + 32, 32 + MEM[v82], MEM[MEM[v82]]);
                    MEM[32 + (MEM[MEM[v82]] + v80)] = 0;
                    v80 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v82]]) + v80 + 32;
                    v82 = v82 + 32;
                    v79 = v79 + 32;
                    v83 = v83 + 1;
                }
                v84, /* uint256 */ v85 = stor_4_0_19.execute(v76, v78, block.timestamp + 1).value(v75).gas(msg.gas);
                require(v84, v85, RETURNDATASIZE());
                if (v84) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v17, v17, v17);
                }
            }
            v86, /* uint256 */ v87 = address(v54).balanceOf(address(v58)).gas(msg.gas);
            require(v86, MEM[64], RETURNDATASIZE());
            if (v86) {
                if (v29 > RETURNDATASIZE()) {
                    v29 = v88 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v29 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v29 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v29 - MEM[64] >= v29);
                v89 = v90 = _SafeSub(0x70a0823100000000000000000000000000000000000000000000000000000000, v57);
            } else {
                v89 = v91 = _SafeSub(v16, v57);
            }
            if (v89 < varg6) {
                MEM[MEM[128]] = 0xa0927dc300000000000000000000000000000000000000000000000000000000;
                revert(MEM[128], 4);
            } else {
                if (varg8) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                    v92 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg8).value(MEM[128]).gas(msg.gas);
                    require(v92, MEM[64], RETURNDATASIZE());
                    if (v92) {
                        require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(!MEM[128], MEM[128], MEM[128]);
                    }
                    v93 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg8).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v94 = v95 = new bytes[](RETURNDATASIZE());
                        require(!((v95 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v95 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v95)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v95.data, 0, RETURNDATASIZE());
                    }
                    if (!v93) {
                        MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                        revert(MEM[128], 4);
                    } else {
                        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg8);
                    }
                }
                v96 = v97 = varg0;
                require(!(varg0 - v97));
                v96 = v98 = varg1;
                require(!(varg1 - v98));
                v99 = v100 = v97 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                if (v97 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                    v99 = !v97;
                }
                if (v99) {
                }
                emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(v96), varg5, v89, 1, varg8, 6);
                return v89;
            }
        }
    }
}

function withdrawToken(address _tokenContract, uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 64, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v0, v1 = _tokenContract.balanceOf(this).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        v1 = v2 = MEM[128];
        if (v0) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v3 - MEM[64] >= 32);
        }
        if (_amount > v1) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            0x51d3(_tokenContract, 0x8bdf3dae4f9817320cb0317521f56607d271fef, _amount);
            emit Withdrawn(_tokenContract, _amount);
            return MEM[MEM[128]:MEM[128] + MEM[128]];
        }
    }
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= MEM[128], MEM[128], MEM[128]);
    return address(0x8bdf3dae4f9817320cb0317521f56607d271fef);
}

function disperse() public nonPayable { 
    require(msg.data.length - 4 >= MEM[128], MEM[128], MEM[128]);
    return _disperse;
}

function setPoolManager(address poolManager_) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        _poolManager = poolManager_;
        return MEM[MEM[128]:MEM[128] + MEM[128]];
    }
}

function 0x75b6ff6e() public nonPayable { 
    require(msg.data.length - 4 >= MEM[128], MEM[128], MEM[128]);
    return stor_4_0_19;
}

function isOperator(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    MEM[MEM[128]] = account;
    MEM[32] = MEM[128];
    v0 = v1 = uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (!v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) == account;
    }
    return bool(v0);
}

function approveToRouter(address _token) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        0x5b21(_token);
        require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size, MEM[128], MEM[128]);
        v0 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(_token, _universalRouter, uint160.max, uint48.max).value(MEM[128]).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(!MEM[128], MEM[128], MEM[128]);
        }
        return MEM[MEM[128]:MEM[128] + MEM[128]];
    }
}

function receive() public payable { 
    v0 = v1 = bool(msg.value);
    if (v1) {
        v0 = v2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != msg.sender;
    }
    if (v0) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v3, /* uint256 */ v4 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
        require(v3, v4, RETURNDATASIZE());
        if (v3) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        }
        emit Deposited(msg.sender, msg.value, 1);
        exit;
    } else {
        exit;
    }
}

function PERMIT2() public nonPayable { 
    require(msg.data.length - 4 >= MEM[128], MEM[128], MEM[128]);
    return address(0x22d473030f116ddee9f6b43ac78ba3);
}

function depositWETH(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (!_amount) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v0 = new bytes[](100);
        MEM[v0.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
        MEM[v0 + 36] = msg.sender;
        MEM[v0 + 68] = this;
        MEM[v0 + 100] = _amount;
        require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v0.length;
        v2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transferFrom(msg.sender, this, _amount).value(MEM[128]).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v3 = v4 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = v5 = new bytes[](RETURNDATASIZE());
            require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
            RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
        }
        v6 = v7 = !v2;
        if (bool(v2)) {
            v6 = v8 = bool(MEM[v3]);
            if (v8) {
                require(v3 + MEM[v3] + 32 - (v3 + 32) >= 32);
                require(!(MEM[v3 + 32] - bool(MEM[v3 + 32])));
                v6 = v9 = !MEM[v3 + 32];
            }
        }
        if (v6) {
            MEM[MEM[128]] = 0x7939f42400000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            emit Deposited(msg.sender, _amount, MEM[128]);
            return MEM[MEM[128]:MEM[128] + MEM[128]];
        }
    }
}

function setUniversalRouter(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        _universalRouter = varg0;
        emit RouterUpdated(varg0);
        return MEM[MEM[128]:MEM[128] + MEM[128]];
    }
}

function setOperator(address operator, bool status) public nonPayable { 
    require(msg.data.length - 4 >= 64, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        MEM[MEM[128]] = operator;
        MEM[32] = MEM[128];
        STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])] = uint8(status) | bytes31(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
        emit OperatorUpdated(operator, status);
        return MEM[MEM[128]:MEM[128] + MEM[128]];
    }
}

function 0x4ed1e45e(address varg0, address varg1, uint256 varg2, uint256 varg3, address varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224, MEM[128], MEM[128]);
    require(varg6 < 8, MEM[128], MEM[128]);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!varg2) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!varg6) {
        MEM[MEM[128]] = 0x2946cbf100000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = _SafeAdd(varg2, varg5);
        v4, v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v4, MEM[64], RETURNDATASIZE());
        v5 = v6 = MEM[128];
        if (v4) {
            v7 = v8 = 32;
            if (32 > RETURNDATASIZE()) {
                v7 = v9 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v7 - MEM[64] >= 32);
        }
        if (v5 < v3) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            v10 = 0x5a23(varg0, varg1, varg2, varg4);
            if (v10 < varg3) {
                MEM[MEM[128]] = 0xa0927dc300000000000000000000000000000000000000000000000000000000;
                revert(MEM[128], 4);
            } else {
                if (varg5) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                    v11 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg5).value(MEM[128]).gas(msg.gas);
                    require(v11, MEM[64], RETURNDATASIZE());
                    if (v11) {
                        require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(!MEM[128], MEM[128], MEM[128]);
                    }
                    v12 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg5).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v13 = v14 = new bytes[](RETURNDATASIZE());
                        require(!((v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v14.data, 0, RETURNDATASIZE());
                    }
                    if (!v12) {
                        MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                        revert(MEM[128], 4);
                    } else {
                        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg5);
                    }
                }
                require(varg6 < 8, Panic(33)); // failed convertion to enum type
                emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(varg1, varg2, v10, 1, varg5, varg6);
                return v10;
            }
        }
    }
}

function 0x4958a238(address varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224, MEM[128], MEM[128]);
    require(varg4 <= uint64.max, MEM[128], MEM[128]);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max);
    require((varg4.length << 5) + (4 + varg4) + 32 <= msg.data.length);
    require(varg6 < 8, MEM[128], MEM[128]);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = v4 = MEM[128];
        if (!varg4.length) {
            MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else if (!varg2) {
            MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else if (!varg6) {
            MEM[MEM[128]] = 0x2946cbf100000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            v5 = v6 = MEM[128];
            while (v5 < varg4.length) {
                v7 = 0x3d81(varg4.data, varg4.length, v5);
                require(!(msg.data[v7] - address(msg.data[v7])));
                _algebraSwapCallback = varg0;
                v8 = v9 = 64;
                require(varg2 != int256.min, Panic(17)); // arithmetic overflow or underflow
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) >= varg1) {
                    v10 = MEM[v9];
                    MEM[v10] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v10 + 4] = address(msg.data[v7]);
                    MEM[v10 + 36] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < varg1;
                    MEM[v10 + 68] = 0 - varg2;
                    MEM[v10 + 100] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v10 + 132] = 160;
                    MEM[v10 + 164] = 0;
                    v11 = v10 + 196;
                    // Unknown jump to Block 0x2919. Refer to 3-address code (TAC);
                } else {
                    v10 = v12 = MEM[v9];
                    MEM[v12] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v12 + 4] = address(msg.data[v7]);
                    MEM[v12 + 36] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < varg1;
                    MEM[v12 + 68] = 0 - varg2;
                    MEM[v12 + 100] = address(0x1000276a4);
                    MEM[v12 + 132] = 160;
                    MEM[v12 + 164] = 0;
                    v11 = v13 = v12 + 196;
                }
                v14 = varg0.call(MEM[v28cfV0x29af:v28cfV0x29af + v2916V0x29af - v28cfV0x29af], MEM[v28cfV0x29af:v28cfV0x29af + v2919_0x3]).value(MEM[128]).gas(msg.gas);
                require(v14, MEM[64], RETURNDATASIZE());
                v15 = v16 = MEM[128];
                v15 = v17 = MEM[128];
                if (v14) {
                    v18 = v19 = 64;
                    if (v19 > RETURNDATASIZE()) {
                        v18 = RETURNDATASIZE();
                    }
                    require(!((v10 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v10 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(v10 + v18 - v10 >= 64);
                    v15 = MEM[v10];
                    v15 = v20 = MEM[v10 + 32];
                }
                _algebraSwapCallback = 0;
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < varg1) {
                }
                v5 = v5 + v15;
                require(v5 <= v5, Panic(17)); // arithmetic overflow or underflow
                if (v5 > varg3) {
                    MEM[MEM[128]] = 0x8199f5f300000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    v3 = _SafeAdd(v3, varg2);
                    v5 = v5 + 1;
                }
            }
            if (varg5) {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                v21 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg5).value(MEM[128]).gas(msg.gas);
                require(v21, MEM[64], RETURNDATASIZE());
                if (v21) {
                    require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!MEM[128], MEM[128], MEM[128]);
                }
                v22 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg5).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v23 = v24 = new bytes[](RETURNDATASIZE());
                    require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v24.data, 0, RETURNDATASIZE());
                }
                if (!v22) {
                    MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg5);
                }
            }
            require(varg6 < 8, Panic(33)); // failed convertion to enum type
            emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(varg1, v5, v3, varg4.length, varg5, varg6);
            return v3;
        }
    }
}

function 0x470086d5(address varg0, address varg1, address varg2, uint256 varg3, address varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11, address varg12, uint24 varg13, int24 varg14, address varg15, address varg16, address varg17) public nonPayable { 
    require(msg.data.length - 4 >= 576, MEM[128], MEM[128]);
    require(224 <= msg.data.length - 4, MEM[128], MEM[128]);
    require(msg.data.length - 228 >= 224, MEM[128], MEM[128]);
    require(varg16 <= uint64.max, MEM[128], MEM[128]);
    require(4 + varg16 + 31 < msg.data.length);
    require(varg16.length <= uint64.max);
    require((varg16.length << 5) + (4 + varg16) + 32 <= msg.data.length);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = v4 = MEM[128];
        if (!varg16.length) {
            MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else if (!varg14) {
            MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            v5 = v6 = MEM[128];
            while (v5 < varg16.length) {
                v7 = _SafeSub(varg15, varg17);
                v8 = v9 = _SafeDiv(v7, varg16.length);
                v10 = v11 = 0;
                require(varg1 < 8);
                if (varg1) {
                    if (varg1 - 6) {
                        if (7 != varg1) {
                            v12 = v13 = varg0;
                            require(!(varg0 - v13));
                            require(!(varg3 - address(varg3)));
                            v14 = v15 = 0;
                            v16 = v17 = 64;
                            v18 = v19 = varg2 < address(varg3);
                            _algebraSwapCallback = varg0;
                            stor_6 = v9;
                            if (v15 == v19) {
                                v20 = new struct(2);
                                v21 = v20.data;
                                v20.word1 = varg2;
                                v20.word0 = 32;
                                require(!((v20 + 64 > uint64.max) | (v20 + 64 < v20)), Panic(65)); // failed memory allocation (too much memory)
                                v22 = MEM[v17];
                                MEM[v22] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v22 + 4] = address(this);
                                MEM[v22 + 4 + 32] = bool(v19);
                                MEM[v22 + 4 + 64] = v9;
                                MEM[v22 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                MEM[v22 + 4 + 128] = 160;
                                MEM[v22 + 4 + 160] = v20.word0.length;
                                MCOPY(v22 + 4 + 160 + 32, v20.data, v20.word0.length);
                                MEM[32 + (v20.word0.length + (v22 + 4 + 160))] = 0;
                                v23 = 32 + (v22 + 4 + 160) + 32;
                            } else {
                                v24 = new struct(2);
                                v25 = v24.data;
                                v24.word1 = varg2;
                                v24.word0 = 32;
                                require(!((v24 + 64 > uint64.max) | (v24 + 64 < v24)), Panic(65)); // failed memory allocation (too much memory)
                                v22 = v26 = MEM[v17];
                                MEM[v26] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v26 + 4] = address(this);
                                MEM[v26 + 4 + 32] = bool(v19);
                                MEM[v26 + 4 + 64] = v9;
                                MEM[v26 + 4 + 96] = address(0x1000276a4);
                                MEM[v26 + 4 + 128] = 160;
                                MEM[v26 + 4 + 160] = v24.word0.length;
                                MCOPY(v26 + 4 + 160 + 32, v24.data, v24.word0.length);
                                MEM[32 + (v24.word0.length + (v26 + 4 + 160))] = 0;
                                v23 = v27 = 32 + (v26 + 4 + 160) + 32;
                            }
                            v28 = v12.call(MEM[v21472V0x4aeb0x3fb9V0x2bd0:v21472V0x4aeb0x3fb9V0x2bd0 + v5302V0x5e340x4953V0x4aeb0x3fb9V0x2bd0 - v21472V0x4aeb0x3fb9V0x2bd0], MEM[v21472V0x4aeb0x3fb9V0x2bd0:v21472V0x4aeb0x3fb9V0x2bd0 + v4a900x3fb9_0x6V0x2bd0]).value(v14).gas(msg.gas);
                            if (!v28) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v29 = v30 = 0x2152f;
                                v31 = v32 = 0;
                                v31 = v33 = 0;
                                if (v28) {
                                    v34 = v35 = 19172;
                                    if (64 <= RETURNDATASIZE()) {
                                        require(!((v22 + 64 > uint64.max) | (v22 + 64 < v22)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v22 + 64;
                                        v36 = v37 = v22 + 64;
                                    }
                                }
                            }
                        } else {
                            v38 = v39 = varg0;
                            require(!(varg0 - v39));
                            require(!(varg3 - address(varg3)));
                            _algebraSwapCallback = varg0;
                            v18 = v40 = varg2 < address(varg3);
                            v41 = v42 = 64;
                            v43 = v44 = 0;
                            if (varg2 >= address(varg3)) {
                                v45 = new struct(2);
                                v46 = v45.data;
                                v45.word1 = varg2;
                                v45.word0 = 32;
                                require(!((v45 + 64 > uint64.max) | (v45 + 64 < v45)), Panic(65)); // failed memory allocation (too much memory)
                                v22 = v47 = MEM[v42];
                                MEM[v47] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v47 + 4] = address(this);
                                MEM[v47 + 4 + 32] = bool(v40);
                                MEM[v47 + 4 + 64] = v9;
                                MEM[v47 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                MEM[v47 + 4 + 128] = 160;
                                MEM[v47 + 4 + 160] = v45.word0.length;
                                MCOPY(v47 + 4 + 160 + 32, v45.data, v45.word0.length);
                                MEM[32 + (v45.word0.length + (v47 + 4 + 160))] = 0;
                                v48 = 32 + (v47 + 4 + 160) + 32;
                            } else {
                                v49 = new struct(2);
                                v50 = v49.data;
                                v49.word1 = varg2;
                                v49.word0 = 32;
                                require(!((v49 + 64 > uint64.max) | (v49 + 64 < v49)), Panic(65)); // failed memory allocation (too much memory)
                                v22 = v51 = MEM[v42];
                                MEM[v51] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v51 + 4] = address(this);
                                MEM[v51 + 4 + 32] = bool(v40);
                                MEM[v51 + 4 + 64] = v9;
                                MEM[v51 + 4 + 96] = address(0x1000276a4);
                                MEM[v51 + 4 + 128] = 160;
                                MEM[v51 + 4 + 160] = v49.word0.length;
                                MCOPY(v51 + 4 + 160 + 32, v49.data, v49.word0.length);
                                MEM[32 + (v49.word0.length + (v51 + 4 + 160))] = 0;
                                v48 = v52 = 32 + (v51 + 4 + 160) + 32;
                                // Unknown jump to Block 0x49850x3fb9B0x2bd0. Refer to 3-address code (TAC);
                            }
                            v53 = v38.call(MEM[v21472V0x4aeb0x3fb9V0x2bd0:v21472V0x4aeb0x3fb9V0x2bd0 + v5302V0x5e340x4953V0x49e30x3fb9V0x2bd0 - v21472V0x4aeb0x3fb9V0x2bd0], MEM[v21472V0x4aeb0x3fb9V0x2bd0:v21472V0x4aeb0x3fb9V0x2bd0 + v49850x3fb9_0x6V0x2bd0]).value(v43).gas(msg.gas);
                            if (!v53) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v29 = v54 = 0x214ab;
                                v31 = v55 = 0;
                                v31 = v56 = 0;
                                if (v53) {
                                    v34 = 18908;
                                    if (64 <= RETURNDATASIZE()) {
                                        require(!((v22 + 64 > uint64.max) | (v22 + 64 < v22)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v22 + 64;
                                        v36 = v57 = v22 + 64;
                                    }
                                }
                            }
                        }
                        _algebraSwapCallback = 0;
                        if (v18) {
                        }
                        require(v31 != int256.min, Panic(17)); // arithmetic overflow or underflow
                        v58 = v59 = 0 - v31;
                        // Unknown jump to Block ['0x214ab0x3fb9B0x2bd0', '0x2152f0x3fb9B0x2bd0']. Refer to 3-address code (TAC);
                        // Unknown jump to Block 0x59fd0x3fb9B0x2bd0. Refer to 3-address code (TAC);
                        require(!((v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v22)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v36 = v60 = v22 + RETURNDATASIZE();
                        require(v36 - v22 >= 64);
                        v31 = v61 = MEM[v22];
                        v31 = v62 = MEM[v22 + 32];
                        // Unknown jump to Block ['0x49dc0x3fb9B0x2bd0', '0x4ae40x3fb9B0x2bd0']. Refer to 3-address code (TAC);
                        // Unknown jump to Block 0x4aa80x3fb9B0x2bd0. Refer to 3-address code (TAC);
                        _algebraSwapCallback = 0;
                        stor_6 = 0;
                        if (v18) {
                        }
                    } else {
                        v63 = new struct(5);
                        require(!((v63 + 160 > uint64.max) | (v63 + 160 < v63)), Panic(65)); // failed memory allocation (too much memory)
                        v63.word0 = 0;
                        v63.word1 = 0;
                        v63.word2 = 0;
                        v63.word3 = 0;
                        v63.word4 = 0;
                        v64 = v65 = varg2 != varg2;
                        require(!v65);
                        require(varg3 == address(varg3));
                        if (varg2 >= address(varg3)) {
                            v64 = v66 = 0;
                        } else {
                            require(!v65);
                            require(varg3 == address(varg3));
                        }
                        require(!(varg4 - uint24(varg4)));
                        require(!(varg5 - int24(varg5)));
                        v67 = v68 = new struct(5);
                        require(!((v68 + 160 > uint64.max) | (v68 + 160 < v68)), Panic(65)); // failed memory allocation (too much memory)
                        v68.word0 = address(v69);
                        v70 = v71 = v68 + 32;
                        v68.word1 = address(v69);
                        v68.word2 = uint24(varg4);
                        v68.word3 = int24(varg5);
                        v68.word4 = varg6;
                        require(!v64);
                        v72 = v73 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == varg2;
                        v72 = v74 = !address(v69);
                        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != varg2) {
                        }
                        if (!v72) {
                            0x5bbe(varg2, v9);
                            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                            require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                            v75 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg2, stor_4_0_19, address(v9), uint48(block.timestamp + 60)).gas(msg.gas);
                            if (!v75) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v75) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                v10 = v76 = 0;
                            }
                        }
                        if (bool(address(v69))) {
                            v72 = v77 = address(v69) == varg2;
                        }
                        v78 = 0x60000;
                        MEM[v78 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                        MEM[v78 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                        require(!((v78 + 64 > uint64.max) | (v78 + 64 < v78)), Panic(65)); // failed memory allocation (too much memory)
                        v79 = new struct(4);
                        require(!((v79 + 128 > uint64.max) | (v79 + 128 < v79)), Panic(65)); // failed memory allocation (too much memory)
                        v79.word0 = 3;
                        v80 = v81 = 0;
                        while (v80 < 96) {
                            MEM[v79 + v80 + 32] = 96;
                            v80 = v80 + 32;
                        }
                        v82 = new struct(5);
                        require(!((v82 + 160 > uint64.max) | (v82 + 160 < v82)), Panic(65)); // failed memory allocation (too much memory)
                        v82.word0 = v68;
                        v82.word1 = bool(v72);
                        v82.word2 = uint128(v9);
                        v82.word3 = 1;
                        v83 = 32;
                        v84 = new struct(1);
                        require(!((v84 + 32 > uint64.max) | (v84 + 32 < v84)), Panic(65)); // failed memory allocation (too much memory)
                        v84.word0 = v10;
                        v82.word4 = v84;
                        MEM[MEM[64] + v83] = v83;
                        MEM[MEM[64] + 64] = address(MEM[v82.word0]);
                        MEM[MEM[64] + 64 + 32] = address(MEM[v82.word0 + 32]);
                        MEM[MEM[64] + 64 + 64] = uint24(MEM[v82.word0 + 64]);
                        MEM[MEM[64] + 64 + 96] = int24(MEM[v82.word0 + 96]);
                        MEM[MEM[64] + 64 + 128] = address(MEM[128 + v82.word0]);
                        MEM[MEM[64] + 64 + 160] = bool(v82.word1);
                        MEM[MEM[64] + 64 + 192] = uint128(v82.word2);
                        MEM[MEM[64] + 64 + 224] = uint128(v82.word3);
                        MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                        MEM[MEM[64] + 64 + 288] = MEM[v82.word4];
                        MCOPY(MEM[64] + 64 + 288 + 32, 32 + v82.word4, MEM[v82.word4]);
                        MEM[32 + (MEM[v82.word4] + (MEM[64] + 64 + 288))] = 0;
                        MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v82.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                        require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v82.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v82.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(v79.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v85 = v79.data;
                        v79.word1 = MEM[64];
                        require(v79.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v86 = v79.data;
                        if (!v72) {
                            v87 = new struct(3);
                            v87.word1 = address(v68.word1);
                            v87.word2 = v9;
                            v87.word0 = 64;
                            require(!((v87 + 96 > uint64.max) | (v87 + 96 < v87)), Panic(65)); // failed memory allocation (too much memory)
                            require(1 < v79.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v88 = 64 + v79;
                        } else {
                            v87 = v89 = new struct(3);
                            v89.word1 = address(v68.word0);
                            v89.word2 = v9;
                            v89.word0 = 64;
                            require(!((v89 + 96 > uint64.max) | (v89 + 96 < v89)), Panic(65)); // failed memory allocation (too much memory)
                            require(1 < v79.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v88 = v90 = 64 + v79;
                        }
                        MEM[v88] = v87;
                        require(1 < MEM[v79], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (!v72) {
                            v91 = v92 = address(MEM[v67]);
                        } else {
                            v91 = address(MEM[v70]);
                        }
                        v93 = new struct(3);
                        v94 = v93.data;
                        v93.word1 = address(v91);
                        v93.word2 = 1;
                        v93.word0 = 64;
                        require(!((v93 + 96 > uint64.max) | (v93 + 96 < v93)), Panic(65)); // failed memory allocation (too much memory)
                        require(2 < MEM[v79], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        MEM[96 + v79] = v93;
                        require(2 < MEM[v79], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v95 = new struct(2);
                        require(!((v95 + 64 > uint64.max) | (v95 + 64 < v95)), Panic(65)); // failed memory allocation (too much memory)
                        v95.word0 = 1;
                        v96 = v97 = 0;
                        while (v96 < 32) {
                            MEM[v95 + v96 + 32] = 96;
                            v96 = v96 + 32;
                        }
                        MEM[MEM[64] + v83] = 64;
                        MEM[MEM[64] + v83 + 64] = MEM[v78];
                        MCOPY(MEM[64] + v83 + 64 + 32, 32 + v78, MEM[v78]);
                        MEM[32 + (MEM[v78] + (MEM[64] + v83 + 64))] = 0;
                        MEM[MEM[64] + v83 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v78]) + (MEM[64] + v83 + 64) + 32 - (MEM[64] + v83);
                        MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v78]) + (MEM[64] + v83 + 64) + 32] = MEM[v79];
                        v98 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v78]) + (MEM[64] + v83 + 64) + 32 + 32;
                        v99 = v100 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v78]) + (MEM[64] + v83 + 64) + 32 + (MEM[v79] << 5) + 32;
                        v101 = v79 + 32;
                        v102 = 0;
                        while (v102 < MEM[v79]) {
                            MEM[v98] = v99 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v78]) + (MEM[64] + v83 + 64) + 32) - 32;
                            MEM[v99] = MEM[MEM[v101]];
                            MCOPY(v99 + 32, 32 + MEM[v101], MEM[MEM[v101]]);
                            MEM[32 + (MEM[MEM[v101]] + v99)] = 0;
                            v99 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v101]]) + v99 + 32;
                            v101 = v101 + 32;
                            v98 = v98 + 32;
                            v102 = v102 + 1;
                        }
                        MEM[MEM[64]] = v99 - MEM[64] - 32;
                        require(!((MEM[64] + (v99 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v99 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(v95.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v103 = v95.data;
                        v95.word1 = MEM[64];
                        require(v95.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v104 = v95.data;
                        require(!0, Panic(65)); // failed memory allocation (too much memory)
                        if (!v72) {
                            v105 = v106 = address(MEM[v67]);
                        } else {
                            v105 = address(MEM[v70]);
                        }
                        v107, /* uint112 */ v10 = address(v105).balanceOf(address(this)).gas(msg.gas);
                        if (!v107) {
                            RETURNDATACOPY(MEM[64], v10, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v107) {
                                if (v83 > RETURNDATASIZE()) {
                                    v83 = v108 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v83 - MEM[64] >= v83);
                            }
                            if (!v72) {
                                require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                                require(stor_4_0_19.code.size, v10, v10);
                                MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                MEM[MEM[64] + 4] = 96;
                                MEM[MEM[64] + 4 + 96] = v109.length;
                                MCOPY(MEM[64] + 4 + 96 + 32, v109.data, v109.length);
                                MEM[32 + (v109.length + (MEM[64] + 4 + 96))] = 0;
                                MEM[MEM[64] + 4 + 32] = 160;
                                MEM[32 + (MEM[64] + 4 + 96) + 32] = v95.word0.length;
                                v110 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                v111 = v112 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                v113 = v95.data;
                                v114 = 0;
                                while (v114 < v95.word0.length) {
                                    MEM[v110] = v111 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                    MEM[v111] = MEM[MEM[v113]];
                                    MCOPY(v111 + 32, 32 + MEM[v113], MEM[MEM[v113]]);
                                    MEM[32 + (MEM[MEM[v113]] + v111)] = 0;
                                    v111 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v113]]) + v111 + 32;
                                    v113 = v113 + 32;
                                    v110 = v110 + 32;
                                    v114 = v114 + 1;
                                }
                                MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                v115 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v5302V0x53e3V0x5450V0x47260x3fb9V0x2bd0 - MEM[64]], MEM[MEM[64]:MEM[64] + v5c00V0x5c270x3fb9V0x2bd0]).value(v10).gas(msg.gas);
                                if (!v115) {
                                    RETURNDATACOPY(MEM[64], v10, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v115) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(!v10, v10, v10);
                                }
                            } else {
                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v10, v10);
                                v116 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v8).value(v10).gas(msg.gas);
                                if (!v116) {
                                    RETURNDATACOPY(MEM[64], v10, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v116) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v10, v10, v10);
                                    }
                                    require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                                    require(stor_4_0_19.code.size, v10, v10);
                                    MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                    MEM[MEM[64] + 4] = 96;
                                    MEM[MEM[64] + 4 + 96] = v109.length;
                                    MCOPY(MEM[64] + 4 + 96 + 32, v109.data, v109.length);
                                    MEM[32 + (v109.length + (MEM[64] + 4 + 96))] = 0;
                                    MEM[MEM[64] + 4 + 32] = 160;
                                    MEM[32 + (MEM[64] + 4 + 96) + 32] = v95.word0.length;
                                    v117 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                    v118 = v119 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                    v120 = v95.data;
                                    v121 = 0;
                                    while (v121 < v95.word0.length) {
                                        MEM[v117] = v118 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                        MEM[v118] = MEM[MEM[v120]];
                                        MCOPY(v118 + 32, 32 + MEM[v120], MEM[MEM[v120]]);
                                        MEM[32 + (MEM[MEM[v120]] + v118)] = 0;
                                        v118 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v120]]) + v118 + 32;
                                        v120 = v120 + 32;
                                        v117 = v117 + 32;
                                        v121 = v121 + 1;
                                    }
                                    MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                    v122 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v5302V0x53e3V0x5450V0x460e0x3fb9V0x2bd0 - MEM[64]], MEM[MEM[64]:MEM[64] + v5c00V0x5c270x3fb9V0x2bd0]).value(v8).gas(msg.gas);
                                    if (!v122) {
                                        RETURNDATACOPY(MEM[64], v10, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else if (v122) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v10, v10, v10);
                                    }
                                }
                            }
                            v123, /* uint112 */ v10 = address(v105).balanceOf(address(this)).gas(msg.gas);
                            if (!v123) {
                                RETURNDATACOPY(MEM[64], v10, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v123) {
                                    if (v83 > RETURNDATASIZE()) {
                                        v83 = v124 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v83 - MEM[64] >= v83);
                                }
                                v58 = v125 = _SafeSub(v10, v10);
                            }
                        }
                    }
                } else {
                    require(!(varg3 - address(varg3)), v11, v11);
                    v126, /* uint112 */ v10 = address(varg3).balanceOf(address(this)).gas(msg.gas);
                    if (!v126) {
                        RETURNDATACOPY(MEM[64], v11, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v126) {
                            v127 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v127 = v128 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v127 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v127 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v127 - MEM[64] >= 32);
                        }
                        0x51d3(varg2, varg0, v9);
                        v129, /* uint112 */ v10, /* uint112 */ v10, /* uint32 */ v130 = varg0.getReserves().gas(msg.gas);
                        if (!v129) {
                            RETURNDATACOPY(MEM[64], v11, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v129) {
                                if (96 > RETURNDATASIZE()) {
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v131 = v132 = MEM[64] + RETURNDATASIZE();
                                } else {
                                    require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + 96;
                                    v131 = v133 = MEM[64] + 96;
                                }
                                require(v131 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v10 - uint112(v10)));
                                require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
                            }
                            v134, /* uint112 */ v10 = varg0.token0().gas(msg.gas);
                            if (!v134) {
                                RETURNDATACOPY(MEM[64], v11, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v134) {
                                    if (32 > RETURNDATASIZE()) {
                                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        v135 = v136 = MEM[64] + RETURNDATASIZE();
                                    } else {
                                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + 32;
                                        v135 = v137 = MEM[64] + 32;
                                    }
                                    require(v135 - MEM[64] >= 32);
                                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                }
                                if (address(v10) != varg2) {
                                    v138 = uint112(v10);
                                    v139 = uint112(v10);
                                } else {
                                    v138 = v140 = uint112(v10);
                                    v139 = v141 = uint112(v10);
                                }
                                require(v9, Error('INSUFFICIENT_INPUT_AMOUNT'));
                                v142 = bool(v138);
                                if (v142) {
                                    v142 = v143 = bool(v139);
                                }
                                require(v142, Error('INSUFFICIENT_LIQUIDITY'));
                                require(!(997 - v9 * 997 / v9), Panic(17)); // arithmetic overflow or underflow
                                v144 = _SafeMul(v9 * 997, v139);
                                require((1000 == v138 * 1000 / v138) | !v138, Panic(17)); // arithmetic overflow or underflow
                                v145 = _SafeAdd(v138 * 1000, v9 * 997);
                                v10 = v146 = _SafeDiv(v144, v145);
                                if (address(v10) == varg2) {
                                }
                                require(varg0.code.size, v11, v11);
                                v147 = varg0.swap(v10, v10, address(this), 128, 0).value(v11).gas(msg.gas);
                                if (!v147) {
                                    RETURNDATACOPY(MEM[64], v11, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v147) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v11, v11, v11);
                                    }
                                    v148, /* uint112 */ v10 = address(varg3).balanceOf(address(this)).gas(msg.gas);
                                    if (!v148) {
                                        RETURNDATACOPY(MEM[64], v11, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v148) {
                                            v149 = 32;
                                            if (32 > RETURNDATASIZE()) {
                                                v149 = v150 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v149 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v149 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            require(MEM[64] + v149 - MEM[64] >= 32);
                                        }
                                        v58 = v151 = _SafeSub(v10, v10);
                                    }
                                }
                            }
                        }
                    }
                }
                if (!v58) {
                    MEM[MEM[128]] = 0x81ceff3000000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    v152 = 0x3d81(varg16.data, varg16.length, v5);
                    require(!(msg.data[v152] - address(msg.data[v152])));
                    v153 = v154 = 0;
                    require(varg8 < 8);
                    if (varg8) {
                        if (varg8 - 6) {
                            if (7 != varg8) {
                                v155 = v156 = varg7;
                                require(!(varg7 - v156));
                                v157 = v158 = 0;
                                v159 = v160 = 64;
                                v161 = v162 = varg9 < varg10;
                                _algebraSwapCallback = varg7;
                                stor_6 = v58;
                                if (v158 == v162) {
                                    v163 = new struct(2);
                                    v164 = v163.data;
                                    v163.word1 = varg9;
                                    v163.word0 = 32;
                                    require(!((v163 + 64 > uint64.max) | (v163 + 64 < v163)), Panic(65)); // failed memory allocation (too much memory)
                                    v165 = MEM[v160];
                                    MEM[v165] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                    MEM[v165 + 4] = address(msg.data[v152]);
                                    MEM[v165 + 4 + 32] = bool(v162);
                                    MEM[v165 + 4 + 64] = v58;
                                    MEM[v165 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                    MEM[v165 + 4 + 128] = 160;
                                    MEM[v165 + 4 + 160] = v163.word0.length;
                                    MCOPY(v165 + 4 + 160 + 32, v163.data, v163.word0.length);
                                    MEM[32 + (v163.word0.length + (v165 + 4 + 160))] = 0;
                                    v166 = 32 + (v165 + 4 + 160) + 32;
                                } else {
                                    v167 = new struct(2);
                                    v168 = v167.data;
                                    v167.word1 = varg9;
                                    v167.word0 = 32;
                                    require(!((v167 + 64 > uint64.max) | (v167 + 64 < v167)), Panic(65)); // failed memory allocation (too much memory)
                                    v165 = v169 = MEM[v160];
                                    MEM[v169] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                    MEM[v169 + 4] = address(msg.data[v152]);
                                    MEM[v169 + 4 + 32] = bool(v162);
                                    MEM[v169 + 4 + 64] = v58;
                                    MEM[v169 + 4 + 96] = address(0x1000276a4);
                                    MEM[v169 + 4 + 128] = 160;
                                    MEM[v169 + 4 + 160] = v167.word0.length;
                                    MCOPY(v169 + 4 + 160 + 32, v167.data, v167.word0.length);
                                    MEM[32 + (v167.word0.length + (v169 + 4 + 160))] = 0;
                                    v166 = v170 = 32 + (v169 + 4 + 160) + 32;
                                }
                                v171 = v155.call(MEM[v21472V0x4aeb0x4b09V0x2bf6:v21472V0x4aeb0x4b09V0x2bf6 + v5302V0x5e340x4953V0x4aeb0x4b09V0x2bf6 - v21472V0x4aeb0x4b09V0x2bf6], MEM[v21472V0x4aeb0x4b09V0x2bf6:v21472V0x4aeb0x4b09V0x2bf6 + v4a900x4b09_0x6V0x2bf6]).value(v157).gas(msg.gas);
                                if (!v171) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v172 = v173 = 0x2152f;
                                    v174 = v175 = 0;
                                    v174 = v176 = 0;
                                    if (v171) {
                                        v177 = v178 = 19172;
                                        if (64 <= RETURNDATASIZE()) {
                                            require(!((v165 + 64 > uint64.max) | (v165 + 64 < v165)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v165 + 64;
                                            v179 = v180 = v165 + 64;
                                        }
                                    }
                                }
                            } else {
                                v181 = v182 = varg7;
                                require(!(varg7 - v182));
                                _algebraSwapCallback = varg7;
                                v161 = v183 = varg9 < varg10;
                                v184 = v185 = 64;
                                v186 = v187 = 0;
                                if (varg9 >= varg10) {
                                    v188 = new struct(2);
                                    v189 = v188.data;
                                    v188.word1 = varg9;
                                    v188.word0 = 32;
                                    require(!((v188 + 64 > uint64.max) | (v188 + 64 < v188)), Panic(65)); // failed memory allocation (too much memory)
                                    v165 = v190 = MEM[v185];
                                    MEM[v190] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                    MEM[v190 + 4] = address(msg.data[v152]);
                                    MEM[v190 + 4 + 32] = bool(v183);
                                    MEM[v190 + 4 + 64] = v58;
                                    MEM[v190 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                    MEM[v190 + 4 + 128] = 160;
                                    MEM[v190 + 4 + 160] = v188.word0.length;
                                    MCOPY(v190 + 4 + 160 + 32, v188.data, v188.word0.length);
                                    MEM[32 + (v188.word0.length + (v190 + 4 + 160))] = 0;
                                    v191 = 32 + (v190 + 4 + 160) + 32;
                                } else {
                                    v192 = new struct(2);
                                    v193 = v192.data;
                                    v192.word1 = varg9;
                                    v192.word0 = 32;
                                    require(!((v192 + 64 > uint64.max) | (v192 + 64 < v192)), Panic(65)); // failed memory allocation (too much memory)
                                    v165 = v194 = MEM[v185];
                                    MEM[v194] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                    MEM[v194 + 4] = address(msg.data[v152]);
                                    MEM[v194 + 4 + 32] = bool(v183);
                                    MEM[v194 + 4 + 64] = v58;
                                    MEM[v194 + 4 + 96] = address(0x1000276a4);
                                    MEM[v194 + 4 + 128] = 160;
                                    MEM[v194 + 4 + 160] = v192.word0.length;
                                    MCOPY(v194 + 4 + 160 + 32, v192.data, v192.word0.length);
                                    MEM[32 + (v192.word0.length + (v194 + 4 + 160))] = 0;
                                    v191 = v195 = 32 + (v194 + 4 + 160) + 32;
                                }
                                v196 = v181.call(MEM[v21472V0x4aeb0x4b09V0x2bf6:v21472V0x4aeb0x4b09V0x2bf6 + v5302V0x5e340x4953V0x49e30x4b09V0x2bf6 - v21472V0x4aeb0x4b09V0x2bf6], MEM[v21472V0x4aeb0x4b09V0x2bf6:v21472V0x4aeb0x4b09V0x2bf6 + v49850x4b09_0x6V0x2bf6]).value(v186).gas(msg.gas);
                                if (!v196) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v172 = v197 = 0x214ab;
                                    v174 = v198 = 0;
                                    v174 = v199 = 0;
                                    if (v196) {
                                        v177 = 18908;
                                        if (64 <= RETURNDATASIZE()) {
                                            require(!((v165 + 64 > uint64.max) | (v165 + 64 < v165)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v165 + 64;
                                            v179 = v200 = v165 + 64;
                                        }
                                    }
                                }
                            }
                            _algebraSwapCallback = 0;
                            if (v161) {
                            }
                            require(v174 != int256.min, Panic(17)); // arithmetic overflow or underflow
                            v201 = v202 = 0 - v174;
                            // Unknown jump to Block ['0x214ab0x4b09B0x2bf6', '0x2152f0x4b09B0x2bf6']. Refer to 3-address code (TAC);
                            // Unknown jump to Block 0x59fd0x4b09B0x2bf6. Refer to 3-address code (TAC);
                            require(!((v165 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v165 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v165)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v165 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v179 = v203 = v165 + RETURNDATASIZE();
                            require(v179 - v165 >= 64);
                            v174 = v204 = MEM[v165];
                            v174 = v205 = MEM[v165 + 32];
                            // Unknown jump to Block ['0x49dc0x4b09B0x2bf6', '0x4ae40x4b09B0x2bf6']. Refer to 3-address code (TAC);
                            // Unknown jump to Block 0x4aa80x4b09B0x2bf6. Refer to 3-address code (TAC);
                            _algebraSwapCallback = 0;
                            stor_6 = 0;
                            if (v161) {
                            }
                        } else {
                            v206 = new struct(5);
                            require(!((v206 + 160 > uint64.max) | (v206 + 160 < v206)), Panic(65)); // failed memory allocation (too much memory)
                            v206.word0 = 0;
                            v206.word1 = 0;
                            v206.word2 = 0;
                            v206.word3 = 0;
                            v206.word4 = 0;
                            v207 = v208 = varg9 != varg9;
                            require(!v208);
                            if (varg9 >= varg10) {
                                v207 = v209 = 0;
                            } else {
                                require(!v208);
                            }
                            require(!(varg11 - uint24(varg11)));
                            require(!(varg12 - int24(varg12)));
                            require(!(varg13 - address(varg13)));
                            v210 = v211 = new struct(5);
                            require(!((v211 + 160 > uint64.max) | (v211 + 160 < v211)), Panic(65)); // failed memory allocation (too much memory)
                            v211.word0 = address(v212);
                            v213 = v214 = v211 + 32;
                            v211.word1 = address(v212);
                            v211.word2 = uint24(varg11);
                            v211.word3 = int24(varg12);
                            v211.word4 = address(varg13);
                            require(!v207);
                            v215 = v216 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == varg9;
                            v215 = v217 = !address(v212);
                            if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != varg9) {
                            }
                            if (!v215) {
                                0x5bbe(varg9, v58);
                                require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                                require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                                v218 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg9, stor_4_0_19, address(v58), uint48(block.timestamp + 60)).gas(msg.gas);
                                if (!v218) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v218) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    v153 = v219 = 0;
                                }
                            }
                            if (bool(address(v212))) {
                                v215 = v220 = address(v212) == varg9;
                            }
                            v221 = 0x60000;
                            MEM[v221 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                            MEM[v221 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                            require(!((v221 + 64 > uint64.max) | (v221 + 64 < v221)), Panic(65)); // failed memory allocation (too much memory)
                            v222 = new struct(4);
                            require(!((v222 + 128 > uint64.max) | (v222 + 128 < v222)), Panic(65)); // failed memory allocation (too much memory)
                            v222.word0 = 3;
                            v223 = v224 = 0;
                            while (v223 < 96) {
                                MEM[v222 + v223 + 32] = 96;
                                v223 = v223 + 32;
                            }
                            v225 = new struct(5);
                            require(!((v225 + 160 > uint64.max) | (v225 + 160 < v225)), Panic(65)); // failed memory allocation (too much memory)
                            v225.word0 = v211;
                            v225.word1 = bool(v215);
                            v225.word2 = uint128(v58);
                            v225.word3 = 1;
                            v226 = 32;
                            v227 = new struct(1);
                            require(!((v227 + 32 > uint64.max) | (v227 + 32 < v227)), Panic(65)); // failed memory allocation (too much memory)
                            v227.word0 = v153;
                            v225.word4 = v227;
                            MEM[MEM[64] + v226] = v226;
                            MEM[MEM[64] + 64] = address(MEM[v225.word0]);
                            MEM[MEM[64] + 64 + 32] = address(MEM[v225.word0 + 32]);
                            MEM[MEM[64] + 64 + 64] = uint24(MEM[v225.word0 + 64]);
                            MEM[MEM[64] + 64 + 96] = int24(MEM[v225.word0 + 96]);
                            MEM[MEM[64] + 64 + 128] = address(MEM[128 + v225.word0]);
                            MEM[MEM[64] + 64 + 160] = bool(v225.word1);
                            MEM[MEM[64] + 64 + 192] = uint128(v225.word2);
                            MEM[MEM[64] + 64 + 224] = uint128(v225.word3);
                            MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                            MEM[MEM[64] + 64 + 288] = MEM[v225.word4];
                            MCOPY(MEM[64] + 64 + 288 + 32, 32 + v225.word4, MEM[v225.word4]);
                            MEM[32 + (MEM[v225.word4] + (MEM[64] + 64 + 288))] = 0;
                            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v225.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                            require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v225.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v225.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(v222.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v228 = v222.data;
                            v222.word1 = MEM[64];
                            require(v222.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v229 = v222.data;
                            if (!v215) {
                                v230 = new struct(3);
                                v230.word1 = address(v211.word1);
                                v230.word2 = v58;
                                v230.word0 = 64;
                                require(!((v230 + 96 > uint64.max) | (v230 + 96 < v230)), Panic(65)); // failed memory allocation (too much memory)
                                require(1 < v222.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v231 = 64 + v222;
                            } else {
                                v230 = v232 = new struct(3);
                                v232.word1 = address(v211.word0);
                                v232.word2 = v58;
                                v232.word0 = 64;
                                require(!((v232 + 96 > uint64.max) | (v232 + 96 < v232)), Panic(65)); // failed memory allocation (too much memory)
                                require(1 < v222.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v231 = v233 = 64 + v222;
                            }
                            MEM[v231] = v230;
                            require(1 < MEM[v222], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            if (!v215) {
                                v234 = v235 = address(MEM[v210]);
                            } else {
                                v234 = address(MEM[v213]);
                            }
                            v236 = new struct(3);
                            v237 = v236.data;
                            v236.word1 = address(v234);
                            v236.word2 = 1;
                            v236.word0 = 64;
                            require(!((v236 + 96 > uint64.max) | (v236 + 96 < v236)), Panic(65)); // failed memory allocation (too much memory)
                            require(2 < MEM[v222], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            MEM[96 + v222] = v236;
                            require(2 < MEM[v222], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v238 = new struct(2);
                            require(!((v238 + 64 > uint64.max) | (v238 + 64 < v238)), Panic(65)); // failed memory allocation (too much memory)
                            v238.word0 = 1;
                            v239 = v240 = 0;
                            while (v239 < 32) {
                                MEM[v238 + v239 + 32] = 96;
                                v239 = v239 + 32;
                            }
                            MEM[MEM[64] + v226] = 64;
                            MEM[MEM[64] + v226 + 64] = MEM[v221];
                            MCOPY(MEM[64] + v226 + 64 + 32, 32 + v221, MEM[v221]);
                            MEM[32 + (MEM[v221] + (MEM[64] + v226 + 64))] = 0;
                            MEM[MEM[64] + v226 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v221]) + (MEM[64] + v226 + 64) + 32 - (MEM[64] + v226);
                            MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v221]) + (MEM[64] + v226 + 64) + 32] = MEM[v222];
                            v241 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v221]) + (MEM[64] + v226 + 64) + 32 + 32;
                            v242 = v243 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v221]) + (MEM[64] + v226 + 64) + 32 + (MEM[v222] << 5) + 32;
                            v244 = v222 + 32;
                            v245 = 0;
                            while (v245 < MEM[v222]) {
                                MEM[v241] = v242 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v221]) + (MEM[64] + v226 + 64) + 32) - 32;
                                MEM[v242] = MEM[MEM[v244]];
                                MCOPY(v242 + 32, 32 + MEM[v244], MEM[MEM[v244]]);
                                MEM[32 + (MEM[MEM[v244]] + v242)] = 0;
                                v242 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v244]]) + v242 + 32;
                                v244 = v244 + 32;
                                v241 = v241 + 32;
                                v245 = v245 + 1;
                            }
                            MEM[MEM[64]] = v242 - MEM[64] - 32;
                            require(!((MEM[64] + (v242 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v242 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(v238.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v246 = v238.data;
                            v238.word1 = MEM[64];
                            require(v238.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v247 = v238.data;
                            require(!0, Panic(65)); // failed memory allocation (too much memory)
                            if (!v215) {
                                v248 = v249 = address(MEM[v210]);
                            } else {
                                v248 = address(MEM[v213]);
                            }
                            v250, /* uint112 */ v153 = address(v248).balanceOf(address(msg.data[v152])).gas(msg.gas);
                            if (!v250) {
                                RETURNDATACOPY(MEM[64], v153, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v250) {
                                    if (v226 > RETURNDATASIZE()) {
                                        v226 = v251 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v226 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v226 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v226 - MEM[64] >= v226);
                                }
                                if (!v215) {
                                    require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                                    require(stor_4_0_19.code.size, v153, v153);
                                    MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                    MEM[MEM[64] + 4] = 96;
                                    MEM[MEM[64] + 4 + 96] = v252.length;
                                    MCOPY(MEM[64] + 4 + 96 + 32, v252.data, v252.length);
                                    MEM[32 + (v252.length + (MEM[64] + 4 + 96))] = 0;
                                    MEM[MEM[64] + 4 + 32] = 160;
                                    MEM[32 + (MEM[64] + 4 + 96) + 32] = v238.word0.length;
                                    v253 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                    v254 = v255 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                    v256 = v238.data;
                                    v257 = 0;
                                    while (v257 < v238.word0.length) {
                                        MEM[v253] = v254 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                        MEM[v254] = MEM[MEM[v256]];
                                        MCOPY(v254 + 32, 32 + MEM[v256], MEM[MEM[v256]]);
                                        MEM[32 + (MEM[MEM[v256]] + v254)] = 0;
                                        v254 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v256]]) + v254 + 32;
                                        v256 = v256 + 32;
                                        v253 = v253 + 32;
                                        v257 = v257 + 1;
                                    }
                                    MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                    v258 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v5302V0x53e3V0x5450V0x47260x4b09V0x2bf6 - MEM[64]], MEM[MEM[64]:MEM[64] + v5c00V0x5c270x4b09V0x2bf6]).value(v153).gas(msg.gas);
                                    if (!v258) {
                                        RETURNDATACOPY(MEM[64], v153, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else if (v258) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v153, v153, v153);
                                    }
                                } else {
                                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v153, v153);
                                    v259 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v58).value(v153).gas(msg.gas);
                                    if (!v259) {
                                        RETURNDATACOPY(MEM[64], v153, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v259) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(!v153, v153, v153);
                                        }
                                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                                        require(stor_4_0_19.code.size, v153, v153);
                                        MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                        MEM[MEM[64] + 4] = 96;
                                        MEM[MEM[64] + 4 + 96] = v252.length;
                                        MCOPY(MEM[64] + 4 + 96 + 32, v252.data, v252.length);
                                        MEM[32 + (v252.length + (MEM[64] + 4 + 96))] = 0;
                                        MEM[MEM[64] + 4 + 32] = 160;
                                        MEM[32 + (MEM[64] + 4 + 96) + 32] = v238.word0.length;
                                        v260 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                        v261 = v262 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                        v263 = v238.data;
                                        v264 = 0;
                                        while (v264 < v238.word0.length) {
                                            MEM[v260] = v261 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                            MEM[v261] = MEM[MEM[v263]];
                                            MCOPY(v261 + 32, 32 + MEM[v263], MEM[MEM[v263]]);
                                            MEM[32 + (MEM[MEM[v263]] + v261)] = 0;
                                            v261 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v263]]) + v261 + 32;
                                            v263 = v263 + 32;
                                            v260 = v260 + 32;
                                            v264 = v264 + 1;
                                        }
                                        MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                        v265 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v5302V0x53e3V0x5450V0x460e0x4b09V0x2bf6 - MEM[64]], MEM[MEM[64]:MEM[64] + v5c00V0x5c270x4b09V0x2bf6]).value(v58).gas(msg.gas);
                                        if (!v265) {
                                            RETURNDATACOPY(MEM[64], v153, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v265) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(!v153, v153, v153);
                                        }
                                    }
                                }
                                v266, /* uint112 */ v153 = address(v248).balanceOf(address(msg.data[v152])).gas(msg.gas);
                                if (!v266) {
                                    RETURNDATACOPY(MEM[64], v153, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v266) {
                                        if (v226 > RETURNDATASIZE()) {
                                            v226 = v267 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v226 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v226 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[64] + v226 - MEM[64] >= v226);
                                    }
                                    v201 = v268 = _SafeSub(v153, v153);
                                }
                            }
                        }
                    } else {
                        v269, /* uint112 */ v153 = varg10.balanceOf(address(msg.data[v152])).gas(msg.gas);
                        if (!v269) {
                            RETURNDATACOPY(MEM[64], v154, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v269) {
                                v270 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v270 = v271 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v270 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v270 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v270 - MEM[64] >= 32);
                                0x51d3(varg9, varg7, v58);
                            } else {
                                0x51d3(varg9, varg7, v58);
                            }
                            v272, /* uint112 */ v153, /* uint112 */ v153, /* uint32 */ v273 = varg7.getReserves().gas(msg.gas);
                            if (!v272) {
                                RETURNDATACOPY(MEM[64], v154, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v272) {
                                    if (96 > RETURNDATASIZE()) {
                                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        v274 = v275 = MEM[64] + RETURNDATASIZE();
                                    } else {
                                        require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + 96;
                                        v274 = v276 = MEM[64] + 96;
                                    }
                                    require(v274 - MEM[64] >= 96);
                                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                    require(!(v153 - uint112(v153)));
                                    require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
                                }
                                v277, /* uint112 */ v153 = varg7.token0().gas(msg.gas);
                                if (!v277) {
                                    RETURNDATACOPY(MEM[64], v154, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v277) {
                                        if (32 > RETURNDATASIZE()) {
                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            v278 = v279 = MEM[64] + RETURNDATASIZE();
                                        } else {
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + 32;
                                            v278 = v280 = MEM[64] + 32;
                                        }
                                        require(v278 - MEM[64] >= 32);
                                        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                    }
                                    if (address(v153) != varg9) {
                                        v281 = uint112(v153);
                                        v282 = uint112(v153);
                                    } else {
                                        v281 = v283 = uint112(v153);
                                        v282 = v284 = uint112(v153);
                                    }
                                    require(v58, Error('INSUFFICIENT_INPUT_AMOUNT'));
                                    v285 = bool(v281);
                                    if (v285) {
                                        v285 = v286 = bool(v282);
                                    }
                                    require(v285, Error('INSUFFICIENT_LIQUIDITY'));
                                    require(!(997 - v58 * 997 / v58), Panic(17)); // arithmetic overflow or underflow
                                    v287 = _SafeMul(v58 * 997, v282);
                                    require((1000 == v281 * 1000 / v281) | !v281, Panic(17)); // arithmetic overflow or underflow
                                    v288 = _SafeAdd(v281 * 1000, v58 * 997);
                                    v153 = v289 = _SafeDiv(v287, v288);
                                    if (address(v153) == varg9) {
                                    }
                                    require(varg7.code.size, v154, v154);
                                    v290 = varg7.swap(v153, v153, address(msg.data[v152]), 128, 0).value(v154).gas(msg.gas);
                                    if (!v290) {
                                        RETURNDATACOPY(MEM[64], v154, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v290) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(!v154, v154, v154);
                                        }
                                        v291, /* uint112 */ v153 = varg10.balanceOf(address(msg.data[v152])).gas(msg.gas);
                                        if (!v291) {
                                            RETURNDATACOPY(MEM[64], v154, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            if (v291) {
                                                v292 = 32;
                                                if (32 > RETURNDATASIZE()) {
                                                    v292 = v293 = RETURNDATASIZE();
                                                }
                                                require(!((MEM[64] + (v292 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v292 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                require(MEM[64] + v292 - MEM[64] >= 32);
                                            }
                                            v201 = v294 = _SafeSub(v153, v153);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    v5 = _SafeAdd(v5, v9);
                    if (v5 > varg15) {
                        MEM[MEM[128]] = 0x8199f5f300000000000000000000000000000000000000000000000000000000;
                        revert(MEM[128], 4);
                    } else {
                        v3 = _SafeAdd(v3, v201);
                        v5 = v5 + 1;
                    }
                }
            }
            if (varg17) {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                v295 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg17).value(MEM[128]).gas(msg.gas);
                require(v295, MEM[64], RETURNDATASIZE());
                if (v295) {
                    require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!MEM[128], MEM[128], MEM[128]);
                }
                v296 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg17).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v297 = v298 = new bytes[](RETURNDATASIZE());
                    require(!((v298 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v298 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v298)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v298.data, 0, RETURNDATASIZE());
                }
                if (!v296) {
                    MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg17);
                }
            }
            require(!(varg3 - address(varg3)));
            emit 0x1d5bd7bbbf1ed354c677ba890624a904587b5034e9fa1b3c3717e61d0e6a0c6f(varg10, address(varg3), v5, MEM[128], v3, varg16.length, varg17);
            return v3;
        }
    }
}

function withdrawWETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v0, v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        v1 = v2 = MEM[128];
        if (v0) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v3 - MEM[64] >= 32);
        }
        if (amount > v1) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            0x51d3(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), 0x8bdf3dae4f9817320cb0317521f56607d271fef, amount);
            emit Withdrawn(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), amount);
            return MEM[MEM[128]:MEM[128] + MEM[128]];
        }
    }
}

function universalRouter() public nonPayable { 
    require(msg.data.length - 4 >= MEM[128], MEM[128], MEM[128]);
    return _universalRouter;
}

function 0x28b5bd8d(address varg0, address varg1, address varg2, address varg3, address varg4, address varg5, address varg6, address varg7, address varg8, uint24 varg9) public nonPayable { 
    require(msg.data.length - 4 >= 320, MEM[128], MEM[128]);
    require(160 <= msg.data.length - 4, MEM[128], MEM[128]);
    require(varg7 <= uint64.max, MEM[128], MEM[128]);
    require(4 + varg7 + 31 < msg.data.length);
    require(varg7.length <= uint64.max);
    require((varg7.length << 5) + (4 + varg7) + 32 <= msg.data.length);
    require(varg8 <= uint64.max, MEM[128], MEM[128]);
    require(4 + varg8 + 31 < msg.data.length);
    require(varg8.length <= uint64.max);
    require((varg8.length << 5) + (4 + varg8) + 32 <= msg.data.length);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!varg7.length) {
        MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (varg7.length - varg8.length) {
        MEM[MEM[128]] = 0xa24a13a600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!varg5) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!stor_4_0_19) {
        MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = _SafeAdd(varg5, varg9);
        v4, v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v4, MEM[64], RETURNDATASIZE());
        v5 = v6 = MEM[128];
        if (v4) {
            v7 = v8 = 32;
            if (32 > RETURNDATASIZE()) {
                v7 = v9 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v7 - MEM[64] >= 32);
        }
        if (v5 < v3) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            v10 = v11 = MEM[128];
            while (v10 < varg8.length) {
                v12 = 0x3d81(varg8.data, varg8.length, v10);
                v10 = _SafeAdd(v10, msg.data[v12]);
                v10 = v10 + 1;
            }
            if (v10 - 10000) {
                MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
                revert(MEM[128], 4);
            } else {
                v13 = v14 = this;
                v15 = v16 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                v17 = v18 = varg0;
                v19 = v20 = varg0 != v18;
                require(!v20);
                v21 = v22 = 0;
                v23 = v24 = v18 == v16;
                if (v18 != v16) {
                    v23 = v25 = !v18;
                }
                v26 = 0x60000;
                MEM[v26 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                MEM[v26 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                require(!((v26 + 64 > uint64.max) | (v26 + 64 < v26)), Panic(65)); // failed memory allocation (too much memory)
                v27 = new struct(4);
                require(!((v27 + 128 > uint64.max) | (v27 + 128 < v27)), Panic(65)); // failed memory allocation (too much memory)
                v27.word0 = 3;
                v28 = v29 = 0;
                while (v28 < 96) {
                    MEM[v27 + v28 + 32] = 96;
                    v28 = v28 + 32;
                }
                v30 = new struct(5);
                require(!((v30 + 160 > uint64.max) | (v30 + 160 < v30)), Panic(65)); // failed memory allocation (too much memory)
                v31 = v32 = 4;
                require(msg.data.length - v32 >= 160);
                v33 = new struct(5);
                require(!((v33 + 160 > uint64.max) | (v33 + 160 < v33)), Panic(65)); // failed memory allocation (too much memory)
                v33.word0 = varg0;
                v33.word1 = varg1;
                require(!(varg2 - uint24(varg2)));
                v33.word2 = varg2;
                require(!(int24(varg3) - varg3));
                v33.word3 = varg3;
                v33.word4 = varg4;
                v30.word0 = v33;
                v30.word1 = bool(v23);
                v30.word2 = uint128(varg5);
                v30.word3 = uint128(varg6);
                v34 = v35 = 32;
                v36 = new struct(1);
                require(!((v36 + 32 > uint64.max) | (v36 + 32 < v36)), Panic(65)); // failed memory allocation (too much memory)
                v36.word0 = 0;
                v30.word4 = v36;
                MEM[MEM[64] + v35] = v35;
                MEM[MEM[64] + 64] = address(MEM[v30.word0]);
                MEM[MEM[64] + 64 + 32] = address(MEM[v30.word0 + 32]);
                MEM[MEM[64] + 64 + 64] = uint24(MEM[v30.word0 + 64]);
                MEM[MEM[64] + 64 + 96] = int24(MEM[v30.word0 + 96]);
                MEM[MEM[64] + 64 + 128] = address(MEM[128 + v30.word0]);
                MEM[MEM[64] + 64 + 160] = bool(v30.word1);
                MEM[MEM[64] + 64 + 192] = uint128(v30.word2);
                MEM[MEM[64] + 64 + 224] = uint128(v30.word3);
                MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                MEM[MEM[64] + 64 + 288] = MEM[v30.word4];
                MCOPY(MEM[64] + 64 + 288 + 32, 32 + v30.word4, MEM[v30.word4]);
                MEM[32 + (MEM[v30.word4] + (MEM[64] + 64 + 288))] = 0;
                MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v30.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v30.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v30.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(v27.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v37 = v27.data;
                v27.word1 = MEM[64];
                require(v27.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v38 = v27.data;
                if (!v23) {
                    v39 = v40 = new struct(3);
                    v40.word1 = varg1;
                    v40.word2 = varg5;
                    v40.word0 = 64;
                    require(!((v40 + 96 > uint64.max) | (v40 + 96 < v40)), Panic(65)); // failed memory allocation (too much memory)
                    require(1 < v27.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v41 = 64 + v27;
                } else {
                    v19 = 0;
                    v39 = new struct(3);
                    v39.word1 = varg0;
                    v39.word2 = varg5;
                    v39.word0 = 64;
                    require(!((v39 + 96 > uint64.max) | (v39 + 96 < v39)), Panic(65)); // failed memory allocation (too much memory)
                    require(1 < v27.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v41 = v42 = 64 + v27;
                }
                MEM[v41] = v39;
                require(1 < v27.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (!v23) {
                    require(!v19);
                    v43 = new struct(3);
                    v43.word1 = address(v44);
                    v43.word2 = varg6;
                    v43.word0 = 64;
                    require(!((v43 + 96 > uint64.max) | (v43 + 96 < v43)), Panic(65)); // failed memory allocation (too much memory)
                    require(2 < v27.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v45 = 96 + v27;
                } else {
                    v43 = v46 = new struct(3);
                    v46.word1 = varg1;
                    v46.word2 = varg6;
                    v46.word0 = 64;
                    require(!((v46 + 96 > uint64.max) | (v46 + 96 < v46)), Panic(65)); // failed memory allocation (too much memory)
                    require(2 < v27.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v45 = v47 = 96 + v27;
                }
                MEM[v45] = v43;
                require(2 < MEM[v27], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v48 = new struct(2);
                require(!((v48 + 64 > uint64.max) | (v48 + 64 < v48)), Panic(65)); // failed memory allocation (too much memory)
                v48.word0 = 1;
                v49 = v50 = 0;
                while (v49 < 32) {
                    MEM[v48 + v49 + 32] = 96;
                    v49 = v49 + 32;
                }
                MEM[MEM[64] + v34] = 64;
                MEM[MEM[64] + v34 + 64] = MEM[v26];
                MCOPY(MEM[64] + v34 + 64 + 32, 32 + v26, MEM[v26]);
                MEM[32 + (MEM[v26] + (MEM[64] + v34 + 64))] = 0;
                v51 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v26]) + (MEM[64] + v34 + 64) + 32;
                MEM[MEM[64] + v34 + 32] = v51 - (MEM[64] + v34);
                MEM[v51] = MEM[v27];
                v52 = v51 + 32;
                v53 = v54 = v51 + (MEM[v27] << 5) + 32;
                v55 = v27 + 32;
                v56 = 0;
                while (v56 < MEM[v27]) {
                    MEM[v52] = v53 - v51 - 32;
                    MEM[v53] = MEM[MEM[v55]];
                    MCOPY(v53 + 32, 32 + MEM[v55], MEM[MEM[v55]]);
                    MEM[32 + (MEM[MEM[v55]] + v53)] = 0;
                    v53 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v55]]) + v53 + 32;
                    v55 = v55 + 32;
                    v52 = v52 + 32;
                    v56 = v56 + 1;
                }
                MEM[MEM[64]] = v53 - MEM[64] - 32;
                require(!((MEM[64] + (v53 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v53 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(v48.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v57 = v48.data;
                v48.word1 = MEM[64];
                require(v48.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v58 = v48.data;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v59 = v60 = varg0;
                v59 = varg1;
                if (v60 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                    if (!bool(v60)) {
                    }
                } else if (v60 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                }
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v61, v62 = address(v59).balanceOf(address(v13)).gas(msg.gas);
                require(v61, MEM[64], RETURNDATASIZE());
                v62 = v63 = 0;
                if (v61) {
                    if (v34 > RETURNDATASIZE()) {
                        v34 = v64 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v34 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v34 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v34 - MEM[64] >= v34);
                }
                if (v17) {
                    require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                    require(stor_4_0_19.code.size);
                    v65 = new bytes[](v66.length);
                    MCOPY(v65.data, v66.data, v66.length);
                    v65[v66.length] = 0;
                    v67 = v65.data;
                    v68 = new uint256[](v48.word0.length);
                    v65[32][32] = v48.word0.length;
                    v69 = v68.data;
                    v70 = v71 = v68.data + 32;
                    v72 = v48.data;
                    v73 = 0;
                    while (v73 < v48.word0.length) {
                        MEM[v69] = v70 - v68 - 32;
                        MEM[v70] = MEM[MEM[v72]];
                        MCOPY(v70 + 32, 32 + MEM[v72], MEM[MEM[v72]]);
                        MEM[32 + (MEM[MEM[v72]] + v70)] = 0;
                        v70 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v72]]) + v70 + 32;
                        v72 = v72 + 32;
                        v69 = v69 + 32;
                        v73 = v73 + 1;
                    }
                    v74, /* uint256 */ v75 = stor_4_0_19.execute(v65, v68, block.timestamp + 1).gas(msg.gas);
                    require(v74, v75, RETURNDATASIZE());
                    if (v74) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v21 = v76 = 0;
                    }
                } else {
                    require(v15.code.size, v22, v22);
                    v77, /* uint256 */ v78 = v15.withdraw(v79).value(v22).gas(msg.gas);
                    require(v77, MEM[64], RETURNDATASIZE());
                    if (v77) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v22, v22, v22);
                    }
                    require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                    require(stor_4_0_19.code.size, v22, v22);
                    v80 = new bytes[](v66.length);
                    MCOPY(v80.data, v66.data, v66.length);
                    v80[v66.length] = 0;
                    v81 = v80.data;
                    v82 = new uint256[](v48.word0.length);
                    v80[32][32] = v48.word0.length;
                    v83 = v82.data;
                    v84 = v85 = v82.data + 32;
                    v86 = v48.data;
                    v87 = 0;
                    while (v87 < v48.word0.length) {
                        MEM[v83] = v84 - v82 - 32;
                        MEM[v84] = MEM[MEM[v86]];
                        MCOPY(v84 + 32, 32 + MEM[v86], MEM[MEM[v86]]);
                        MEM[32 + (MEM[MEM[v86]] + v84)] = 0;
                        v84 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v86]]) + v84 + 32;
                        v86 = v86 + 32;
                        v83 = v83 + 32;
                        v87 = v87 + 1;
                    }
                    v88, /* uint256 */ v89 = stor_4_0_19.execute(v80, v82, block.timestamp + 1).value(v79).gas(msg.gas);
                    require(v88, v89, RETURNDATASIZE());
                    if (v88) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v22, v22, v22);
                    }
                }
                v90, /* uint256 */ v91 = address(v59).balanceOf(address(v13)).gas(msg.gas);
                require(v90, MEM[64], RETURNDATASIZE());
                if (v90) {
                    if (v34 > RETURNDATASIZE()) {
                        v34 = v92 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v34 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v34 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v34 - MEM[64] >= v34);
                    v93 = v94 = _SafeSub(0x70a0823100000000000000000000000000000000000000000000000000000000, v62);
                } else {
                    v93 = v95 = _SafeSub(v21, v62);
                }
                if (v93 < varg6) {
                    MEM[MEM[128]] = 0xa0927dc300000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    v96 = v97 = varg0;
                    require(!(varg0 - v97));
                    v96 = v98 = varg1;
                    require(!(varg1 - v98));
                    v99 = v100 = v97 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    if (v97 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                        v99 = !v97;
                    }
                    if (v99) {
                    }
                    v101 = v102 = MEM[128];
                    while (v101 < varg7.length) {
                        v103 = 0x3d81(varg8.data, varg8.length, v101);
                        v104 = _SafeMul(v93, msg.data[v103]);
                        if (v104 / 10000) {
                            v105 = 0x3d81(varg7.data, varg7.length, v101);
                            require(!(msg.data[v105] - address(msg.data[v105])));
                            0x51d3(v96, msg.data[v105], v104 / 10000);
                        }
                        v101 = v101 + 1;
                    }
                    if (varg9) {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                        v106 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg9).value(MEM[128]).gas(msg.gas);
                        require(v106, MEM[64], RETURNDATASIZE());
                        if (v106) {
                            require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(!MEM[128], MEM[128], MEM[128]);
                        }
                        v107 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg9).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v108 = v109 = new bytes[](RETURNDATASIZE());
                            require(!((v109 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v109 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v109)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v109.data, 0, RETURNDATASIZE());
                        }
                        if (!v107) {
                            MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                            revert(MEM[128], 4);
                        } else {
                            emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg9);
                        }
                    }
                    emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(v96), varg5, v93, varg7.length, varg9, 6);
                    return v93;
                }
            }
        }
    }
}

function 0x26eb54b5(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    require(varg0 < 8, MEM[128], MEM[128]);
    require(varg0 < 8, Panic(33)); // failed convertion to enum type
    if (varg0 == 1) {
        v0 = v1 = 100;
    } else if (varg0 == 2) {
        v0 = v2 = 500;
    } else if (varg0 == 3) {
        v0 = v3 = 2500;
    } else if (varg0 == 4) {
        v0 = v4 = 3000;
    } else if (5 == varg0) {
        v0 = v5 = 10000;
    } else {
        v0 = v6 = 0;
    }
    return uint24(v0);
}

function 0x238c6060(address varg0, address varg1, address varg2, uint256 varg3, address varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11, address varg12, uint24 varg13, int24 varg14, address varg15, address varg16, address varg17) public nonPayable { 
    require(msg.data.length - 4 >= 576, MEM[128], MEM[128]);
    require(224 <= msg.data.length - 4, MEM[128], MEM[128]);
    require(msg.data.length - 228 >= 224, MEM[128], MEM[128]);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!varg14) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = _SafeAdd(varg14, varg17);
        v4, v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v4, MEM[64], RETURNDATASIZE());
        v5 = v6 = MEM[128];
        if (v4) {
            v7 = v8 = 32;
            if (32 > RETURNDATASIZE()) {
                v7 = v9 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v7 - MEM[64] >= 32);
        }
        if (v5 < v3) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            v10 = v11 = 0;
            require(varg1 < 8);
            if (varg1) {
                if (varg1 - 6) {
                    if (7 != varg1) {
                        v12 = v13 = varg0;
                        require(!(varg0 - v13));
                        require(!(varg3 - address(varg3)));
                        v14 = v15 = 0;
                        v16 = v17 = 64;
                        v18 = v19 = varg2 < address(varg3);
                        _algebraSwapCallback = varg0;
                        stor_6 = varg14;
                        if (v15 == v19) {
                            v20 = new struct(2);
                            v21 = v20.data;
                            v20.word1 = varg2;
                            v20.word0 = 32;
                            require(!((v20 + 64 > uint64.max) | (v20 + 64 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            v22 = MEM[v17];
                            MEM[v22] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v22 + 4] = address(this);
                            MEM[v22 + 4 + 32] = bool(v19);
                            MEM[v22 + 4 + 64] = varg14;
                            MEM[v22 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v22 + 4 + 128] = 160;
                            MEM[v22 + 4 + 160] = v20.word0.length;
                            MCOPY(v22 + 4 + 160 + 32, v20.data, v20.word0.length);
                            MEM[32 + (v20.word0.length + (v22 + 4 + 160))] = 0;
                            v23 = 32 + (v22 + 4 + 160) + 32;
                        } else {
                            v24 = new struct(2);
                            v25 = v24.data;
                            v24.word1 = varg2;
                            v24.word0 = 32;
                            require(!((v24 + 64 > uint64.max) | (v24 + 64 < v24)), Panic(65)); // failed memory allocation (too much memory)
                            v22 = v26 = MEM[v17];
                            MEM[v26] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v26 + 4] = address(this);
                            MEM[v26 + 4 + 32] = bool(v19);
                            MEM[v26 + 4 + 64] = varg14;
                            MEM[v26 + 4 + 96] = address(0x1000276a4);
                            MEM[v26 + 4 + 128] = 160;
                            MEM[v26 + 4 + 160] = v24.word0.length;
                            MCOPY(v26 + 4 + 160 + 32, v24.data, v24.word0.length);
                            MEM[32 + (v24.word0.length + (v26 + 4 + 160))] = 0;
                            v23 = v27 = 32 + (v26 + 4 + 160) + 32;
                        }
                        v28 = v12.call(MEM[v21472V0x4aeb0x3fb9V0x30ba:v21472V0x4aeb0x3fb9V0x30ba + v5302V0x5e340x4953V0x4aeb0x3fb9V0x30ba - v21472V0x4aeb0x3fb9V0x30ba], MEM[v21472V0x4aeb0x3fb9V0x30ba:v21472V0x4aeb0x3fb9V0x30ba + v4a900x3fb9_0x6V0x30ba]).value(v14).gas(msg.gas);
                        require(v28, MEM[64], RETURNDATASIZE());
                        v29 = v30 = 0x2152f;
                        v31 = v32 = 0;
                        v31 = v33 = 0;
                        if (v28) {
                            v34 = v35 = 19172;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v22 + 64 > uint64.max) | (v22 + 64 < v22)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v22 + 64;
                                v36 = v37 = v22 + 64;
                            }
                        }
                    } else {
                        v38 = v39 = varg0;
                        require(!(varg0 - v39));
                        require(!(varg3 - address(varg3)));
                        _algebraSwapCallback = varg0;
                        v18 = v40 = varg2 < address(varg3);
                        v41 = v42 = 64;
                        v43 = v44 = 0;
                        if (varg2 >= address(varg3)) {
                            v45 = new struct(2);
                            v46 = v45.data;
                            v45.word1 = varg2;
                            v45.word0 = 32;
                            require(!((v45 + 64 > uint64.max) | (v45 + 64 < v45)), Panic(65)); // failed memory allocation (too much memory)
                            v22 = v47 = MEM[v42];
                            MEM[v47] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v47 + 4] = address(this);
                            MEM[v47 + 4 + 32] = bool(v40);
                            MEM[v47 + 4 + 64] = varg14;
                            MEM[v47 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v47 + 4 + 128] = 160;
                            MEM[v47 + 4 + 160] = v45.word0.length;
                            MCOPY(v47 + 4 + 160 + 32, v45.data, v45.word0.length);
                            MEM[32 + (v45.word0.length + (v47 + 4 + 160))] = 0;
                            v48 = 32 + (v47 + 4 + 160) + 32;
                        } else {
                            v49 = new struct(2);
                            v50 = v49.data;
                            v49.word1 = varg2;
                            v49.word0 = 32;
                            require(!((v49 + 64 > uint64.max) | (v49 + 64 < v49)), Panic(65)); // failed memory allocation (too much memory)
                            v22 = v51 = MEM[v42];
                            MEM[v51] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v51 + 4] = address(this);
                            MEM[v51 + 4 + 32] = bool(v40);
                            MEM[v51 + 4 + 64] = varg14;
                            MEM[v51 + 4 + 96] = address(0x1000276a4);
                            MEM[v51 + 4 + 128] = 160;
                            MEM[v51 + 4 + 160] = v49.word0.length;
                            MCOPY(v51 + 4 + 160 + 32, v49.data, v49.word0.length);
                            MEM[32 + (v49.word0.length + (v51 + 4 + 160))] = 0;
                            v48 = v52 = 32 + (v51 + 4 + 160) + 32;
                            // Unknown jump to Block 0x49850x3fb9B0x30ba. Refer to 3-address code (TAC);
                        }
                        v53 = v38.call(MEM[v21472V0x4aeb0x3fb9V0x30ba:v21472V0x4aeb0x3fb9V0x30ba + v5302V0x5e340x4953V0x49e30x3fb9V0x30ba - v21472V0x4aeb0x3fb9V0x30ba], MEM[v21472V0x4aeb0x3fb9V0x30ba:v21472V0x4aeb0x3fb9V0x30ba + v49850x3fb9_0x6V0x30ba]).value(v43).gas(msg.gas);
                        require(v53, MEM[64], RETURNDATASIZE());
                        v29 = v54 = 0x214ab;
                        v31 = v55 = 0;
                        v31 = v56 = 0;
                        if (v53) {
                            v34 = 18908;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v22 + 64 > uint64.max) | (v22 + 64 < v22)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v22 + 64;
                                v36 = v57 = v22 + 64;
                            }
                        }
                    }
                    _algebraSwapCallback = 0;
                    if (v18) {
                    }
                    require(v31 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    v58 = v59 = 0 - v31;
                    // Unknown jump to Block ['0x214ab0x3fb9B0x30ba', '0x2152f0x3fb9B0x30ba']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x59fd0x3fb9B0x30ba. Refer to 3-address code (TAC);
                    require(!((v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v22)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v22 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v36 = v60 = v22 + RETURNDATASIZE();
                    require(v36 - v22 >= 64);
                    v31 = v61 = MEM[v22];
                    v31 = v62 = MEM[v22 + 32];
                    // Unknown jump to Block ['0x49dc0x3fb9B0x30ba', '0x4ae40x3fb9B0x30ba']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x4aa80x3fb9B0x30ba. Refer to 3-address code (TAC);
                    _algebraSwapCallback = 0;
                    stor_6 = 0;
                    if (v18) {
                    }
                } else {
                    v63 = new struct(5);
                    require(!((v63 + 160 > uint64.max) | (v63 + 160 < v63)), Panic(65)); // failed memory allocation (too much memory)
                    v63.word0 = 0;
                    v63.word1 = 0;
                    v63.word2 = 0;
                    v63.word3 = 0;
                    v63.word4 = 0;
                    v64 = v65 = varg2 != varg2;
                    require(!v65);
                    require(varg3 == address(varg3));
                    if (varg2 >= address(varg3)) {
                        v64 = v66 = 0;
                    } else {
                        require(!v65);
                        require(varg3 == address(varg3));
                    }
                    require(!(varg4 - uint24(varg4)));
                    require(!(varg5 - int24(varg5)));
                    v67 = v68 = new struct(5);
                    require(!((v68 + 160 > uint64.max) | (v68 + 160 < v68)), Panic(65)); // failed memory allocation (too much memory)
                    v68.word0 = address(v69);
                    v70 = v71 = v68 + 32;
                    v68.word1 = address(v69);
                    v68.word2 = uint24(varg4);
                    v68.word3 = int24(varg5);
                    v68.word4 = varg6;
                    require(!v64);
                    v72 = v73 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == varg2;
                    v72 = v74 = !address(v69);
                    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != varg2) {
                    }
                    if (!v72) {
                        0x5bbe(varg2, varg14);
                        require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                        v75, /* uint256 */ v76 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg2, stor_4_0_19, address(varg14), uint48(block.timestamp + 60)).gas(msg.gas);
                        require(v75, v76, RETURNDATASIZE());
                        if (v75) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            v10 = v77 = 0;
                        }
                    }
                    if (bool(address(v69))) {
                        v72 = v78 = address(v69) == varg2;
                    }
                    v79 = 0x60000;
                    MEM[v79 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                    MEM[v79 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                    require(!((v79 + 64 > uint64.max) | (v79 + 64 < v79)), Panic(65)); // failed memory allocation (too much memory)
                    v80 = new struct(4);
                    require(!((v80 + 128 > uint64.max) | (v80 + 128 < v80)), Panic(65)); // failed memory allocation (too much memory)
                    v80.word0 = 3;
                    v81 = v82 = 0;
                    while (v81 < 96) {
                        MEM[v80 + v81 + 32] = 96;
                        v81 = v81 + 32;
                    }
                    v83 = new struct(5);
                    require(!((v83 + 160 > uint64.max) | (v83 + 160 < v83)), Panic(65)); // failed memory allocation (too much memory)
                    v83.word0 = v68;
                    v83.word1 = bool(v72);
                    v83.word2 = uint128(varg14);
                    v83.word3 = 1;
                    v84 = 32;
                    v85 = new struct(1);
                    require(!((v85 + 32 > uint64.max) | (v85 + 32 < v85)), Panic(65)); // failed memory allocation (too much memory)
                    v85.word0 = v10;
                    v83.word4 = v85;
                    MEM[MEM[64] + v84] = v84;
                    MEM[MEM[64] + 64] = address(MEM[v83.word0]);
                    MEM[MEM[64] + 64 + 32] = address(MEM[v83.word0 + 32]);
                    MEM[MEM[64] + 64 + 64] = uint24(MEM[v83.word0 + 64]);
                    MEM[MEM[64] + 64 + 96] = int24(MEM[v83.word0 + 96]);
                    MEM[MEM[64] + 64 + 128] = address(MEM[128 + v83.word0]);
                    MEM[MEM[64] + 64 + 160] = bool(v83.word1);
                    MEM[MEM[64] + 64 + 192] = uint128(v83.word2);
                    MEM[MEM[64] + 64 + 224] = uint128(v83.word3);
                    MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                    MEM[MEM[64] + 64 + 288] = MEM[v83.word4];
                    MCOPY(MEM[64] + 64 + 288 + 32, 32 + v83.word4, MEM[v83.word4]);
                    MEM[32 + (MEM[v83.word4] + (MEM[64] + 64 + 288))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v83.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v83.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v83.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v80.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v86 = v80.data;
                    v80.word1 = MEM[64];
                    require(v80.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v87 = v80.data;
                    if (!v72) {
                        v88 = new struct(3);
                        v88.word1 = address(v68.word1);
                        v88.word2 = varg14;
                        v88.word0 = 64;
                        require(!((v88 + 96 > uint64.max) | (v88 + 96 < v88)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < v80.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v89 = 64 + v80;
                    } else {
                        v88 = v90 = new struct(3);
                        v90.word1 = address(v68.word0);
                        v90.word2 = varg14;
                        v90.word0 = 64;
                        require(!((v90 + 96 > uint64.max) | (v90 + 96 < v90)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < v80.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v89 = v91 = 64 + v80;
                    }
                    MEM[v89] = v88;
                    require(1 < MEM[v80], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v72) {
                        v92 = v93 = address(MEM[v67]);
                    } else {
                        v92 = address(MEM[v70]);
                    }
                    v94 = new struct(3);
                    v95 = v94.data;
                    v94.word1 = address(v92);
                    v94.word2 = 1;
                    v94.word0 = 64;
                    require(!((v94 + 96 > uint64.max) | (v94 + 96 < v94)), Panic(65)); // failed memory allocation (too much memory)
                    require(2 < MEM[v80], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[96 + v80] = v94;
                    require(2 < MEM[v80], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v96 = new struct(2);
                    require(!((v96 + 64 > uint64.max) | (v96 + 64 < v96)), Panic(65)); // failed memory allocation (too much memory)
                    v96.word0 = 1;
                    v97 = v98 = 0;
                    while (v97 < 32) {
                        MEM[v96 + v97 + 32] = 96;
                        v97 = v97 + 32;
                    }
                    MEM[MEM[64] + v84] = 64;
                    MEM[MEM[64] + v84 + 64] = MEM[v79];
                    MCOPY(MEM[64] + v84 + 64 + 32, 32 + v79, MEM[v79]);
                    MEM[32 + (MEM[v79] + (MEM[64] + v84 + 64))] = 0;
                    MEM[MEM[64] + v84 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32 - (MEM[64] + v84);
                    MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32] = MEM[v80];
                    v99 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32 + 32;
                    v100 = v101 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32 + (MEM[v80] << 5) + 32;
                    v102 = v80 + 32;
                    v103 = 0;
                    while (v103 < MEM[v80]) {
                        MEM[v99] = v100 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32) - 32;
                        MEM[v100] = MEM[MEM[v102]];
                        MCOPY(v100 + 32, 32 + MEM[v102], MEM[MEM[v102]]);
                        MEM[32 + (MEM[MEM[v102]] + v100)] = 0;
                        v100 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v102]]) + v100 + 32;
                        v102 = v102 + 32;
                        v99 = v99 + 32;
                        v103 = v103 + 1;
                    }
                    MEM[MEM[64]] = v100 - MEM[64] - 32;
                    require(!((MEM[64] + (v100 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v100 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v96.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v104 = v96.data;
                    v96.word1 = MEM[64];
                    require(v96.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v105 = v96.data;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    if (!v72) {
                        v106 = v107 = address(MEM[v67]);
                    } else {
                        v106 = address(MEM[v70]);
                    }
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    v108, /* uint112 */ v10 = address(v106).balanceOf(address(this)).gas(msg.gas);
                    require(v108, MEM[64], RETURNDATASIZE());
                    if (v108) {
                        if (v84 > RETURNDATASIZE()) {
                            v84 = v109 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v84 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v84 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v84 - MEM[64] >= v84);
                    }
                    if (!v72) {
                        require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v10, v10);
                        v110 = new bytes[](v111.length);
                        MCOPY(v110.data, v111.data, v111.length);
                        v110[v111.length] = 0;
                        v112 = v110.data;
                        v113 = new uint256[](v96.word0.length);
                        v110[32][32] = v96.word0.length;
                        v114 = v113.data;
                        v115 = v116 = v113.data + 32;
                        v117 = v96.data;
                        v118 = 0;
                        while (v118 < v96.word0.length) {
                            MEM[v114] = v115 - v113 - 32;
                            MEM[v115] = MEM[MEM[v117]];
                            MCOPY(v115 + 32, 32 + MEM[v117], MEM[MEM[v117]]);
                            MEM[32 + (MEM[MEM[v117]] + v115)] = 0;
                            v115 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v117]]) + v115 + 32;
                            v117 = v117 + 32;
                            v114 = v114 + 32;
                            v118 = v118 + 1;
                        }
                        v119, /* uint256 */ v120 = stor_4_0_19.execute(v110, v113, block.timestamp + 1).value(v10).gas(msg.gas);
                        require(v119, v120, RETURNDATASIZE());
                        if (v119) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v10, v10, v10);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v10, v10);
                        v121, /* uint256 */ v122 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v123).value(v10).gas(msg.gas);
                        require(v121, v122, RETURNDATASIZE());
                        if (v121) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v10, v10, v10);
                        }
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v10, v10);
                        v124 = new bytes[](v111.length);
                        MCOPY(v124.data, v111.data, v111.length);
                        v124[v111.length] = 0;
                        v125 = v124.data;
                        v126 = new uint256[](v96.word0.length);
                        v124[32][32] = v96.word0.length;
                        v127 = v126.data;
                        v128 = v129 = v126.data + 32;
                        v130 = v96.data;
                        v131 = 0;
                        while (v131 < v96.word0.length) {
                            MEM[v127] = v128 - v126 - 32;
                            MEM[v128] = MEM[MEM[v130]];
                            MCOPY(v128 + 32, 32 + MEM[v130], MEM[MEM[v130]]);
                            MEM[32 + (MEM[MEM[v130]] + v128)] = 0;
                            v128 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v130]]) + v128 + 32;
                            v130 = v130 + 32;
                            v127 = v127 + 32;
                            v131 = v131 + 1;
                        }
                        v132, /* uint256 */ v133 = stor_4_0_19.execute(v124, v126, block.timestamp + 1).value(v123).gas(msg.gas);
                        require(v132, v133, RETURNDATASIZE());
                        if (v132) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v10, v10, v10);
                        }
                    }
                    v134, /* uint112 */ v10 = address(v106).balanceOf(address(this)).gas(msg.gas);
                    require(v134, MEM[64], RETURNDATASIZE());
                    if (v134) {
                        if (v84 > RETURNDATASIZE()) {
                            v84 = v135 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v84 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v84 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v84 - MEM[64] >= v84);
                    }
                    v58 = v136 = _SafeSub(v10, v10);
                }
            } else {
                require(!(varg3 - address(varg3)), v11, v11);
                v137, /* uint112 */ v10 = address(varg3).balanceOf(address(this)).gas(msg.gas);
                require(v137, MEM[64], RETURNDATASIZE());
                if (v137) {
                    v138 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v138 = v139 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v138 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v138 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v138 - MEM[64] >= 32);
                }
                0x51d3(varg2, varg0, varg14);
                v140, /* uint112 */ v10, /* uint112 */ v10, /* uint32 */ v141 = varg0.getReserves().gas(msg.gas);
                require(v140, MEM[64], RETURNDATASIZE());
                if (v140) {
                    if (96 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v142 = v143 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 96;
                        v142 = v144 = MEM[64] + 96;
                    }
                    require(v142 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v10 - uint112(v10)));
                    require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
                }
                v145, /* uint112 */ v10 = varg0.token0().gas(msg.gas);
                require(v145, MEM[64], RETURNDATASIZE());
                if (v145) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v146 = v147 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v146 = v148 = MEM[64] + 32;
                    }
                    require(v146 - MEM[64] >= 32);
                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                }
                if (address(v10) != varg2) {
                    v149 = uint112(v10);
                    v150 = uint112(v10);
                } else {
                    v149 = v151 = uint112(v10);
                    v150 = v152 = uint112(v10);
                }
                require(varg14, Error('INSUFFICIENT_INPUT_AMOUNT'));
                v153 = bool(v149);
                if (v153) {
                    v153 = v154 = bool(v150);
                }
                require(v153, Error('INSUFFICIENT_LIQUIDITY'));
                require(!(997 - varg14 * 997 / varg14), Panic(17)); // arithmetic overflow or underflow
                v155 = _SafeMul(varg14 * 997, v150);
                require((1000 == v149 * 1000 / v149) | !v149, Panic(17)); // arithmetic overflow or underflow
                v156 = _SafeAdd(v149 * 1000, varg14 * 997);
                v10 = v157 = _SafeDiv(v155, v156);
                if (address(v10) == varg2) {
                }
                require(varg0.code.size, v11, v11);
                v158, /* uint256 */ v159 = varg0.swap(v10, v10, address(this), 128, 0).value(v11).gas(msg.gas);
                require(v158, v159, RETURNDATASIZE());
                if (v158) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v11, v11, v11);
                }
                v160, /* uint112 */ v10 = address(varg3).balanceOf(address(this)).gas(msg.gas);
                require(v160, MEM[64], RETURNDATASIZE());
                if (v160) {
                    v161 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v161 = v162 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v161 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v161 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v161 - MEM[64] >= 32);
                }
                v58 = v163 = _SafeSub(v10, v10);
            }
            if (!v58) {
                MEM[MEM[128]] = 0x81ceff3000000000000000000000000000000000000000000000000000000000;
                revert(MEM[128], 4);
            } else {
                v164 = v165 = 0;
                require(varg8 < 8);
                if (varg8) {
                    if (varg8 - 6) {
                        if (7 != varg8) {
                            v166 = v167 = varg7;
                            require(!(varg7 - v167));
                            v168 = v169 = 0;
                            v170 = v171 = 64;
                            v172 = v173 = varg9 < varg10;
                            _algebraSwapCallback = varg7;
                            stor_6 = v58;
                            if (v169 == v173) {
                                v174 = new struct(2);
                                v175 = v174.data;
                                v174.word1 = varg9;
                                v174.word0 = 32;
                                require(!((v174 + 64 > uint64.max) | (v174 + 64 < v174)), Panic(65)); // failed memory allocation (too much memory)
                                v176 = MEM[v171];
                                MEM[v176] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v176 + 4] = varg16;
                                MEM[v176 + 4 + 32] = bool(v173);
                                MEM[v176 + 4 + 64] = v58;
                                MEM[v176 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                MEM[v176 + 4 + 128] = 160;
                                MEM[v176 + 4 + 160] = v174.word0.length;
                                MCOPY(v176 + 4 + 160 + 32, v174.data, v174.word0.length);
                                MEM[32 + (v174.word0.length + (v176 + 4 + 160))] = 0;
                                v177 = 32 + (v176 + 4 + 160) + 32;
                            } else {
                                v178 = new struct(2);
                                v179 = v178.data;
                                v178.word1 = varg9;
                                v178.word0 = 32;
                                require(!((v178 + 64 > uint64.max) | (v178 + 64 < v178)), Panic(65)); // failed memory allocation (too much memory)
                                v176 = v180 = MEM[v171];
                                MEM[v180] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v180 + 4] = varg16;
                                MEM[v180 + 4 + 32] = bool(v173);
                                MEM[v180 + 4 + 64] = v58;
                                MEM[v180 + 4 + 96] = address(0x1000276a4);
                                MEM[v180 + 4 + 128] = 160;
                                MEM[v180 + 4 + 160] = v178.word0.length;
                                MCOPY(v180 + 4 + 160 + 32, v178.data, v178.word0.length);
                                MEM[32 + (v178.word0.length + (v180 + 4 + 160))] = 0;
                                v177 = v181 = 32 + (v180 + 4 + 160) + 32;
                            }
                            v182 = v166.call(MEM[v21472V0x4aeb0x4b09V0x30cb:v21472V0x4aeb0x4b09V0x30cb + v5302V0x5e340x4953V0x4aeb0x4b09V0x30cb - v21472V0x4aeb0x4b09V0x30cb], MEM[v21472V0x4aeb0x4b09V0x30cb:v21472V0x4aeb0x4b09V0x30cb + v4a900x4b09_0x6V0x30cb]).value(v168).gas(msg.gas);
                            require(v182, MEM[64], RETURNDATASIZE());
                            v183 = v184 = 0x2152f;
                            v185 = v186 = 0;
                            v185 = v187 = 0;
                            if (v182) {
                                v188 = v189 = 19172;
                                if (64 <= RETURNDATASIZE()) {
                                    require(!((v176 + 64 > uint64.max) | (v176 + 64 < v176)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v176 + 64;
                                    v190 = v191 = v176 + 64;
                                }
                            }
                        } else {
                            v192 = v193 = varg7;
                            require(!(varg7 - v193));
                            _algebraSwapCallback = varg7;
                            v172 = v194 = varg9 < varg10;
                            v195 = v196 = 64;
                            v197 = v198 = 0;
                            if (varg9 >= varg10) {
                                v199 = new struct(2);
                                v200 = v199.data;
                                v199.word1 = varg9;
                                v199.word0 = 32;
                                require(!((v199 + 64 > uint64.max) | (v199 + 64 < v199)), Panic(65)); // failed memory allocation (too much memory)
                                v176 = v201 = MEM[v196];
                                MEM[v201] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v201 + 4] = varg16;
                                MEM[v201 + 4 + 32] = bool(v194);
                                MEM[v201 + 4 + 64] = v58;
                                MEM[v201 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                MEM[v201 + 4 + 128] = 160;
                                MEM[v201 + 4 + 160] = v199.word0.length;
                                MCOPY(v201 + 4 + 160 + 32, v199.data, v199.word0.length);
                                MEM[32 + (v199.word0.length + (v201 + 4 + 160))] = 0;
                                v202 = 32 + (v201 + 4 + 160) + 32;
                            } else {
                                v203 = new struct(2);
                                v204 = v203.data;
                                v203.word1 = varg9;
                                v203.word0 = 32;
                                require(!((v203 + 64 > uint64.max) | (v203 + 64 < v203)), Panic(65)); // failed memory allocation (too much memory)
                                v176 = v205 = MEM[v196];
                                MEM[v205] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v205 + 4] = varg16;
                                MEM[v205 + 4 + 32] = bool(v194);
                                MEM[v205 + 4 + 64] = v58;
                                MEM[v205 + 4 + 96] = address(0x1000276a4);
                                MEM[v205 + 4 + 128] = 160;
                                MEM[v205 + 4 + 160] = v203.word0.length;
                                MCOPY(v205 + 4 + 160 + 32, v203.data, v203.word0.length);
                                MEM[32 + (v203.word0.length + (v205 + 4 + 160))] = 0;
                                v202 = v206 = 32 + (v205 + 4 + 160) + 32;
                            }
                            v207 = v192.call(MEM[v21472V0x4aeb0x4b09V0x30cb:v21472V0x4aeb0x4b09V0x30cb + v5302V0x5e340x4953V0x49e30x4b09V0x30cb - v21472V0x4aeb0x4b09V0x30cb], MEM[v21472V0x4aeb0x4b09V0x30cb:v21472V0x4aeb0x4b09V0x30cb + v49850x4b09_0x6V0x30cb]).value(v197).gas(msg.gas);
                            require(v207, MEM[64], RETURNDATASIZE());
                            v183 = v208 = 0x214ab;
                            v185 = v209 = 0;
                            v185 = v210 = 0;
                            if (v207) {
                                v188 = 18908;
                                if (64 <= RETURNDATASIZE()) {
                                    require(!((v176 + 64 > uint64.max) | (v176 + 64 < v176)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v176 + 64;
                                    v190 = v211 = v176 + 64;
                                }
                            }
                        }
                        _algebraSwapCallback = 0;
                        if (v172) {
                        }
                        require(v185 != int256.min, Panic(17)); // arithmetic overflow or underflow
                        v212 = v213 = 0 - v185;
                        // Unknown jump to Block ['0x214ab0x4b09B0x30cb', '0x2152f0x4b09B0x30cb']. Refer to 3-address code (TAC);
                        // Unknown jump to Block 0x59fd0x4b09B0x30cb. Refer to 3-address code (TAC);
                        require(!((v176 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v176 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v176)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v176 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v190 = v214 = v176 + RETURNDATASIZE();
                        require(v190 - v176 >= 64);
                        v185 = v215 = MEM[v176];
                        v185 = v216 = MEM[v176 + 32];
                        // Unknown jump to Block ['0x49dc0x4b09B0x30cb', '0x4ae40x4b09B0x30cb']. Refer to 3-address code (TAC);
                        // Unknown jump to Block 0x4aa80x4b09B0x30cb. Refer to 3-address code (TAC);
                        _algebraSwapCallback = 0;
                        stor_6 = 0;
                        if (v172) {
                        }
                    } else {
                        v217 = new struct(5);
                        require(!((v217 + 160 > uint64.max) | (v217 + 160 < v217)), Panic(65)); // failed memory allocation (too much memory)
                        v217.word0 = 0;
                        v217.word1 = 0;
                        v217.word2 = 0;
                        v217.word3 = 0;
                        v217.word4 = 0;
                        v218 = v219 = varg9 != varg9;
                        require(!v219);
                        if (varg9 >= varg10) {
                            v218 = v220 = 0;
                        } else {
                            require(!v219);
                        }
                        require(!(varg11 - uint24(varg11)));
                        require(!(varg12 - int24(varg12)));
                        require(!(varg13 - address(varg13)));
                        v221 = v222 = new struct(5);
                        require(!((v222 + 160 > uint64.max) | (v222 + 160 < v222)), Panic(65)); // failed memory allocation (too much memory)
                        v222.word0 = address(v223);
                        v224 = v225 = v222 + 32;
                        v222.word1 = address(v223);
                        v222.word2 = uint24(varg11);
                        v222.word3 = int24(varg12);
                        v222.word4 = address(varg13);
                        require(!v218);
                        v226 = v227 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == varg9;
                        v226 = v228 = !address(v223);
                        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != varg9) {
                        }
                        if (!v226) {
                            0x5bbe(varg9, v58);
                            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                            require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                            v229, /* uint256 */ v230 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg9, stor_4_0_19, address(v58), uint48(block.timestamp + 60)).gas(msg.gas);
                            require(v229, v230, RETURNDATASIZE());
                            if (v229) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                v164 = v231 = 0;
                            }
                        }
                        if (bool(address(v223))) {
                            v226 = v232 = address(v223) == varg9;
                        }
                        v233 = 0x60000;
                        MEM[v233 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                        MEM[v233 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                        require(!((v233 + 64 > uint64.max) | (v233 + 64 < v233)), Panic(65)); // failed memory allocation (too much memory)
                        v234 = new struct(4);
                        require(!((v234 + 128 > uint64.max) | (v234 + 128 < v234)), Panic(65)); // failed memory allocation (too much memory)
                        v234.word0 = 3;
                        v235 = v236 = 0;
                        while (v235 < 96) {
                            MEM[v234 + v235 + 32] = 96;
                            v235 = v235 + 32;
                        }
                        v237 = new struct(5);
                        require(!((v237 + 160 > uint64.max) | (v237 + 160 < v237)), Panic(65)); // failed memory allocation (too much memory)
                        v237.word0 = v222;
                        v237.word1 = bool(v226);
                        v237.word2 = uint128(v58);
                        v237.word3 = 1;
                        v238 = 32;
                        v239 = new struct(1);
                        require(!((v239 + 32 > uint64.max) | (v239 + 32 < v239)), Panic(65)); // failed memory allocation (too much memory)
                        v239.word0 = v164;
                        v237.word4 = v239;
                        MEM[MEM[64] + v238] = v238;
                        MEM[MEM[64] + 64] = address(MEM[v237.word0]);
                        MEM[MEM[64] + 64 + 32] = address(MEM[v237.word0 + 32]);
                        MEM[MEM[64] + 64 + 64] = uint24(MEM[v237.word0 + 64]);
                        MEM[MEM[64] + 64 + 96] = int24(MEM[v237.word0 + 96]);
                        MEM[MEM[64] + 64 + 128] = address(MEM[128 + v237.word0]);
                        MEM[MEM[64] + 64 + 160] = bool(v237.word1);
                        MEM[MEM[64] + 64 + 192] = uint128(v237.word2);
                        MEM[MEM[64] + 64 + 224] = uint128(v237.word3);
                        MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                        MEM[MEM[64] + 64 + 288] = MEM[v237.word4];
                        MCOPY(MEM[64] + 64 + 288 + 32, 32 + v237.word4, MEM[v237.word4]);
                        MEM[32 + (MEM[v237.word4] + (MEM[64] + 64 + 288))] = 0;
                        MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v237.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                        require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v237.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v237.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(v234.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v240 = v234.data;
                        v234.word1 = MEM[64];
                        require(v234.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v241 = v234.data;
                        if (!v226) {
                            v242 = new struct(3);
                            v242.word1 = address(v222.word1);
                            v242.word2 = v58;
                            v242.word0 = 64;
                            require(!((v242 + 96 > uint64.max) | (v242 + 96 < v242)), Panic(65)); // failed memory allocation (too much memory)
                            require(1 < v234.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v243 = 64 + v234;
                        } else {
                            v242 = v244 = new struct(3);
                            v244.word1 = address(v222.word0);
                            v244.word2 = v58;
                            v244.word0 = 64;
                            require(!((v244 + 96 > uint64.max) | (v244 + 96 < v244)), Panic(65)); // failed memory allocation (too much memory)
                            require(1 < v234.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v243 = v245 = 64 + v234;
                        }
                        MEM[v243] = v242;
                        require(1 < MEM[v234], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (!v226) {
                            v246 = v247 = address(MEM[v221]);
                        } else {
                            v246 = address(MEM[v224]);
                        }
                        v248 = new struct(3);
                        v249 = v248.data;
                        v248.word1 = address(v246);
                        v248.word2 = 1;
                        v248.word0 = 64;
                        require(!((v248 + 96 > uint64.max) | (v248 + 96 < v248)), Panic(65)); // failed memory allocation (too much memory)
                        require(2 < MEM[v234], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        MEM[96 + v234] = v248;
                        require(2 < MEM[v234], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v250 = new struct(2);
                        require(!((v250 + 64 > uint64.max) | (v250 + 64 < v250)), Panic(65)); // failed memory allocation (too much memory)
                        v250.word0 = 1;
                        v251 = v252 = 0;
                        while (v251 < 32) {
                            MEM[v250 + v251 + 32] = 96;
                            v251 = v251 + 32;
                        }
                        MEM[MEM[64] + v238] = 64;
                        MEM[MEM[64] + v238 + 64] = MEM[v233];
                        MCOPY(MEM[64] + v238 + 64 + 32, 32 + v233, MEM[v233]);
                        MEM[32 + (MEM[v233] + (MEM[64] + v238 + 64))] = 0;
                        MEM[MEM[64] + v238 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v238 + 64) + 32 - (MEM[64] + v238);
                        MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v238 + 64) + 32] = MEM[v234];
                        v253 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v238 + 64) + 32 + 32;
                        v254 = v255 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v238 + 64) + 32 + (MEM[v234] << 5) + 32;
                        v256 = v234 + 32;
                        v257 = 0;
                        while (v257 < MEM[v234]) {
                            MEM[v253] = v254 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v238 + 64) + 32) - 32;
                            MEM[v254] = MEM[MEM[v256]];
                            MCOPY(v254 + 32, 32 + MEM[v256], MEM[MEM[v256]]);
                            MEM[32 + (MEM[MEM[v256]] + v254)] = 0;
                            v254 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v256]]) + v254 + 32;
                            v256 = v256 + 32;
                            v253 = v253 + 32;
                            v257 = v257 + 1;
                        }
                        MEM[MEM[64]] = v254 - MEM[64] - 32;
                        require(!((MEM[64] + (v254 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v254 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(v250.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v258 = v250.data;
                        v250.word1 = MEM[64];
                        require(v250.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v259 = v250.data;
                        require(!0, Panic(65)); // failed memory allocation (too much memory)
                        if (!v226) {
                            v260 = v261 = address(MEM[v221]);
                        } else {
                            v260 = address(MEM[v224]);
                        }
                        MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                        v262, /* uint112 */ v164 = address(v260).balanceOf(varg16).gas(msg.gas);
                        require(v262, MEM[64], RETURNDATASIZE());
                        if (v262) {
                            if (v238 > RETURNDATASIZE()) {
                                v238 = v263 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v238 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v238 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v238 - MEM[64] >= v238);
                        }
                        if (!v226) {
                            require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                            require(stor_4_0_19.code.size, v164, v164);
                            v264 = new bytes[](v265.length);
                            MCOPY(v264.data, v265.data, v265.length);
                            v264[v265.length] = 0;
                            v266 = v264.data;
                            v267 = new uint256[](v250.word0.length);
                            v264[32][32] = v250.word0.length;
                            v268 = v267.data;
                            v269 = v270 = v267.data + 32;
                            v271 = v250.data;
                            v272 = 0;
                            while (v272 < v250.word0.length) {
                                MEM[v268] = v269 - v267 - 32;
                                MEM[v269] = MEM[MEM[v271]];
                                MCOPY(v269 + 32, 32 + MEM[v271], MEM[MEM[v271]]);
                                MEM[32 + (MEM[MEM[v271]] + v269)] = 0;
                                v269 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v271]]) + v269 + 32;
                                v271 = v271 + 32;
                                v268 = v268 + 32;
                                v272 = v272 + 1;
                            }
                            v273, /* uint256 */ v274 = stor_4_0_19.execute(v264, v267, block.timestamp + 1).value(v164).gas(msg.gas);
                            require(v273, v274, RETURNDATASIZE());
                            if (v273) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v164, v164, v164);
                            }
                        } else {
                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v164, v164);
                            v275, /* uint256 */ v276 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v58).value(v164).gas(msg.gas);
                            require(v275, v276, RETURNDATASIZE());
                            if (v275) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v164, v164, v164);
                            }
                            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                            require(stor_4_0_19.code.size, v164, v164);
                            v277 = new bytes[](v265.length);
                            MCOPY(v277.data, v265.data, v265.length);
                            v277[v265.length] = 0;
                            v278 = v277.data;
                            v279 = new uint256[](v250.word0.length);
                            v277[32][32] = v250.word0.length;
                            v280 = v279.data;
                            v281 = v282 = v279.data + 32;
                            v283 = v250.data;
                            v284 = 0;
                            while (v284 < v250.word0.length) {
                                MEM[v280] = v281 - v279 - 32;
                                MEM[v281] = MEM[MEM[v283]];
                                MCOPY(v281 + 32, 32 + MEM[v283], MEM[MEM[v283]]);
                                MEM[32 + (MEM[MEM[v283]] + v281)] = 0;
                                v281 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v283]]) + v281 + 32;
                                v283 = v283 + 32;
                                v280 = v280 + 32;
                                v284 = v284 + 1;
                            }
                            v285, /* uint256 */ v286 = stor_4_0_19.execute(v277, v279, block.timestamp + 1).value(v58).gas(msg.gas);
                            require(v285, v286, RETURNDATASIZE());
                            if (v285) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v164, v164, v164);
                            }
                        }
                        v287, /* uint112 */ v164 = address(v260).balanceOf(varg16).gas(msg.gas);
                        require(v287, MEM[64], RETURNDATASIZE());
                        if (v287) {
                            if (v238 > RETURNDATASIZE()) {
                                v238 = v288 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v238 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v238 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v238 - MEM[64] >= v238);
                        }
                        v212 = v289 = _SafeSub(v164, v164);
                    }
                } else {
                    v290, /* uint112 */ v164 = varg10.balanceOf(varg16).gas(msg.gas);
                    require(v290, MEM[64], RETURNDATASIZE());
                    if (v290) {
                        v291 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v291 = v292 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v291 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v291 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v291 - MEM[64] >= 32);
                        0x51d3(varg9, varg7, v58);
                    } else {
                        0x51d3(varg9, varg7, v58);
                    }
                    v293, /* uint112 */ v164, /* uint112 */ v164, /* uint32 */ v294 = varg7.getReserves().gas(msg.gas);
                    require(v293, MEM[64], RETURNDATASIZE());
                    if (v293) {
                        if (96 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v295 = v296 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 96;
                            v295 = v297 = MEM[64] + 96;
                        }
                        require(v295 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v164 - uint112(v164)));
                        require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
                    }
                    v298, /* uint112 */ v164 = varg7.token0().gas(msg.gas);
                    require(v298, MEM[64], RETURNDATASIZE());
                    if (v298) {
                        if (32 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v299 = v300 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 32;
                            v299 = v301 = MEM[64] + 32;
                        }
                        require(v299 - MEM[64] >= 32);
                        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                    }
                    if (address(v164) != varg9) {
                        v302 = uint112(v164);
                        v303 = uint112(v164);
                    } else {
                        v302 = v304 = uint112(v164);
                        v303 = v305 = uint112(v164);
                    }
                    require(v58, Error('INSUFFICIENT_INPUT_AMOUNT'));
                    v306 = bool(v302);
                    if (v306) {
                        v306 = v307 = bool(v303);
                    }
                    require(v306, Error('INSUFFICIENT_LIQUIDITY'));
                    require(!(997 - v58 * 997 / v58), Panic(17)); // arithmetic overflow or underflow
                    v308 = _SafeMul(v58 * 997, v303);
                    require((1000 == v302 * 1000 / v302) | !v302, Panic(17)); // arithmetic overflow or underflow
                    v309 = _SafeAdd(v302 * 1000, v58 * 997);
                    v164 = v310 = _SafeDiv(v308, v309);
                    if (address(v164) == varg9) {
                    }
                    require(varg7.code.size, v165, v165);
                    v311, /* uint256 */ v312 = varg7.swap(v164, v164, varg16, 128, 0).value(v165).gas(msg.gas);
                    require(v311, v312, RETURNDATASIZE());
                    if (v311) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v165, v165, v165);
                    }
                    v313, /* uint112 */ v164 = varg10.balanceOf(varg16).gas(msg.gas);
                    require(v313, MEM[64], RETURNDATASIZE());
                    if (v313) {
                        v314 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v314 = v315 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v314 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v314 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v314 - MEM[64] >= 32);
                    }
                    v212 = v316 = _SafeSub(v164, v164);
                }
                if (v212 < varg15) {
                    MEM[MEM[128]] = 0xa0927dc300000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    if (varg17) {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                        v317 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg17).value(MEM[128]).gas(msg.gas);
                        require(v317, MEM[64], RETURNDATASIZE());
                        if (v317) {
                            require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(!MEM[128], MEM[128], MEM[128]);
                        }
                        v318 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg17).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v319 = v320 = new bytes[](RETURNDATASIZE());
                            require(!((v320 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v320 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v320)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v320.data, 0, RETURNDATASIZE());
                        }
                        if (!v318) {
                            MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                            revert(MEM[128], 4);
                        } else {
                            emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg17);
                        }
                    }
                    require(!(varg3 - address(varg3)));
                    emit 0x1d5bd7bbbf1ed354c677ba890624a904587b5034e9fa1b3c3717e61d0e6a0c6f(varg10, address(varg3), varg14, v58, v212, 1, varg17);
                    return v212;
                }
            }
        }
    }
}

function 0x22178ac1(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    require(varg0 <= uint64.max, MEM[128], MEM[128]);
    require(msg.data.length - varg0 - 4 >= 288, MEM[128], MEM[128]);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
        require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
        require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
        if (!msg.data[4 + varg0 + msg.data[varg0 + 132]]) {
            MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
            require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
            if (msg.data[4 + varg0 + msg.data[varg0 + 132]] - msg.data[4 + varg0 + msg.data[varg0 + 164]]) {
                MEM[MEM[128]] = 0xa24a13a600000000000000000000000000000000000000000000000000000000;
                revert(MEM[128], 4);
            } else if (!msg.data[varg0 + 68]) {
                MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
                revert(MEM[128], 4);
            } else {
                v3 = _SafeAdd(msg.data[varg0 + 68], msg.data[varg0 + 196]);
                v4, v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                require(v4, MEM[64], RETURNDATASIZE());
                v5 = v6 = MEM[128];
                if (v4) {
                    v7 = v8 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v7 = v9 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v7 - MEM[64] >= 32);
                }
                if (v5 < v3) {
                    MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    v10 = v11 = MEM[128];
                    while (1) {
                        require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
                        require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
                        require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
                        if (v10 >= msg.data[4 + varg0 + msg.data[varg0 + 164]]) {
                            if (v10 - 10000) {
                                MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
                                revert(MEM[128], 4);
                            } else {
                                require(msg.data[varg0 + 228] < 8, MEM[128], MEM[128]);
                                v12 = v13 = MEM[128];
                                if (msg.data[varg0 + 228]) {
                                    require(!(varg0.length - address(varg0.length)));
                                    require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                                    v12 = v14 = MEM[128];
                                    v15 = v16 = 0x5a23(varg0.length, msg.data[varg0.data], msg.data[varg0 + 68], this);
                                } else {
                                    require(!(varg0.length - address(varg0.length)));
                                    require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                                    v17, v18 = address(msg.data[varg0.data]).balanceOf(this).gas(msg.gas);
                                    require(v17, MEM[64], RETURNDATASIZE());
                                    v18 = v19 = MEM[128];
                                    if (v17) {
                                        v20 = v21 = 32;
                                        if (32 > RETURNDATASIZE()) {
                                            v20 = v22 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[64] + v20 - MEM[64] >= 32);
                                    }
                                    0x51d3(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0.length, msg.data[varg0 + 68]);
                                    v23 = 0x5c49(varg0.length, this);
                                    v24, v25 = address(msg.data[varg0.data]).balanceOf(this).gas(msg.gas);
                                    require(v24, MEM[64], RETURNDATASIZE());
                                    v25 = v26 = MEM[128];
                                    if (v24) {
                                        v27 = v28 = 32;
                                        if (32 > RETURNDATASIZE()) {
                                            v27 = v29 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[64] + v27 - MEM[64] >= 32);
                                    }
                                    v15 = v30 = _SafeSub(v25, v18);
                                }
                                if (v15 < msg.data[varg0 + 100]) {
                                    MEM[MEM[128]] = 0xa0927dc300000000000000000000000000000000000000000000000000000000;
                                    revert(MEM[128], 4);
                                } else {
                                    v31 = v32 = MEM[128];
                                    while (1) {
                                        require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                                        require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                                        require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                                        if (v31 >= msg.data[4 + varg0 + msg.data[varg0 + 132]]) {
                                            if (msg.data[varg0 + 196]) {
                                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                                                v33 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(msg.data[varg0 + 196]).value(MEM[128]).gas(msg.gas);
                                                require(v33, MEM[64], RETURNDATASIZE());
                                                if (v33) {
                                                    require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(!MEM[128], MEM[128], MEM[128]);
                                                }
                                                v34 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(msg.data[varg0 + 196]).gas(msg.gas);
                                                if (RETURNDATASIZE()) {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v35 = v36 = new bytes[](RETURNDATASIZE());
                                                    require(!((v36 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v36 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v36)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v36.data, 0, RETURNDATASIZE());
                                                }
                                                if (!v34) {
                                                    MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                                                    revert(MEM[128], 4);
                                                } else {
                                                    emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, msg.data[varg0 + 196]);
                                                }
                                            }
                                            require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                                            require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                                            require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                                            require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                                            require(!v12, MEM[128], MEM[128]);
                                            require(msg.data[varg0 + 228] < 8, Panic(33)); // failed convertion to enum type
                                            emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(msg.data[varg0.data]), msg.data[varg0 + 68], v15, msg.data[4 + varg0 + msg.data[varg0 + 132]], msg.data[varg0 + 196], msg.data[varg0 + 228]);
                                            return v15;
                                        } else {
                                            require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
                                            require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
                                            require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
                                            v37 = 0x3d81(32 + (4 + varg0 + msg.data[varg0 + 164]), msg.data[4 + varg0 + msg.data[varg0 + 164]], v31);
                                            v38 = _SafeMul(v15, msg.data[v37]);
                                            if (v38 / 10000) {
                                                require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                                                require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                                                require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                                                require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                                                v39 = 0x3d81(32 + (4 + varg0 + msg.data[varg0 + 132]), msg.data[4 + varg0 + msg.data[varg0 + 132]], v31);
                                                require(!(msg.data[v39] - address(msg.data[v39])));
                                                0x51d3(msg.data[varg0.data], msg.data[v39], v38 / 10000);
                                            }
                                            v31 = v31 + 1;
                                        }
                                    }
                                }
                            }
                        } else {
                            require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
                            require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
                            require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
                            v40 = 0x3d81(32 + (4 + varg0 + msg.data[varg0 + 164]), msg.data[4 + varg0 + msg.data[varg0 + 164]], v10);
                            v10 = _SafeAdd(v10, msg.data[v40]);
                            v10 = v10 + 1;
                        }
                    }
                }
            }
        }
    }
}

function operators(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    MEM[MEM[128]] = varg0;
    MEM[32] = MEM[128];
    return bool(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
}

function 0x0f754fde(struct(7) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    v0 = 4 + varg0;
    require(msg.data.length - varg0 - 4 >= 608);
    v1 = v2 = !mapping_0[msg.sender];
    if (v2) {
        v1 = v3 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v1, Unauthorized());
    require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
    require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
    require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
    require(msg.data[v0 + msg.data[varg0 + 516]], InvalidParams());
    require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
    require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
    require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
    require(msg.data[varg0 + 548] < msg.data.length - v0 - 31);
    require(msg.data[v0 + msg.data[varg0 + 548]] <= uint64.max);
    require(32 + (v0 + msg.data[varg0 + 548]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 548]] << 5));
    require(!(msg.data[v0 + msg.data[varg0 + 516]] - msg.data[v0 + msg.data[varg0 + 548]]), ArrayLengthMismatch());
    v4 = v5 = msg.data[varg0 + 452];
    require(v5, InvalidAmount());
    v6 = _SafeAdd(v5, msg.data[varg0 + 580]);
    v7, v8 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    v8 = v9 = 0;
    if (v7) {
        v10 = v11 = 32;
        if (32 > RETURNDATASIZE()) {
            v10 = v12 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v10 - MEM[64] >= 32);
    }
    require(v8 >= v6, InsufficientBalance());
    v13 = v14 = 0;
    while (1) {
        require(msg.data[varg0 + 548] < msg.data.length - v0 - 31);
        require(msg.data[v0 + msg.data[varg0 + 548]] <= uint64.max);
        require(32 + (v0 + msg.data[varg0 + 548]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 548]] << 5));
        if (v13 >= msg.data[v0 + msg.data[varg0 + 548]]) {
            require(!(v13 - 10000), InvalidParams());
            v15 = v16 = 0;
            require(varg0.word1 < 8);
            if (varg0.word1) {
                if (varg0.word1 - 6) {
                    v17 = v18 = 0;
                    v19 = v20 = 64;
                    if (7 - varg0.word1) {
                        require(!(varg0.word0 - address(varg0.word0)));
                        require(!(varg0.word2 - address(varg0.word2)));
                        require(!(varg0.word3 - address(varg0.word3)));
                        v21 = v22 = address(varg0.word0);
                        _algebraSwapCallback = varg0.word0;
                        stor_6 = v5;
                        v23 = v24 = address(varg0.word2) < address(varg0.word3);
                        if (v24 == v18) {
                            v25 = new struct(2);
                            v26 = v25.data;
                            v25.word1 = address(varg0.word2);
                            v25.word0 = 32;
                            require(!((v25 + 64 > uint64.max) | (v25 + 64 < v25)), Panic(65)); // failed memory allocation (too much memory)
                            v27 = MEM[v20];
                            MEM[v27] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v27 + 4] = address(this);
                            MEM[v27 + 4 + 32] = bool(v24);
                            MEM[v27 + 4 + 64] = v5;
                            MEM[v27 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v27 + 4 + 128] = 160;
                            MEM[v27 + 4 + 160] = v25.word0.length;
                            MCOPY(v27 + 4 + 160 + 32, v25.data, v25.word0.length);
                            MEM[32 + (v25.word0.length + (v27 + 4 + 160))] = 0;
                            v28 = 32 + (v27 + 4 + 160) + 32;
                        } else {
                            v29 = new struct(2);
                            v30 = v29.data;
                            v29.word1 = address(varg0.word2);
                            v29.word0 = 32;
                            require(!((v29 + 64 > uint64.max) | (v29 + 64 < v29)), Panic(65)); // failed memory allocation (too much memory)
                            v27 = v31 = MEM[v20];
                            MEM[v31] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v31 + 4] = address(this);
                            MEM[v31 + 4 + 32] = bool(v24);
                            MEM[v31 + 4 + 64] = v5;
                            MEM[v31 + 4 + 96] = address(0x1000276a4);
                            MEM[v31 + 4 + 128] = 160;
                            MEM[v31 + 4 + 160] = v29.word0.length;
                            MCOPY(v31 + 4 + 160 + 32, v29.data, v29.word0.length);
                            MEM[32 + (v29.word0.length + (v31 + 4 + 160))] = 0;
                            v28 = v32 = 32 + (v31 + 4 + 160) + 32;
                        }
                        v33 = v21.call(MEM[v21472V0x4aeb0x4d9eV0x3841:v21472V0x4aeb0x4d9eV0x3841 + v5302V0x5e340x4953V0x4aeb0x4d9eV0x3841 - v21472V0x4aeb0x4d9eV0x3841], MEM[v21472V0x4aeb0x4d9eV0x3841:v21472V0x4aeb0x4d9eV0x3841 + v49850x4d9e_0x6V0x3841]).value(v17).gas(msg.gas);
                        require(v33, MEM[64], RETURNDATASIZE());
                        v34 = v35 = 0x2152f;
                        v36 = v37 = 0;
                        v36 = v38 = 0;
                        if (v33) {
                            v39 = v40 = 19172;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v27 + 64 > uint64.max) | (v27 + 64 < v27)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v27 + 64;
                                v41 = v42 = v27 + 64;
                            }
                        }
                    } else {
                        require(!(varg0.word0 - address(varg0.word0)));
                        require(!(varg0.word2 - address(varg0.word2)));
                        require(!(varg0.word3 - address(varg0.word3)));
                        v43 = v44 = address(varg0.word0);
                        _algebraSwapCallback = varg0.word0;
                        v23 = v45 = address(varg0.word2) < address(varg0.word3);
                        if (v45 == v18) {
                            v46 = new struct(2);
                            v47 = v46.data;
                            v46.word1 = address(varg0.word2);
                            v46.word0 = 32;
                            require(!((v46 + 64 > uint64.max) | (v46 + 64 < v46)), Panic(65)); // failed memory allocation (too much memory)
                            v27 = v48 = MEM[v20];
                            MEM[v48] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v48 + 4] = address(this);
                            MEM[v48 + 4 + 32] = bool(v45);
                            MEM[v48 + 4 + 64] = v5;
                            MEM[v48 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v48 + 4 + 128] = 160;
                            MEM[v48 + 4 + 160] = v46.word0.length;
                            MCOPY(v48 + 4 + 160 + 32, v46.data, v46.word0.length);
                            MEM[32 + (v46.word0.length + (v48 + 4 + 160))] = 0;
                            v49 = 32 + (v48 + 4 + 160) + 32;
                        } else {
                            v50 = new struct(2);
                            v51 = v50.data;
                            v50.word1 = address(varg0.word2);
                            v50.word0 = 32;
                            require(!((v50 + 64 > uint64.max) | (v50 + 64 < v50)), Panic(65)); // failed memory allocation (too much memory)
                            v27 = v52 = MEM[v20];
                            MEM[v52] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v52 + 4] = address(this);
                            MEM[v52 + 4 + 32] = bool(v45);
                            MEM[v52 + 4 + 64] = v5;
                            MEM[v52 + 4 + 96] = address(0x1000276a4);
                            MEM[v52 + 4 + 128] = 160;
                            MEM[v52 + 4 + 160] = v50.word0.length;
                            MCOPY(v52 + 4 + 160 + 32, v50.data, v50.word0.length);
                            MEM[32 + (v50.word0.length + (v52 + 4 + 160))] = 0;
                            v49 = v53 = 32 + (v52 + 4 + 160) + 32;
                        }
                        v54 = v43.call(MEM[v21472V0x4aeb0x4d9eV0x3841:v21472V0x4aeb0x4d9eV0x3841 + v5302V0x5e340x4953V0x49e30x4d9eV0x3841 - v21472V0x4aeb0x4d9eV0x3841], MEM[v21472V0x4aeb0x4d9eV0x3841:v21472V0x4aeb0x4d9eV0x3841 + v49850x4d9e_0x6V0x3841]).value(v17).gas(msg.gas);
                        require(v54, MEM[64], RETURNDATASIZE());
                        v34 = v55 = 0x214ab;
                        v36 = v56 = 0;
                        v36 = v57 = 0;
                        if (v54) {
                            v39 = 18908;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v27 + 64 > uint64.max) | (v27 + 64 < v27)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v27 + 64;
                                v41 = v58 = v27 + 64;
                            }
                        }
                    }
                    _algebraSwapCallback = 0;
                    if (v23) {
                    }
                    require(v36 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    v59 = v60 = 0 - v36;
                    // Unknown jump to Block ['0x214ab0x4d9eB0x3841', '0x2152f0x4d9eB0x3841']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x59fd0x4d9eB0x3841. Refer to 3-address code (TAC);
                    require(!((v27 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v27 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v27)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v27 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v41 = v61 = v27 + RETURNDATASIZE();
                    require(v41 - v27 >= 64);
                    v36 = v62 = MEM[v27];
                    v36 = v63 = MEM[v27 + 32];
                    // Unknown jump to Block ['0x49dc0x4d9eB0x3841', '0x4ae40x4d9eB0x3841']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x4aa80x4d9eB0x3841. Refer to 3-address code (TAC);
                    _algebraSwapCallback = 0;
                    stor_6 = 0;
                    if (v23) {
                    }
                } else {
                    v64 = new struct(5);
                    require(!((v64 + 160 > uint64.max) | (v64 + 160 < v64)), Panic(65)); // failed memory allocation (too much memory)
                    v64.word0 = 0;
                    v64.word1 = 0;
                    v64.word2 = 0;
                    v64.word3 = 0;
                    v64.word4 = 0;
                    require(!(varg0.word2 - address(varg0.word2)));
                    require(!(varg0.word3 - address(varg0.word3)));
                    if (address(varg0.word2) >= address(varg0.word3)) {
                        v65 = varg0.word3;
                        require(!(v65 - address(v65)));
                        v66 = varg0.word2;
                        require(!(v66 - address(v66)));
                    } else {
                        v65 = v67 = varg0.word2;
                        require(!(v67 - address(v67)));
                        v66 = v68 = varg0.word3;
                        require(!(v68 - address(v68)));
                    }
                    require(!(varg0.word4 - uint24(varg0.word4)));
                    require(!(varg0.word5 - int24(varg0.word5)));
                    require(!(varg0.word6 - address(varg0.word6)));
                    v69 = v70 = new struct(5);
                    require(!((v70 + 160 > uint64.max) | (v70 + 160 < v70)), Panic(65)); // failed memory allocation (too much memory)
                    v70.word0 = address(v65);
                    v71 = v72 = v70 + 32;
                    v70.word1 = address(v66);
                    v70.word2 = uint24(varg0.word4);
                    v70.word3 = int24(varg0.word5);
                    v70.word4 = address(varg0.word6);
                    require(!(varg0.word2 - address(varg0.word2)));
                    v73 = v74 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == address(varg0.word2);
                    v73 = v75 = !address(v65);
                    if (v74) {
                        if (bool(address(v65))) {
                            // Unknown jump to Block 0x48020x4d9eB0x3841. Refer to 3-address code (TAC);
                        }
                    } else if (v74) {
                        if (!bool(address(v65))) {
                            v76 = v77 = 0x60000;
                            MEM[v77 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                            MEM[v77 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                            require(!((v77 + 64 > uint64.max) | (v77 + 64 < v77)), Panic(65)); // failed memory allocation (too much memory)
                            v78 = v79 = MEM[64];
                            require(!((v79 + 128 > uint64.max) | (v79 + 128 < v79)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v79 + 128;
                            MEM[v79] = 3;
                            v80 = v81 = 0;
                            while (v80 < 96) {
                                MEM[v79 + v80 + 32] = 96;
                                v80 = v80 + 32;
                            }
                        }
                    }
                    if (bool(address(v65))) {
                        // Unknown jump to Block 0x47fb0x4d9eB0x3841. Refer to 3-address code (TAC);
                    }
                    v76 = 0x60000;
                    MEM[v76 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                    MEM[v76 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                    require(!((v76 + 64 > uint64.max) | (v76 + 64 < v76)), Panic(65)); // failed memory allocation (too much memory)
                    v78 = MEM[64];
                    require(!((v78 + 128 > uint64.max) | (v78 + 128 < v78)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v78 + 128;
                    MEM[v78] = 3;
                    v82 = v83 = 0;
                    while (v82 < 96) {
                        MEM[v78 + v82 + 32] = 96;
                        v82 = v82 + 32;
                    }
                    v84 = new struct(5);
                    require(!((v84 + 160 > uint64.max) | (v84 + 160 < v84)), Panic(65)); // failed memory allocation (too much memory)
                    v84.word0 = v70;
                    v84.word1 = bool(v73);
                    v84.word2 = uint128(v5);
                    v84.word3 = 1;
                    v85 = 32;
                    v86 = new struct(1);
                    require(!((v86 + 32 > uint64.max) | (v86 + 32 < v86)), Panic(65)); // failed memory allocation (too much memory)
                    v86.word0 = v15;
                    v84.word4 = v86;
                    MEM[MEM[64] + v85] = v85;
                    MEM[MEM[64] + 64] = address(MEM[v84.word0]);
                    MEM[MEM[64] + 64 + 32] = address(MEM[v84.word0 + 32]);
                    MEM[MEM[64] + 64 + 64] = uint24(MEM[v84.word0 + 64]);
                    MEM[MEM[64] + 64 + 96] = int24(MEM[v84.word0 + 96]);
                    MEM[MEM[64] + 64 + 128] = address(MEM[128 + v84.word0]);
                    MEM[MEM[64] + 64 + 160] = bool(v84.word1);
                    MEM[MEM[64] + 64 + 192] = uint128(v84.word2);
                    MEM[MEM[64] + 64 + 224] = uint128(v84.word3);
                    MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                    MEM[MEM[64] + 64 + 288] = MEM[v84.word4];
                    MCOPY(MEM[64] + 64 + 288 + 32, 32 + v84.word4, MEM[v84.word4]);
                    MEM[32 + (MEM[v84.word4] + (MEM[64] + 64 + 288))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v84.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v84.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v84.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v84.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[v78], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[32 + v78] = MEM[64];
                    require(MEM[v78], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v73) {
                        v87 = new struct(3);
                        v87.word1 = address(MEM[v88]);
                        v87.word2 = v5;
                        v87.word0 = 64;
                        require(!((v87 + 96 > uint64.max) | (v87 + 96 < v87)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < MEM[v89], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v90 = 64 + v89;
                    } else {
                        v87 = v91 = new struct(3);
                        v91.word1 = address(v70.word0);
                        v91.word2 = v5;
                        v91.word0 = 64;
                        require(!((v91 + 96 > uint64.max) | (v91 + 96 < v91)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < MEM[v92], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v90 = v93 = 64 + v92;
                    }
                    MEM[v90] = v87;
                    require(1 < MEM[v78], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v73) {
                        v94 = v95 = address(MEM[v69]);
                    } else {
                        v94 = address(MEM[v71]);
                    }
                    v96 = new struct(3);
                    v97 = v96.data;
                    v96.word1 = address(v94);
                    v96.word2 = 1;
                    v96.word0 = 64;
                    require(!((v96 + 96 > uint64.max) | (v96 + 96 < v96)), Panic(65)); // failed memory allocation (too much memory)
                    require(2 < MEM[v78], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[96 + v78] = v96;
                    require(2 < MEM[v78], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v98 = new struct(2);
                    require(!((v98 + 64 > uint64.max) | (v98 + 64 < v98)), Panic(65)); // failed memory allocation (too much memory)
                    v98.word0 = 1;
                    v99 = v100 = 0;
                    while (v99 < 32) {
                        MEM[v98 + v99 + 32] = 96;
                        v99 = v99 + 32;
                    }
                    MEM[MEM[64] + v85] = 64;
                    MEM[MEM[64] + v85 + 64] = MEM[v76];
                    MCOPY(MEM[64] + v85 + 64 + 32, 32 + v76, MEM[v76]);
                    MEM[32 + (MEM[v76] + (MEM[64] + v85 + 64))] = 0;
                    MEM[MEM[64] + v85 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v85 + 64) + 32 - (MEM[64] + v85);
                    MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v85 + 64) + 32] = MEM[v78];
                    v101 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v85 + 64) + 32 + 32;
                    v102 = v103 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v85 + 64) + 32 + (MEM[v78] << 5) + 32;
                    v104 = v78 + 32;
                    v105 = 0;
                    while (v105 < MEM[v78]) {
                        MEM[v101] = v102 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v85 + 64) + 32) - 32;
                        MEM[v102] = MEM[MEM[v104]];
                        MCOPY(v102 + 32, 32 + MEM[v104], MEM[MEM[v104]]);
                        MEM[32 + (MEM[MEM[v104]] + v102)] = 0;
                        v102 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v104]]) + v102 + 32;
                        v104 = v104 + 32;
                        v101 = v101 + 32;
                        v105 = v105 + 1;
                    }
                    MEM[MEM[64]] = v102 - MEM[64] - 32;
                    require(!((MEM[64] + (v102 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v102 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v98.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v106 = v98.data;
                    v98.word1 = MEM[64];
                    require(v98.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v107 = v98.data;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    if (!v73) {
                        v108 = v109 = address(MEM[v69]);
                    } else {
                        v108 = address(MEM[v71]);
                    }
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    v110, /* uint112 */ v15 = address(v108).balanceOf(address(this)).gas(msg.gas);
                    require(v110, MEM[64], RETURNDATASIZE());
                    if (v110) {
                        if (v85 > RETURNDATASIZE()) {
                            v85 = v111 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v85 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v85 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v85 - MEM[64] >= v85);
                    }
                    if (!v73) {
                        require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v15, v15);
                        v112 = new bytes[](v113.length);
                        MCOPY(v112.data, v113.data, v113.length);
                        v112[v113.length] = 0;
                        v114 = v112.data;
                        v115 = new uint256[](v98.word0.length);
                        v112[32][32] = v98.word0.length;
                        v116 = v115.data;
                        v117 = v118 = v115.data + 32;
                        v119 = v98.data;
                        v120 = 0;
                        while (v120 < v98.word0.length) {
                            MEM[v116] = v117 - v115 - 32;
                            MEM[v117] = MEM[MEM[v119]];
                            MCOPY(v117 + 32, 32 + MEM[v119], MEM[MEM[v119]]);
                            MEM[32 + (MEM[MEM[v119]] + v117)] = 0;
                            v117 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v119]]) + v117 + 32;
                            v119 = v119 + 32;
                            v116 = v116 + 32;
                            v120 = v120 + 1;
                        }
                        v121, /* uint256 */ v122 = stor_4_0_19.execute(v112, v115, block.timestamp + 1).value(v15).gas(msg.gas);
                        require(v121, v122, RETURNDATASIZE());
                        if (v121) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v15, v15, v15);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v15, v15);
                        v123, /* uint256 */ v124 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v4).value(v15).gas(msg.gas);
                        require(v123, v124, RETURNDATASIZE());
                        if (v123) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v15, v15, v15);
                        }
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v15, v15);
                        v125 = new bytes[](v113.length);
                        MCOPY(v125.data, v113.data, v113.length);
                        v125[v113.length] = 0;
                        v126 = v125.data;
                        v127 = new uint256[](v98.word0.length);
                        v125[32][32] = v98.word0.length;
                        v128 = v127.data;
                        v129 = v130 = v127.data + 32;
                        v131 = v98.data;
                        v132 = 0;
                        while (v132 < v98.word0.length) {
                            MEM[v128] = v129 - v127 - 32;
                            MEM[v129] = MEM[MEM[v131]];
                            MCOPY(v129 + 32, 32 + MEM[v131], MEM[MEM[v131]]);
                            MEM[32 + (MEM[MEM[v131]] + v129)] = 0;
                            v129 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v131]]) + v129 + 32;
                            v131 = v131 + 32;
                            v128 = v128 + 32;
                            v132 = v132 + 1;
                        }
                        v133, /* uint256 */ v134 = stor_4_0_19.execute(v125, v127, block.timestamp + 1).value(v4).gas(msg.gas);
                        require(v133, v134, RETURNDATASIZE());
                        if (v133) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v15, v15, v15);
                        }
                    }
                    v135, /* uint112 */ v15 = address(v108).balanceOf(address(this)).gas(msg.gas);
                    require(v135, MEM[64], RETURNDATASIZE());
                    if (v135) {
                        if (v85 > RETURNDATASIZE()) {
                            v85 = v136 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v85 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v85 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v85 - MEM[64] >= v85);
                    }
                    v59 = v137 = _SafeSub(v15, v15);
                    v73 = v138 = address(v65) == address(varg0.word2);
                    // Unknown jump to Block 0x43c30x4d9eB0x3841. Refer to 3-address code (TAC);
                    0x5bbe(varg0.word2, v5);
                    require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                    v139, /* uint256 */ v140 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(varg0.word2), stor_4_0_19, address(v5), uint48(block.timestamp + 60)).gas(msg.gas);
                    require(v139, v140, RETURNDATASIZE());
                    if (v139) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v15 = v141 = 0;
                    }
                }
            } else {
                require(!(varg0.word0 - address(varg0.word0)));
                require(!(varg0.word2 - address(varg0.word2)));
                require(!(varg0.word3 - address(varg0.word3)));
                v142, /* uint112 */ v15 = address(varg0.word3).balanceOf(address(this)).gas(msg.gas);
                require(v142, MEM[64], RETURNDATASIZE());
                if (v142) {
                    v143 = v144 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v143 = v145 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v143 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v143 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v143 - MEM[64] >= 32);
                }
                0x51d3(varg0.word2, varg0.word0, v5);
                v146, /* uint112 */ v15, /* uint112 */ v15, /* uint32 */ v147 = address(varg0.word0).getReserves().gas(msg.gas);
                require(v146, MEM[64], RETURNDATASIZE());
                if (v146) {
                    if (96 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v148 = v149 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 96;
                        v148 = v150 = MEM[64] + 96;
                    }
                    require(v148 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v15 - uint112(v15)));
                    require(!(v147 - uint32(v147)));
                }
                v151, /* uint112 */ v15 = address(varg0.word0).token0().gas(msg.gas);
                require(v151, MEM[64], RETURNDATASIZE());
                if (v151) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v152 = v153 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v152 = v154 = MEM[64] + 32;
                    }
                    require(v152 - MEM[64] >= 32);
                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                }
                if (address(varg0.word2) != address(v15)) {
                    v155 = uint112(v15);
                    v156 = uint112(v15);
                } else {
                    v155 = v157 = uint112(v15);
                    v156 = v158 = uint112(v15);
                }
                require(v5, Error('INSUFFICIENT_INPUT_AMOUNT'));
                v159 = bool(v155);
                if (v159) {
                    v159 = v160 = bool(v156);
                }
                require(v159, Error('INSUFFICIENT_LIQUIDITY'));
                require(!(997 - v5 * 997 / v5), Panic(17)); // arithmetic overflow or underflow
                v161 = _SafeMul(v5 * 997, v156);
                require((1000 == v155 * 1000 / v155) | !v155, Panic(17)); // arithmetic overflow or underflow
                v162 = _SafeAdd(v155 * 1000, v5 * 997);
                v15 = v163 = _SafeDiv(v161, v162);
                if (address(varg0.word2) == address(v15)) {
                }
                require((address(varg0.word0)).code.size, v16, v16);
                v164, /* uint256 */ v165 = address(varg0.word0).swap(v15, v15, address(this), 128, 0).value(v16).gas(msg.gas);
                require(v164, v165, RETURNDATASIZE());
                if (v164) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v16, v16, v16);
                }
                v166, /* uint112 */ v15 = address(varg0.word3).balanceOf(address(this)).gas(msg.gas);
                require(v166, MEM[64], RETURNDATASIZE());
                if (v166) {
                    v167 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v167 = v168 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v167 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v167 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v167 - MEM[64] >= 32);
                }
                v59 = v169 = _SafeSub(v15, v15);
            }
            require(v59, SwapFailed());
            v170 = v171 = 0;
            require(msg.data[varg0 + 228 + 32] < 8);
            if (msg.data[varg0 + 228 + 32]) {
                if (msg.data[varg0 + 228 + 32] - 6) {
                    v172 = v173 = 0;
                    v174 = v175 = 64;
                    if (7 - msg.data[varg0 + 228 + 32]) {
                        require(!(msg.data[varg0 + 228] - address(msg.data[varg0 + 228])));
                        require(!(msg.data[varg0 + 228 + v175] - address(msg.data[varg0 + 228 + v175])));
                        require(!(msg.data[varg0 + 228 + 96] - address(msg.data[varg0 + 228 + 96])));
                        v176 = v177 = address(msg.data[varg0 + 228]);
                        _algebraSwapCallback = msg.data[varg0 + 228];
                        stor_6 = v59;
                        v178 = v179 = address(msg.data[varg0 + 228 + v175]) < address(msg.data[varg0 + 228 + 96]);
                        if (v179 == v173) {
                            v180 = new struct(2);
                            v181 = v180.data;
                            v180.word1 = address(msg.data[varg0 + 228 + v175]);
                            v180.word0 = 32;
                            require(!((v180 + 64 > uint64.max) | (v180 + 64 < v180)), Panic(65)); // failed memory allocation (too much memory)
                            v182 = MEM[v175];
                            MEM[v182] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v182 + 4] = address(this);
                            MEM[v182 + 4 + 32] = bool(v179);
                            MEM[v182 + 4 + 64] = v59;
                            MEM[v182 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v182 + 4 + 128] = 160;
                            MEM[v182 + 4 + 160] = v180.word0.length;
                            MCOPY(v182 + 4 + 160 + 32, v180.data, v180.word0.length);
                            MEM[32 + (v180.word0.length + (v182 + 4 + 160))] = 0;
                            v183 = 32 + (v182 + 4 + 160) + 32;
                        } else {
                            v184 = new struct(2);
                            v185 = v184.data;
                            v184.word1 = address(msg.data[varg0 + 228 + v175]);
                            v184.word0 = 32;
                            require(!((v184 + 64 > uint64.max) | (v184 + 64 < v184)), Panic(65)); // failed memory allocation (too much memory)
                            v182 = v186 = MEM[v175];
                            MEM[v186] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v186 + 4] = address(this);
                            MEM[v186 + 4 + 32] = bool(v179);
                            MEM[v186 + 4 + 64] = v59;
                            MEM[v186 + 4 + 96] = address(0x1000276a4);
                            MEM[v186 + 4 + 128] = 160;
                            MEM[v186 + 4 + 160] = v184.word0.length;
                            MCOPY(v186 + 4 + 160 + 32, v184.data, v184.word0.length);
                            MEM[32 + (v184.word0.length + (v186 + 4 + 160))] = 0;
                            v183 = v187 = 32 + (v186 + 4 + 160) + 32;
                        }
                        v188 = v176.call(MEM[v21472V0x4aeb0x4d9eV0x3853:v21472V0x4aeb0x4d9eV0x3853 + v5302V0x5e340x4953V0x4aeb0x4d9eV0x3853 - v21472V0x4aeb0x4d9eV0x3853], MEM[v21472V0x4aeb0x4d9eV0x3853:v21472V0x4aeb0x4d9eV0x3853 + v49850x4d9e_0x6V0x3853]).value(v172).gas(msg.gas);
                        require(v188, MEM[64], RETURNDATASIZE());
                        v189 = v190 = 0x2152f;
                        v191 = v192 = 0;
                        v191 = v193 = 0;
                        if (v188) {
                            v194 = v195 = 19172;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v182 + 64 > uint64.max) | (v182 + 64 < v182)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v182 + 64;
                                v196 = v197 = v182 + 64;
                            }
                        }
                    } else {
                        require(!(msg.data[varg0 + 228] - address(msg.data[varg0 + 228])));
                        require(!(msg.data[varg0 + 228 + v175] - address(msg.data[varg0 + 228 + v175])));
                        require(!(msg.data[varg0 + 228 + 96] - address(msg.data[varg0 + 228 + 96])));
                        v198 = v199 = address(msg.data[varg0 + 228]);
                        _algebraSwapCallback = msg.data[varg0 + 228];
                        v178 = v200 = address(msg.data[varg0 + 228 + v175]) < address(msg.data[varg0 + 228 + 96]);
                        if (v200 == v173) {
                            v201 = new struct(2);
                            v202 = v201.data;
                            v201.word1 = address(msg.data[varg0 + 228 + v175]);
                            v201.word0 = 32;
                            require(!((v201 + 64 > uint64.max) | (v201 + 64 < v201)), Panic(65)); // failed memory allocation (too much memory)
                            v182 = v203 = MEM[v175];
                            MEM[v203] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v203 + 4] = address(this);
                            MEM[v203 + 4 + 32] = bool(v200);
                            MEM[v203 + 4 + 64] = v59;
                            MEM[v203 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v203 + 4 + 128] = 160;
                            MEM[v203 + 4 + 160] = v201.word0.length;
                            MCOPY(v203 + 4 + 160 + 32, v201.data, v201.word0.length);
                            MEM[32 + (v201.word0.length + (v203 + 4 + 160))] = 0;
                            v204 = 32 + (v203 + 4 + 160) + 32;
                        } else {
                            v205 = new struct(2);
                            v206 = v205.data;
                            v205.word1 = address(msg.data[varg0 + 228 + v175]);
                            v205.word0 = 32;
                            require(!((v205 + 64 > uint64.max) | (v205 + 64 < v205)), Panic(65)); // failed memory allocation (too much memory)
                            v182 = v207 = MEM[v175];
                            MEM[v207] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v207 + 4] = address(this);
                            MEM[v207 + 4 + 32] = bool(v200);
                            MEM[v207 + 4 + 64] = v59;
                            MEM[v207 + 4 + 96] = address(0x1000276a4);
                            MEM[v207 + 4 + 128] = 160;
                            MEM[v207 + 4 + 160] = v205.word0.length;
                            MCOPY(v207 + 4 + 160 + 32, v205.data, v205.word0.length);
                            MEM[32 + (v205.word0.length + (v207 + 4 + 160))] = 0;
                            v204 = v208 = 32 + (v207 + 4 + 160) + 32;
                        }
                        v209 = v198.call(MEM[v21472V0x4aeb0x4d9eV0x3853:v21472V0x4aeb0x4d9eV0x3853 + v5302V0x5e340x4953V0x49e30x4d9eV0x3853 - v21472V0x4aeb0x4d9eV0x3853], MEM[v21472V0x4aeb0x4d9eV0x3853:v21472V0x4aeb0x4d9eV0x3853 + v49850x4d9e_0x6V0x3853]).value(v172).gas(msg.gas);
                        require(v209, MEM[64], RETURNDATASIZE());
                        v189 = v210 = 0x214ab;
                        v191 = v211 = 0;
                        v191 = v212 = 0;
                        if (v209) {
                            v194 = 18908;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v182 + 64 > uint64.max) | (v182 + 64 < v182)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v182 + 64;
                                v196 = v213 = v182 + 64;
                            }
                        }
                    }
                    _algebraSwapCallback = 0;
                    if (v178) {
                    }
                    require(v191 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    v214 = v215 = 0 - v191;
                    // Unknown jump to Block ['0x214ab0x4d9eB0x3853', '0x2152f0x4d9eB0x3853']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x59fd0x4d9eB0x3853. Refer to 3-address code (TAC);
                    require(!((v182 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v182 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v182)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v182 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v196 = v216 = v182 + RETURNDATASIZE();
                    require(v196 - v182 >= 64);
                    v191 = v217 = MEM[v182];
                    v191 = v218 = MEM[v182 + 32];
                    // Unknown jump to Block ['0x49dc0x4d9eB0x3853', '0x4ae40x4d9eB0x3853']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x4aa80x4d9eB0x3853. Refer to 3-address code (TAC);
                    _algebraSwapCallback = 0;
                    stor_6 = 0;
                    if (v178) {
                    }
                } else {
                    v219 = new struct(5);
                    require(!((v219 + 160 > uint64.max) | (v219 + 160 < v219)), Panic(65)); // failed memory allocation (too much memory)
                    v219.word0 = 0;
                    v219.word1 = 0;
                    v219.word2 = 0;
                    v219.word3 = 0;
                    v219.word4 = 0;
                    require(!(msg.data[varg0 + 228 + 64] - address(msg.data[varg0 + 228 + 64])));
                    require(!(msg.data[varg0 + 228 + 96] - address(msg.data[varg0 + 228 + 96])));
                    if (address(msg.data[varg0 + 228 + 64]) >= address(msg.data[varg0 + 228 + 96])) {
                        v220 = msg.data[varg0 + 228 + 96];
                        require(!(v220 - address(v220)));
                        v221 = msg.data[varg0 + 228 + 64];
                        require(!(v221 - address(v221)));
                    } else {
                        v220 = v222 = msg.data[varg0 + 228 + 64];
                        require(!(v222 - address(v222)));
                        v221 = v223 = msg.data[varg0 + 228 + 96];
                        require(!(v223 - address(v223)));
                    }
                    require(!(msg.data[varg0 + 228 + 128] - uint24(msg.data[varg0 + 228 + 128])));
                    require(!(msg.data[varg0 + 228 + 160] - int24(msg.data[varg0 + 228 + 160])));
                    require(!(msg.data[varg0 + 228 + 192] - address(msg.data[varg0 + 228 + 192])));
                    v224 = v225 = new struct(5);
                    require(!((v225 + 160 > uint64.max) | (v225 + 160 < v225)), Panic(65)); // failed memory allocation (too much memory)
                    v225.word0 = address(v220);
                    v226 = v227 = v225 + 32;
                    v225.word1 = address(v221);
                    v225.word2 = uint24(msg.data[varg0 + 228 + 128]);
                    v225.word3 = int24(msg.data[varg0 + 228 + 160]);
                    v225.word4 = address(msg.data[varg0 + 228 + 192]);
                    require(!(msg.data[varg0 + 228 + 64] - address(msg.data[varg0 + 228 + 64])));
                    v228 = v229 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == address(msg.data[varg0 + 228 + 64]);
                    v228 = v230 = !address(v220);
                    if (v229) {
                        if (bool(address(v220))) {
                            // Unknown jump to Block 0x48020x4d9eB0x3853. Refer to 3-address code (TAC);
                        }
                    } else if (v229) {
                        if (!bool(address(v220))) {
                            v231 = v232 = 0x60000;
                            MEM[v232 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                            MEM[v232 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                            require(!((v232 + 64 > uint64.max) | (v232 + 64 < v232)), Panic(65)); // failed memory allocation (too much memory)
                            v233 = v234 = MEM[64];
                            require(!((v234 + 128 > uint64.max) | (v234 + 128 < v234)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v234 + 128;
                            MEM[v234] = 3;
                            v235 = v236 = 0;
                            while (v235 < 96) {
                                MEM[v234 + v235 + 32] = 96;
                                v235 = v235 + 32;
                            }
                        }
                    }
                    if (bool(address(v220))) {
                        // Unknown jump to Block 0x47fb0x4d9eB0x3853. Refer to 3-address code (TAC);
                    }
                    v231 = 0x60000;
                    MEM[v231 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                    MEM[v231 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                    require(!((v231 + 64 > uint64.max) | (v231 + 64 < v231)), Panic(65)); // failed memory allocation (too much memory)
                    v233 = MEM[64];
                    require(!((v233 + 128 > uint64.max) | (v233 + 128 < v233)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v233 + 128;
                    MEM[v233] = 3;
                    v237 = v238 = 0;
                    while (v237 < 96) {
                        MEM[v233 + v237 + 32] = 96;
                        v237 = v237 + 32;
                    }
                    v239 = new struct(5);
                    require(!((v239 + 160 > uint64.max) | (v239 + 160 < v239)), Panic(65)); // failed memory allocation (too much memory)
                    v239.word0 = v225;
                    v239.word1 = bool(v228);
                    v239.word2 = uint128(v59);
                    v239.word3 = 1;
                    v240 = 32;
                    v241 = new struct(1);
                    require(!((v241 + 32 > uint64.max) | (v241 + 32 < v241)), Panic(65)); // failed memory allocation (too much memory)
                    v241.word0 = v170;
                    v239.word4 = v241;
                    MEM[MEM[64] + v240] = v240;
                    MEM[MEM[64] + 64] = address(MEM[v239.word0]);
                    MEM[MEM[64] + 64 + 32] = address(MEM[v239.word0 + 32]);
                    MEM[MEM[64] + 64 + 64] = uint24(MEM[v239.word0 + 64]);
                    MEM[MEM[64] + 64 + 96] = int24(MEM[v239.word0 + 96]);
                    MEM[MEM[64] + 64 + 128] = address(MEM[128 + v239.word0]);
                    MEM[MEM[64] + 64 + 160] = bool(v239.word1);
                    MEM[MEM[64] + 64 + 192] = uint128(v239.word2);
                    MEM[MEM[64] + 64 + 224] = uint128(v239.word3);
                    MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                    MEM[MEM[64] + 64 + 288] = MEM[v239.word4];
                    MCOPY(MEM[64] + 64 + 288 + 32, 32 + v239.word4, MEM[v239.word4]);
                    MEM[32 + (MEM[v239.word4] + (MEM[64] + 64 + 288))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v239.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v239.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v239.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v239.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[v233], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[32 + v233] = MEM[64];
                    require(MEM[v233], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v228) {
                        v242 = new struct(3);
                        v242.word1 = address(MEM[v243]);
                        v242.word2 = v59;
                        v242.word0 = 64;
                        require(!((v242 + 96 > uint64.max) | (v242 + 96 < v242)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < MEM[v244], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v245 = 64 + v244;
                    } else {
                        v242 = v246 = new struct(3);
                        v246.word1 = address(v225.word0);
                        v246.word2 = v59;
                        v246.word0 = 64;
                        require(!((v246 + 96 > uint64.max) | (v246 + 96 < v246)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < MEM[v247], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v245 = v248 = 64 + v247;
                    }
                    MEM[v245] = v242;
                    require(1 < MEM[v233], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v228) {
                        v249 = v250 = address(MEM[v224]);
                    } else {
                        v249 = address(MEM[v226]);
                    }
                    v251 = new struct(3);
                    v252 = v251.data;
                    v251.word1 = address(v249);
                    v251.word2 = 1;
                    v251.word0 = 64;
                    require(!((v251 + 96 > uint64.max) | (v251 + 96 < v251)), Panic(65)); // failed memory allocation (too much memory)
                    require(2 < MEM[v233], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[96 + v233] = v251;
                    require(2 < MEM[v233], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v253 = new struct(2);
                    require(!((v253 + 64 > uint64.max) | (v253 + 64 < v253)), Panic(65)); // failed memory allocation (too much memory)
                    v253.word0 = 1;
                    v254 = v255 = 0;
                    while (v254 < 32) {
                        MEM[v253 + v254 + 32] = 96;
                        v254 = v254 + 32;
                    }
                    MEM[MEM[64] + v240] = 64;
                    MEM[MEM[64] + v240 + 64] = MEM[v231];
                    MCOPY(MEM[64] + v240 + 64 + 32, 32 + v231, MEM[v231]);
                    MEM[32 + (MEM[v231] + (MEM[64] + v240 + 64))] = 0;
                    MEM[MEM[64] + v240 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v231]) + (MEM[64] + v240 + 64) + 32 - (MEM[64] + v240);
                    MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v231]) + (MEM[64] + v240 + 64) + 32] = MEM[v233];
                    v256 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v231]) + (MEM[64] + v240 + 64) + 32 + 32;
                    v257 = v258 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v231]) + (MEM[64] + v240 + 64) + 32 + (MEM[v233] << 5) + 32;
                    v259 = v233 + 32;
                    v260 = 0;
                    while (v260 < MEM[v233]) {
                        MEM[v256] = v257 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v231]) + (MEM[64] + v240 + 64) + 32) - 32;
                        MEM[v257] = MEM[MEM[v259]];
                        MCOPY(v257 + 32, 32 + MEM[v259], MEM[MEM[v259]]);
                        MEM[32 + (MEM[MEM[v259]] + v257)] = 0;
                        v257 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v259]]) + v257 + 32;
                        v259 = v259 + 32;
                        v256 = v256 + 32;
                        v260 = v260 + 1;
                    }
                    MEM[MEM[64]] = v257 - MEM[64] - 32;
                    require(!((MEM[64] + (v257 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v257 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v253.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v261 = v253.data;
                    v253.word1 = MEM[64];
                    require(v253.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v262 = v253.data;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    if (!v228) {
                        v263 = v264 = address(MEM[v224]);
                    } else {
                        v263 = address(MEM[v226]);
                    }
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    v265, /* uint112 */ v170 = address(v263).balanceOf(address(this)).gas(msg.gas);
                    require(v265, MEM[64], RETURNDATASIZE());
                    if (v265) {
                        if (v240 > RETURNDATASIZE()) {
                            v240 = v266 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v240 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v240 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v240 - MEM[64] >= v240);
                    }
                    if (!v228) {
                        require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v170, v170);
                        v267 = new bytes[](v268.length);
                        MCOPY(v267.data, v268.data, v268.length);
                        v267[v268.length] = 0;
                        v269 = v267.data;
                        v270 = new uint256[](v253.word0.length);
                        v267[32][32] = v253.word0.length;
                        v271 = v270.data;
                        v272 = v273 = v270.data + 32;
                        v274 = v253.data;
                        v275 = 0;
                        while (v275 < v253.word0.length) {
                            MEM[v271] = v272 - v270 - 32;
                            MEM[v272] = MEM[MEM[v274]];
                            MCOPY(v272 + 32, 32 + MEM[v274], MEM[MEM[v274]]);
                            MEM[32 + (MEM[MEM[v274]] + v272)] = 0;
                            v272 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v274]]) + v272 + 32;
                            v274 = v274 + 32;
                            v271 = v271 + 32;
                            v275 = v275 + 1;
                        }
                        v276, /* uint256 */ v277 = stor_4_0_19.execute(v267, v270, block.timestamp + 1).value(v170).gas(msg.gas);
                        require(v276, v277, RETURNDATASIZE());
                        if (v276) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v170, v170, v170);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v170, v170);
                        v278, /* uint256 */ v279 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v59).value(v170).gas(msg.gas);
                        require(v278, v279, RETURNDATASIZE());
                        if (v278) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v170, v170, v170);
                        }
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v170, v170);
                        v280 = new bytes[](v268.length);
                        MCOPY(v280.data, v268.data, v268.length);
                        v280[v268.length] = 0;
                        v281 = v280.data;
                        v282 = new uint256[](v253.word0.length);
                        v280[32][32] = v253.word0.length;
                        v283 = v282.data;
                        v284 = v285 = v282.data + 32;
                        v286 = v253.data;
                        v287 = 0;
                        while (v287 < v253.word0.length) {
                            MEM[v283] = v284 - v282 - 32;
                            MEM[v284] = MEM[MEM[v286]];
                            MCOPY(v284 + 32, 32 + MEM[v286], MEM[MEM[v286]]);
                            MEM[32 + (MEM[MEM[v286]] + v284)] = 0;
                            v284 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v286]]) + v284 + 32;
                            v286 = v286 + 32;
                            v283 = v283 + 32;
                            v287 = v287 + 1;
                        }
                        v288, /* uint256 */ v289 = stor_4_0_19.execute(v280, v282, block.timestamp + 1).value(v59).gas(msg.gas);
                        require(v288, v289, RETURNDATASIZE());
                        if (v288) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v170, v170, v170);
                        }
                    }
                    v290, /* uint112 */ v170 = address(v263).balanceOf(address(this)).gas(msg.gas);
                    require(v290, MEM[64], RETURNDATASIZE());
                    if (v290) {
                        if (v240 > RETURNDATASIZE()) {
                            v240 = v291 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v240 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v240 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v240 - MEM[64] >= v240);
                    }
                    v214 = v292 = _SafeSub(v170, v170);
                    v228 = v293 = address(v220) == address(msg.data[varg0 + 228 + 64]);
                    // Unknown jump to Block 0x43c30x4d9eB0x3853. Refer to 3-address code (TAC);
                    0x5bbe(msg.data[varg0 + 228 + 64], v59);
                    require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                    v294, /* uint256 */ v295 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(msg.data[varg0 + 228 + 64]), stor_4_0_19, address(v59), uint48(block.timestamp + 60)).gas(msg.gas);
                    require(v294, v295, RETURNDATASIZE());
                    if (v294) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v170 = v296 = 0;
                    }
                }
            } else {
                require(!(msg.data[varg0 + 228] - address(msg.data[varg0 + 228])));
                require(!(msg.data[varg0 + 228 + 64] - address(msg.data[varg0 + 228 + 64])));
                require(!(msg.data[96 + (varg0 + 228)] - address(msg.data[96 + (varg0 + 228)])));
                v297, /* uint112 */ v170 = address(msg.data[96 + (varg0 + 228)]).balanceOf(address(this)).gas(msg.gas);
                require(v297, MEM[64], RETURNDATASIZE());
                if (v297) {
                    v298 = v299 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v298 = v300 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v298 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v298 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v298 - MEM[64] >= 32);
                }
                0x51d3(msg.data[varg0 + 228 + 64], msg.data[varg0 + 228], v59);
                v301, /* uint112 */ v170, /* uint112 */ v170, /* uint32 */ v302 = address(msg.data[varg0 + 228]).getReserves().gas(msg.gas);
                require(v301, MEM[64], RETURNDATASIZE());
                if (v301) {
                    if (96 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v303 = v304 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 96;
                        v303 = v305 = MEM[64] + 96;
                    }
                    require(v303 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v170 - uint112(v170)));
                    require(!(v302 - uint32(v302)));
                }
                v306, /* uint112 */ v170 = address(msg.data[varg0 + 228]).token0().gas(msg.gas);
                require(v306, MEM[64], RETURNDATASIZE());
                if (v306) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v307 = v308 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v307 = v309 = MEM[64] + 32;
                    }
                    require(v307 - MEM[64] >= 32);
                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                }
                if (address(msg.data[varg0 + 228 + 64]) != address(v170)) {
                    v310 = uint112(v170);
                    v311 = uint112(v170);
                } else {
                    v310 = v312 = uint112(v170);
                    v311 = v313 = uint112(v170);
                }
                require(v59, Error('INSUFFICIENT_INPUT_AMOUNT'));
                v314 = bool(v310);
                if (v314) {
                    v314 = v315 = bool(v311);
                }
                require(v314, Error('INSUFFICIENT_LIQUIDITY'));
                require(!(997 - v59 * 997 / v59), Panic(17)); // arithmetic overflow or underflow
                v316 = _SafeMul(v59 * 997, v311);
                require((1000 == v310 * 1000 / v310) | !v310, Panic(17)); // arithmetic overflow or underflow
                v317 = _SafeAdd(v310 * 1000, v59 * 997);
                v170 = v318 = _SafeDiv(v316, v317);
                if (address(msg.data[varg0 + 228 + 64]) == address(v170)) {
                }
                require((address(msg.data[varg0 + 228])).code.size, v171, v171);
                v319, /* uint256 */ v320 = address(msg.data[varg0 + 228]).swap(v170, v170, address(this), 128, 0).value(v171).gas(msg.gas);
                require(v319, v320, RETURNDATASIZE());
                if (v319) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v171, v171, v171);
                }
                v321, /* uint112 */ v170 = address(msg.data[96 + (varg0 + 228)]).balanceOf(address(this)).gas(msg.gas);
                require(v321, MEM[64], RETURNDATASIZE());
                if (v321) {
                    v322 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v322 = v323 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v322 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v322 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v322 - MEM[64] >= 32);
                }
                v214 = v324 = _SafeSub(v170, v170);
            }
            require(v214 >= msg.data[varg0 + 484], MinimumNotMet());
            v325 = v326 = 0;
            while (1) {
                require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
                require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
                require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
                if (v325 >= msg.data[v0 + msg.data[varg0 + 516]]) {
                    if (msg.data[varg0 + 580]) {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                        v327, /* uint256 */ v328 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(msg.data[varg0 + 580]).gas(msg.gas);
                        require(v327, v328, RETURNDATASIZE());
                        if (v327) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            MEM[128] = 0;
                        }
                        v329 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(msg.data[varg0 + 580]).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v330 = v331 = new bytes[](RETURNDATASIZE());
                            require(!((v331 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v331 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v331)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v331.data, 0, RETURNDATASIZE());
                        }
                        if (!v329) {
                            MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                            revert(MEM[128], 4);
                        } else {
                            emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, msg.data[varg0 + 580]);
                        }
                    }
                    require(!(msg.data[varg0 + 324] - address(msg.data[varg0 + 324])));
                    require(!(msg.data[varg0 + 100] - address(msg.data[varg0 + 100])));
                    require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
                    require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
                    require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
                    emit 0x1d5bd7bbbf1ed354c677ba890624a904587b5034e9fa1b3c3717e61d0e6a0c6f(address(msg.data[varg0 + 324]), address(msg.data[varg0 + 100]), v5, v59, v214, msg.data[v0 + msg.data[varg0 + 516]], msg.data[varg0 + 580]);
                    return v214;
                } else {
                    require(msg.data[varg0 + 548] < msg.data.length - v0 - 31);
                    require(msg.data[v0 + msg.data[varg0 + 548]] <= uint64.max);
                    require(32 + (v0 + msg.data[varg0 + 548]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 548]] << 5));
                    v332 = 0x3d81(32 + (v0 + msg.data[varg0 + 548]), msg.data[v0 + msg.data[varg0 + 548]], v325);
                    v333 = _SafeMul(v214, msg.data[v332]);
                    if (v333 / 10000) {
                        require(!(msg.data[varg0 + 324] - address(msg.data[varg0 + 324])));
                        require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
                        require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
                        require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
                        v334 = 0x3d81(32 + (v0 + msg.data[varg0 + 516]), msg.data[v0 + msg.data[varg0 + 516]], v325);
                        require(!(msg.data[v334] - address(msg.data[v334])));
                        0x51d3(msg.data[varg0 + 324], msg.data[v334], v333 / 10000);
                    }
                    v325 = v325 + 1;
                }
            }
        } else {
            require(msg.data[varg0 + 548] < msg.data.length - v0 - 31);
            require(msg.data[v0 + msg.data[varg0 + 548]] <= uint64.max);
            require(32 + (v0 + msg.data[varg0 + 548]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 548]] << 5));
            v335 = 0x3d81(32 + (v0 + msg.data[varg0 + 548]), msg.data[v0 + msg.data[varg0 + 548]], v13);
            v13 = _SafeAdd(v13, msg.data[v335]);
            v13 = v13 + 1;
        }
    }
}

function getWETHBalance() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((192 + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (192 + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < 192)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = 192 + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(192 + v3 - 192 >= 32);
        v1 = v6 = MEM[192];
    }
    return v1;
}

function 0x3c54(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = msg.sender;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transfer(msg.sender, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = !v2;
    if (bool(v2)) {
        v7 = v8 = bool(MEM[v4]);
        if (v8) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v9 = !MEM[v4 + 32];
        }
    }
    require(!v7, TransferFailed());
    return ;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x3d81(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(!(msg.sender - _algebraSwapCallback), fullExit());
    if (amount0Delta > 0) {
    }
    if (!data.length) {
        0x3c54(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v0);
        exit;
    } else {
        require(data + data.length - data >= 32);
        require(!(msg.data[data.data] - address(msg.data[data.data])));
        0x3c54(address(msg.data[data.data]), v0);
        exit;
    }
}

function depositETH() public payable { 
    require(msg.data.length - 4 >= MEM[128], MEM[128], MEM[128]);
    if (!msg.value) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
        v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(!MEM[128], MEM[128], MEM[128]);
        }
        emit Deposited(msg.sender, msg.value, 1);
        return MEM[MEM[128]:MEM[128] + MEM[128]];
    }
}

function 0xf4ff6ea2(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        0x5b21(varg0);
        require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size, MEM[128], MEM[128]);
        v0 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg0, stor_4_0_19, uint160.max, uint48.max).value(MEM[128]).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(!MEM[128], MEM[128], MEM[128]);
        }
        return MEM[MEM[128]:MEM[128] + MEM[128]];
    }
}

function 0x51d3(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = !v2;
    if (bool(v2)) {
        v7 = v8 = bool(MEM[v4]);
        if (v8) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v9 = !MEM[v4 + 32];
        }
    }
    require(!v7, TransferFailed());
    return ;
}

function 0x5a23(address varg0, address varg1, uint256 varg2, address varg3) private { 
    _algebraSwapCallback = varg0;
    stor_6 = varg2;
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < varg1;
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) >= varg1) {
        v1 = v2 = 0;
        v3 = v4 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v1 = v5 = 0;
        v3 = v6 = 0x1000276a4;
    }
    v7, /* uint256 */ v8, /* uint256 */ v8 = varg0.swap(varg3, bool(v0), varg2, address(v3), 160, 0).value(v1).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    v8 = v9 = 0;
    v8 = v10 = 0;
    if (v7) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v11 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v11 = v12 = MEM[64] + 64;
        }
        require(v11 - MEM[64] >= 64);
        _algebraSwapCallback = 0;
        stor_6 = 0;
        if (v0) {
        }
    } else {
        _algebraSwapCallback = 0;
        stor_6 = 0;
        if (v0) {
        }
    }
    require(v8 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v8;
}

function 0x5b21(uint256 varg0) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x22d473030f116ddee9f6b43ac78ba3;
    MEM[v0 + 68] = uint256.max;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.approve(0x22d473030f116ddee9f6b43ac78ba3, uint256.max).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = !v2;
    if (bool(v2)) {
        v7 = v8 = bool(MEM[v4]);
        if (v8) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v9 = !MEM[v4 + 32];
        }
    }
    require(!v7, ApproveFailed());
    return ;
}

function 0x5bbe(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x22d473030f116ddee9f6b43ac78ba3;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.approve(0x22d473030f116ddee9f6b43ac78ba3, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = !v2;
    if (bool(v2)) {
        v7 = v8 = bool(MEM[v4]);
        if (v8) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v9 = !MEM[v4 + 32];
        }
    }
    require(!v7, ApproveFailed());
    return ;
}

function withdrawETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v0, v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        v1 = v2 = MEM[128];
        if (v0) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v3 - MEM[64] >= 32);
        }
        if (amount > v1) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
            v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(amount).value(MEM[128]).gas(msg.gas);
            require(v6, MEM[64], RETURNDATASIZE());
            if (v6) {
                require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[128], MEM[128], MEM[128]);
            }
            v7 = 0x8bdf3dae4f9817320cb0317521f56607d271fef.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(amount).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v8 = v9 = new bytes[](RETURNDATASIZE());
                require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v9.data, 0, RETURNDATASIZE());
            }
            if (!v7) {
                MEM[MEM[128]] = 0x90b8ec1800000000000000000000000000000000000000000000000000000000;
                revert(MEM[128], 4);
            } else {
                emit Withdrawn(MEM[128], amount);
                return MEM[MEM[128]:MEM[128] + MEM[128]];
            }
        }
    }
}

function 0x5c49(address varg0, address varg1) private { 
    v0 = varg0;
    v1, /* uint112 */ v2, /* uint112 */ v3, /* uint32 */ v4 = v0.getReserves().gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v2 = v5 = 0;
    v3 = v6 = 0;
    if (v1) {
        if (96 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v7 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v7 = v8 = MEM[64] + 96;
        }
        require(v7 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v3 - uint112(v3)));
        require(!(v4 - uint32(v4)));
    }
    v9, /* address */ v10 = v0.token0().gas(msg.gas);
    require(v9, MEM[64], RETURNDATASIZE());
    v10 = v11 = 0;
    if (v9) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v12 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v12 = v13 = MEM[64] + 32;
        }
        require(v12 - MEM[64] >= 32);
        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
    }
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v10)) {
        v14 = v15 = uint112(v3);
        v16 = v17 = uint112(v2);
    } else {
        v14 = v18 = uint112(v2);
        v16 = v19 = uint112(v3);
    }
    v20, v21 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(v0).gas(msg.gas);
    require(v20, MEM[64], RETURNDATASIZE());
    v21 = v22 = 0;
    if (v20) {
        v23 = v24 = 32;
        if (32 > RETURNDATASIZE()) {
            v23 = v25 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v23 - MEM[64] >= 32);
    }
    v26 = _SafeSub(v21, v14);
    v27 = v28 = 0x5e6d(v26, v14, v16);
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v10)) {
        v27 = v29 = 0;
    } else {
        v27 = v30 = 0;
    }
    require(v0.code.size);
    v31, /* uint256 */ v32 = v0.swap(v27, v27, varg1, 128, 0).gas(msg.gas);
    require(v31, v32, RETURNDATASIZE());
    if (v31) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return v28;
    } else {
        return v28;
    }
}

function 0x5e6d(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg0, Error('INSUFFICIENT_INPUT_AMOUNT'));
    v0 = bool(varg1);
    if (v0) {
        v0 = v1 = bool(varg2);
    }
    require(v0, Error('INSUFFICIENT_LIQUIDITY'));
    require(!(997 - varg0 * 997 / varg0), Panic(17)); // arithmetic overflow or underflow
    v2 = _SafeMul(varg0 * 997, varg2);
    require((1000 == varg1 * 1000 / varg1) | !varg1, Panic(17)); // arithmetic overflow or underflow
    v3 = _SafeAdd(varg1 * 1000, varg0 * 997);
    v4 = _SafeDiv(v2, v3);
    return v4;
}

function 0xeb8b7dee(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        stor_4_0_19 = varg0;
        v0 = new bytes[](68);
        MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v0 + 36] = varg0;
        MEM[v0 + 68] = uint256.max;
        require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v0.length;
        v2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).approve(varg0, uint256.max).value(MEM[128]).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v3 = v4 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v3 = v5 = new bytes[](RETURNDATASIZE());
            require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
            RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
        }
        v6 = v7 = !v2;
        if (bool(v2)) {
            v6 = v8 = bool(MEM[v3]);
            if (v8) {
                require(v3 + MEM[v3] + 32 - (v3 + 32) >= 32);
                require(!(MEM[v3 + 32] - bool(MEM[v3 + 32])));
                v6 = v9 = !MEM[v3 + 32];
            }
        }
        if (v6) {
            MEM[MEM[128]] = 0x3e3f8f7300000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            0x5b21(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2));
            require(0x22d473030f116ddee9f6b43ac78ba3.code.size, MEM[128], MEM[128]);
            v10 = 0x22d473030f116ddee9f6b43ac78ba3.approve(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, uint160.max, uint48.max).value(MEM[128]).gas(msg.gas);
            require(v10, MEM[64], RETURNDATASIZE());
            if (v10) {
                require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[128], MEM[128], MEM[128]);
                return MEM[MEM[128]:MEM[128] + MEM[128]];
            } else {
                return MEM[MEM[128]:MEM[128] + MEM[128]];
            }
        }
    }
}

function poolManager() public nonPayable { 
    require(msg.data.length - 4 >= MEM[128], MEM[128], MEM[128]);
    return _poolManager;
}

function disperseToken(address token, address[] recipients, uint256 value) public nonPayable { 
    require(msg.data.length - 4 >= 96, MEM[128], MEM[128]);
    require(recipients <= uint64.max, MEM[128], MEM[128]);
    require(4 + recipients + 31 < msg.data.length);
    require(recipients.length <= uint64.max);
    v0 = v1 = recipients.data;
    require((recipients.length << 5) + (4 + recipients) + 32 <= msg.data.length);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!_disperse) {
        MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!recipients.length) {
        MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!value) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v2 = _SafeMul(recipients.length, value);
        v3, v4 = token.balanceOf(this).gas(msg.gas);
        require(v3, MEM[64], RETURNDATASIZE());
        v4 = v5 = MEM[128];
        if (v3) {
            v6 = v7 = 32;
            if (32 > RETURNDATASIZE()) {
                v6 = v8 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v6 - MEM[64] >= 32);
        }
        if (v4 < v2) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            0x51d3(token, _disperse, v2);
            require(_disperse.code.size, MEM[128], MEM[128]);
            v9 = new address[](recipients.length);
            v10 = v11 = v9.data;
            v12 = v13 = 0;
            while (v12 < recipients.length) {
                require(!(msg.data[v0] - address(msg.data[v0])));
                MEM[v10] = address(msg.data[v0]);
                v10 = v10 + 32;
                v0 = v0 + 32;
                v12 = v12 + 1;
            }
            v14 = _disperse.disperseToken(token, v9, value).value(MEM[128]).gas(msg.gas);
            require(v14, MEM[64], RETURNDATASIZE());
            if (v14) {
                require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[128], MEM[128], MEM[128]);
                return MEM[MEM[128]:MEM[128] + MEM[128]];
            } else {
                return MEM[MEM[128]:MEM[128] + MEM[128]];
            }
        }
    }
}

function disperseETH(address[] recipients, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 64, MEM[128], MEM[128]);
    require(recipients <= uint64.max, MEM[128], MEM[128]);
    require(4 + recipients + 31 < msg.data.length);
    require(recipients.length <= uint64.max);
    v0 = v1 = recipients.data;
    require((recipients.length << 5) + (4 + recipients) + 32 <= msg.data.length);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!_disperse) {
        MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!recipients.length) {
        MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!amount) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v2 = _SafeMul(recipients.length, amount);
        v3, v4 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v3, MEM[64], RETURNDATASIZE());
        v4 = v5 = MEM[128];
        if (v3) {
            v6 = v7 = 32;
            if (32 > RETURNDATASIZE()) {
                v6 = v8 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v6 - MEM[64] >= 32);
        }
        if (v4 < v2) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            0x51d3(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), _disperse, v2);
            require(_disperse.code.size, MEM[128], MEM[128]);
            v9 = new address[](recipients.length);
            v10 = v11 = v9.data;
            v12 = v13 = 0;
            while (v12 < recipients.length) {
                require(!(msg.data[v0] - address(msg.data[v0])));
                MEM[v10] = address(msg.data[v0]);
                v10 = v10 + 32;
                v0 = v0 + 32;
                v12 = v12 + 1;
            }
            v14 = _disperse.call(0x96791507, v9, amount).value(MEM[128]).gas(msg.gas);
            require(v14, MEM[64], RETURNDATASIZE());
            if (v14) {
                require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[128], MEM[128], MEM[128]);
                return MEM[MEM[128]:MEM[128] + MEM[128]];
            } else {
                return MEM[MEM[128]:MEM[128] + MEM[128]];
            }
        }
    }
}

function 0xc77cfeb1(address varg0, address varg1, uint256 varg2, uint256 varg3, address varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192, MEM[128], MEM[128]);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else if (!varg2) {
        MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = _SafeAdd(varg2, varg5);
        v4, v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v4, MEM[64], RETURNDATASIZE());
        v5 = v6 = MEM[128];
        if (v4) {
            v7 = v8 = 32;
            if (32 > RETURNDATASIZE()) {
                v7 = v9 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v7 - MEM[64] >= 32);
        }
        if (v5 < v3) {
            MEM[MEM[128]] = 0xf4d678b800000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            0x51d3(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, varg2);
            v10 = 0x5c49(varg0, varg4);
            if (v10 < varg3) {
                MEM[MEM[128]] = 0xa0927dc300000000000000000000000000000000000000000000000000000000;
                revert(MEM[128], 4);
            } else {
                if (varg5) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                    v11 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg5).value(MEM[128]).gas(msg.gas);
                    require(v11, MEM[64], RETURNDATASIZE());
                    if (v11) {
                        require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(!MEM[128], MEM[128], MEM[128]);
                    }
                    v12 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg5).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v13 = v14 = new bytes[](RETURNDATASIZE());
                        require(!((v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v14.data, 0, RETURNDATASIZE());
                    }
                    if (!v12) {
                        MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                        revert(MEM[128], 4);
                    } else {
                        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg5);
                    }
                }
                emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(varg1, varg2, v10, 1, varg5, MEM[128]);
                return v10;
            }
        }
    }
}

function 0xb8e32292(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[128], MEM[128]);
    if (msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        _disperse = varg0;
        emit 0x8160fa6debb3325e547859c1820366102b59a09e51c017649dfb51e19f56a842(varg0);
        return MEM[MEM[128]:MEM[128] + MEM[128]];
    }
}

function WETH() public nonPayable { 
    require(msg.data.length - 4 >= MEM[128], MEM[128], MEM[128]);
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function 0xab67595c(address varg0, uint256 varg1, address varg2, address varg3, address varg4, address varg5, address varg6, uint256 varg7, address varg8) public nonPayable { 
    require(msg.data.length - 4 >= 288, MEM[128], MEM[128]);
    require(msg.data.length - 4 >= 160, MEM[128], MEM[128]);
    require(varg7 <= uint64.max, MEM[128], MEM[128]);
    require(4 + varg7 + 31 < msg.data.length);
    require(varg7.length <= uint64.max);
    require((varg7.length << 5) + (4 + varg7) + 32 <= msg.data.length);
    MEM[MEM[128]] = msg.sender;
    MEM[32] = MEM[128];
    v0 = v1 = !uint8(STORAGE[keccak256(MEM[MEM[128]:MEM[128] + 64])]);
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    if (v0) {
        MEM[MEM[128]] = 0x82b4290000000000000000000000000000000000000000000000000000000000;
        revert(MEM[128], 4);
    } else {
        v3 = v4 = MEM[128];
        if (!varg7.length) {
            MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else if (!varg5) {
            MEM[MEM[128]] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else if (!stor_4_0_19) {
            MEM[MEM[128]] = 0xa86b651200000000000000000000000000000000000000000000000000000000;
            revert(MEM[128], 4);
        } else {
            v5 = v6 = MEM[128];
            v7 = v8 = 32;
            while (v5 < varg7.length) {
                v9 = 0x3d81(varg7.data, varg7.length, v5);
                require(!(msg.data[v9] - address(msg.data[v9])));
                v10 = v11 = varg0 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                if (varg0 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                    v10 = v12 = !varg0;
                }
                MEM[0x80021] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                MEM[0x80022] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v13 = new struct(4);
                require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
                v13.word0 = 3;
                v14 = v15 = 0;
                while (v14 < 96) {
                    MEM[v13 + v14 + 32] = 96;
                    v14 = v14 + 32;
                }
                v16, v17 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                if (!v16) {
                    RETURNDATACOPY(MEM[64], MEM[128], RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v17 = v18 = MEM[128];
                    if (v16) {
                        if (v8 > RETURNDATASIZE()) {
                            v7 = v19 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v7 - MEM[64] >= v8);
                    }
                    v20 = new struct(5);
                    require(!((v20 + 160 > uint64.max) | (v20 + 160 < v20)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - 4 >= 160, MEM[128], MEM[128]);
                    v21 = new struct(5);
                    require(!((v21 + 160 > uint64.max) | (v21 + 160 < v21)), Panic(65)); // failed memory allocation (too much memory)
                    v21.word0 = varg0;
                    require(!(varg1 - address(varg1)), MEM[128], MEM[128]);
                    v21.word1 = varg1;
                    require(!(varg2 - uint24(varg2)), MEM[128], MEM[128]);
                    v21.word2 = varg2;
                    require(!(varg3 - int24(varg3)), MEM[128], MEM[128]);
                    v21.word3 = varg3;
                    v21.word4 = varg4;
                    v20.word0 = v21;
                    v20.word1 = bool(v10);
                    v20.word2 = uint128(varg5);
                    v20.word3 = uint128(v17);
                    v22 = new struct(1);
                    require(!((v22 + 32 > uint64.max) | (v22 + 32 < v22)), Panic(65)); // failed memory allocation (too much memory)
                    v22.word0 = MEM[128];
                    v20.word4 = v22;
                    MEM[MEM[64] + v8] = v8;
                    MEM[MEM[64] + 64] = address(MEM[v20.word0]);
                    MEM[MEM[64] + 64 + 32] = address(MEM[v20.word0 + 32]);
                    MEM[MEM[64] + 64 + 64] = uint24(MEM[v20.word0 + 64]);
                    MEM[MEM[64] + 64 + 96] = int24(MEM[v20.word0 + 96]);
                    MEM[MEM[64] + 64 + 128] = address(MEM[128 + v20.word0]);
                    MEM[MEM[64] + 64 + 160] = bool(v20.word1);
                    MEM[MEM[64] + 64 + 192] = uint128(v20.word2);
                    MEM[MEM[64] + 64 + 224] = uint128(v20.word3);
                    MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                    MEM[MEM[64] + 64 + 288] = MEM[v20.word4];
                    MCOPY(MEM[64] + 64 + 288 + 32, 32 + v20.word4, MEM[v20.word4]);
                    MEM[32 + (MEM[v20.word4] + (MEM[64] + 64 + 288))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v20.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v20.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v20.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v13.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v23 = v13.data;
                    v13.word1 = MEM[64];
                    require(v13.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v24 = v13.data;
                    if (!v10) {
                        require(!(varg1 - address(varg1)));
                    } else {
                    }
                    v25 = new struct(3);
                    v25.word1 = address(v26);
                    v25.word2 = v17;
                    v25.word0 = 64;
                    require(!((v25 + 96 > uint64.max) | (v25 + 96 < v25)), Panic(65)); // failed memory allocation (too much memory)
                    require(1 < v13.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v13.word2 = v25;
                    require(1 < v13.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v10) {
                        v27 = new struct(3);
                        v27.word1 = varg0;
                        v27.word2 = varg5;
                        v27.word0 = 64;
                        require(!((v27 + 96 > uint64.max) | (v27 + 96 < v27)), Panic(65)); // failed memory allocation (too much memory)
                        require(2 < v13.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v28 = 96 + v13;
                    } else {
                        require(!(varg1 - address(varg1)));
                        v27 = v29 = new struct(3);
                        v29.word1 = address(varg1);
                        v29.word2 = varg5;
                        v29.word0 = 64;
                        require(!((v29 + 96 > uint64.max) | (v29 + 96 < v29)), Panic(65)); // failed memory allocation (too much memory)
                        require(2 < v13.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v28 = v30 = 96 + v13;
                    }
                    MEM[v28] = v27;
                    require(2 < v13.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v31 = new struct(2);
                    require(!((v31 + 64 > uint64.max) | (v31 + 64 < v31)), Panic(65)); // failed memory allocation (too much memory)
                    v31.word0 = 1;
                    v32 = v33 = 0;
                    while (v32 < 32) {
                        MEM[v31 + v32 + 32] = 96;
                        v32 = v32 + 32;
                    }
                    MEM[MEM[64] + v8] = 64;
                    MEM[MEM[64] + v8 + 64] = v34.length;
                    MCOPY(MEM[64] + v8 + 64 + 32, v34.data, v34.length);
                    MEM[32 + (v34.length + (MEM[64] + v8 + 64))] = 0;
                    MEM[MEM[64] + v8 + 32] = 128;
                    MEM[32 + (MEM[64] + v8 + 64) + 32] = v13.word0.length;
                    v35 = 32 + (MEM[64] + v8 + 64) + 32 + 32;
                    v36 = v37 = 32 + (MEM[64] + v8 + 64) + 32 + 96 + 32;
                    v38 = v13.data;
                    v39 = 0;
                    while (v39 < v13.word0.length) {
                        MEM[v35] = v36 - (32 + (MEM[64] + v8 + 64) + 32) - 32;
                        MEM[v36] = MEM[MEM[v38]];
                        MCOPY(v36 + 32, 32 + MEM[v38], MEM[MEM[v38]]);
                        MEM[32 + (MEM[MEM[v38]] + v36)] = 0;
                        v36 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v38]]) + v36 + 32;
                        v38 = v38 + 32;
                        v35 = v35 + 32;
                        v39 = v39 + 1;
                    }
                    MEM[MEM[64]] = v36 - MEM[64] - 32;
                    require(!((MEM[64] + (v36 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v36 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v31.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v40 = v31.data;
                    v31.word1 = MEM[64];
                    require(v31.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v41 = v31.data;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v42, v43 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                    if (!v42) {
                        RETURNDATACOPY(MEM[64], MEM[128], RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v43 = v44 = MEM[128];
                        if (v42) {
                            if (v8 > RETURNDATASIZE()) {
                                v7 = v45 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v7 - MEM[64] >= v8);
                        }
                        if (varg0) {
                            if (block.timestamp + 1 < block.timestamp) {
                                MEM[MEM[128]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                MEM[4] = 17;
                                revert(MEM[128], 36);
                            } else {
                                require(stor_4_0_19.code.size, MEM[128], MEM[128]);
                                MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                MEM[MEM[64] + 4] = 96;
                                MEM[MEM[64] + 4 + 96] = v46.length;
                                MCOPY(MEM[64] + 4 + 96 + 32, v46.data, v46.length);
                                MEM[32 + (v46.length + (MEM[64] + 4 + 96))] = 0;
                                MEM[MEM[64] + 4 + 32] = 160;
                                MEM[32 + (MEM[64] + 4 + 96) + 32] = v31.word0.length;
                                v47 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                v48 = v49 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                v50 = v31.data;
                                v51 = 0;
                                while (v51 < v31.word0.length) {
                                    MEM[v47] = v48 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                    MEM[v48] = MEM[MEM[v50]];
                                    MCOPY(v48 + 32, 32 + MEM[v50], MEM[MEM[v50]]);
                                    MEM[32 + (MEM[MEM[v50]] + v48)] = 0;
                                    v48 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v50]]) + v48 + 32;
                                    v50 = v50 + 32;
                                    v47 = v47 + 32;
                                    v51 = v51 + 1;
                                }
                                MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                v52 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v5302V0x53e3V0x5450V0x1713 - MEM[64]], MEM[MEM[64]:MEM[64] + MEM[128]]).value(MEM[128]).gas(msg.gas);
                                if (!v52) {
                                    RETURNDATACOPY(MEM[64], MEM[128], RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v52) {
                                    require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(!MEM[128], MEM[128], MEM[128]);
                                }
                            }
                        } else {
                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                            v53 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v17).value(MEM[128]).gas(msg.gas);
                            if (!v53) {
                                RETURNDATACOPY(MEM[64], MEM[128], RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v53) {
                                    require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(!MEM[128], MEM[128], MEM[128]);
                                }
                                if (block.timestamp + 1 < block.timestamp) {
                                    MEM[MEM[128]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                    MEM[4] = 17;
                                    revert(MEM[128], 36);
                                } else {
                                    require(stor_4_0_19.code.size, MEM[128], MEM[128]);
                                    MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                    MEM[MEM[64] + 4] = 96;
                                    MEM[MEM[64] + 4 + 96] = v46.length;
                                    MCOPY(MEM[64] + 4 + 96 + 32, v46.data, v46.length);
                                    MEM[32 + (v46.length + (MEM[64] + 4 + 96))] = 0;
                                    MEM[MEM[64] + 4 + 32] = 160;
                                    MEM[32 + (MEM[64] + 4 + 96) + 32] = v31.word0.length;
                                    v54 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                    v55 = v56 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                    v57 = v31.data;
                                    v58 = 0;
                                    while (v58 < v31.word0.length) {
                                        MEM[v54] = v55 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                        MEM[v55] = MEM[MEM[v57]];
                                        MCOPY(v55 + 32, 32 + MEM[v57], MEM[MEM[v57]]);
                                        MEM[32 + (MEM[MEM[v57]] + v55)] = 0;
                                        v55 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v57]]) + v55 + 32;
                                        v57 = v57 + 32;
                                        v54 = v54 + 32;
                                        v58 = v58 + 1;
                                    }
                                    MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                    v59 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v5302V0x53e3V0x5450V0x1503 - MEM[64]], MEM[MEM[64]:MEM[64] + MEM[128]]).value(v17).gas(msg.gas);
                                    if (!v59) {
                                        RETURNDATACOPY(MEM[64], MEM[128], RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v59) {
                                            require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(!MEM[128], MEM[128], MEM[128]);
                                        }
                                        v60 = this.balance;
                                        if (v60) {
                                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                                            v61 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v60).gas(msg.gas);
                                            if (!v61) {
                                                RETURNDATACOPY(MEM[64], MEM[128], RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else if (v61) {
                                                require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(!MEM[128], MEM[128], MEM[128]);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        v62, v63 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                        if (!v62) {
                            RETURNDATACOPY(MEM[64], MEM[128], RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v63 = v64 = MEM[128];
                            if (v62) {
                                if (v8 > RETURNDATASIZE()) {
                                    v7 = v65 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v7 - MEM[64] >= v8);
                            }
                            v66 = _SafeSub(v43, v63);
                            v5 = _SafeAdd(v5, v66);
                            if (v5 > varg6) {
                                MEM[MEM[128]] = 0x8199f5f300000000000000000000000000000000000000000000000000000000;
                                revert(MEM[128], 4);
                            } else {
                                v3 = _SafeAdd(v3, varg5);
                                v5 = v5 + 1;
                            }
                        }
                    }
                }
            }
            if (varg8) {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[128], MEM[128]);
                v67 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg8).value(MEM[128]).gas(msg.gas);
                require(v67, MEM[64], RETURNDATASIZE());
                if (v67) {
                    require(!((MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (MEM[128] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!MEM[128], MEM[128], MEM[128]);
                }
                v68 = block.coinbase.call(MEM[MEM[128]:MEM[128] + MEM[128]], MEM[MEM[128]:MEM[128] + MEM[128]]).value(varg8).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v69 = v70 = new bytes[](RETURNDATASIZE());
                    require(!((v70 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v70 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v70)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v70.data, 0, RETURNDATASIZE());
                }
                if (!v68) {
                    MEM[MEM[128]] = 0x6f54a73c00000000000000000000000000000000000000000000000000000000;
                    revert(MEM[128], 4);
                } else {
                    emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg8);
                }
            }
            v71 = v72 = varg0;
            require(!(varg0 - v72));
            v71 = v73 = address(varg1);
            require(!(varg1 - v73));
            v74 = v75 = v72 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            if (v72 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                v74 = !v72;
            }
            if (v74) {
            }
            emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(v71), v5, v3, varg7.length, varg8, 6);
            return v3;
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 192;
    if (msg.data.length >= 4) {
        MEM[128] = 0;
        v0 = function_selector >> 224;
        if (0xcbb73b == v0) {
            getWETHBalance();
        } else if (0xf754fde == v0) {
            0x0f754fde();
        } else if (0x13e7c9d8 == v0) {
            operators(address);
        } else if (0x22178ac1 == v0) {
            0x22178ac1();
        } else if (0x238c6060 == v0) {
            0x238c6060();
        } else {
            if (0x23a69e75 != v0) {
                if (0x26eb54b5 == v0) {
                    0x26eb54b5();
                } else if (0x28b5bd8d == v0) {
                    0x28b5bd8d();
                } else if (0x2c8958f6 != v0) {
                    if (0x35a9e4df == v0) {
                        universalRouter();
                    } else if (0x470086d5 == v0) {
                        0x470086d5();
                    } else if (0x4958a238 == v0) {
                        0x4958a238();
                    } else if (0x4ed1e45e == v0) {
                        0x4ed1e45e();
                    } else if (0x558a7297 == v0) {
                        setOperator(address,bool);
                    } else if (0x628a4b2f == v0) {
                        setUniversalRouter(address);
                    } else if (0x66dd0f24 == v0) {
                        depositWETH(uint256);
                    } else if (0x6afdd850 == v0) {
                        PERMIT2();
                    } else if (0x6c937374 == v0) {
                        approveToRouter(address);
                    } else if (0x6d70f7ae == v0) {
                        isOperator(address);
                    } else if (0x75b6ff6e == v0) {
                        0x75b6ff6e();
                    } else if (0x7aef6715 == v0) {
                        setPoolManager(address);
                    } else if (0x88b6ff9c == v0) {
                        disperse();
                    } else if (0x8da5cb5b == v0) {
                        owner();
                    } else if (0x9e281a98 == v0) {
                        withdrawToken(address,uint256);
                    } else if (0xa6e5e869 == v0) {
                        0xa6e5e869();
                    } else if (0xa86c7383 == v0) {
                        0xa86c7383();
                    } else if (0xab67595c == v0) {
                        0xab67595c();
                    } else if (0xad5c4648 == v0) {
                        WETH();
                    } else if (0xb8e32292 == v0) {
                        0xb8e32292();
                    } else if (0xc77cfeb1 == v0) {
                        0xc77cfeb1();
                    } else if (0xcf0ad4b1 == v0) {
                        disperseETH(address[],uint256);
                    } else if (0xd5eae0fa == v0) {
                        disperseToken(address,address[],uint256);
                    } else if (0xdc4c90d3 == v0) {
                        poolManager();
                    } else if (0xeb8b7dee == v0) {
                        0xeb8b7dee();
                    } else if (0xf14210a6 == v0) {
                        withdrawETH(uint256);
                    } else if (0xf4ff6ea2 == v0) {
                        0xf4ff6ea2();
                    } else if (0xf6326fb3 == v0) {
                        depositETH();
                    } else if (0xfa461e33 != v0) {
                        if (0xfc4dd333 == v0) {
                            withdrawWETH(uint256);
                        }
                    }
                }
            }
            algebraSwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
