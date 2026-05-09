// Decompiled by library.dedaub.com
// 2025.12.13 05:52 UTC
// Compiled using the solidity compiler version 0.8.26





function 0x101c(uint256 varg0) private { 
    require(15 > varg0, Panic(33)); // failed convertion to enum type
    return varg0;
}

function 0x12f6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = 0;
    while (1) {
        if (v0 >= varg1) {
            v2, /* uint256 */ v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v3 >= msg.value);
            v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v3 - 1).gas(msg.gas);
            v5 = block.coinbase.call().value(v3 * msg.value / 1000).gas(msg.gas);
            require(this.balance >= BASEFEE() * (varg2 - msg.gas + varg3));
            v6 = msg.sender.call().value(this.balance).gas(msg.gas);
            return ;
        } else {
            require(v0 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(msg.data[varg0 + (v0 << 5)] < msg.data.length - varg0 - 95);
            v7 = 0xf17(varg0 + msg.data[varg0 + (v0 << 5)]);
            v8 = 0xf60(1);
            require(0 < v8.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v9 = v8.data;
            v8[0] = address(v7.word0);
            v10 = 0xfb1(1);
            require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v10[0] = v7.word2;
            MEM[MEM[64] + 32] = MEM[64] + 32 + 32 - (MEM[64] + 32);
            MEM[MEM[64] + 32 + 32] = MEM[v7.word1];
            v11 = v12 = MEM[64] + 32 + 32 + 32;
            v13 = v14 = v12 + (MEM[v7.word1] << 5);
            v15 = v16 = 32 + v7.word1;
            v17 = v18 = 0;
            while (v17 < MEM[v7.word1]) {
                MEM[v11] = v13 - v12;
                v19 = 0x101c(MEM[MEM[v15]]);
                MEM[v13] = v19;
                MEM[v13 + 32] = v13 + 64 - v13;
                MEM[v13 + 64] = MEM[MEM[MEM[v15] + 32]];
                MCOPY(v13 + 64 + 32, MEM[MEM[v15] + 32] + 32, MEM[MEM[MEM[v15] + 32]]);
                MEM[v13 + 64 + 32 + MEM[MEM[MEM[v15] + 32]]] = 0;
                v13 = (MEM[MEM[MEM[v15] + 32]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v13 + 64 + 32);
                v15 += 32;
                v11 = v11 + 32;
                v17 = v17 + 1;
            }
            require(!((MEM[64] + (v13 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v13 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v13 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v20 = new address[](v8.length);
            v21 = v22 = v20.data;
            v23 = v24 = v8.data;
            v25 = v26 = 0;
            while (v25 < v8.length) {
                MEM[v21] = address(MEM[v23]);
                v21 = v21 + 32;
                v23 += 32;
                v25 = v25 + 1;
            }
            v21 = new uint256[](v10.length);
            v27 = v28 = v21.data;
            v29 = v30 = v10.data;
            v31 = v32 = 0;
            while (v31 < v10.length) {
                MEM[v27] = MEM[v29];
                v27 = v27 + 32;
                v29 += 32;
                v31 = v31 + 1;
            }
            v27 = new uint256[](v13 - (MEM[64] + 32));
            MCOPY(v27.data, MEM[64] + 32, v13 - (MEM[64] + 32));
            MEM[v27.data + (v13 - (MEM[64] + 32))] = 0;
            require(!((MEM[64] + ((v13 - (MEM[64] + 32) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v27.data - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v13 - (MEM[64] + 32) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v27.data - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v33, /* uint256 */ v34 = 0xba12222222228d8ba445958a75a0704d566bf2c8.flashLoan(address(this), v20, v21, v27).gas(msg.gas);
            if (0 != RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v35 = new bytes[](RETURNDATASIZE());
                require(!((v35 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                v34 = v35.data;
                RETURNDATACOPY(v34, 0, RETURNDATASIZE());
            }
            v0 = v0 + 1;
        }
    }
}

function receive() public payable { 
}

function 0x1687(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(varg1 - v0 >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[v0]) - MEM[v0]));
    v1.word0 = MEM[v0];
    require(!(MEM[v0 + 32] - MEM[v0 + 32]));
    v1.word1 = MEM[v0 + 32];
    require(MEM[v0 + 64] <= uint64.max);
    v2 = 0xb03(v0 + MEM[v0 + 64], varg1);
    v1.word2 = v2;
    return v1;
}

function 0x16fb(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 64);
    require(varg1 - varg0 >= 64);
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[32 + varg0]) - MEM[32 + varg0]));
    v0.word1 = MEM[32 + varg0];
    return v0;
}

function 0x1758(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 64);
    require(varg1 - varg0 >= 64);
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[32 + varg0]) - MEM[32 + varg0]));
    v0.word1 = MEM[32 + varg0];
    return v0;
}

function 0x17c7(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(varg1 - varg0 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[varg0 + 32]) - MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(!(address(MEM[64 + varg0]) - MEM[64 + varg0]));
    v0.word2 = MEM[64 + varg0];
    return v0;
}

function 0x1845(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(varg1 - varg0 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[varg0 + 32]) - MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(!(bool(MEM[64 + varg0]) - MEM[64 + varg0]));
    v0.word2 = MEM[64 + varg0];
    return v0;
}

function 0x1913(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 192);
    v0 = varg0;
    require(varg1 - v0 >= 192);
    v1 = new struct(6);
    require(!((v1 + 192 > uint64.max) | (v1 + 192 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[v0]) - MEM[v0]));
    v1.word0 = MEM[v0];
    require(!(address(MEM[v0 + 32]) - MEM[v0 + 32]));
    v1.word1 = MEM[v0 + 32];
    require(!(address(MEM[v0 + 64]) - MEM[v0 + 64]));
    v1.word2 = MEM[v0 + 64];
    require(!(MEM[v0 + 96] - MEM[v0 + 96]));
    v1.word3 = MEM[v0 + 96];
    require(!(MEM[v0 + 128] - MEM[v0 + 128]));
    v1.word4 = MEM[v0 + 128];
    require(!(uint8(MEM[160 + v0]) - MEM[160 + v0]));
    v1.word5 = MEM[160 + v0];
    return v1;
}

function 0x1982(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(varg1 - varg0 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[varg0 + 32]) - MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(!(address(MEM[64 + varg0]) - MEM[64 + varg0]));
    v0.word2 = MEM[64 + varg0];
    return v0;
}

function 0x19f1(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(varg1 - varg0 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[varg0 + 32]) - MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(!(address(MEM[64 + varg0]) - MEM[64 + varg0]));
    v0.word2 = MEM[64 + varg0];
    return v0;
}

function 0x1b4c(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 224);
    require(varg1 - varg0 >= 224);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg1 - varg0 >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v1.word0 = MEM[varg0];
    require(!(address(MEM[varg0 + 32]) - MEM[varg0 + 32]));
    v1.word1 = MEM[varg0 + 32];
    require(!(uint24(MEM[varg0 + 64]) - MEM[varg0 + 64]));
    v1.word2 = MEM[varg0 + 64];
    require(!(int24(MEM[varg0 + 96]) - MEM[varg0 + 96]));
    v1.word3 = MEM[varg0 + 96];
    require(!(address(MEM[128 + varg0]) - MEM[128 + varg0]));
    v1.word4 = MEM[128 + varg0];
    v0.word0 = v1;
    require(!(address(MEM[varg0 + 160]) - MEM[varg0 + 160]));
    v0.word1 = MEM[varg0 + 160];
    require(!(address(MEM[192 + varg0]) - MEM[192 + varg0]));
    v0.word2 = MEM[192 + varg0];
    return v0;
}

function 0x1bbb(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(varg1 - varg0 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[varg0 + 32]) - MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(!(bool(MEM[64 + varg0]) - MEM[64 + varg0]));
    v0.word2 = MEM[64 + varg0];
    return v0;
}

function 0x1c2a(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(varg1 - varg0 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[varg0 + 32]) - MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(!(bool(MEM[64 + varg0]) - MEM[64 + varg0]));
    v0.word2 = MEM[64 + varg0];
    return v0;
}

function 0x1cd5(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 128);
    require(varg1 - varg0 >= 128);
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[varg0 + 32]) - MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    require(!(address(MEM[varg0 + 64]) - MEM[varg0 + 64]));
    v0.word2 = MEM[varg0 + 64];
    require(!(uint16(MEM[96 + varg0]) - MEM[96 + varg0]));
    v0.word3 = MEM[96 + varg0];
    return v0;
}

function 0x1d32(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 64);
    require(varg1 - varg0 >= 64);
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(!(address(MEM[32 + varg0]) - MEM[32 + varg0]));
    v0.word1 = MEM[32 + varg0];
    return v0;
}

function 0x1d7d(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(varg1 - varg0 >= 32);
    v0 = new struct(1);
    require(!((v0 + 32 > uint64.max) | (v0 + 32 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[varg0]) - MEM[varg0]));
    v0.word0 = MEM[varg0];
    return v0;
}

function 0x1d9b(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    while (1) {
        if (v0 >= MEM[v0]) {
            return ;
        } else {
            require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v2 = MEM[(v0 << 5) + 32 + v0];
            v3 = 0x101c(MEM[v2]);
            v4 = 0x101c(9);
            v5 = 0x101c(v3);
            if (0 == (v5 == v4)) {
                v0 = v6 = 0x15ad5;
                v7 = 0x101c(MEM[v2]);
                v8 = 0x101c(10);
                v9 = 0x101c(v7);
                if (0 == (v9 == v8)) {
                    v10 = 0x101c(MEM[v2]);
                    v11 = 0x101c(2);
                    v12 = 0x101c(v10);
                    if (0 == (v12 == v11)) {
                        v13 = 0x101c(MEM[v2]);
                        v14 = 0x101c(3);
                        v15 = 0x101c(v13);
                        if (0 == (v15 == v14)) {
                            v16 = 0x101c(MEM[v2]);
                            v17 = 0x101c(4);
                            v18 = 0x101c(v16);
                            if (0 == (v18 == v17)) {
                                v19 = 0x101c(MEM[v2]);
                                v20 = 0x101c(1);
                                v21 = 0x101c(v19);
                                if (0 == (v21 == v20)) {
                                    v22 = 0x101c(MEM[v2]);
                                    v23 = 0x101c(5);
                                    v24 = 0x101c(v22);
                                    if (0 == (v24 == v23)) {
                                        v25 = 0x101c(MEM[v2]);
                                        v26 = 0x101c(6);
                                        v27 = 0x101c(v25);
                                        if (0 == (v27 == v26)) {
                                            v28 = 0x101c(MEM[v2]);
                                            v29 = 0x101c(8);
                                            v30 = 0x101c(v28);
                                            if (0 == (v30 == v29)) {
                                                v31 = 0x101c(MEM[v2]);
                                                v32 = 0x101c(7);
                                                v33 = 0x101c(v31);
                                                if (0 == (v33 == v32)) {
                                                    v34 = 0x101c(MEM[v2]);
                                                    v35 = 0x101c(11);
                                                    v36 = 0x101c(v34);
                                                    if (0 == (v36 == v35)) {
                                                        v37 = 0x101c(MEM[v2]);
                                                        v38 = 0x101c(12);
                                                        v39 = 0x101c(v37);
                                                        if (0 == (v39 == v38)) {
                                                            v40 = 0x101c(MEM[v2]);
                                                            v41 = 0x101c(13);
                                                            v42 = 0x101c(v40);
                                                            if (0 == (v42 == v41)) {
                                                                v43 = 0x101c(MEM[v2]);
                                                                v44 = 0x101c(14);
                                                                v45 = 0x101c(v43);
                                                                if (0 == (v45 == v44)) {
                                                                    v46 = 0x101c(MEM[v2]);
                                                                    v47 = 0x101c(0);
                                                                    v48 = 0x101c(v46);
                                                                    if (v48 == v47) {
                                                                        v49 = 0x1687(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                                                        if (v49.word1 > 0) {
                                                                            v49.word1 = v0;
                                                                        }
                                                                        v50 = address(v49.word0).call(MEM[v22b8_0x0.word2 + 32:v22b8_0x0.word2 + 32 + MEM[v22b8_0x0.word2]], MEM[0:0]).value(v49.word1).gas(msg.gas);
                                                                        if (0 != RETURNDATASIZE()) {
                                                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                            v51 = new bytes[](RETURNDATASIZE());
                                                                            require(!((v51 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
                                                                            RETURNDATACOPY(v51.data, 0, RETURNDATASIZE());
                                                                        }
                                                                        require(v50);
                                                                    }
                                                                } else {
                                                                    v52 = 0x16fb(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                                                    0x24d1(v52, v0);
                                                                }
                                                            } else {
                                                                v0 = v53 = 8726;
                                                                v54 = 0x1758(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                                                0x277e(v54);
                                                            }
                                                        } else {
                                                            v55 = 0x17c7(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                                            0x2a03(v55, v0);
                                                        }
                                                    } else {
                                                        v56 = 0x1845(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                                        0x2aea(v56, v0);
                                                    }
                                                } else {
                                                    v57 = 0x1913(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                                    0x2dc6(v57, v0);
                                                }
                                            } else {
                                                v58 = 0x1982(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                                0x3106(v58, v0);
                                            }
                                        } else {
                                            v59 = 0x19f1(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                            0x3282(v59, v0);
                                        }
                                    } else {
                                        v60 = 0x1b4c(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                        0x38b9(v60, v0);
                                    }
                                } else {
                                    v61 = 0x1bbb(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                    0x3cbe(v61, v0);
                                }
                            } else {
                                v62 = 0x1c2a(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                                if (0 == v62.word2) {
                                    v63 = 0x1614a;
                                    v64 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                    v65 = address(v62.word1);
                                    v66 = MEM[64];
                                } else {
                                    v63 = v67 = 0x160fc;
                                    v64 = v68 = address(0x1000276ad);
                                    v65 = v69 = address(v62.word1);
                                    v66 = v70 = MEM[64];
                                }
                                MEM[v66 + 32] = address(v65);
                                MEM[v66] = v66 + 32 + 32 - (v66 + 32);
                                require(!((v66 + (v66 + 32 + 32 - v66 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v66 + (v66 + 32 + 32 - v66 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v66)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v66 + (v66 + 32 + 32 - v66 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                // Unknown jump to Block ['0x160fcB0x1f77', '0x1614aB0x1f77']. Refer to 3-address code (TAC);
                                v71 = v72 = MEM[64];
                                MEM[v71] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v71 + 4] = address(this);
                                MEM[v71 + 4 + 32] = bool(v62.word2);
                                MEM[v71 + 4 + 64] = v0;
                                MEM[v71 + 4 + 96] = address(v64);
                                MEM[v71 + 4 + 128] = v71 + 4 + 160 - (v71 + 4);
                                MEM[v71 + 4 + 160] = MEM[v66];
                                MCOPY(v71 + 4 + 160 + 32, v66 + 32, MEM[v66]);
                                MEM[v71 + 4 + 160 + 32 + MEM[v66]] = 0;
                                v73 = address(v62.word0).call(MEM[va7V0x1614aV0x1f77:va7V0x1614aV0x1f77 + MEM[va7V0x16171V0x1f77] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + va7V0x1614aV0x1f77 + 4 + 160 + 32 - va7V0x1614aV0x1f77], MEM[va7V0x1614aV0x1f77:va7V0x1614aV0x1f77 + 64]).gas(msg.gas);
                                if (!v73) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else if (v73) {
                                    v74 = v75 = 64;
                                    if (v75 > RETURNDATASIZE()) {
                                        v74 = v76 = RETURNDATASIZE();
                                    }
                                    require(!((v71 + (v74 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v71 + (v74 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v71)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v71 + (v74 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(v71 + v74 - v71 >= 64);
                                    require(!(MEM[v71] - MEM[v71]));
                                    require(!(MEM[32 + v71] - MEM[32 + v71]));
                                }
                                v71 = MEM[64];
                                // Unknown jump to Block 0x3faaB0x1f77. Refer to 3-address code (TAC);
                            }
                        } else {
                            v77 = 0x1cd5(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                            0x41f1(v77, v0, 1);
                        }
                    } else {
                        v78 = 0x1cd5(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                        0x41f1(v78, v0, 0);
                    }
                } else {
                    v79 = 0x1d32(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                    0x4c6d(address(v79.word0), address(v79.word1), uint256.max);
                }
            } else {
                v0 = v80 = 0x15ab0;
                v81 = 0x1d7d(MEM[v2 + 32] + 32, MEM[v2 + 32] + 32 + MEM[MEM[v2 + 32]]);
                v0 = v82 = 0x466e(v81);
            }
            v0 = v0 + 1;
            // Unknown jump to Block ['0x15ab0', '0x15ad5']. Refer to 3-address code (TAC);
        }
    }
}

function 0x2330(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    v0[4] = varg1;
    MEM[v0.data + 4 + 32] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.data;
    v2 = v0.length;
    v3, /* uint256 */ v4 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (0 != RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v5.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    require(v3);
    return ;
}

function 0x24d1(struct(2) varg0, uint256 varg1) private { 
    v0, v1, v2, v3, v4 = 0x46a4(varg1, address(varg0.word0), address(varg0.word1));
    v5 = 0x48f5(uint128(varg1), v2, v4, v3);
    v6 = new uint256[](MEM[v5]);
    MCOPY(v6.data, v5 + 32, MEM[v5]);
    MEM[v6.data + MEM[v5]] = 0;
    v7 = address(0xaaaaaaaaa24eeeb8d57d431224f73832bc34f688).userCmd(uint16(1), v6).value(v0).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    if (v7) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(MEM[MEM[64]] <= uint64.max);
        v8 = 0xb03(MEM[64] + MEM[MEM[64]], MEM[64] + RETURNDATASIZE());
    }
    v9 = address(varg0.word1) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word1) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v9 = v10 = address(varg0.word1) == address(0x0);
    }
    if (v9) {
        0x4a83();
    }
    return ;
}

function 0x264e(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(v0 + 31 < varg1);
    v1 = v2 = v0 + 32;
    require(MEM[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](MEM[v0]);
    require(!((v3 + ((MEM[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + ((MEM[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(v2 + (MEM[v0] << 5) <= varg1);
    while (v1 < v2 + (MEM[v0] << 5)) {
        require(!(address(MEM[v1]) - MEM[v1]));
        MEM[v4] = MEM[v1];
        v4 = v4 + 32;
        v1 = v1 + 32;
    }
    return v3;
}

function 0x277e(struct(2) varg0) private { 
    v0 = v1 = 0;
    v2 = v3 = address(varg0.word0) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word0) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v2 = v4 = address(varg0.word0) == address(0x0);
    }
    if (v2) {
        0x4b39(v0);
    }
    v5 = address(0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0).conversionPath(address(varg0.word0), address(varg0.word1)).gas(msg.gas);
    if (v5) {
        v6 = v7 = 0;
        if (v5) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v6 = v8 = 0x264e(MEM[64], MEM[64] + RETURNDATASIZE());
        }
        v9 = v10 = MEM[64];
        v11 = new uint256[](MEM[v6]);
        v12 = v13 = v11.data;
        v14 = v15 = 32 + v6;
        v16 = v17 = 0;
        while (v16 < MEM[v6]) {
            MEM[v12] = address(MEM[v14]);
            v12 = v12 + 32;
            v14 += 32;
            v16 = v16 + 1;
        }
        v18 = address(0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0).rateByPath(v11, v0).gas(msg.gas);
        if (v18) {
            varg0 = v19 = 10354;
            v20 = v21 = 10410;
            v22 = v23 = 32;
            v24 = v25 = 0;
            if (v18) {
                v26 = v27 = 10559;
                if (v23 > RETURNDATASIZE()) {
                    v22 = v28 = RETURNDATASIZE();
                }
                require(!((v10 + (v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v10 + (v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v29 = v30 = v10 + v22;
            }
            v9 = MEM[64];
            v31 = new uint256[](MEM[v6]);
            v32 = v33 = v31.data;
            v34 = v35 = 32 + v6;
            v36 = v37 = 0;
            while (v36 < MEM[v6]) {
                MEM[v32] = address(MEM[v34]);
                v32 = v32 + 32;
                v34 += 32;
                v36 = v36 + 1;
            }
            v38 = address(0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0).convertByPath(v31, v0, v24, address(this), address(0x0), 0).value(v0).gas(msg.gas);
            if (v38) {
                v0 = v39 = 10459;
                v20 = v40 = 10454;
                v6 = v41 = 32;
                if (v38) {
                    v26 = v42 = 10510;
                    if (v41 > RETURNDATASIZE()) {
                        v6 = v43 = RETURNDATASIZE();
                    }
                    require(!((v9 + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v9 + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v29 = v44 = v9 + v6;
                }
            }
            require(v29 - v9 >= 32);
            v24 = MEM[v9];
            // Unknown jump to Block ['0x290e', '0x293f']. Refer to 3-address code (TAC);
            v45 = address(MEM[varg0 + v6]) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
            if (address(MEM[varg0 + v6]) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
                v45 = v46 = address(MEM[varg0 + v6]) == address(0x0);
            }
            if (v45) {
                0x4a83();
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x2a03(struct(3) varg0, uint256 varg1) private { 
    v0 = _SafeAdd(block.timestamp, 12);
    v1, /* uint256 */ v2 = address(varg0.word0).swapExactInput(varg1, 0, address(varg0.word1), address(varg0.word2), address(this), v0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    if (v1) {
        v3 = v4 = 32;
        if (v4 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v3 - MEM[64] >= 32);
    }
    return ;
}

function 0x2aea(struct(3) varg0, uint256 varg1) private { 
    0x2330(address(varg0.word1), address(varg0.word0), varg1);
    if (0 == bool(varg0.word2)) {
        v0 = MEM[64];
        v1 = address(varg0.word0).sellQuote(address(this)).gas(msg.gas);
        if (v1) {
            if (v1) {
                v2 = v3 = 11309;
                v4 = v5 = 32;
                if (v5 > RETURNDATASIZE()) {
                    v4 = v6 = RETURNDATASIZE();
                }
                require(!((v0 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v0 + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v7 = v8 = v0 + v4;
            }
        }
    } else {
        v0 = v9 = MEM[64];
        v10 = address(varg0.word0).sellBase(address(this)).gas(msg.gas);
        if (v10) {
            if (v10) {
                v2 = v11 = 11174;
                v12 = v13 = 32;
                if (v13 > RETURNDATASIZE()) {
                    v12 = v14 = RETURNDATASIZE();
                }
                require(!((v9 + (v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v9 + (v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v7 = v15 = v9 + v12;
            }
        }
    }
    return ;
    require(v7 - v0 >= 32);
    require(!(MEM[v0] - MEM[v0]));
    // Unknown jump to Block ['0x2ba6', '0x2c2d']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2b82. Refer to 3-address code (TAC);
    revert(MEM[64], RETURNDATASIZE());
    // Unknown jump to Block 0x2b84. Refer to 3-address code (TAC);
}

function 0x2dc6(struct(6) varg0, uint256 varg1) private { 
    varg1 = v0 = 0;
    v1 = v2 = address(varg0.word1) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word1) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v1 = v3 = address(varg0.word1) == address(0x0);
    }
    if (v1) {
        0x4b39(varg1);
    }
    if (0 == (uint8(varg0.word5) == uint8(1))) {
        if (0 == (uint8(varg0.word5) == uint8(2))) {
            if (uint8(varg0.word5) == uint8(3)) {
                v4 = MEM[64];
                v5 = address(varg0.word0).setMetaGold(varg0.word3, varg0.word4, varg1, 0).value(varg1).gas(msg.gas);
                if (v5) {
                    v6 = v7 = 11939;
                    v8 = v9 = 0x15e52;
                    v10 = v11 = 64;
                    if (v5) {
                        v12 = v13 = 12453;
                        v14 = v15 = 32;
                        if (v15 > RETURNDATASIZE()) {
                            v14 = v16 = RETURNDATASIZE();
                        }
                        require(!((v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v4 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v17 = v18 = v4 + v14;
                    }
                }
            }
        } else {
            v4 = v19 = MEM[64];
            v20 = address(varg0.word0).exchange(int128(varg0.word3), int128(varg0.word4), varg1, 0).value(varg1).gas(msg.gas);
            if (!v20) {
                // Unknown jump to Block 0x24c10x2dc6. Refer to 3-address code (TAC);
            } else {
                v6 = v21 = 11939;
                v8 = v22 = 0x15e0a;
                v10 = v23 = 64;
                if (v20) {
                    v12 = v24 = 12230;
                    v25 = v26 = 32;
                    if (v26 > RETURNDATASIZE()) {
                        v25 = v27 = RETURNDATASIZE();
                    }
                    require(!((v19 + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v19 + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v19)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v19 + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v17 = v28 = v19 + v25;
                }
            }
        }
    } else {
        v4 = v29 = MEM[64];
        v30 = address(varg0.word0).exchange(varg0.word3, varg0.word4, varg1, 0, True).value(varg1).gas(msg.gas);
        if (v30) {
            v6 = v31 = 11939;
            v8 = v32 = 0x15de6;
            v10 = v33 = 64;
            if (v30) {
                v12 = v34 = 11991;
                v35 = v36 = 32;
                if (v36 > RETURNDATASIZE()) {
                    v35 = v37 = RETURNDATASIZE();
                }
                require(!((v29 + (v35 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (v35 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v29 + (v35 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v17 = v38 = v29 + v35;
            }
        }
    }
    // Unknown jump to Block ['0x15de6', '0x15e0a']. Refer to 3-address code (TAC);
    v39 = v40 = address(MEM[varg0 + v10]) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(MEM[varg0 + v10]) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v39 = v41 = address(MEM[varg0 + v10]) == address(0x0);
    }
    // Unknown jump to Block 0x2ea3. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x49f50x2dc6. Refer to 3-address code (TAC);
    require(v17 - v4 >= 32);
    require(!(MEM[v4] - MEM[v4]));
    // Unknown jump to Block ['0x2ed7', '0x2fc6', '0x30a5']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2e980x2dc6. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2ffc. Refer to 3-address code (TAC);
    revert(MEM[64], RETURNDATASIZE());
    v39 = v42 = address(varg0.word2) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word2) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v39 = v43 = address(varg0.word2) == address(0x0);
    }
    if (v39) {
        0x4a83();
    }
    return ;
}

function 0x3106(struct(3) varg0, uint256 varg1) private { 
    varg1 = v0 = 0;
    v1 = v2 = address(varg0.word1) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word1) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v1 = v3 = address(varg0.word1) == address(0x0);
    }
    if (v1) {
        0x4b39(varg1);
    }
    v4, /* uint256 */ v5 = address(varg0.word0).swapIn(address(varg0.word1) < address(varg0.word2), varg1, 0, address(this)).value(varg1).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (v4) {
        v6 = v7 = 32;
        if (v7 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v6 - MEM[64] >= 32);
    }
    v9 = address(varg0.word2) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word2) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v9 = v10 = address(varg0.word2) == address(0x0);
    }
    if (v9) {
        0x4a83();
    }
    return ;
}

function 0x3282(struct(3) varg0, uint256 varg1) private { 
    varg1 = v0 = 0;
    v1 = v2 = address(varg0.word1) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word1) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v1 = v3 = address(varg0.word1) == address(0x0);
    }
    if (v1) {
        0x4b39(varg1);
    }
    v4, /* uint256 */ v5 = address(varg0.word0).swap(address(varg0.word1), address(varg0.word2), varg1, 0, address(0x0)).value(varg1).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (v4) {
        v6 = v7 = 32;
        if (v7 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v6 - MEM[64] >= 32);
    }
    v9 = address(varg0.word2) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word2) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v9 = v10 = address(varg0.word2) == address(0x0);
    }
    if (v9) {
        0x4a83();
    }
    return ;
}

function 0x34e5(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0);
    require(!((v0 + ((varg0 << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((varg0 << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = 0;
    while (v1 < (varg0 << 5) + 32 - 32) {
        MEM[v0.data + v1] = 96;
        v1 = v1 + 32;
    }
    return v0;
}

function 0x356e() private { 
    require(0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](0);
    require(!((v0.data > uint64.max) | (v0.data < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x36b5(uint256 varg0, struct(5) varg1) private { 
    v0 = varg0 + 32;
    MEM[varg0] = v0 - varg0;
    MEM[v0] = address(MEM[varg1.word0]);
    MEM[v0 + 32] = address(MEM[varg1.word0 + 32]);
    MEM[v0 + 64] = uint24(MEM[varg1.word0 + 64]);
    MEM[v0 + 96] = int24(MEM[varg1.word0 + 96]);
    MEM[v0 + 128] = address(MEM[varg1.word0 + 128]);
    MEM[v0 + 160] = bool(varg1.word1);
    MEM[v0 + 192] = uint128(varg1.word2);
    MEM[v0 + 224] = uint128(varg1.word3);
    MEM[v0 + (uint8.max + 1)] = v0 + 288 - v0;
    MEM[v0 + 288] = v1.length;
    MCOPY(v0 + 288 + 32, v1.data, v1.length);
    MEM[v0 + 288 + 32 + v1.length] = 0;
    return (v1.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v0 + 288 + 32);
}

function 0x38b9(struct(3) varg0, uint256 varg1) private { 
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    MEM[v0.data + 1] = 0xc00000000000000000000000000000000000000000000000000000000000000;
    MEM[v0.data + 1 + 1] = 0xf00000000000000000000000000000000000000000000000000000000000000;
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    v1 = 0x34e5(3);
    v2 = 0x356e();
    v3 = new struct(5);
    require(!((v3 + 160 > uint64.max) | (v3 + 160 < v3)), Panic(65)); // failed memory allocation (too much memory)
    v3.word0 = varg0.word0;
    v3.word1 = address(varg0.word1) < address(varg0.word2);
    v3.word2 = uint128(varg1);
    v3.word3 = uint128(0);
    v3.word4 = v2;
    v4 = 0x36b5(MEM[64] + 32, v3);
    MEM[MEM[64]] = v4 - (MEM[64] + 32);
    require(!((MEM[64] + (v4 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (v4 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v5 = v1.data;
    v1[0] = MEM[64];
    require(0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v6 = v1.data;
    v7 = new struct(3);
    v8 = v7.data;
    v7.word1 = address(varg0.word1);
    v7.word2 = varg1;
    v7.word0 = 64;
    require(!((v7 + 96 > uint64.max) | (v7 + 96 < v7)), Panic(65)); // failed memory allocation (too much memory)
    require(1 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1[1] = v7;
    require(1 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v9 = new struct(3);
    v10 = v9.data;
    v9.word1 = address(varg0.word2);
    v9.word2 = uint8(0);
    v9.word0 = 64;
    require(!((v9 + 96 > uint64.max) | (v9 + 96 < v9)), Panic(65)); // failed memory allocation (too much memory)
    require(2 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1[2] = v9;
    require(2 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v11 = 0x34e5(1);
    MEM[MEM[64] + 32] = 64;
    MEM[MEM[64] + 32 + 64] = v0.length;
    MCOPY(MEM[64] + 32 + 64 + 32, v0.data, v0.length);
    MEM[MEM[64] + 32 + 64 + 32 + v0.length] = 0;
    MEM[MEM[64] + 32 + 32] = 128;
    MEM[32 + (MEM[64] + 32 + 64 + 32)] = v1.length;
    v12 = v13 = 32 + (MEM[64] + 32 + 64 + 32) + 32;
    v14 = v15 = v13 + (v1.length << 5);
    v16 = v17 = v1.data;
    v18 = v19 = 0;
    while (v18 < v1.length) {
        MEM[v12] = v14 - v13;
        MEM[v14] = MEM[MEM[v16]];
        MCOPY(v14 + 32, MEM[v16] + 32, MEM[MEM[v16]]);
        MEM[v14 + 32 + MEM[MEM[v16]]] = 0;
        v14 = (MEM[MEM[v16]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v14 + 32);
        v16 += 32;
        v12 = v12 + 32;
        v18 = v18 + 1;
    }
    MEM[MEM[64]] = v14 - (MEM[64] + 32);
    require(!((MEM[64] + (v14 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v14 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (v14 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(0 < v11.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v20 = v11.data;
    v11[0] = MEM[64];
    require(0 < v11.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v21 = v11.data;
    varg1 = v22 = 0;
    v23 = v24 = address(varg0.word1) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word1) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v23 = v25 = address(varg0.word1) == address(0x0);
    }
    if (v23) {
        0x4b39(varg1);
    }
    v26 = _SafeAdd(block.timestamp, 12);
    require((address(0x66a9893cc07d91d95644aedd05d03f95e1dba8af)).code.size);
    v27 = new bytes[](v28.length);
    MCOPY(v27.data, v28.data, v28.length);
    v27[v28.length] = 0;
    v29 = new uint256[](v11.length);
    v27[32][32] = v11.length;
    v30 = v31 = v29.data;
    v32 = v33 = v31 + (v11.length << 5);
    v34 = v35 = v11.data;
    v36 = v37 = 0;
    while (v36 < v11.length) {
        MEM[v30] = v32 - v31;
        MEM[v32] = MEM[MEM[v34]];
        MCOPY(v32 + 32, MEM[v34] + 32, MEM[MEM[v34]]);
        MEM[v32 + 32 + MEM[MEM[v34]]] = 0;
        v32 = (MEM[MEM[v34]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v32 + 32);
        v34 += 32;
        v30 = v30 + 32;
        v36 = v36 + 1;
    }
    v38 = address(0x66a9893cc07d91d95644aedd05d03f95e1dba8af).execute(v27, v29, v26).value(varg1).gas(msg.gas);
    require(v38, MEM[64], RETURNDATASIZE());
    if (v38) {
        v39 = v40 = 0;
        if (v40 > RETURNDATASIZE()) {
            v39 = v41 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v39 - MEM[64] >= 0);
    }
    v42 = address(varg0.word2) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word2) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v42 = v43 = address(varg0.word2) == address(0x0);
    }
    if (v42) {
        0x4a83();
    }
    return ;
}

function 0x3cbe(struct(3) varg0, uint256 varg1) private { 
    v0 = v1 = address(varg0.word1) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg0.word1) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0 = v2 = address(varg0.word1) == address(0x0);
    }
    if (0 == v0) {
        v3 = _SafeAdd(block.timestamp, 12);
        v4 = MEM[64];
        v5 = address(varg0.word0).tokenToEthSwapInput(varg1, 1, v3).gas(msg.gas);
        if (v5) {
            if (v5) {
                v6 = v7 = 15893;
                v8 = v9 = 32;
                if (v9 > RETURNDATASIZE()) {
                    v8 = v10 = RETURNDATASIZE();
                }
                require(!((v4 + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v4 + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v11 = v12 = v4 + v8;
            }
        }
    } else {
        0x4b39(varg1);
        v13 = _SafeAdd(block.timestamp, 12);
        v4 = v14 = MEM[64];
        v15 = address(varg0.word0).ethToTokenSwapInput(1, v13).value(varg1).gas(msg.gas);
        if (v15) {
            if (v15) {
                v6 = v16 = 15738;
                v17 = v18 = 32;
                if (v18 > RETURNDATASIZE()) {
                    v17 = v19 = RETURNDATASIZE();
                }
                require(!((v14 + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v14 + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v11 = v20 = v14 + v17;
            }
        }
    }
    return ;
    require(v11 - v4 >= 32);
    require(!(MEM[v4] - MEM[v4]));
    // Unknown jump to Block ['0x3d7a', '0x3e15']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x3d56. Refer to 3-address code (TAC);
    revert(MEM[64], RETURNDATASIZE());
    0x4a83();
    // Unknown jump to Block 0x3d58. Refer to 3-address code (TAC);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x41f1(struct(4) varg0, uint256 varg1, bool varg2) private { 
    0x2330(address(varg0.word1), address(varg0.word0), varg1);
    v0, v1, v1, v2 = address(varg0.word0).getReserves().gas(msg.gas);
    if (v0) {
        v1 = v3 = 0;
        if (v0) {
            v4 = v5 = 96;
            if (v5 > RETURNDATASIZE()) {
                v4 = v6 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v4 - MEM[64] >= 96);
            require(!(uint112(v1) - v1));
            require(!(uint112(v1) - v1));
            require(!(uint32(v2) - v2));
        }
        v7 = uint112(v1);
        v7 = v8 = uint112(v1);
        if (0 == address(varg0.word1) < address(varg0.word2)) {
            if (varg2 == False) {
                v9 = MEM[64];
                v10 = address(varg0.word1).balanceOf(address(varg0.word0)).gas(msg.gas);
                if (v10) {
                    v11 = v12 = 17866;
                    v13 = v14 = 0;
                    if (v10) {
                        v15 = v16 = 17912;
                        v17 = v18 = 32;
                        if (v18 > RETURNDATASIZE()) {
                            v17 = v19 = RETURNDATASIZE();
                        }
                        require(!((v9 + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v9 + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v20 = v21 = v9 + v17;
                    }
                }
            }
        } else if (varg2 == False) {
            v9 = v22 = MEM[64];
            v23 = address(varg0.word1).balanceOf(address(varg0.word0)).gas(msg.gas);
            if (v23) {
                v11 = v24 = 17441;
                v13 = v25 = 0;
                if (v23) {
                    v15 = v26 = 17487;
                    v27 = v28 = 32;
                    if (v28 > RETURNDATASIZE()) {
                        v27 = v29 = RETURNDATASIZE();
                    }
                    require(!((v22 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v22 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v22)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v22 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v20 = v30 = v22 + v27;
                }
            }
        }
        v31 = 0x4c25(varg1, v7, v7, uint16(varg0.word3));
        require((address(varg0.word0)).code.size);
        v32 = v33 = MEM[64];
        v34 = new uint256[](0);
        v35 = v34.data;
        v36 = address(varg0.word0).swap(0, v31, address(this), v34).gas(msg.gas);
        if (v36) {
            if (v36) {
                v37 = v38 = 17286;
                v39 = v40 = 0;
                if (v40 > RETURNDATASIZE()) {
                    v39 = v41 = RETURNDATASIZE();
                }
                require(!((v33 + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v33 + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v33)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v33 + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v42 = v43 = v33 + v39;
            }
        }
        return ;
        require(v42 - v32 >= 0);
        // Unknown jump to Block ['0x4386', '0x452f']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x4363. Refer to 3-address code (TAC);
        varg1 = v44 = v13 - v7;
        require(v44 <= v13, Panic(17)); // arithmetic overflow or underflow
        // Unknown jump to Block ['0x4421', '0x45ca']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x42d4. Refer to 3-address code (TAC);
        require(v20 - v9 >= 32);
        v13 = MEM[v9];
        // Unknown jump to Block ['0x444f', '0x45f8']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x4419. Refer to 3-address code (TAC);
        v45 = 0x4c25(varg1, v7, v7, uint16(varg0.word3));
        require((address(varg0.word0)).code.size);
        v32 = MEM[64];
        v46 = new uint256[](0);
        v47 = v46.data;
        v48 = address(varg0.word0).swap(v45, 0, address(this), v46).gas(msg.gas);
        if (v48) {
            if (v48) {
                v37 = v49 = 17711;
                v50 = v51 = 0;
                if (v51 > RETURNDATASIZE()) {
                    v50 = v52 = RETURNDATASIZE();
                }
                require(!((v32 + (v50 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (v50 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v32 + (v50 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v42 = v53 = v32 + v50;
            }
        }
        // Unknown jump to Block 0x4365. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x41100x41f1. Refer to 3-address code (TAC);
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x466e(struct(1) varg0) private { 
    v0 = 0x4cc6(address(varg0.word0));
    v1 = _SafeSub(v0, 1);
    return v1;
}

function 0x46a4(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    varg0 = v0 = 0;
    v1 = v2 = address(varg1) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg1) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v1 = v3 = address(varg1) == address(0x0);
    }
    if (0 == v1) {
        0x4c6d(varg1, 0xaaaaaaaaa24eeeb8d57d431224f73832bc34f688, varg0);
    } else {
        0x4b39(varg0);
        varg1 = v4 = address(0x0);
    }
    v5 = v6 = address(varg2) == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (address(varg2) != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v5 = v7 = address(varg2) == address(0x0);
    }
    if (0 != v5) {
        varg1 = v8 = address(0x0);
    }
    if (0 != address(varg1) < address(varg1)) {
    }
    return varg0, varg1, varg1, varg1, varg1;
}

function 0x48f5(uint128 varg0, address varg1, address varg2, address varg3) private { 
    if (0 == (varg1 == varg2)) {
        v0 = new struct(11);
        v1 = v0.data;
        v0.word1 = varg2;
        v0.word2 = varg3;
        v0.word3 = 420;
        v0.word4 = False;
        v0.word5 = False;
        v0.word6 = varg0;
        v0.word7 = uint16(0);
        v0.word8 = uint8(0);
        v0.word9 = uint8(0);
        v0.word10 = uint8(0);
        v0.word0 = 320;
        require(!((v0 + 352 > uint64.max) | (v0 + 352 < v0)), Panic(65)); // failed memory allocation (too much memory)
    } else {
        v0 = v2 = new struct(11);
        v3 = v2.data;
        v2.word1 = varg2;
        v2.word2 = varg3;
        v2.word3 = 420;
        v2.word4 = True;
        v2.word5 = True;
        v2.word6 = varg0;
        v2.word7 = uint16(0);
        v2.word8 = uint128(uint128.max);
        v2.word9 = uint8(0);
        v2.word10 = uint8(0);
        v2.word0 = 320;
        require(!((v2 + 352 > uint64.max) | (v2 + 352 < v2)), Panic(65)); // failed memory allocation (too much memory)
    }
    return v0;
}

function 0x4a83() private { 
    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value((address(this)).balance).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v1 = v2 = 0;
        if (v2 > RETURNDATASIZE()) {
            v1 = v3 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v1 - MEM[64] >= 0);
    }
    return ;
}

function 0x4b39(uint256 varg0) private { 
    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v1 = v2 = 0;
        if (v2 > RETURNDATASIZE()) {
            v1 = v3 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v1 - MEM[64] >= 0);
    }
    return ;
}

function 0x4c25(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = _SafeMul(varg0, varg3);
    v1 = _SafeMul(v0, varg2);
    v2 = _SafeMul(varg1, 10000);
    v3 = _SafeAdd(v2, v0);
    require(v3, Panic(18)); // division by zero
    return v1 / v3;
}

function 0x4c6d(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    v0[4] = varg1;
    MEM[v0.data + 4 + 32] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.data;
    v2 = v0.length;
    v3, /* uint256 */ v4 = varg0.approve(varg1, varg2).gas(msg.gas);
    if (0 != RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v5.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    require(v3);
    return ;
}

function 0x4cc6(address varg0) private { 
    v0 = v1 = varg0 == address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    if (varg0 != address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0 = v2 = varg0 == address(0x0);
    }
    if (0 == v0) {
        v3, /* uint256 */ v4 = varg0.balanceOf(address(this)).gas(msg.gas);
        require(v3, MEM[64], RETURNDATASIZE());
        v4 = v5 = 0;
        if (v3) {
            v6 = v7 = 32;
            if (v7 > RETURNDATASIZE()) {
                v6 = v8 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v6 - MEM[64] >= 32);
        }
    } else {
        v4 = v9 = (address(this)).balance;
    }
    return v4;
}

function 0x55e(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 128);
    require(msg.data[varg0] <= uint64.max);
    v0 = varg0 + msg.data[varg0];
    require(v0 + 31 < varg1);
    v1 = v2 = v0 + 32;
    require(msg.data[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v0]);
    require(!((v3 + ((msg.data[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + ((msg.data[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(v2 + (msg.data[v0] << 5) <= varg1);
    while (v1 < v2 + (msg.data[v0] << 5)) {
        require(!(address(msg.data[v1]) - msg.data[v1]));
        MEM[v4] = msg.data[v1];
        v4 = v4 + 32;
        v1 = v1 + 32;
    }
    require(msg.data[varg0 + 32] <= uint64.max);
    v6 = varg0 + msg.data[varg0 + 32];
    require(v6 + 31 < varg1);
    v7 = v8 = v6 + 32;
    require(msg.data[v6] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new uint256[](msg.data[v6]);
    require(!((v9 + ((msg.data[v6] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + ((msg.data[v6] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
    v10 = v11 = v9.data;
    require(v8 + (msg.data[v6] << 5) <= varg1);
    while (v7 < v8 + (msg.data[v6] << 5)) {
        require(!(msg.data[v7] - msg.data[v7]));
        MEM[v10] = msg.data[v7];
        v10 = v10 + 32;
        v7 = v7 + 32;
    }
    require(msg.data[varg0 + 64] <= uint64.max);
    v12 = varg0 + msg.data[varg0 + 64];
    require(v12 + 31 < varg1);
    v13 = v14 = v12 + 32;
    require(msg.data[v12] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v15 = new uint256[](msg.data[v12]);
    require(!((v15 + ((msg.data[v12] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + ((msg.data[v12] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
    v16 = v17 = v15.data;
    require(v14 + (msg.data[v12] << 5) <= varg1);
    while (v13 < v14 + (msg.data[v12] << 5)) {
        require(!(msg.data[v13] - msg.data[v13]));
        MEM[v16] = msg.data[v13];
        v16 = v16 + 32;
        v13 = v13 + 32;
    }
    require(msg.data[varg0 + 96] <= uint64.max);
    v18 = varg0 + msg.data[varg0 + 96];
    require(v18 + 31 < varg1);
    require(msg.data[v18] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v19 = new bytes[](msg.data[v18]);
    require(!((v19 + ((msg.data[v18] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v19 + ((msg.data[v18] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v19)), Panic(65)); // failed memory allocation (too much memory)
    require(v18 + 32 + msg.data[v18] <= varg1);
    CALLDATACOPY(v19.data, v18 + 32, msg.data[v18]);
    v19[msg.data[v18]] = 0;
    return v19, v15, v9, v3;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!varg0 | (varg0 * varg1 / varg0 == varg1), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x917(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = _SafeMul(msg.data.length, 16);
    v1 = _SafeAdd(v0, 0x186a0);
    require(!(bool(msg.data[varg0 + 64]) - msg.data[varg0 + 64]));
    if (0 == msg.data[varg0 + 64]) {
        require(!(address(msg.data[varg0]) - msg.data[varg0]));
        if (0 == (address(msg.data[varg0]) == address(block.coinbase))) {
            v2 = _SafeMul(2300, msg.value);
            v3, /* uint256 */ v4 = address(block.coinbase).call().value(msg.value).gas(v2);
            if (0 != RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v5 = new bytes[](RETURNDATASIZE());
                require(!((v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
                v4 = v5.data;
                RETURNDATACOPY(v4, 0, RETURNDATASIZE());
            }
            require(v3);
        } else {
            require(!(msg.data[varg0 + 32] - msg.data[varg0 + 32]));
            if (0 == (msg.data[varg0 + 32] == (address(block.coinbase)).balance)) {
                0x12f6(varg1, varg2, msg.gas, v1);
            } else {
                v6 = _SafeMul(2300, msg.value);
                v7, /* uint256 */ v8 = address(block.coinbase).call().value(msg.value).gas(v6);
                if (0 != RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v9 = new bytes[](RETURNDATASIZE());
                    require(!((v9 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                    v8 = v9.data;
                    RETURNDATACOPY(v8, 0, RETURNDATASIZE());
                }
                require(v7);
            }
        }
    } else {
        0x12f6(varg1, varg2, msg.gas, v1);
    }
    return ;
}

function 0xb03(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + ((v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + ((v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + 32 + v0 <= varg1);
    MCOPY(v1.data, varg0 + 32, v0);
    v1[v0] = 0;
    return v1;
}

function 0xc10(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(v0 + 31 < varg1);
    v1 = v2 = v0 + 32;
    require(MEM[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](MEM[v0]);
    require(!((v3 + ((MEM[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + ((MEM[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(v2 + (MEM[v0] << 5) <= varg1);
    while (v1 < v2 + (MEM[v0] << 5)) {
        require(MEM[v1] <= uint64.max);
        require(varg1 - (v2 + MEM[v1]) >= 64);
        v6 = new struct(2);
        require(!((v6 + 64 > uint64.max) | (v6 + 64 < v6)), Panic(65)); // failed memory allocation (too much memory)
        require(15 > MEM[v2 + MEM[v1]]);
        v6.word0 = MEM[v2 + MEM[v1]];
        require(MEM[v2 + MEM[v1] + 32] <= uint64.max);
        v7 = 0xb03(v2 + MEM[v1] + MEM[v2 + MEM[v1] + 32], varg1);
        v6.word1 = v7;
        MEM[v4] = v6;
        v4 = v4 + 32;
        v1 = v1 + 32;
    }
    return v3;
}

function 0xcde(uint256 varg0, uint256 varg1, uint256 varg2, bytes varg3) private { 
    v0 = 0xc10(varg3.data, varg3.data + varg3.length);
    require(0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1 = varg1.data;
    0x1d9b(v0, varg1[0]);
    require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v2 = varg0.data;
    require(0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v3 = varg1.data;
    0x2330(address(varg0[0x0]), msg.sender, varg1[0]);
    return ;
}

function 0xe8a(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = v1 = varg0 + 32;
    require(msg.data[varg0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](msg.data[varg0]);
    require(!((v2 + ((msg.data[varg0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + ((msg.data[varg0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(v1 + (msg.data[varg0] << 5) <= varg1);
    while (v0 < v1 + (msg.data[varg0] << 5)) {
        require(msg.data[v0] <= uint64.max);
        require(varg1 - (v1 + msg.data[v0]) >= 64);
        v5 = new struct(2);
        require(!((v5 + 64 > uint64.max) | (v5 + 64 < v5)), Panic(65)); // failed memory allocation (too much memory)
        require(15 > msg.data[v1 + msg.data[v0]]);
        v5.word0 = msg.data[v1 + msg.data[v0]];
        require(msg.data[v1 + msg.data[v0] + 32] <= uint64.max);
        require(v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32] + 31 < varg1);
        require(msg.data[v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = new bytes[](msg.data[v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32]]);
        require(!((v6 + ((msg.data[v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + ((msg.data[v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        require(v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32] + 32 + msg.data[v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32]] <= varg1);
        CALLDATACOPY(v6.data, v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32] + 32, msg.data[v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32]]);
        v6[msg.data[v1 + msg.data[v0] + msg.data[v1 + msg.data[v0] + 32]]] = 0;
        v5.word1 = v6;
        MEM[v3] = v5;
        v3 = v3 + 32;
        v0 = v0 + 32;
    }
    return v2;
}

function 0xf17(uint256 varg0) private { 
    require(msg.data.length - varg0 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(msg.data[varg0]) - msg.data[varg0]));
    v0.word0 = msg.data[varg0];
    require(msg.data[varg0 + 32] <= uint64.max);
    v1 = 0xe8a(varg0 + msg.data[varg0 + 32], msg.data.length);
    v0.word1 = v1;
    require(!(msg.data[64 + varg0] - msg.data[64 + varg0]));
    v0.word2 = msg.data[64 + varg0];
    return v0;
}

function 0xf60(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0);
    require(!((v0 + ((varg0 << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((varg0 << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, (varg0 << 5) + 32 - 32);
    return v0;
}

function 0xfb1(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0);
    require(!((v0 + ((varg0 << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((varg0 << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, (varg0 << 5) + 32 - 32);
    return v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x23a69e75 == function_selector >> 224) {
            require(!msg.value);
            require(msg.data.length - 4 >= 96);
            require(varg3 <= uint64.max);
            require(4 + varg3 + 31 < msg.data.length);
            require(varg3.length <= uint64.max);
            require(varg3.data + varg3.length <= msg.data.length);
            require(varg3.data + varg3.length - varg3.data >= 32);
            require(!(address(varg3[0]) - varg3[0]));
            if (0 != varg1 > varg2) {
            }
            v0 = new bytes[](68);
            MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            v0[4] = msg.sender;
            MEM[v0.data + 4 + 32] = v1;
            require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
            v2 = v0.data;
            v3 = v0.length;
            v4, /* uint256 */ v5 = address(varg3[0]).transfer(msg.sender, v1).gas(msg.gas);
            if (0 != RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v6 = new bytes[](RETURNDATASIZE());
                require(!((v6 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
                v5 = v6.data;
                RETURNDATACOPY(v5, 0, RETURNDATASIZE());
            }
            require(v4);
            return ;
        } else if (0x2c8958f6 == function_selector >> 224) {
            require(!msg.value);
            require(msg.data.length - 4 >= 96);
            require(varg3 <= uint64.max);
            require(4 + varg3 + 31 < msg.data.length);
            require(varg3.length <= uint64.max);
            require(varg3.data + varg3.length <= msg.data.length);
            require(varg3.data + varg3.length - varg3.data >= 32);
            require(!(address(varg3[0]) - varg3[0]));
            if (0 != varg1 > varg2) {
            }
            v7 = new bytes[](68);
            MEM[v7.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            v7[4] = msg.sender;
            MEM[v7.data + 4 + 32] = v8;
            require(!((v7 + 128 > uint64.max) | (v7 + 128 < v7)), Panic(65)); // failed memory allocation (too much memory)
            v9 = v7.data;
            v10 = v7.length;
            v11, /* uint256 */ v12 = address(varg3[0]).transfer(msg.sender, v8).gas(msg.gas);
            if (0 != RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v13 = new bytes[](RETURNDATASIZE());
                require(!((v13 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v13 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v13)), Panic(65)); // failed memory allocation (too much memory)
                v12 = v13.data;
                RETURNDATACOPY(v12, 0, RETURNDATASIZE());
            }
            require(v11);
            return ;
        } else if (0x3a1c453c == function_selector >> 224) {
            require(!msg.value);
            require(msg.data.length - 4 >= 96);
            require(varg3 <= uint64.max);
            require(4 + varg3 + 31 < msg.data.length);
            require(varg3.length <= uint64.max);
            require(varg3.data + varg3.length <= msg.data.length);
            require(varg3.data + varg3.length - varg3.data >= 32);
            require(!(address(varg3[0]) - varg3[0]));
            if (0 != varg1 > varg2) {
            }
            v14 = new bytes[](68);
            MEM[v14.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            v14[4] = msg.sender;
            MEM[v14.data + 4 + 32] = v15;
            require(!((v14 + 128 > uint64.max) | (v14 + 128 < v14)), Panic(65)); // failed memory allocation (too much memory)
            v16 = v14.data;
            v17 = v14.length;
            v18, /* uint256 */ v19 = address(varg3[0]).transfer(msg.sender, v15).gas(msg.gas);
            if (0 != RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v20 = new bytes[](RETURNDATASIZE());
                require(!((v20 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v20 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v20)), Panic(65)); // failed memory allocation (too much memory)
                v19 = v20.data;
                RETURNDATACOPY(v19, 0, RETURNDATASIZE());
            }
            require(v18);
            return ;
        } else if (0x852ebcc8 == function_selector >> 224) {
            require(msg.data.length - 4 >= 128);
            require(msg.data.length - 4 >= 96);
            require(varg4 <= uint64.max);
            require(4 + varg4 + 31 < msg.data.length);
            require(varg4.length <= uint64.max);
            require(varg4.data + (varg4.length << 5) <= msg.data.length);
            0x917(4, varg4.data, varg4.length);
            return ;
        } else if (0xf04f2707 == function_selector >> 224) {
            require(!msg.value);
            v21, v22, v23, v24 = 0x55e(4, msg.data.length);
            0xcde(v24, v23, v22, v21);
            return ;
        } else if (0xf19436d4 == function_selector >> 224) {
            require(msg.data.length - 4 >= 96);
            require(varg1 <= uint64.max);
            require(4 + varg1 + 31 < msg.data.length);
            require(varg1.length <= uint64.max);
            require(varg1.data + (varg1.length << 5) <= msg.data.length);
            0x12f6(varg1.data, varg1.length, varg2, varg3);
            return ;
        } else if (0xf40a74a8 == function_selector >> 224) {
            require(!msg.value);
            require(msg.data.length - 4 >= 96);
            require(varg3 <= uint64.max);
            require(4 + varg3 + 31 < msg.data.length);
            require(varg3.length <= uint64.max);
            require(varg3.data + varg3.length <= msg.data.length);
            require(varg3.data + varg3.length - varg3.data >= 32);
            require(!(address(varg3[0]) - varg3[0]));
            if (0 != varg1 > varg2) {
            }
            v25 = new bytes[](68);
            MEM[v25.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            v25[4] = msg.sender;
            MEM[v25.data + 4 + 32] = v26;
            require(!((v25 + 128 > uint64.max) | (v25 + 128 < v25)), Panic(65)); // failed memory allocation (too much memory)
            v27 = v25.data;
            v28 = v25.length;
            v29, /* uint256 */ v30 = address(varg3[0]).transfer(msg.sender, v26).gas(msg.gas);
            if (0 != RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v31 = new bytes[](RETURNDATASIZE());
                require(!((v31 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v31 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v31)), Panic(65)); // failed memory allocation (too much memory)
                v30 = v31.data;
                RETURNDATACOPY(v30, 0, RETURNDATASIZE());
            }
            require(v29);
            return ;
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            require(!msg.value);
            require(msg.data.length - 4 >= 96);
            require(varg3 <= uint64.max);
            require(4 + varg3 + 31 < msg.data.length);
            require(varg3.length <= uint64.max);
            require(varg3.data + varg3.length <= msg.data.length);
            require(varg3.data + varg3.length - varg3.data >= 32);
            require(!(address(varg3[0]) - varg3[0]));
            if (0 != varg1 > varg2) {
            }
            v32 = new bytes[](68);
            MEM[v32.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            v32[4] = msg.sender;
            MEM[v32.data + 4 + 32] = v33;
            require(!((v32 + 128 > uint64.max) | (v32 + 128 < v32)), Panic(65)); // failed memory allocation (too much memory)
            v34 = v32.data;
            v35 = v32.length;
            v36, /* uint256 */ v37 = address(varg3[0]).transfer(msg.sender, v33).gas(msg.gas);
            if (0 != RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v38 = new bytes[](RETURNDATASIZE());
                require(!((v38 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
                v37 = v38.data;
                RETURNDATACOPY(v37, 0, RETURNDATASIZE());
            }
            require(v36);
            return ;
        }
    }
    require(!msg.data.length);
    receive();
}
