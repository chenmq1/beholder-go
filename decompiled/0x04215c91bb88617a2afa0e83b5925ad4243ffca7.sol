// Decompiled by library.dedaub.com
// 2025.12.18 23:15 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _authorizedCallers; // STORAGE[0x1]
address stor_0_0_19; // STORAGE[0x0] bytes 0 to 19
address _algebraSwapCallback; // STORAGE[0x2] bytes 0 to 19
address stor_3_0_19; // STORAGE[0x3] bytes 0 to 19
address stor_4_0_19; // STORAGE[0x4] bytes 0 to 19
address _poolManager; // STORAGE[0x5] bytes 0 to 19



function 0xd01f864a(address varg0, address varg1, address varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, address varg7, address varg8, address varg9) public nonPayable { 
    require(msg.data.length - 4 >= 320);
    require(msg.data.length - 36 >= 224);
    require(varg8 <= uint64.max);
    require(4 + varg8 + 31 < msg.data.length);
    require(varg8.length <= uint64.max);
    require((varg8.length << 5) + (4 + varg8) + 32 <= msg.data.length);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg8.length, InvalidParams());
    v3, /* uint256 */ v4 = varg0.balanceOf(this).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    if (v3) {
        v5 = v6 = 32;
        if (32 > RETURNDATASIZE()) {
            v5 = v7 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= 32);
    }
    while (v4 < varg8.length) {
        v8 = 0x2636(varg8.data, varg8.length, v4);
        require(!(msg.data[v8] - address(msg.data[v8])));
        v9, /* uint256 */ v4 = varg0.balanceOf(address(msg.data[v8])).gas(msg.gas);
        require(v9, MEM[64], RETURNDATASIZE());
        if (v9) {
            v10 = v11 = 32;
            if (v11 > RETURNDATASIZE()) {
                v10 = v12 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v10 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v10 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v10 - MEM[64] >= 32);
        }
        if (v4) {
            v13 = 0x2636(varg8.data, varg8.length, v4);
            require(!(msg.data[v13] - address(msg.data[v13])));
            v14, /* bool */ v15 = varg0.transferFrom(address(msg.data[v13]), address(this), v4).gas(msg.gas);
            if (v14) {
                v16 = v17 = 32;
                if (v17 > RETURNDATASIZE()) {
                    v16 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v16 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v16 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v16 + 31);
                require(MEM[64] + v16 - MEM[64] >= 32);
                require(!0x23b872dcffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            }
        }
        v4 = v4 + 1;
    }
    v18, /* uint256 */ v4 = varg0.balanceOf(this).gas(msg.gas);
    require(v18, MEM[64], RETURNDATASIZE());
    if (v18) {
        v19 = v20 = 32;
        if (32 > RETURNDATASIZE()) {
            v19 = v21 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v19 - MEM[64] >= 32);
    }
    v22 = _SafeSub(v4, v4);
    require(v22, InvalidAmount());
    require(varg2 < 8);
    if (!varg2) {
        0x2b45(varg0, varg1, v22);
    }
    require(varg2 < 8);
    if (varg2) {
        if (varg2 - 6) {
            if (7 - varg2) {
                v23 = v24 = 0x3b22(varg1, varg0, v22);
            } else {
                v23 = v25 = 0x3b22(varg1, varg0, v22);
            }
        } else {
            require(stor_4_0_19);
            v26 = v27 = 100;
            v28 = v29 = 0;
            v30, v31 = varg0.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
            require(v30, MEM[64], RETURNDATASIZE());
            v31 = 0;
            if (v30) {
                v32 = 32;
                if (32 > RETURNDATASIZE()) {
                    v32 = v33 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v32 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v32 - MEM[64] >= 32);
            }
            if (v31 < v22) {
                0x390a(varg0, v22);
            }
            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
            v34, /* uint256 */ v35 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg0, stor_4_0_19, address(v22), uint48(block.timestamp + 60)).gas(msg.gas);
            require(v34, v35, RETURNDATASIZE());
            if (v34) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                v28 = v36 = 0;
            }
            v37 = varg3;
            v38 = 132;
            v37 = v39 = varg4;
            v40 = v37 == varg0;
            if (0 != v40) {
            }
            v41 = !address(v37);
            MEM[v42.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v42.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v43 = new struct(4);
            require(!((v43 + 128 < v43) | (v43 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v43.word0 = 3;
            v44 = v45 = 0;
            while (v44 < 96) {
                MEM[v43 + v44 + 32] = 96;
                v44 = v44 + 32;
            }
            v46 = new struct(5);
            require(!((v46 + 160 > uint64.max) | (v46 + 160 < v46)), Panic(65)); // failed memory allocation (too much memory)
            require(msg.data.length - v27 >= 160, v28, v28);
            v47 = new struct(5);
            require(!((v47 + 160 > uint64.max) | (v47 + 160 < v47)), Panic(65)); // failed memory allocation (too much memory)
            v47.word0 = varg3;
            v47.word1 = varg4;
            require(!(varg5 - uint24(varg5)), v28, v28);
            v47.word2 = varg5;
            require(!(varg6 - int24(varg6)), v28, v28);
            v48 = v49 = 0x191a2;
            v50 = 17855;
            v47.word3 = varg6;
            v47.word4 = varg7;
            v46.word0 = v47;
            v46.word1 = v40;
            v46.word2 = uint128(v22);
            v46.word3 = 1;
            v51 = v52 = 32;
            v53 = new struct(1);
            require(!((v53 + 32 < v53) | (v53 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v53.word0 = v28;
            v46.word4 = v53;
            MEM[MEM[64] + v52] = 32;
            MEM[MEM[64] + v52 + 32] = address(MEM[v46.word0]);
            MEM[MEM[64] + v52 + 64] = address(MEM[v46.word0 + 32]);
            MEM[MEM[64] + v52 + 96] = uint24(MEM[v46.word0 + 64]);
            MEM[MEM[64] + v52 + 128] = int24(MEM[v46.word0 + 96]);
            MEM[MEM[64] + v52 + 160] = address(MEM[v46.word0 + 128]);
            MEM[MEM[64] + v52 + 192] = bool(v46.word1);
            MEM[MEM[64] + v52 + 224] = uint128(v46.word2);
            MEM[MEM[64] + v52 + (uint8.max + 1)] = uint128(v46.word3);
            MEM[MEM[64] + v52 + 288] = 288;
            MEM[MEM[64] + v52 + 320] = MEM[v46.word4];
            MCOPY(MEM[64] + v52 + 320 + 32, 32 + v46.word4, MEM[v46.word4]);
            MEM[32 + (MEM[v46.word4] + (MEM[64] + v52 + 320))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v52 + 320) + 32 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v52 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v52 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v54 = v43.data;
            v43.word1 = MEM[64];
            require(v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v55 = v43.data;
            if (v37 != varg0) {
                v56 = v57, v40 = v58, v26 = v59, v38 = v60, v50 = v61, v48 = v62, v43 = v63, v41 = v64, v51 = v65 = 0x457d(varg4, 0x19273, v22, v40, v27, v38, v50, v49, v43, v41);
                require(1 < v63.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v66 = 64 + v63;
            } else {
                v56 = new struct(3);
                v56.word1 = varg3;
                v56.word2 = v22;
                v56.word0 = 64;
                require(!((v56 + 96 < v56) | (v56 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v66 = v67 = 64 + v43;
            }
            MEM[v66] = v56;
            require(1 < MEM[v43], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (!v40) {
                v68 = msg.data[v26];
                require(!(v68 - address(v68)));
            } else {
                v68 = v69 = msg.data[v38];
                require(!(v69 - address(v69)));
            }
            MEM[MEM[64] + v51] = address(v68);
            MEM[MEM[64] + v51 + 32] = 1;
            MEM[MEM[64]] = 64 + (MEM[64] + v51) - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v51) - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v51) - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v51) - MEM[64] + 31);
            require(2 < MEM[v43], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[96 + v43] = MEM[64];
            require(2 < MEM[v43], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v70 = new struct(2);
            require(!((v70 + 64 < v70) | (v70 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v70.word0 = 1;
            v71 = v72 = 0;
            while (v71 < 32) {
                MEM[v70 + v71 + 32] = 96;
                v71 = v71 + 32;
            }
            MEM[MEM[64] + v51] = 64;
            MEM[MEM[64] + v51 + 64] = v42.length;
            MCOPY(MEM[64] + v51 + 64 + 32, v42.data, v42.length);
            MEM[32 + (v42.length + (MEM[64] + v51 + 64))] = 0;
            MEM[MEM[64] + v51 + 32] = 32 + (MEM[64] + v51 + 64) + 32 - (MEM[64] + v51);
            MEM[32 + (MEM[64] + v51 + 64) + 32] = MEM[v43];
            v73 = 32 + (MEM[64] + v51 + 64) + 32 + 32;
            v74 = v75 = 32 + (MEM[64] + v51 + 64) + 32 + (MEM[v43] << 5) + 32;
            v76 = v43 + 32;
            v77 = 0;
            while (v77 < MEM[v43]) {
                MEM[v73] = v74 - (32 + (MEM[64] + v51 + 64) + 32) - 32;
                MEM[v74] = MEM[MEM[v76]];
                MCOPY(v74 + 32, 32 + MEM[v76], MEM[MEM[v76]]);
                MEM[32 + (MEM[MEM[v76]] + v74)] = 0;
                v74 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v76]]) + v74 + 32;
                v76 = v76 + 32;
                v73 = v73 + 32;
                v77 = v77 + 1;
            }
            MEM[MEM[64]] = v74 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v74 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v74 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v70.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v78 = v70.data;
            v70.word1 = MEM[64];
            require(v70.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v79 = v70.data;
            v80 = new uint256[](1);
            MEM[v80 + v51] = 0x1000000000000000000000000000000000000000000000000000000000000000;
            require(!((v80 + 64 < v80) | (v80 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            if (!v41) {
                v81 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                require(v81, MEM[64], RETURNDATASIZE());
                if (v81) {
                    if (v51 > RETURNDATASIZE()) {
                        v51 = v82 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v51 - MEM[64] >= v51);
                }
            } else {
                v28 = v83 = this.balance;
            }
            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
            require(stor_4_0_19.code.size, v28, v28);
            v84 = new uint256[](v80.length);
            MCOPY(v84.data, v80.data, v80.length);
            MEM[32 + (v80.length + v84)] = 0;
            v85 = v84.data;
            v86 = new uint256[](v70.word0.length);
            v87 = v86.data;
            v88 = v89 = v86.data + 32;
            v90 = v70.data;
            v91 = 0;
            while (v91 < v70.word0.length) {
                MEM[v87] = v88 - v86 - 32;
                MEM[v88] = MEM[MEM[v90]];
                MCOPY(v88 + 32, 32 + MEM[v90], MEM[MEM[v90]]);
                MEM[32 + (MEM[MEM[v90]] + v88)] = 0;
                v88 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v90]]) + v88 + 32;
                v90 = v90 + 32;
                v87 = v87 + 32;
                v91 = v91 + 1;
            }
            v92, /* uint256 */ v93 = stor_4_0_19.execute(v84, v86, block.timestamp + 1).value(v28).gas(msg.gas);
            require(v92, v93, RETURNDATASIZE());
            if (v92) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v28, v28, v28);
            }
            if (!v41) {
                v94 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                require(v94, MEM[64], RETURNDATASIZE());
                if (v94) {
                    if (v51 > RETURNDATASIZE()) {
                        v51 = v95 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v51 - MEM[64] >= v51);
                    v23 = v96 = _SafeSub(0x70a0823100000000000000000000000000000000000000000000000000000000, v28);
                } else {
                    v23 = v97 = _SafeSub(v28, v28);
                }
            } else {
                v98 = this.balance;
                v23 = v99 = _SafeSub(v98, v28);
                if (v99) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v28, v28);
                    v100, /* uint256 */ v101 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v99).gas(msg.gas);
                    require(v100, v101, RETURNDATASIZE());
                    if (v100) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v28, v28, v28);
                    }
                }
            }
        }
    } else {
        v23 = v102 = 0x3cd4(varg1, varg0);
    }
    v103 = bool(varg9);
    if (v103) {
        v103 = v104 = v23 > varg9;
    }
    if (v103) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v105, /* uint256 */ v106 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg9).gas(msg.gas);
        require(v105, v106, RETURNDATASIZE());
        if (v105) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        v107, /* uint256 */ v108 = block.coinbase.call().value(varg9).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v109 = v110 = new bytes[](RETURNDATASIZE());
            require(!((v110 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v110) | (v110 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v108 = v110.data;
            RETURNDATACOPY(v108, 0, RETURNDATASIZE());
        }
        if (v107) {
            emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg9);
            v23 = v111 = _SafeSub(v23, varg9);
        }
        if (!v23) {
        }
    } else if (!v23) {
    }
    0x2b45(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), stor_0_0_19, v23);
    require(varg2 < 8, Panic(33)); // failed convertion to enum type
    emit 0x345f22efbf543125c421017bc9af869b82c0eac59afcf08cf18eddb46946b283(varg0, v22, v23, varg8.length, varg9, varg2);
    return v23;
}

function 0xc171e4bc(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    require(varg0, ZeroAddress());
    stor_0_0_19 = varg0;
    emit 0x723fbc8848704d2c6d58e54f825d8d01f4c0b21409711721ee16dda57bad320b(stor_0_0_19, varg0);
    return ;
}

function WETH() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x8bdf3dae4f9817320cb0317521f56607d271fef);
}

function 0x8baf5efe(address varg0, address varg1, address varg2, uint256 varg3, address varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11, address varg12, address varg13, address varg14, address varg15, address varg16, address varg17) public nonPayable { 
    require(msg.data.length - 4 >= 576);
    require(224 <= msg.data.length - 4);
    require(msg.data.length - 228 >= 224);
    require(varg14 <= uint64.max);
    require(4 + varg14 + 31 < msg.data.length);
    require(varg14.length <= uint64.max);
    require((varg14.length << 5) + (4 + varg14) + 32 <= msg.data.length);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg14.length, InvalidParams());
    v3 = v4 = !varg15;
    if (bool(varg15)) {
        v3 = v5 = varg15 > 10000;
    }
    require(!v3, InvalidParams());
    v6, /* uint256 */ v7 = varg2.balanceOf(this).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        v8 = v9 = 32;
        if (32 > RETURNDATASIZE()) {
            v8 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v8 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v8 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v8 - MEM[64] >= 32);
    }
    while (v7 < varg14.length) {
        v11 = 0x2636(varg14.data, varg14.length, v7);
        require(!(msg.data[v11] - address(msg.data[v11])));
        v12, /* uint256 */ v7 = varg2.balanceOf(address(msg.data[v11])).gas(msg.gas);
        require(v12, MEM[64], RETURNDATASIZE());
        if (v12) {
            v13 = v14 = 32;
            if (v14 > RETURNDATASIZE()) {
                v13 = v15 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v13 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v13 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v13 - MEM[64] >= 32);
        }
        v16 = _SafeMul(v7, varg15);
        if (v16 / 10000) {
            v17 = 0x2636(varg14.data, varg14.length, v7);
            require(!(msg.data[v17] - address(msg.data[v17])));
            0x3998(varg2, msg.data[v17], this, v16 / 10000);
        }
        v7 = v7 + 1;
    }
    v18, /* uint256 */ v7 = varg2.balanceOf(this).gas(msg.gas);
    require(v18, MEM[64], RETURNDATASIZE());
    if (v18) {
        v19 = v20 = 32;
        if (32 > RETURNDATASIZE()) {
            v19 = v21 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v19 - MEM[64] >= 32);
    }
    v22 = _SafeSub(v7, v7);
    require(v22, InvalidAmount());
    v23 = v24 = 0;
    require(varg1 < 8);
    if (varg1) {
        if (varg1 - 6) {
            if (7 - varg1) {
                require(!(varg3 - address(varg3)));
                v23 = v25 = 0x4094(varg0, varg2, varg3, v22);
            } else {
                require(!(varg3 - address(varg3)));
                v23 = v26 = 0x4094(varg0, varg2, varg3, v22);
            }
        } else {
            v27 = new struct(5);
            require(!((v27 + 160 > uint64.max) | (v27 + 160 < v27)), Panic(65)); // failed memory allocation (too much memory)
            v27.word0 = 0;
            v27.word1 = 0;
            v27.word2 = 0;
            v27.word3 = 0;
            v27.word4 = 0;
            v28 = v29 = varg2 != varg2;
            require(!v29);
            require(varg3 == address(varg3));
            if (varg2 >= address(varg3)) {
                v28 = v30 = 0;
            } else {
                require(!v29);
                require(varg3 == address(varg3));
            }
            require(!(varg4 - uint24(varg4)));
            require(!(varg5 - int24(varg5)));
            v31 = new struct(5);
            require(!((v31 + 160 > uint64.max) | (v31 + 160 < v31)), Panic(65)); // failed memory allocation (too much memory)
            v31.word0 = address(v32);
            v31.word1 = address(v32);
            v31.word2 = uint24(varg4);
            v31.word3 = int24(varg5);
            v31.word4 = varg6;
            require(!v28);
            v33, v34 = varg2.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
            require(v33, MEM[64], RETURNDATASIZE());
            v34 = 0;
            if (v33) {
                v35 = 32;
                if (32 > RETURNDATASIZE()) {
                    v35 = v36 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v35 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v35 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v35 - MEM[64] >= 32);
            }
            if (v34 < v22) {
                0x390a(varg2, v22);
            }
            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
            v37, /* uint256 */ v38 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg2, stor_4_0_19, address(v22), uint48(block.timestamp + 60)).gas(msg.gas);
            require(v37, v38, RETURNDATASIZE());
            if (v37) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v23 = v39 = 0;
            }
            v40 = address(v31.word0);
            v40 = v41 = address(v31.word1);
            if (v40 == varg2) {
            }
            MEM[v42.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v42.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v43 = new struct(4);
            require(!((v43 + 128 < v43) | (v43 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v43.word0 = 3;
            v44 = v45 = 0;
            while (v44 < 96) {
                MEM[v43 + v44 + 32] = 96;
                v44 = v44 + 32;
            }
            v46 = new struct(5);
            require(!((v46 + 160 > uint64.max) | (v46 + 160 < v46)), Panic(65)); // failed memory allocation (too much memory)
            v46.word0 = v31;
            v46.word1 = v40 == varg2;
            v46.word2 = uint128(v22);
            v46.word3 = 1;
            v47 = 32;
            v48 = new struct(1);
            require(!((v48 + 32 < v48) | (v48 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v48.word0 = v23;
            v46.word4 = v48;
            MEM[MEM[64] + v47] = 32;
            MEM[MEM[64] + v47 + 32] = address(MEM[v46.word0]);
            MEM[MEM[64] + v47 + 64] = address(MEM[v46.word0 + 32]);
            MEM[MEM[64] + v47 + 96] = uint24(MEM[v46.word0 + 64]);
            MEM[MEM[64] + v47 + 128] = int24(MEM[v46.word0 + 96]);
            MEM[MEM[64] + v47 + 160] = address(MEM[v46.word0 + 128]);
            MEM[MEM[64] + v47 + 192] = bool(v46.word1);
            MEM[MEM[64] + v47 + 224] = uint128(v46.word2);
            MEM[MEM[64] + v47 + (uint8.max + 1)] = uint128(v46.word3);
            MEM[MEM[64] + v47 + 288] = 288;
            MEM[MEM[64] + v47 + 320] = MEM[v46.word4];
            MCOPY(MEM[64] + v47 + 320 + 32, 32 + v46.word4, MEM[v46.word4]);
            MEM[32 + (MEM[v46.word4] + (MEM[64] + v47 + 320))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v47 + 320) + 32 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v47 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v47 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v49 = v43.data;
            v43.word1 = MEM[64];
            require(v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v50 = v43.data;
            if (v40 != varg2) {
                v51 = new struct(3);
                v51.word1 = address(v31.word1);
                v51.word2 = v22;
                v51.word0 = 64;
                require(!((v51 + 96 < v51) | (v51 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v52 = 64 + v43;
            } else {
                v51 = v53 = new struct(3);
                v53.word1 = address(v31.word0);
                v53.word2 = v22;
                v53.word0 = 64;
                require(!((v53 + 96 < v53) | (v53 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v52 = v54 = 64 + v43;
            }
            MEM[v52] = v51;
            require(1 < v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v40 != varg2) {
                v55 = v56 = address(v31.word0);
            } else {
                v55 = address(v31.word1);
            }
            v57 = new struct(3);
            v57.word1 = address(v55);
            v57.word2 = 1;
            v57.word0 = 64;
            require(!((v57 + 96 < v57) | (v57 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(2 < v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v43.word3 = v57;
            require(2 < v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v58 = new struct(2);
            require(!((v58 + 64 < v58) | (v58 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v58.word0 = 1;
            v59 = v60 = 0;
            while (v59 < 32) {
                MEM[v58 + v59 + 32] = 96;
                v59 = v59 + 32;
            }
            MEM[MEM[64] + v47] = 64;
            MEM[MEM[64] + v47 + 64] = v42.length;
            MCOPY(MEM[64] + v47 + 64 + 32, v42.data, v42.length);
            MEM[32 + (v42.length + (MEM[64] + v47 + 64))] = 0;
            MEM[MEM[64] + v47 + 32] = 128;
            MEM[32 + (MEM[64] + v47 + 64) + 32] = v43.word0.length;
            v61 = 32 + (MEM[64] + v47 + 64) + 32 + 32;
            v62 = v63 = 32 + (MEM[64] + v47 + 64) + 32 + 96 + 32;
            v64 = v43.data;
            v65 = 0;
            while (v65 < v43.word0.length) {
                MEM[v61] = v62 - (32 + (MEM[64] + v47 + 64) + 32) - 32;
                MEM[v62] = MEM[MEM[v64]];
                MCOPY(v62 + 32, 32 + MEM[v64], MEM[MEM[v64]]);
                MEM[32 + (MEM[MEM[v64]] + v62)] = 0;
                v62 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v64]]) + v62 + 32;
                v64 = v64 + 32;
                v61 = v61 + 32;
                v65 = v65 + 1;
            }
            MEM[MEM[64]] = v62 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v62 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v62 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v58.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v66 = v58.data;
            v58.word1 = MEM[64];
            require(v58.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v67 = v58.data;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            if (bool(address(v40))) {
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v68, v23 = address(v40).balanceOf(this).gas(msg.gas);
                require(v68, MEM[64], RETURNDATASIZE());
                if (v68) {
                    if (v47 > RETURNDATASIZE()) {
                        v47 = v69 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v47 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v47 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v47 - MEM[64] >= v47);
                }
            } else {
                v23 = v70 = this.balance;
            }
            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
            require(stor_4_0_19.code.size, v23, v23);
            v71 = new bytes[](v72.length);
            MCOPY(v71.data, v72.data, v72.length);
            v71[v72.length] = 0;
            v73 = v71.data;
            v74 = new uint256[](v58.word0.length);
            v71[32][32] = v58.word0.length;
            v75 = v74.data;
            v76 = v77 = v74.data + 32;
            v78 = v58.data;
            v79 = 0;
            while (v79 < v58.word0.length) {
                MEM[v75] = v76 - v74 - 32;
                MEM[v76] = MEM[MEM[v78]];
                MCOPY(v76 + 32, 32 + MEM[v78], MEM[MEM[v78]]);
                MEM[32 + (MEM[MEM[v78]] + v76)] = 0;
                v76 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v78]]) + v76 + 32;
                v78 = v78 + 32;
                v75 = v75 + 32;
                v79 = v79 + 1;
            }
            v80, /* uint256 */ v81 = stor_4_0_19.execute(v71, v74, block.timestamp + 1).value(v23).gas(msg.gas);
            require(v80, v81, RETURNDATASIZE());
            if (v80) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v23, v23, v23);
            }
            if (bool(address(v40))) {
                v82, v23 = address(v40).balanceOf(this).gas(msg.gas);
                require(v82, MEM[64], RETURNDATASIZE());
                if (v82) {
                    if (v47 > RETURNDATASIZE()) {
                        v47 = v83 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v47 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v47 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v47 - MEM[64] >= v47);
                }
                v23 = v84 = _SafeSub(v23, v23);
            } else {
                v85 = this.balance;
                v23 = v86 = _SafeSub(v85, v23);
                if (v86) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v23, v23);
                    v87, /* uint256 */ v88 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v86).gas(msg.gas);
                    require(v87, v88, RETURNDATASIZE());
                    if (v87) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v23, v23, v23);
                    }
                }
            }
        }
    } else {
        require(!(varg3 - address(varg3)));
        v89, v23, v23, /* uint32 */ v90 = varg0.getReserves().gas(msg.gas);
        require(v89, MEM[64], RETURNDATASIZE());
        if (v89) {
            v91 = 96;
            if (96 > RETURNDATASIZE()) {
                v91 = v92 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v91 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v91 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v91 + 31);
            require(MEM[64] + v91 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            require(!(v23 - uint112(v23)));
            require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
        }
        v93, v23 = varg0.token0().gas(msg.gas);
        require(v93, MEM[64], RETURNDATASIZE());
        if (v93) {
            v94 = 32;
            if (32 > RETURNDATASIZE()) {
                v94 = v95 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v94 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v94 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v94 + 31);
            require(MEM[64] + v94 - MEM[64] >= 32);
            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        }
        if (address(v23) != varg2) {
            v96 = uint112(v23);
            v97 = uint112(v23);
            0x2b45(varg2, varg0, v22);
        } else {
            v96 = v98 = uint112(v23);
            v97 = v99 = uint112(v23);
            0x2b45(varg2, varg0, v22);
        }
        v100, v23 = varg2.balanceOf(varg0).gas(msg.gas);
        require(v100, MEM[64], RETURNDATASIZE());
        if (v100) {
            v101 = 32;
            if (32 > RETURNDATASIZE()) {
                v101 = v102 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v101 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v101 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v101 - MEM[64] >= 32);
        }
        v103 = _SafeSub(v23, v97);
        v23 = v104 = 0x4825(v103, v97, v96);
        if (address(v23) == varg2) {
        }
        require(varg0.code.size, v24, v24);
        v105 = new uint256[](0);
        v106, /* uint256 */ v107 = varg0.swap(v23, v23, address(this), v105).value(v24).gas(msg.gas);
        require(v106, v107, RETURNDATASIZE());
        if (v106) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v24, v24, v24);
        }
    }
    require(v23, SwapFailed());
    v108 = v109 = 0;
    require(varg8 < 8);
    if (varg8) {
        if (varg8 - 6) {
            if (7 - varg8) {
                v108 = v110 = 0x4094(varg7, varg9, varg10, v23);
            } else {
                v108 = v111 = 0x4094(varg7, varg9, varg10, v23);
            }
        } else {
            v112 = new struct(5);
            require(!((v112 + 160 > uint64.max) | (v112 + 160 < v112)), Panic(65)); // failed memory allocation (too much memory)
            v112.word0 = 0;
            v112.word1 = 0;
            v112.word2 = 0;
            v112.word3 = 0;
            v112.word4 = 0;
            v113 = v114 = varg9 != varg9;
            require(!v114);
            if (varg9 >= varg10) {
                v113 = v115 = 0;
            } else {
                require(!v114);
            }
            require(!(varg11 - uint24(varg11)));
            require(!(varg12 - int24(varg12)));
            v116 = new struct(5);
            require(!((v116 + 160 > uint64.max) | (v116 + 160 < v116)), Panic(65)); // failed memory allocation (too much memory)
            v116.word0 = address(v117);
            v116.word1 = address(v117);
            v116.word2 = uint24(varg11);
            v116.word3 = int24(varg12);
            v116.word4 = varg13;
            require(!v113);
            v118, v119 = varg9.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
            require(v118, MEM[64], RETURNDATASIZE());
            v119 = 0;
            if (v118) {
                v120 = 32;
                if (32 > RETURNDATASIZE()) {
                    v120 = v121 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v120 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v120 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v120 - MEM[64] >= 32);
            }
            if (v119 < v23) {
                0x390a(varg9, v23);
            }
            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
            v122, /* uint256 */ v123 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg9, stor_4_0_19, address(v23), uint48(block.timestamp + 60)).gas(msg.gas);
            require(v122, v123, RETURNDATASIZE());
            if (v122) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v108 = v124 = 0;
            }
            v125 = address(v116.word0);
            v125 = v126 = address(v116.word1);
            if (v125 == varg9) {
            }
            MEM[v127.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v127.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v128 = new struct(4);
            require(!((v128 + 128 < v128) | (v128 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v128.word0 = 3;
            v129 = v130 = 0;
            while (v129 < 96) {
                MEM[v128 + v129 + 32] = 96;
                v129 = v129 + 32;
            }
            v131 = new struct(5);
            require(!((v131 + 160 > uint64.max) | (v131 + 160 < v131)), Panic(65)); // failed memory allocation (too much memory)
            v131.word0 = v116;
            v131.word1 = v125 == varg9;
            v131.word2 = uint128(v23);
            v131.word3 = 1;
            v132 = 32;
            v133 = new struct(1);
            require(!((v133 + 32 < v133) | (v133 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v133.word0 = v108;
            v131.word4 = v133;
            MEM[MEM[64] + v132] = 32;
            MEM[MEM[64] + v132 + 32] = address(MEM[v131.word0]);
            MEM[MEM[64] + v132 + 64] = address(MEM[v131.word0 + 32]);
            MEM[MEM[64] + v132 + 96] = uint24(MEM[v131.word0 + 64]);
            MEM[MEM[64] + v132 + 128] = int24(MEM[v131.word0 + 96]);
            MEM[MEM[64] + v132 + 160] = address(MEM[v131.word0 + 128]);
            MEM[MEM[64] + v132 + 192] = bool(v131.word1);
            MEM[MEM[64] + v132 + 224] = uint128(v131.word2);
            MEM[MEM[64] + v132 + (uint8.max + 1)] = uint128(v131.word3);
            MEM[MEM[64] + v132 + 288] = 288;
            MEM[MEM[64] + v132 + 320] = MEM[v131.word4];
            MCOPY(MEM[64] + v132 + 320 + 32, 32 + v131.word4, MEM[v131.word4]);
            MEM[32 + (MEM[v131.word4] + (MEM[64] + v132 + 320))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v131.word4]) + (MEM[64] + v132 + 320) + 32 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v131.word4]) + (MEM[64] + v132 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v131.word4]) + (MEM[64] + v132 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v128.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v134 = v128.data;
            v128.word1 = MEM[64];
            require(v128.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v135 = v128.data;
            if (v125 != varg9) {
                v136 = new struct(3);
                v136.word1 = address(v116.word1);
                v136.word2 = v23;
                v136.word0 = 64;
                require(!((v136 + 96 < v136) | (v136 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v128.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v137 = 64 + v128;
            } else {
                v136 = v138 = new struct(3);
                v138.word1 = address(v116.word0);
                v138.word2 = v23;
                v138.word0 = 64;
                require(!((v138 + 96 < v138) | (v138 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v128.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v137 = v139 = 64 + v128;
            }
            MEM[v137] = v136;
            require(1 < v128.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v125 != varg9) {
                v140 = v141 = address(v116.word0);
            } else {
                v140 = address(v116.word1);
            }
            v142 = new struct(3);
            v142.word1 = address(v140);
            v142.word2 = 1;
            v142.word0 = 64;
            require(!((v142 + 96 < v142) | (v142 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(2 < v128.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v128.word3 = v142;
            require(2 < v128.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v143 = new struct(2);
            require(!((v143 + 64 < v143) | (v143 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v143.word0 = 1;
            v144 = v145 = 0;
            while (v144 < 32) {
                MEM[v143 + v144 + 32] = 96;
                v144 = v144 + 32;
            }
            MEM[MEM[64] + v132] = 64;
            MEM[MEM[64] + v132 + 64] = v127.length;
            MCOPY(MEM[64] + v132 + 64 + 32, v127.data, v127.length);
            MEM[32 + (v127.length + (MEM[64] + v132 + 64))] = 0;
            MEM[MEM[64] + v132 + 32] = 128;
            MEM[32 + (MEM[64] + v132 + 64) + 32] = v128.word0.length;
            v146 = 32 + (MEM[64] + v132 + 64) + 32 + 32;
            v147 = v148 = 32 + (MEM[64] + v132 + 64) + 32 + 96 + 32;
            v149 = v128.data;
            v150 = 0;
            while (v150 < v128.word0.length) {
                MEM[v146] = v147 - (32 + (MEM[64] + v132 + 64) + 32) - 32;
                MEM[v147] = MEM[MEM[v149]];
                MCOPY(v147 + 32, 32 + MEM[v149], MEM[MEM[v149]]);
                MEM[32 + (MEM[MEM[v149]] + v147)] = 0;
                v147 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v149]]) + v147 + 32;
                v149 = v149 + 32;
                v146 = v146 + 32;
                v150 = v150 + 1;
            }
            MEM[MEM[64]] = v147 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v147 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v147 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v143.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v151 = v143.data;
            v143.word1 = MEM[64];
            require(v143.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v152 = v143.data;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            if (bool(address(v125))) {
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v153, v108 = address(v125).balanceOf(this).gas(msg.gas);
                require(v153, MEM[64], RETURNDATASIZE());
                if (v153) {
                    if (v132 > RETURNDATASIZE()) {
                        v132 = v154 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v132 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v132 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v132 - MEM[64] >= v132);
                }
            } else {
                v108 = v155 = this.balance;
            }
            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
            require(stor_4_0_19.code.size, v108, v108);
            v156 = new bytes[](v157.length);
            MCOPY(v156.data, v157.data, v157.length);
            v156[v157.length] = 0;
            v158 = v156.data;
            v159 = new uint256[](v143.word0.length);
            v156[32][32] = v143.word0.length;
            v160 = v159.data;
            v161 = v162 = v159.data + 32;
            v163 = v143.data;
            v164 = 0;
            while (v164 < v143.word0.length) {
                MEM[v160] = v161 - v159 - 32;
                MEM[v161] = MEM[MEM[v163]];
                MCOPY(v161 + 32, 32 + MEM[v163], MEM[MEM[v163]]);
                MEM[32 + (MEM[MEM[v163]] + v161)] = 0;
                v161 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v163]]) + v161 + 32;
                v163 = v163 + 32;
                v160 = v160 + 32;
                v164 = v164 + 1;
            }
            v165, /* uint256 */ v166 = stor_4_0_19.execute(v156, v159, block.timestamp + 1).value(v108).gas(msg.gas);
            require(v165, v166, RETURNDATASIZE());
            if (v165) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v108, v108, v108);
            }
            if (bool(address(v125))) {
                v167, v108 = address(v125).balanceOf(this).gas(msg.gas);
                require(v167, MEM[64], RETURNDATASIZE());
                if (v167) {
                    if (v132 > RETURNDATASIZE()) {
                        v132 = v168 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v132 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v132 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v132 - MEM[64] >= v132);
                }
                v108 = v169 = _SafeSub(v108, v108);
            } else {
                v170 = this.balance;
                v108 = v171 = _SafeSub(v170, v108);
                if (v171) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v108, v108);
                    v172, /* uint256 */ v173 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v171).gas(msg.gas);
                    require(v172, v173, RETURNDATASIZE());
                    if (v172) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v108, v108, v108);
                    }
                }
            }
        }
    } else {
        v174, v108, v108, /* uint32 */ v175 = varg7.getReserves().gas(msg.gas);
        require(v174, MEM[64], RETURNDATASIZE());
        if (v174) {
            v176 = 96;
            if (96 > RETURNDATASIZE()) {
                v176 = v177 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v176 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v176 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v176 + 31);
            require(MEM[64] + v176 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            require(!(v108 - uint112(v108)));
            require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
        }
        v178, v108 = varg7.token0().gas(msg.gas);
        require(v178, MEM[64], RETURNDATASIZE());
        if (v178) {
            v179 = 32;
            if (32 > RETURNDATASIZE()) {
                v179 = v180 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v179 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v179 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v179 + 31);
            require(MEM[64] + v179 - MEM[64] >= 32);
            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        }
        if (address(v108) != varg9) {
            v181 = uint112(v108);
            v182 = uint112(v108);
            0x2b45(varg9, varg7, v23);
        } else {
            v181 = v183 = uint112(v108);
            v182 = v184 = uint112(v108);
            0x2b45(varg9, varg7, v23);
        }
        v185, v108 = varg9.balanceOf(varg7).gas(msg.gas);
        require(v185, MEM[64], RETURNDATASIZE());
        if (v185) {
            v186 = 32;
            if (32 > RETURNDATASIZE()) {
                v186 = v187 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v186 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v186 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v186 - MEM[64] >= 32);
        }
        v188 = _SafeSub(v108, v182);
        v108 = v189 = 0x4825(v188, v182, v181);
        if (address(v108) == varg9) {
        }
        require(varg7.code.size, v109, v109);
        v190 = new uint256[](0);
        v191, /* uint256 */ v192 = varg7.swap(v108, v108, address(this), v190).value(v109).gas(msg.gas);
        require(v191, v192, RETURNDATASIZE());
        if (v191) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v109, v109, v109);
        }
    }
    v193 = _SafeAdd(varg16, varg17);
    require(v108 >= v193, InsufficientOutput());
    v194 = 0x292b(v108, varg17);
    require(!(varg3 - address(varg3)));
    emit 0xb735592d2893f10a0033b5c5f91afb74008151cb458e93406022e1a7e570fc39(varg2, address(varg3), v22, v23, v194, varg14.length, varg17);
    return v194;
}

function isAuthorized(address adr) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = _authorizedCallers[adr];
    if (!v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) == adr;
    }
    return bool(v0);
}

function 0x82c1e863(address varg0, address varg1, address varg2, address varg3, address varg4, address varg5, uint24 varg6, int24 varg7, address varg8, address varg9, uint256 varg10) public nonPayable { 
    require(msg.data.length - 4 >= 352);
    require(160 <= msg.data.length - 4);
    require(varg6 <= uint64.max);
    require(4 + varg6 + 31 < msg.data.length);
    v0 = v1 = varg6.length;
    require(v1 <= uint64.max);
    v0 = v2 = varg6.data;
    require((v1 << 5) + (4 + varg6) + 32 <= msg.data.length);
    require(varg7 <= uint64.max);
    require(4 + varg7 + 31 < msg.data.length);
    v0 = v3 = varg7.length;
    require(v3 <= uint64.max);
    v0 = v4 = varg7.data;
    require((v3 << 5) + (4 + varg7) + 32 <= msg.data.length);
    v5 = v6 = !_authorizedCallers[msg.sender];
    if (v6) {
        v5 = v7 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v5, Unauthorized());
    require(stor_4_0_19);
    v8 = v9 = !v1;
    if (bool(v1)) {
        v8 = v10 = v1 != v3;
    }
    require(!v8, InvalidParams());
    require(varg8, InvalidAmount());
    while (v0 < v0) {
        v11 = 0x2636(v0, v0, v0);
        v0 = v12 = msg.data[v11];
        require(!(v12 - address(v12)));
        v13 = 0x2636(v0, v0, v0);
        v0 = v14 = msg.data[v13];
        while (v0) {
            v0 = v15 = 6714;
            v0 = v16 = 6726;
            v0 = v17 = 6720;
            if (0 != v0 > v0) {
            }
            0x3998(v0, v0, this, v0);
            v18 = v19 = 4;
            v20 = 0;
            v21, v22 = address(v0).allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
            if (!v21) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                v22 = 0;
                if (v21) {
                    v23 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v23 = v24 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v23 - MEM[64] >= 32);
                }
                if (v22 < v0) {
                    0x390a(v0, v0);
                }
                require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                v25 = 0x22d473030f116ddee9f6b43ac78ba3.approve(address(v0), stor_4_0_19, address(v0), uint48(block.timestamp + 60)).gas(msg.gas);
                if (!v25) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v25) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v20 = v26 = 0;
                    }
                    v27 = varg0;
                    v28 = 36;
                    v27 = v29 = varg1;
                    v30 = v27 == address(v0);
                    if (0 != v30) {
                    }
                    v31 = !address(v27);
                    MEM[v32.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                    MEM[v32.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v33 = new struct(4);
                    require(!((v33 + 128 < v33) | (v33 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    v33.word0 = 3;
                    v34 = v35 = 0;
                    while (v34 < 96) {
                        MEM[v33 + v34 + 32] = 96;
                        v34 = v34 + 32;
                    }
                    v36 = new struct(5);
                    require(!((v36 + 160 > uint64.max) | (v36 + 160 < v36)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - v19 >= 160, v20, v20);
                    v37 = new struct(5);
                    require(!((v37 + 160 > uint64.max) | (v37 + 160 < v37)), Panic(65)); // failed memory allocation (too much memory)
                    v37.word0 = varg0;
                    v37.word1 = varg1;
                    require(!(varg2 - uint24(varg2)), v20, v20);
                    v37.word2 = varg2;
                    require(!(varg3 - int24(varg3)), v20, v20);
                    v38 = v39 = 0x191a2;
                    v40 = v41 = 17855;
                    v37.word3 = varg3;
                    v37.word4 = varg4;
                    v36.word0 = v37;
                    v36.word1 = v30;
                    v36.word2 = uint128(v0);
                    v36.word3 = 1;
                    v42 = v43 = 32;
                    v44 = new struct(1);
                    require(!((v44 + 32 < v44) | (v44 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    v44.word0 = v20;
                    v36.word4 = v44;
                    MEM[MEM[64] + v43] = 32;
                    MEM[MEM[64] + v43 + 32] = address(MEM[v36.word0]);
                    MEM[MEM[64] + v43 + 64] = address(MEM[v36.word0 + 32]);
                    MEM[MEM[64] + v43 + 96] = uint24(MEM[v36.word0 + 64]);
                    MEM[MEM[64] + v43 + 128] = int24(MEM[v36.word0 + 96]);
                    MEM[MEM[64] + v43 + 160] = address(MEM[v36.word0 + 128]);
                    MEM[MEM[64] + v43 + 192] = bool(v36.word1);
                    MEM[MEM[64] + v43 + 224] = uint128(v36.word2);
                    MEM[MEM[64] + v43 + (uint8.max + 1)] = uint128(v36.word3);
                    MEM[MEM[64] + v43 + 288] = 288;
                    MEM[MEM[64] + v43 + 320] = MEM[v36.word4];
                    MCOPY(MEM[64] + v43 + 320 + 32, 32 + v36.word4, MEM[v36.word4]);
                    MEM[32 + (MEM[v36.word4] + (MEM[64] + v43 + 320))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v36.word4]) + (MEM[64] + v43 + 320) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v36.word4]) + (MEM[64] + v43 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v36.word4]) + (MEM[64] + v43 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(v33.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v45 = v33.data;
                    v33.word1 = MEM[64];
                    require(v33.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v46 = v33.data;
                    if (v27 != address(v0)) {
                        v47 = v48, v30 = v49, v18 = v50, v28 = v51, v40 = v52, v38 = v53, v33 = v54, v31 = v55, v42 = v56 = 0x457d(varg1, 0x19273, v0, v30, v19, v28, v41, v39, v33, v31);
                        require(1 < v54.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v57 = 64 + v54;
                    } else {
                        v47 = new struct(3);
                        v47.word1 = varg0;
                        v47.word2 = v0;
                        v47.word0 = 64;
                        require(!((v47 + 96 < v47) | (v47 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < v33.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v57 = v58 = 64 + v33;
                    }
                    MEM[v57] = v47;
                    require(1 < MEM[v33], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v30) {
                        v59 = msg.data[v18];
                        require(!(v59 - address(v59)));
                    } else {
                        v59 = v60 = msg.data[v28];
                        require(!(v60 - address(v60)));
                    }
                    MEM[MEM[64] + v42] = address(v59);
                    MEM[MEM[64] + v42 + 32] = 1;
                    MEM[MEM[64]] = 64 + (MEM[64] + v42) - MEM[64] - 32;
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v42) - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v42) - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v42) - MEM[64] + 31);
                    require(2 < MEM[v33], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[96 + v33] = MEM[64];
                    require(2 < MEM[v33], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v61 = new struct(2);
                    require(!((v61 + 64 < v61) | (v61 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    v61.word0 = 1;
                    v62 = v63 = 0;
                    while (v62 < 32) {
                        MEM[v61 + v62 + 32] = 96;
                        v62 = v62 + 32;
                    }
                    MEM[MEM[64] + v42] = 64;
                    MEM[MEM[64] + v42 + 64] = v32.length;
                    MCOPY(MEM[64] + v42 + 64 + 32, v32.data, v32.length);
                    MEM[32 + (v32.length + (MEM[64] + v42 + 64))] = 0;
                    MEM[MEM[64] + v42 + 32] = 32 + (MEM[64] + v42 + 64) + 32 - (MEM[64] + v42);
                    MEM[32 + (MEM[64] + v42 + 64) + 32] = MEM[v33];
                    v64 = 32 + (MEM[64] + v42 + 64) + 32 + 32;
                    v65 = v66 = 32 + (MEM[64] + v42 + 64) + 32 + (MEM[v33] << 5) + 32;
                    v67 = v33 + 32;
                    v68 = 0;
                    while (v68 < MEM[v33]) {
                        MEM[v64] = v65 - (32 + (MEM[64] + v42 + 64) + 32) - 32;
                        MEM[v65] = MEM[MEM[v67]];
                        MCOPY(v65 + 32, 32 + MEM[v67], MEM[MEM[v67]]);
                        MEM[32 + (MEM[MEM[v67]] + v65)] = 0;
                        v65 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v67]]) + v65 + 32;
                        v67 = v67 + 32;
                        v64 = v64 + 32;
                        v68 = v68 + 1;
                    }
                    MEM[MEM[64]] = v65 - MEM[64] - 32;
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v65 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v65 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(v61.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v69 = v61.data;
                    v61.word1 = MEM[64];
                    require(v61.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v70 = v61.data;
                    v71 = new uint256[](1);
                    MEM[v71 + v42] = 0x1000000000000000000000000000000000000000000000000000000000000000;
                    require(!((v71 + 64 < v71) | (v71 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    if (!v31) {
                        v72 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                        if (!v72) {
                            RETURNDATACOPY(MEM[64], v20, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else if (v72) {
                            if (v42 > RETURNDATASIZE()) {
                                v42 = v73 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v42 - MEM[64] >= v42);
                        }
                    } else {
                        v20 = v74 = this.balance;
                    }
                    require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                    require(stor_4_0_19.code.size, v20, v20);
                    MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = 96;
                    MEM[MEM[64] + 4 + 96] = v71.length;
                    MCOPY(MEM[64] + 4 + 96 + 32, v71.data, v71.length);
                    MEM[32 + (v71.length + (MEM[64] + 4 + 96))] = 0;
                    MEM[MEM[64] + 4 + 32] = 160;
                    MEM[32 + (MEM[64] + 4 + 96) + 32] = v61.word0.length;
                    v75 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                    v76 = v77 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                    v78 = v61.data;
                    v79 = 0;
                    while (v79 < v61.word0.length) {
                        MEM[v75] = v76 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                        MEM[v76] = MEM[MEM[v78]];
                        MCOPY(v76 + 32, 32 + MEM[v78], MEM[MEM[v78]]);
                        MEM[32 + (MEM[MEM[v78]] + v76)] = 0;
                        v76 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v78]]) + v76 + 32;
                        v78 = v78 + 32;
                        v75 = v75 + 32;
                        v79 = v79 + 1;
                    }
                    MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                    v80 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v41b0V0x42c1V0x432eV0x46480x1873 - MEM[64]], MEM[MEM[64]:MEM[64] + v18730x436a]).value(v20).gas(msg.gas);
                    if (!v80) {
                        RETURNDATACOPY(MEM[64], v20, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v80) {
                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v20, v20, v20);
                        }
                        if (!v31) {
                            v81 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                            if (!v81) {
                                RETURNDATACOPY(MEM[64], v20, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v81) {
                                if (v42 > RETURNDATASIZE()) {
                                    v42 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v42 - MEM[64] >= v42);
                                v0 = v82 = _SafeSub(0x70a0823100000000000000000000000000000000000000000000000000000000, v20);
                            } else {
                                v0 = v83 = _SafeSub(v20, v20);
                            }
                        } else {
                            v84 = this.balance;
                            v0 = v85 = _SafeSub(v84, v20);
                            if (v85) {
                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v20, v20);
                                v86 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v85).gas(msg.gas);
                                if (!v86) {
                                    RETURNDATACOPY(MEM[64], v20, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v86) {
                                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(!v20, v20, v20);
                                }
                            }
                        }
                        while (1) {
                            v0 += v0;
                            if (v0 > v0) {
                                break;
                            } else {
                                // Unknown jump to Block ['0x1a3a', '0x1a40']. Refer to 3-address code (TAC);
                                continue;
                            }
                        }
                        v0 = v0 - v0;
                        require(v0 <= v0, Panic(17)); // arithmetic overflow or underflow
                        revert(Panic(17));
                    }
                }
            }
        }
        v0 = _SafeAdd(v0, v0);
        v0 = _SafeAdd(v0, v0);
        v0 = v0 + 1;
    }
    if (!v0) {
        MEM[v0] = 0x2c5211c600000000000000000000000000000000000000000000000000000000;
        revert(v0, 4);
    } else {
        v87 = _SafeAdd(varg9, varg10);
        if (v0 < v87) {
            MEM[v0] = 0xbb2875c300000000000000000000000000000000000000000000000000000000;
            revert(v0, 4);
        } else {
            v88 = 0x292b(v0, varg10);
            emit 0x345f22efbf543125c421017bc9af869b82c0eac59afcf08cf18eddb46946b283(address(v0), v0, v88, v0, varg10, 6);
            return v88;
        }
    }
}

function receive() public payable { 
}

function 0x76d1f752(address varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    v0 = v1 = !varg0;
    if (bool(varg0)) {
        v0 = v2 = !varg1;
    }
    require(!v0, ZeroAddress());
    stor_4_0_19 = varg0;
    _poolManager = varg1;
    v3 = new bytes[](68);
    MEM[v3.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v3 + 36] = varg0;
    MEM[v3 + 68] = uint256.max;
    require(!((v3 + 128 < v3) | (v3 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v3.length;
    v5, /* uint256 */ v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).approve(varg0, uint256.max).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v7 = v8 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = v9 = new bytes[](RETURNDATASIZE());
        require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v6 = v9.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    v10 = v11 = !v5;
    if (bool(v5)) {
        v10 = v12 = bool(MEM[v7]);
        if (v12) {
            require(v7 + MEM[v7] + 32 - (v7 + 32) >= 32);
            require(!(MEM[v7 + 32] - bool(MEM[v7 + 32])));
            v10 = v13 = !MEM[v7 + 32];
        }
    }
    require(!v10, ApproveFailed());
    v14 = new bytes[](68);
    MEM[v14.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v14 + 36] = 0x22d473030f116ddee9f6b43ac78ba3;
    MEM[v14 + 68] = uint256.max;
    require(!((v14 + 128 < v14) | (v14 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v15 = v14.length;
    v16, /* uint256 */ v17 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).approve(0x22d473030f116ddee9f6b43ac78ba3, uint256.max).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v18 = v19 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v18 = v20 = new bytes[](RETURNDATASIZE());
        require(!((v20 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v20) | (v20 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v17 = v20.data;
        RETURNDATACOPY(v17, 0, RETURNDATASIZE());
    }
    v21 = v22 = !v16;
    if (bool(v16)) {
        v21 = v23 = bool(MEM[v18]);
        if (v23) {
            require(v18 + MEM[v18] + 32 - (v18 + 32) >= 32);
            require(!(MEM[v18 + 32] - bool(MEM[v18 + 32])));
            v21 = v24 = !MEM[v18 + 32];
        }
    }
    require(!v21, ApproveFailed());
    require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
    v25, /* uint256 */ v26 = 0x22d473030f116ddee9f6b43ac78ba3.approve(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, uint160.max, uint48.max).gas(msg.gas);
    require(v25, v26, RETURNDATASIZE());
    if (v25) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        v27 = v28 = 0;
    }
    emit 0xa8d5dfcab3e9a822bfdaafdcdfc358fdb16336008e9b188245b7226e6671583b(varg0, varg1);
    return MEM[v1ac9arg0x1:v1ac9arg0x1 + v1ac9arg0x1];
}

function 0xfaa86572(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= uint8.max + 1);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
    v3 = v4 = !msg.data[4 + varg0 + msg.data[varg0 + 68]];
    if (bool(msg.data[4 + varg0 + msg.data[varg0 + 68]])) {
        require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
        require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
        require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
        require(msg.data[varg0 + 100] < msg.data.length - (4 + varg0) - 31);
        require(msg.data[4 + varg0 + msg.data[varg0 + 100]] <= uint64.max);
        require(32 + (4 + varg0 + msg.data[varg0 + 100]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 100]] << 5));
        v3 = v5 = msg.data[4 + varg0 + msg.data[varg0 + 68]] != msg.data[4 + varg0 + msg.data[varg0 + 100]];
    }
    require(!v3, InvalidParams());
    require(msg.data[varg0 + 132], InvalidAmount());
    require(msg.data[varg0 + 228] < 8);
    require(msg.data[varg0 + 228], InvalidPoolType());
    while (1) {
        require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
        require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
        require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
        if (v6 >= msg.data[4 + varg0 + msg.data[varg0 + 68]]) {
            require(v6, InvalidAmount());
            v7 = _SafeAdd(msg.data[varg0 + 164], msg.data[varg0 + 196]);
            require(v6 >= v7, InsufficientOutput());
            v8 = 0x292b(v6, msg.data[varg0 + 196]);
            require(!(varg0.length - address(varg0.length)));
            require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
            require(msg.data[varg0 + 228] < 8, Panic(33)); // failed convertion to enum type
            emit 0x345f22efbf543125c421017bc9af869b82c0eac59afcf08cf18eddb46946b283(address(varg0.length), v6, v8, msg.data[4 + varg0 + msg.data[varg0 + 68]], msg.data[varg0 + 196], msg.data[varg0 + 228]);
            return v8;
        } else {
            require(!(varg0.length - address(varg0.length)));
            require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
            require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
            v9 = 0x2636(32 + (4 + varg0 + msg.data[varg0 + 68]), msg.data[4 + varg0 + msg.data[varg0 + 68]], v6);
            require(!(msg.data[v9] - address(msg.data[v9])));
            require(msg.data[varg0 + 100] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 100]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 100]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 100]] << 5));
            v10 = 0x2636(32 + (4 + varg0 + msg.data[varg0 + 100]), msg.data[4 + varg0 + msg.data[varg0 + 100]], v6);
            v11, v12 = 0x4042(varg0.length, msg.data[varg0.data], msg.data[v9], msg.data[v10], msg.data[varg0 + 132]);
            v6 = _SafeAdd(v6, v12);
            v6 = _SafeAdd(v6, v11);
            v6 = v6 + 1;
        }
    }
}

function 0x75b6ff6e() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return stor_4_0_19;
}

function authorizedCallers(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _authorizedCallers[varg0];
}

function setAuthorizedCaller(address _caller, bool _isAuthorized) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    _authorizedCallers[_caller] = _isAuthorized;
    emit 0xad857fa38c9319cb80848f1ef2f924383b90297eb5d71755738ff037d100faa1(_caller, _isAuthorized);
}

function rescueToken(address tokenAddress) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    v0, v1 = tokenAddress.balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v3 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v3 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v3 - MEM[64] >= 32);
    }
    if (v1) {
        0x2b45(tokenAddress, 0x8bdf3dae4f9817320cb0317521f56607d271fef, v1);
        exit;
    } else {
        exit;
    }
}

function 0x341359a0(address varg0, address varg1, address varg2, uint256 varg3, address varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11, address varg12, address varg13, address varg14, address varg15) public nonPayable { 
    require(msg.data.length - 4 >= 512);
    require(224 <= msg.data.length - 4);
    require(msg.data.length - 228 >= 224);
    require(varg14 <= uint64.max);
    require(4 + varg14 + 31 < msg.data.length);
    require(varg14.length <= uint64.max);
    require((varg14.length << 5) + (4 + varg14) + 32 <= msg.data.length);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg14.length, InvalidParams());
    v3, v4 = varg2.balanceOf(this).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v5 = 0;
    if (v3) {
        v6 = v7 = 32;
        if (32 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v6 - MEM[64] >= 32);
    }
    v9 = v10 = 0;
    while (v9 < varg14.length) {
        v11 = 0x2636(varg14.data, varg14.length, v9);
        require(!(msg.data[v11] - address(msg.data[v11])));
        v12, v13 = varg2.balanceOf(address(msg.data[v11])).gas(msg.gas);
        require(v12, MEM[64], RETURNDATASIZE());
        v13 = v14 = 0;
        if (v12) {
            v15 = v16 = 32;
            if (v16 > RETURNDATASIZE()) {
                v15 = v17 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v15 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v15 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v15 - MEM[64] >= 32);
        }
        if (v13) {
            v18 = 0x2636(varg14.data, varg14.length, v9);
            require(!(msg.data[v18] - address(msg.data[v18])));
            v19, /* bool */ v20 = varg2.transferFrom(address(msg.data[v18]), address(this), v13).gas(msg.gas);
            if (v19) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                    v21 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v21 = v22 = MEM[64] + 32;
                }
                require(v21 - MEM[64] >= 32);
                require(!0x23b872dcffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            }
        }
        v9 = v9 + 1;
    }
    v23, v24 = varg2.balanceOf(this).gas(msg.gas);
    require(v23, MEM[64], RETURNDATASIZE());
    v24 = v25 = 0;
    if (v23) {
        v26 = v27 = 32;
        if (32 > RETURNDATASIZE()) {
            v26 = v28 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v26 - MEM[64] >= 32);
    }
    v29 = _SafeSub(v24, v4);
    require(v29, InvalidAmount());
    v30 = v31 = 0;
    require(varg1 < 8);
    if (varg1) {
        if (varg1 - 6) {
            if (7 - varg1) {
                require(!(varg3 - address(varg3)));
                v30 = v32 = 0x4094(varg0, varg2, varg3, v29);
            } else {
                require(!(varg3 - address(varg3)));
                v30 = v33 = 0x4094(varg0, varg2, varg3, v29);
            }
        } else {
            v34 = new struct(5);
            require(!((v34 + 160 > uint64.max) | (v34 + 160 < v34)), Panic(65)); // failed memory allocation (too much memory)
            v34.word0 = 0;
            v34.word1 = 0;
            v34.word2 = 0;
            v34.word3 = 0;
            v34.word4 = 0;
            v35 = v36 = varg2 != varg2;
            require(!v36);
            require(varg3 == address(varg3));
            if (varg2 >= address(varg3)) {
                v35 = v37 = 0;
            } else {
                require(!v36);
                require(varg3 == address(varg3));
            }
            require(!(varg4 - uint24(varg4)));
            require(!(varg5 - int24(varg5)));
            v38 = new struct(5);
            require(!((v38 + 160 > uint64.max) | (v38 + 160 < v38)), Panic(65)); // failed memory allocation (too much memory)
            v38.word0 = address(v39);
            v38.word1 = address(v39);
            v38.word2 = uint24(varg4);
            v38.word3 = int24(varg5);
            v38.word4 = varg6;
            require(!v35);
            v40, v41 = varg2.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
            require(v40, MEM[64], RETURNDATASIZE());
            v41 = 0;
            if (v40) {
                v42 = 32;
                if (32 > RETURNDATASIZE()) {
                    v42 = v43 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v42 - MEM[64] >= 32);
            }
            if (v41 < v29) {
                0x390a(varg2, v29);
            }
            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
            v44, /* uint256 */ v45 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg2, stor_4_0_19, address(v29), uint48(block.timestamp + 60)).gas(msg.gas);
            require(v44, v45, RETURNDATASIZE());
            if (v44) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v30 = v46 = 0;
            }
            v47 = address(v38.word0);
            v47 = v48 = address(v38.word1);
            if (v47 == varg2) {
            }
            MEM[v49.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v49.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v50 = new struct(4);
            require(!((v50 + 128 < v50) | (v50 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v50.word0 = 3;
            v51 = v52 = 0;
            while (v51 < 96) {
                MEM[v50 + v51 + 32] = 96;
                v51 = v51 + 32;
            }
            v53 = new struct(5);
            require(!((v53 + 160 > uint64.max) | (v53 + 160 < v53)), Panic(65)); // failed memory allocation (too much memory)
            v53.word0 = v38;
            v53.word1 = v47 == varg2;
            v53.word2 = uint128(v29);
            v53.word3 = 1;
            v54 = 32;
            v55 = new struct(1);
            require(!((v55 + 32 < v55) | (v55 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v55.word0 = v30;
            v53.word4 = v55;
            MEM[MEM[64] + v54] = 32;
            MEM[MEM[64] + v54 + 32] = address(MEM[v53.word0]);
            MEM[MEM[64] + v54 + 64] = address(MEM[v53.word0 + 32]);
            MEM[MEM[64] + v54 + 96] = uint24(MEM[v53.word0 + 64]);
            MEM[MEM[64] + v54 + 128] = int24(MEM[v53.word0 + 96]);
            MEM[MEM[64] + v54 + 160] = address(MEM[v53.word0 + 128]);
            MEM[MEM[64] + v54 + 192] = bool(v53.word1);
            MEM[MEM[64] + v54 + 224] = uint128(v53.word2);
            MEM[MEM[64] + v54 + (uint8.max + 1)] = uint128(v53.word3);
            MEM[MEM[64] + v54 + 288] = 288;
            MEM[MEM[64] + v54 + 320] = MEM[v53.word4];
            MCOPY(MEM[64] + v54 + 320 + 32, 32 + v53.word4, MEM[v53.word4]);
            MEM[32 + (MEM[v53.word4] + (MEM[64] + v54 + 320))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v53.word4]) + (MEM[64] + v54 + 320) + 32 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v53.word4]) + (MEM[64] + v54 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v53.word4]) + (MEM[64] + v54 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v50.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v56 = v50.data;
            v50.word1 = MEM[64];
            require(v50.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v57 = v50.data;
            if (v47 != varg2) {
                v58 = new struct(3);
                v58.word1 = address(v38.word1);
                v58.word2 = v29;
                v58.word0 = 64;
                require(!((v58 + 96 < v58) | (v58 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v50.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v59 = 64 + v50;
            } else {
                v58 = v60 = new struct(3);
                v60.word1 = address(v38.word0);
                v60.word2 = v29;
                v60.word0 = 64;
                require(!((v60 + 96 < v60) | (v60 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v50.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v59 = v61 = 64 + v50;
            }
            MEM[v59] = v58;
            require(1 < v50.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v47 != varg2) {
                v62 = v63 = address(v38.word0);
            } else {
                v62 = address(v38.word1);
            }
            v64 = new struct(3);
            v64.word1 = address(v62);
            v64.word2 = 1;
            v64.word0 = 64;
            require(!((v64 + 96 < v64) | (v64 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(2 < v50.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v50.word3 = v64;
            require(2 < v50.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v65 = new struct(2);
            require(!((v65 + 64 < v65) | (v65 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v65.word0 = 1;
            v66 = v67 = 0;
            while (v66 < 32) {
                MEM[v65 + v66 + 32] = 96;
                v66 = v66 + 32;
            }
            MEM[MEM[64] + v54] = 64;
            MEM[MEM[64] + v54 + 64] = v49.length;
            MCOPY(MEM[64] + v54 + 64 + 32, v49.data, v49.length);
            MEM[32 + (v49.length + (MEM[64] + v54 + 64))] = 0;
            MEM[MEM[64] + v54 + 32] = 128;
            MEM[32 + (MEM[64] + v54 + 64) + 32] = v50.word0.length;
            v68 = 32 + (MEM[64] + v54 + 64) + 32 + 32;
            v69 = v70 = 32 + (MEM[64] + v54 + 64) + 32 + 96 + 32;
            v71 = v50.data;
            v72 = 0;
            while (v72 < v50.word0.length) {
                MEM[v68] = v69 - (32 + (MEM[64] + v54 + 64) + 32) - 32;
                MEM[v69] = MEM[MEM[v71]];
                MCOPY(v69 + 32, 32 + MEM[v71], MEM[MEM[v71]]);
                MEM[32 + (MEM[MEM[v71]] + v69)] = 0;
                v69 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v71]]) + v69 + 32;
                v71 = v71 + 32;
                v68 = v68 + 32;
                v72 = v72 + 1;
            }
            MEM[MEM[64]] = v69 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v69 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v69 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v65.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v73 = v65.data;
            v65.word1 = MEM[64];
            require(v65.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v74 = v65.data;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            if (bool(address(v47))) {
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v75, v30 = address(v47).balanceOf(this).gas(msg.gas);
                require(v75, MEM[64], RETURNDATASIZE());
                if (v75) {
                    if (v54 > RETURNDATASIZE()) {
                        v54 = v76 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v54 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v54 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v54 - MEM[64] >= v54);
                }
            } else {
                v30 = v77 = this.balance;
            }
            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
            require(stor_4_0_19.code.size, v30, v30);
            v78 = new bytes[](v79.length);
            MCOPY(v78.data, v79.data, v79.length);
            v78[v79.length] = 0;
            v80 = v78.data;
            v81 = new uint256[](v65.word0.length);
            v78[32][32] = v65.word0.length;
            v82 = v81.data;
            v83 = v84 = v81.data + 32;
            v85 = v65.data;
            v86 = 0;
            while (v86 < v65.word0.length) {
                MEM[v82] = v83 - v81 - 32;
                MEM[v83] = MEM[MEM[v85]];
                MCOPY(v83 + 32, 32 + MEM[v85], MEM[MEM[v85]]);
                MEM[32 + (MEM[MEM[v85]] + v83)] = 0;
                v83 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v85]]) + v83 + 32;
                v85 = v85 + 32;
                v82 = v82 + 32;
                v86 = v86 + 1;
            }
            v87, /* uint256 */ v88 = stor_4_0_19.execute(v78, v81, block.timestamp + 1).value(v30).gas(msg.gas);
            require(v87, v88, RETURNDATASIZE());
            if (v87) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v30, v30, v30);
            }
            if (bool(address(v47))) {
                v89, v30 = address(v47).balanceOf(this).gas(msg.gas);
                require(v89, MEM[64], RETURNDATASIZE());
                if (v89) {
                    if (v54 > RETURNDATASIZE()) {
                        v54 = v90 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v54 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v54 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v54 - MEM[64] >= v54);
                }
                v30 = v91 = _SafeSub(v30, v30);
            } else {
                v92 = this.balance;
                v30 = v93 = _SafeSub(v92, v30);
                if (v93) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v30, v30);
                    v94, /* uint256 */ v95 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v93).gas(msg.gas);
                    require(v94, v95, RETURNDATASIZE());
                    if (v94) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v30, v30, v30);
                    }
                }
            }
        }
    } else {
        require(!(varg3 - address(varg3)));
        v96, v30, v30, /* uint32 */ v97 = varg0.getReserves().gas(msg.gas);
        require(v96, MEM[64], RETURNDATASIZE());
        if (v96) {
            v98 = 96;
            if (96 > RETURNDATASIZE()) {
                v98 = v99 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v98 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v98 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v98 + 31);
            require(MEM[64] + v98 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            require(!(v30 - uint112(v30)));
            require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
        }
        v100, v30 = varg0.token0().gas(msg.gas);
        require(v100, MEM[64], RETURNDATASIZE());
        if (v100) {
            v101 = 32;
            if (32 > RETURNDATASIZE()) {
                v101 = v102 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v101 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v101 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v101 + 31);
            require(MEM[64] + v101 - MEM[64] >= 32);
            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        }
        if (address(v30) != varg2) {
            v103 = uint112(v30);
            v104 = uint112(v30);
            0x2b45(varg2, varg0, v29);
        } else {
            v103 = v105 = uint112(v30);
            v104 = v106 = uint112(v30);
            0x2b45(varg2, varg0, v29);
        }
        v107, v30 = varg2.balanceOf(varg0).gas(msg.gas);
        require(v107, MEM[64], RETURNDATASIZE());
        if (v107) {
            v108 = 32;
            if (32 > RETURNDATASIZE()) {
                v108 = v109 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v108 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v108 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v108 - MEM[64] >= 32);
        }
        v110 = _SafeSub(v30, v104);
        v30 = v111 = 0x4825(v110, v104, v103);
        if (address(v30) == varg2) {
        }
        require(varg0.code.size, v31, v31);
        v112 = new uint256[](0);
        v113, /* uint256 */ v114 = varg0.swap(v30, v30, address(this), v112).value(v31).gas(msg.gas);
        require(v113, v114, RETURNDATASIZE());
        if (v113) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v31, v31, v31);
        }
    }
    require(v30, SwapFailed());
    v115 = v116 = 0;
    require(varg8 < 8);
    if (varg8) {
        if (varg8 - 6) {
            if (7 - varg8) {
                v115 = v117 = 0x4094(varg7, varg9, varg10, v30);
            } else {
                v115 = v118 = 0x4094(varg7, varg9, varg10, v30);
            }
        } else {
            v119 = new struct(5);
            require(!((v119 + 160 > uint64.max) | (v119 + 160 < v119)), Panic(65)); // failed memory allocation (too much memory)
            v119.word0 = 0;
            v119.word1 = 0;
            v119.word2 = 0;
            v119.word3 = 0;
            v119.word4 = 0;
            v120 = v121 = varg9 != varg9;
            require(!v121);
            if (varg9 >= varg10) {
                v120 = v122 = 0;
            } else {
                require(!v121);
            }
            require(!(varg11 - uint24(varg11)));
            require(!(varg12 - int24(varg12)));
            v123 = new struct(5);
            require(!((v123 + 160 > uint64.max) | (v123 + 160 < v123)), Panic(65)); // failed memory allocation (too much memory)
            v123.word0 = address(v124);
            v123.word1 = address(v124);
            v123.word2 = uint24(varg11);
            v123.word3 = int24(varg12);
            v123.word4 = varg13;
            require(!v120);
            v125, v126 = varg9.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
            require(v125, MEM[64], RETURNDATASIZE());
            v126 = 0;
            if (v125) {
                v127 = 32;
                if (32 > RETURNDATASIZE()) {
                    v127 = v128 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v127 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v127 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v127 - MEM[64] >= 32);
            }
            if (v126 < v30) {
                0x390a(varg9, v30);
            }
            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
            v129, /* uint256 */ v130 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg9, stor_4_0_19, address(v30), uint48(block.timestamp + 60)).gas(msg.gas);
            require(v129, v130, RETURNDATASIZE());
            if (v129) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v115 = v131 = 0;
            }
            v132 = address(v123.word0);
            v132 = v133 = address(v123.word1);
            if (v132 == varg9) {
            }
            MEM[v134.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v134.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v135 = new struct(4);
            require(!((v135 + 128 < v135) | (v135 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v135.word0 = 3;
            v136 = v137 = 0;
            while (v136 < 96) {
                MEM[v135 + v136 + 32] = 96;
                v136 = v136 + 32;
            }
            v138 = new struct(5);
            require(!((v138 + 160 > uint64.max) | (v138 + 160 < v138)), Panic(65)); // failed memory allocation (too much memory)
            v138.word0 = v123;
            v138.word1 = v132 == varg9;
            v138.word2 = uint128(v30);
            v138.word3 = 1;
            v139 = 32;
            v140 = new struct(1);
            require(!((v140 + 32 < v140) | (v140 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v140.word0 = v115;
            v138.word4 = v140;
            MEM[MEM[64] + v139] = 32;
            MEM[MEM[64] + v139 + 32] = address(MEM[v138.word0]);
            MEM[MEM[64] + v139 + 64] = address(MEM[v138.word0 + 32]);
            MEM[MEM[64] + v139 + 96] = uint24(MEM[v138.word0 + 64]);
            MEM[MEM[64] + v139 + 128] = int24(MEM[v138.word0 + 96]);
            MEM[MEM[64] + v139 + 160] = address(MEM[v138.word0 + 128]);
            MEM[MEM[64] + v139 + 192] = bool(v138.word1);
            MEM[MEM[64] + v139 + 224] = uint128(v138.word2);
            MEM[MEM[64] + v139 + (uint8.max + 1)] = uint128(v138.word3);
            MEM[MEM[64] + v139 + 288] = 288;
            MEM[MEM[64] + v139 + 320] = MEM[v138.word4];
            MCOPY(MEM[64] + v139 + 320 + 32, 32 + v138.word4, MEM[v138.word4]);
            MEM[32 + (MEM[v138.word4] + (MEM[64] + v139 + 320))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v138.word4]) + (MEM[64] + v139 + 320) + 32 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v138.word4]) + (MEM[64] + v139 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v138.word4]) + (MEM[64] + v139 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v135.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v141 = v135.data;
            v135.word1 = MEM[64];
            require(v135.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v142 = v135.data;
            if (v132 != varg9) {
                v143 = new struct(3);
                v143.word1 = address(v123.word1);
                v143.word2 = v30;
                v143.word0 = 64;
                require(!((v143 + 96 < v143) | (v143 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v135.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v144 = 64 + v135;
            } else {
                v143 = v145 = new struct(3);
                v145.word1 = address(v123.word0);
                v145.word2 = v30;
                v145.word0 = 64;
                require(!((v145 + 96 < v145) | (v145 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v135.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v144 = v146 = 64 + v135;
            }
            MEM[v144] = v143;
            require(1 < v135.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v132 != varg9) {
                v147 = v148 = address(v123.word0);
            } else {
                v147 = address(v123.word1);
            }
            v149 = new struct(3);
            v149.word1 = address(v147);
            v149.word2 = 1;
            v149.word0 = 64;
            require(!((v149 + 96 < v149) | (v149 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(2 < v135.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v135.word3 = v149;
            require(2 < v135.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v150 = new struct(2);
            require(!((v150 + 64 < v150) | (v150 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v150.word0 = 1;
            v151 = v152 = 0;
            while (v151 < 32) {
                MEM[v150 + v151 + 32] = 96;
                v151 = v151 + 32;
            }
            MEM[MEM[64] + v139] = 64;
            MEM[MEM[64] + v139 + 64] = v134.length;
            MCOPY(MEM[64] + v139 + 64 + 32, v134.data, v134.length);
            MEM[32 + (v134.length + (MEM[64] + v139 + 64))] = 0;
            MEM[MEM[64] + v139 + 32] = 128;
            MEM[32 + (MEM[64] + v139 + 64) + 32] = v135.word0.length;
            v153 = 32 + (MEM[64] + v139 + 64) + 32 + 32;
            v154 = v155 = 32 + (MEM[64] + v139 + 64) + 32 + 96 + 32;
            v156 = v135.data;
            v157 = 0;
            while (v157 < v135.word0.length) {
                MEM[v153] = v154 - (32 + (MEM[64] + v139 + 64) + 32) - 32;
                MEM[v154] = MEM[MEM[v156]];
                MCOPY(v154 + 32, 32 + MEM[v156], MEM[MEM[v156]]);
                MEM[32 + (MEM[MEM[v156]] + v154)] = 0;
                v154 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v156]]) + v154 + 32;
                v156 = v156 + 32;
                v153 = v153 + 32;
                v157 = v157 + 1;
            }
            MEM[MEM[64]] = v154 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v154 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v154 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v150.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v158 = v150.data;
            v150.word1 = MEM[64];
            require(v150.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v159 = v150.data;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            if (bool(address(v132))) {
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v160, v115 = address(v132).balanceOf(this).gas(msg.gas);
                require(v160, MEM[64], RETURNDATASIZE());
                if (v160) {
                    if (v139 > RETURNDATASIZE()) {
                        v139 = v161 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v139 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v139 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v139 - MEM[64] >= v139);
                }
            } else {
                v115 = v162 = this.balance;
            }
            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
            require(stor_4_0_19.code.size, v115, v115);
            v163 = new bytes[](v164.length);
            MCOPY(v163.data, v164.data, v164.length);
            v163[v164.length] = 0;
            v165 = v163.data;
            v166 = new uint256[](v150.word0.length);
            v163[32][32] = v150.word0.length;
            v167 = v166.data;
            v168 = v169 = v166.data + 32;
            v170 = v150.data;
            v171 = 0;
            while (v171 < v150.word0.length) {
                MEM[v167] = v168 - v166 - 32;
                MEM[v168] = MEM[MEM[v170]];
                MCOPY(v168 + 32, 32 + MEM[v170], MEM[MEM[v170]]);
                MEM[32 + (MEM[MEM[v170]] + v168)] = 0;
                v168 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v170]]) + v168 + 32;
                v170 = v170 + 32;
                v167 = v167 + 32;
                v171 = v171 + 1;
            }
            v172, /* uint256 */ v173 = stor_4_0_19.execute(v163, v166, block.timestamp + 1).value(v115).gas(msg.gas);
            require(v172, v173, RETURNDATASIZE());
            if (v172) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v115, v115, v115);
            }
            if (bool(address(v132))) {
                v174, v115 = address(v132).balanceOf(this).gas(msg.gas);
                require(v174, MEM[64], RETURNDATASIZE());
                if (v174) {
                    if (v139 > RETURNDATASIZE()) {
                        v139 = v175 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v139 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v139 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v139 - MEM[64] >= v139);
                }
                v115 = v176 = _SafeSub(v115, v115);
            } else {
                v177 = this.balance;
                v115 = v178 = _SafeSub(v177, v115);
                if (v178) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v115, v115);
                    v179, /* uint256 */ v180 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v178).gas(msg.gas);
                    require(v179, v180, RETURNDATASIZE());
                    if (v179) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v115, v115, v115);
                    }
                }
            }
        }
    } else {
        v181, v115, v115, /* uint32 */ v182 = varg7.getReserves().gas(msg.gas);
        require(v181, MEM[64], RETURNDATASIZE());
        if (v181) {
            v183 = 96;
            if (96 > RETURNDATASIZE()) {
                v183 = v184 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v183 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v183 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v183 + 31);
            require(MEM[64] + v183 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            require(!(v115 - uint112(v115)));
            require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
        }
        v185, v115 = varg7.token0().gas(msg.gas);
        require(v185, MEM[64], RETURNDATASIZE());
        if (v185) {
            v186 = 32;
            if (32 > RETURNDATASIZE()) {
                v186 = v187 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v186 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v186 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v186 + 31);
            require(MEM[64] + v186 - MEM[64] >= 32);
            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        }
        if (address(v115) != varg9) {
            v188 = uint112(v115);
            v189 = uint112(v115);
            0x2b45(varg9, varg7, v30);
        } else {
            v188 = v190 = uint112(v115);
            v189 = v191 = uint112(v115);
            0x2b45(varg9, varg7, v30);
        }
        v192, v115 = varg9.balanceOf(varg7).gas(msg.gas);
        require(v192, MEM[64], RETURNDATASIZE());
        if (v192) {
            v193 = 32;
            if (32 > RETURNDATASIZE()) {
                v193 = v194 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v193 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v193 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v193 - MEM[64] >= 32);
        }
        v195 = _SafeSub(v115, v189);
        v115 = v196 = 0x4825(v195, v189, v188);
        if (address(v115) == varg9) {
        }
        require(varg7.code.size, v116, v116);
        v197 = new uint256[](0);
        v198, /* uint256 */ v199 = varg7.swap(v115, v115, address(this), v197).value(v116).gas(msg.gas);
        require(v198, v199, RETURNDATASIZE());
        if (v198) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v116, v116, v116);
        }
    }
    v200 = 0x2a4c(v115, varg15);
    require(!(varg3 - address(varg3)));
    emit 0xb735592d2893f10a0033b5c5f91afb74008151cb458e93406022e1a7e570fc39(varg2, address(varg3), v29, v30, v200, varg14.length, varg15);
    return v200;
}

function 0x26eb54b5(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < 8);
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

function rescueETH() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    if (this.balance) {
        v0, /* uint256 */ v1 = 0x8bdf3dae4f9817320cb0317521f56607d271fef.call().value(this.balance).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v2 = v3 = new bytes[](RETURNDATASIZE());
            require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v1 = v3.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        require(v0, TransferFailed());
        exit;
    } else {
        exit;
    }
}

function 0x1c95ee4b(address varg0, address varg1, address varg2, uint256 varg3, address varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11, address varg12, address varg13, address varg14, address varg15, address varg16, address varg17, address varg18) public nonPayable { 
    require(msg.data.length - 4 >= 608);
    require(224 <= msg.data.length - 4);
    require(msg.data.length - 228 >= 224);
    require(varg14 <= uint64.max);
    require(4 + varg14 + 31 < msg.data.length);
    require(varg14.length <= uint64.max);
    require((varg14.length << 5) + (4 + varg14) + 32 <= msg.data.length);
    require(varg15 <= uint64.max);
    require(4 + varg15 + 31 < msg.data.length);
    require(varg15.length <= uint64.max);
    require((varg15.length << 5) + (4 + varg15) + 32 <= msg.data.length);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    v3 = v4 = !varg14.length;
    if (bool(varg14.length)) {
        v3 = v5 = varg14.length != varg15.length;
    }
    require(!v3, InvalidParams());
    require(varg16, InvalidAmount());
    v6 = new struct(3);
    require(!((v6 + 96 < v6) | (v6 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v6, msg.data.length, 96);
    v7 = v8 = 0;
    while (v7 < varg14.length) {
        v9 = 0x2636(varg14.data, varg14.length, v7);
        require(!(msg.data[v9] - address(msg.data[v9])));
        v10 = 0x2636(varg15.data, varg15.length, v7);
        v11 = v12 = msg.data[v10];
        v13 = v14 = 0;
        while (v11) {
            if (0 != v11 > varg16) {
            }
            0x3998(varg2, msg.data[v9], this, v11);
            v15 = v16 = 0;
            require(varg1 < 8);
            if (varg1) {
                if (varg1 - 6) {
                    if (7 - varg1) {
                        v17 = v18 = 0x18d9a;
                        require(!(varg3 - address(varg3)));
                    } else {
                        v17 = 0x18d21;
                        require(!(varg3 - address(varg3)));
                    }
                    v15 = v19 = 0x4094(v20, v21, v22, v11);
                } else {
                    v23 = new struct(5);
                    require(!((v23 + 160 > uint64.max) | (v23 + 160 < v23)), Panic(65)); // failed memory allocation (too much memory)
                    v23.word0 = 0;
                    v23.word1 = 0;
                    v23.word2 = 0;
                    v23.word3 = 0;
                    v23.word4 = 0;
                    require(!(varg3 - address(varg3)));
                    if (varg2 >= address(varg3)) {
                        require(!(varg3 - address(varg3)));
                    } else {
                        require(!(varg3 - address(varg3)));
                    }
                    require(!(varg4 - uint24(varg4)));
                    require(!(varg5 - int24(varg5)));
                    v24 = new struct(5);
                    require(!((v24 + 160 > uint64.max) | (v24 + 160 < v24)), Panic(65)); // failed memory allocation (too much memory)
                    v24.word0 = address(v25);
                    v24.word1 = address(v26);
                    v24.word2 = uint24(varg4);
                    v24.word3 = int24(varg5);
                    v24.word4 = varg6;
                    v27, /* uint256 */ v28 = varg2.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
                    if (!v27) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v27) {
                            v29 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v29 = v30 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v29 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v29 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v29 - MEM[64] >= 32);
                            if (v28 < v11) {
                                // Unknown jump to Block 0x33620x35edB0x28a8B0x246a. Refer to 3-address code (TAC);
                            }
                        } else if (0 >= v11) {
                            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                            v31 = v32 = MEM[64];
                            MEM[v32] = 0x87517c4500000000000000000000000000000000000000000000000000000000;
                            v33 = v34 = 0;
                            MEM[v32 + 4] = varg2;
                            MEM[v32 + 4 + 32] = stor_4_0_19;
                            MEM[v32 + 4 + 64] = address(v11);
                            MEM[v32 + 4 + 96] = uint48(block.timestamp + 60);
                            v35 = v36 = 128 + (v32 + 4);
                        }
                        0x390a(varg2, v11);
                        require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                        v31 = v37 = MEM[64];
                        MEM[v37] = 0x87517c4500000000000000000000000000000000000000000000000000000000;
                        v33 = v38 = 0;
                        MEM[v37 + 4] = varg2;
                        MEM[v37 + 4 + 32] = stor_4_0_19;
                        MEM[v37 + 4 + 64] = address(v11);
                        MEM[v37 + 4 + 96] = uint48(block.timestamp + 60);
                        v35 = 128 + (v37 + 4);
                        v39 = 0x22d473030f116ddee9f6b43ac78ba3.call(MEM[v2f8b0x35ed_0x2V0x28a8V0x246a:v2f8b0x35ed_0x2V0x28a8V0x246a + v27d4V0x2f570x35edV0x28a8V0x246a - v2f8b0x35ed_0x2V0x28a8V0x246a], MEM[v2f8b0x35ed_0x2V0x28a8V0x246a:v2f8b0x35ed_0x2V0x28a8V0x246a + v2f8b0x35ed_0x3V0x28a8V0x246a]).value(v33).gas(msg.gas);
                        if (!v39) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v39) {
                                require(!((v31 < v31) | (v31 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                v15 = v40 = 0;
                            }
                            v41 = address(v24.word0);
                            v41 = v42 = address(v24.word1);
                            if (v41 == varg2) {
                            }
                            MEM[v43.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                            MEM[v43.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                            require(!0, Panic(65)); // failed memory allocation (too much memory)
                            v44 = new struct(4);
                            require(!((v44 + 128 < v44) | (v44 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            v44.word0 = 3;
                            v45 = v46 = 0;
                            while (v45 < 96) {
                                MEM[v44 + v45 + 32] = 96;
                                v45 = v45 + 32;
                            }
                            v47 = new struct(5);
                            require(!((v47 + 160 > uint64.max) | (v47 + 160 < v47)), Panic(65)); // failed memory allocation (too much memory)
                            v47.word0 = v24;
                            v47.word1 = v41 == varg2;
                            v47.word2 = uint128(v11);
                            v47.word3 = 1;
                            v48 = 32;
                            v49 = new struct(1);
                            require(!((v49 + 32 < v49) | (v49 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            v49.word0 = v15;
                            v47.word4 = v49;
                            MEM[MEM[64] + v48] = 32;
                            MEM[MEM[64] + v48 + 32] = address(MEM[v47.word0]);
                            MEM[MEM[64] + v48 + 64] = address(MEM[v47.word0 + 32]);
                            MEM[MEM[64] + v48 + 96] = uint24(MEM[v47.word0 + 64]);
                            MEM[MEM[64] + v48 + 128] = int24(MEM[v47.word0 + 96]);
                            MEM[MEM[64] + v48 + 160] = address(MEM[v47.word0 + 128]);
                            MEM[MEM[64] + v48 + 192] = bool(v47.word1);
                            MEM[MEM[64] + v48 + 224] = uint128(v47.word2);
                            MEM[MEM[64] + v48 + (uint8.max + 1)] = uint128(v47.word3);
                            MEM[MEM[64] + v48 + 288] = 288;
                            MEM[MEM[64] + v48 + 320] = MEM[v47.word4];
                            MCOPY(MEM[64] + v48 + 320 + 32, 32 + v47.word4, MEM[v47.word4]);
                            MEM[32 + (MEM[v47.word4] + (MEM[64] + v48 + 320))] = 0;
                            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v47.word4]) + (MEM[64] + v48 + 320) + 32 - MEM[64] - 32;
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v47.word4]) + (MEM[64] + v48 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v47.word4]) + (MEM[64] + v48 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(v44.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v50 = v44.data;
                            v44.word1 = MEM[64];
                            require(v44.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v51 = v44.data;
                            if (v41 != varg2) {
                                v52 = new struct(3);
                                v52.word1 = address(v24.word1);
                                v52.word2 = v11;
                                v52.word0 = 64;
                                require(!((v52 + 96 < v52) | (v52 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(1 < v44.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v53 = 64 + v44;
                            } else {
                                v52 = v54 = new struct(3);
                                v54.word1 = address(v24.word0);
                                v54.word2 = v11;
                                v54.word0 = 64;
                                require(!((v54 + 96 < v54) | (v54 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(1 < v44.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v53 = v55 = 64 + v44;
                            }
                            MEM[v53] = v52;
                            require(1 < v44.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            if (v41 != varg2) {
                                v56 = v57 = address(v24.word0);
                            } else {
                                v56 = address(v24.word1);
                            }
                            v58 = new struct(3);
                            v58.word1 = address(v56);
                            v58.word2 = 1;
                            v58.word0 = 64;
                            require(!((v58 + 96 < v58) | (v58 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(2 < v44.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v44.word3 = v58;
                            require(2 < v44.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v59 = new struct(2);
                            require(!((v59 + 64 < v59) | (v59 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            v59.word0 = 1;
                            v60 = v61 = 0;
                            while (v60 < 32) {
                                MEM[v59 + v60 + 32] = 96;
                                v60 = v60 + 32;
                            }
                            MEM[MEM[64] + v48] = 64;
                            MEM[MEM[64] + v48 + 64] = v43.length;
                            MCOPY(MEM[64] + v48 + 64 + 32, v43.data, v43.length);
                            MEM[32 + (v43.length + (MEM[64] + v48 + 64))] = 0;
                            MEM[MEM[64] + v48 + 32] = 128;
                            MEM[32 + (MEM[64] + v48 + 64) + 32] = v44.word0.length;
                            v62 = 32 + (MEM[64] + v48 + 64) + 32 + 32;
                            v63 = v64 = 32 + (MEM[64] + v48 + 64) + 32 + 96 + 32;
                            v65 = v44.data;
                            v66 = 0;
                            while (v66 < v44.word0.length) {
                                MEM[v62] = v63 - (32 + (MEM[64] + v48 + 64) + 32) - 32;
                                MEM[v63] = MEM[MEM[v65]];
                                MCOPY(v63 + 32, 32 + MEM[v65], MEM[MEM[v65]]);
                                MEM[32 + (MEM[MEM[v65]] + v63)] = 0;
                                v63 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v65]]) + v63 + 32;
                                v65 = v65 + 32;
                                v62 = v62 + 32;
                                v66 = v66 + 1;
                            }
                            MEM[MEM[64]] = v63 - MEM[64] - 32;
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v63 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v63 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(v59.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v67 = v59.data;
                            v59.word1 = MEM[64];
                            require(v59.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v68 = v59.data;
                            require(!0, Panic(65)); // failed memory allocation (too much memory)
                            if (bool(address(v41))) {
                                v69, /* uint112 */ v15 = address(v41).balanceOf(this).gas(msg.gas);
                                if (!v69) {
                                    RETURNDATACOPY(MEM[64], v15, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v69) {
                                    if (v48 > RETURNDATASIZE()) {
                                        v48 = v70 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v48 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v48 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v48 - MEM[64] >= v48);
                                }
                            } else {
                                v15 = v71 = this.balance;
                            }
                            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                            require(stor_4_0_19.code.size, v15, v15);
                            MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 96;
                            MEM[MEM[64] + 4 + 96] = v72.length;
                            MCOPY(MEM[64] + 4 + 96 + 32, v72.data, v72.length);
                            MEM[32 + (v72.length + (MEM[64] + 4 + 96))] = 0;
                            MEM[MEM[64] + 4 + 32] = 160;
                            MEM[32 + (MEM[64] + 4 + 96) + 32] = v59.word0.length;
                            v73 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                            v74 = v75 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                            v76 = v59.data;
                            v77 = 0;
                            while (v77 < v59.word0.length) {
                                MEM[v73] = v74 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                MEM[v74] = MEM[MEM[v76]];
                                MCOPY(v74 + 32, 32 + MEM[v76], MEM[MEM[v76]]);
                                MEM[32 + (MEM[MEM[v76]] + v74)] = 0;
                                v74 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v76]]) + v74 + 32;
                                v76 = v76 + 32;
                                v73 = v73 + 32;
                                v77 = v77 + 1;
                            }
                            MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                            v78 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v41b0V0x42c1V0x432eV0x31580x35edV0x28a8V0x246a - MEM[64]], MEM[MEM[64]:MEM[64] + v3c43V0x3c6a0x35edV0x28a8V0x246a]).value(v15).gas(msg.gas);
                            if (!v78) {
                                RETURNDATACOPY(MEM[64], v15, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v78) {
                                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(!v15, v15, v15);
                                }
                                if (bool(address(v41))) {
                                    v79, /* uint112 */ v15 = address(v41).balanceOf(this).gas(msg.gas);
                                    if (!v79) {
                                        RETURNDATACOPY(MEM[64], v15, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v79) {
                                            if (v48 > RETURNDATASIZE()) {
                                                v48 = v80 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v48 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v48 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            require(MEM[64] + v48 - MEM[64] >= v48);
                                        }
                                        v15 = v81 = _SafeSub(v15, v15);
                                    }
                                } else {
                                    v82 = this.balance;
                                    v15 = v83 = _SafeSub(v82, v15);
                                    if (v83) {
                                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v15, v15);
                                        v84 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v83).gas(msg.gas);
                                        if (!v84) {
                                            RETURNDATACOPY(MEM[64], v15, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v84) {
                                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(!v15, v15, v15);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                require(!(varg3 - address(varg3)));
                v85, /* uint112 */ v15, /* uint112 */ v15, /* uint32 */ v86 = varg0.getReserves().gas(msg.gas);
                if (!v85) {
                    RETURNDATACOPY(MEM[64], v16, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v85) {
                        if (96 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                            v87 = v88 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 96;
                            v87 = v89 = MEM[64] + 96;
                        }
                        require(v87 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v15 - uint112(v15)));
                        require(!(v86 - uint32(v86)));
                    }
                    v90, /* uint112 */ v15 = varg0.token0().gas(msg.gas);
                    if (!v90) {
                        RETURNDATACOPY(MEM[64], v16, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v90) {
                            if (32 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                v91 = v92 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 32;
                                v91 = v93 = MEM[64] + 32;
                            }
                            require(v91 - MEM[64] >= 32);
                            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                        }
                        if (varg2 != address(v15)) {
                            v94 = uint112(v15);
                            v95 = uint112(v15);
                            0x2b45(varg2, varg0, v11);
                        } else {
                            v94 = v96 = uint112(v15);
                            v95 = v97 = uint112(v15);
                            0x2b45(varg2, varg0, v11);
                        }
                        v98, /* uint112 */ v15 = varg2.balanceOf(varg0).gas(msg.gas);
                        if (!v98) {
                            RETURNDATACOPY(MEM[64], v16, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v98) {
                                v99 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v99 = v100 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v99 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v99 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v99 - MEM[64] >= 32);
                            }
                            v101 = _SafeSub(v15, v95);
                            v15 = v102 = 0x4825(v101, v95, v94);
                            if (varg2 == address(v15)) {
                            }
                            require(varg0.code.size, v16, v16);
                            v103 = new uint256[](0);
                            v104 = varg0.swap(v15, v15, address(this), v103).value(v16).gas(msg.gas);
                            if (!v104) {
                                RETURNDATACOPY(MEM[64], v16, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v104) {
                                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v16, v16, v16);
                            }
                        }
                    }
                }
            }
            v105 = v106 = 0;
            require(varg8 < 8);
            if (varg8) {
                if (varg8 - 6) {
                    if (7 - varg8) {
                        v107 = v108 = 0x18d9a;
                    } else {
                        v107 = 0x18d21;
                    }
                    v105 = v109 = 0x4094(v110, v111, v112, v15);
                } else {
                    v113 = new struct(5);
                    require(!((v113 + 160 > uint64.max) | (v113 + 160 < v113)), Panic(65)); // failed memory allocation (too much memory)
                    v113.word0 = 0;
                    v113.word1 = 0;
                    v113.word2 = 0;
                    v113.word3 = 0;
                    v113.word4 = 0;
                    if (varg9 >= varg10) {
                    } else {
                    }
                    require(!(varg11 - uint24(varg11)));
                    require(!(varg12 - int24(varg12)));
                    v114 = new struct(5);
                    require(!((v114 + 160 > uint64.max) | (v114 + 160 < v114)), Panic(65)); // failed memory allocation (too much memory)
                    v114.word0 = address(v115);
                    v114.word1 = address(v116);
                    v114.word2 = uint24(varg11);
                    v114.word3 = int24(varg12);
                    v114.word4 = varg13;
                    v117, /* uint256 */ v118 = varg9.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
                    if (!v117) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v117) {
                            v119 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v119 = v120 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v119 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v119 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v119 - MEM[64] >= 32);
                            if (v118 < v15) {
                                // Unknown jump to Block 0x33620x35edB0x28b6B0x246a. Refer to 3-address code (TAC);
                            }
                        } else if (0 >= v15) {
                            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                            v121 = v122 = MEM[64];
                            MEM[v122] = 0x87517c4500000000000000000000000000000000000000000000000000000000;
                            v123 = v124 = 0;
                            MEM[v122 + 4] = varg9;
                            MEM[v122 + 4 + 32] = stor_4_0_19;
                            MEM[v122 + 4 + 64] = address(v15);
                            MEM[v122 + 4 + 96] = uint48(block.timestamp + 60);
                            v125 = v126 = 128 + (v122 + 4);
                        }
                        0x390a(varg9, v15);
                        require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                        v121 = v127 = MEM[64];
                        MEM[v127] = 0x87517c4500000000000000000000000000000000000000000000000000000000;
                        v123 = v128 = 0;
                        MEM[v127 + 4] = varg9;
                        MEM[v127 + 4 + 32] = stor_4_0_19;
                        MEM[v127 + 4 + 64] = address(v15);
                        MEM[v127 + 4 + 96] = uint48(block.timestamp + 60);
                        v125 = 128 + (v127 + 4);
                        v129 = 0x22d473030f116ddee9f6b43ac78ba3.call(MEM[v2f8b0x35ed_0x2V0x28b6V0x246a:v2f8b0x35ed_0x2V0x28b6V0x246a + v27d4V0x2f570x35edV0x28b6V0x246a - v2f8b0x35ed_0x2V0x28b6V0x246a], MEM[v2f8b0x35ed_0x2V0x28b6V0x246a:v2f8b0x35ed_0x2V0x28b6V0x246a + v2f8b0x35ed_0x3V0x28b6V0x246a]).value(v123).gas(msg.gas);
                        if (!v129) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v129) {
                                require(!((v121 < v121) | (v121 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                v105 = v130 = 0;
                            }
                            v131 = address(v114.word0);
                            v131 = v132 = address(v114.word1);
                            if (v131 == varg9) {
                            }
                            MEM[v133.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                            MEM[v133.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                            require(!0, Panic(65)); // failed memory allocation (too much memory)
                            v134 = new struct(4);
                            require(!((v134 + 128 < v134) | (v134 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            v134.word0 = 3;
                            v135 = v136 = 0;
                            while (v135 < 96) {
                                MEM[v134 + v135 + 32] = 96;
                                v135 = v135 + 32;
                            }
                            v137 = new struct(5);
                            require(!((v137 + 160 > uint64.max) | (v137 + 160 < v137)), Panic(65)); // failed memory allocation (too much memory)
                            v137.word0 = v114;
                            v137.word1 = v131 == varg9;
                            v137.word2 = uint128(v15);
                            v137.word3 = 1;
                            v138 = 32;
                            v139 = new struct(1);
                            require(!((v139 + 32 < v139) | (v139 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            v139.word0 = v105;
                            v137.word4 = v139;
                            MEM[MEM[64] + v138] = 32;
                            MEM[MEM[64] + v138 + 32] = address(MEM[v137.word0]);
                            MEM[MEM[64] + v138 + 64] = address(MEM[v137.word0 + 32]);
                            MEM[MEM[64] + v138 + 96] = uint24(MEM[v137.word0 + 64]);
                            MEM[MEM[64] + v138 + 128] = int24(MEM[v137.word0 + 96]);
                            MEM[MEM[64] + v138 + 160] = address(MEM[v137.word0 + 128]);
                            MEM[MEM[64] + v138 + 192] = bool(v137.word1);
                            MEM[MEM[64] + v138 + 224] = uint128(v137.word2);
                            MEM[MEM[64] + v138 + (uint8.max + 1)] = uint128(v137.word3);
                            MEM[MEM[64] + v138 + 288] = 288;
                            MEM[MEM[64] + v138 + 320] = MEM[v137.word4];
                            MCOPY(MEM[64] + v138 + 320 + 32, 32 + v137.word4, MEM[v137.word4]);
                            MEM[32 + (MEM[v137.word4] + (MEM[64] + v138 + 320))] = 0;
                            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v137.word4]) + (MEM[64] + v138 + 320) + 32 - MEM[64] - 32;
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v137.word4]) + (MEM[64] + v138 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v137.word4]) + (MEM[64] + v138 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(v134.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v140 = v134.data;
                            v134.word1 = MEM[64];
                            require(v134.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v141 = v134.data;
                            if (v131 != varg9) {
                                v142 = new struct(3);
                                v142.word1 = address(v114.word1);
                                v142.word2 = v15;
                                v142.word0 = 64;
                                require(!((v142 + 96 < v142) | (v142 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(1 < v134.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v143 = 64 + v134;
                            } else {
                                v142 = v144 = new struct(3);
                                v144.word1 = address(v114.word0);
                                v144.word2 = v15;
                                v144.word0 = 64;
                                require(!((v144 + 96 < v144) | (v144 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(1 < v134.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v143 = v145 = 64 + v134;
                            }
                            MEM[v143] = v142;
                            require(1 < v134.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            if (v131 != varg9) {
                                v146 = v147 = address(v114.word0);
                            } else {
                                v146 = address(v114.word1);
                            }
                            v148 = new struct(3);
                            v148.word1 = address(v146);
                            v148.word2 = 1;
                            v148.word0 = 64;
                            require(!((v148 + 96 < v148) | (v148 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(2 < v134.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v134.word3 = v148;
                            require(2 < v134.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v149 = new struct(2);
                            require(!((v149 + 64 < v149) | (v149 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            v149.word0 = 1;
                            v150 = v151 = 0;
                            while (v150 < 32) {
                                MEM[v149 + v150 + 32] = 96;
                                v150 = v150 + 32;
                            }
                            MEM[MEM[64] + v138] = 64;
                            MEM[MEM[64] + v138 + 64] = v133.length;
                            MCOPY(MEM[64] + v138 + 64 + 32, v133.data, v133.length);
                            MEM[32 + (v133.length + (MEM[64] + v138 + 64))] = 0;
                            MEM[MEM[64] + v138 + 32] = 128;
                            MEM[32 + (MEM[64] + v138 + 64) + 32] = v134.word0.length;
                            v152 = 32 + (MEM[64] + v138 + 64) + 32 + 32;
                            v153 = v154 = 32 + (MEM[64] + v138 + 64) + 32 + 96 + 32;
                            v155 = v134.data;
                            v156 = 0;
                            while (v156 < v134.word0.length) {
                                MEM[v152] = v153 - (32 + (MEM[64] + v138 + 64) + 32) - 32;
                                MEM[v153] = MEM[MEM[v155]];
                                MCOPY(v153 + 32, 32 + MEM[v155], MEM[MEM[v155]]);
                                MEM[32 + (MEM[MEM[v155]] + v153)] = 0;
                                v153 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v155]]) + v153 + 32;
                                v155 = v155 + 32;
                                v152 = v152 + 32;
                                v156 = v156 + 1;
                            }
                            MEM[MEM[64]] = v153 - MEM[64] - 32;
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v153 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v153 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(v149.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v157 = v149.data;
                            v149.word1 = MEM[64];
                            require(v149.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v158 = v149.data;
                            require(!0, Panic(65)); // failed memory allocation (too much memory)
                            if (bool(address(v131))) {
                                v159, /* uint112 */ v105 = address(v131).balanceOf(this).gas(msg.gas);
                                if (!v159) {
                                    RETURNDATACOPY(MEM[64], v105, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v159) {
                                    if (v138 > RETURNDATASIZE()) {
                                        v138 = v160 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v138 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v138 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v138 - MEM[64] >= v138);
                                }
                            } else {
                                v105 = v161 = this.balance;
                            }
                            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                            require(stor_4_0_19.code.size, v105, v105);
                            MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 96;
                            MEM[MEM[64] + 4 + 96] = v162.length;
                            MCOPY(MEM[64] + 4 + 96 + 32, v162.data, v162.length);
                            MEM[32 + (v162.length + (MEM[64] + 4 + 96))] = 0;
                            MEM[MEM[64] + 4 + 32] = 160;
                            MEM[32 + (MEM[64] + 4 + 96) + 32] = v149.word0.length;
                            v163 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                            v164 = v165 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                            v166 = v149.data;
                            v167 = 0;
                            while (v167 < v149.word0.length) {
                                MEM[v163] = v164 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                MEM[v164] = MEM[MEM[v166]];
                                MCOPY(v164 + 32, 32 + MEM[v166], MEM[MEM[v166]]);
                                MEM[32 + (MEM[MEM[v166]] + v164)] = 0;
                                v164 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v166]]) + v164 + 32;
                                v166 = v166 + 32;
                                v163 = v163 + 32;
                                v167 = v167 + 1;
                            }
                            MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                            v168 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v41b0V0x42c1V0x432eV0x31580x35edV0x28b6V0x246a - MEM[64]], MEM[MEM[64]:MEM[64] + v3c43V0x3c6a0x35edV0x28b6V0x246a]).value(v105).gas(msg.gas);
                            if (!v168) {
                                RETURNDATACOPY(MEM[64], v105, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v168) {
                                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(!v105, v105, v105);
                                }
                                if (bool(address(v131))) {
                                    v169, /* uint112 */ v105 = address(v131).balanceOf(this).gas(msg.gas);
                                    if (!v169) {
                                        RETURNDATACOPY(MEM[64], v105, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v169) {
                                            if (v138 > RETURNDATASIZE()) {
                                                v138 = v170 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v138 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v138 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            require(MEM[64] + v138 - MEM[64] >= v138);
                                        }
                                        v105 = v171 = _SafeSub(v105, v105);
                                    }
                                } else {
                                    v172 = this.balance;
                                    v105 = v173 = _SafeSub(v172, v105);
                                    if (v173) {
                                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v105, v105);
                                        v174 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v173).gas(msg.gas);
                                        if (!v174) {
                                            RETURNDATACOPY(MEM[64], v105, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v174) {
                                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(!v105, v105, v105);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                v175, /* uint112 */ v105, /* uint112 */ v105, /* uint32 */ v176 = varg7.getReserves().gas(msg.gas);
                if (!v175) {
                    RETURNDATACOPY(MEM[64], v106, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v175) {
                        if (96 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                            v177 = v178 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 96;
                            v177 = v179 = MEM[64] + 96;
                        }
                        require(v177 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v105 - uint112(v105)));
                        require(!(v176 - uint32(v176)));
                    }
                    v180, /* uint112 */ v105 = varg7.token0().gas(msg.gas);
                    if (!v180) {
                        RETURNDATACOPY(MEM[64], v106, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v180) {
                            if (32 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                v181 = v182 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 32;
                                v181 = v183 = MEM[64] + 32;
                            }
                            require(v181 - MEM[64] >= 32);
                            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                        }
                        if (varg9 != address(v105)) {
                            v184 = uint112(v105);
                            v185 = uint112(v105);
                            0x2b45(varg9, varg7, v15);
                        } else {
                            v184 = v186 = uint112(v105);
                            v185 = v187 = uint112(v105);
                            0x2b45(varg9, varg7, v15);
                        }
                        v188, /* uint112 */ v105 = varg9.balanceOf(varg7).gas(msg.gas);
                        if (!v188) {
                            RETURNDATACOPY(MEM[64], v106, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v188) {
                                v189 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v189 = v190 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v189 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v189 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v189 - MEM[64] >= 32);
                            }
                            v191 = _SafeSub(v105, v185);
                            v105 = v192 = 0x4825(v191, v185, v184);
                            if (varg9 == address(v105)) {
                            }
                            require(varg7.code.size, v106, v106);
                            v193 = new uint256[](0);
                            v194 = varg7.swap(v105, v105, address(this), v193).value(v106).gas(msg.gas);
                            if (!v194) {
                                RETURNDATACOPY(MEM[64], v106, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v194) {
                                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v106, v106, v106);
                            }
                        }
                    }
                }
            }
            v13 = _SafeAdd(v13, v11);
            v13 = _SafeAdd(v13, v15);
            v13 = _SafeAdd(v13, v105);
            v11 = _SafeSub(v11, v11);
        }
        v195 = _SafeAdd(v6.word0, v13);
        v6.word0 = v195;
        v196 = _SafeAdd(v6.word1, v13);
        v6.word1 = v196;
        v197 = _SafeAdd(v6.word2, v13);
        v6.word2 = v197;
        v7 = v7 + 1;
    }
    require(v6.word0, InvalidAmount());
    v198 = _SafeAdd(varg17, varg18);
    require(v198 <= v6.word2, InsufficientOutput());
    v199 = 0x292b(v6.word2, varg18);
    require(!(varg3 - address(varg3)));
    emit 0xb735592d2893f10a0033b5c5f91afb74008151cb458e93406022e1a7e570fc39(varg2, address(varg3), v6.word0, v6.word1, v199, varg14.length, varg18);
    return v199;
}

function 0x2636(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x292b(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = v3 = bool(varg1);
    if (v3) {
        v2 = v4 = varg0 > varg1;
    }
    if (v2) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v5, /* uint256 */ v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg1).gas(msg.gas);
        require(v5, v6, RETURNDATASIZE());
        if (v5) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            v0 = v7 = 0;
        }
        v8, /* uint256 */ v9 = block.coinbase.call().value(varg1).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v10 = v11 = new bytes[](RETURNDATASIZE());
            require(!((v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v11) | (v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v9 = v11.data;
            RETURNDATACOPY(v9, 0, RETURNDATASIZE());
        }
        require(v8, fullExit());
        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg1);
        varg0 = v12 = _SafeSub(varg0, varg1);
    }
    if (varg0) {
        0x2b45(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), stor_0_0_19, varg0);
        return varg0;
    } else {
        return varg0;
    }
}

function 0x2a4c(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = bool(varg1);
    if (v1) {
        v0 = varg0 > varg1;
    }
    if (v0) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v2, /* uint256 */ v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg1).gas(msg.gas);
        require(v2, v3, RETURNDATASIZE());
        if (v2) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        v4, /* uint256 */ v5 = block.coinbase.call().value(varg1).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v6 = v7 = new bytes[](RETURNDATASIZE());
            require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v5 = v7.data;
            RETURNDATACOPY(v5, 0, RETURNDATASIZE());
        }
        if (v4) {
            emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg1);
            varg0 = v8 = _SafeSub(varg0, varg1);
        }
        if (!varg0) {
            return varg0;
        }
    } else if (!varg0) {
        return varg0;
    }
    0x2b45(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), stor_0_0_19, varg0);
    return varg0;
}

function 0x2b45(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    v0[36] = varg2;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
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

function 0x390a(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x22d473030f116ddee9f6b43ac78ba3;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.approve(0x22d473030f116ddee9f6b43ac78ba3, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = v8 = !v2;
    if (bool(v2)) {
        v7 = v9 = bool(MEM[v4]);
        if (v9) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v10 = !MEM[v4 + 32];
        }
    }
    require(!v7, ApproveFailed());
    return ;
}

function 0x3998(uint256 varg0, address varg1, address varg2, uint256 varg3) private { 
    v0 = new bytes[](100);
    MEM[v0.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    v0[36] = varg2;
    MEM[v0 + 36 + 64] = varg3;
    require(!((v0 + 160 < v0) | (v0 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transferFrom(varg1, varg2, varg3).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = v8 = !v2;
    if (bool(v2)) {
        v7 = v9 = bool(MEM[v4]);
        if (v9) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v10 = !MEM[v4 + 32];
        }
    }
    require(!v7, TransferFromFailed());
    return ;
}

function 0x3b22(address varg0, address varg1, uint256 varg2) private { 
    _algebraSwapCallback = varg0;
    stor_3_0_19 = varg1;
    if (varg1 >= address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
        v0 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v0 = v1 = 0x1000276a4;
    }
    v2 = new uint256[](0);
    v3, /* uint256 */ v4, /* uint256 */ v4 = varg0.swap(address(this), varg1 < address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg2, address(v0), v2).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v5 = 0;
    v4 = v6 = 0;
    if (v3) {
        v7 = 64;
        if (64 > RETURNDATASIZE()) {
            v7 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v7 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v7 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v7 + 31);
        require(MEM[64] + v7 - MEM[64] >= 64);
    }
    _algebraSwapCallback = 0;
    stor_3_0_19 = 0;
    if (varg1 < address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
    }
    require(v4 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v4;
}

function 0x3cd4(address varg0, address varg1) private { 
    v0 = varg0;
    v1, /* uint112 */ v2, /* uint112 */ v3, /* uint32 */ v4 = v0.getReserves().gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v2 = v5 = 0;
    v3 = v6 = 0;
    if (v1) {
        if (96 > RETURNDATASIZE()) {
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            v7 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
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
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            v12 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v12 = v13 = MEM[64] + 32;
        }
        require(v12 - MEM[64] >= 32);
        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
    }
    if (varg1 != address(v10)) {
        v14 = v15 = uint112(v2);
        v16 = v17 = uint112(v3);
    } else {
        v14 = v18 = uint112(v3);
        v16 = v19 = uint112(v2);
    }
    v20, v21 = varg1.balanceOf(v0).gas(msg.gas);
    require(v20, MEM[64], RETURNDATASIZE());
    v21 = v22 = 0;
    if (v20) {
        v23 = v24 = 32;
        if (32 > RETURNDATASIZE()) {
            v23 = v25 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v23 - MEM[64] >= 32);
    }
    v26 = _SafeSub(v21, v16);
    v27 = v28 = 0x4825(v26, v16, v14);
    if (varg1 != address(v10)) {
        v27 = v29 = 0;
    } else {
        v27 = v30 = 0;
    }
    require(v0.code.size);
    v31 = new uint256[](0);
    v32, /* uint256 */ v33 = v0.swap(v27, v27, address(this), v31).gas(msg.gas);
    require(v32, v33, RETURNDATASIZE());
    if (v32) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return v28;
    } else {
        return v28;
    }
}

function 0x3e7a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = v1 = 0;
    v0 = v2 = 0;
    while (v0) {
        v0 = v3 = 0x18f4a;
        v0 = v4 = 0x18f6f;
        v0 = v5 = 16086;
        if (0 != v0 > v0) {
        }
        0x3998(v0, v0, this, v0);
        0x2b45(v0, v0, v0);
        v0 = v6 = 0x3cd4(v0, v0);
        while (1) {
            v0 += v0;
            if (v0 > v0) {
                break;
            } else {
                // Unknown jump to Block ['0x18f4a', '0x18f6f']. Refer to 3-address code (TAC);
                continue;
            }
        }
        v0 = v0 - v0;
        require(v0 <= v0, Panic(17)); // arithmetic overflow or underflow
        revert(Panic(17));
    }
    return v0, v0;
}

function 0x4042(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    varg2 = v0 = 0;
    varg2 = v1 = 0;
    while (v2) {
        varg2 = v3 = 0x190bd;
        varg2 = v4 = 0x190e2;
        varg2 = v5 = 16513;
        if (0 == v2 > v2) {
            0x3998(v2, varg2, this, v2);
            v2 = v6 = 0x3b22(varg2, v2, v2);
        } else {
            0x3998(v2, varg2, this, v2);
            v2 = v7 = 0x3b22(varg2, v2, v2);
        }
        while (1) {
            varg2 = varg2 + v2;
            if (varg2 > varg2) {
                break;
            } else {
                // Unknown jump to Block ['0x190bd', '0x190e2']. Refer to 3-address code (TAC);
                continue;
            }
        }
        v2 = v2 - v2;
        require(v2 <= v2, Panic(17)); // arithmetic overflow or underflow
        revert(Panic(17));
    }
    return varg2, varg2;
}

function 0x4094(address varg0, address varg1, address varg2, uint256 varg3) private { 
    _algebraSwapCallback = varg0;
    stor_3_0_19 = varg1;
    v0 = varg2 > varg1;
    if (varg2 <= varg1) {
        v1 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        v2 = 0;
        v3 = MEM[64];
        MEM[v3] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        v4 = this;
        v5 = v3 + 4;
    } else {
        v1 = v6 = 0x1000276a4;
        v2 = v7 = 0;
        v3 = v8 = MEM[64];
        MEM[v8] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        v4 = v9 = this;
        v5 = v10 = v8 + 4;
    }
    MEM[v5] = address(v4);
    MEM[v5 + 32] = bool(v0);
    MEM[v5 + 64] = varg3;
    MEM[v5 + 96] = address(v1);
    MEM[v5 + 128] = 160;
    MEM[v5 + 160] = 0;
    v11 = varg0.call(MEM[v40940x3b92:v40940x3b92 + 192 + v40940x3ba8 - v40940x3b92], MEM[v40940x3b92:v40940x3b92 + 64]).value(v2).gas(msg.gas);
    require(v11, MEM[64], RETURNDATASIZE());
    v12 = v13 = 0;
    v12 = v14 = 0;
    if (v11) {
        v15 = 64;
        if (64 > RETURNDATASIZE()) {
            v15 = v16 = RETURNDATASIZE();
        }
        require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v15 + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v15 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v15 + 31);
        require(v3 + v15 - v3 >= 64);
        v12 = MEM[v3];
        v12 = v17 = MEM[v3 + 32];
    }
    _algebraSwapCallback = 0;
    stor_3_0_19 = 0;
    if (v0) {
    }
    require(v12 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v12;
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
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = msg.sender;
    v0[36] = v1;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v0.length;
    v3, /* uint256 */ v4 = stor_3_0_19.transfer(msg.sender, v1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    v8 = !v3;
    if (bool(v3)) {
        v8 = v9 = bool(MEM[v5]);
        if (v9) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            require(!(MEM[v5 + 32] - bool(MEM[v5 + 32])));
            v8 = v10 = !MEM[v5 + 32];
        }
    }
    require(!v8, TransferFailed());
}

function 0xf5fc4f41(address varg0, address varg1, address varg2, address varg3, uint256 varg4, uint256 varg5, address varg6, address varg7, address varg8, address varg9, address varg10) public nonPayable { 
    require(msg.data.length - 4 >= 352);
    require(msg.data.length - 36 >= 224);
    require(varg8 <= uint64.max);
    require(4 + varg8 + 31 < msg.data.length);
    require(varg8.length <= uint64.max);
    require((varg8.length << 5) + (4 + varg8) + 32 <= msg.data.length);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg8.length, InvalidParams());
    require(varg9, InvalidAmount());
    while (v3 < varg8.length) {
        v4 = 0x2636(varg8.data, varg8.length, v3);
        require(!(msg.data[v4] - address(msg.data[v4])));
        v5, /* uint256 */ v3 = varg0.balanceOf(address(msg.data[v4])).gas(msg.gas);
        if (!v5) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
        } else {
            if (v5) {
                v6 = v7 = 32;
                if (v7 > RETURNDATASIZE()) {
                    v6 = v8 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v6 - MEM[64] >= 32);
            }
            if (v3) {
                v3 = v9 = 0x183ee;
                v10 = 0x2636(varg8.data, varg8.length, v3);
                v3 = v11 = msg.data[v10];
                require(!(v11 - address(v11)));
                require(varg2 < 8);
                if (varg2) {
                    if (varg2 - 6) {
                        if (7 - varg2) {
                            v3 = v12, v3 = v13 = 0x4042(varg0, varg1, v11, v14, varg9);
                        } else {
                            v3 = v15 = 0;
                            v3 = v16 = 0;
                        }
                    } else {
                        require(stor_4_0_19);
                        v3 = v17 = 0;
                        v3 = v18 = 0;
                    }
                    if (v3) {
                        v3 = v19 = 0x18fdc;
                        v3 = v20 = 16265;
                        v3 = v21 = 16271;
                        if (0 != v3 > v3) {
                        }
                        0x3998(v3, v3, this, v3);
                        v22 = v23 = 100;
                        v24 = v25 = 0;
                        v26, v27 = address(v3).allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
                        if (!v26) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v27 = 0;
                            if (v26) {
                                v28 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v28 = v29 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v28 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v28 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v28 - MEM[64] >= 32);
                            }
                            if (v27 < v3) {
                                0x390a(v3, v3);
                            }
                            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                            v30 = 0x22d473030f116ddee9f6b43ac78ba3.approve(address(v3), stor_4_0_19, address(v3), uint48(block.timestamp + 60)).gas(msg.gas);
                            if (!v30) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v30) {
                                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    v24 = v31 = 0;
                                }
                                v32 = varg3;
                                v33 = 132;
                                require(!(varg4 - address(varg4)));
                                v32 = v34 = address(varg4);
                                v35 = v32 == address(v3);
                                if (0 != v35) {
                                }
                                v36 = !address(v32);
                                MEM[v37.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                                MEM[v37.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                                require(!0, Panic(65)); // failed memory allocation (too much memory)
                                v38 = new struct(4);
                                require(!((v38 + 128 < v38) | (v38 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                v38.word0 = 3;
                                v39 = v40 = 0;
                                while (v39 < 96) {
                                    MEM[v38 + v39 + 32] = 96;
                                    v39 = v39 + 32;
                                }
                                v41 = new struct(5);
                                require(!((v41 + 160 > uint64.max) | (v41 + 160 < v41)), Panic(65)); // failed memory allocation (too much memory)
                                require(msg.data.length - v23 >= 160, v24, v24);
                                v42 = new struct(5);
                                require(!((v42 + 160 > uint64.max) | (v42 + 160 < v42)), Panic(65)); // failed memory allocation (too much memory)
                                v42.word0 = varg3;
                                require(!(varg4 - address(varg4)));
                                v42.word1 = varg4;
                                require(!(varg5 - uint24(varg5)), v24, v24);
                                v42.word2 = varg5;
                                require(!(varg6 - int24(varg6)), v24, v24);
                                v43 = v44 = 0x191a2;
                                v45 = 17855;
                                v42.word3 = varg6;
                                v42.word4 = varg7;
                                v41.word0 = v42;
                                v41.word1 = v35;
                                v41.word2 = uint128(v3);
                                v41.word3 = 1;
                                v46 = v47 = 32;
                                v48 = new struct(1);
                                require(!((v48 + 32 < v48) | (v48 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                v48.word0 = v24;
                                v41.word4 = v48;
                                MEM[MEM[64] + v47] = 32;
                                MEM[MEM[64] + v47 + 32] = address(MEM[v41.word0]);
                                MEM[MEM[64] + v47 + 64] = address(MEM[v41.word0 + 32]);
                                MEM[MEM[64] + v47 + 96] = uint24(MEM[v41.word0 + 64]);
                                MEM[MEM[64] + v47 + 128] = int24(MEM[v41.word0 + 96]);
                                MEM[MEM[64] + v47 + 160] = address(MEM[v41.word0 + 128]);
                                MEM[MEM[64] + v47 + 192] = bool(v41.word1);
                                MEM[MEM[64] + v47 + 224] = uint128(v41.word2);
                                MEM[MEM[64] + v47 + (uint8.max + 1)] = uint128(v41.word3);
                                MEM[MEM[64] + v47 + 288] = 288;
                                MEM[MEM[64] + v47 + 320] = MEM[v41.word4];
                                MCOPY(MEM[64] + v47 + 320 + 32, 32 + v41.word4, MEM[v41.word4]);
                                MEM[32 + (MEM[v41.word4] + (MEM[64] + v47 + 320))] = 0;
                                MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v41.word4]) + (MEM[64] + v47 + 320) + 32 - MEM[64] - 32;
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v41.word4]) + (MEM[64] + v47 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v41.word4]) + (MEM[64] + v47 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(v38.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v49 = v38.data;
                                v38.word1 = MEM[64];
                                require(v38.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v50 = v38.data;
                                if (v32 != address(v3)) {
                                    require(!(varg4 - address(varg4)));
                                    v51 = v52, v35 = v53, v22 = v54, v33 = v55, v45 = v56, v43 = v57, v38 = v58, v36 = v59, v46 = v60 = 0x457d(varg4, 0x19273, v3, v35, v23, v33, v45, v44, v38, v36);
                                    require(1 < v58.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v61 = 64 + v58;
                                } else {
                                    v51 = new struct(3);
                                    v51.word1 = varg3;
                                    v51.word2 = v3;
                                    v51.word0 = 64;
                                    require(!((v51 + 96 < v51) | (v51 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(1 < v38.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v61 = v62 = 64 + v38;
                                }
                                MEM[v61] = v51;
                                require(1 < MEM[v38], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                if (!v35) {
                                    v63 = msg.data[v22];
                                    require(!(v63 - address(v63)));
                                } else {
                                    v63 = v64 = msg.data[v33];
                                    require(!(v64 - address(v64)));
                                }
                                MEM[MEM[64] + v46] = address(v63);
                                MEM[MEM[64] + v46 + 32] = 1;
                                MEM[MEM[64]] = 64 + (MEM[64] + v46) - MEM[64] - 32;
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v46) - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v46) - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v46) - MEM[64] + 31);
                                require(2 < MEM[v38], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                MEM[96 + v38] = MEM[64];
                                require(2 < MEM[v38], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v65 = new struct(2);
                                require(!((v65 + 64 < v65) | (v65 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                v65.word0 = 1;
                                v66 = v67 = 0;
                                while (v66 < 32) {
                                    MEM[v65 + v66 + 32] = 96;
                                    v66 = v66 + 32;
                                }
                                MEM[MEM[64] + v46] = 64;
                                MEM[MEM[64] + v46 + 64] = v37.length;
                                MCOPY(MEM[64] + v46 + 64 + 32, v37.data, v37.length);
                                MEM[32 + (v37.length + (MEM[64] + v46 + 64))] = 0;
                                MEM[MEM[64] + v46 + 32] = 32 + (MEM[64] + v46 + 64) + 32 - (MEM[64] + v46);
                                MEM[32 + (MEM[64] + v46 + 64) + 32] = MEM[v38];
                                v68 = 32 + (MEM[64] + v46 + 64) + 32 + 32;
                                v69 = v70 = 32 + (MEM[64] + v46 + 64) + 32 + (MEM[v38] << 5) + 32;
                                v71 = v38 + 32;
                                v72 = 0;
                                while (v72 < MEM[v38]) {
                                    MEM[v68] = v69 - (32 + (MEM[64] + v46 + 64) + 32) - 32;
                                    MEM[v69] = MEM[MEM[v71]];
                                    MCOPY(v69 + 32, 32 + MEM[v71], MEM[MEM[v71]]);
                                    MEM[32 + (MEM[MEM[v71]] + v69)] = 0;
                                    v69 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v71]]) + v69 + 32;
                                    v71 = v71 + 32;
                                    v68 = v68 + 32;
                                    v72 = v72 + 1;
                                }
                                MEM[MEM[64]] = v69 - MEM[64] - 32;
                                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v69 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v69 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                require(v65.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v73 = v65.data;
                                v65.word1 = MEM[64];
                                require(v65.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v74 = v65.data;
                                v75 = new uint256[](1);
                                MEM[v75 + v46] = 0x1000000000000000000000000000000000000000000000000000000000000000;
                                require(!((v75 + 64 < v75) | (v75 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                if (!v36) {
                                    v76 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                                    if (!v76) {
                                        RETURNDATACOPY(MEM[64], v24, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else if (v76) {
                                        if (v46 > RETURNDATASIZE()) {
                                            v46 = v77 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v46 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v46 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[64] + v46 - MEM[64] >= v46);
                                    }
                                } else {
                                    v24 = v78 = this.balance;
                                }
                                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                                require(stor_4_0_19.code.size, v24, v24);
                                MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                MEM[MEM[64] + 4] = 96;
                                MEM[MEM[64] + 4 + 96] = v75.length;
                                MCOPY(MEM[64] + 4 + 96 + 32, v75.data, v75.length);
                                MEM[32 + (v75.length + (MEM[64] + 4 + 96))] = 0;
                                MEM[MEM[64] + 4 + 32] = 160;
                                MEM[32 + (MEM[64] + 4 + 96) + 32] = v65.word0.length;
                                v79 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                v80 = v81 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                v82 = v65.data;
                                v83 = 0;
                                while (v83 < v65.word0.length) {
                                    MEM[v79] = v80 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                    MEM[v80] = MEM[MEM[v82]];
                                    MCOPY(v80 + 32, 32 + MEM[v82], MEM[MEM[v82]]);
                                    MEM[32 + (MEM[MEM[v82]] + v80)] = 0;
                                    v80 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v82]]) + v80 + 32;
                                    v82 = v82 + 32;
                                    v79 = v79 + 32;
                                    v83 = v83 + 1;
                                }
                                MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                v84 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v41b0V0x42c1V0x432eV0x46480x4341V0x3f7dV0x59b - MEM[64]], MEM[MEM[64]:MEM[64] + vc0760x4341_0x6V0x3f7dV0x59b]).value(v24).gas(msg.gas);
                                if (!v84) {
                                    RETURNDATACOPY(MEM[64], v24, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v84) {
                                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v24, v24, v24);
                                    }
                                    if (!v36) {
                                        v85 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                                        if (!v85) {
                                            RETURNDATACOPY(MEM[64], v24, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v85) {
                                            if (v46 > RETURNDATASIZE()) {
                                                v46 = v86 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v46 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v46 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            require(MEM[64] + v46 - MEM[64] >= v46);
                                            v3 = v87 = _SafeSub(0x70a0823100000000000000000000000000000000000000000000000000000000, v24);
                                        } else {
                                            v3 = v88 = _SafeSub(v24, v24);
                                        }
                                    } else {
                                        v89 = this.balance;
                                        v3 = v90 = _SafeSub(v89, v24);
                                        if (v90) {
                                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v24, v24);
                                            v91 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v90).gas(msg.gas);
                                            if (!v91) {
                                                RETURNDATACOPY(MEM[64], v24, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else if (v91) {
                                                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                require(!v24, v24, v24);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        // Unknown jump to Block 0x183ee. Refer to 3-address code (TAC);
                    }
                    if (v3) {
                        v3 = v92 = 0x19026;
                        v3 = v93 = 16395;
                        v3 = v94 = 16401;
                        if (0 != v3 > v3) {
                        }
                        0x3998(v3, v3, this, v3);
                        v3 = v95 = 0x3b22(v3, v3, v3);
                    } else {
                        // Unknown jump to Block 0x183ee. Refer to 3-address code (TAC);
                    }
                    while (1) {
                        v3 += v3;
                        if (v3 > v3) {
                            break;
                        } else {
                            // Unknown jump to Block ['0x18fdcB0x59b', '0x19026B0x59b', '0x3f89B0x59b', '0x400bB0x59b']. Refer to 3-address code (TAC);
                            continue;
                            continue;
                        }
                    }
                    v3 = v3 - v3;
                    require(v3 <= v3, Panic(17)); // arithmetic overflow or underflow
                    // Unknown jump to Block ['0x3f8fB0x59b', '0x4011B0x59b']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x3fc9B0x59b. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x27980x3ee9B0x59b. Refer to 3-address code (TAC);
                    revert(Panic(17));
                } else {
                    v3 = v96, v3 = v97 = 0x3e7a(varg0, varg1, v11, v14, varg9);
                }
                v3 = _SafeAdd(v3, v3);
                v3 = _SafeAdd(v3, v3);
            }
            v3 += 1;
        }
    }
    require(v3, InvalidAmount());
    v98 = 0x2a4c(v3, varg10);
    require(varg2 < 8);
    require(varg2 < 8, Panic(33)); // failed convertion to enum type
    emit 0x345f22efbf543125c421017bc9af869b82c0eac59afcf08cf18eddb46946b283(varg0, v3, v98, varg8.length, varg10, varg2);
    return v98;
}

function 0x457d(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, struct(4) varg8, uint256 varg9) private { 
    MEM[MEM[64] + v0] = varg0;
    MEM[MEM[64] + v0 + 32] = varg2;
    MEM[MEM[64]] = 64 + (MEM[64] + v0) - MEM[64] - 32;
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v0) - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v0) - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v0) - MEM[64] + 31);
    return MEM[64], varg3, varg4, varg5, varg6, varg7, varg8, varg9, v0;
}

function 0x4825(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg0, Error('INSUFFICIENT_INPUT_AMOUNT'));
    v0 = v1 = bool(varg1);
    if (v1) {
        v0 = v2 = bool(varg2);
    }
    require(v0, Error('INSUFFICIENT_LIQUIDITY'));
    require(!(997 - varg0 * 997 / varg0), Panic(17)); // arithmetic overflow or underflow
    v3 = _SafeMul(varg0 * 997, varg2);
    require((1000 == varg1 * 1000 / varg1) | !varg1, Panic(17)); // arithmetic overflow or underflow
    v4 = _SafeAdd(varg1 * 1000, varg0 * 997);
    require(v4, Panic(18)); // division by zero
    return v3 / v4;
}

function 0xe8d5d473(address varg0, address varg1, address varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, address varg7, address varg8, address varg9, address varg10, address varg11) public nonPayable { 
    require(msg.data.length - 4 >= 384);
    require(msg.data.length - 36 >= 224);
    require(varg8 <= uint64.max);
    require(4 + varg8 + 31 < msg.data.length);
    require(varg8.length <= uint64.max);
    require((varg8.length << 5) + (4 + varg8) + 32 <= msg.data.length);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg8.length, InvalidParams());
    v3 = v4 = !varg9;
    if (bool(varg9)) {
        v3 = v5 = varg9 > 10000;
    }
    require(!v3, InvalidParams());
    v6, /* uint256 */ v7 = varg0.balanceOf(this).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        v8 = v9 = 32;
        if (32 > RETURNDATASIZE()) {
            v8 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v8 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v8 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v8 - MEM[64] >= 32);
    }
    while (v7 < varg8.length) {
        v11 = 0x2636(varg8.data, varg8.length, v7);
        require(!(msg.data[v11] - address(msg.data[v11])));
        v12, /* uint256 */ v7 = varg0.balanceOf(address(msg.data[v11])).gas(msg.gas);
        require(v12, MEM[64], RETURNDATASIZE());
        if (v12) {
            v13 = v14 = 32;
            if (v14 > RETURNDATASIZE()) {
                v13 = v15 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v13 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v13 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v13 - MEM[64] >= 32);
        }
        v16 = _SafeMul(v7, varg9);
        if (v16 / 10000) {
            v17 = 0x2636(varg8.data, varg8.length, v7);
            require(!(msg.data[v17] - address(msg.data[v17])));
            0x3998(varg0, msg.data[v17], this, v16 / 10000);
        }
        v7 = v7 + 1;
    }
    v18, /* uint256 */ v7 = varg0.balanceOf(this).gas(msg.gas);
    require(v18, MEM[64], RETURNDATASIZE());
    if (v18) {
        v19 = v20 = 32;
        if (32 > RETURNDATASIZE()) {
            v19 = v21 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v19 - MEM[64] >= 32);
    }
    v22 = _SafeSub(v7, v7);
    require(v22, InvalidAmount());
    require(varg2 < 8);
    if (!varg2) {
        0x2b45(varg0, varg1, v22);
    }
    require(varg2 < 8);
    if (varg2) {
        if (varg2 - 6) {
            if (7 - varg2) {
                v23 = v24 = 0x3b22(varg1, varg0, v22);
            } else {
                v23 = v25 = 0x3b22(varg1, varg0, v22);
            }
        } else {
            require(stor_4_0_19);
            v26 = v27 = 100;
            v28 = v29 = 0;
            v30, v31 = varg0.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
            require(v30, MEM[64], RETURNDATASIZE());
            v31 = 0;
            if (v30) {
                v32 = 32;
                if (32 > RETURNDATASIZE()) {
                    v32 = v33 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v32 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v32 - MEM[64] >= 32);
            }
            if (v31 < v22) {
                0x390a(varg0, v22);
            }
            require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
            require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
            v34, /* uint256 */ v35 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg0, stor_4_0_19, address(v22), uint48(block.timestamp + 60)).gas(msg.gas);
            require(v34, v35, RETURNDATASIZE());
            if (v34) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                v28 = v36 = 0;
            }
            v37 = varg3;
            v38 = 132;
            v37 = v39 = varg4;
            v40 = v37 == varg0;
            if (0 != v40) {
            }
            v41 = !address(v37);
            MEM[v42.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v42.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v43 = new struct(4);
            require(!((v43 + 128 < v43) | (v43 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v43.word0 = 3;
            v44 = v45 = 0;
            while (v44 < 96) {
                MEM[v43 + v44 + 32] = 96;
                v44 = v44 + 32;
            }
            v46 = new struct(5);
            require(!((v46 + 160 > uint64.max) | (v46 + 160 < v46)), Panic(65)); // failed memory allocation (too much memory)
            require(msg.data.length - v27 >= 160, v28, v28);
            v47 = new struct(5);
            require(!((v47 + 160 > uint64.max) | (v47 + 160 < v47)), Panic(65)); // failed memory allocation (too much memory)
            v47.word0 = varg3;
            v47.word1 = varg4;
            require(!(varg5 - uint24(varg5)), v28, v28);
            v47.word2 = varg5;
            require(!(varg6 - int24(varg6)), v28, v28);
            v48 = v49 = 0x191a2;
            v50 = 17855;
            v47.word3 = varg6;
            v47.word4 = varg7;
            v46.word0 = v47;
            v46.word1 = v40;
            v46.word2 = uint128(v22);
            v46.word3 = 1;
            v51 = v52 = 32;
            v53 = new struct(1);
            require(!((v53 + 32 < v53) | (v53 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v53.word0 = v28;
            v46.word4 = v53;
            MEM[MEM[64] + v52] = 32;
            MEM[MEM[64] + v52 + 32] = address(MEM[v46.word0]);
            MEM[MEM[64] + v52 + 64] = address(MEM[v46.word0 + 32]);
            MEM[MEM[64] + v52 + 96] = uint24(MEM[v46.word0 + 64]);
            MEM[MEM[64] + v52 + 128] = int24(MEM[v46.word0 + 96]);
            MEM[MEM[64] + v52 + 160] = address(MEM[v46.word0 + 128]);
            MEM[MEM[64] + v52 + 192] = bool(v46.word1);
            MEM[MEM[64] + v52 + 224] = uint128(v46.word2);
            MEM[MEM[64] + v52 + (uint8.max + 1)] = uint128(v46.word3);
            MEM[MEM[64] + v52 + 288] = 288;
            MEM[MEM[64] + v52 + 320] = MEM[v46.word4];
            MCOPY(MEM[64] + v52 + 320 + 32, 32 + v46.word4, MEM[v46.word4]);
            MEM[32 + (MEM[v46.word4] + (MEM[64] + v52 + 320))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v52 + 320) + 32 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v52 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v46.word4]) + (MEM[64] + v52 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v54 = v43.data;
            v43.word1 = MEM[64];
            require(v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v55 = v43.data;
            if (v37 != varg0) {
                v56 = v57, v40 = v58, v26 = v59, v38 = v60, v50 = v61, v48 = v62, v43 = v63, v41 = v64, v51 = v65 = 0x457d(varg4, 0x19273, v22, v40, v27, v38, v50, v49, v43, v41);
                require(1 < v63.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v66 = 64 + v63;
            } else {
                v56 = new struct(3);
                v56.word1 = varg3;
                v56.word2 = v22;
                v56.word0 = 64;
                require(!((v56 + 96 < v56) | (v56 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v43.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v66 = v67 = 64 + v43;
            }
            MEM[v66] = v56;
            require(1 < MEM[v43], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (!v40) {
                v68 = msg.data[v26];
                require(!(v68 - address(v68)));
            } else {
                v68 = v69 = msg.data[v38];
                require(!(v69 - address(v69)));
            }
            MEM[MEM[64] + v51] = address(v68);
            MEM[MEM[64] + v51 + 32] = 1;
            MEM[MEM[64]] = 64 + (MEM[64] + v51) - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v51) - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v51) - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 64 + (MEM[64] + v51) - MEM[64] + 31);
            require(2 < MEM[v43], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[96 + v43] = MEM[64];
            require(2 < MEM[v43], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v70 = new struct(2);
            require(!((v70 + 64 < v70) | (v70 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v70.word0 = 1;
            v71 = v72 = 0;
            while (v71 < 32) {
                MEM[v70 + v71 + 32] = 96;
                v71 = v71 + 32;
            }
            MEM[MEM[64] + v51] = 64;
            MEM[MEM[64] + v51 + 64] = v42.length;
            MCOPY(MEM[64] + v51 + 64 + 32, v42.data, v42.length);
            MEM[32 + (v42.length + (MEM[64] + v51 + 64))] = 0;
            MEM[MEM[64] + v51 + 32] = 32 + (MEM[64] + v51 + 64) + 32 - (MEM[64] + v51);
            MEM[32 + (MEM[64] + v51 + 64) + 32] = MEM[v43];
            v73 = 32 + (MEM[64] + v51 + 64) + 32 + 32;
            v74 = v75 = 32 + (MEM[64] + v51 + 64) + 32 + (MEM[v43] << 5) + 32;
            v76 = v43 + 32;
            v77 = 0;
            while (v77 < MEM[v43]) {
                MEM[v73] = v74 - (32 + (MEM[64] + v51 + 64) + 32) - 32;
                MEM[v74] = MEM[MEM[v76]];
                MCOPY(v74 + 32, 32 + MEM[v76], MEM[MEM[v76]]);
                MEM[32 + (MEM[MEM[v76]] + v74)] = 0;
                v74 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v76]]) + v74 + 32;
                v76 = v76 + 32;
                v73 = v73 + 32;
                v77 = v77 + 1;
            }
            MEM[MEM[64]] = v74 - MEM[64] - 32;
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v74 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v74 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v70.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v78 = v70.data;
            v70.word1 = MEM[64];
            require(v70.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v79 = v70.data;
            v80 = new uint256[](1);
            MEM[v80 + v51] = 0x1000000000000000000000000000000000000000000000000000000000000000;
            require(!((v80 + 64 < v80) | (v80 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            if (!v41) {
                v81 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                require(v81, MEM[64], RETURNDATASIZE());
                if (v81) {
                    if (v51 > RETURNDATASIZE()) {
                        v51 = v82 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v51 - MEM[64] >= v51);
                }
            } else {
                v28 = v83 = this.balance;
            }
            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
            require(stor_4_0_19.code.size, v28, v28);
            v84 = new uint256[](v80.length);
            MCOPY(v84.data, v80.data, v80.length);
            MEM[32 + (v80.length + v84)] = 0;
            v85 = v84.data;
            v86 = new uint256[](v70.word0.length);
            v87 = v86.data;
            v88 = v89 = v86.data + 32;
            v90 = v70.data;
            v91 = 0;
            while (v91 < v70.word0.length) {
                MEM[v87] = v88 - v86 - 32;
                MEM[v88] = MEM[MEM[v90]];
                MCOPY(v88 + 32, 32 + MEM[v90], MEM[MEM[v90]]);
                MEM[32 + (MEM[MEM[v90]] + v88)] = 0;
                v88 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v90]]) + v88 + 32;
                v90 = v90 + 32;
                v87 = v87 + 32;
                v91 = v91 + 1;
            }
            v92, /* uint256 */ v93 = stor_4_0_19.execute(v84, v86, block.timestamp + 1).value(v28).gas(msg.gas);
            require(v92, v93, RETURNDATASIZE());
            if (v92) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v28, v28, v28);
            }
            if (!v41) {
                v94 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                require(v94, MEM[64], RETURNDATASIZE());
                if (v94) {
                    if (v51 > RETURNDATASIZE()) {
                        v51 = v95 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v51 - MEM[64] >= v51);
                    v23 = v96 = _SafeSub(0x70a0823100000000000000000000000000000000000000000000000000000000, v28);
                } else {
                    v23 = v97 = _SafeSub(v28, v28);
                }
            } else {
                v98 = this.balance;
                v23 = v99 = _SafeSub(v98, v28);
                if (v99) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v28, v28);
                    v100, /* uint256 */ v101 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v99).gas(msg.gas);
                    require(v100, v101, RETURNDATASIZE());
                    if (v100) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!v28, v28, v28);
                    }
                }
            }
        }
    } else {
        v23 = v102 = 0x3cd4(varg1, varg0);
    }
    v103 = _SafeAdd(varg10, varg11);
    require(v23 >= v103, InsufficientOutput());
    v104 = 0x292b(v23, varg11);
    require(varg2 < 8, Panic(33)); // failed convertion to enum type
    emit 0x345f22efbf543125c421017bc9af869b82c0eac59afcf08cf18eddb46946b283(varg0, v22, v104, varg8.length, varg11, varg2);
    return v104;
}

function 0xe1e8e5c1(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 224);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
    require(msg.data[4 + varg0 + msg.data[varg0 + 68]], InvalidParams());
    require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
    require(msg.data[varg0 + 100] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 100]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 100]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 100]] << 5));
    require(!(msg.data[4 + varg0 + msg.data[varg0 + 68]] - msg.data[4 + varg0 + msg.data[varg0 + 100]]), ArrayLengthMismatch());
    while (1) {
        require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
        require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
        require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
        if (v3 >= msg.data[4 + varg0 + msg.data[varg0 + 68]]) {
            require(v3, InvalidAmount());
            require(msg.data[varg0 + 196] < 8);
            if (msg.data[varg0 + 196]) {
                require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                require(!(varg0.length - address(varg0.length)));
                v4 = v5 = 0x3b22(msg.data[varg0.data], varg0.length, v3);
                v6 = msg.data[varg0 + 164];
                v7 = msg.data[varg0 + 132] + v6;
                require(msg.data[varg0 + 132] <= v7, Panic(17)); // arithmetic overflow or underflow
            } else {
                require(!(varg0.length - address(varg0.length)));
                require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                0x2b45(varg0.length, msg.data[varg0.data], v3);
                require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                require(!(varg0.length - address(varg0.length)));
                v4 = v8 = 0x3cd4(msg.data[varg0.data], varg0.length);
                v6 = v9 = msg.data[varg0 + 164];
                v7 = v10 = msg.data[varg0 + 132] + v9;
                require(msg.data[varg0 + 132] <= v10, Panic(17)); // arithmetic overflow or underflow
            }
            require(v4 >= v7, InsufficientOutput());
            v11 = 0x292b(v4, v6);
            require(!(varg0.length - address(varg0.length)));
            require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
            require(msg.data[varg0 + 196] < 8, Panic(33)); // failed convertion to enum type
            emit 0x345f22efbf543125c421017bc9af869b82c0eac59afcf08cf18eddb46946b283(address(varg0.length), v3, v11, msg.data[4 + varg0 + msg.data[varg0 + 68]], v6, msg.data[varg0 + 196]);
            return v11;
        } else {
            require(msg.data[varg0 + 100] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 100]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 100]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 100]] << 5));
            v12 = 0x2636(32 + (4 + varg0 + msg.data[varg0 + 100]), msg.data[4 + varg0 + msg.data[varg0 + 100]], v3);
            if (msg.data[v12]) {
                require(!(varg0.length - address(varg0.length)));
                require(msg.data[varg0 + 68] < msg.data.length - (4 + varg0) - 31);
                require(msg.data[4 + varg0 + msg.data[varg0 + 68]] <= uint64.max);
                require(32 + (4 + varg0 + msg.data[varg0 + 68]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 68]] << 5));
                v13 = 0x2636(32 + (4 + varg0 + msg.data[varg0 + 68]), msg.data[4 + varg0 + msg.data[varg0 + 68]], v3);
                require(!(msg.data[v13] - address(msg.data[v13])));
                require(msg.data[varg0 + 100] < msg.data.length - (4 + varg0) - 31);
                require(msg.data[4 + varg0 + msg.data[varg0 + 100]] <= uint64.max);
                require(32 + (4 + varg0 + msg.data[varg0 + 100]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 100]] << 5));
                v14 = 0x2636(32 + (4 + varg0 + msg.data[varg0 + 100]), msg.data[4 + varg0 + msg.data[varg0 + 100]], v3);
                0x3998(varg0.length, msg.data[v13], this, msg.data[v14]);
                require(msg.data[varg0 + 100] < msg.data.length - (4 + varg0) - 31);
                require(msg.data[4 + varg0 + msg.data[varg0 + 100]] <= uint64.max);
                require(32 + (4 + varg0 + msg.data[varg0 + 100]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 100]] << 5));
                v15 = 0x2636(32 + (4 + varg0 + msg.data[varg0 + 100]), msg.data[4 + varg0 + msg.data[varg0 + 100]], v3);
                v3 = _SafeAdd(v3, msg.data[v15]);
            }
            v3 += 1;
        }
    }
}

function poolManager() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _poolManager;
}

function 0xdb11c4f5(address varg0, address varg1, address varg2, uint256 varg3, address varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11, address varg12, address varg13, address varg14, address varg15, address varg16) public nonPayable { 
    require(msg.data.length - 4 >= 544);
    require(224 <= msg.data.length - 4);
    require(msg.data.length - 228 >= 224);
    require(varg14 <= uint64.max);
    require(4 + varg14 + 31 < msg.data.length);
    require(varg14.length <= uint64.max);
    require((varg14.length << 5) + (4 + varg14) + 32 <= msg.data.length);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg14.length, InvalidParams());
    require(varg15, InvalidAmount());
    v3 = new struct(3);
    require(!((v3 + 96 < v3) | (v3 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v3, msg.data.length, 96);
    while (v4 < varg14.length) {
        v5 = 0x2636(varg14.data, varg14.length, v4);
        require(!(msg.data[v5] - address(msg.data[v5])));
        v6, /* uint256 */ v4 = varg2.balanceOf(address(msg.data[v5])).gas(msg.gas);
        if (!v6) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
        } else {
            if (v6) {
                v7 = v8 = 32;
                if (v8 > RETURNDATASIZE()) {
                    v7 = v9 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v7 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v7 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v7 - MEM[64] >= 32);
            }
            if (v4) {
                v10 = 0x2636(varg14.data, varg14.length, v4);
                require(!(msg.data[v10] - address(msg.data[v10])));
                v11 = v12 = 0;
                while (v4) {
                    if (0 != v4 > varg15) {
                    }
                    0x3998(varg2, msg.data[v10], this, v4);
                    v13 = v14 = 0;
                    require(varg1 < 8);
                    if (varg1) {
                        if (varg1 - 6) {
                            if (7 - varg1) {
                                v15 = v16 = 0x18d9a;
                                require(!(varg3 - address(varg3)));
                            } else {
                                v15 = 0x18d21;
                                require(!(varg3 - address(varg3)));
                            }
                            v13 = v17 = 0x4094(v18, v19, v20, v4);
                        } else {
                            v21 = new struct(5);
                            require(!((v21 + 160 > uint64.max) | (v21 + 160 < v21)), Panic(65)); // failed memory allocation (too much memory)
                            v21.word0 = 0;
                            v21.word1 = 0;
                            v21.word2 = 0;
                            v21.word3 = 0;
                            v21.word4 = 0;
                            require(!(varg3 - address(varg3)));
                            if (varg2 >= address(varg3)) {
                                require(!(varg3 - address(varg3)));
                            } else {
                                require(!(varg3 - address(varg3)));
                            }
                            require(!(varg4 - uint24(varg4)));
                            require(!(varg5 - int24(varg5)));
                            v22 = new struct(5);
                            require(!((v22 + 160 > uint64.max) | (v22 + 160 < v22)), Panic(65)); // failed memory allocation (too much memory)
                            v22.word0 = address(v23);
                            v22.word1 = address(v24);
                            v22.word2 = uint24(varg4);
                            v22.word3 = int24(varg5);
                            v22.word4 = varg6;
                            v25, /* uint256 */ v26 = varg2.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
                            if (!v25) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v25) {
                                    v27 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v27 = v28 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v27 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v27 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v27 - MEM[64] >= 32);
                                    if (v26 < v4) {
                                        // Unknown jump to Block 0x33620x35edB0x28a8B0xd02. Refer to 3-address code (TAC);
                                    }
                                } else if (0 >= v4) {
                                    require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                                    require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                                    v29 = v30 = MEM[64];
                                    MEM[v30] = 0x87517c4500000000000000000000000000000000000000000000000000000000;
                                    v31 = v32 = 0;
                                    MEM[v30 + 4] = varg2;
                                    MEM[v30 + 4 + 32] = stor_4_0_19;
                                    MEM[v30 + 4 + 64] = address(v4);
                                    MEM[v30 + 4 + 96] = uint48(block.timestamp + 60);
                                    v33 = v34 = 128 + (v30 + 4);
                                }
                                0x390a(varg2, v4);
                                require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                                require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                                v29 = v35 = MEM[64];
                                MEM[v35] = 0x87517c4500000000000000000000000000000000000000000000000000000000;
                                v31 = v36 = 0;
                                MEM[v35 + 4] = varg2;
                                MEM[v35 + 4 + 32] = stor_4_0_19;
                                MEM[v35 + 4 + 64] = address(v4);
                                MEM[v35 + 4 + 96] = uint48(block.timestamp + 60);
                                v33 = 128 + (v35 + 4);
                                v37 = 0x22d473030f116ddee9f6b43ac78ba3.call(MEM[v2f8b0x35ed_0x2V0x28a8V0xd02:v2f8b0x35ed_0x2V0x28a8V0xd02 + v27d4V0x2f570x35edV0x28a8V0xd02 - v2f8b0x35ed_0x2V0x28a8V0xd02], MEM[v2f8b0x35ed_0x2V0x28a8V0xd02:v2f8b0x35ed_0x2V0x28a8V0xd02 + v2f8b0x35ed_0x3V0x28a8V0xd02]).value(v31).gas(msg.gas);
                                if (!v37) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v37) {
                                        require(!((v29 < v29) | (v29 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        v13 = v38 = 0;
                                    }
                                    v39 = address(v22.word0);
                                    v39 = v40 = address(v22.word1);
                                    if (v39 == varg2) {
                                    }
                                    MEM[v41.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                                    MEM[v41.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                                    v42 = new struct(4);
                                    require(!((v42 + 128 < v42) | (v42 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    v42.word0 = 3;
                                    v43 = v44 = 0;
                                    while (v43 < 96) {
                                        MEM[v42 + v43 + 32] = 96;
                                        v43 = v43 + 32;
                                    }
                                    v45 = new struct(5);
                                    require(!((v45 + 160 > uint64.max) | (v45 + 160 < v45)), Panic(65)); // failed memory allocation (too much memory)
                                    v45.word0 = v22;
                                    v45.word1 = v39 == varg2;
                                    v45.word2 = uint128(v4);
                                    v45.word3 = 1;
                                    v46 = 32;
                                    v47 = new struct(1);
                                    require(!((v47 + 32 < v47) | (v47 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    v47.word0 = v13;
                                    v45.word4 = v47;
                                    MEM[MEM[64] + v46] = 32;
                                    MEM[MEM[64] + v46 + 32] = address(MEM[v45.word0]);
                                    MEM[MEM[64] + v46 + 64] = address(MEM[v45.word0 + 32]);
                                    MEM[MEM[64] + v46 + 96] = uint24(MEM[v45.word0 + 64]);
                                    MEM[MEM[64] + v46 + 128] = int24(MEM[v45.word0 + 96]);
                                    MEM[MEM[64] + v46 + 160] = address(MEM[v45.word0 + 128]);
                                    MEM[MEM[64] + v46 + 192] = bool(v45.word1);
                                    MEM[MEM[64] + v46 + 224] = uint128(v45.word2);
                                    MEM[MEM[64] + v46 + (uint8.max + 1)] = uint128(v45.word3);
                                    MEM[MEM[64] + v46 + 288] = 288;
                                    MEM[MEM[64] + v46 + 320] = MEM[v45.word4];
                                    MCOPY(MEM[64] + v46 + 320 + 32, 32 + v45.word4, MEM[v45.word4]);
                                    MEM[32 + (MEM[v45.word4] + (MEM[64] + v46 + 320))] = 0;
                                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v45.word4]) + (MEM[64] + v46 + 320) + 32 - MEM[64] - 32;
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v45.word4]) + (MEM[64] + v46 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v45.word4]) + (MEM[64] + v46 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v42.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v48 = v42.data;
                                    v42.word1 = MEM[64];
                                    require(v42.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v49 = v42.data;
                                    if (v39 != varg2) {
                                        v50 = new struct(3);
                                        v50.word1 = address(v22.word1);
                                        v50.word2 = v4;
                                        v50.word0 = 64;
                                        require(!((v50 + 96 < v50) | (v50 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        require(1 < v42.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v51 = 64 + v42;
                                    } else {
                                        v50 = v52 = new struct(3);
                                        v52.word1 = address(v22.word0);
                                        v52.word2 = v4;
                                        v52.word0 = 64;
                                        require(!((v52 + 96 < v52) | (v52 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        require(1 < v42.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v51 = v53 = 64 + v42;
                                    }
                                    MEM[v51] = v50;
                                    require(1 < v42.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    if (v39 != varg2) {
                                        v54 = v55 = address(v22.word0);
                                    } else {
                                        v54 = address(v22.word1);
                                    }
                                    v56 = new struct(3);
                                    v56.word1 = address(v54);
                                    v56.word2 = 1;
                                    v56.word0 = 64;
                                    require(!((v56 + 96 < v56) | (v56 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(2 < v42.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v42.word3 = v56;
                                    require(2 < v42.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v57 = new struct(2);
                                    require(!((v57 + 64 < v57) | (v57 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    v57.word0 = 1;
                                    v58 = v59 = 0;
                                    while (v58 < 32) {
                                        MEM[v57 + v58 + 32] = 96;
                                        v58 = v58 + 32;
                                    }
                                    MEM[MEM[64] + v46] = 64;
                                    MEM[MEM[64] + v46 + 64] = v41.length;
                                    MCOPY(MEM[64] + v46 + 64 + 32, v41.data, v41.length);
                                    MEM[32 + (v41.length + (MEM[64] + v46 + 64))] = 0;
                                    MEM[MEM[64] + v46 + 32] = 128;
                                    MEM[32 + (MEM[64] + v46 + 64) + 32] = v42.word0.length;
                                    v60 = 32 + (MEM[64] + v46 + 64) + 32 + 32;
                                    v61 = v62 = 32 + (MEM[64] + v46 + 64) + 32 + 96 + 32;
                                    v63 = v42.data;
                                    v64 = 0;
                                    while (v64 < v42.word0.length) {
                                        MEM[v60] = v61 - (32 + (MEM[64] + v46 + 64) + 32) - 32;
                                        MEM[v61] = MEM[MEM[v63]];
                                        MCOPY(v61 + 32, 32 + MEM[v63], MEM[MEM[v63]]);
                                        MEM[32 + (MEM[MEM[v63]] + v61)] = 0;
                                        v61 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v63]]) + v61 + 32;
                                        v63 = v63 + 32;
                                        v60 = v60 + 32;
                                        v64 = v64 + 1;
                                    }
                                    MEM[MEM[64]] = v61 - MEM[64] - 32;
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v61 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v61 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v57.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v65 = v57.data;
                                    v57.word1 = MEM[64];
                                    require(v57.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v66 = v57.data;
                                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                                    if (bool(address(v39))) {
                                        v67, /* uint112 */ v13 = address(v39).balanceOf(this).gas(msg.gas);
                                        if (!v67) {
                                            RETURNDATACOPY(MEM[64], v13, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v67) {
                                            if (v46 > RETURNDATASIZE()) {
                                                v46 = v68 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v46 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v46 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            require(MEM[64] + v46 - MEM[64] >= v46);
                                        }
                                    } else {
                                        v13 = v69 = this.balance;
                                    }
                                    require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                                    require(stor_4_0_19.code.size, v13, v13);
                                    MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                    MEM[MEM[64] + 4] = 96;
                                    MEM[MEM[64] + 4 + 96] = v70.length;
                                    MCOPY(MEM[64] + 4 + 96 + 32, v70.data, v70.length);
                                    MEM[32 + (v70.length + (MEM[64] + 4 + 96))] = 0;
                                    MEM[MEM[64] + 4 + 32] = 160;
                                    MEM[32 + (MEM[64] + 4 + 96) + 32] = v57.word0.length;
                                    v71 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                    v72 = v73 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                    v74 = v57.data;
                                    v75 = 0;
                                    while (v75 < v57.word0.length) {
                                        MEM[v71] = v72 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                        MEM[v72] = MEM[MEM[v74]];
                                        MCOPY(v72 + 32, 32 + MEM[v74], MEM[MEM[v74]]);
                                        MEM[32 + (MEM[MEM[v74]] + v72)] = 0;
                                        v72 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v74]]) + v72 + 32;
                                        v74 = v74 + 32;
                                        v71 = v71 + 32;
                                        v75 = v75 + 1;
                                    }
                                    MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                    v76 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v41b0V0x42c1V0x432eV0x31580x35edV0x28a8V0xd02 - MEM[64]], MEM[MEM[64]:MEM[64] + v3c43V0x3c6a0x35edV0x28a8V0xd02]).value(v13).gas(msg.gas);
                                    if (!v76) {
                                        RETURNDATACOPY(MEM[64], v13, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v76) {
                                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(!v13, v13, v13);
                                        }
                                        if (bool(address(v39))) {
                                            v77, /* uint112 */ v13 = address(v39).balanceOf(this).gas(msg.gas);
                                            if (!v77) {
                                                RETURNDATACOPY(MEM[64], v13, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                if (v77) {
                                                    if (v46 > RETURNDATASIZE()) {
                                                        v46 = v78 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v46 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v46 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(MEM[64] + v46 - MEM[64] >= v46);
                                                }
                                                v13 = v79 = _SafeSub(v13, v13);
                                            }
                                        } else {
                                            v80 = this.balance;
                                            v13 = v81 = _SafeSub(v80, v13);
                                            if (v81) {
                                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v13, v13);
                                                v82 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v81).gas(msg.gas);
                                                if (!v82) {
                                                    RETURNDATACOPY(MEM[64], v13, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else if (v82) {
                                                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64];
                                                    require(!v13, v13, v13);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        require(!(varg3 - address(varg3)));
                        v83, /* uint112 */ v13, /* uint112 */ v13, /* uint32 */ v84 = varg0.getReserves().gas(msg.gas);
                        if (!v83) {
                            RETURNDATACOPY(MEM[64], v14, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v83) {
                                if (96 > RETURNDATASIZE()) {
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                    v85 = v86 = MEM[64] + RETURNDATASIZE();
                                } else {
                                    require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + 96;
                                    v85 = v87 = MEM[64] + 96;
                                }
                                require(v85 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v13 - uint112(v13)));
                                require(!(v84 - uint32(v84)));
                            }
                            v88, /* uint112 */ v13 = varg0.token0().gas(msg.gas);
                            if (!v88) {
                                RETURNDATACOPY(MEM[64], v14, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v88) {
                                    if (32 > RETURNDATASIZE()) {
                                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                        v89 = v90 = MEM[64] + RETURNDATASIZE();
                                    } else {
                                        require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + 32;
                                        v89 = v91 = MEM[64] + 32;
                                    }
                                    require(v89 - MEM[64] >= 32);
                                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                }
                                if (varg2 != address(v13)) {
                                    v92 = uint112(v13);
                                    v93 = uint112(v13);
                                    0x2b45(varg2, varg0, v4);
                                } else {
                                    v92 = v94 = uint112(v13);
                                    v93 = v95 = uint112(v13);
                                    0x2b45(varg2, varg0, v4);
                                }
                                v96, /* uint112 */ v13 = varg2.balanceOf(varg0).gas(msg.gas);
                                if (!v96) {
                                    RETURNDATACOPY(MEM[64], v14, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v96) {
                                        v97 = 32;
                                        if (32 > RETURNDATASIZE()) {
                                            v97 = v98 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v97 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v97 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[64] + v97 - MEM[64] >= 32);
                                    }
                                    v99 = _SafeSub(v13, v93);
                                    v13 = v100 = 0x4825(v99, v93, v92);
                                    if (varg2 == address(v13)) {
                                    }
                                    require(varg0.code.size, v14, v14);
                                    v101 = new uint256[](0);
                                    v102 = varg0.swap(v13, v13, address(this), v101).value(v14).gas(msg.gas);
                                    if (!v102) {
                                        RETURNDATACOPY(MEM[64], v14, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else if (v102) {
                                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v14, v14, v14);
                                    }
                                }
                            }
                        }
                    }
                    v103 = v104 = 0;
                    require(varg8 < 8);
                    if (varg8) {
                        if (varg8 - 6) {
                            if (7 - varg8) {
                                v105 = v106 = 0x18d9a;
                            } else {
                                v105 = 0x18d21;
                            }
                            v103 = v107 = 0x4094(v108, v109, v110, v13);
                        } else {
                            v111 = new struct(5);
                            require(!((v111 + 160 > uint64.max) | (v111 + 160 < v111)), Panic(65)); // failed memory allocation (too much memory)
                            v111.word0 = 0;
                            v111.word1 = 0;
                            v111.word2 = 0;
                            v111.word3 = 0;
                            v111.word4 = 0;
                            if (varg9 >= varg10) {
                            } else {
                            }
                            require(!(varg11 - uint24(varg11)));
                            require(!(varg12 - int24(varg12)));
                            v112 = new struct(5);
                            require(!((v112 + 160 > uint64.max) | (v112 + 160 < v112)), Panic(65)); // failed memory allocation (too much memory)
                            v112.word0 = address(v113);
                            v112.word1 = address(v114);
                            v112.word2 = uint24(varg11);
                            v112.word3 = int24(varg12);
                            v112.word4 = varg13;
                            v115, /* uint256 */ v116 = varg9.allowance(this, 0x22d473030f116ddee9f6b43ac78ba3).gas(msg.gas);
                            if (!v115) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v115) {
                                    v117 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v117 = v118 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v117 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v117 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v117 - MEM[64] >= 32);
                                    if (v116 < v13) {
                                        // Unknown jump to Block 0x33620x35edB0x28b6B0xd02. Refer to 3-address code (TAC);
                                    }
                                } else if (0 >= v13) {
                                    require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                                    require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                                    v119 = v120 = MEM[64];
                                    MEM[v120] = 0x87517c4500000000000000000000000000000000000000000000000000000000;
                                    v121 = v122 = 0;
                                    MEM[v120 + 4] = varg9;
                                    MEM[v120 + 4 + 32] = stor_4_0_19;
                                    MEM[v120 + 4 + 64] = address(v13);
                                    MEM[v120 + 4 + 96] = uint48(block.timestamp + 60);
                                    v123 = v124 = 128 + (v120 + 4);
                                }
                                0x390a(varg9, v13);
                                require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                                require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
                                v119 = v125 = MEM[64];
                                MEM[v125] = 0x87517c4500000000000000000000000000000000000000000000000000000000;
                                v121 = v126 = 0;
                                MEM[v125 + 4] = varg9;
                                MEM[v125 + 4 + 32] = stor_4_0_19;
                                MEM[v125 + 4 + 64] = address(v13);
                                MEM[v125 + 4 + 96] = uint48(block.timestamp + 60);
                                v123 = 128 + (v125 + 4);
                                v127 = 0x22d473030f116ddee9f6b43ac78ba3.call(MEM[v2f8b0x35ed_0x2V0x28b6V0xd02:v2f8b0x35ed_0x2V0x28b6V0xd02 + v27d4V0x2f570x35edV0x28b6V0xd02 - v2f8b0x35ed_0x2V0x28b6V0xd02], MEM[v2f8b0x35ed_0x2V0x28b6V0xd02:v2f8b0x35ed_0x2V0x28b6V0xd02 + v2f8b0x35ed_0x3V0x28b6V0xd02]).value(v121).gas(msg.gas);
                                if (!v127) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v127) {
                                        require(!((v119 < v119) | (v119 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        v103 = v128 = 0;
                                    }
                                    v129 = address(v112.word0);
                                    v129 = v130 = address(v112.word1);
                                    if (v129 == varg9) {
                                    }
                                    MEM[v131.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                                    MEM[v131.data + 2] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                                    v132 = new struct(4);
                                    require(!((v132 + 128 < v132) | (v132 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    v132.word0 = 3;
                                    v133 = v134 = 0;
                                    while (v133 < 96) {
                                        MEM[v132 + v133 + 32] = 96;
                                        v133 = v133 + 32;
                                    }
                                    v135 = new struct(5);
                                    require(!((v135 + 160 > uint64.max) | (v135 + 160 < v135)), Panic(65)); // failed memory allocation (too much memory)
                                    v135.word0 = v112;
                                    v135.word1 = v129 == varg9;
                                    v135.word2 = uint128(v13);
                                    v135.word3 = 1;
                                    v136 = 32;
                                    v137 = new struct(1);
                                    require(!((v137 + 32 < v137) | (v137 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    v137.word0 = v103;
                                    v135.word4 = v137;
                                    MEM[MEM[64] + v136] = 32;
                                    MEM[MEM[64] + v136 + 32] = address(MEM[v135.word0]);
                                    MEM[MEM[64] + v136 + 64] = address(MEM[v135.word0 + 32]);
                                    MEM[MEM[64] + v136 + 96] = uint24(MEM[v135.word0 + 64]);
                                    MEM[MEM[64] + v136 + 128] = int24(MEM[v135.word0 + 96]);
                                    MEM[MEM[64] + v136 + 160] = address(MEM[v135.word0 + 128]);
                                    MEM[MEM[64] + v136 + 192] = bool(v135.word1);
                                    MEM[MEM[64] + v136 + 224] = uint128(v135.word2);
                                    MEM[MEM[64] + v136 + (uint8.max + 1)] = uint128(v135.word3);
                                    MEM[MEM[64] + v136 + 288] = 288;
                                    MEM[MEM[64] + v136 + 320] = MEM[v135.word4];
                                    MCOPY(MEM[64] + v136 + 320 + 32, 32 + v135.word4, MEM[v135.word4]);
                                    MEM[32 + (MEM[v135.word4] + (MEM[64] + v136 + 320))] = 0;
                                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v135.word4]) + (MEM[64] + v136 + 320) + 32 - MEM[64] - 32;
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v135.word4]) + (MEM[64] + v136 + 320) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v135.word4]) + (MEM[64] + v136 + 320) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v132.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v138 = v132.data;
                                    v132.word1 = MEM[64];
                                    require(v132.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v139 = v132.data;
                                    if (v129 != varg9) {
                                        v140 = new struct(3);
                                        v140.word1 = address(v112.word1);
                                        v140.word2 = v13;
                                        v140.word0 = 64;
                                        require(!((v140 + 96 < v140) | (v140 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        require(1 < v132.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v141 = 64 + v132;
                                    } else {
                                        v140 = v142 = new struct(3);
                                        v142.word1 = address(v112.word0);
                                        v142.word2 = v13;
                                        v142.word0 = 64;
                                        require(!((v142 + 96 < v142) | (v142 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        require(1 < v132.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v141 = v143 = 64 + v132;
                                    }
                                    MEM[v141] = v140;
                                    require(1 < v132.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    if (v129 != varg9) {
                                        v144 = v145 = address(v112.word0);
                                    } else {
                                        v144 = address(v112.word1);
                                    }
                                    v146 = new struct(3);
                                    v146.word1 = address(v144);
                                    v146.word2 = 1;
                                    v146.word0 = 64;
                                    require(!((v146 + 96 < v146) | (v146 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(2 < v132.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v132.word3 = v146;
                                    require(2 < v132.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v147 = new struct(2);
                                    require(!((v147 + 64 < v147) | (v147 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    v147.word0 = 1;
                                    v148 = v149 = 0;
                                    while (v148 < 32) {
                                        MEM[v147 + v148 + 32] = 96;
                                        v148 = v148 + 32;
                                    }
                                    MEM[MEM[64] + v136] = 64;
                                    MEM[MEM[64] + v136 + 64] = v131.length;
                                    MCOPY(MEM[64] + v136 + 64 + 32, v131.data, v131.length);
                                    MEM[32 + (v131.length + (MEM[64] + v136 + 64))] = 0;
                                    MEM[MEM[64] + v136 + 32] = 128;
                                    MEM[32 + (MEM[64] + v136 + 64) + 32] = v132.word0.length;
                                    v150 = 32 + (MEM[64] + v136 + 64) + 32 + 32;
                                    v151 = v152 = 32 + (MEM[64] + v136 + 64) + 32 + 96 + 32;
                                    v153 = v132.data;
                                    v154 = 0;
                                    while (v154 < v132.word0.length) {
                                        MEM[v150] = v151 - (32 + (MEM[64] + v136 + 64) + 32) - 32;
                                        MEM[v151] = MEM[MEM[v153]];
                                        MCOPY(v151 + 32, 32 + MEM[v153], MEM[MEM[v153]]);
                                        MEM[32 + (MEM[MEM[v153]] + v151)] = 0;
                                        v151 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v153]]) + v151 + 32;
                                        v153 = v153 + 32;
                                        v150 = v150 + 32;
                                        v154 = v154 + 1;
                                    }
                                    MEM[MEM[64]] = v151 - MEM[64] - 32;
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v151 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v151 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v147.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v155 = v147.data;
                                    v147.word1 = MEM[64];
                                    require(v147.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v156 = v147.data;
                                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                                    if (bool(address(v129))) {
                                        v157, /* uint112 */ v103 = address(v129).balanceOf(this).gas(msg.gas);
                                        if (!v157) {
                                            RETURNDATACOPY(MEM[64], v103, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v157) {
                                            if (v136 > RETURNDATASIZE()) {
                                                v136 = v158 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v136 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v136 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            require(MEM[64] + v136 - MEM[64] >= v136);
                                        }
                                    } else {
                                        v103 = v159 = this.balance;
                                    }
                                    require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                                    require(stor_4_0_19.code.size, v103, v103);
                                    MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                    MEM[MEM[64] + 4] = 96;
                                    MEM[MEM[64] + 4 + 96] = v160.length;
                                    MCOPY(MEM[64] + 4 + 96 + 32, v160.data, v160.length);
                                    MEM[32 + (v160.length + (MEM[64] + 4 + 96))] = 0;
                                    MEM[MEM[64] + 4 + 32] = 160;
                                    MEM[32 + (MEM[64] + 4 + 96) + 32] = v147.word0.length;
                                    v161 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                    v162 = v163 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                    v164 = v147.data;
                                    v165 = 0;
                                    while (v165 < v147.word0.length) {
                                        MEM[v161] = v162 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                        MEM[v162] = MEM[MEM[v164]];
                                        MCOPY(v162 + 32, 32 + MEM[v164], MEM[MEM[v164]]);
                                        MEM[32 + (MEM[MEM[v164]] + v162)] = 0;
                                        v162 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v164]]) + v162 + 32;
                                        v164 = v164 + 32;
                                        v161 = v161 + 32;
                                        v165 = v165 + 1;
                                    }
                                    MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                    v166 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v41b0V0x42c1V0x432eV0x31580x35edV0x28b6V0xd02 - MEM[64]], MEM[MEM[64]:MEM[64] + v3c43V0x3c6a0x35edV0x28b6V0xd02]).value(v103).gas(msg.gas);
                                    if (!v166) {
                                        RETURNDATACOPY(MEM[64], v103, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v166) {
                                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(!v103, v103, v103);
                                        }
                                        if (bool(address(v129))) {
                                            v167, /* uint112 */ v103 = address(v129).balanceOf(this).gas(msg.gas);
                                            if (!v167) {
                                                RETURNDATACOPY(MEM[64], v103, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                if (v167) {
                                                    if (v136 > RETURNDATASIZE()) {
                                                        v136 = v168 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v136 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v136 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(MEM[64] + v136 - MEM[64] >= v136);
                                                }
                                                v103 = v169 = _SafeSub(v103, v103);
                                            }
                                        } else {
                                            v170 = this.balance;
                                            v103 = v171 = _SafeSub(v170, v103);
                                            if (v171) {
                                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v103, v103);
                                                v172 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v171).gas(msg.gas);
                                                if (!v172) {
                                                    RETURNDATACOPY(MEM[64], v103, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else if (v172) {
                                                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64];
                                                    require(!v103, v103, v103);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        v173, /* uint112 */ v103, /* uint112 */ v103, /* uint32 */ v174 = varg7.getReserves().gas(msg.gas);
                        if (!v173) {
                            RETURNDATACOPY(MEM[64], v104, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v173) {
                                if (96 > RETURNDATASIZE()) {
                                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                    v175 = v176 = MEM[64] + RETURNDATASIZE();
                                } else {
                                    require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + 96;
                                    v175 = v177 = MEM[64] + 96;
                                }
                                require(v175 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v103 - uint112(v103)));
                                require(!(v174 - uint32(v174)));
                            }
                            v178, /* uint112 */ v103 = varg7.token0().gas(msg.gas);
                            if (!v178) {
                                RETURNDATACOPY(MEM[64], v104, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v178) {
                                    if (32 > RETURNDATASIZE()) {
                                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                        v179 = v180 = MEM[64] + RETURNDATASIZE();
                                    } else {
                                        require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + 32;
                                        v179 = v181 = MEM[64] + 32;
                                    }
                                    require(v179 - MEM[64] >= 32);
                                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                }
                                if (varg9 != address(v103)) {
                                    v182 = uint112(v103);
                                    v183 = uint112(v103);
                                    0x2b45(varg9, varg7, v13);
                                } else {
                                    v182 = v184 = uint112(v103);
                                    v183 = v185 = uint112(v103);
                                    0x2b45(varg9, varg7, v13);
                                }
                                v186, /* uint112 */ v103 = varg9.balanceOf(varg7).gas(msg.gas);
                                if (!v186) {
                                    RETURNDATACOPY(MEM[64], v104, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v186) {
                                        v187 = 32;
                                        if (32 > RETURNDATASIZE()) {
                                            v187 = v188 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v187 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v187 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[64] + v187 - MEM[64] >= 32);
                                    }
                                    v189 = _SafeSub(v103, v183);
                                    v103 = v190 = 0x4825(v189, v183, v182);
                                    if (varg9 == address(v103)) {
                                    }
                                    require(varg7.code.size, v104, v104);
                                    v191 = new uint256[](0);
                                    v192 = varg7.swap(v103, v103, address(this), v191).value(v104).gas(msg.gas);
                                    if (!v192) {
                                        RETURNDATACOPY(MEM[64], v104, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else if (v192) {
                                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v104, v104, v104);
                                    }
                                }
                            }
                        }
                    }
                    v11 = _SafeAdd(v11, v4);
                    v11 = _SafeAdd(v11, v13);
                    v11 = _SafeAdd(v11, v103);
                    v4 = _SafeSub(v4, v4);
                }
                v193 = _SafeAdd(v3.word0, v11);
                v3.word0 = v193;
                v194 = _SafeAdd(v3.word1, v11);
                v3.word1 = v194;
                v195 = _SafeAdd(v3.word2, v11);
                v3.word2 = v195;
            }
            v4 = v4 + 1;
        }
    }
    require(v3.word0, InvalidAmount());
    v196 = 0x2a4c(v3.word2, varg16);
    require(!(varg3 - address(varg3)));
    emit 0xb735592d2893f10a0033b5c5f91afb74008151cb458e93406022e1a7e570fc39(varg2, address(varg3), v3.word0, v3.word1, v196, varg14.length, varg16);
    return v196;
}

function 0xd9a8ff92() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return stor_0_0_19;
}

function 0xd32a231d(address varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require((varg3.length << 5) + (4 + varg3) + 32 <= msg.data.length);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    v3 = v4 = !varg2.length;
    if (bool(varg2.length)) {
        v3 = v5 = varg2.length != varg3.length;
    }
    require(!v3, InvalidParams());
    require(varg4, InvalidAmount());
    while (v6 < varg2.length) {
        v7 = 0x2636(varg2.data, varg2.length, v6);
        require(!(msg.data[v7] - address(msg.data[v7])));
        v8 = 0x2636(varg3.data, varg3.length, v6);
        v9, v10 = 0x3e7a(varg0, varg1, msg.data[v7], msg.data[v8], varg4);
        v6 = _SafeAdd(v6, v10);
        v6 = _SafeAdd(v6, v9);
        v6 = v6 + 1;
    }
    require(v6, InvalidAmount());
    v11 = _SafeAdd(varg5, varg6);
    require(v6 >= v11, InsufficientOutput());
    v12 = 0x292b(v6, varg6);
    emit 0x345f22efbf543125c421017bc9af869b82c0eac59afcf08cf18eddb46946b283(varg0, v6, v12, varg2.length, varg6, 0);
    return v12;
}

function 0xd07c6398(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    require(varg5 < 8);
    v0 = v1 = !_authorizedCallers[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg3, InvalidAmount());
    0x3998(varg0, varg2, this, varg3);
    if (varg5) {
        v3 = v4 = 0x3b22(varg1, varg0, varg3);
    } else {
        0x2b45(varg0, varg1, varg3);
        v3 = v5 = 0x3cd4(varg1, varg0);
    }
    require(v3 >= varg4, InsufficientOutput());
    0x2b45(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), stor_0_0_19, v3);
    require(varg5 < 8, Panic(33)); // failed convertion to enum type
    emit 0x345f22efbf543125c421017bc9af869b82c0eac59afcf08cf18eddb46946b283(varg0, varg3, v3, 1, 0, varg5);
    return v3;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x1c95ee4b == v0) {
            0x1c95ee4b();
        } else if (0x20800a00 == v0) {
            rescueETH();
        } else {
            if (0x23a69e75 != v0) {
                if (0x26eb54b5 == v0) {
                    0x26eb54b5();
                } else if (0x2c8958f6 != v0) {
                    if (0x341359a0 == v0) {
                        0x341359a0();
                    } else if (0x4460d3cf == v0) {
                        rescueToken(address);
                    } else if (0x454bbd29 == v0) {
                        setAuthorizedCaller(address,bool);
                    } else if (0x536fff6c == v0) {
                        authorizedCallers(address);
                    } else if (0x75b6ff6e == v0) {
                        0x75b6ff6e();
                    } else if (0x76d1f752 == v0) {
                        0x76d1f752(v0);
                    } else if (0x82c1e863 == v0) {
                        0x82c1e863(v0);
                    } else if (0x8baf5efe == v0) {
                        0x8baf5efe(v0);
                    } else if (0x8da5cb5b == v0) {
                        owner();
                    } else if (0xad5c4648 == v0) {
                        WETH();
                    } else if (0xc171e4bc == v0) {
                        0xc171e4bc(v0);
                    } else if (0xd01f864a == v0) {
                        0xd01f864a(v0);
                    } else if (0xd07c6398 == v0) {
                        0xd07c6398(v0);
                    } else if (0xd32a231d == v0) {
                        0xd32a231d(v0);
                    } else if (0xd9a8ff92 == v0) {
                        0xd9a8ff92(v0);
                    } else if (0xdb11c4f5 == v0) {
                        0xdb11c4f5(v0);
                    } else if (0xdc4c90d3 == v0) {
                        poolManager();
                    } else if (0xe1e8e5c1 == v0) {
                        0xe1e8e5c1(v0);
                    } else if (0xe8d5d473 == v0) {
                        0xe8d5d473(v0);
                    } else if (0xf5fc4f41 == v0) {
                        0xf5fc4f41(v0);
                    } else if (0xfa461e33 != v0) {
                        if (0xfaa86572 == v0) {
                            0xfaa86572(v0);
                        } else if (0xfe9fbb80 == v0) {
                            isAuthorized(address);
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
