// Decompiled by library.dedaub.com
// 2026.04.17 02:56 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
address _exec; // STORAGE[0x0] bytes 0 to 19



function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 288);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 < v1) | (v1 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(rawData.word1 == address(rawData.word1));
    v1.word0 = rawData.word1;
    require(rawData.word2 == address(rawData.word2));
    v1.word1 = rawData.word2;
    require(rawData.word3 == uint24(rawData.word3));
    v1.word2 = rawData.word3;
    require(rawData.word4 == int24(rawData.word4));
    v1.word3 = rawData.word4;
    require(rawData.word5 == address(rawData.word5));
    v1.word4 = rawData.word5;
    require(rawData.word6 == bool(rawData.word6));
    v2 = rawData.word8;
    require(rawData.word9 <= uint64.max);
    require(4 + rawData + 32 + rawData.word9 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[4 + rawData + 32 + rawData.word9] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[4 + rawData + 32 + rawData.word9]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData + 32 + rawData.word9]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData + 32 + rawData.word9]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + rawData + 32 + rawData.word9 + msg.data[4 + rawData + 32 + rawData.word9] + 32 <= 4 + rawData + 32 + msg.data[4 + rawData]);
    CALLDATACOPY(v3.data, 4 + rawData + 32 + rawData.word9 + 32, msg.data[4 + rawData + 32 + rawData.word9]);
    v3[msg.data[4 + rawData + 32 + rawData.word9]] = 0;
    v4 = 0x866(v3, rawData.word7, rawData.word6, v1);
    if (rawData.word6) {
        v5 = v6 = v1.word0;
    } else {
        v5 = v7 = v1.word1;
    }
    MEM[MEM[64] + 32] = 0xa584119400000000000000000000000000000000000000000000000000000000 | uint224(address(v5));
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v8, /* uint256 */ v9, /* uint256 */ v10 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v11 = v12 = 96;
    } else {
        v11 = v13 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());
    }
    if (v8) {
        if (address(v5)) {
            MEM[MEM[64] + 68] = v2;
            MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0x4444c5dc75cb358380d2e3de08a90));
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v14, /* uint256 */ v15, /* uint256 */ v16 = address(v5).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v17 = v18 = 96;
            } else {
                v17 = v19 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v19.data, 0, RETURNDATASIZE());
            }
            if (!v14) {
                MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                MCOPY(MEM[64], MEM[64] + 32, 36);
                MEM[MEM[64] + 36] = 0;
                v20, /* uint256 */ v21, /* uint256 */ v22 = address(v5).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v23 = v24 = 96;
                } else {
                    v23 = v25 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v25.data, 0, RETURNDATASIZE());
                }
                require(v20, address(v5), address(this));
                require(v22 + MEM[v23] - v22 >= 32);
                v26 = MEM[v22];
                if (0) {
                    require(0 - v26, address(v5), address(this));
                    require(v26, Panic(17)); // arithmetic overflow or underflow
                    v26 = v27 = uint256.max + v26;
                }
                v28 = new uint256[](MEM[v17]);
                MCOPY(v28.data, v16, MEM[v17]);
                MEM[v28 + MEM[v17] + 32] = 0;
                revert(address(v5), address(0x4444c5dc75cb358380d2e3de08a90), v2, v26, v28);
            }
        }
        if (address(v5)) {
            v2 = v29 = 0;
        }
        v30 = new bytes[](4);
        MEM[v30.data] = 0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(MEM[v30.data]);
        MCOPY(MEM[64], v30.data, v30.length);
        MEM[MEM[64] + v30.length] = 0;
        v31, /* uint256 */ v32, /* uint256 */ v33 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v2).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v34 = v35 = 96;
        } else {
            v34 = v36 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v36.data, 0, RETURNDATASIZE());
        }
        if (v31) {
            if (rawData.word6) {
                v37 = v38 = v1.word1;
            } else {
                v37 = v1.word0;
            }
            MEM[MEM[64] + 68] = address(this);
            MEM[MEM[64] + 100] = v4;
            MEM[MEM[64] + 32] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000 | uint224(address(v37));
            MCOPY(MEM[64], MEM[64] + 32, 100);
            MEM[MEM[64] + 100] = 0;
            v39, /* uint256 */ v40, /* uint256 */ v41 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v42 = v43 = 96;
            } else {
                v42 = v44 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v44.data, 0, RETURNDATASIZE());
            }
            if (v39) {
                v45 = 0xd42(v5, this, 0x4444c5dc75cb358380d2e3de08a90);
                if (v45 >= 0) {
                    if (v45 > 0) {
                        MEM[MEM[64] + 68] = v45;
                        MEM[MEM[64] + 32] = 0x80f0b44c00000000000000000000000000000000000000000000000000000000 | uint224(address(v5));
                        MCOPY(MEM[64], MEM[64] + 32, 68);
                        MEM[MEM[64] + 68] = 0;
                        v46, /* uint256 */ v47, /* uint256 */ v48 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v49 = v50 = 96;
                        } else {
                            v49 = v51 = new bytes[](RETURNDATASIZE());
                            RETURNDATACOPY(v51.data, 0, RETURNDATASIZE());
                        }
                        if (!v46) {
                            v52 = new uint256[](MEM[v49]);
                            MCOPY(v52.data, v48, MEM[v49]);
                            MEM[v52 + MEM[v49] + 32] = 0;
                            revert(address(v5), v45, v52);
                        }
                    }
                    v53 = new uint256[](MEM[96]);
                    MCOPY(v53.data, 128, MEM[96]);
                    MEM[v53 + MEM[96] + 32] = 0;
                    return v53;
                } else {
                    MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MCOPY(MEM[64], MEM[64] + 32, 36);
                    MEM[MEM[64] + 36] = 0;
                    v54, /* uint256 */ v55, /* uint256 */ v56 = address(v5).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v57 = v58 = 96;
                    } else {
                        v57 = v59 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v59.data, 0, RETURNDATASIZE());
                    }
                    require(v54, address(v5), address(this));
                    require(v56 + MEM[v57] - v56 >= 32);
                    v60 = MEM[v56];
                    if (0) {
                        require(0 - v60, address(v5), address(this));
                        require(v60, Panic(17)); // arithmetic overflow or underflow
                        v60 = v61 = uint256.max + v60;
                    }
                    revert(address(v5), v45, v60);
                }
            } else {
                v62 = new uint256[](MEM[v42]);
                MCOPY(v62.data, v41, MEM[v42]);
                MEM[v62 + MEM[v42] + 32] = 0;
                revert(v62);
            }
        } else {
            v63 = new uint256[](MEM[v34]);
            MCOPY(v63.data, v33, MEM[v34]);
            MEM[v63 + MEM[v34] + 32] = 0;
            revert(v63);
        }
    } else {
        v64 = new uint256[](MEM[v11]);
        MCOPY(v64.data, v10, MEM[v11]);
        MEM[v64 + MEM[v11] + 32] = 0;
        revert(v64);
    }
}

function 0x11c8(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4, address varg5) private { 
    MEM[64] = varg0;
    if (varg3) {
        v0 = v1 = 0x1000276a4;
    } else {
        v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    if (varg2) {
        MEM[36 + MEM[64] + 32] = varg1;
        MEM[36 + MEM[64] + 64] = bool(varg3);
        MEM[36 + MEM[64] + 96] = address(v0);
        MEM[36 + MEM[64] + 128] = 160;
        MEM[36 + MEM[64] + 160] = varg0 - MEM[64] - 32;
        MCOPY(36 + MEM[64] + 160 + 32, MEM[64] + 32, varg0 - MEM[64] - 32);
        MEM[36 + MEM[64] + 160 + (varg0 - MEM[64] - 32) + 32] = 0;
        MEM[MEM[64] + 32] = bytes4(0x24b31a0c00000000000000000000000000000000000000000000000000000000) | uint224(varg5);
        MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (varg0 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MEM[MEM[64] + (36 + MEM[64] + 160 + (varg0 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
        v3 = v4, /* uint256 */ v5 = varg4.call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v11c8arg0x0 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v6 = v7 = 96;
        } else {
            v6 = v8 = new bytes[](RETURNDATASIZE());
            v5 = v8.data;
            RETURNDATACOPY(v5, 0, RETURNDATASIZE());
        }
    } else {
        MEM[36 + MEM[64] + 32] = bool(varg3);
        MEM[36 + MEM[64] + 64] = varg1;
        MEM[36 + MEM[64] + 96] = address(v0);
        MEM[36 + MEM[64] + 128] = 160;
        MEM[36 + MEM[64] + 160] = varg0 - MEM[64] - 32;
        MCOPY(36 + MEM[64] + 160 + 32, MEM[64] + 32, varg0 - MEM[64] - 32);
        MEM[36 + MEM[64] + 160 + (varg0 - MEM[64] - 32) + 32] = 0;
        MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000) | uint224(varg5);
        MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (varg0 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MEM[MEM[64] + (36 + MEM[64] + 160 + (varg0 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
        v3 = v9, /* uint256 */ v10 = varg4.call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v11c8arg0x0 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v6 = v11 = 96;
        } else {
            v6 = v12 = new bytes[](RETURNDATASIZE());
            v10 = v12.data;
            RETURNDATACOPY(v10, 0, RETURNDATASIZE());
        }
    }
    if (v3) {
        require(32 + v6 + MEM[v6] - (32 + v6) >= 64);
        if (!varg3) {
            v13 = 0x33dd(MEM[32 + v6]);
            return v13;
        } else {
            v14 = 0x33dd(MEM[32 + v6 + 32]);
            return v14;
        }
    } else {
        v15 = new uint256[](4);
        MEM[v15.data] = varg4;
        MEM[v15 + 64] = 96;
        v16 = new uint256[](MEM[v6]);
        MCOPY(v16.data, v6 + 32, MEM[v6]);
        MEM[v16 + MEM[v6] + 32] = 0;
        revert(v15, v17, v16);
    }
}

function 0x1588(uint256 varg0, address varg1) private { 
    require(0 - varg0, ZeroValue());
    MCOPY(MEM[64], MEM[64] + 32, 0);
    MEM[MEM[64]] = 0;
    v0, /* uint256 */ v1 = varg1.call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v2 = new bytes[](RETURNDATASIZE());
        v1 = v2.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    require(v0, varg1, varg0);
    return ;
}

function receive() public payable { 
}

function 0x1d95(struct(2) varg0) private { 
    v0 = new struct(11);
    v0.word5 = 0;
    v0.word6 = 0;
    v0.word7 = 0;
    v0.word8 = 0;
    v0.word9 = 0;
    v0.word10 = 96;
    v0.word0 = v0 + 160;
    v1 = new struct(3);
    v1.word0 = 0;
    v1.word1 = 0;
    v1.word2 = 0;
    v0.word1 = v1;
    v0.word2 = 96;
    v0.word3 = 96;
    v0.word4 = 0;
    v2 = 0x233b(varg0);
    v3 = new struct(5);
    v3.word0 = v2.word0;
    v4 = 0x2360(MEM[32 + v2.word4], MEM[v2.word4], v2.word2);
    v3.word1 = v4;
    v5 = 0x242e(MEM[32 + v2.word4], MEM[v2.word4], v2.word3);
    v3.word2 = v5;
    v6 = varg0.word1;
    v3.word3 = varg0.word1;
    v3.word4 = 0;
    0x250a(MEM[v2.word4 + 96], MEM[v2.word4], MEM[v2.word4 + 64], v3);
    return v3;
}

function 0x1ea7(struct(2) varg0) private { 
    v0 = new struct(11);
    v0.word5 = 0;
    v0.word6 = 0;
    v0.word7 = 0;
    v0.word8 = 0;
    v0.word9 = 0;
    v0.word10 = 96;
    v0.word0 = v0 + 160;
    v1 = new struct(3);
    v1.word0 = 0;
    v1.word1 = 0;
    v1.word2 = 0;
    v0.word1 = v1;
    v0.word2 = 96;
    v0.word3 = 96;
    v0.word4 = 0;
    v2 = 0x25b1(varg0);
    v3 = new struct(5);
    v3.word0 = v2.word0;
    v4 = 0x2360(v2.word2, v2.word1, v2.word5);
    v3.word1 = v4;
    v5 = 0x242e(v2.word2, v2.word1, v2.word6);
    v3.word2 = v5;
    v6 = varg0.word1;
    v3.word3 = varg0.word1;
    v3.word4 = 0;
    0x250a(v2.word4, v2.word1, v2.word3, v3);
    return v3;
}

function 0x2140(uint256 varg0) private { 
    MCOPY(MEM[64], MEM[64] + 32, 0);
    MEM[MEM[64]] = 0;
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v2 = new bytes[](RETURNDATASIZE());
        v1 = v2.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    if (v0) {
        return ;
    } else {
        v3 = new uint256[](0);
        revert(6, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v3);
    }
}

function 0x233b(struct(2) varg0) private { 
    v0 = new struct(12);
    v0.word6 = 0;
    v0.word7 = 0;
    v0.word8 = 0;
    v0.word9 = 0;
    v0.word10 = 0;
    v0.word11 = 96;
    v0.word0 = v0 + 192;
    v0.word1 = 0;
    v1 = new struct(3);
    v1.word0 = 0;
    v1.word1 = 0;
    v1.word2 = 0;
    v0.word2 = v1;
    v0.word3 = 96;
    v2 = new struct(6);
    v2.word0 = 0;
    v2.word1 = 0;
    v2.word2 = address(0x0);
    v2.word3 = 0;
    v2.word4 = 0;
    v2.word5 = 96;
    v0.word4 = v2;
    v0.word5 = 96;
    require(v3.data + v3.length - v3.data >= 32);
    require(MEM[v3.data] <= uint64.max);
    require(v3.data + v3.length - (v3.data + MEM[v3.data]) >= uint8.max + 1);
    v4 = 0x2db8();
    require(v3[MEM[v3.data]] <= uint64.max);
    v5 = 0x34a3(v3.data + MEM[v3.data] + v3[MEM[v3.data]], v3.data + v3.length);
    v4.word0 = v5;
    require(MEM[v3.data + MEM[v3.data] + 32] == address(MEM[v3.data + MEM[v3.data] + 32]));
    v4.word1 = MEM[v3.data + MEM[v3.data] + 32];
    v6 = 0x3535(v3.data + MEM[v3.data] + 64, v3.data + v3.length);
    v4.word2 = v6;
    require(MEM[v3.data + MEM[v3.data] + 160] <= uint64.max);
    v7 = 0x35bb(v3.data + MEM[v3.data] + MEM[v3.data + MEM[v3.data] + 160], v3.data + v3.length);
    v4.word3 = v7;
    require(MEM[v3.data + MEM[v3.data] + 192] <= uint64.max);
    v8 = v3.data + MEM[v3.data] + MEM[v3.data + MEM[v3.data] + 192];
    require(v3.data + v3.length - v8 >= 192);
    v9 = 0x2db8();
    v9.word0 = MEM[v8];
    v9.word1 = MEM[v8 + 32];
    require(MEM[v8 + 64] == address(MEM[v8 + 64]));
    v9.word2 = MEM[v8 + 64];
    v9.word3 = MEM[96 + v8];
    v9.word4 = MEM[v8 + 128];
    require(MEM[v8 + 160] <= uint64.max);
    require(v3.data + v3.length > v8 + MEM[v8 + 160] + 31);
    require(MEM[v8 + MEM[v8 + 160]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new uint256[](MEM[v8 + MEM[v8 + 160]]);
    require(!((v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (MEM[v8 + MEM[v8 + 160]] << 5) + 31) < v10) | (v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (MEM[v8 + MEM[v8 + 160]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v11 = v12 = v10.data;
    require(v8 + MEM[v8 + 160] + (MEM[v8 + MEM[v8 + 160]] << 5) + 32 <= v3.data + v3.length);
    v13 = v14 = v8 + MEM[v8 + 160] + 32;
    while (v13 < v8 + MEM[v8 + 160] + (MEM[v8 + MEM[v8 + 160]] << 5) + 32) {
        MEM[v11] = MEM[v13];
        v13 += 32;
        v11 = v11 + 32;
    }
    v9.word5 = v10;
    v4.word4 = v9;
    require(MEM[v3.data + MEM[v3.data] + 224] <= uint64.max);
    v15 = 0x3456(v3.data + MEM[v3.data] + MEM[v3.data + MEM[v3.data] + 224], v3.data + v3.length);
    v4.word5 = v15;
    return v4;
}

function 0x2360(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    MEM[MEM[64]] = address(0x0);
    MEM[32 + MEM[64]] = 0;
    MEM[64 + MEM[64]] = 0;
    require(MEM[32 + varg2] <= MEM[64 + varg2], IncorrectAmounts());
    v0 = 0x2840(varg0, varg1, MEM[64 + varg2], MEM[32 + varg2]);
    v1 = new struct(3);
    v1.word0 = address(MEM[varg2]);
    v1.word1 = v0;
    v1.word2 = MEM[64 + varg2];
    return v1;
}

function 0x242e(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = MEM[varg2];
    require(v1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](v1);
    if (v1) {
        v3 = v4 = v2.data;
        while (v0) {
            v5 = new struct(3);
            v5.word0 = 0;
            v5.word1 = 0;
            v5.word2 = 0;
            MEM[v3] = v5;
            v0 = v0 - 1;
            v3 += 32;
        }
    }
    v6 = v7 = 0;
    while (v6 < v1) {
        require(v6 < MEM[varg2], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v8 = MEM[32 + (v6 << 5) + varg2];
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        require(MEM[32 + v8] >= MEM[64 + v8], IncorrectAmounts());
        v9 = 0x2840(varg0, varg1, MEM[64 + v8], MEM[32 + v8]);
        v10 = new struct(3);
        v10.word0 = address(MEM[v8]);
        v10.word1 = v9;
        v10.word2 = address(MEM[96 + v8]);
        require(v6 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2[v6] = v10;
        v6 += 1;
    }
    return v2;
}

function 0x250a(uint256 varg0, uint256 varg1, address varg2, struct(5) varg3) private { 
    v0 = v1 = !varg2;
    if (varg2) {
        v0 = v2 = block.timestamp > varg1;
    }
    if (!v0) {
        v0 = v3 = msg.sender == varg2;
    }
    if (v0) {
        return ;
    } else {
        require(varg0, NoExclusiveOverride());
        v4 = v5 = 0;
        while (v4 < v6.length) {
            require(v4 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(10000 <= varg0 + 10000, Panic(17)); // arithmetic overflow or underflow
            v7 = 0x29ed(10000, varg0 + 10000, MEM[v6[v4] + 32]);
            MEM[v6[v4] + 32] = v7;
            v4 += 1;
        }
        return ;
    }
}

function 0x25b1(struct(2) varg0) private { 
    v0 = new struct(13);
    v0.word7 = 0;
    v0.word8 = 0;
    v0.word9 = 0;
    v0.word10 = 0;
    v0.word11 = 0;
    v0.word12 = 96;
    v0.word0 = v0 + 224;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v1 = new struct(3);
    v1.word0 = 0;
    v1.word1 = 0;
    v1.word2 = 0;
    v0.word5 = v1;
    v0.word6 = 96;
    require(v2.data + v2.length - v2.data >= 32);
    require(MEM[v2.data] <= uint64.max);
    require(v2.data + v2.length - (v2.data + MEM[v2.data]) >= 288);
    v3 = new struct(7);
    require(!((v3 + 224 < v3) | (v3 + 224 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2[MEM[v2.data]] <= uint64.max);
    v4 = 0x34a3(v2.data + MEM[v2.data] + v2[MEM[v2.data]], v2.data + v2.length);
    v3.word0 = v4;
    v3.word1 = MEM[32 + (v2.data + MEM[v2.data])];
    v3.word2 = MEM[v2.data + MEM[v2.data] + 64];
    require(MEM[v2.data + MEM[v2.data] + 96] == address(MEM[v2.data + MEM[v2.data] + 96]));
    v3.word3 = MEM[v2.data + MEM[v2.data] + 96];
    v3.word4 = MEM[128 + (v2.data + MEM[v2.data])];
    v5 = 0x3535(v2.data + MEM[v2.data] + 160, v2.data + v2.length);
    v3.word5 = v5;
    require(MEM[v2.data + MEM[v2.data] + (uint8.max + 1)] <= uint64.max);
    v6 = 0x35bb(v2.data + MEM[v2.data] + MEM[v2.data + MEM[v2.data] + (uint8.max + 1)], v2.data + v2.length);
    v3.word6 = v6;
    return v3;
}

function 0x2840(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg0 >= varg1, EndTimeBeforeStartTime());
    if (varg0 > block.timestamp) {
        if (varg1 < block.timestamp) {
            if (varg2 >= varg3) {
                v0 = 0x29ed(varg0 - varg1, block.timestamp - varg1, varg2 - varg3);
                return varg3 + v0;
            } else {
                v1 = 0x29ed(varg0 - varg1, block.timestamp - varg1, varg3 - varg2);
                return varg3 - v1;
            }
        } else {
            return varg3;
        }
    } else {
        return varg2;
    }
}

function 0x29ed(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg0 * !(varg1 * (varg2 > uint256.max / varg1)));
    return varg2 * varg1 / varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2 <= varg3);
    require(varg3 <= varg1);
    return varg3 - varg2, varg2 + varg0;
}

function 0x2db8() private { 
    v0 = new struct(6);
    require(!((v0 + 192 < v0) | (v0 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function 0x33dd(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x3456(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    MCOPY(v1.data, varg0 + 32, v0);
    v1[v0] = 0;
    return v1;
}

function 0x34a3(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 192);
    v0 = 0x2db8();
    require(MEM[varg0] == address(MEM[varg0]));
    v0.word0 = MEM[varg0];
    require(MEM[varg0 + 32] == address(MEM[varg0 + 32]));
    v0.word1 = MEM[varg0 + 32];
    v0.word2 = MEM[64 + varg0];
    v0.word3 = MEM[varg0 + 96];
    require(MEM[varg0 + 128] == address(MEM[varg0 + 128]));
    v0.word4 = MEM[varg0 + 128];
    require(MEM[varg0 + 160] <= uint64.max);
    v1 = 0x3456(varg0 + MEM[varg0 + 160], varg1);
    v0.word5 = v1;
    return v0;
}

function 0x3535(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 < v0) | (v0 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(MEM[varg0] == address(MEM[varg0]));
    v0.word0 = MEM[varg0];
    v0.word1 = MEM[32 + varg0];
    v0.word2 = MEM[64 + varg0];
    return v0;
}

function 0x35bb(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 7) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (v0 << 7) + 32) {
        require(varg1 - v4 >= 128);
        v6 = new struct(4);
        require(!((v6 + 128 < v6) | (v6 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[v4] == address(MEM[v4]));
        v6.word0 = MEM[v4];
        v6.word1 = MEM[32 + v4];
        v6.word2 = MEM[v4 + 64];
        require(MEM[v4 + 96] == address(MEM[v4 + 96]));
        v6.word3 = MEM[v4 + 96];
        MEM[v2] = v6;
        v2 = v2 + 32;
        v4 += 128;
    }
    return v1;
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(data.word1 == address(data.word1));
    MEM[MEM[64] + 68] = data.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        exit;
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        require(v7, address(data.word1), address(this));
        require(v9 + MEM[v10] - v9 >= 32);
        v13 = MEM[v9];
        if (0) {
            require(0 - v13, address(data.word1), address(this));
            require(v13, Panic(17)); // arithmetic overflow or underflow
            v13 = v14 = uint256.max + v13;
        }
        v15 = new uint256[](MEM[v4]);
        MCOPY(v15.data, v3, MEM[v4]);
        MEM[v15 + MEM[v4] + 32] = 0;
        revert(address(data.word1), msg.sender, data.word2, v13, v15);
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(data.word1 == address(data.word1));
    MEM[MEM[64] + 68] = data.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        exit;
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        require(v7, address(data.word1), address(this));
        require(v9 + MEM[v10] - v9 >= 32);
        v13 = MEM[v9];
        if (0) {
            require(0 - v13, address(data.word1), address(this));
            require(v13, Panic(17)); // arithmetic overflow or underflow
            v13 = v14 = uint256.max + v13;
        }
        v15 = new uint256[](MEM[v4]);
        MCOPY(v15.data, v3, MEM[v4]);
        MEM[v15 + MEM[v4] + 32] = 0;
        revert(address(data.word1), msg.sender, data.word2, v13, v15);
    }
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32) >= 64);
    require(_data.word1 == address(_data.word1));
    MEM[MEM[64] + 68] = _data.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3 = address(_data.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        exit;
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = address(_data.word1).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        require(v7, address(_data.word1), address(this));
        require(v9 + MEM[v10] - v9 >= 32);
        v13 = MEM[v9];
        if (0) {
            require(0 - v13, address(_data.word1), address(this));
            require(v13, Panic(17)); // arithmetic overflow or underflow
            v13 = v14 = uint256.max + v13;
        }
        v15 = new uint256[](MEM[v4]);
        MCOPY(v15.data, v3, MEM[v4]);
        MEM[v15 + MEM[v4] + 32] = 0;
        revert(address(_data.word1), msg.sender, _data.word2, v13, v15);
    }
}

function 0x866(bytes varg0, uint256 varg1, uint256 varg2, struct(5) varg3) private { 
    v0 = v1 = 0;
    require(int128(varg1) - int128.min, Panic(17)); // arithmetic overflow or underflow
    if (varg2) {
        v2 = v3 = 0x1000276a4;
    } else {
        v2 = v4 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    MEM[36 + MEM[64] + 32] = address(varg3.word1);
    MEM[36 + MEM[64] + 64] = uint24(varg3.word2);
    MEM[36 + MEM[64] + 96] = int24(varg3.word3);
    MEM[36 + MEM[64] + 128] = address(varg3.word4);
    MEM[36 + MEM[64] + 160] = bool(varg2);
    MEM[36 + MEM[64] + 192] = int128(0 - int128(varg1));
    MEM[36 + MEM[64] + 224] = address(v2);
    MEM[36 + MEM[64] + (uint8.max + 1)] = 288;
    MEM[36 + MEM[64] + 288] = varg0.length;
    MCOPY(36 + MEM[64] + 288 + 32, varg0.data, varg0.length);
    MEM[36 + MEM[64] + 288 + varg0.length + 32] = 0;
    MEM[MEM[64] + 32] = bytes4(0xf3cd914c00000000000000000000000000000000000000000000000000000000) | uint224(address(varg3.word0));
    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 288 + (varg0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MEM[MEM[64] + (36 + MEM[64] + 288 + (varg0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
    v5, /* uint256 */ v6, /* uint256 */ v7, /* uint256 */ v8 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 288 + v866arg0x0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v9 = v10 = 96;
    } else {
        v9 = v11 = new bytes[](RETURNDATASIZE());
        v6 = v11.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    if (v5) {
        require(v7 + MEM[v9] - v7 >= 32);
        if (!varg2) {
            v0 = v12 = MEM[v7] >> 128;
        }
        if (varg2 - 1) {
            return v0;
        } else {
            return int128(MEM[v7]);
        }
    } else {
        v13 = new uint256[](MEM[v9]);
        MCOPY(v13.data, v8, MEM[v9]);
        MEM[v13 + MEM[v9] + 32] = 0;
        revert(keccak256(MEM[v866arg0x3:v866arg0x3 + 160]), bool(varg2), varg1, v13);
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(data.word1 == address(data.word1));
    MEM[MEM[64] + 68] = data.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        exit;
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        require(v7, address(data.word1), address(this));
        require(v9 + MEM[v10] - v9 >= 32);
        v13 = MEM[v9];
        if (0) {
            require(0 - v13, address(data.word1), address(this));
            require(v13, Panic(17)); // arithmetic overflow or underflow
            v13 = v14 = uint256.max + v13;
        }
        v15 = new uint256[](MEM[v4]);
        MCOPY(v15.data, v3, MEM[v4]);
        MEM[v15 + MEM[v4] + 32] = 0;
        revert(address(data.word1), msg.sender, data.word2, v13, v15);
    }
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(data.word1 == address(data.word1));
    MEM[MEM[64] + 68] = data.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        exit;
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        require(v7, address(data.word1), address(this));
        require(v9 + MEM[v10] - v9 >= 32);
        v13 = MEM[v9];
        if (0) {
            require(0 - v13, address(data.word1), address(this));
            require(v13, Panic(17)); // arithmetic overflow or underflow
            v13 = v14 = uint256.max + v13;
        }
        v15 = new uint256[](MEM[v4]);
        MCOPY(v15.data, v3, MEM[v4]);
        MEM[v15 + MEM[v4] + 32] = 0;
        revert(address(data.word1), msg.sender, data.word2, v13, v15);
    }
}

function exec(bytes payload) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(payload <= uint64.max);
    require(4 + payload + 31 < msg.data.length);
    require(msg.data[4 + payload] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1, v2 = _SafeSub(4 + payload + 32, msg.data[4 + payload], 20, msg.data[4 + payload]);
    v3 = v4 = v2 + 1;
    v5 = v6 = 0;
    while (v5 < msg.data[v2] >> 248) {
        if (msg.data[v3 + 32] >> 248) {
            require(v3 + 32 <= 3 + (v3 + 32), Panic(17)); // arithmetic overflow or underflow
            if ((msg.data[v3 + 32] >> 248) - 1) {
                if ((msg.data[v3 + 32] >> 248) - 3) {
                    if ((msg.data[v3 + 32] >> 248) - 4) {
                        if ((msg.data[v3 + 32] >> 248) - 5) {
                            if ((msg.data[v3 + 32] >> 248) - 6) {
                                require(!((msg.data[v3 + 32] >> 248) - 7), msg.data[v3 + 32] >> 248);
                                MEM[36 + MEM[64]] = address(this);
                                MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                MCOPY(MEM[64], MEM[64] + 32, 36);
                                MEM[MEM[64] + 36] = 0;
                                v7 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v8 = v9 = 96;
                                } else {
                                    v8 = v10 = MEM[64];
                                    MEM[v10] = RETURNDATASIZE();
                                    RETURNDATACOPY(v10 + 32, 0, RETURNDATASIZE());
                                }
                                require(v7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), address(this));
                                require(32 + v8 + MEM[v8] - (32 + v8) >= 32);
                                v11 = MEM[32 + v8];
                                if (1) {
                                    require(0 - v11, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), address(this));
                                    require(v11, Panic(17)); // arithmetic overflow or underflow
                                    v11 = v12 = uint256.max + v11;
                                }
                                MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(v11);
                                MCOPY(MEM[64], MEM[64] + 32, 36);
                                MEM[MEM[64] + 36] = 0;
                                v13 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v14 = 96;
                                } else {
                                    v14 = v15 = MEM[64];
                                    MEM[v15] = RETURNDATASIZE();
                                    RETURNDATACOPY(v15 + 32, 0, RETURNDATASIZE());
                                }
                                if (v13) {
                                    MEM[MEM[64] + 32] = v11;
                                    MEM[MEM[64]] = 32;
                                    MEM[64] = MEM[64] + 64;
                                } else {
                                    v16 = new uint256[](MEM[v14]);
                                    MCOPY(v16.data, v14 + 32, MEM[v14]);
                                    MEM[v16 + MEM[v14] + 32] = 0;
                                    revert(7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v16);
                                }
                            } else {
                                v17 = this.balance;
                                0x2140(v17);
                                MEM[MEM[64] + 32] = v17;
                                MEM[MEM[64]] = 32;
                                MEM[64] = MEM[64] + 64;
                            }
                        } else {
                            require(5 <= 3 + (v3 + 32) + 5, Panic(17)); // arithmetic overflow or underflow
                            v18 = new struct(2);
                            v18.word0 = 96;
                            v18.word1 = 96;
                            require(uint16(msg.data[3 + (v3 + 32)] >> 232) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v19 = new bytes[](uint16(msg.data[3 + (v3 + 32)] >> 232));
                            if (uint16(msg.data[3 + (v3 + 32)] >> 232)) {
                                CALLDATACOPY(v19.data, msg.data.length, uint16(msg.data[3 + (v3 + 32)] >> 232));
                            }
                            require(uint16(msg.data[3 + (v3 + 32)] >> 216) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v20 = new bytes[](uint16(msg.data[3 + (v3 + 32)] >> 216));
                            if (uint16(msg.data[3 + (v3 + 32)] >> 216)) {
                                CALLDATACOPY(v20.data, msg.data.length, uint16(msg.data[3 + (v3 + 32)] >> 216));
                            }
                            CALLDATACOPY(v19.data, 3 + (v3 + 32) + 5, uint16(msg.data[3 + (v3 + 32)] >> 232));
                            CALLDATACOPY(v20.data, 3 + (v3 + 32) + 5 + uint16(msg.data[3 + (v3 + 32)] >> 232), uint16(msg.data[3 + (v3 + 32)] >> 216));
                            v18.word0 = v19;
                            v18.word1 = v20;
                            v21 = v22 = 0;
                            if (!(msg.data[3 + (v3 + 32)] >> 248)) {
                                v23 = v24 = 0x1ea7(v18);
                            } else {
                                v23 = v25 = 0x1d95(v18);
                            }
                            v26 = MEM[MEM[v23]];
                            require(0 < MEM[MEM[64 + v23]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v27 = MEM[MEM[MEM[64 + v23] + 32]];
                            v28 = v29 = 0;
                            while (v28 < MEM[MEM[64 + v23]]) {
                                require(v28 < MEM[MEM[64 + v23]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                if (address(MEM[MEM[32 + (v28 << 5) + MEM[64 + v23]]]) == address(v27)) {
                                    require(v28 < MEM[MEM[64 + v23]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v28 += MEM[32 + MEM[32 + (v28 << 5) + MEM[64 + v23]]];
                                    require(v28 <= v28, Panic(17)); // arithmetic overflow or underflow
                                    v28 += 1;
                                } else {
                                    require(v28 < MEM[MEM[64 + v23]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    revert(address(v27), address(MEM[MEM[(v28 << 5) + MEM[64 + v23] + 32]]));
                                }
                            }
                            if (!address(v27)) {
                                v21 = v30 = this.balance;
                                require(v30 >= v28, address(v27), v30, v28, block.timestamp);
                                v31 = v32 = 2;
                            } else {
                                MEM[36 + MEM[64]] = address(this);
                                MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                MCOPY(MEM[64], MEM[64] + 32, 36);
                                MEM[MEM[64] + 36] = 0;
                                v33 = address(v27).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v34 = v35 = 96;
                                } else {
                                    v34 = v36 = MEM[64];
                                    MEM[v36] = RETURNDATASIZE();
                                    RETURNDATACOPY(v36 + 32, 0, RETURNDATASIZE());
                                }
                                require(v33, address(v27), address(this));
                                require(32 + v34 + MEM[v34] - (32 + v34) >= 32);
                                v37 = MEM[32 + v34];
                                if (0) {
                                    require(0 - v37, address(v27), address(this));
                                    require(v37, Panic(17)); // arithmetic overflow or underflow
                                    v37 = v38 = uint256.max + v37;
                                }
                                require(v37 >= v28, address(v27), v37, v28, block.timestamp);
                                MEM[36 + MEM[64]] = address(this);
                                MEM[36 + MEM[64] + 32] = address(v26);
                                MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
                                MCOPY(MEM[64], MEM[64] + 32, 68);
                                MEM[MEM[64] + 68] = 0;
                                v39 = address(v27).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v40 = v41 = 96;
                                } else {
                                    v40 = v42 = MEM[64];
                                    MEM[v42] = RETURNDATASIZE();
                                    RETURNDATACOPY(v42 + 32, 0, RETURNDATASIZE());
                                }
                                require(v39, address(v27), address(this), address(v26));
                                require(32 + v40 + MEM[v40] - (32 + v40) >= 32);
                                if (MEM[32 + v40] < v28) {
                                    MEM[MEM[64] + 68] = 0;
                                    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(v26));
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v43 = address(v27).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v44 = v45 = 96;
                                    } else {
                                        v44 = v46 = MEM[64];
                                        MEM[v46] = RETURNDATASIZE();
                                        RETURNDATACOPY(v46 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (v43) {
                                        MEM[MEM[64] + 68] = uint256.max;
                                        MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(v26));
                                        MCOPY(MEM[64], MEM[64] + 32, 68);
                                        MEM[MEM[64] + 68] = 0;
                                        v47 = address(v27).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                        if (RETURNDATASIZE() == 0) {
                                            v48 = v49 = 96;
                                        } else {
                                            v48 = v50 = MEM[64];
                                            MEM[v50] = RETURNDATASIZE();
                                            RETURNDATACOPY(v50 + 32, 0, RETURNDATASIZE());
                                        }
                                        if (!v47) {
                                            v51 = new uint256[](MEM[v48]);
                                            MCOPY(v51.data, v48 + 32, MEM[v48]);
                                            MEM[v51 + MEM[v48] + 32] = 0;
                                            revert(address(v27), address(v26), uint256.max, v51);
                                        }
                                    } else {
                                        v52 = new uint256[](MEM[v44]);
                                        MCOPY(v52.data, v44 + 32, MEM[v44]);
                                        MEM[v52 + MEM[v44] + 32] = 0;
                                        revert(address(v27), address(v26), 0, v52);
                                    }
                                }
                                MEM[36 + MEM[64]] = _exec;
                                MEM[36 + MEM[64] + 32] = address(v26);
                                MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
                                MCOPY(MEM[64], MEM[64] + 32, 68);
                                MEM[MEM[64] + 68] = 0;
                                v53 = address(v27).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v54 = v55 = 96;
                                } else {
                                    v54 = v56 = MEM[64];
                                    MEM[v56] = RETURNDATASIZE();
                                    RETURNDATACOPY(v56 + 32, 0, RETURNDATASIZE());
                                }
                                require(v53, address(v27), _exec, address(v26));
                                require(32 + v54 + MEM[v54] - (32 + v54) >= 32);
                                if (MEM[32 + v54] < v28) {
                                    v31 = v57 = 1;
                                } else {
                                    v31 = v58 = 0;
                                }
                            }
                            MEM[36 + MEM[64]] = 32;
                            MEM[36 + MEM[64] + 32] = 64;
                            MEM[36 + MEM[64] + 96] = v59.length;
                            MCOPY(36 + MEM[64] + 96 + 32, v59.data, v59.length);
                            MEM[36 + MEM[64] + 96 + v59.length + 32] = 0;
                            MEM[36 + MEM[64] + 64] = 36 + MEM[64] + 96 + (v59.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - (36 + MEM[64]) - 32;
                            MEM[36 + MEM[64] + 96 + (v59.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = v60.length;
                            MCOPY(36 + MEM[64] + 96 + (v59.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 32, v60.data, v60.length);
                            MEM[36 + MEM[64] + 96 + (v59.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + v60.length + 32] = 0;
                            MEM[MEM[64] + 32] = bytes4(0x3f62192e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                            MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 96 + (v59.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v60.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                            MEM[MEM[64] + (36 + MEM[64] + 96 + (v59.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v60.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                            v61 = address(v26).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 96 + v341aV0x2020V0x14c4V0x60eV0x185V0xea.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + v3435V0x2020V0x14c4V0x60eV0x185V0xea.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v21).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v62 = 96;
                            } else {
                                v62 = v63 = MEM[64];
                                MEM[v63] = RETURNDATASIZE();
                                RETURNDATACOPY(v63 + 32, 0, RETURNDATASIZE());
                            }
                            if (v61) {
                                MEM[MEM[64] + 32] = bytes1(v31 << 248);
                                MEM[MEM[64] + 33] = v21;
                                MEM[MEM[64]] = 33;
                                MEM[64] += 65;
                            } else {
                                v64 = new uint256[](MEM[v62]);
                                MCOPY(v64.data, v62 + 32, MEM[v62]);
                                MEM[v64 + MEM[v62] + 32] = 0;
                                revert(5, address(v26), v64);
                            }
                        }
                    } else {
                        MEM[36 + MEM[64]] = address(this);
                        MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                        MCOPY(MEM[64], MEM[64] + 32, 36);
                        MEM[MEM[64] + 36] = 0;
                        v65 = address(msg.data[3 + (v3 + 32)] >> 64).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v66 = v67 = 96;
                        } else {
                            v66 = v68 = MEM[64];
                            MEM[v68] = RETURNDATASIZE();
                            RETURNDATACOPY(v68 + 32, 0, RETURNDATASIZE());
                        }
                        require(v65, address(msg.data[3 + (v3 + 32)] >> 64), address(this));
                        require(32 + v66 + MEM[v66] - (32 + v66) >= 32);
                        v69 = MEM[32 + v66];
                        if (1) {
                            require(0 - v69, address(msg.data[3 + (v3 + 32)] >> 64), address(this));
                            require(v69, Panic(17)); // arithmetic overflow or underflow
                            v69 = v70 = uint256.max + v69;
                        }
                        v71 = _SafeSub(10000, uint16(msg.data[3 + (v3 + 32)] >> 224));
                        v72 = _SafeMul(v69, v71);
                        require(10000, Panic(18)); // division by zero
                        v73 = _SafeSub(v72 / 10000, 1);
                        MEM[32 + MEM[64]] = address(msg.data[3 + (v3 + 32)] >> 64);
                        MEM[32 + MEM[64] + 32] = v69;
                        v74 = 0x11c8(96 + MEM[64], v73, uint8(msg.data[3 + (v3 + 32)] >> 240), msg.data[3 + (v3 + 32)] >> 248, msg.data[3 + (v3 + 32) + 24] >> 96, this);
                        MEM[MEM[64] + 32] = v69;
                        MEM[MEM[64] + 64] = v73;
                        MEM[MEM[64]] = 64;
                        MEM[64] += 96;
                    }
                } else {
                    v75 = msg.data[3 + (v3 + 32) + 23] >> 96;
                    MEM[36 + MEM[64]] = address(this);
                    MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MCOPY(MEM[64], MEM[64] + 32, 36);
                    MEM[MEM[64] + 36] = 0;
                    v76 = address(msg.data[3 + (v3 + 32)] >> 72).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v77 = v78 = 96;
                    } else {
                        v77 = v79 = MEM[64];
                        MEM[v79] = RETURNDATASIZE();
                        RETURNDATACOPY(v79 + 32, 0, RETURNDATASIZE());
                    }
                    require(v76, address(msg.data[3 + (v3 + 32)] >> 72), address(this));
                    require(32 + v77 + MEM[v77] - (32 + v77) >= 32);
                    v80 = MEM[32 + v77];
                    if (1) {
                        require(0 - v80, address(msg.data[3 + (v3 + 32)] >> 72), address(this));
                        require(v80, Panic(17)); // arithmetic overflow or underflow
                        v80 = v81 = uint256.max + v80;
                    }
                    MEM[MEM[64] + 68] = v80;
                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v75));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v82 = address(msg.data[3 + (v3 + 32)] >> 72).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v83 = v84 = 96;
                    } else {
                        v83 = v85 = MEM[64];
                        MEM[v85] = RETURNDATASIZE();
                        RETURNDATACOPY(v85 + 32, 0, RETURNDATASIZE());
                    }
                    if (v82) {
                        if (!(msg.data[3 + (v3 + 32) + 43] >> 248)) {
                            v86 = new bytes[](4);
                            MEM[v86.data] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 | uint224(MEM[v86.data]);
                            MCOPY(MEM[64], v86.data, v86.length);
                            MEM[MEM[64] + v86.length] = 0;
                            v87 = address(v75).staticcall(MEM[MEM[64]:MEM[64] + MEM[64] + v17ddV0x185V0xea.length - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v88 = v89 = 96;
                            } else {
                                v88 = v90 = MEM[64];
                                MEM[v90] = RETURNDATASIZE();
                                RETURNDATACOPY(v90 + 32, 0, RETURNDATASIZE());
                            }
                            require(v87, address(v75));
                            v91 = v92 = MEM[v88 + 32];
                            v91 = MEM[v88 + 64];
                            if (!(msg.data[3 + (v3 + 32)] >> 248)) {
                            }
                            MEM[36 + MEM[64]] = address(v75);
                            MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                            MCOPY(MEM[64], MEM[64] + 32, 36);
                            MEM[MEM[64] + 36] = 0;
                            v93 = address(msg.data[3 + (v3 + 32)] >> 72).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v94 = v95 = 96;
                            } else {
                                v94 = v96 = MEM[64];
                                MEM[v96] = RETURNDATASIZE();
                                RETURNDATACOPY(v96 + 32, 0, RETURNDATASIZE());
                            }
                            require(v93, address(msg.data[3 + (v3 + 32)] >> 72), address(v75));
                            require(32 + v94 + MEM[v94] - (32 + v94) >= 32);
                            v97 = MEM[32 + v94];
                            if (0) {
                                require(0 - v97, address(msg.data[3 + (v3 + 32)] >> 72), address(v75));
                                require(v97, Panic(17)); // arithmetic overflow or underflow
                                v97 = v98 = uint256.max + v97;
                            }
                            v99 = _SafeSub(v97, v91);
                        } else {
                            MEM[36 + MEM[64]] = block.timestamp;
                            MEM[MEM[64] + 32] = 0xbcaa64ea00000000000000000000000000000000000000000000000000000000 | uint224(MEM[MEM[64] + 32]);
                            MCOPY(MEM[64], MEM[64] + 32, 68 + MEM[64] - MEM[64] - 32);
                            MEM[MEM[64] + (68 + MEM[64] - MEM[64] - 32)] = 0;
                            v100 = address(v75).staticcall(MEM[MEM[64]:MEM[64] + MEM[64] + 68 + MEM[64] - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v101 = v102 = 96;
                            } else {
                                v101 = v103 = MEM[64];
                                MEM[v103] = RETURNDATASIZE();
                                RETURNDATACOPY(v103 + 32, 0, RETURNDATASIZE());
                            }
                            require(v100, address(v75));
                            v91 = v104 = MEM[v101 + 32];
                            v91 = v105 = MEM[v101 + 64];
                            v106 = v107 = MEM[v101 + 128];
                            v106 = MEM[v101 + 160];
                            if (!(msg.data[3 + (v3 + 32)] >> 248)) {
                            }
                            MEM[36 + MEM[64]] = address(v75);
                            MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                            MCOPY(MEM[64], MEM[64] + 32, 36);
                            MEM[MEM[64] + 36] = 0;
                            v108 = address(msg.data[3 + (v3 + 32)] >> 72).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v109 = v110 = 96;
                            } else {
                                v109 = v111 = MEM[64];
                                MEM[v111] = RETURNDATASIZE();
                                RETURNDATACOPY(v111 + 32, 0, RETURNDATASIZE());
                            }
                            require(v108, address(msg.data[3 + (v3 + 32)] >> 72), address(v75));
                            require(32 + v109 + MEM[v109] - (32 + v109) >= 32);
                            v112 = MEM[32 + v109];
                            if (0) {
                                require(0 - v112, address(msg.data[3 + (v3 + 32)] >> 72), address(v75));
                                require(v112, Panic(17)); // arithmetic overflow or underflow
                                v112 = v113 = uint256.max + v112;
                            }
                            v114 = _SafeSub(v112, v91);
                            v99 = v115 = _SafeSub(v114, v106);
                        }
                        require(0 - v91 * (v99 * (10000 - uint16(msg.data[3 + (v3 + 32)] >> 232))) / (v99 * (10000 - uint16(msg.data[3 + (v3 + 32)] >> 232)) + v91 * 10000), address(v75));
                        v116 = v117 = _SafeSub(v91 * (v99 * (10000 - uint16(msg.data[3 + (v3 + 32)] >> 232))) / (v99 * (10000 - uint16(msg.data[3 + (v3 + 32)] >> 232)) + v91 * 10000), 1);
                        if (msg.data[3 + (v3 + 32)] >> 248) {
                            v116 = v118 = 0;
                        } else {
                            v116 = 0;
                        }
                        MEM[MEM[64] + 68] = v116;
                        MEM[MEM[64] + 100] = address(this);
                        MEM[MEM[64] + 132] = 128;
                        MEM[MEM[64] + 164] = 0;
                        MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000 | uint224(v116);
                        MCOPY(MEM[64], MEM[64] + 32, 164);
                        MEM[MEM[64] + 164] = 0;
                        v119 = address(v75).call(MEM[MEM[64]:MEM[64] + 164], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v120 = 96;
                        } else {
                            v120 = v121 = MEM[64];
                            MEM[v121] = RETURNDATASIZE();
                            RETURNDATACOPY(v121 + 32, 0, RETURNDATASIZE());
                        }
                        if (v119) {
                            MEM[MEM[64] + 32] = v80;
                            MEM[MEM[64] + 64] = v117;
                            MEM[MEM[64]] = 64;
                            MEM[64] += 96;
                        } else {
                            v122 = new uint256[](MEM[v120]);
                            MCOPY(v122.data, v120 + 32, MEM[v120]);
                            MEM[v122 + MEM[v120] + 32] = 0;
                            revert(3, address(v75), v122);
                        }
                    } else {
                        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                        MCOPY(MEM[64], MEM[64] + 32, 36);
                        MEM[MEM[64] + 36] = 0;
                        v123, /* uint256 */ v124, /* uint256 */ v125 = address(msg.data[3 + (v3 + 32)] >> 72).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v126 = v127 = 96;
                        } else {
                            v126 = v128 = new bytes[](RETURNDATASIZE());
                            RETURNDATACOPY(v128.data, 0, RETURNDATASIZE());
                        }
                        require(v123, address(msg.data[3 + (v3 + 32)] >> 72), address(this));
                        require(v125 + MEM[v126] - v125 >= 32);
                        v129 = MEM[v125];
                        if (0) {
                            require(0 - v129, address(msg.data[3 + (v3 + 32)] >> 72), address(this));
                            require(v129, Panic(17)); // arithmetic overflow or underflow
                            v129 = v130 = uint256.max + v129;
                        }
                        v131 = new uint256[](MEM[v83]);
                        MCOPY(v131.data, v83 + 32, MEM[v83]);
                        MEM[v131 + MEM[v83] + 32] = 0;
                        revert(address(msg.data[3 + (v3 + 32)] >> 72), address(v75), v80, v129, v131);
                    }
                }
            } else {
                if (msg.data[3 + (v3 + 32)] >> 96) {
                    MEM[36 + MEM[64]] = address(this);
                    MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MCOPY(MEM[64], MEM[64] + 32, 36);
                    MEM[MEM[64] + 36] = 0;
                    v132 = address(msg.data[3 + (v3 + 32)] >> 96).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v133 = v134 = 96;
                    } else {
                        v133 = v135 = MEM[64];
                        MEM[v135] = RETURNDATASIZE();
                        RETURNDATACOPY(v135 + 32, 0, RETURNDATASIZE());
                    }
                    require(v132, address(msg.data[3 + (v3 + 32)] >> 96), address(this));
                    require(32 + v133 + MEM[v133] - (32 + v133) >= 32);
                    v136 = MEM[32 + v133];
                    if (1) {
                        require(0 - v136, address(msg.data[3 + (v3 + 32)] >> 96), address(this));
                        require(v136, Panic(17)); // arithmetic overflow or underflow
                        v136 = v137 = uint256.max + v136;
                    }
                    MEM[MEM[64] + 68] = v138;
                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[3 + (v3 + 32) + 20] >> 96));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v139 = address(msg.data[3 + (v3 + 32)] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v140 = v141 = 96;
                    } else {
                        v140 = v142 = MEM[64];
                        MEM[v142] = RETURNDATASIZE();
                        RETURNDATACOPY(v142 + 32, 0, RETURNDATASIZE());
                    }
                    if (!v139) {
                        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                        MCOPY(MEM[64], MEM[64] + 32, 36);
                        MEM[MEM[64] + 36] = 0;
                        v143, /* uint256 */ v144, /* uint256 */ v145 = address(msg.data[3 + (v3 + 32)] >> 96).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v146 = v147 = 96;
                        } else {
                            v146 = v148 = new bytes[](RETURNDATASIZE());
                            RETURNDATACOPY(v148.data, 0, RETURNDATASIZE());
                        }
                        require(v143, address(msg.data[3 + (v3 + 32)] >> 96), address(this));
                        require(v145 + MEM[v146] - v145 >= 32);
                        v149 = MEM[v145];
                        if (0) {
                            require(0 - v149, address(msg.data[3 + (v3 + 32)] >> 96), address(this));
                            require(v149, Panic(17)); // arithmetic overflow or underflow
                            v149 = v150 = uint256.max + v149;
                        }
                        v151 = new uint256[](MEM[v140]);
                        MCOPY(v151.data, v140 + 32, MEM[v140]);
                        MEM[v151 + MEM[v140] + 32] = 0;
                        revert(address(msg.data[3 + (v3 + 32)] >> 96), address(msg.data[3 + (v3 + 32) + 20] >> 96), v138, v149, v151);
                    }
                } else {
                    v136 = v152 = this.balance;
                    0x1588(v152, msg.data[3 + (v3 + 32) + 20] >> 96);
                }
                MEM[MEM[64] + 32] = v136;
                MEM[MEM[64]] = 32;
                MEM[64] = MEM[64] + 64;
            }
            v3 = (msg.data[v3 + 33] >> 240) + (3 + (v3 + 32));
            require(3 + (v3 + 32) <= v3, Panic(17)); // arithmetic overflow or underflow
        } else {
            require(4 <= (msg.data[v3 + 33] >> 240) + 4, Panic(17)); // arithmetic overflow or underflow
            require((msg.data[v3 + 33] >> 240) + 4 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v153 = new bytes[]((msg.data[v3 + 33] >> 240) + 4);
            if ((msg.data[v3 + 33] >> 240) + 4) {
                CALLDATACOPY(v153.data, msg.data.length, (msg.data[v3 + 33] >> 240) + 4);
            }
            CALLDATACOPY(v153.data, v3 + 32 + 23, (msg.data[v3 + 33] >> 240) + 4);
            v3 = v3 + 32 + ((msg.data[v3 + 33] >> 240) + 27);
            MCOPY(MEM[64], v153.data, v153.length);
            MEM[MEM[64] + v153.length] = 0;
            v154 = address(msg.data[v3 + 32 + 3] >> 96).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + v4c4V0x185V0xea.length - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v155 = v156 = 96;
            } else {
                v155 = v157 = MEM[64];
                MEM[v157] = RETURNDATASIZE();
                RETURNDATACOPY(v157 + 32, 0, RETURNDATASIZE());
            }
            if (!v154) {
                v158 = new uint256[](MEM[v155]);
                MCOPY(v158.data, v155 + 32, MEM[v155]);
                MEM[v158 + MEM[v155] + 32] = 0;
                revert(address(msg.data[v3 + 32 + 3] >> 96), v158);
            }
        }
        v5 = v5 + 1;
    }
    MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v159, /* uint256 */ v160, /* uint256 */ v161 = address(payload.word1 >> 96).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v162 = v163 = 96;
    } else {
        v162 = v164 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v164.data, 0, RETURNDATASIZE());
    }
    require(v159, address(payload.word1 >> 96), address(this));
    require(v161 + MEM[v162] - v161 >= 32);
    v165 = MEM[v161];
    if (1) {
        require(0 - v165, address(payload.word1 >> 96), address(this));
        require(v165, Panic(17)); // arithmetic overflow or underflow
        v165 = v166 = uint256.max + v165;
    }
    MEM[MEM[64] + 68] = v165;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v167, /* uint256 */ v168, /* uint256 */ v169 = address(payload.word1 >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v170 = v171 = 96;
    } else {
        v170 = v172 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v172.data, 0, RETURNDATASIZE());
    }
    if (v167) {
        exit;
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v173, /* uint256 */ v174, /* uint256 */ v175 = address(payload.word1 >> 96).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v176 = v177 = 96;
        } else {
            v176 = v178 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v178.data, 0, RETURNDATASIZE());
        }
        require(v173, address(payload.word1 >> 96), address(this));
        require(v175 + MEM[v176] - v175 >= 32);
        v179 = MEM[v175];
        if (0) {
            require(0 - v179, address(payload.word1 >> 96), address(this));
            require(v179, Panic(17)); // arithmetic overflow or underflow
            v179 = v180 = uint256.max + v179;
        }
        v181 = new uint256[](MEM[v170]);
        MCOPY(v181.data, v169, MEM[v170]);
        MEM[v181 + MEM[v170] + 32] = 0;
        revert(address(payload.word1 >> 96), msg.sender, v165, v179, v181);
    }
}

function 0xd42(address varg0, address varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg2.exttload(keccak256(varg1, varg0)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v1;
}

function maverickV2SwapCallback(address tokenIn, uint256 amountToPay, uint256 varg2, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(data.word1 == address(data.word1));
    MEM[MEM[64] + 68] = data.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        exit;
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = address(data.word1).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        require(v7, address(data.word1), address(this));
        require(v9 + MEM[v10] - v9 >= 32);
        v13 = MEM[v9];
        if (0) {
            require(0 - v13, address(data.word1), address(this));
            require(v13, Panic(17)); // arithmetic overflow or underflow
            v13 = v14 = uint256.max + v13;
        }
        v15 = new uint256[](MEM[v4]);
        MCOPY(v15.data, v3, MEM[v4]);
        MEM[v15 + MEM[v4] + 32] = 0;
        revert(address(data.word1), msg.sender, data.word2, v13, v15);
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0x91dd7346 > function_selector >> 224) {
        if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x3a1c453c == function_selector >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x55f86501 == function_selector >> 224) {
            exec(bytes);
        } else if (0x67ca7c91 == function_selector >> 224) {
            maverickV2SwapCallback(address,uint256,uint256,bytes);
        }
    } else if (0x91dd7346 == function_selector >> 224) {
        unlockCallback(bytes);
    } else if (0x923b8a2a == function_selector >> 224) {
        swapCallback(uint256,uint256,bytes);
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else if (0xfa483e72 == function_selector >> 224) {
        swapCallback(int256,int256,bytes);
    }
    require(!msg.value);
    if (msg.data.length <= 132) {
        exit;
    } else {
        v0, v1 = _SafeSub(0, msg.data.length, 132, msg.data.length);
        require(v1 + v0 - v1 >= 64);
        require(msg.data[v1] == address(msg.data[v1]));
        MEM[MEM[64] + 68] = msg.data[32 + v1];
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v2, /* uint256 */ v3, /* uint256 */ v4 = address(msg.data[v1]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v5 = v6 = 96;
        } else {
            v5 = v7 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v7.data, 0, RETURNDATASIZE());
        }
        if (v2) {
            exit;
        } else {
            MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MCOPY(MEM[64], MEM[64] + 32, 36);
            MEM[MEM[64] + 36] = 0;
            v8, /* uint256 */ v9, /* uint256 */ v10 = address(msg.data[v1]).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v11 = v12 = 96;
            } else {
                v11 = v13 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());
            }
            require(v8, address(msg.data[v1]), address(this));
            require(v10 + MEM[v11] - v10 >= 32);
            v14 = MEM[v10];
            if (0) {
                require(0 - v14, address(msg.data[v1]), address(this));
                require(v14, Panic(17)); // arithmetic overflow or underflow
                v14 = v15 = uint256.max + v14;
            }
            v16 = new uint256[](MEM[v5]);
            MCOPY(v16.data, v4, MEM[v5]);
            MEM[v16 + MEM[v5] + 32] = 0;
            revert(address(msg.data[v1]), msg.sender, msg.data[32 + v1], v14, v16);
        }
    }
}
