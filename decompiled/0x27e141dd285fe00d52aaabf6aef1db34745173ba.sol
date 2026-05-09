// Decompiled by library.dedaub.com
// 2025.12.01 04:55 UTC
// Compiled using the solidity compiler version 0.8.28





function multicall(address[] contractAddresses, bytes[] calls, uint256[] values) public payable { 
    require(msg.data.length - 4 >= 96);
    require(contractAddresses <= uint64.max);
    require(msg.data.length > 4 + contractAddresses + 31);
    require(contractAddresses.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](contractAddresses.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (contractAddresses.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (contractAddresses.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + contractAddresses + (contractAddresses.length << 5) + 32 <= msg.data.length);
    v3 = v4 = contractAddresses.data;
    while (v3 < 4 + contractAddresses + (contractAddresses.length << 5) + 32) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v3 += 32;
        v1 = v1 + 32;
    }
    require(calls <= uint64.max);
    require(4 + calls + 31 < msg.data.length);
    require(calls.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](calls.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (calls.length << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (calls.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + calls + (calls.length << 5) + 32 <= msg.data.length);
    v8 = v9 = calls.data;
    while (v8 < 4 + calls + (calls.length << 5) + 32) {
        require(msg.data[v8] <= uint64.max);
        require(msg.data.length > 4 + calls + msg.data[v8] + 63);
        v10 = msg.data[4 + calls + msg.data[v8] + 32];
        require(v10 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v11 = new bytes[](v10);
        require(!((v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10) + 31) < v11) | (v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data.length >= v10 + (4 + calls + msg.data[v8]) + 64);
        CALLDATACOPY(v11.data, 4 + calls + msg.data[v8] + 64, v10);
        v11[v10] = 0;
        MEM[v6] = v11;
        v6 = v6 + 32;
        v8 = v8 + 32;
    }
    require(values <= uint64.max);
    require(4 + values + 31 < msg.data.length);
    require(values.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v12 = new uint256[](values.length);
    require(!((v12 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (values.length << 5) + 31) < v12) | (v12 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (values.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v13 = v14 = v12.data;
    require(4 + values + (values.length << 5) + 32 <= msg.data.length);
    v15 = v16 = values.data;
    while (v15 < 4 + values + (values.length << 5) + 32) {
        MEM[v13] = msg.data[v15];
        v13 += 32;
        v15 += 32;
    }
    v17 = v18 = address(0x7ee0716d32ffc0fa65f8ac7ffd263f8af898aba4) == msg.sender;
    if (address(0x7ee0716d32ffc0fa65f8ac7ffd263f8af898aba4) != msg.sender) {
        v17 = v19 = address(0x6ece2367fe06cbf5890cb60a73fde945d61f5361) == msg.sender;
    }
    if (!v17) {
        v17 = v20 = address(0x8e0d320c00b3bc4990d2bd464b0f7f2fc7339b2) == msg.sender;
    }
    if (!v17) {
        v17 = address(0x1095911d5b8ef22a99c469944fb6f945417d41a1) == msg.sender;
    }
    if (v17) {
        require(v0.length == v5.length, Error(19788));
        v21 = v22 = v0.length;
        require(v22 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v23 = new uint256[](v22);
        if (v22) {
            v24 = v23.data;
            while (v21) {
                MEM[v24] = 96;
                v24 += 32;
                v21 = v21 - 1;
            }
        }
        v25 = v26 = 0;
        while (1) {
            revert(Error(0x8c379a000000000000000000000000000000000000000000000000000000000, 20304, v27));
            if (v25 >= v0.length) {
                break;
            } else {
                require(v25 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v25 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v25 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MCOPY(MEM[64], v5[v25] + 32, MEM[v5[v25]]);
                MEM[MEM[64] + MEM[v5[v25]]] = 0;
                v28, /* uint256 */ v29 = address(v0[v25]).call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[v1bedV0x991cV0x1e9eV0x15db[v1847_0x0V0x15e9]] - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v12[v25]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v30 = v31 = 96;
                } else {
                    v30 = v32 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v32.data, 0, RETURNDATASIZE());
                }
                if (v28) {
                    require(v25 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v23[v25] = v30;
                    v25 += 1;
                } else {
                    require(MEM[v30] >= 68);
                    MEM[v30 + 4] = MEM[v30] - 4;
                    require(32 + (v30 + MEM[v30]) - (36 + v30) >= 32);
                    require(MEM[36 + v30] <= uint64.max);
                    require(32 + (v30 + MEM[v30]) > 36 + v30 + MEM[36 + v30] + 31);
                    v33 = MEM[36 + v30 + MEM[36 + v30]];
                    require(v33 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v34 = new bytes[](v33);
                    require(!((v34 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v33) + 31) < v34) | (v34 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v33) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(36 + v30 + MEM[36 + v30] + v33 + 32 <= 32 + (v30 + MEM[v30]));
                    MCOPY(v34.data, 36 + v30 + MEM[36 + v30] + 32, v33);
                    v34[v33] = 0;
                    v27 = new bytes[](v34.length);
                    MCOPY(v27.data, v34.data, v34.length);
                    v27[v34.length] = 0;
                }
            }
        }
        v35 = new uint256[](v23.length);
        v36 = v37 = v35.data;
        v38 = v39 = MEM[64] + (v23.length << 5) + 64;
        v40 = v41 = v23.data;
        v42 = v43 = 0;
        while (v42 < v23.length) {
            MEM[v36] = v38 - MEM[64] - 64;
            MEM[v38] = MEM[MEM[v40]];
            MCOPY(v38 + 32, MEM[v40] + 32, MEM[MEM[v40]]);
            MEM[v38 + MEM[MEM[v40]] + 32] = 0;
            v38 = v38 + (MEM[MEM[v40]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
            v36 += 32;
            v40 += 32;
            v42 += 1;
        }
        return v35;
    }
}

function call(address _to, uint256 _value, bytes _data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(msg.data.length > 4 + _data + 31);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    v0 = v1 = address(0x7ee0716d32ffc0fa65f8ac7ffd263f8af898aba4) == msg.sender;
    if (address(0x7ee0716d32ffc0fa65f8ac7ffd263f8af898aba4) != msg.sender) {
        v0 = v2 = address(0x6ece2367fe06cbf5890cb60a73fde945d61f5361) == msg.sender;
    }
    if (!v0) {
        v0 = v3 = address(0x8e0d320c00b3bc4990d2bd464b0f7f2fc7339b2) == msg.sender;
    }
    if (!v0) {
        v0 = address(0x1095911d5b8ef22a99c469944fb6f945417d41a1) == msg.sender;
    }
    require(v0, Error(20304));
    require(_to);
    CALLDATACOPY(v4.data, _data.data, _data.length);
    MEM[_data.length + v4.data] = 0;
    v5, /* uint256 */ v6, /* uint256 */ v7 = _to.call(v4.data).value(_value).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v8 = v9 = 96;
    } else {
        v8 = v10 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
    }
    require(v5);
    v11 = new uint256[](MEM[v8]);
    MCOPY(v11.data, v7, MEM[v8]);
    MEM[v11 + MEM[v8] + 32] = 0;
    return v11;
}

function 0x1a3(uint256 varg0) private { 
    v0 = varg0.balanceOf(this).gas(msg.gas);
    require(v0, Error(16975));
    return MEM[0];
}

function 0x5a6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = MEM[64];
    while (varg2 < varg2 + varg3) {
        v1 = msg.data[varg2];
        if (uint8(v1 >> 224) == 1) {
            MEM[v0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (!(msg.data[varg2 + 4] & 0x800000000000000000000000)) {
                MEM[v0 + 4] = 0x7fffffffffffffffffffffff & msg.data[varg2 + 4];
                MEM[v0 + 36] = 0;
            } else {
                MEM[v0 + 4] = 0;
                MEM[v0 + 36] = 0x7fffffffffffffffffffffff & msg.data[varg2 + 4];
            }
            MEM[68 + v0] = msg.data[36 + varg2] >> 96;
            MEM[v0 + 100] = 128;
            MEM[v0 + 132] = (v1 >> 240) - 56;
            if ((v1 >> 240) - 56) {
                CALLDATACOPY(v0 + 164, 56 + varg2, (v1 >> 240) - 56);
            }
            v2 = (msg.data[varg2 + 4] >> 96).call(MEM[v5ab:v5ab + 164 + v5bb >> 240 - 56], MEM[0:0]).gas(msg.gas);
            if (v2) {
                // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
            } else {
                v3 = v4 = uint8(v1 >> 232);
            }
        } else if (uint8(v1 >> 224) == 2) {
            MEM[v0] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v0 + 4] = msg.data[varg2 + 36] >> 96;
            if (msg.data[varg2 + 4] & 0x800000000000000000000000 == 0) {
                MEM[v0 + 36] = 0;
                MEM[v0 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                MEM[68 + v0] = 0 - (0x7fffffffffffffffffffffff & msg.data[varg2 + 4]);
            } else {
                MEM[v0 + 36] = 1;
                MEM[v0 + 100] = 0x1000276a4;
                MEM[68 + v0] = 0 - (0x7fffffffffffffffffffffff & msg.data[varg2 + 4]);
            }
            MEM[v0 + 132] = 160;
            MEM[v0 + 164] = (v1 >> 240) - 56;
            if ((v1 >> 240) - 56) {
                CALLDATACOPY(v0 + 196, 56 + varg2, (v1 >> 240) - 56);
            }
            v5 = (msg.data[varg2 + 4] >> 96).call(MEM[v5ab:v5ab + 196 + v5bb >> 240 - 56], MEM[0:0]).gas(msg.gas);
            if (v5) {
                // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
            } else {
                v3 = v6 = uint8(v1 >> 232);
            }
        } else {
            if (uint8(v1 >> 224) == 3) {
                v7 = msg.data[24 + varg2] >> 96;
                v8 = 0x4444c5dc75cb358380d2e3de08a90.sync(v7).gas(msg.gas);
                if (v8) {
                    MEM[v0] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v0 + 4] = 0x4444c5dc75cb358380d2e3de08a90;
                    if (bytes1(msg.data[varg2 + 44]) == 0) {
                        MEM[v0 + 36] = 0;
                        MEM[v0 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        MEM[68 + v0] = 0 - STORAGE[keccak256(v7)];
                    } else {
                        MEM[v0 + 36] = 1;
                        MEM[v0 + 100] = 0x1000276a4;
                        MEM[68 + v0] = 0 - STORAGE[keccak256(v7)];
                    }
                    MEM[v0 + 132] = 160;
                    MEM[v0 + 164] = (v1 >> 240) - 45;
                    if ((v1 >> 240) - 45) {
                        CALLDATACOPY(v0 + 196, 45 + varg2, (v1 >> 240) - 45);
                    }
                    v9 = (msg.data[4 + varg2] >> 96).call(MEM[v5ab:v5ab + 196 + v5bb >> 240 - 45], MEM[0:0]).gas(msg.gas);
                    if (!v9) {
                        v3 = v10 = uint8(v1 >> 232);
                    }
                } else {
                    v3 = v11 = uint8(v1 >> 232);
                }
            } else if (uint8(v1 >> 224) == 4) {
                v12 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.data[varg2 + 4] >> 96, uint96(msg.data[varg2 + 4])).gas(msg.gas);
                require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (1 == MEM[0])) & v12, Error(20052));
            } else if (uint8(v1 >> 224) == 5) {
                v13 = msg.data[24 + varg2] >> 96;
                v14 = 0x4444c5dc75cb358380d2e3de08a90.sync(v13).gas(msg.gas);
                if (v14) {
                    MEM[v0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    if (!bytes1(msg.data[varg2 + 44])) {
                        MEM[v0 + 4] = STORAGE[keccak256(v13)];
                        MEM[v0 + 36] = 0;
                    } else {
                        MEM[v0 + 4] = 0;
                        MEM[v0 + 36] = STORAGE[keccak256(v13)];
                    }
                    MEM[68 + v0] = 0x4444c5dc75cb358380d2e3de08a90;
                    MEM[v0 + 100] = 128;
                    MEM[v0 + 132] = (v1 >> 240) - 45;
                    if ((v1 >> 240) - 45) {
                        CALLDATACOPY(v0 + 164, 45 + varg2, (v1 >> 240) - 45);
                    }
                    v15 = (msg.data[4 + varg2] >> 96).call(MEM[v5ab:v5ab + 164 + v5bb >> 240 - 45], MEM[0:0]).gas(msg.gas);
                    if (v15) {
                        v16 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                        if (v16) {
                            // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
                        } else {
                            v3 = v17 = uint8(v1 >> 232);
                        }
                    } else {
                        v3 = v18 = uint8(v1 >> 232);
                    }
                } else {
                    v3 = v19 = uint8(v1 >> 232);
                }
            } else if (uint8(v1 >> 224) == 6) {
                v20 = (msg.data[38 + varg2] >> 96).transfer(msg.data[4 + varg2] >> 96, msg.data[24 + varg2] >> 144).gas(msg.gas);
                require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (1 == MEM[0])) & v20, Error(18004));
            } else if (uint8(v1 >> 224) == 7) {
                v21 = msg.data[4 + varg2] >> 96;
                v22 = msg.data[24 + varg2];
                if (v22 & 0x2000000000000 == 0) {
                    v23 = v24 = STORAGE[keccak256(v21)];
                } else {
                    v23 = v25 = STORAGE[keccak256(v22 >> 96)];
                }
                MEM[v0] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                MEM[v0 + 4] = v21;
                MEM[v0 + 36] = v22 >> 96;
                MEM[v0 + 68] = uint24(v22);
                MEM[v0 + 100] = uint24(v22 >> 24);
                if (v22 & 0x2000000000000 == 0) {
                    MEM[v0 + 164] = 0;
                    MEM[v0 + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    MEM[v0 + 164] = 1;
                    MEM[v0 + 228] = 0x1000276a4;
                }
                MEM[v0 + 196] = v23;
                MEM[v0 + 260] = 288;
                MEM[v0 + 292] = 0;
                v26 = 0x4444c5dc75cb358380d2e3de08a90.call(v27, v27, v27, v27, v27, msg.data[56 + varg2] >> 96).gas(msg.gas);
                if (v26) {
                    RETURNDATACOPY(v0, 0, 32);
                    if (!(v22 & 0x2000000000000)) {
                        STORAGE[keccak256(v22 >> 96)] = 0 - int128(uint128(MEM[v0]));
                        // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
                    } else {
                        STORAGE[keccak256(v21)] = 0 - (MEM[v0] >> 128);
                    }
                } else {
                    v3 = v28 = uint8(v1 >> 232);
                }
            } else if (uint8(v1 >> 224) == 8) {
                v29 = msg.data[36 + varg2];
                MEM[v0] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                MEM[v0 + 4] = msg.data[varg2 + 4] >> 96;
                MEM[v0 + 36] = v29 >> 96;
                MEM[v0 + 68] = uint24(v29);
                MEM[v0 + 100] = uint24(v29 >> 24);
                if (v29 & 0x2000000000000 == 0) {
                    MEM[v0 + 164] = 0;
                    MEM[v0 + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    MEM[v0 + 164] = 1;
                    MEM[v0 + 228] = 0x1000276a4;
                }
                MEM[v0 + 196] = uint96(msg.data[varg2 + 4]);
                MEM[v0 + 260] = 288;
                MEM[v0 + 292] = 0;
                v30 = 0x4444c5dc75cb358380d2e3de08a90.call(v27, v27, v27, v27, v27, msg.data[68 + varg2] >> 96).gas(msg.gas);
                if (v30) {
                    RETURNDATACOPY(v0, 0, 32);
                    if (!(v29 & 0x2000000000000)) {
                        STORAGE[keccak256(v29 >> 96)] = 0 - int128(uint128(MEM[v0]));
                    } else {
                        STORAGE[keccak256(msg.data[varg2 + 4] >> 96)] = 0 - (MEM[v0] >> 128);
                    }
                } else {
                    v3 = v31 = uint8(v1 >> 232);
                }
            } else if (uint8(v1 >> 224) == 9) {
                v32 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[varg2 + 38] >> 96, msg.data[varg2 + 4] >> 96, msg.data[varg2 + 24] >> 144).gas(msg.gas);
                if (v32) {
                    // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
                } else {
                    v3 = v33 = uint8(v1 >> 232);
                }
            } else if (uint8(v1 >> 224) == 10) {
                v34 = msg.data[4 + varg2] >> 96;
                v35 = 0x4444c5dc75cb358380d2e3de08a90.sync(v34).gas(msg.gas);
                if (v35) {
                    v36 = 0;
                    if (!v34) {
                        v36 = v37 = STORAGE[keccak256(v34)];
                    } else {
                        v38 = v34.transfer(0x4444c5dc75cb358380d2e3de08a90, STORAGE[keccak256(v34)]).gas(msg.gas);
                        require((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (1 == MEM[0])) & v38, Error(21044));
                    }
                    v39 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v36).gas(msg.gas);
                    if (v39) {
                        // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
                    } else {
                        v3 = v40 = uint8(v1 >> 232);
                    }
                } else {
                    v3 = v41 = uint8(v1 >> 232);
                }
            } else if (uint8(v1 >> 224) == 11) {
                v42 = (msg.data[varg2 + 4] >> 96).call().value(uint96(msg.data[varg2 + 4])).gas(msg.gas);
                require(v42, Error(17236));
            } else if (uint8(v1 >> 224) == 12) {
                v43 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                require(v43, Error(21300));
            } else {
                if (uint8(v1 >> 224) == 13) {
                    v44 = v45 = msg.data[varg2 + 36] >> 96;
                    v46 = v47 = 0x7fffffffffffffffffffffff & msg.data[varg2 + 36];
                    v48 = v49 = msg.data[68 + varg2] >> 96;
                    MEM[v0] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                    MEM[v0 + 4] = 224;
                    MEM[v0 + 36] = this;
                    MEM[v0 + 68] = 0;
                    MEM[v0 + 100] = msg.data[88 + varg2] >> 96;
                    MEM[v0 + 132] = 0;
                    MEM[v0 + 196] = uint96.max;
                    MEM[v0 + 228] = msg.data[varg2 + 4];
                    if (msg.data[varg2 + 36] & 0x800000000000000000000000 == 0) {
                        MEM[v0 + 164] = 1;
                        MEM[v0 + 260] = 0;
                    } else {
                        MEM[v0 + 164] = uint256.max;
                        MEM[v0 + 260] = 1;
                    }
                } else if (uint8(v1 >> 224) == 14) {
                    v50 = (msg.data[4 + varg2] >> 96).approve(msg.data[24 + varg2] >> 96, uint256.max).gas(msg.gas);
                    if ((!RETURNDATASIZE() | (RETURNDATASIZE() > 31) & (1 == MEM[0])) & v50) {
                        // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
                    } else {
                        v3 = v51 = uint8(v1 >> 232);
                    }
                } else if (uint8(v1 >> 224) == 15) {
                    v44 = v52 = msg.data[varg2 + 36] >> 96;
                    v46 = v53 = 0x7fffffffffffffffffffffff & msg.data[varg2 + 36];
                    v48 = v54 = msg.data[68 + varg2] >> 96;
                    MEM[v0] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                    MEM[v0 + 4] = 224;
                    MEM[v0 + 36] = msg.data[108 + varg2] >> 96;
                    MEM[v0 + 68] = 0;
                    MEM[v0 + 100] = msg.data[88 + varg2] >> 96;
                    MEM[v0 + 132] = 0;
                    MEM[v0 + 164] = msg.data[128 + varg2];
                    MEM[v0 + 196] = uint96.max;
                    MEM[v0 + 228] = msg.data[varg2 + 4];
                    if (msg.data[varg2 + 36] & 0x800000000000000000000000 == 0) {
                        v55 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(v27, v27, v27, v27, v27, v27, v27, v27, v27, 0, v52, v54, v53, 192, 0).gas(msg.gas);
                        if (v55) {
                            // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
                        } else {
                            v3 = v56 = uint8(v1 >> 232);
                        }
                    } else {
                        MEM[v0 + 260] = 1;
                    }
                } else {
                    require(uint8(v1 >> 224) == 16, Error(18755));
                    if (!(msg.data[24 + varg2] & 0x800000000000000000000000)) {
                        MEM[v0] = 0x8201aa3f00000000000000000000000000000000000000000000000000000000;
                        MEM[v0 + 4] = msg.data[24 + varg2] >> 96;
                        MEM[v0 + 36] = 0x7fffffffffffffffffffffff & msg.data[24 + varg2];
                        MEM[v0 + 68] = msg.data[varg2 + 56] >> 96;
                        MEM[v0 + 100] = 1;
                        MEM[v0 + 132] = uint256.max;
                    } else {
                        MEM[v0] = 0x7c5e9ea400000000000000000000000000000000000000000000000000000000;
                        MEM[v0 + 4] = msg.data[24 + varg2] >> 96;
                        MEM[v0 + 36] = uint256.max;
                        MEM[v0 + 68] = msg.data[varg2 + 56] >> 96;
                        MEM[v0 + 100] = 0x7fffffffffffffffffffffff & msg.data[24 + varg2];
                        MEM[v0 + 132] = uint256.max;
                    }
                    v57 = (msg.data[4 + varg2] >> 96).call(MEM[v5ab:v5ab + 164], MEM[0:32]).gas(msg.gas);
                    if (!v57) {
                        v3 = v58 = uint8(v1 >> 232);
                    }
                }
                v59 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(v27, v27, v27, v27, v27, v27, v27, v27, v27, v27, v44, v48, v46, 192, 0).gas(msg.gas);
                if (v59) {
                    // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
                } else {
                    v3 = v60 = uint8(v1 >> 232);
                }
            }
            // Unknown jump to Block 0x1169. Refer to 3-address code (TAC);
        }
        varg2 += v1 >> 240;
        continue;
        RETURNDATACOPY(v0, 0, RETURNDATASIZE());
        if (0x8c379a0 != MEM[v0] >> 224) {
            require((MEM[v0] >> 224) - 0x5212cba1, Error(17204));
            revert(v0, RETURNDATASIZE());
        } else {
            require(v3 < 10, v0, RETURNDATASIZE());
            MEM[v0 + (68 + MEM[v0 + 36])] = 0x3a00000000000000000000000000000000000000000000000000000000000000;
            MEM[v0 + (69 + MEM[v0 + 36])] = 48 + v3 << 248;
            revert(v27, 2 + MEM[v0 + 36]);
        }
    }
    return ;
}

function receive() public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0x28181829 == function_selector >> 224) {
        multicall(address[],bytes[],uint256[]);
    } else if (0x6dbf2fa0 == function_selector >> 224) {
        call(address,uint256,bytes);
    }
    if (!((function_selector >> 224 == 0x23a69e75) | ((function_selector >> 224 == 0xfa461e33) | ((function_selector >> 224 == 0x91dd7346) | ((function_selector >> 224 == 0x8649b473) | ((function_selector >> 224 == 0x8998d6ae) | ((function_selector >> 224 == 0x6c813d29) | ((function_selector >> 224 == 0xdf9aee68) | ((function_selector >> 224 == 0x78b94ae6) | ((function_selector >> 224 == 0x7d3513a) | ((function_selector >> 224 == 0xf05ffd30) | ((function_selector >> 224 == 0x8d8adec0) | ((function_selector >> 224 == 0x801d49f8) | ((function_selector >> 224 == 0xfe1b3a66) | ((function_selector >> 224 == 0xcbca709d) | ((function_selector >> 224 == 0x84645f79) | ((function_selector >> 224 == 0x61987d16) | ((function_selector >> 224 == 0x48639c9d) | (function_selector >> 224 == 0x10d1e85c))))))))))))))))))) {
        v0 = v1 = msg.gas;
        if (msg.sender != 0x7ee0716d32ffc0fa65f8ac7ffd263f8af898aba4) {
            if (msg.sender != 0x6ece2367fe06cbf5890cb60a73fde945d61f5361) {
                if (msg.sender != 0x8e0d320c00b3bc4990d2bd464b0f7f2fc7339b2) {
                    require(msg.sender == 0x1095911d5b8ef22a99c469944fb6f945417d41a1, Error(20304));
                }
            }
        }
        if (function_selector >> 216) {
            require(uint8(block.number) == function_selector >> 216, Error(16974));
        }
        v2 = v3 = 0;
        if (varg2 & 0x100000000000000000000000000000000000000000000000000000000000000) {
            v2 = v4 = 0x1a3(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        }
        if (varg2 & 0x400000000000000000000000000000000000000000000000000000000000000) {
            v5 = this.balance;
            v2 = v6 = v5 + v2;
        }
        if (varg2 & 0x200000000000000000000000000000000000000000000000000000000000000) {
            v0 = v7 = v1 + msg.value;
        }
        if (!(varg2 & 0x800000000000000000000000000000000000000000000000000000000000000)) {
            0x5a6(0, 0, 6, msg.data.length - 6);
        } else {
            v8 = new uint256[](msg.data.length - 6);
            CALLDATACOPY(v8.data, 6, msg.data.length - 6);
            v9 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v8).gas(msg.gas);
            if (!v9) {
                if (0x8c379a0 != MEM[MEM[64]] >> 224) {
                    require((MEM[MEM[64]] >> 224) - 0x5212cba1, Error(17204));
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    require(0 < 10, MEM[64], RETURNDATASIZE());
                    v10 = 17204;
                    MEM[MEM[64] + (68 + v10.length)] = 0x3a00000000000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + (69 + v10.length)] = 0x3000000000000000000000000000000000000000000000000000000000000000;
                    revert(MEM[64], 2 + RETURNDATASIZE());
                }
            }
        }
        if (!(varg2 & 0x100000000000000000000000000000000000000000000000000000000000000 | (varg2 & 0x400000000000000000000000000000000000000000000000000000000000000 | varg2 & 0x200000000000000000000000000000000000000000000000000000000000000))) {
            exit;
        } else {
            v11 = v12 = 0;
            if (varg2 & 0x100000000000000000000000000000000000000000000000000000000000000) {
                v11 = v13 = 0x1a3(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            }
            if (varg2 & 0x400000000000000000000000000000000000000000000000000000000000000) {
                v11 = v14 = this.balance + v11;
            }
            require(v2 <= v11, Error(18768));
            if (!(varg2 & 0x200000000000000000000000000000000000000000000000000000000000000)) {
                exit;
            } else {
                require(msg.gas * (v0 - msg.gas) <= v11 - v2, Error(18256));
                exit;
            }
        }
    } else {
        if (tx.origin != 0x7ee0716d32ffc0fa65f8ac7ffd263f8af898aba4) {
            if (tx.origin != 0x6ece2367fe06cbf5890cb60a73fde945d61f5361) {
                if (tx.origin != 0x8e0d320c00b3bc4990d2bd464b0f7f2fc7339b2) {
                    require(tx.origin == 0x1095911d5b8ef22a99c469944fb6f945417d41a1);
                }
            }
        }
        if (!((function_selector >> 224 == 0xfa461e33) | (function_selector >> 224 == 0x23a69e75))) {
            if (function_selector >> 224 != 0x91dd7346) {
                0x5a6(0, 0, 164, varg5);
                exit;
            } else {
                require(msg.sender == 0x4444c5dc75cb358380d2e3de08a90, Error(20304));
                0x5a6(0, 0, 68, varg3);
                return 32, 1, 0;
            }
        } else if (!varg4) {
            exit;
        } else {
            0x5a6(varg1, varg3, 132, varg4);
            exit;
        }
    }
}
